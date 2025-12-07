uint64_t sub_1B4A6BB60()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4A6BBE0(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4A6BC4C(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4A6BCC8@<X0>(char *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

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

void sub_1B4A6BD28(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000072;
  }

  else
  {
    v2 = 0xD000000000000066;
  }

  if (*v1)
  {
    v3 = "ue of <energy_string>.";
  }

  else
  {
    v3 = "previousWorkoutWeekContext";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id WorkoutVoiceMostCaloriesFact.placeholders()()
{
  v1 = type metadata accessor for WorkoutVoiceMostCaloriesFact(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4D1BE00;
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v7 = result;
    v8 = sub_1B4D1818C();
    v10 = v9;

    strcpy((v5 + 32), "activity_type");
    *(v5 + 46) = -4864;
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v5 + 48) = sub_1B4993DFC;
    *(v5 + 56) = v11;
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;
    sub_1B4A6C1F0(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v13 = swift_allocObject();
    sub_1B4A6C254(v4, v13 + v12);
    strcpy((v5 + 80), "energy_string");
    *(v5 + 94) = -4864;
    *(v5 + 96) = sub_1B4A6C2B8;
    *(v5 + 104) = v13;
    *(v5 + 112) = 0;
    *(v5 + 120) = 0;
    v14 = *(v0 + *(v1 + 24));
    v15 = *&aThisDaythisWee_0[8 * v14];
    v16 = qword_1B4D25C08[v14];
    *(v5 + 128) = 0x6C616373656D6974;
    *(v5 + 136) = 0xE900000000000065;
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    *(v5 + 144) = sub_1B4994004;
    *(v5 + 152) = v17;
    *(v5 + 160) = 0;
    *(v5 + 168) = 0;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4A6BFCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - v2;
  type metadata accessor for WorkoutVoiceMostCaloriesFact(0);
  FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v4);
  v6 = v5;
  sub_1B4D1745C();
  v7 = sub_1B4D12160();
  v8 = sub_1B4D12A28(v3);

  (*(v1 + 8))(v3, v0);
  return v8;
}

uint64_t WorkoutVoiceMostCaloriesFact.selectTemplate(formatter:)@<X0>(BOOL *a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for WorkoutVoiceMostCaloriesFact(0) + 24)) >= 4u)
  {

    v5 = 0;
  }

  else
  {
    v3 = sub_1B4D18DCC();

    v5 = (v3 & 1) == 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1B4A6C1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceMostCaloriesFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4A6C254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceMostCaloriesFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4A6C2B8()
{
  type metadata accessor for WorkoutVoiceMostCaloriesFact(0);

  return sub_1B4A6BFCC();
}

unint64_t sub_1B4A6C32C()
{
  result = qword_1EB8A8FA0;
  if (!qword_1EB8A8FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8FA0);
  }

  return result;
}

unint64_t sub_1B4A6C384()
{
  result = qword_1EB8A8FA8;
  if (!qword_1EB8A8FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A8FB0, &qword_1B4D25B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8FA8);
  }

  return result;
}

unint64_t sub_1B4A6C3EC()
{
  result = qword_1EB8A8FB8;
  if (!qword_1EB8A8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8FB8);
  }

  return result;
}

unint64_t sub_1B4A6C444()
{
  result = qword_1EB8A8FC0;
  if (!qword_1EB8A8FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8FC0);
  }

  return result;
}

unint64_t sub_1B4A6C498(uint64_t a1)
{
  result = sub_1B4A6C4C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A6C4C0()
{
  result = qword_1EB8A8FC8;
  if (!qword_1EB8A8FC8)
  {
    type metadata accessor for WorkoutVoiceMostCaloriesFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8FC8);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair.entry.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7148, &unk_1B4D25C40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
  sub_1B4974FBC(v1 + *(v6 + 24), v5, &qword_1EB8A7148, &unk_1B4D25C40);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A6F890(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0xE000000000000000;
  sub_1B4D17BBC();
  v9 = *(v7 + 28);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A7148, &unk_1B4D25C40);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair.entry.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0) + 24);
  sub_1B4975024(v2 + v4, &qword_1EB8A7148, &unk_1B4D25C40);
  sub_1B4A6F890(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t sub_1B4A6C800@<X0>(uint64_t (*a1)(void, double)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = a1(0, v6);
  sub_1B4974FBC(v2 + *(v9 + 28), v8, &qword_1EB8A7158, &unk_1B4D20310);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1B4A6F890(v8, a2, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_1B4D17BBC();
  v12 = (a2 + *(v10 + 40));
  *v12 = 0;
  v12[1] = 0;
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A7158, &unk_1B4D20310);
  }

  return result;
}

uint64_t sub_1B4A6C98C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  sub_1B4975024(v2 + v4, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4A6F890(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperties.records.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperties.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.monthOfYear.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double sub_1B4A6CC0C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 20));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;

  return result;
}

uint64_t sub_1B4A6CC70(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 20));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.monthOfYear.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Apple_Fitness_Intelligence_WorkoutPropertyDimensions.monthOfYear.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A3E8AC;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_WorkoutPropertyDimensions.clearMonthOfYear()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 20));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.dayOfWeek.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double sub_1B4A6CE78@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;

  return result;
}

uint64_t sub_1B4A6CEDC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 24));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.dayOfWeek.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Apple_Fitness_Intelligence_WorkoutPropertyDimensions.dayOfWeek.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_WorkoutPropertyDimensions.clearDayOfWeek()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.hourOfDay.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 28));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.hourOfDay.setter(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutPropertyDimensions.hourOfDay.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 28);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_1B4A608B8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_WorkoutPropertyDimensions.clearHourOfDay()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.activityType.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 32));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.activityType.setter(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutPropertyDimensions.activityType.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_1B4A3E3D4;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_WorkoutPropertyDimensions.clearActivityType()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.locationType.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double sub_1B4A6D34C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;

  return result;
}

uint64_t sub_1B4A6D3B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 36));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.locationType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Apple_Fitness_Intelligence_WorkoutPropertyDimensions.locationType.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_WorkoutPropertyDimensions.clearLocationType()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 36));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.sourceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double sub_1B4A6D5B8@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 40));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;

  return result;
}

uint64_t sub_1B4A6D61C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 40));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.sourceIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Apple_Fitness_Intelligence_WorkoutPropertyDimensions.sourceIdentifier.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_WorkoutPropertyDimensions.clearSourceIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 40));

  *v1 = 0;
  v1[1] = 0;
}

int *Apple_Fitness_Intelligence_WorkoutPropertyDimensions.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v4 = (a2 + result[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + result[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + result[7];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + result[8];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (a2 + result[9]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + result[10]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters.activityType.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters.locationType.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters.sourceIdentifier.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0) + 40);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0) + 40);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = v2;
  a1[4] = v2;
  a1[5] = v2;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyRecord.dimensions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE8, &qword_1B4D201A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  sub_1B4974FBC(v1 + *(v6 + 28), v5, &qword_1EB8A7CE8, &qword_1B4D201A0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A6F890(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  }

  sub_1B4D17BBC();
  v9 = (a1 + v7[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v7[8];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (a1 + v7[9]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v7[10]);
  *v14 = 0;
  v14[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A7CE8, &qword_1B4D201A0);
  }

  return result;
}

uint64_t sub_1B4A6DD44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0) + 28);
  sub_1B4975024(a2 + v8, &qword_1EB8A7CE8, &qword_1B4D201A0);
  sub_1B4A6F890(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyRecord.dimensions.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0) + 28);
  sub_1B4975024(v2 + v4, &qword_1EB8A7CE8, &qword_1B4D201A0);
  sub_1B4A6F890(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*Apple_Fitness_Intelligence_WorkoutPropertyRecord.dimensions.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE8, &qword_1B4D201A0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7CE8, &qword_1B4D201A0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[8];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = (v14 + v9[9]);
    *v21 = 0;
    v21[1] = 0;
    v22 = (v14 + v9[10]);
    *v22 = 0;
    v22[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7CE8, &qword_1B4D201A0);
    }
  }

  else
  {
    sub_1B4A6F890(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  }

  return sub_1B4A6E190;
}

void sub_1B4A6E190(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[5], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
    sub_1B4975024(v10 + v4, &qword_1EB8A7CE8, &qword_1B4D201A0);
    sub_1B4A6F890(v5, v10 + v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  }

  else
  {
    sub_1B4975024(v10 + v4, &qword_1EB8A7CE8, &qword_1B4D201A0);
    sub_1B4A6F890(v6, v10 + v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyRecord.property.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD8, &unk_1B4D20190);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  sub_1B4974FBC(v1 + *(v6 + 32), v5, &qword_1EB8A7CD8, &unk_1B4D20190);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A6F890(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  }

  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A7CD8, &unk_1B4D20190);
  }

  return result;
}

uint64_t sub_1B4A6E508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD8, &unk_1B4D20190);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  sub_1B4974FBC(a1 + *(v7 + 32), v6, &qword_1EB8A7CD8, &unk_1B4D20190);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7CD8, &unk_1B4D20190);
  }

  return result;
}

uint64_t sub_1B4A6E6A4(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0) + 32);
  sub_1B4975024(a2 + v9, &qword_1EB8A7CD8, &unk_1B4D20190);
  sub_1B4A6F890(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  return (*(v6 + 56))(a2 + v9, 0, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyRecord.property.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0) + 32);
  sub_1B4975024(v2 + v4, &qword_1EB8A7CD8, &unk_1B4D20190);
  sub_1B4A6F890(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*Apple_Fitness_Intelligence_WorkoutPropertyRecord.property.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD8, &unk_1B4D20190) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7CD8, &unk_1B4D20190);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7CD8, &unk_1B4D20190);
    }
  }

  else
  {
    sub_1B4A6F890(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  }

  return sub_1B4A6EB0C;
}

void sub_1B4A6EB0C(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[5], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
    sub_1B4975024(v10 + v4, &qword_1EB8A7CD8, &unk_1B4D20190);
    sub_1B4A6F890(v5, v10 + v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  }

  else
  {
    sub_1B4975024(v10 + v4, &qword_1EB8A7CD8, &unk_1B4D20190);
    sub_1B4A6F890(v6, v10 + v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

BOOL Apple_Fitness_Intelligence_WorkoutPropertyRecord.hasProperty.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD8, &unk_1B4D20190);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  sub_1B4974FBC(v0 + *(v4 + 32), v3, &qword_1EB8A7CD8, &unk_1B4D20190);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1B4975024(v3, &qword_1EB8A7CD8, &unk_1B4D20190);
  return v6;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_WorkoutPropertyRecord.clearProperty()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0) + 32);
  sub_1B4975024(v0 + v1, &qword_1EB8A7CD8, &unk_1B4D20190);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyRecord.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  sub_1B4D17BBC();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = *(v2 + 32);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.currentEntries.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B4A6EFF0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A6F08C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry.workoutIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry.workoutIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void (*Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry.localizedDate.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7158, &unk_1B4D20310);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    sub_1B4D17BBC();
    v17 = (v14 + *(v9 + 40));
    *v17 = 0;
    v17[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7158, &unk_1B4D20310);
    }
  }

  else
  {
    sub_1B4A6F890(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  return sub_1B4A9A7EC;
}

BOOL sub_1B4A6F45C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  sub_1B4974FBC(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1B4975024(v12, a1, a2);
  return v15;
}

uint64_t sub_1B4A6F594(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1B4A6F658@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A6F6F4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0xE000000000000000;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  sub_1B4D17BBC();
  v4 = *(v3 + 28);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_1B4A6F890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A6F9F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A6FA60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4A6FB00@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7148, &unk_1B4D25C40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v7 + 24), v6, &qword_1EB8A7148, &unk_1B4D25C40);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0xE000000000000000;
  sub_1B4D17BBC();
  v10 = *(v8 + 28);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7148, &unk_1B4D25C40);
  }

  return result;
}

uint64_t sub_1B4A6FCAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0) + 24);
  sub_1B4975024(a2 + v8, &qword_1EB8A7148, &unk_1B4D25C40);
  sub_1B4A6F890(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair.entry.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7148, &unk_1B4D25C40) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7148, &unk_1B4D25C40);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 1) = 0;
    *(v14 + 2) = 0xE000000000000000;
    sub_1B4D17BBC();
    v17 = *(v9 + 28);
    v18 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7148, &unk_1B4D25C40);
    }
  }

  else
  {
    sub_1B4A6F890(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  }

  return sub_1B4A70040;
}

void sub_1B4A70040(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
    sub_1B4975024(v9 + v3, &qword_1EB8A7148, &unk_1B4D25C40);
    sub_1B4A6F890(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4A6FA60(v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A7148, &unk_1B4D25C40);
    sub_1B4A6F890(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
  sub_1B4D17BBC();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v2;
  a1[2] = v2;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue(0);
  return sub_1B4D17BBC();
}

double Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.keyType.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1B4A1F598(v2, v3, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.keyType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1B4A1F5C0(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.dayOfWeek.getter()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  v2 = v0;
  v1 = *v0;
  sub_1B4A1F5AC(v1, *(v2 + 8), 0);
  return v1;
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.dayOfWeek.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B4A1F5C0(*v2, *(v2 + 8), *(v2 + 16));
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 0;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.dayOfWeek.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (*(v1 + 16))
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v3 = *v1;
    v4 = *(v1 + 8);
    sub_1B4A1F5AC(*v1, v4, 0);
  }

  *a1 = v3;
  a1[1] = v4;
  return sub_1B4A705B4;
}

uint64_t sub_1B4A705B4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  if (a2)
  {

    sub_1B4A1F5C0(v5, v6, v7);
    *v3 = v4;
    *(v3 + 8) = v2;
    *(v3 + 16) = 0;
  }

  else
  {
    result = sub_1B4A1F5C0(*v3, *(v3 + 8), *(v3 + 16));
    *v3 = v4;
    *(v3 + 8) = v2;
    *(v3 + 16) = 0;
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay.getter()
{
  if (v0[16] == 1)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay.setter(uint64_t a1)
{
  result = sub_1B4A1F5C0(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  if (*(v1 + 16) == 1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  return sub_1B4A706F8;
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.weatherCondition.getter()
{
  if (v0[16] == 2)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.weatherCondition.setter(uint64_t a1)
{
  result = sub_1B4A1F5C0(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.weatherCondition.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  if (*(v1 + 16) == 2)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  return sub_1B4A707A4;
}

double Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.distance.getter()
{
  result = *v0;
  if (*(v0 + 16) != 3)
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.distance.setter(double a1)
{
  result = sub_1B4A1F5C0(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 3;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.distance.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 16) != 3)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4A7083C;
}

double Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.roundedDistance.getter()
{
  result = *v0;
  if (*(v0 + 16) != 4)
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.roundedDistance.setter(double a1)
{
  result = sub_1B4A1F5C0(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 4;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.roundedDistance.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 16) != 4)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4A708D4;
}

uint64_t sub_1B4A708DC(uint64_t *a1, uint64_t a2, char a3)
{
  v5 = *a1;
  v4 = a1[1];
  result = sub_1B4A1F5C0(*v4, *(v4 + 8), *(v4 + 16));
  *v4 = v5;
  *(v4 + 8) = 0;
  *(v4 + 16) = a3;
  return result;
}

uint64_t sub_1B4A70934@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A709F0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.count.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A7E80, &unk_1B4D25C50);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7E80, &unk_1B4D25C50);
LABEL_5:
    *a1 = 0;
    type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
    return sub_1B4D17BBC();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
    goto LABEL_5;
  }

  return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
}

uint64_t sub_1B4A70CEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A7E80, &unk_1B4D25C50);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7E80, &unk_1B4D25C50);
LABEL_5:
    *a2 = 0;
    type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
    return sub_1B4D17BBC();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
    goto LABEL_5;
  }

  return sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
}

uint64_t sub_1B4A70E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7E80, &unk_1B4D25C50);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.count.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7E80, &unk_1B4D25C50);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.count.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7E80, &unk_1B4D25C50);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7E80, &unk_1B4D25C50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      return sub_1B4A71254;
    }

    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
  }

  *v11 = 0;
  sub_1B4D17BBC();
  return sub_1B4A71254;
}

void sub_1B4A71254(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7E80, &unk_1B4D25C50);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7E80, &unk_1B4D25C50);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1B4A71414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7E80, &unk_1B4D25C50);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.bestWorkoutMetric.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7E80, &unk_1B4D25C50);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.bestWorkoutMetric.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7E80, &unk_1B4D25C50);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7E80, &unk_1B4D25C50);
LABEL_15:
    *v11 = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    return sub_1B4A71854;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  return sub_1B4A71854;
}

void sub_1B4A71854(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7E80, &unk_1B4D25C50);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7E80, &unk_1B4D25C50);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B4A10A90(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A71B30@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  a2(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(v1 + *(v6 + 20), v5, &qword_1EB8A7EA0, &unk_1B4D42260);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A6F890(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A7EA0, &unk_1B4D42260);
  }

  return result;
}

uint64_t sub_1B4A71D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v7 + 20), v6, &qword_1EB8A7EA0, &unk_1B4D42260);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = -1;
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7EA0, &unk_1B4D42260);
  }

  return result;
}

uint64_t sub_1B4A71E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0) + 20);
  sub_1B4975024(a2 + v8, &qword_1EB8A7EA0, &unk_1B4D42260);
  sub_1B4A6F890(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.key.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0) + 20);
  sub_1B4975024(v2 + v4, &qword_1EB8A7EA0, &unk_1B4D42260);
  sub_1B4A6F890(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.key.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0) + 20);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7EA0, &unk_1B4D42260);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = -1;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7EA0, &unk_1B4D42260);
    }
  }

  else
  {
    sub_1B4A6F890(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  }

  return sub_1B4A72288;
}

void sub_1B4A72288(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    sub_1B4975024(v9 + v3, &qword_1EB8A7EA0, &unk_1B4D42260);
    sub_1B4A6F890(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4A6FA60(v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A7EA0, &unk_1B4D42260);
    sub_1B4A6F890(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.hasKey.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(v0 + *(v4 + 20), v3, &qword_1EB8A7EA0, &unk_1B4D42260);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1B4975024(v3, &qword_1EB8A7EA0, &unk_1B4D42260);
  return v6;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.clearKey()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0) + 20);
  sub_1B4975024(v0 + v1, &qword_1EB8A7EA0, &unk_1B4D42260);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(v1 + *(v6 + 24), v5, &qword_1EB8A7E90, &unk_1B4D25C60);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A6F890(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  }

  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A7E90, &unk_1B4D25C60);
  }

  return result;
}

uint64_t sub_1B4A72708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v7 + 24), v6, &qword_1EB8A7E90, &unk_1B4D25C60);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7E90, &unk_1B4D25C60);
  }

  return result;
}

uint64_t sub_1B4A728A4(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0) + 24);
  sub_1B4975024(a2 + v9, &qword_1EB8A7E90, &unk_1B4D25C60);
  sub_1B4A6F890(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  return (*(v6 + 56))(a2 + v9, 0, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.value.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A7E90, &unk_1B4D25C60);
  sub_1B4A6F890(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.value.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7E90, &unk_1B4D25C60);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7E90, &unk_1B4D25C60);
    }
  }

  else
  {
    sub_1B4A6F890(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  }

  return sub_1B4A72CE0;
}

void sub_1B4A72CE0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    sub_1B4975024(v9 + v3, &qword_1EB8A7E90, &unk_1B4D25C60);
    sub_1B4A6F890(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4A6FA60(v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A7E90, &unk_1B4D25C60);
    sub_1B4A6F890(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_1B4A72E84(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  sub_1B4974FBC(v4 + *(v13 + 24), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1B4975024(v12, a1, a2);
  return v15;
}

uint64_t sub_1B4A72FBC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_DistanceSampleIntervalRecord.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0) + 36);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_DistanceSampleIntervalRecord.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0) + 36);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_DistanceSampleIntervalRecord.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutRecordEntry.workoutIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutRecordEntry.workoutIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1B4A7347C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v11, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v12 = *(a5(0) + 28);
  sub_1B4975024(a2 + v12, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4A6F890(v11, a2 + v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  return (*(v9 + 56))(a2 + v12, 0, 1, v8);
}

void (*Apple_Fitness_Intelligence_BestWorkoutRecordEntry.localizedDate.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7158, &unk_1B4D20310);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    sub_1B4D17BBC();
    v17 = (v14 + *(v9 + 40));
    *v17 = 0;
    v17[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7158, &unk_1B4D20310);
    }
  }

  else
  {
    sub_1B4A6F890(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  return sub_1B4A737DC;
}

void sub_1B4A737DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    sub_1B4975024(v9 + v3, &qword_1EB8A7158, &unk_1B4D20310);
    sub_1B4A6F890(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4A6FA60(v5, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A7158, &unk_1B4D20310);
    sub_1B4A6F890(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutRecordEntry.distanceRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B90, &unk_1B4D3B2C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  sub_1B4974FBC(v1 + *(v6 + 20), v5, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) != 1)
  {
    return sub_1B4A6F890(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  }

  sub_1B4975024(v5, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A73BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0) + 20);
  sub_1B4975024(a2 + v7, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  sub_1B4A6F890(v6, a2 + v7, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  return (*(*(v8 - 8) + 56))(a2 + v7, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutRecordEntry.distanceRecord.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0) + 20);
  sub_1B4975024(v1 + v3, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  sub_1B4A6F890(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_BestWorkoutRecordEntry.distanceRecord.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B90, &unk_1B4D3B2C0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0) + 20);
  *(v5 + 12) = v12;
  sub_1B4974FBC(v1 + v12, v8, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7B90, &unk_1B4D3B2C0);
    *v11 = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0;
    sub_1B4D17BBC();
  }

  else
  {
    sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  }

  return sub_1B4A73FAC;
}

void sub_1B4A73FAC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = *(*a1 + 12);
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v6, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    sub_1B4975024(v9 + v5, &qword_1EB8A7B90, &unk_1B4D3B2C0);
    sub_1B4A6F890(v6, v9 + v5, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    (*(v4 + 56))(v9 + v5, 0, 1, v3);
    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  }

  else
  {
    sub_1B4975024(v9 + v5, &qword_1EB8A7B90, &unk_1B4D3B2C0);
    sub_1B4A6F890(v7, v9 + v5, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    (*(v4 + 56))(v9 + v5, 0, 1, v3);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v2);
}

uint64_t sub_1B4A74194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9388, &unk_1B4D27A70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v10 - v5);
  v8 = *(v7 + 56);
  sub_1B4A6F9F8(a1, &v10 - v5, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
  sub_1B4A6F9F8(a2, v6 + v8, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
  LOBYTE(a2) = _s19FitnessIntelligence06Apple_a1_B29_DistanceSampleIntervalRecordV2eeoiySbAC_ACtFZ_0(v6, (v6 + v8));
  sub_1B4A6FA60(v6 + v8, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  return a2 & 1;
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutRecordEntry.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  sub_1B4D17BBC();
  v5 = *(v2 + 28);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t sub_1B4A7438C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, double)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = a2(0, v7);
  sub_1B4974FBC(a1 + *(v10 + 28), v9, &qword_1EB8A7158, &unk_1B4D20310);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_1B4A6F890(v9, a3, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_1B4D17BBC();
  v13 = (a3 + *(v11 + 40));
  *v13 = 0;
  v13[1] = 0;
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1B4975024(v9, &qword_1EB8A7158, &unk_1B4D20310);
  }

  return result;
}

void (*Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry.localizedDate.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7158, &unk_1B4D20310);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    sub_1B4D17BBC();
    v17 = (v14 + *(v9 + 40));
    *v17 = 0;
    v17[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7158, &unk_1B4D20310);
    }
  }

  else
  {
    sub_1B4A6F890(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  return sub_1B4A9A7EC;
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  sub_1B4D17BBC();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.topEntries.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.recordEntry.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  sub_1B4974FBC(v2, &v14 - v5, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7BC8, &unk_1B4D1FD60);
LABEL_5:
    *a1 = 0;
    *(a1 + 1) = 0xE000000000000000;
    v8 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
    v9 = *(v8 + 20);
    v10 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
    (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
    sub_1B4D17BBC();
    v11 = *(v8 + 28);
    v12 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
    return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
    goto LABEL_5;
  }

  return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
}

uint64_t sub_1B4A74C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  sub_1B4975024(a2, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.recordEntry.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.recordEntry.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1B4974FBC(v2, v9, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B4A6F890(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      return sub_1B4A750AC;
    }

    sub_1B4A6FA60(v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  }

  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v16 = *(v10 + 20);
  v17 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
  sub_1B4D17BBC();
  v18 = *(v10 + 28);
  v19 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  (*(*(v19 - 8) + 56))(&v13[v18], 1, 1, v19);
  return sub_1B4A750AC;
}

void sub_1B4A750AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    sub_1B4975024(v8, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.measurementEntry.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  sub_1B4974FBC(v2, &v12 - v5, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  sub_1B4D17BBC();
  v10 = *(v9 + 28);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  return (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
}

uint64_t sub_1B4A753F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  sub_1B4975024(a2, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.measurementEntry.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.measurementEntry.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1B4974FBC(v2, v9, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A7BC8, &unk_1B4D1FD60);
LABEL_15:
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    *(v13 + 2) = 0;
    sub_1B4D17BBC();
    v16 = *(v10 + 28);
    v17 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    return sub_1B4A75838;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4A6FA60(v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  return sub_1B4A75838;
}

void sub_1B4A75838(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4975024(v8, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.fastestByDistance.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A75C60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = 0;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A75DD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.fastestByDistance.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.fastestByDistance.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      return sub_1B4A761D0;
    }

    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *v11 = MEMORY[0x1E69E7CC0];
  v11[1] = 0;
  sub_1B4D17BBC();
  return sub_1B4A761D0;
}

void sub_1B4A761D0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1B4A76390@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  v10 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17 - v13;
  sub_1B4974FBC(v10, &v17 - v13, a1, a2);
  v15 = a3(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_1B4975024(v14, a1, a2);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B4A6F890(v14, a5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v14, a4);
  }

  *a5 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A764F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t (*a5)(void)@<X6>, void *a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17 - v13;
  sub_1B4974FBC(a1, &v17 - v13, a2, a3);
  v15 = a4(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_1B4975024(v14, a2, a3);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B4A6F890(v14, a6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v14, a5);
  }

  *a6 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A76660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.fastestPace.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.fastestPace.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    *v11 = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    return sub_1B4A76A60;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  return sub_1B4A76A60;
}

void sub_1B4A76A60(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.longestDistance.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A76D5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A76ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.longestDistance.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.longestDistance.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    *v11 = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    return sub_1B4A772D4;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  return sub_1B4A772D4;
}

void sub_1B4A772D4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.greatestElevation.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A775D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A77748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.greatestElevation.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.greatestElevation.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    *v11 = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    return sub_1B4A77B48;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  return sub_1B4A77B48;
}

void sub_1B4A77B48(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.mostCaloriesBurned.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A77E44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A77FBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.mostCaloriesBurned.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.mostCaloriesBurned.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    *v11 = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    return sub_1B4A783BC;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  return sub_1B4A783BC;
}

void sub_1B4A783BC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.greatestDuration.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A786B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A78830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.greatestDuration.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.greatestDuration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    *v11 = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    return sub_1B4A78C30;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  return sub_1B4A78C30;
}

void sub_1B4A78C30(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.distanceStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A78F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.distanceStatistics.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.distanceStatistics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4A7932C;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4A7932C;
}

void sub_1B4A7932C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.paceStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A79628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.paceStatistics.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.paceStatistics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4A79A28;
  }

  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4A79A28;
}

void sub_1B4A79A28(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.elevationGainStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A79D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.elevationGainStatistics.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.elevationGainStatistics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4A7A124;
  }

  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4A7A124;
}

void sub_1B4A7A124(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.averageHeartRateStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7A420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.averageHeartRateStatistics.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.averageHeartRateStatistics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4A7A820;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4A7A820;
}

void sub_1B4A7A820(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.diveDepthStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7AB1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.diveDepthStatistics.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.diveDepthStatistics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4A7AF1C;
  }

  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4A7AF1C;
}

void sub_1B4A7AF1C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.caloriesStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7B218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.caloriesStatistics.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.caloriesStatistics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4A7B618;
  }

  if (swift_getEnumCaseMultiPayload() != 11)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4A7B618;
}

void sub_1B4A7B618(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.durationStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7B914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.durationStatistics.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.durationStatistics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4A7BD14;
  }

  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4A7BD14;
}

void sub_1B4A7BD14(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.weatherTemperatureStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7C010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.weatherTemperatureStatistics.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.weatherTemperatureStatistics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    v11[1] = 0u;
    v11[2] = 0u;
    *v11 = 0u;
    sub_1B4D17BBC();
    return sub_1B4A7C410;
  }

  if (swift_getEnumCaseMultiPayload() != 13)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4A7C410;
}

void sub_1B4A7C410(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.totalCount.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a1 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7C704@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a2 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7C874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.totalCount.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.totalCount.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    *v11 = 0;
    sub_1B4D17BBC();
    return sub_1B4A7CC6C;
  }

  if (swift_getEnumCaseMultiPayload() != 14)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  return sub_1B4A7CC6C;
}

void sub_1B4A7CC6C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.countByWeatherConditionProperty.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7CF68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      return sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = 0;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7D0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.countByWeatherConditionProperty.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.countByWeatherConditionProperty.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    *v11 = MEMORY[0x1E69E7CC0];
    v11[1] = 0;
    sub_1B4D17BBC();
    return sub_1B4A7D4E0;
  }

  if (swift_getEnumCaseMultiPayload() != 15)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  return sub_1B4A7D4E0;
}

void sub_1B4A7D4E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.countByRoundedDistanceProperty.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7D7DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      return sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = 0;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7D954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.countByRoundedDistanceProperty.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.countByRoundedDistanceProperty.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    *v11 = MEMORY[0x1E69E7CC0];
    v11[1] = 0;
    sub_1B4D17BBC();
    return sub_1B4A7DD54;
  }

  if (swift_getEnumCaseMultiPayload() != 16)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  return sub_1B4A7DD54;
}

void sub_1B4A7DD54(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.weeklyCountStatistics.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  sub_1B4974FBC(v2, &v13 - v5, &qword_1EB8A7CC8, &qword_1B4D20180);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
    }

    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 1) = v9;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  sub_1B4D17BBC();
  v11 = *(v10 + 28);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

uint64_t sub_1B4A7E098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.weeklyCountStatistics.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.weeklyCountStatistics.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1B4974FBC(v2, v9, &qword_1EB8A7CC8, &qword_1B4D20180);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    v16 = MEMORY[0x1E69E7CC0];
    *v13 = 0;
    *(v13 + 1) = v16;
    sub_1B4D17BBC();
    v17 = *(v10 + 28);
    v18 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return sub_1B4A7E4E0;
  }

  if (swift_getEnumCaseMultiPayload() != 17)
  {
    sub_1B4A6FA60(v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
  return sub_1B4A7E4E0;
}

void sub_1B4A7E4E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B4A191CC(*a1, *a2) & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A7E7BC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8FD0);
  __swift_project_value_buffer(v0, qword_1EB8A8FD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "startCacheIndex";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endCacheIndex";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "records";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperties.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
        sub_1B4A97E08(qword_1EDC3BC68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
        sub_1B4D17D3C();
      }

      else if (result == 2 || result == 1)
      {
        sub_1B4D17CCC();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperties.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17E0C(), !v4))
    {
      if (!*(v3[2] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0), sub_1B4A97E08(qword_1EDC3BC68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyRecord), result = sub_1B4D17E5C(), !v4))
      {
        type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4A7EC70@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = MEMORY[0x1E69E7CC0];
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7ED10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9380, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperties);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A7EDB0(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperties);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A7EE1C(uint64_t a1, uint64_t a2)
{
  sub_1B4A97E08(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperties);

  return sub_1B4D17D9C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        goto LABEL_14;
      }

      if (result == 5 || result == 6)
      {
LABEL_2:
        type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
        sub_1B4D17D0C();
      }
    }

    else
    {
      if (result == 1 || result == 2)
      {
        goto LABEL_2;
      }

      if (result == 3)
      {
LABEL_14:
        type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
        sub_1B4D17CBC();
      }
    }
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A7F0F0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1B4A7F168(v3, a1, a2, a3);
    sub_1B4A7F1E0(v3, a1, a2, a3);
    sub_1B4A7F258(v3, a1, a2, a3);
    sub_1B4A7F2D0(v3, a1, a2, a3);
    sub_1B4A7F348(v3, a1, a2, a3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A7F0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A7F168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A7F1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_1B4D17E0C();
  }

  return result;
}

uint64_t sub_1B4A7F258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return sub_1B4D17E0C();
  }

  return result;
}

uint64_t sub_1B4A7F2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A7F348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A7F40C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B4D17BBC();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v11);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t sub_1B4A7F4C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9378, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A7F568(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3B440, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A7F5D4(uint64_t a1, uint64_t a2)
{
  sub_1B4A97E08(qword_1EDC3B440, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A7F67C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B4D223E0;
  v7 = v21 + v6 + v4[14];
  *(v21 + v6) = 1;
  *v7 = "monthOfYear";
  *(v7 + 8) = 11;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1B4D17E7C();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v21 + v6 + v5 + v4[14];
  *(v21 + v6 + v5) = 2;
  *v11 = "dayOfWeek";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v10();
  v12 = (v21 + v6 + 2 * v5);
  v13 = v12 + v4[14];
  *v12 = 3;
  *v13 = "hourOfDay";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v10();
  v14 = (v21 + v6 + 3 * v5);
  v15 = v14 + v4[14];
  *v14 = 4;
  *v15 = "activityType";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v10();
  v16 = (v21 + v6 + 4 * v5);
  v17 = v16 + v4[14];
  *v16 = 5;
  *v17 = "locationType";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v10();
  v18 = (v21 + v6 + 5 * v5);
  v19 = v18 + v4[14];
  *v18 = 6;
  *v19 = "sourceIdentifier";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v10();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        goto LABEL_14;
      }

      if (result == 5 || result == 6)
      {
LABEL_2:
        sub_1B4D17CDC();
      }
    }

    else
    {
      if (result == 1 || result == 2)
      {
        goto LABEL_2;
      }

      if (result == 3)
      {
LABEL_14:
        sub_1B4D17C7C();
      }
    }
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1B4D17E1C(), !v4))
  {
    if (!*(v3[1] + 16) || (result = sub_1B4D17E1C(), !v4))
    {
      if (!*(v3[2] + 16) || (result = sub_1B4D17DBC(), !v4))
      {
        if (!*(v3[3] + 16) || (result = sub_1B4D17DBC(), !v4))
        {
          if (!*(v3[4] + 16) || (result = sub_1B4D17E1C(), !v4))
          {
            if (!*(v3[5] + 16) || (result = sub_1B4D17E1C(), !v4))
            {
              type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
              return sub_1B4D17BAC();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4A7FBBC@<X0>(void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v2;
  a2[2] = v2;
  a2[3] = v2;
  a2[4] = v2;
  a2[5] = v2;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7FC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A7FC80(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1B4A7FD48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9370, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A7FDE8(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3A500, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A7FE54(uint64_t a1, uint64_t a2)
{
  sub_1B4A97E08(qword_1EDC3A500, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A7FEF0()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9018);
  __swift_project_value_buffer(v0, qword_1EB8A9018);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "startCacheIndex";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endCacheIndex";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dimensions";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "property";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyRecord.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1B4A80228(a1, v5, a2, a3);
      }

      else if (result == 4)
      {
        sub_1B4A802DC(a1, v5, a2, a3);
      }
    }

    else if (result == 1 || result == 2)
    {
      sub_1B4D17CCC();
    }
  }

  return result;
}

uint64_t sub_1B4A80228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  sub_1B4A97E08(qword_1EDC3B440, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A802DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  sub_1B4A97E08(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperty);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyRecord.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17E0C(), !v4))
    {
      result = sub_1B4A80464(v3, a1, a2, a3);
      if (!v4)
      {
        sub_1B4A80680(v3, a1, a2, a3);
        type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4A80464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE8, &qword_1B4D201A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  sub_1B4974FBC(a1 + *(v12 + 28), v7, &qword_1EB8A7CE8, &qword_1B4D201A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7CE8, &qword_1B4D201A0);
  }

  sub_1B4A6F890(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  sub_1B4A97E08(qword_1EDC3B440, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  sub_1B4D17E6C();
  return sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
}

uint64_t sub_1B4A80680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD8, &unk_1B4D20190);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  sub_1B4974FBC(a1 + *(v12 + 32), v7, &qword_1EB8A7CD8, &unk_1B4D20190);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7CD8, &unk_1B4D20190);
  }

  sub_1B4A6F890(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  sub_1B4A97E08(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperty);
  sub_1B4D17E6C();
  return sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
}

uint64_t sub_1B4A808E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_1B4D17BBC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 32);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1B4A80A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9368, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A80AA4(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3BC68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A80B10(uint64_t a1, uint64_t a2)
{
  sub_1B4A97E08(qword_1EDC3BC68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A80BAC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9030);
  __swift_project_value_buffer(v0, qword_1EB8A9030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "currentCount";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "currentEntries";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "milestones";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
        sub_1B4A97E08(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
LABEL_12:
        sub_1B4D17D3C();
        goto LABEL_4;
      }

      if (result == 1)
      {
        sub_1B4D17CCC();
      }

LABEL_4:
      result = sub_1B4D17C2C();
    }

    type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
    sub_1B4A97E08(&qword_1EB8A7190, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
    goto LABEL_12;
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0), sub_1B4A97E08(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry), result = sub_1B4D17E5C(), !v4))
    {
      if (!*(v3[2] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0), sub_1B4A97E08(&qword_1EB8A7190, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair), result = sub_1B4D17E5C(), !v4))
      {
        type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue(0);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4A81114@<X0>(void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  a2[1] = v2;
  a2[2] = v2;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A81160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A811D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1B4A81278(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9360, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A81318(uint64_t a1)
{
  v2 = sub_1B4A97E08(&qword_1EB8A7168, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A81384(uint64_t a1, uint64_t a2)
{
  sub_1B4A97E08(&qword_1EB8A7168, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A8144C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9058);
  __swift_project_value_buffer(v0, qword_1EB8A9058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cacheIndex";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "workoutIdentifier";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "localizedDate";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1B4A85BB8(a1, v5, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
        break;
      case 2:
        sub_1B4D17D1C();
        break;
      case 1:
        sub_1B4D17CCC();
        break;
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (!*v4 || (result = sub_1B4D17E0C(), !v5))
  {
    v10 = v4[2];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v4[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (result = sub_1B4D17E3C(), !v5))
    {
      result = sub_1B4A862B0(v4, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry, 3);
      if (!v5)
      {
        type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4A81878@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0xE000000000000000;
  sub_1B4D17BBC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1B4A8195C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9358, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A819FC(uint64_t a1)
{
  v2 = sub_1B4A97E08(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A81A68(uint64_t a1, uint64_t a2)
{
  sub_1B4A97E08(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A81B08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1B8C7C620](a2, a3);
  *a4 = 0xD000000000000038;
  *a5 = 0x80000001B4D606C0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4D17CCC();
    }

    else if (result == 2)
    {
      sub_1B4A81C70(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B4A81C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  sub_1B4A97E08(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    result = sub_1B4A81DC0(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A81DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7148, &unk_1B4D25C40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v12 + 24), v7, &qword_1EB8A7148, &unk_1B4D25C40);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7148, &unk_1B4D25C40);
  }

  sub_1B4A6F890(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  sub_1B4A97E08(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  sub_1B4D17E6C();
  return sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
}

uint64_t sub_1B4A82028@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  sub_1B4D17BBC();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1B4A82104(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9350, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A821A4(uint64_t a1)
{
  v2 = sub_1B4A97E08(&qword_1EB8A7190, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A82210(uint64_t a1, uint64_t a2)
{
  sub_1B4A97E08(&qword_1EB8A7190, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);

  return sub_1B4D17D9C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
        sub_1B4A97E08(qword_1EDC3A650, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
        sub_1B4D17D3C();
      }

      else if (result == 2)
      {
        sub_1B4D17CCC();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0), sub_1B4A97E08(qword_1EDC3A650, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair), result = sub_1B4D17E5C(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17E0C(), !v4))
    {
      type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A82538@<X0>(void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = 0;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A825B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9348, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A82650(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A826BC(uint64_t a1, uint64_t a2)
{
  sub_1B4A97E08(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A82738(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1B4A191CC(*a1, *a2) & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A82834()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A90C0);
  __swift_project_value_buffer(v0, qword_1EB8A90C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1CBF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dayOfWeek";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hourOfDay";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "weatherCondition";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "distance";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "roundedDistance";
  *(v15 + 8) = 15;
  *(v15 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v16 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_1B4A82C3C(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        v9 = MEMORY[0x1E69AACA0];
        v10 = a1;
        v11 = v5;
        v12 = a2;
        v13 = a3;
        v14 = 1;
        goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v9 = MEMORY[0x1E69AACA0];
          v10 = a1;
          v11 = v5;
          v12 = a2;
          v13 = a3;
          v14 = 2;
          goto LABEL_3;
        case 4:
          v9 = MEMORY[0x1E69AACC8];
          v10 = a1;
          v11 = v5;
          v12 = a2;
          v13 = a3;
          v14 = 3;
LABEL_3:
          sub_1B4A82D04(v10, v11, v12, v13, v9, v14);
          break;
        case 5:
          v9 = MEMORY[0x1E69AACC8];
          v10 = a1;
          v11 = v5;
          v12 = a2;
          v13 = a3;
          v14 = 4;
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_1B4A82C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B4D17D0C();
  if (v4)
  {
  }

  return result;
}

uint64_t sub_1B4A82D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t, uint64_t), char a6)
{
  v14 = 0;
  v15 = 1;
  result = a5(&v14, a3, a4);
  if (!v6 && (v15 & 1) == 0)
  {
    v10 = v14;
    if (*(a2 + 16) == 255)
    {
      v11 = -1;
    }

    else
    {
      sub_1B4D17C3C();
      v11 = *(a2 + 16);
    }

    v12 = *a2;
    v13 = *(a2 + 8);
    *a2 = v10;
    *(a2 + 8) = 0;
    *(a2 + 16) = a6;
    return sub_1B4A1F5C0(v12, v13, v11);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = *(v4 + 16);
  if (v6 > 2)
  {
    if (v6 != 3 && v6 != 4)
    {
      goto LABEL_10;
    }

    result = sub_1B4D17E2C();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!*(v4 + 16))
    {
      result = sub_1B4D17E3C();
      if (v5)
      {
        return result;
      }

      goto LABEL_10;
    }

    result = sub_1B4D17E0C();
    if (!v5)
    {
LABEL_10:
      type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A82F0C@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = -1;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A82F90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9340, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A83030(uint64_t a1)
{
  v2 = sub_1B4A97E08(&qword_1EDC3A6F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A8309C(uint64_t a1, uint64_t a2)
{
  sub_1B4A97E08(&qword_1EDC3A6F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A83184(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B4D1AA70;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 5;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = sub_1B4D17E7C();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = 2;
  v16();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4A833A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93A0, &qword_1B4D27A98);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1B4974FBC(a1, v12, &qword_1EB8A7E80, &unk_1B4D25C50);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7E80, &unk_1B4D25C50);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
      v30 = v45;
    }

    else
    {
      sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A93A0, &qword_1B4D27A98);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
    return sub_1B4975024(v33, &qword_1EB8A93A0, &qword_1B4D27A98);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A93A0, &qword_1B4D27A98);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7E80, &unk_1B4D25C50);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4A83960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9398, &qword_1B4D27A88);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1B4974FBC(a1, v12, &qword_1EB8A7E80, &unk_1B4D25C50);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7E80, &unk_1B4D25C50);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A9398, &qword_1B4D27A88);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
    return sub_1B4975024(v33, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7E80, &unk_1B4D25C50);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  sub_1B4974FBC(v3, &v13 - v9, &qword_1EB8A7E80, &unk_1B4D25C50);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A903F8(v3, a1, a2, a3, &qword_1EB8A7E80, &unk_1B4D25C50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
  }

  else
  {
    sub_1B4A840F4(v3, a1, a2, a3);
  }

  result = sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A840F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7E80, &unk_1B4D25C50);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7E80, &unk_1B4D25C50);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4A97E08(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A843E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9338, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A84488(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3A7A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A844F4(uint64_t a1, uint64_t a2)
{
  sub_1B4A97E08(qword_1EDC3A7A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A84594(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1B8C7C620](a2, a3);
  *a4 = 0xD000000000000039;
  *a5 = 0x80000001B4D60700;
  return result;
}

uint64_t sub_1B4A84628()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9110);
  __swift_project_value_buffer(v0, qword_1EB8A9110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4A848A8(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1B4A8495C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B4A848A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  sub_1B4A97E08(&qword_1EDC3A6F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A8495C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  sub_1B4A97E08(qword_1EDC3A7A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A84A80(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1B4A84C9C(v3, a1, a2, a3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A84A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v12 + 20), v7, &qword_1EB8A7EA0, &unk_1B4D42260);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7EA0, &unk_1B4D42260);
  }

  sub_1B4A6F890(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  sub_1B4A97E08(&qword_1EDC3A6F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  sub_1B4D17E6C();
  return sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
}

uint64_t sub_1B4A84C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v12 + 24), v7, &qword_1EB8A7E90, &unk_1B4D25C60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7E90, &unk_1B4D25C60);
  }

  sub_1B4A6F890(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  sub_1B4A97E08(qword_1EDC3A7A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  sub_1B4D17E6C();
  return sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
}

uint64_t sub_1B4A84F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1B4A85020(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9330, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A850C0(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3A650, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A8512C(uint64_t a1, uint64_t a2)
{
  sub_1B4A97E08(qword_1EDC3A650, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A851C8()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9128);
  __swift_project_value_buffer(v0, qword_1EB8A9128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1CBF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "startTimestamp";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endTimestamp";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "distanceMarker";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "distance";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "duration";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_DistanceSampleIntervalRecord.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_10:
          sub_1B4D17CFC();
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
        goto LABEL_10;
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_DistanceSampleIntervalRecord.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E2C(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17E2C(), !v4))
    {
      if (!v3[2] || (result = sub_1B4D17E2C(), !v4))
      {
        if (!v3[3] || (result = sub_1B4D17E2C(), !v4))
        {
          if (!v3[4] || (result = sub_1B4D17E2C(), !v4))
          {
            type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
            return sub_1B4D17BAC();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4A85698@<X0>(uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A85710(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9328, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A857B0(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3AF70, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A8581C(uint64_t a1, uint64_t a2)
{
  sub_1B4A97E08(qword_1EDC3AF70, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A858B8()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9140);
  __swift_project_value_buffer(v0, qword_1EB8A9140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "workoutIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localizedDate";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "distanceRecord";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutRecordEntry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1B4A85C70(v5, a1, a2, a3);
        break;
      case 2:
        sub_1B4A85BB8(a1, v5, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
        break;
      case 1:
        sub_1B4D17D1C();
        break;
    }
  }

  return result;
}

uint64_t sub_1B4A85BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  sub_1B4A97E08(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A85C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a2;
  v45 = a3;
  v46 = a4;
  v47 = a1;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B90, &unk_1B4D3B2C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93C0, &unk_1B4D27AC0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v41 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v35 - v23;
  v39 = v5;
  v25 = *(v5 + 56);
  v42 = v4;
  v25(&v35 - v23, 1, 1, v4, v22);
  v35 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0) + 20);
  sub_1B4974FBC(v47 + v35, v11, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  v36 = v13;
  v37 = v12;
  v26 = (*(v13 + 48))(v11, 1, v12);
  if (v26 == 1)
  {
    sub_1B4975024(v11, &qword_1EB8A7B90, &unk_1B4D3B2C0);
    v27 = v42;
  }

  else
  {
    sub_1B4A6F890(v11, v18, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
    sub_1B4A6F890(v18, v15, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
    sub_1B4975024(v24, &qword_1EB8A93C0, &unk_1B4D27AC0);
    v28 = v40;
    sub_1B4A6F890(v15, v40, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    sub_1B4A6F890(v28, v24, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    v27 = v42;
    (v25)(v24, 0, 1, v42);
  }

  sub_1B4A97E08(qword_1EDC3AF70, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  v29 = v43;
  sub_1B4D17D4C();
  v30 = v41;
  if (v29)
  {
    return sub_1B4975024(v24, &qword_1EB8A93C0, &unk_1B4D27AC0);
  }

  sub_1B4974FBC(v24, v41, &qword_1EB8A93C0, &unk_1B4D27AC0);
  if ((*(v39 + 48))(v30, 1, v27) == 1)
  {
    sub_1B4975024(v24, &qword_1EB8A93C0, &unk_1B4D27AC0);
    return sub_1B4975024(v30, &qword_1EB8A93C0, &unk_1B4D27AC0);
  }

  else
  {
    v32 = v38;
    sub_1B4A6F890(v30, v38, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    if (v26 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v24, &qword_1EB8A93C0, &unk_1B4D27AC0);
    v33 = v47;
    v34 = v35;
    sub_1B4975024(v47 + v35, &qword_1EB8A7B90, &unk_1B4D3B2C0);
    sub_1B4A6F890(v32, v33 + v34, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    return (*(v36 + 56))(v33 + v34, 0, 1, v37);
  }
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutRecordEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v9 = v4[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1B4D17E3C(), !v5))
  {
    result = sub_1B4A862B0(v4, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry, 2);
    if (!v5)
    {
      sub_1B4A864D4(v4, a1, a2, a3);
      type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A862B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, double), uint64_t a6)
{
  v18[2] = a6;
  v18[3] = a3;
  v18[5] = a4;
  v18[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0, v13);
  sub_1B4974FBC(a1 + *(v16 + 28), v10, &qword_1EB8A7158, &unk_1B4D20310);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1B4975024(v10, &qword_1EB8A7158, &unk_1B4D20310);
  }

  sub_1B4A6F890(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4A97E08(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4D17E6C();
  return sub_1B4A6FA60(v15, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
}

uint64_t sub_1B4A864D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B90, &unk_1B4D3B2C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  sub_1B4974FBC(a1 + *(v11 + 20), v7, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  }

  sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  sub_1B4A97E08(qword_1EDC3AF70, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  sub_1B4D17E6C();
  return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
}

uint64_t sub_1B4A86728@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  sub_1B4D17BBC();
  v6 = *(a1 + 28);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1B4A86848(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9320, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A868E8(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3BB10, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A86954(uint64_t a1, uint64_t a2)
{
  sub_1B4A97E08(qword_1EDC3BB10, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A869F0()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9158);
  __swift_project_value_buffer(v0, qword_1EB8A9158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "workoutIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localizedDate";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "measurement";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1B4D17CFC();
        break;
      case 2:
        sub_1B4A85BB8(a1, v5, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
        break;
      case 1:
        sub_1B4D17D1C();
        break;
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v9 = v4[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1B4D17E3C(), !v5))
  {
    result = sub_1B4A862B0(v4, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry, 2);
    if (!v5)
    {
      if (v4[2])
      {
        sub_1B4D17E2C();
      }

      type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A86E1C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  sub_1B4D17BBC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1B4A86EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9318, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A86F94(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3B380, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A87000(uint64_t a1, uint64_t a2)
{
  sub_1B4A97E08(qword_1EDC3B380, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A8709C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9170);
  __swift_project_value_buffer(v0, qword_1EB8A9170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B4D1A800;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "topEntries";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B4D17E7C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0);
        sub_1B4A97E08(qword_1EDC3A998, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
        sub_1B4D17D3C();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0), sub_1B4A97E08(qword_1EDC3A998, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry), result = sub_1B4D17E5C(), !v4))
  {
    type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A87484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9310, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A87524(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A87590(uint64_t a1, uint64_t a2)
{
  sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A8760C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1B4A10A90(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A876B4()
{
  result = MEMORY[0x1B8C7C620](0x7972746E452ELL, 0xE600000000000000);
  qword_1EB8A9188 = 0xD000000000000039;
  qword_1EB8A9190 = 0x80000001B4D60800;
  return result;
}

uint64_t sub_1B4A87744()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9198);
  __swift_project_value_buffer(v0, qword_1EB8A9198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "recordEntry";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "measurementEntry";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4A87970(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v9, a1, a2, a3);
    }

    else if (result == 2)
    {
      a5(v9, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B4A87A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93B0, &unk_1B4D27AB0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1B4974FBC(a1, v12, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
      v30 = v45;
    }

    else
    {
      sub_1B4975024(v25, &qword_1EB8A93B0, &unk_1B4D27AB0);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3BB10, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A93B0, &unk_1B4D27AB0);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A93B0, &unk_1B4D27AB0);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A93B0, &unk_1B4D27AB0);
    return sub_1B4975024(v33, &qword_1EB8A93B0, &unk_1B4D27AB0);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A93B0, &unk_1B4D27AB0);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4A87FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93B8, &unk_1B4D3B2E0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1B4974FBC(a1, v12, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4975024(v25, &qword_1EB8A93B8, &unk_1B4D3B2E0);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3B380, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A93B8, &unk_1B4D3B2E0);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A93B8, &unk_1B4D3B2E0);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A93B8, &unk_1B4D3B2E0);
    return sub_1B4975024(v33, &qword_1EB8A93B8, &unk_1B4D3B2E0);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A93B8, &unk_1B4D3B2E0);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  sub_1B4974FBC(v3, &v13 - v9, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A8895C(v3, a1, a2, a3);
  }

  else
  {
    sub_1B4A88724(v3, a1, a2, a3);
  }

  result = sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A88724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    sub_1B4A97E08(qword_1EDC3BB10, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A8895C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v7, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A6F890(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4A97E08(qword_1EDC3B380, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v10, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  }

  result = sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A88BF8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A88CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9308, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A88D64(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3A998, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A88DD0(uint64_t a1, uint64_t a2)
{
  sub_1B4A97E08(qword_1EDC3A998, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A88E6C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A91B0);
  __swift_project_value_buffer(v0, qword_1EB8A91B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1B4D25C30;
  v4 = v41 + v3;
  v5 = v41 + v3 + v1[14];
  *(v41 + v3) = 1;
  *v5 = "fastestByDistance";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "fastestPace";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "longestDistance";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "greatestElevation";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "mostCaloriesBurned";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "greatestDuration";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "distanceStatistics";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "paceStatistics";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "elevationGainStatistics";
  *(v22 + 8) = 23;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "averageHeartRateStatistics";
  *(v24 + 1) = 26;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "diveDepthStatistics";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "caloriesStatistics";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "durationStatistics";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "weatherTemperatureStatistics";
  *(v32 + 1) = 28;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "totalCount";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "countByWeatherConditionProperty";
  *(v36 + 1) = 31;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "countByRoundedDistanceProperty";
  *(v37 + 8) = 30;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "weeklyCountStatistics";
  *(v39 + 1) = 21;
  v39[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B4A896AC(v5, a1, a2, a3);
        break;
      case 2:
        sub_1B4A89C5C(v5, a1, a2, a3);
        break;
      case 3:
        sub_1B4A8A218(v5, a1, a2, a3);
        break;
      case 4:
        sub_1B4A8A7D4(v5, a1, a2, a3);
        break;
      case 5:
        sub_1B4A8AD90(v5, a1, a2, a3);
        break;
      case 6:
        sub_1B4A8B34C(v5, a1, a2, a3);
        break;
      case 7:
        sub_1B4A8B908(v5, a1, a2, a3);
        break;
      case 8:
        sub_1B4A8BEC4(v5, a1, a2, a3);
        break;
      case 9:
        sub_1B4A8C480(v5, a1, a2, a3);
        break;
      case 10:
        sub_1B4A8CA3C(v5, a1, a2, a3);
        break;
      case 11:
        sub_1B4A8CFF8(v5, a1, a2, a3);
        break;
      case 12:
        sub_1B4A8D5B4(v5, a1, a2, a3);
        break;
      case 13:
        sub_1B4A8DB70(v5, a1, a2, a3);
        break;
      case 14:
        sub_1B4A8E12C(v5, a1, a2, a3);
        break;
      case 15:
        sub_1B4A8E6E8(v5, a1, a2, a3);
        break;
      case 16:
        sub_1B4A8ECA4(v5, a1, a2, a3);
        break;
      case 17:
        sub_1B4A8F260(v5, a1, a2, a3);
        break;
      case 18:
        sub_1B4A8F81C(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B4A896AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9390, &qword_1B4D27A80);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1B4974FBC(a1, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7CC8, &qword_1B4D20180);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v30 = v45;
    }

    else
    {
      sub_1B4975024(v25, &qword_1EB8A9390, &qword_1B4D27A80);
      v32 = v40;
      sub_1B4A6F890(v16, v40, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A9390, &qword_1B4D27A80);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A9390, &qword_1B4D27A80);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A9390, &qword_1B4D27A80);
    return sub_1B4975024(v33, &qword_1EB8A9390, &qword_1B4D27A80);
  }

  else
  {
    v36 = v41;
    sub_1B4A6F890(v33, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A9390, &qword_1B4D27A80);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4A89C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9398, &qword_1B4D27A88);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1B4974FBC(a1, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7CC8, &qword_1B4D20180);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A9398, &qword_1B4D27A88);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
    return sub_1B4975024(v33, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1B4A8A218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9398, &qword_1B4D27A88);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1B4974FBC(a1, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A7CC8, &qword_1B4D20180);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1B4A6F890(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
      v32 = v41;
      sub_1B4A6F890(v16, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      sub_1B4A6F890(v32, v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1B4A6FA60(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v34 = v44;
  sub_1B4D17D4C();
  if (v34)
  {
    return sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  sub_1B4974FBC(v25, v33, &qword_1EB8A9398, &qword_1B4D27A88);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
    return sub_1B4975024(v33, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  else
  {
    v36 = v40;
    sub_1B4A6F890(v33, v40, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    if (v29 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A9398, &qword_1B4D27A88);
    v37 = v39;
    sub_1B4975024(v39, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}