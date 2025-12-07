unint64_t sub_1B4993F74(uint64_t a1)
{
  result = sub_1B4993F9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4993F9C()
{
  result = qword_1EB8A6B90;
  if (!qword_1EB8A6B90)
  {
    type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6B90);
  }

  return result;
}

uint64_t sub_1B4994558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B49945C8()
{
  result = qword_1EB8A6BC0;
  if (!qword_1EB8A6BC0)
  {
    type metadata accessor for WorkoutMetricsFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6BC0);
  }

  return result;
}

unint64_t sub_1B4994624()
{
  result = qword_1EB8A6BC8;
  if (!qword_1EB8A6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6BC8);
  }

  return result;
}

uint64_t sub_1B4994684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4994724, 0, 0);
}

uint64_t sub_1B4994724()
{
  v1 = v0[6];
  sub_1B4992854(v0[4], v1);
  v2 = type metadata accessor for WorkoutState(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1B4994820;
  v4 = v0[6];
  v6 = v0[2];
  v5 = v0[3];

  return sub_1B4C98A0C(v6, v5, v4);
}

uint64_t sub_1B4994820(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v6 = *v1;

  sub_1B49933E8(v3);

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t type metadata accessor for PerfectWeekRingStatusFact(uint64_t a1)
{
  result = qword_1EB8A6BF8;
  if (!qword_1EB8A6BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4994A30()
{
  v1 = 0x68546B6165727473;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1B4994AC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4995660(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4994AF4(uint64_t a1)
{
  v2 = sub_1B4995190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4994B30(uint64_t a1)
{
  v2 = sub_1B4995190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PerfectWeekRingStatusFact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6BD0, &qword_1B4D1B680);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4995190();
  sub_1B4D18EFC();
  v8[15] = 0;
  sub_1B4D18CEC();
  if (!v1)
  {
    type metadata accessor for PerfectWeekRingStatusFact(0);
    v8[14] = 1;
    type metadata accessor for RingProgressType(0);
    sub_1B49951E4(&qword_1EB8A6BE0, &protocol conformance descriptor for RingProgressType);
    sub_1B4D18D0C();
    v8[13] = 2;
    sub_1B4D18CCC();
    v8[12] = 3;
    sub_1B4D18CCC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PerfectWeekRingStatusFact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for RingProgressType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6BE8, &qword_1B4D1B688);
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for PerfectWeekRingStatusFact(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v20 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1B4995190();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  v14 = v18;
  v24 = 0;
  *v12 = sub_1B4D18BEC();
  v23 = 1;
  sub_1B49951E4(&qword_1EB8A6BF0, &protocol conformance descriptor for RingProgressType);
  sub_1B4D18C0C();
  sub_1B4995228(v6, v12 + v10[5]);
  v22 = 2;
  *(v12 + v10[6]) = sub_1B4D18BCC() & 1;
  v21 = 3;
  v16 = sub_1B4D18BCC();
  (*(v14 + 8))(v9, v19);
  *(v12 + v10[7]) = v16 & 1;
  sub_1B499528C(v12, v17, type metadata accessor for PerfectWeekRingStatusFact);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return sub_1B49952F4(v12, type metadata accessor for PerfectWeekRingStatusFact);
}

uint64_t _s19FitnessIntelligence25PerfectWeekRingStatusFactV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for PerfectWeekRingStatusFact(0);
  if ((static RingProgressType.== infix(_:_:)(a1 + v4[5], a2 + v4[5]) & 1) != 0 && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    v5 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1B4995190()
{
  result = qword_1EB8A6BD8;
  if (!qword_1EB8A6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6BD8);
  }

  return result;
}

uint64_t sub_1B49951E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RingProgressType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4995228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RingProgressType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B499528C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49952F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B499537C(uint64_t a1)
{
  result = type metadata accessor for RingProgressType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PerfectWeekRingStatusFact.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PerfectWeekRingStatusFact.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B499555C()
{
  result = qword_1EB8A6C08;
  if (!qword_1EB8A6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C08);
  }

  return result;
}

unint64_t sub_1B49955B4()
{
  result = qword_1EB8A6C10;
  if (!qword_1EB8A6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C10);
  }

  return result;
}

unint64_t sub_1B499560C()
{
  result = qword_1EB8A6C18;
  if (!qword_1EB8A6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C18);
  }

  return result;
}

uint64_t sub_1B4995660(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68546B6165727473 && a2 == 0xEE006B6565577369;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F000 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F020 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D4F040 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

uint64_t LocalizedDate.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(a1 + 8);
  *&v8 = *a1;
  *(&v8 + 1) = HIDWORD(*a1);
  v9 = v8;
  *&v8 = v7;
  *(&v8 + 1) = SHIDWORD(v7);
  *a2 = v9;
  *(a2 + 16) = v8;
  *(a2 + 32) = *(a1 + 16);
  if (*(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 40) + 8))
  {

    sub_1B4D1797C();

    sub_1B4995924(a1);
  }

  else
  {
    sub_1B4995924(a1);
    v10 = sub_1B4D179BC();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  }

  v11 = type metadata accessor for LocalizedDate(0);
  return sub_1B4995980(v6, a2 + *(v11 + 36));
}

uint64_t sub_1B4995924(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4995980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LocalizedDate.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  sub_1B4995D8C(qword_1EDC3C9B0, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);
  return sub_1B4D17DAC();
}

void sub_1B4995A84(_DWORD *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - v5;
  v7 = sub_1B4D179BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  if (*a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v11 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *a1 = v11;
  v12 = a2[1];
  if (v12 < 0xFFFFFFFF80000000)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1[1] = v12;
  v13 = a2[2];
  if (v13 < 0xFFFFFFFF80000000)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v13 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  a1[2] = v13;
  v14 = a2[3];
  if (v14 < 0xFFFFFFFF80000000)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v14 > 0x7FFFFFFF)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  a1[3] = v14;
  v15 = a2[4];
  if (v15 < 0xFFFFFFFF80000000)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
    return;
  }

  a1[4] = v15;
  v16 = type metadata accessor for LocalizedDate(0);
  sub_1B4995E7C(a2 + *(v16 + 36), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4995EEC(v6);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v17 = sub_1B4D1798C();
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    v20 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 40));

    *v20 = v17;
    v20[1] = v19;
  }
}

uint64_t sub_1B4995D8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4995DD0()
{
  type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  sub_1B4995D8C(qword_1EDC3C9B0, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4995E7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4995EEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

FitnessIntelligence::VitalsDay::BaselineComparison_optional __swiftcall VitalsDay.BaselineComparison.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

FitnessIntelligence::VitalsDay __swiftcall VitalsDay.init(heartRate:bloodOxygen:respiratoryRate:wristTemperature:timeAsleep:)(FitnessIntelligence::VitalsDay::BaselineComparison heartRate, FitnessIntelligence::VitalsDay::BaselineComparison bloodOxygen, FitnessIntelligence::VitalsDay::BaselineComparison respiratoryRate, FitnessIntelligence::VitalsDay::BaselineComparison wristTemperature, FitnessIntelligence::VitalsDay::BaselineComparison timeAsleep)
{
  v6 = *bloodOxygen;
  v7 = *respiratoryRate;
  v8 = *wristTemperature;
  v9 = *timeAsleep;
  *v5 = *heartRate;
  v5[1] = v6;
  v5[2] = v7;
  v5[3] = v8;
  v5[4] = v9;
  result.heartRate = heartRate;
  return result;
}

uint64_t sub_1B499607C()
{
  v1 = *v0;
  v2 = 0x7461527472616568;
  v3 = 0x7461726970736572;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x656C7341656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79784F646F6F6C62;
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

uint64_t sub_1B4996138@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4996A90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B499616C(uint64_t a1)
{
  v2 = sub_1B4996768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49961A8(uint64_t a1)
{
  v2 = sub_1B4996768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VitalsDay.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C30, &qword_1B4D1B880);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v18 = v1[2];
  v19 = v9;
  v10 = v1[3];
  v16 = v1[4];
  v17 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4996768();
  sub_1B4D18EFC();
  v29 = v8;
  v28 = 0;
  sub_1B49967BC();
  sub_1B4D18D0C();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = v17;
  v11 = v18;
  v13 = v16;
  v27 = v19;
  v26 = 1;
  sub_1B4D18D0C();
  v25 = v11;
  v24 = 2;
  sub_1B4D18D0C();
  v23 = v12;
  v22 = 3;
  sub_1B4D18D0C();
  v21 = v13;
  v20 = 4;
  sub_1B4D18D0C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t VitalsDay.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C48, &qword_1B4D1B888);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4996768();
  sub_1B4D18EEC();
  if (!v2)
  {
    v25 = 0;
    sub_1B4996810();
    sub_1B4D18C0C();
    v9 = v26;
    v23 = 1;
    sub_1B4D18C0C();
    v16 = v9;
    v10 = v24;
    v21 = 2;
    sub_1B4D18C0C();
    v15 = v10;
    LOBYTE(v10) = v22;
    v19 = 3;
    sub_1B4D18C0C();
    v14 = v20;
    v17 = 4;
    sub_1B4D18C0C();
    (*(v6 + 8))(v8, v5);
    v12 = v18;
    v13 = v15;
    *a2 = v16;
    a2[1] = v13;
    a2[2] = v10;
    a2[3] = v14;
    a2[4] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t _s19FitnessIntelligence9VitalsDayV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint8x8_t a3, uint8x8_t a4)
{
  a3.i32[0] = *a1;
  a4.i32[0] = *a2;
  return vminv_u16(vceq_s16((vmovl_u8(a3).u64[0] & 0xFF00FF00FF00FFLL), (vmovl_u8(a4).u64[0] & 0xFF00FF00FF00FFLL))) & (*(a1 + 4) == *(a2 + 4));
}

unint64_t sub_1B4996768()
{
  result = qword_1EB8A6C38;
  if (!qword_1EB8A6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C38);
  }

  return result;
}

unint64_t sub_1B49967BC()
{
  result = qword_1EB8A6C40;
  if (!qword_1EB8A6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C40);
  }

  return result;
}

unint64_t sub_1B4996810()
{
  result = qword_1EB8A6C50;
  if (!qword_1EB8A6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C50);
  }

  return result;
}

unint64_t sub_1B4996868()
{
  result = qword_1EB8A6C58;
  if (!qword_1EB8A6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C58);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VitalsDay(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[5])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VitalsDay(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1B499698C()
{
  result = qword_1EB8A6C60;
  if (!qword_1EB8A6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C60);
  }

  return result;
}

unint64_t sub_1B49969E4()
{
  result = qword_1EB8A6C68;
  if (!qword_1EB8A6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C68);
  }

  return result;
}

unint64_t sub_1B4996A3C()
{
  result = qword_1EB8A6C70;
  if (!qword_1EB8A6C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C70);
  }

  return result;
}

uint64_t sub_1B4996A90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461527472616568 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79784F646F6F6C62 && a2 == 0xEB000000006E6567 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461726970736572 && a2 == 0xEF6574615279726FLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F060 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C7341656D6974 && a2 == 0xEA00000000007065)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

unint64_t sub_1B4996C64()
{
  result = qword_1EB8A6C78;
  if (!qword_1EB8A6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6C78);
  }

  return result;
}

uint64_t sub_1B4996CD0(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF13C(0, v4, 0);
  v5 = v19;
  v8 = *(type metadata accessor for WorkoutSplit(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v17, v9);
    if (v3)
    {
      break;
    }

    v11 = v17;
    v12 = v18;
    v19 = v5;
    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1B4BCF13C((v13 > 1), v14 + 1, 1);
      v5 = v19;
    }

    *(v5 + 16) = v14 + 1;
    v15 = v5 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_1B4996E40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF19C(0, v1, 0);
    v3 = v32;
    v4 = v2 + 64;
    v5 = sub_1B4D188DC();
    v6 = 0;
    v7 = *(v2 + 36);
    v26 = v2 + 72;
    v27 = v1;
    v28 = v7;
    v29 = v2 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v7 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v30 = v6;
      v10 = *(*(v2 + 48) + 8 * v5);
      v11 = v2;
      v12 = *(*(v2 + 56) + 8 * v5);
      v13 = v10;

      v14 = sub_1B4CC15A8(v31, v13, v12);

      v31[1] = v14;
      v15 = v31[0];
      v32 = v3;
      v17 = *(v3 + 16);
      v16 = *(v3 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B4BCF19C((v16 > 1), v17 + 1, 1);
        v3 = v32;
      }

      *(v3 + 16) = v17 + 1;
      v18 = v3 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v8 = 1 << *(v11 + 32);
      if (v5 >= v8)
      {
        goto LABEL_24;
      }

      v2 = v11;
      v4 = v29;
      v19 = *(v29 + 8 * v9);
      if ((v19 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v7 = v28;
      if (v28 != *(v2 + 36))
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v5 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v9 << 6;
        v22 = v9 + 1;
        v23 = (v26 + 8 * v9);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1B497CD6C(v5, v28, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        sub_1B497CD6C(v5, v28, 0);
      }

LABEL_4:
      v6 = v30 + 1;
      v5 = v8;
      if (v30 + 1 == v27)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_1B49970B4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1B4BCEF9C(0, v10, 0);
  v11 = v21;
  v12 = *(type metadata accessor for DistanceSampleIntervalRecord(0) - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1B4BCEF9C((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_1B498B270(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, &qword_1EB8A6CE8, &qword_1B4D44B80);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B49972E4(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v8 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + v8 + 32), (v7 + 32), v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B499740C(uint64_t result)
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

  result = sub_1B4A1D7C4(result, v11, 1, v3);
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

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

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

uint64_t sub_1B49974F8(uint64_t result)
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

  result = sub_1B4A1D8C4(result, v11, 1, v3);
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

  memcpy((v3 + 40 * v7 + 32), (v6 + 32), 40 * v2);

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

uint64_t sub_1B499766C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1B4A1DC00(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B4997760(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1B4A1DD0C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B49978F8(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v6 = a2();
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v12 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B4997ACC(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B4997C10(uint64_t result)
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

  result = sub_1B4A1E31C(result, v11, 1, v3);
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

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

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

void sub_1B4997CFC(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_1B4A1E31C(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 16 * v15 + 32), (a2 + 16 * a3), 16 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1B4997E10(uint64_t result)
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

  result = sub_1B4A1E6E4(result, v11, 1, v3);
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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

double sub_1B4997EFC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v32 = type metadata accessor for LocationCoordinate(0);
    v13 = *(v32 - 8);
    v16 = *(v7 + 16);
    v15 = v7 + 16;
    v14 = v16;
    v17 = (v15 - 8);
    v30 = (v15 + 8);
    v18 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v29 = *(v13 + 72);
    v33 = v15;
    v31 = v16;
    do
    {
      v35 = v12;
      v23 = *(v32 + 28);
      v24 = v14;
      v14(v11, a2, v6);
      sub_1B49A2254();
      v25 = sub_1B4D180EC();
      v34 = *v17;
      v34(v11, v6);
      if (v25)
      {
        v19 = v28;
        v24(v28, a2, v6);
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        sub_1B4D1744C();
        v20 = v34;
        v34(v19, v6);
        (*v30)(a2, v18 + v23, v6);
        sub_1B4D1742C();
        v22 = v21;
        v20(v11, v6);
        a3 = a3 + v22;
      }

      else
      {
        (*v30)(a2, v18 + v23, v6);
      }

      v18 += v29;
      v12 = v35 - 1;
      v14 = v31;
    }

    while (v35 != 1);
  }

  return a3;
}

uint64_t WorkoutReplayer.init(workout:initialRings:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B496F398(a1, a3);

  return sub_1B496F398(a2, a3 + 40);
}

void *WorkoutReplayer.moments(unitManager:)(void *a1)
{
  v2 = v1;
  v107 = 0;
  v4 = sub_1B4D1777C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v104 = v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v102 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v102 - v14;
  v17 = v1[3];
  v16 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v17);
  (*(v16 + 88))(v17, v16);
  v18 = v5 + 48;
  v106 = *(v5 + 48);
  if (v106(v15, 1, v4) == 1)
  {
    sub_1B4975024(v15, &qword_1EB8A6790, &qword_1B4D1BBC0);
    v19 = 0;
  }

  else
  {
    v102[0] = v12;
    v20 = v1[3];
    v21 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v20);
    v22 = *(v21 + 80);
    v23 = v21;
    v18 = v5 + 48;
    v12 = v102[0];
    v22(v20, v23);
    sub_1B4D176FC();
    v19 = v24;
    v25 = v5;
    v26 = *(v5 + 8);
    v26(v7, v4);
    v26(v15, v4);
    v5 = v25;
  }

  v27 = sub_1B498AFB8(0, &qword_1EB8A6C80, 0x1E699C9F8);
  v28 = v2[3];
  v29 = v2[4];
  v30 = __swift_project_boxed_opaque_existential_1(v2, v28);
  sub_1B49A79FC(v30, v27, v28, v29);
  v32 = *(v31 + 16);
  v33 = 32;
  v105 = v5;
  while (v32)
  {
    v34 = *(v31 + v33);
    v33 += 8;
    --v32;
    if (v34 == 35)
    {

      v35 = v2[3];
      v36 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v35);
      v37 = (*(v36 + 56))(v35, v36);
      v38 = [a1 userDistanceHKUnitForActivityType_];
      sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
      v39 = [objc_opt_self() mileUnit];
      v40 = sub_1B4D187AC();

      v41 = objc_opt_self();
      v42 = &selRef_miles;
      if ((v40 & 1) == 0)
      {
        v42 = &selRef_kilometers;
      }

      v43 = [v41 *v42];

      v44 = v2[3];
      v45 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v44);
      v46 = WorkoutRepresentable.splits(userDistanceUnit:)(v43, v44, v45);
      MEMORY[0x1EEE9AC00](v46);
      v102[-2] = v2;
      v47 = v107;
      v48 = sub_1B4996CD0(sub_1B49A2000, &v102[-4], v46);
      v107 = v47;

      goto LABEL_30;
    }
  }

  v49 = v2[3];
  v50 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v49);
  (*(v50 + 88))(v49, v50);
  if (v106(v12, 1, v4) == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A6790, &qword_1B4D1BBC0);
    v51 = 0;
    v52 = -30.0;
  }

  else
  {
    v53 = v2[3];
    v54 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v53);
    (*(v54 + 80))(v53, v54);
    sub_1B4D176FC();
    v56 = v55;
    v57 = *(v5 + 8);
    v57(v7, v4);
    v57(v12, v4);
    v52 = v56 + -30.0;
    if (v52 > 600.0)
    {
      v58 = 0;
      while (1)
      {
        v51 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_73;
        }

        ++v58;
        if (v52 <= v51 * 600.0 + 600.0)
        {
          v59 = 0;
          goto LABEL_19;
        }
      }
    }

    v51 = 0;
  }

  v59 = 1;
LABEL_19:
  v110 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF13C(0, v51 & ~(v51 >> 63), 0);
  if (v51 < 0)
  {
    goto LABEL_75;
  }

  v48 = v110;
  v103 = v7;
  v102[1] = v18;
  if (v51)
  {
    v60 = 1;
    v61 = 600.0;
    while (v52 > v61)
    {
      v110 = v48;
      v63 = *(v48 + 16);
      v62 = *(v48 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1B4BCF13C((v62 > 1), v63 + 1, 1);
        v48 = v110;
      }

      v64 = v60 * 600.0 + 600.0;
      *(v48 + 16) = v63 + 1;
      v65 = v48 + 16 * v63;
      *(v65 + 32) = v61;
      *(v65 + 40) = 2;
      ++v60;
      v61 = v64;
      if (v60 - v51 == 1)
      {
        if (v52 <= v64)
        {
          goto LABEL_29;
        }

LABEL_63:
        while (!__OFADD__(v51, 1))
        {
          v110 = v48;
          v100 = *(v48 + 16);
          v99 = *(v48 + 24);
          if (v100 >= v99 >> 1)
          {
            sub_1B4BCF13C((v99 > 1), v100 + 1, 1);
            v48 = v110;
          }

          v101 = v48 + 16 * v100;
          *(v101 + 32) = v64;
          v64 = (v51 + 1) * 600.0 + 600.0;
          *(v48 + 16) = v100 + 1;
          *(v101 + 40) = 2;
          ++v51;
          if (v52 <= v64)
          {
            goto LABEL_29;
          }
        }

        goto LABEL_71;
      }
    }

    goto LABEL_70;
  }

  if ((v59 & 1) == 0)
  {
    v64 = 600.0;
    goto LABEL_63;
  }

LABEL_29:
  v7 = v103;
LABEL_30:
  v66 = v2[3];
  v67 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v66);
  v68 = v104;
  (*(v67 + 88))(v66, v67);
  v69 = v106(v68, 1, v4);
  v70 = v105;
  if (v69 == 1)
  {
    sub_1B4975024(v68, &qword_1EB8A6790, &qword_1B4D1BBC0);
    v51 = 0;
    v71 = -30.0;
  }

  else
  {
    v72 = v2[3];
    v73 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v72);
    (*(v73 + 80))(v72, v73);
    sub_1B4D176FC();
    v75 = v74;
    v76 = *(v70 + 8);
    v76(v7, v4);
    v76(v68, v4);
    v71 = v75 + -30.0;
    if (v71 > 30.0)
    {
      v77 = 0;
      while (1)
      {
        v51 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          break;
        }

        ++v77;
        if (v71 <= v51 * 30.0 + 30.0)
        {
          v78 = 0;
          goto LABEL_39;
        }
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v51 = 0;
  }

  v78 = 1;
LABEL_39:
  v79 = MEMORY[0x1E69E7CC0];
  v110 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF13C(0, v51 & ~(v51 >> 63), 0);
  if (v51 < 0)
  {
    goto LABEL_74;
  }

  v80 = v110;
  if (v51)
  {
    v81 = 1;
    v82 = 30.0;
    do
    {
      if (v71 <= v82)
      {
        __break(1u);
        goto LABEL_69;
      }

      v110 = v80;
      v84 = *(v80 + 16);
      v83 = *(v80 + 24);
      if (v84 >= v83 >> 1)
      {
        sub_1B4BCF13C((v83 > 1), v84 + 1, 1);
        v80 = v110;
      }

      v85 = v81 * 30.0 + 30.0;
      *(v80 + 16) = v84 + 1;
      v86 = v80 + 16 * v84;
      *(v86 + 32) = v82;
      *(v86 + 40) = 3;
      ++v81;
      v82 = v85;
    }

    while (v81 - v51 != 1);
    v79 = MEMORY[0x1E69E7CC0];
    if (v71 <= v85)
    {
      goto LABEL_49;
    }

LABEL_51:
    while (!__OFADD__(v51, 1))
    {
      v110 = v80;
      v91 = *(v80 + 16);
      v90 = *(v80 + 24);
      if (v91 >= v90 >> 1)
      {
        sub_1B4BCF13C((v90 > 1), v91 + 1, 1);
        v80 = v110;
      }

      v92 = v80 + 16 * v91;
      *(v92 + 32) = v85;
      v85 = (v51 + 1) * 30.0 + 30.0;
      *(v80 + 16) = v91 + 1;
      *(v92 + 40) = 3;
      ++v51;
      if (v71 <= v85)
      {
        goto LABEL_49;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v85 = 30.0;
  if ((v78 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_49:
  v110 = v79;
  v87 = v2[3];
  v88 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v87);
  v89 = (*(v88 + 56))(v87, v88);
  LOBYTE(v87) = [v89 supportsWorkoutVoiceMotivationProgressMoments];

  if (v87)
  {
    sub_1B499740C(v48);
  }

  else
  {
  }

  v93 = v2[3];
  v94 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v93);
  v95 = (*(v94 + 56))(v93, v94);
  v96 = [v95 supportsWorkoutVoiceMotivationBreakthroughMoments];

  if (v96)
  {
    sub_1B499740C(v80);
  }

  else
  {
  }

  v109 = v110;

  v51 = v107;
  sub_1B499F8FC(&v109);
  if (!v51)
  {

    v108 = &unk_1F2CB8550;
    sub_1B499740C(v109);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C88, &qword_1B4D1BBC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B4D1A800;
    *(inited + 32) = v19;
    *(inited + 40) = 1;
    sub_1B499740C(inited);
    return v108;
  }

LABEL_76:

  __break(1u);
  return result;
}

uint64_t sub_1B4998D28@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1B4D1777C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkoutSplit(0);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 80))(v8, v9);
  sub_1B4D176FC();
  v11 = v10;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v11;
  *(a2 + 8) = 2;
  return result;
}

uint64_t WorkoutReplayer.state(for:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v240 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v256 = &v227 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v255 = &v227 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v283 = &v227 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v284 = &v227 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v282 = &v227 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v281 = &v227 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB8, &unk_1B4D1F0C0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v279 = &v227 - v18;
  v254 = sub_1B4D179EC();
  v253 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254);
  v280 = &v227 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_1B4D177CC();
  v251 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v278 = &v227 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v238 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v277 = &v227 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v270 = &v227 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v274 = &v227 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v276 = &v227 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v250 = &v227 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v268 = &v227 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v267 = &v227 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v266 = &v227 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v275 = &v227 - v37;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v38 = *(v273 - 8);
  MEMORY[0x1EEE9AC00](v273);
  v40 = &v227 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v260 = &v227 - v42;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v249 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272);
  v271 = &v227 - v43;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v247 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248);
  v269 = &v227 - v44;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v245 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v265 = &v227 - v45;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v243 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v264 = &v227 - v46;
  v47 = sub_1B4D1777C();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v263 = &v227 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v227 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v259 = &v227 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v236 = &v227 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v235 = &v227 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v262 = &v227 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v261 = &v227 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v233 = &v227 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v227 - v66;
  v68 = 0.0;
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  v69 = v2[3];
  v70 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v69);
  (*(v70 + 88))(v69, v70);
  v285 = *(v48 + 6);
  v286 = v48 + 48;
  v71 = v285(v67, 1, v47);
  v287 = v47;
  if (v71 == 1)
  {
    sub_1B4975024(v67, &qword_1EB8A6790, &qword_1B4D1BBC0);
  }

  else
  {
    v258 = v52;
    v72 = v47;
    v73 = v2[3];
    v74 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v73);
    v75 = *(v74 + 80);
    v257 = v40;
    v76 = v38;
    v77 = v259;
    v75(v73, v74);
    sub_1B4D176FC();
    v68 = v78;
    v79 = *(v48 + 1);
    v80 = v77;
    v38 = v76;
    v40 = v257;
    v79(v80, v72);
    v81 = v72;
    v52 = v258;
    v79(v67, v81);
  }

  if (v68 < a2)
  {
    a2 = v68;
  }

  v82 = v2[3];
  v83 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v82);
  v241 = (*(v83 + 104))(v82, v83);
  sub_1B499AF30(v264, a2);
  sub_1B499B278(v265, a2);
  sub_1B499B958(v269, a2);
  sub_1B499BC94(v271);
  v84 = sub_1B498AFB8(0, &qword_1EB8A6C80, 0x1E699C9F8);
  v85 = v3[3];
  v86 = v3[4];
  v87 = __swift_project_boxed_opaque_existential_1(v3, v85);
  sub_1B49A79FC(v87, v84, v85, v86);
  v232 = v88;
  v89 = objc_opt_self();
  v90 = [v89 minutes];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  v91 = [v89 seconds];
  v92 = v273;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v94 = v93;
  v237 = v38;
  v95 = *(v38 + 8);
  v230 = v38 + 8;
  v229 = v95;
  v95(v40, v92);
  v96 = a2 - v94;
  if (a2 - v94 < 0.0)
  {
    v96 = 0.0;
  }

  sub_1B499C124(v275, a2, v96);
  v97 = v3[3];
  v98 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v97);
  (*(v98 + 80))(v97, v98);
  v99 = v259;
  sub_1B4D1770C();
  v257 = v48;
  v100 = *(v48 + 1);
  v101 = v287;
  v100(v52, v287);
  v102 = v3[3];
  v103 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v102);
  v104 = (*(v103 + 216))(v102, v103);
  MEMORY[0x1EEE9AC00](v104);
  v105 = v99;
  *(&v227 - 2) = v99;
  v231 = sub_1B499E244(sub_1B49A2020, (&v227 - 4), v106);
  v100(v99, v101);
  v108 = v3[3];
  v107 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v108);
  (*(v107 + 80))(v108, v107);
  sub_1B4D1770C();
  v100(v52, v101);
  v109 = v3[3];
  v110 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v109);
  v111 = (*(v110 + 232))(v109, v110);
  MEMORY[0x1EEE9AC00](v111);
  *(&v227 - 2) = v105;
  sub_1B499E458(sub_1B49A2040, (&v227 - 4), v112, type metadata accessor for LocationCoordinate, type metadata accessor for LocationCoordinate, type metadata accessor for LocationCoordinate, sub_1B4BCF17C);
  v228 = v113;
  v227 = 0;
  v258 = v100;
  v100(v105, v101);
  sub_1B499C5FC(v276);
  sub_1B499CAF8(v277, a2);
  v114 = v3[3];
  v115 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v114);
  (*(v115 + 24))(v114, v115);
  v116 = v3[3];
  v117 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v116);
  v234 = (*(v117 + 56))(v116, v117);
  v118 = v3[3];
  v119 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v118);
  v120 = v233;
  (*(v119 + 88))(v118, v119);
  v121 = v285(v120, 1, v101);
  v242 = v48 + 8;
  if (v121 != 1)
  {
    v125 = v3[3];
    v126 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v125);
    (*(v126 + 80))(v125, v126);
    sub_1B4D176FC();
    v128 = v127;
    v129 = v105;
    v123 = v258;
    (v258)(v129, v101);
    v123(v120, v101);
    v122 = v235;
    if (a2 != v128)
    {
      goto LABEL_12;
    }

LABEL_14:
    v124 = 3;
    goto LABEL_15;
  }

  sub_1B4975024(v120, &qword_1EB8A6790, &qword_1B4D1BBC0);
  v122 = v235;
  v123 = v258;
  if (a2 == 0.0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v124 = 2;
LABEL_15:
  v233 = v124;
  v130 = v3[3];
  v131 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v130);
  (*(v131 + 64))(v130, v131);
  v235 = sub_1B499DC34();
  v132 = v3[3];
  v133 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v132);
  (*(v133 + 80))(v132, v133);
  v134 = v3[3];
  v135 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v134);
  v136 = v261;
  (*(v135 + 80))(v134, v135);
  v137 = *(v257 + 7);
  v138 = v136;
  v139 = v287;
  v137(v138, 0, 1, v287);
  v140 = v3[3];
  v141 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v140);
  (*(v141 + 88))(v140, v141);
  if (v285(v122, 1, v139) == 1)
  {
    sub_1B4975024(v122, &qword_1EB8A6790, &qword_1B4D1BBC0);
    v142 = a2 == 0.0;
  }

  else
  {
    v143 = v3[3];
    v144 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v143);
    v145 = v259;
    (*(v144 + 80))(v143, v144);
    sub_1B4D176FC();
    v147 = v146;
    v123(v145, v139);
    v123(v122, v139);
    v142 = a2 == v147;
  }

  v148 = v231;
  if (v142)
  {
    v149 = v3[3];
    v150 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v149);
    (*(v150 + 88))(v149, v150);
    v152 = v287;
  }

  else
  {
    v151 = v137;
    v152 = v287;
    v151(v262, 1, 1, v287);
  }

  v153 = type metadata accessor for WeatherCondition(0);
  (*(*(v153 - 8) + 56))(v279, 1, 1, v153);
  v154 = v243;
  v155 = v274;
  v156 = v244;
  (*(v243 + 16))(v274, v264, v244);
  (*(v154 + 56))(v155, 0, 1, v156);
  v157 = v245;
  v158 = *(v245 + 16);
  v159 = v281;
  v160 = v265;
  v161 = v246;
  v158(v281, v265, v246);
  v162 = *(v157 + 56);
  v162(v159, 0, 1, v161);
  v163 = v282;
  v158(v282, v160, v161);
  v162(v163, 0, 1, v161);
  v164 = v247;
  v165 = v284;
  v166 = v248;
  (*(v247 + 16))(v284, v269, v248);
  (*(v164 + 56))(v165, 0, 1, v166);
  v167 = v249;
  v168 = v266;
  v169 = v272;
  (*(v249 + 16))(v266, v271, v272);
  v170 = *(v167 + 56);
  v170(v168, 0, 1, v169);
  sub_1B499C124(v267, a2, 0.0);
  v170(v268, 1, 1, v169);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  (*(*(v171 - 8) + 56))(v283, 1, 1, v171);
  sub_1B4974FBC(v276, v270, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v172 = v3[3];
  v173 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v172);
  v174 = v236;
  (*(v173 + 88))(v172, v173);
  if (v285(v174, 1, v152) == 1)
  {
    sub_1B4975024(v174, &qword_1EB8A6790, &qword_1B4D1BBC0);
    v175 = a2 == 0.0;
  }

  else
  {
    v176 = v152;
    v177 = v3[3];
    v178 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v177);
    v179 = v170;
    v180 = v174;
    v181 = v259;
    (*(v178 + 80))(v177, v178);
    sub_1B4D176FC();
    v183 = v182;
    v184 = v258;
    (v258)(v181, v176);
    v185 = v180;
    v170 = v179;
    v184(v185, v176);
    v175 = a2 == v183;
  }

  v186 = v256;
  v187 = v240;
  if (v175)
  {
    v188 = v3[3];
    v189 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v188);
    v190 = (*(v189 + 224))(v188, v189);
  }

  else
  {
    v190 = sub_1B4C945C0(MEMORY[0x1E69E7CC0]);
  }

  v259 = v190;
  v191 = v273;
  v192 = sub_1B4C94F3C(MEMORY[0x1E69E7CC0]);
  v193 = v255;
  sub_1B49A22B8(v277, v255, type metadata accessor for HKActivitySummaryRepresentable);
  (*(v238 + 56))(v193, 0, 1, v239);
  sub_1B4974FBC(v275, v250, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v194 = *(v232 + 16);
  v195 = 32;
  while (v194)
  {
    v196 = *(v232 + v195);
    v195 += 8;
    --v194;
    if (v196 == 35)
    {

      v197 = 1;
      v198 = v237;
      goto LABEL_32;
    }
  }

  v198 = v237;
  (*(v237 + 16))(v186, v260, v191);
  v197 = 0;
LABEL_32:
  v199 = *(v198 + 56);
  (v199)(v186, v197, 1, v191);
  v200 = type metadata accessor for WorkoutState(0);
  v201 = v187 + v200[21];
  v170(v201, 1, 1, v272);
  v285 = (v187 + v200[22]);
  v199();
  (*(v251 + 16))(v187, v278, v252);
  *(v187 + v200[6]) = v234;
  *(v187 + v200[5]) = v233;
  (*(v253 + 16))(v187 + v200[7], v280, v254);
  *(v187 + v200[8]) = v235;
  (*(v257 + 2))(v187 + v200[9], v263, v287);
  sub_1B4974FBC(v261, v187 + v200[10], &qword_1EB8A6790, &qword_1B4D1BBC0);
  sub_1B4974FBC(v262, v187 + v200[11], &qword_1EB8A6790, &qword_1B4D1BBC0);
  *(v187 + v200[12]) = a2;
  v202 = v241;
  *(v187 + v200[13]) = v241;
  sub_1B4974FBC(v279, v187 + v200[14], &qword_1EB8A6CB8, &unk_1B4D1F0C0);
  sub_1B4974FBC(v274, v187 + v200[15], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(v281, v187 + v200[16], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(v282, v187 + v200[17], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(v284, v187 + v200[18], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4974FBC(v266, v187 + v200[19], &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v267, v187 + v200[20], &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v268, v187 + v200[23], &qword_1EB8A6CC8, &unk_1B4D464B0);
  *(v187 + v200[24]) = 0;
  sub_1B4974FBC(v283, v187 + v200[25], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B4974FBC(v270, v187 + v200[26], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v148 >> 62)
  {
    v203 = sub_1B4D18ABC();
    v286 = v201;
    if (v203)
    {
      goto LABEL_34;
    }

LABEL_47:
    v217 = v202;

    v205 = MEMORY[0x1E69E7CC0];
    goto LABEL_48;
  }

  v203 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v286 = v201;
  if (!v203)
  {
    goto LABEL_47;
  }

LABEL_34:
  v288 = MEMORY[0x1E69E7CC0];
  v204 = v202;
  sub_1B4BCF1BC(0, v203 & ~(v203 >> 63), 0);
  if (v203 < 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  v205 = v288;
  if ((v148 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v203; ++i)
    {
      v207 = MEMORY[0x1B8C7CD90](i, v148);
      v288 = v205;
      v209 = *(v205 + 16);
      v208 = *(v205 + 24);
      if (v209 >= v208 >> 1)
      {
        sub_1B4BCF1BC((v208 > 1), v209 + 1, 1);
        v205 = v288;
      }

      *(v205 + 16) = v209 + 1;
      *(v205 + 8 * v209 + 32) = v207;
    }
  }

  else
  {
    v210 = 32;
    do
    {
      v211 = *(v148 + v210);
      v288 = v205;
      v212 = *(v205 + 16);
      v213 = *(v205 + 24);
      v214 = v211;
      if (v212 >= v213 >> 1)
      {
        v215 = v213 > 1;
        v216 = v214;
        sub_1B4BCF1BC(v215, v212 + 1, 1);
        v214 = v216;
        v205 = v288;
      }

      *(v205 + 16) = v212 + 1;
      *(v205 + 8 * v212 + 32) = v214;
      v210 += 8;
      --v203;
    }

    while (v203);
  }

  v202 = v241;
LABEL_48:
  *(v187 + v200[27]) = v205;
  sub_1B4BAF044(v259);
  v219 = v218;

  *(v187 + v200[28]) = v219;
  v220 = v227;
  sub_1B4996E40(v192);
  v222 = v221;

  if (*(v222 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68F0, &qword_1B4D1BC20);
    v223 = sub_1B4D18AEC();
  }

  else
  {
    v223 = MEMORY[0x1E69E7CC8];
  }

  v288 = v223;

  sub_1B499F570(v224, 1, &v288);
  if (!v220)
  {

    *(v187 + v200[29]) = v288;
    sub_1B4975024(v270, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B4975024(v283, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    sub_1B4975024(v268, &qword_1EB8A6CC8, &unk_1B4D464B0);
    sub_1B4975024(v267, &qword_1EB8A6CC8, &unk_1B4D464B0);
    sub_1B4975024(v266, &qword_1EB8A6CC8, &unk_1B4D464B0);
    sub_1B4975024(v284, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B4975024(v282, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    sub_1B4975024(v281, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    sub_1B4975024(v274, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B4975024(v279, &qword_1EB8A6CB8, &unk_1B4D1F0C0);
    sub_1B4975024(v262, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4975024(v261, &qword_1EB8A6790, &qword_1B4D1BBC0);
    (v258)(v263, v287);
    (*(v253 + 8))(v280, v254);
    (*(v251 + 8))(v278, v252);
    sub_1B49A2320(v277, type metadata accessor for HKActivitySummaryRepresentable);
    sub_1B4975024(v276, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B4975024(v275, &qword_1EB8A6CC8, &unk_1B4D464B0);
    v229(v260, v273);
    (*(v249 + 8))(v271, v272);
    (*(v247 + 8))(v269, v248);
    (*(v245 + 8))(v265, v246);
    (*(v243 + 8))(v264, v244);
    *(v187 + v200[30]) = v228;
    v225 = v187 + v200[31];
    *v225 = xmmword_1B4D1A640;
    *(v225 + 16) = 0u;
    *(v225 + 32) = 0u;
    *(v225 + 48) = 0u;
    *(v225 + 64) = 0u;
    *(v225 + 80) = 0;
    sub_1B498B270(v255, v187 + v200[32], &qword_1EB8A6C98, &unk_1B4D2F3F0);
    *(v187 + v200[33]) = 0;
    sub_1B49A205C(v250, v286, &qword_1EB8A6CC8, &unk_1B4D464B0);
    return sub_1B49A205C(v256, v285, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  }

LABEL_54:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B499AF30@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v6 = WorkoutRepresentable.distanceQuantityType()();
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  v8 = v2[3];
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v8);
  v10 = (*(v9 + 264))(v7, v8, v9);
  v11 = v10;
  if (v10 >> 62)
  {
    goto LABEL_22;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v12)
  {
LABEL_4:

LABEL_5:
    v11 = MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v13 = sub_1B49E6974(v11);

    if (!v13)
    {
      break;
    }

    v26[4] = a1;
    MEMORY[0x1EEE9AC00](v14);
    v26[2] = v3;
    *&v26[3] = a2;
    v15 = sub_1B499E244(sub_1B49A24A8, v26, v13);
    v11 = v15;
    if (v15 >> 62)
    {
      v3 = sub_1B4D18ABC();
      if (!v3)
      {
LABEL_25:

        v25 = [objc_opt_self() miles];
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        return sub_1B4D1741C();
      }
    }

    else
    {
      v3 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_25;
      }
    }

    v7 = 0;
    a2 = 0.0;
    a1 = &property descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B8C7CD90](v7, v11);
      }

      else
      {
        if (v7 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v16 = *(v11 + 8 * v7 + 32);
      }

      v17 = v16;
      v18 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v19 = [v16 quantity];
      v20 = [objc_opt_self() mileUnit];
      [v19 doubleValueForUnit_];
      v22 = v21;

      a2 = a2 + v22;
      ++v7;
      if (v18 == v3)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v24 = sub_1B4D18ABC();

    if (!v24)
    {
      goto LABEL_4;
    }
  }

  [objc_opt_self() miles];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);

  return sub_1B4D1741C();
}

void sub_1B499B278(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v56 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = sub_1B499EE0C();
  if (!v15)
  {
    goto LABEL_5;
  }

  v16 = v15;
  v18 = v2[3];
  v17 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v18);
  v19 = (*(v17 + 264))(v16, v18, v17);
  v20 = v19;
  if (!(v19 >> 62))
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v21)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v42 = sub_1B4D18ABC();

  if (!v42)
  {
LABEL_4:

LABEL_5:
    v20 = MEMORY[0x1E69E7CC0];
  }

LABEL_6:
  v22 = sub_1B49E6974(v20);

  if (v22)
  {
    if (v22 >> 62)
    {
      v23 = sub_1B4D18ABC();
      if (v23)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
LABEL_9:
        MEMORY[0x1EEE9AC00](v23);
        *(&v53 - 2) = v3;
        *(&v53 - 1) = a2;
        v24 = 0;
        sub_1B499E244(sub_1B49A2484, (&v53 - 4), v22);

        v57 = sub_1B49EE87C(v26, v25);
        sub_1B499FA54(&v57);

        v27 = v57;
        if ((v57 & 0x8000000000000000) != 0 || (v57 & 0x4000000000000000) != 0)
        {
          v28 = sub_1B4D18ABC();
          if (v28)
          {
LABEL_12:
            v29 = __OFSUB__(v28, 1);
            v30 = v28 - 1;
            if (v29)
            {
              __break(1u);
            }

            else if ((v27 & 0xC000000000000001) == 0)
            {
              if ((v30 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v30 < *(v27 + 16))
              {
                v31 = *(v27 + 8 * v30 + 32);
                goto LABEL_17;
              }

              __break(1u);
              goto LABEL_45;
            }

            v31 = MEMORY[0x1B8C7CD90](v30, v27);
LABEL_17:
            v24 = v31;

            v32 = [v24 quantity];
            v33 = objc_opt_self();
            v34 = [v33 meterUnit];
            v35 = [v33 secondUnit];
            v36 = [v34 unitDividedByUnit_];

            [v32 doubleValueForUnit_];
            v38 = v37;

            if (v38 > 0.0)
            {
              if (qword_1EDC36E80 == -1)
              {
LABEL_19:
                v39 = qword_1EDC36E88;
                type metadata accessor for UnitPace();
                v40 = v39;
                sub_1B4D1741C();
                if (qword_1EB8A6478 != -1)
                {
                  swift_once();
                }

                v41 = v55;
                sub_1B4D1745C();

                (*(v54 + 8))(v14, v41);
                return;
              }

LABEL_45:
              swift_once();
              goto LABEL_19;
            }

            goto LABEL_38;
          }
        }

        else
        {
          v28 = *(v57 + 16);
          if (v28)
          {
            goto LABEL_12;
          }
        }

        v24 = 0;
LABEL_38:
        if (qword_1EB8A6478 != -1)
        {
          swift_once();
        }

        v51 = qword_1EB8AC490;
        type metadata accessor for UnitPace();
        v52 = v51;
        sub_1B4D1741C();

        return;
      }
    }
  }

  sub_1B499AF30(v8, a2);
  v43 = [objc_opt_self() meters];
  sub_1B4D1745C();

  v44 = *(v6 + 8);
  v44(v8, v5);
  sub_1B4D1742C();
  if (v45 <= 0.0)
  {
    if (qword_1EB8A6478 != -1)
    {
      swift_once();
    }

    v49 = qword_1EB8AC490;
    type metadata accessor for UnitPace();
    v50 = v49;
    sub_1B4D1741C();
  }

  else
  {
    sub_1B4D1742C();
    if (qword_1EDC36E80 != -1)
    {
      swift_once();
    }

    v46 = qword_1EDC36E88;
    type metadata accessor for UnitPace();
    v47 = v46;
    sub_1B4D1741C();
    if (qword_1EB8A6478 != -1)
    {
      swift_once();
    }

    v48 = v55;
    sub_1B4D1745C();
    (*(v54 + 8))(v14, v48);
  }

  v44(v11, v5);
}

uint64_t sub_1B499B958@<X0>(unint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  sub_1B498AFB8(0, &qword_1EDC36DE8, 0x1E696C370);
  v8 = MEMORY[0x1B8C7CB40](*MEMORY[0x1E696BC38]);
  v9 = (*(v7 + 264))(v8, v6, v7);

  v10 = sub_1B49E6974(v9);

  if (v10)
  {
    MEMORY[0x1EEE9AC00](v11);
    v29[2] = v3;
    *&v29[3] = a2;
    v12 = sub_1B499E244(sub_1B49A24A8, v29, v10);
    v13 = v12;
    if (v12 >> 62)
    {
      goto LABEL_19;
    }

    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = a1; v14; i = a1)
    {
      v15 = 0;
      a1 = v13 & 0xC000000000000001;
      v16 = 0.0;
      while (1)
      {
        if (a1)
        {
          v17 = MEMORY[0x1B8C7CD90](v15, v13);
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v17 = *(v13 + 8 * v15 + 32);
        }

        v18 = v17;
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v20 = [v17 quantity];
        v21 = [objc_opt_self() largeCalorieUnit];
        [v20 doubleValueForUnit_];
        v23 = v22;

        v16 = v16 + v23;
        ++v15;
        if (v19 == v14)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v14 = sub_1B4D18ABC();
    }

LABEL_20:

    if (qword_1EDC36DF0 != -1)
    {
      swift_once();
    }

    v27 = qword_1EDC36DF8;
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    v28 = v27;
    return sub_1B4D1741C();
  }

  else
  {
    if (qword_1EDC36DF0 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDC36DF8;
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    v25 = v24;

    return sub_1B4D1741C();
  }
}

uint64_t sub_1B499BC94@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v32[1] = a1;
  v4 = sub_1B4D1777C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v32 - v9;
  v11 = v2[3];
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v11);
  sub_1B498AFB8(0, &qword_1EDC36DE8, 0x1E696C370);
  v13 = MEMORY[0x1B8C7CB40](*MEMORY[0x1E696BD30]);
  v14 = (*(v12 + 264))(v13, v11, v12);

  v15 = sub_1B49E6974(v14);

  if (v15)
  {
    v16 = v3[3];
    v17 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v16);
    (*(v17 + 80))(v16, v17);
    sub_1B4D1770C();
    v18 = *(v5 + 8);
    v19 = v18(v7, v4);
    MEMORY[0x1EEE9AC00](v19);
    v32[-2] = v10;

    v33 = sub_1B49EE87C(v21, v20);
    sub_1B499FAD0(sub_1B49A2464, &v32[-4]);

    v22 = v33;
    if ((v33 & 0x8000000000000000) != 0 || (v33 & 0x4000000000000000) != 0)
    {
      if (sub_1B4D18ABC())
      {
        goto LABEL_5;
      }
    }

    else if (*(v33 + 16))
    {
LABEL_5:
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1B8C7CD90](0, v22);
LABEL_8:
        v24 = v23;

        v25 = [v24 quantity];

        v26 = [objc_opt_self() _countPerMinuteUnit];
        [v25 doubleValueForUnit_];

        if (qword_1EDC36DD8 == -1)
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      }

      if (*(v22 + 16))
      {
        v23 = *(v22 + 32);
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_20;
    }

    if (qword_1EDC36DD8 == -1)
    {
LABEL_16:
      v30 = qword_1EDC36DE0;
      sub_1B498AFB8(0, &qword_1EDC378B8, 0x1E696B038);
      v31 = v30;
      sub_1B4D1741C();
      return v18(v10, v4);
    }

LABEL_21:
    swift_once();
    goto LABEL_16;
  }

  if (qword_1EDC36DD8 != -1)
  {
LABEL_20:
    swift_once();
  }

  v27 = qword_1EDC36DE0;
  sub_1B498AFB8(0, &qword_1EDC378B8, 0x1E696B038);
  v28 = v27;

  return sub_1B4D1741C();
}

uint64_t sub_1B499C124@<X0>(uint64_t a1@<X8>, double a2@<D1>, double a3@<D0>)
{
  v4 = v3;
  v8 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v8);
  sub_1B498AFB8(0, &qword_1EDC36DE8, 0x1E696C370);
  v10 = MEMORY[0x1B8C7CB40](*MEMORY[0x1E696BD30]);
  v11 = (*(v9 + 264))(v10, v8, v9);

  v12 = sub_1B49E6974(v11);

  if (!v12)
  {
    goto LABEL_25;
  }

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 >= 1)
    {
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  v13 = sub_1B4D18ABC();
  if (v13 < 1)
  {
LABEL_24:

LABEL_25:
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
    v37 = *(*(v36 - 8) + 56);

    return v37(a1, 1, 1, v36);
  }

LABEL_4:
  MEMORY[0x1EEE9AC00](v13);
  v43[2] = v4;
  *&v43[3] = a3;
  *&v43[4] = a2;
  v14 = sub_1B499E244(sub_1B49A2440, v43, v12);
  v15 = v14;
  if (v14 >> 62)
  {
    v16 = sub_1B4D18ABC();
    if (v16)
    {
LABEL_6:
      v44 = a1;
      v45 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF15C(0, v16 & ~(v16 >> 63), 0);
      if (v16 < 0)
      {
        __break(1u);
        goto LABEL_36;
      }

      v17 = v45;
      v18 = objc_opt_self();
      for (i = 0; i != v16; ++i)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1B8C7CD90](i, v15);
        }

        else
        {
          v20 = *(v15 + 8 * i + 32);
        }

        v21 = v20;
        v22 = [v20 quantity];
        v23 = [v18 _countPerMinuteUnit];
        [v22 doubleValueForUnit_];
        v25 = v24;

        v45 = v17;
        v27 = *(v17 + 16);
        v26 = *(v17 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1B4BCF15C((v26 > 1), v27 + 1, 1);
          v17 = v45;
        }

        *(v17 + 16) = v27 + 1;
        *(v17 + 8 * v27 + 32) = v25;
      }

      a1 = v44;
      v28 = *(v17 + 16);
      if (v28)
      {
        goto LABEL_15;
      }

LABEL_30:
      v30 = 0.0;
      goto LABEL_31;
    }
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_6;
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
  v28 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v28)
  {
    goto LABEL_30;
  }

LABEL_15:
  if (v28 > 3)
  {
    v29 = v28 & 0x7FFFFFFFFFFFFFFCLL;
    v31 = (v17 + 48);
    v30 = 0.0;
    v32 = v28 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v30 = v30 + *(v31 - 2) + *(v31 - 1) + *v31 + v31[1];
      v31 += 4;
      v32 -= 4;
    }

    while (v32);
    if (v28 == v29)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v29 = 0;
    v30 = 0.0;
  }

  v33 = v28 - v29;
  v34 = (v17 + 8 * v29 + 32);
  do
  {
    v35 = *v34++;
    v30 = v30 + v35;
    --v33;
  }

  while (v33);
LABEL_31:

  if (v30 / v28 > 0.0)
  {
    if (qword_1EDC36DD8 == -1)
    {
LABEL_33:
      v39 = qword_1EDC36DE0;
      sub_1B498AFB8(0, &qword_1EDC378B8, 0x1E696B038);
      v40 = v39;
      sub_1B4D1741C();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
      return (*(*(v41 - 8) + 56))(a1, 0, 1, v41);
    }

LABEL_36:
    swift_once();
    goto LABEL_33;
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  return (*(*(v42 - 8) + 56))(a1, 1, 1, v42);
}

uint64_t sub_1B499C5FC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v32 - v7;
  v8 = sub_1B4D1777C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v16 = v2[3];
  v15 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v16);
  (*(v15 + 80))(v16, v15);
  sub_1B4D1770C();
  v17 = *(v9 + 8);
  v17(v11, v8);
  v18 = v2[3];
  v19 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v18);
  v20 = (*(v19 + 232))(v18, v19);
  v37 = v14;
  sub_1B499E458(sub_1B49A24C8, v36, v20, type metadata accessor for LocationCoordinate, type metadata accessor for LocationCoordinate, type metadata accessor for LocationCoordinate, sub_1B4BCF17C);
  v22 = v21;
  v17(v14, v8);
  if (*(v22 + 16))
  {
    v23 = type metadata accessor for LocationCoordinate(0);
    v24 = v35;
    (*(v6 + 16))(v35, v22 + *(v23 + 28) + ((*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80)), v5);
    v25 = *(v6 + 56);
    v25(v24, 0, 1, v5);
    v26 = v33;
    (*(v6 + 32))(v33, v24, v5);
  }

  else
  {
    v25 = *(v6 + 56);
    v27 = v35;
    v25(v35, 1, 1, v5);
    v28 = [objc_opt_self() byte_1E7C111E9];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v26 = v33;
    sub_1B4D1741C();
    if ((*(v6 + 48))(v27, 1, v5) != 1)
    {
      sub_1B4975024(v35, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    }
  }

  sub_1B4997EFC(v22, v26, 0.0);

  v29 = [objc_opt_self() meters];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v30 = v34;
  sub_1B4D1741C();
  v25(v30, 0, 1, v5);
  return (*(v6 + 8))(v26, v5);
}

uint64_t sub_1B499CAF8@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v154 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v159 = &v148 - v6;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v149 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v148 = &v148 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v168 = &v148 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v158 = &v148 - v14;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v164 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v151 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v162 = &v148 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v167 = &v148 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v150 = &v148 - v21;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v163 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v157 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v166 = &v148 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v169 = &v148 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v171 = &v148 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v148 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v148 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v148 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v170 = &v148 - v40;
  v41 = v2[8];
  v42 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v41);
  (*(v42 + 32))(v41, v42);
  v43 = *(v33 + 48);
  v44 = v43(v31, 1, v32);
  v155 = v7;
  v160 = v33;
  if (v44 == 1)
  {
    v45 = v32;
    if (qword_1EDC36DF0 != -1)
    {
      swift_once();
    }

    v46 = qword_1EDC36DF8;
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    v47 = v46;
    sub_1B4D1741C();
    v48 = v43(v31, 1, v45);
    v49 = v45;
    v33 = v160;
    if (v48 != 1)
    {
      sub_1B4975024(v31, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    }
  }

  else
  {
    (*(v33 + 32))(v38, v31, v32);
    v49 = v32;
  }

  sub_1B499B958(v35, a2);
  sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
  sub_1B4D1743C();
  v50 = *(v33 + 8);
  v50(v35, v49);
  v153 = v33 + 8;
  v152 = v50;
  v50(v38, v49);
  v51 = objc_opt_self();
  v52 = [v51 seconds];
  v53 = sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  v54 = [v51 minutes];
  v55 = v169;
  v56 = v173;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v58 = v57;
  v59 = v57;
  v60 = v163;
  v61 = (v163 + 8);
  v165 = *(v163 + 8);
  v165(v55, v56);
  if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v58 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_21;
  }

  v161 = v49;
  v62 = v3[8];
  v63 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v62);
  v64 = *(v63 + 48);
  v65 = v150;
  v66 = v63;
  v67 = v173;
  v64(v62, v66);
  v68 = *(v60 + 48);
  if (v68(v65, 1, v67) == 1)
  {
    v69 = [v51 minutes];
    v70 = v157;
    sub_1B4D1741C();
    v71 = v68(v65, 1, v67);
    v72 = v70;
    v60 = v155;
    if (v71 != 1)
    {
      sub_1B4975024(v65, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    }
  }

  else
  {
    v72 = v157;
    (*(v60 + 32))(v157, v65, v67);
    v60 = v155;
  }

  v73 = [v51 minutes];
  v74 = v169;
  sub_1B4D1741C();
  sub_1B4D1743C();
  v75 = v74;
  v76 = v165;
  v165(v75, v67);
  v76(v72, v67);
  v77 = v3[8];
  v78 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v77);
  v79 = v158;
  (*(v78 + 56))(v77, v78);
  v80 = v79;
  v49 = v164;
  v81 = *(v164 + 48);
  v56 = v172;
  v82 = v81(v80, 1, v172);
  v157 = v61;
  if (v82 == 1)
  {
    v83 = v60;
    if (qword_1EDC36E70 != -1)
    {
      swift_once();
    }

    v84 = qword_1EDC36E78;
    type metadata accessor for UnitCount();
    v85 = v84;
    sub_1B4D1741C();
    v86 = v158;
    v87 = v172;
    v88 = v81(v158, 1, v172);
    v60 = v83;
    v56 = v87;
    v49 = v164;
    v53 = v159;
    if (v88 != 1)
    {
      sub_1B4975024(v86, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    }
  }

  else
  {
    (*(v49 + 32))(v162, v80, v56);
    v53 = v159;
  }

  v89 = [v51 hours];
  v90 = v169;
  v91 = v173;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v165(v90, v91);
  if (qword_1EDC36E70 != -1)
  {
    goto LABEL_29;
  }

LABEL_21:
  v92 = qword_1EDC36E78;
  type metadata accessor for UnitCount();
  v93 = v92;
  v94 = v151;
  sub_1B4D1741C();
  v95 = v162;
  sub_1B4D1743C();
  v96 = *(v49 + 8);
  v96(v94, v56);
  v169 = (v49 + 8);
  v162 = v96;
  v96(v95, v56);
  v97 = v3[8];
  v98 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v97);
  (*(v98 + 112))(v97, v98);
  v99 = *(v60 + 48);
  v100 = v156;
  if (v99(v53, 1, v156) == 1)
  {
    v101 = [objc_opt_self() miles];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v102 = v148;
    sub_1B4D1741C();
    v103 = v149;
    sub_1B499AF30(v149, a2);
    sub_1B4D1743C();
    v104 = *(v60 + 8);
    v104(v103, v100);
    v105 = v159;
    v104(v102, v100);
    v106 = v60;
    if (v99(v105, 1, v100) != 1)
    {
      sub_1B4975024(v105, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    }
  }

  else
  {
    (*(v60 + 32))(v168, v53, v100);
    v106 = v60;
  }

  v108 = v3[8];
  v107 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v108);
  (*(*(v107 + 8) + 8))(&v174, v108);
  v159 = v174;
  v109 = v3[8];
  v110 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v109);
  v111 = *(v110 + 64);
  v112 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v113 = v154;
  v111(v109, v110);
  v114 = v112[8];
  v115 = v160;
  v116 = v161;
  (*(v160 + 16))(v113 + v114, v170, v161);
  (*(v115 + 56))(v113 + v114, 0, 1, v116);
  v117 = v3[8];
  v118 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v117);
  (*(v118 + 72))(v117, v118);
  v119 = v3[8];
  v120 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v119);
  (*(v120 + 40))(v119, v120);
  v121 = v3[8];
  v122 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v121);
  (*(v122 + 80))(v121, v122);
  v123 = v112[12];
  v124 = v163;
  v125 = v173;
  (*(v163 + 16))(v113 + v123, v166, v173);
  (*(v124 + 56))(v113 + v123, 0, 1, v125);
  v126 = v3[8];
  v127 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v126);
  (*(v127 + 88))(v126, v127);
  v128 = v112[14];
  v129 = v164;
  v130 = v172;
  (*(v164 + 16))(v113 + v128, v167, v172);
  (*(v129 + 56))(v113 + v128, 0, 1, v130);
  v131 = v3[8];
  v132 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v131);
  (*(v132 + 96))(v131, v132);
  v133 = v3[8];
  v134 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v133);
  (*(v134 + 104))(v133, v134);
  v135 = v112[17];
  (*(v106 + 16))(v113 + v135, v168, v100);
  (*(v106 + 56))(v113 + v135, 0, 1, v100);
  v136 = v3[8];
  v137 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v136);
  v138 = (*(v137 + 120))(v136, v137);
  LOBYTE(v137) = v139;
  v140 = v100;
  v141 = v3[8];
  v142 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v141);
  LOBYTE(v135) = (*(v142 + 128))(v141, v142);
  (*(v106 + 8))(v168, v140);
  (v162)(v167, v172);
  v143 = v165;
  v144 = v173;
  v165(v166, v173);
  v143(v171, v144);
  result = v152(v170, v161);
  v146 = v112[19];
  v147 = v113 + v112[18];
  *(v113 + 8) = 0;
  *(v113 + 16) = 0;
  *v113 = v159;
  *(v113 + 24) = 1;
  *v147 = v138;
  *(v147 + 8) = v137 & 1;
  *(v113 + v146) = v135;
  return result;
}

uint64_t sub_1B499DC34()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v4 = (*(v3 + 56))(v2, v3);
  v5 = [v4 effectiveTypeIdentifier];

  v6 = v5 - 16;
  if ((v5 - 16) <= 0x37)
  {
    if (((1 << v6) & 0x800410000011) != 0)
    {
      if (qword_1EB8A5FE0 == -1)
      {
      }

LABEL_32:
      swift_once();
    }

    if (((1 << v6) & 0xC0001000000100) != 0)
    {
      if (qword_1EB8A5FE0 == -1)
      {
LABEL_5:
        v7 = qword_1EB8F3A90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D10, &qword_1B4D1BC98);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B4D1A800;
        v9 = qword_1EB8A5FD8;

        if (v9 != -1)
        {
          swift_once();
        }

        v10 = word_1EB8F3A70;
        v11 = HIBYTE(word_1EB8F3A70);
        v12 = byte_1EB8F3A72;
        v13 = byte_1EB8F3A88;
        *(inited + 32) = qword_1EB8F3A68;
        *(inited + 40) = v10;
        *(inited + 41) = v11;
        *(inited + 42) = v12;
        *(inited + 48) = xmmword_1EB8F3A78;
        *(inited + 64) = v13;
LABEL_8:
        sub_1B49974F8(inited);
        return v7;
      }

LABEL_33:
      swift_once();
      goto LABEL_5;
    }

    if (v5 == 37)
    {
      v15 = v1[3];
      v16 = v1[4];
      __swift_project_boxed_opaque_existential_1(v1, v15);
      v17 = (*(v16 + 56))(v15, v16);
      v18 = [v17 isIndoor];

      if (v18)
      {
        if (qword_1EB8A5FE0 == -1)
        {
          goto LABEL_5;
        }

        goto LABEL_33;
      }

LABEL_24:
      if (qword_1EB8A5FE8 == -1)
      {
      }

      goto LABEL_32;
    }
  }

  if (v5 == 13)
  {
    v19 = v1[3];
    v20 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v19);
    v21 = (*(v20 + 56))(v19, v20);
    v22 = [v21 isIndoor];

    if (v22)
    {
      if (qword_1EB8A5FE0 != -1)
      {
        swift_once();
      }

      v7 = qword_1EB8F3A90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D10, &qword_1B4D1BC98);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B4D1AA70;
      v23 = qword_1EB8A5FB8;

      if (v23 != -1)
      {
        swift_once();
      }

      v24 = word_1EB8F39D0;
      v25 = HIBYTE(word_1EB8F39D0);
      v26 = byte_1EB8F39D2;
      v27 = byte_1EB8F39E8;
      *(inited + 32) = qword_1EB8F39C8;
      *(inited + 40) = v24;
      *(inited + 41) = v25;
      *(inited + 42) = v26;
      *(inited + 48) = xmmword_1EB8F39D8;
      *(inited + 64) = v27;
      if (qword_1EB8A5FC0 != -1)
      {
        swift_once();
      }

      v28 = word_1EB8F39F8;
      v29 = HIBYTE(word_1EB8F39F8);
      v30 = byte_1EB8F39FA;
      v31 = byte_1EB8F3A10;
      *(inited + 72) = qword_1EB8F39F0;
      *(inited + 80) = v28;
      *(inited + 81) = v29;
      *(inited + 82) = v30;
      *(inited + 88) = xmmword_1EB8F3A00;
      *(inited + 104) = v31;
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v32 = sub_1B4D17F6C();
  __swift_project_value_buffer(v32, qword_1EDC3CED0);
  sub_1B49A218C(v1, v45);
  v33 = sub_1B4D17F5C();
  v34 = sub_1B4D1872C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v44 = v36;
    *v35 = 136315138;
    v37 = v46;
    v38 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v39 = (*(v38 + 56))(v37, v38);
    [v39 effectiveTypeIdentifier];

    type metadata accessor for HKWorkoutActivityType(0);
    v40 = sub_1B4D181AC();
    v42 = v41;
    sub_1B49A21C4(v45);
    v43 = sub_1B49558AC(v40, v42, &v44);

    *(v35 + 4) = v43;
    _os_log_impl(&dword_1B4953000, v33, v34, "Unexpecteded workout type found %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1B8C7DDA0](v36, -1, -1);
    MEMORY[0x1B8C7DDA0](v35, -1, -1);
  }

  else
  {

    sub_1B49A21C4(v45);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B499E244(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B4D18ABC())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x1B8C7CD90](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_1B4D189EC();
        sub_1B4D18A2C();
        v4 = v15;
        sub_1B4D18A3C();
        sub_1B4D189FC();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v12;
}

void sub_1B499E458(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(BOOL, uint64_t, uint64_t))
{
  v24 = a7;
  v29 = a6;
  v31 = a1;
  v32 = a2;
  v10 = a4(0);
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v27 = *(a3 + 16);
  if (v27)
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v25 = a5;
    v26 = a3;
    while (v15 < *(a3 + 16))
    {
      v17 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v18 = *(v30 + 72);
      sub_1B49A22B8(a3 + v17 + v18 * v15, v14, a5);
      v19 = v31(v14);
      if (v7)
      {
        sub_1B49A2320(v14, a5);

        goto LABEL_15;
      }

      if (v19)
      {
        sub_1B49A2380(v14, v28, v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24(0, *(v16 + 16) + 1, 1);
          v16 = v33;
        }

        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v22 >= v21 >> 1)
        {
          v24(v21 > 1, v22 + 1, 1);
          v16 = v33;
        }

        *(v16 + 16) = v22 + 1;
        sub_1B49A2380(v28, v16 + v17 + v22 * v18, v29);
        a5 = v25;
        a3 = v26;
      }

      else
      {
        sub_1B49A2320(v14, a5);
      }

      if (v27 == ++v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_1B499E6FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = result;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v14 = *(a3 + 16);
    v15 = result;
    while (v8 < *(a3 + 16))
    {
      v16 = *(a3 + v8 + 32);
      result = v7(&v16);
      if (v4)
      {

        goto LABEL_15;
      }

      if (result)
      {
        v12 = v16;
        result = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((result & 1) == 0)
        {
          result = a4(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v11 = *(v9 + 16);
        v10 = *(v9 + 24);
        if (v11 >= v10 >> 1)
        {
          result = a4(v10 > 1, v11 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v11 + 1;
        *(v9 + v11 + 32) = v12;
        v6 = v14;
        v7 = v15;
      }

      if (v6 == ++v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

BOOL sub_1B499E86C(id *a1, void **a2, uint64_t a3)
{
  v5 = sub_1B4D1777C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = [*a1 startDate];
  sub_1B4D1775C();

  sub_1B4D176FC();
  v13 = v12;
  v14 = *(v6 + 8);
  v14(v9, v5);
  v15 = fabs(v13);
  v16 = [v10 startDate];
  sub_1B4D1775C();

  sub_1B4D176FC();
  v18 = v17;
  v14(v9, v5);
  return v15 < fabs(v18);
}

BOOL sub_1B499E9DC(id *a1, void *a2, double a3, double a4)
{
  v8 = sub_1B4D1777C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *a1;
  v17 = [*a1 startDate];
  sub_1B4D1775C();

  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  (*(v19 + 80))(v18, v19);
  sub_1B4D176FC();
  v21 = v20;
  v22 = *(v9 + 8);
  v22(v11, v8);
  v22(v15, v8);
  if (v21 < a3)
  {
    return 0;
  }

  v24 = [v16 endDate];
  sub_1B4D1775C();

  v25 = a2[3];
  v26 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  (*(v26 + 80))(v25, v26);
  sub_1B4D176FC();
  v28 = v27;
  v22(v11, v8);
  v22(v15, v8);
  return v28 <= a4;
}

uint64_t sub_1B499EC28(id *a1, void *a2, double a3)
{
  v5 = sub_1B4D1777C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  v16 = [*a1 startDate];
  sub_1B4D1775C();

  v17 = a2[3];
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v17);
  (*(v18 + 80))(v17, v18);
  sub_1B4D1770C();
  v19 = *(v6 + 8);
  v19(v8, v5);
  sub_1B49A23E8();
  LOBYTE(a2) = sub_1B4D1811C();
  v19(v11, v5);
  v19(v15, v5);
  return a2 & 1;
}

uint64_t sub_1B499EE0C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 56))(v1, v2);
  v4 = [v3 effectiveTypeIdentifier];

  result = 0;
  if (v4 > 36)
  {
    if (v4 == 37)
    {
      v6 = MEMORY[0x1E696BD98];
    }

    else
    {
      if (v4 != 52)
      {
        return result;
      }

      v6 = MEMORY[0x1E696BE10];
    }
  }

  else if (v4 == 13)
  {
    v6 = MEMORY[0x1E696BCB8];
  }

  else
  {
    if (v4 != 35)
    {
      return result;
    }

    v6 = MEMORY[0x1E696BD80];
  }

  sub_1B498AFB8(0, &qword_1EDC36DE8, 0x1E696C370);
  return MEMORY[0x1B8C7CB40](*v6);
}

uint64_t sub_1B499EEF8(id *a1, uint64_t a2)
{
  v3 = sub_1B4D1777C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4D174EC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*a1 dateInterval];
  sub_1B4D174AC();

  sub_1B4D174BC();
  (*(v8 + 8))(v11, v7);
  sub_1B49A23E8();
  LOBYTE(v12) = sub_1B4D1811C();
  (*(v4 + 8))(v6, v3);
  return v12 & 1;
}

double sub_1B499F0C0()
{
  qword_1EB8F39A0 = 0;
  word_1EB8F39A8 = 256;
  byte_1EB8F39AA = 2;
  result = 2.9;
  xmmword_1EB8F39B0 = xmmword_1B4D1BB70;
  byte_1EB8F39C0 = 0;
  return result;
}

double sub_1B499F0F0()
{
  qword_1EB8F39C8 = 1;
  word_1EB8F39D0 = 256;
  byte_1EB8F39D2 = 0;
  result = 150.0;
  xmmword_1EB8F39D8 = xmmword_1B4D1BB80;
  byte_1EB8F39E8 = 0;
  return result;
}

double sub_1B499F120()
{
  qword_1EB8F39F0 = 2;
  word_1EB8F39F8 = 256;
  byte_1EB8F39FA = 1;
  result = 200.0;
  xmmword_1EB8F3A00 = xmmword_1B4D1BB90;
  byte_1EB8F3A10 = 1;
  return result;
}

void sub_1B499F154()
{
  qword_1EB8F3A18 = 5;
  word_1EB8F3A20 = 0;
  byte_1EB8F3A22 = 3;
  xmmword_1EB8F3A28 = 0uLL;
  byte_1EB8F3A38 = 2;
}

double sub_1B499F180()
{
  qword_1EB8F3A40 = 3;
  word_1EB8F3A48 = 256;
  byte_1EB8F3A4A = 3;
  result = 180.0;
  xmmword_1EB8F3A50 = xmmword_1B4D1BBA0;
  byte_1EB8F3A60 = 0;
  return result;
}

double sub_1B499F1B0()
{
  qword_1EB8F3A68 = 4;
  word_1EB8F3A70 = 256;
  byte_1EB8F3A72 = 3;
  result = 5000.0;
  xmmword_1EB8F3A78 = xmmword_1B4D1BBB0;
  byte_1EB8F3A88 = 0;
  return result;
}

double sub_1B499F1E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D10, &qword_1B4D1BC98);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B4D1AA70;
  if (qword_1EB8A5FC8 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  v1 = word_1EB8F3A20;
  v2 = HIBYTE(word_1EB8F3A20);
  v3 = byte_1EB8F3A22;
  v4 = byte_1EB8F3A38;
  *(v0 + 32) = qword_1EB8F3A18;
  *(v0 + 40) = v1;
  *(v0 + 41) = v2;
  *(v0 + 42) = v3;
  *(v0 + 48) = xmmword_1EB8F3A28;
  *(v0 + 64) = v4;
  if (qword_1EB8A5FD0 != -1)
  {
    v11 = v0;
    swift_once();
    v0 = v11;
  }

  v5 = word_1EB8F3A48;
  v6 = HIBYTE(word_1EB8F3A48);
  v7 = byte_1EB8F3A4A;
  v8 = byte_1EB8F3A60;
  *(v0 + 72) = qword_1EB8F3A40;
  *(v0 + 80) = v5;
  *(v0 + 81) = v6;
  *(v0 + 82) = v7;
  result = *&xmmword_1EB8F3A50;
  *(v0 + 88) = xmmword_1EB8F3A50;
  *(v0 + 104) = v8;
  qword_1EB8F3A90 = v0;
  return result;
}

uint64_t sub_1B499F31C()
{
  if (qword_1EB8A5FE0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB8F3A90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D10, &qword_1B4D1BC98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4D1B2D0;
  v2 = qword_1EB8A5FD8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = word_1EB8F3A70;
  v4 = HIBYTE(word_1EB8F3A70);
  v5 = byte_1EB8F3A72;
  v6 = byte_1EB8F3A88;
  *(inited + 32) = qword_1EB8F3A68;
  *(inited + 40) = v3;
  *(inited + 41) = v4;
  *(inited + 42) = v5;
  *(inited + 48) = xmmword_1EB8F3A78;
  *(inited + 64) = v6;
  if (qword_1EB8A5FB0 != -1)
  {
    swift_once();
  }

  v7 = word_1EB8F39A8;
  v8 = HIBYTE(word_1EB8F39A8);
  v9 = byte_1EB8F39AA;
  v10 = byte_1EB8F39C0;
  *(inited + 72) = qword_1EB8F39A0;
  *(inited + 80) = v7;
  *(inited + 81) = v8;
  *(inited + 82) = v9;
  *(inited + 88) = xmmword_1EB8F39B0;
  *(inited + 104) = v10;
  if (qword_1EB8A5FB8 != -1)
  {
    swift_once();
  }

  v11 = word_1EB8F39D0;
  v12 = HIBYTE(word_1EB8F39D0);
  v13 = byte_1EB8F39D2;
  v14 = byte_1EB8F39E8;
  *(inited + 112) = qword_1EB8F39C8;
  *(inited + 120) = v11;
  *(inited + 121) = v12;
  *(inited + 122) = v13;
  *(inited + 128) = xmmword_1EB8F39D8;
  *(inited + 144) = v14;
  if (qword_1EB8A5FC0 != -1)
  {
    swift_once();
  }

  v15 = word_1EB8F39F8;
  v16 = HIBYTE(word_1EB8F39F8);
  v17 = byte_1EB8F39FA;
  v18 = byte_1EB8F3A10;
  *(inited + 152) = qword_1EB8F39F0;
  *(inited + 160) = v15;
  *(inited + 161) = v16;
  *(inited + 162) = v17;
  *(inited + 168) = xmmword_1EB8F3A00;
  *(inited + 184) = v18;
  result = sub_1B49974F8(inited);
  qword_1EB8F3A98 = v0;
  return result;
}

void sub_1B499F570(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_23;
  }

  LOBYTE(v6) = a2;
  v7 = a1[4];
  v8 = a1[5];
  v9 = v7;

  if (!v7)
  {
    goto LABEL_23;
  }

  v10 = *a3;
  v11 = sub_1B49E9E4C(v9);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    sub_1B49865A8(v16, v6 & 1);
    v11 = sub_1B49E9E4C(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D08, &qword_1B4D1BC90);
    v11 = sub_1B4D18E1C();
    __break(1u);
  }

  if (v6)
  {
LABEL_8:
    if (v17)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v21 = v11;
  sub_1B4989BA0();
  v11 = v21;
  if (v17)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v9;
  *(v22[7] + 8 * v11) = v8;
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D08, &qword_1B4D1BC90);
    sub_1B4D18A8C();
    MEMORY[0x1B8C7C620](39, 0xE100000000000000);
    sub_1B4D18A9C();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = a1 + 7;
    v25 = 1;
    while (v25 < a1[2])
    {
      v26 = *(v6 - 1);
      v8 = *v6;
      v9 = v26;

      if (!v26)
      {
        goto LABEL_23;
      }

      v27 = *a3;
      v28 = sub_1B49E9E4C(v9);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_25;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        sub_1B49865A8(v32, 1);
        v28 = sub_1B49E9E4C(v9);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v17)
      {
        goto LABEL_9;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v34[6] + 8 * v28) = v9;
      *(v34[7] + 8 * v28) = v8;
      v35 = v34[2];
      v15 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v15)
      {
        goto LABEL_26;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1B499F8FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4CDE250(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B4D18D4C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 2);
          if (v13 >= *v12)
          {
            break;
          }

          v14 = v12[24];
          *(v12 + 1) = *v12;
          *v12 = v13;
          v12[8] = v14;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D28, &qword_1B4D1BCB0);
      v8 = sub_1B4D1844C();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v8 + 32;
    v16[1] = v7;
    sub_1B49A00C0(v16, v17, v18, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B499FA54(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B4CDF47C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B499FB68(v6);
  return sub_1B4D189FC();
}

uint64_t sub_1B499FAD0(uint64_t (*a1)(void **, void **), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *v3 = sub_1B4CDF47C(v6);
  }

  sub_1B499FC7C(a1, a2);
  return sub_1B4D189FC();
}

void sub_1B499FB68(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B4D18D4C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B498AFB8(0, &qword_1EDC36DD0, 0x1E696C358);
        v6 = sub_1B4D1844C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1B49A0664(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1B499FDA0(0, v2, 1, a1);
  }
}

void sub_1B499FC7C(uint64_t (*a1)(void **, void **), uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = sub_1B4D18D4C();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B498AFB8(0, &qword_1EDC36DD0, 0x1E696C358);
        v9 = sub_1B4D1844C();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      sub_1B49A0ED4(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1B499FFC0(0, v5, 1, a1);
  }
}

void sub_1B499FDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_1B4D1777C();
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 startDate];
      sub_1B4D1775C();

      v22 = [v20 startDate];
      v23 = v34;
      sub_1B4D1775C();

      LOBYTE(v22) = sub_1B4D1773C();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B499FFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

uint64_t sub_1B49A00C0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_1B4CDDE84(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1B49A15A0((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_117;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_118;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_119;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      while (v6 != v16)
      {
        v17 = *v13 >= *(v13 - 2);
        ++v16;
        v13 += 2;
        if ((((v10 < v15) ^ v17) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v18 = 16 * v7 - 16;
        v19 = v7;
        v20 = v9;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v23 = (v22 + v11);
            v24 = (v22 + v18);
            v25 = *(v22 + v11);
            v26 = *(v22 + v11 + 8);
            if (v11 != v18 || v23 >= v24 + 1)
            {
              *v23 = *v24;
            }

            v21 = v22 + v18;
            *v21 = v25;
            *(v21 + 8) = v26;
          }

          ++v20;
          v18 -= 16;
          v11 += 16;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B4A1D58C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_1B4A1D58C((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_60:
          if (v42)
          {
            goto LABEL_107;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_109;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_114;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v36 < 2)
        {
          goto LABEL_115;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_75:
        if (v60)
        {
          goto LABEL_111;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v36)
        {
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
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_1B49A15A0((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_102;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_103;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_104;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_105;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_106;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_108;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_110;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_116;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7 - 16;
  v29 = v9 - v7;
LABEL_33:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 16);
    if (v32 >= *v31)
    {
LABEL_32:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v27)
    {
      break;
    }

    v33 = *(v31 + 24);
    *(v31 + 16) = *v31;
    *v31 = v32;
    *(v31 + 8) = v33;
    v31 -= 16;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

void sub_1B49A0664(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = sub_1B4D1777C();
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_1B4CDDE84(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_1B49A179C((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1B4CDDE84(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        sub_1B4CDDDF8(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = MEMORY[0x1E69E7CC0];
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 startDate];
      v24 = v123;
      sub_1B4D1775C();

      v25 = [v22 startDate];
      v26 = v124;
      sub_1B4D1775C();

      LODWORD(v121) = sub_1B4D1773C();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 startDate];
        v34 = v123;
        sub_1B4D1775C();

        v35 = [v32 startDate];
        v36 = v124;
        sub_1B4D1775C();

        LODWORD(v35) = sub_1B4D1773C() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_1B4A1D58C(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_1B4A1D58C((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_1B49A179C((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1B4CDDE84(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_1B4CDDDF8(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 startDate];
    v53 = v123;
    sub_1B4D1775C();

    v54 = [v51 startDate];
    v55 = v124;
    sub_1B4D1775C();

    LOBYTE(v54) = sub_1B4D1773C();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

void sub_1B49A0ED4(void ***a1, uint64_t a2, void **a3, uint64_t (*a4)(void **, void **), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = v9;
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v97 = v10;
      v7 = *v9;
      v14 = *(*v9 + v13);
      v105 = *(*v9 + v11);
      v15 = v105;
      v106 = v14;
      v16 = v14;
      v17 = v15;
      v100 = a4(&v106, &v105);
      if (v6)
      {

        return;
      }

      v18 = 8 * v11;
      v19 = &v7[v11 + 2];
      v95 = v11;
      while (v97 - 2 != v11)
      {
        v20 = *v19;
        v105 = *(v19 - 1);
        v21 = v105;
        v106 = v20;
        v22 = v20;
        v7 = v21;
        LODWORD(v21) = a4(&v106, &v105);

        ++v11;
        ++v19;
        if ((v100 ^ v21))
        {
          v13 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v97 - 1;
      v13 = v97;
LABEL_11:
      v9 = a3;
      if (v100)
      {
        if (v13 < v95)
        {
          goto LABEL_124;
        }

        v23 = v95 <= v11;
        v11 = v95;
        if (v23)
        {
          v24 = 8 * v13 - 8;
          v25 = v13;
          v26 = v95;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v28 = *&v27[v18];
              *&v27[v18] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v18 += 8;
          }

          while (v26 < v25);
        }
      }

      else
      {
        v11 = v95;
      }
    }

    v29 = v9[1];
    if (v13 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_120;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_133;
    }

    v30 = (v11 + a6);
    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v30 >= v29)
    {
      v30 = v9[1];
    }

    if (v30 < v11)
    {
      goto LABEL_123;
    }

    if (v13 == v30)
    {
LABEL_133:
      if (v13 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = a5;
      v78 = *v9;
      v7 = (*v9 + 8 * v13 - 8);
      v96 = v11;
      v79 = v11 - v13;
      v92 = v30;
      do
      {
        v101 = v7;
        v103 = v13;
        v80 = v78[v13];
        v98 = v79;
        do
        {
          v105 = *v7;
          v81 = v105;
          v106 = v80;
          v82 = v80;
          v83 = v81;
          v84 = a4(&v106, &v105);
          if (v6)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v7;
          v80 = v7[1];
          *v7 = v80;
          v7[1] = v86;
          --v7;
        }

        while (!__CFADD__(v79++, 1));
        v13 = v103 + 1;
        v7 = v101 + 1;
        v79 = v98 - 1;
      }

      while ((v103 + 1) != v92);
      v13 = v92;
      a5 = v77;
      v9 = a3;
      v11 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1B4A1D58C(0, *(v12 + 2) + 1, 1, v12);
    }

    v32 = *(v12 + 2);
    v31 = *(v12 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v12 = sub_1B4A1D58C((v31 > 1), v32 + 1, 1, v12);
    }

    *(v12 + 2) = v33;
    v34 = &v12[16 * v32];
    *(v34 + 4) = v11;
    *(v34 + 5) = v13;
    v102 = v13;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v12[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_106;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_107;
      }

      v47 = &v12[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_109;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_112;
      }

      if (v51 >= v43)
      {
        v69 = &v12[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_118;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v36 = *(v12 + 4);
      v37 = *(v12 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_49:
      if (v39)
      {
        goto LABEL_108;
      }

      v52 = &v12[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v58 = &v12[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_115;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v62 = &v12[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_63:
    if (v57)
    {
      goto LABEL_110;
    }

    v65 = &v12[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_113;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_70:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *&v12[16 * v73 + 32];
    v75 = *&v12[16 * v35 + 40];
    sub_1B49A1C38(*v9 + v74, *v9 + *&v12[16 * v35 + 32], *v9 + v75, v7, a4);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v75 < v74)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1B4CDDE84(v12);
    }

    if (v73 >= *(v12 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v12[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v107 = v12;
    sub_1B4CDDDF8(v35);
    v12 = v107;
    v33 = *(v107 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  v12 = sub_1B4CDDE84(v12);
LABEL_92:
  v107 = v12;
  v88 = *(v12 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v89 = *&v12[16 * v88];
      v90 = *&v12[16 * v88 + 24];
      sub_1B49A1C38(*v7 + v89, *v7 + *&v12[16 * v88 + 16], *v7 + v90, v9, a4);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1B4CDDE84(v12);
      }

      if (v88 - 2 >= *(v12 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v12[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v107 = v12;
      sub_1B4CDDDF8(v88 - 1);
      v12 = v107;
      v88 = *(v107 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t sub_1B49A15A0(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 2 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 8);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 2;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 2;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 2 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v19 = v6 - 2;
    v5 -= 2;
    v20 = v15;
    do
    {
      v21 = v5 + 2;
      v22 = *(v20 - 2);
      v20 -= 2;
      if (v22 < *v19)
      {
        if (v21 != v6)
        {
          *v5 = *v19;
        }

        if (v15 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v21 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 2;
      v15 = v20;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v23 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= (v4 + v23))
  {
    memmove(v6, v4, v23);
  }

  return 1;
}

uint64_t sub_1B49A179C(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_1B4D1777C();
  v8 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 startDate];
        v41 = v54;
        sub_1B4D1775C();

        v42 = [v39 startDate];
        v43 = v55;
        sub_1B4D1775C();

        LOBYTE(v42) = sub_1B4D1773C();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 startDate];
        v21 = v54;
        sub_1B4D1775C();

        v22 = [v19 startDate];
        v23 = v55;
        sub_1B4D1775C();

        LOBYTE(v22) = sub_1B4D1773C();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

uint64_t sub_1B49A1C38(id *__src, id *a2, id *a3, unint64_t __dst, uint64_t (*a5)(id *, id *))
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = __dst;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v52 = &v14[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = v6;
      v54 = *v6;
      v17 = v14;
      v53 = *v14;
      v18 = v53;
      v19 = v54;
      v20 = v18;
      v21 = a5(&v54, &v53);
      if (__dsta)
      {

        v43 = v52 - v17 + 7;
        if (v52 - v17 >= 0)
        {
          v43 = v52 - v17;
        }

        if (v7 < v17 || v7 >= (v17 + (v43 & 0xFFFFFFFFFFFFFFF8)) || v7 != v17)
        {
          v42 = 8 * (v43 >> 3);
          v41 = v7;
          v40 = v17;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;

      __dsta = 0;
      if (v22)
      {
        break;
      }

      v15 = v17;
      v14 = v17 + 1;
      v6 = v16;
      if (v7 != v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v52)
      {
        goto LABEL_10;
      }
    }

    v15 = v16;
    v6 = v16 + 1;
    v14 = v17;
    if (v7 == v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    v23 = __dst;
    memmove(__dst, a2, 8 * v13);
    __dst = v23;
  }

  __srca = __dst;
  v52 = (__dst + 8 * v13);
  if (v11 < 8)
  {
    v14 = __dst;
  }

  else
  {
    v24 = __dsta;
    if (v6 <= v7)
    {
      v14 = __dst;
    }

    else
    {
      v25 = -__dst;
      v46 = -__dst;
      v47 = v7;
      while (2)
      {
        v26 = v24;
        __dstb = v6;
        v27 = v6 - 1;
        v28 = v52;
        v29 = v52 + v25;
        --v5;
        while (1)
        {
          v30 = *--v28;
          v54 = v30;
          v31 = v27;
          v53 = *v27;
          v32 = v53;
          v33 = v30;
          v34 = v32;
          v35 = a5(&v54, &v53);
          if (v26)
          {

            if (v29 >= 0)
            {
              v38 = v29;
            }

            else
            {
              v38 = v29 + 7;
            }

            v39 = v38 >> 3;
            v40 = __srca;
            v41 = __dstb;
            if (__dstb < __srca || __dstb >= (__srca + (v38 & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(__dstb, __srca, 8 * v39);
              return 1;
            }

            if (__dstb == __srca)
            {
              return 1;
            }

            v42 = 8 * v39;
            goto LABEL_57;
          }

          v36 = v35;

          v37 = v5 + 1;
          if (v36)
          {
            break;
          }

          v27 = v31;
          if (v37 != v52)
          {
            *v5 = *v28;
          }

          v29 -= 8;
          --v5;
          v52 = v28;
          if (v28 <= __srca)
          {
            v52 = v28;
            v6 = __dstb;
            v14 = __srca;
            goto LABEL_51;
          }
        }

        v6 = v31;
        if (v37 != __dstb)
        {
          *v5 = *v31;
        }

        v14 = __srca;
        v24 = 0;
        if (v52 > __srca)
        {
          v25 = v46;
          if (v31 > v47)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_51:
  v44 = v52 - v14 + 7;
  if (v52 - v14 >= 0)
  {
    v44 = v52 - v14;
  }

  if (v6 < v14 || v6 >= (v14 + (v44 & 0xFFFFFFFFFFFFFFF8)) || v6 != v14)
  {
    v42 = 8 * (v44 >> 3);
    v41 = v6;
    v40 = v14;
LABEL_57:
    memmove(v41, v40, v42);
  }

  return 1;
}

uint64_t sub_1B49A205C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1B49A20E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B49A2128(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B49A21F4(uint64_t a1)
{
  sub_1B4D1777C();
  sub_1B49A23E8();
  return sub_1B4D1811C() & 1;
}

unint64_t sub_1B49A2254()
{
  result = qword_1EDC37878;
  if (!qword_1EDC37878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37878);
  }

  return result;
}

uint64_t sub_1B49A22B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49A2320(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B49A2380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B49A23E8()
{
  result = qword_1EB8A6D20;
  if (!qword_1EB8A6D20)
  {
    sub_1B4D1777C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6D20);
  }

  return result;
}

uint64_t sub_1B49A24E4(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v31 = v1;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF4BC(0, v5, 0);
    v29 = a1 + 64;
    v30 = v36;
    result = sub_1B4D188DC();
    v7 = result;
    v8 = 0;
    v33 = *(a1 + 36);
    v26 = a1 + 72;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v29 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_25;
      }

      if (v33 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v11 = *(*(a1 + 48) + 8 * v7);
      v12 = *(*(a1 + 56) + 8 * v7);

      v34 = v12;
      v35 = v11;
      MEMORY[0x1EEE9AC00](v13);
      *(&v26 - 2) = &v35;
      *(&v26 - 1) = &v34;
      sub_1B49A6BC0(&qword_1EB8A6DA0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
      v14 = v31;
      sub_1B4D17DAC();
      if (v14)
      {
      }

      v31 = 0;

      v15 = v30;
      v36 = v30;
      v17 = *(v30 + 16);
      v16 = *(v30 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B4BCF4BC((v16 > 1), v17 + 1, 1);
        v15 = v36;
      }

      *(v15 + 16) = v17 + 1;
      v18 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v30 = v15;
      result = sub_1B49A6C5C(v32, v15 + v18 + *(v27 + 72) * v17, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_27;
      }

      v19 = *(v29 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      if (v33 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v26 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1B497CD6C(v7, v33, 0);
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_1B497CD6C(v7, v33, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v5)
      {
        return v30;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t FitnessPlusProperty.protobuf()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  sub_1B49A6BC0(&qword_1EB8A6D30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49A295C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for FitnessPlusBestWorkoutProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-v11];
  sub_1B49A6D24(a2, v9, type metadata accessor for FitnessPlusBestWorkoutProperty);
  sub_1B4974FBC(v9, v6, &qword_1EB8A6D88, &unk_1B4D208C0);
  type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
  v16 = v6;
  sub_1B49A6BC0(&qword_1EB8A6DE0, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_MaxPropertyValue);
  sub_1B4D17DAC();
  sub_1B49A6CC4(v9, type metadata accessor for FitnessPlusBestWorkoutProperty);
  sub_1B4975024(v6, &qword_1EB8A6D88, &unk_1B4D208C0);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  return sub_1B49A205C(v12, a1, &qword_1EB8A6D38, &qword_1B4D1BCB8);
}

uint64_t sub_1B49A2BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for FitnessPlusAverageHeartRateProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-v11];
  sub_1B49A6D24(a2, v9, type metadata accessor for FitnessPlusAverageHeartRateProperty);
  sub_1B4974FBC(v9, v6, &qword_1EB8A6D78, &unk_1B4D1BCC0);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v16 = v6;
  sub_1B49A6BC0(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B49A6CC4(v9, type metadata accessor for FitnessPlusAverageHeartRateProperty);
  sub_1B4975024(v6, &qword_1EB8A6D78, &unk_1B4D1BCC0);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  return sub_1B49A205C(v12, a1, &qword_1EB8A6D38, &qword_1B4D1BCB8);
}

uint64_t sub_1B49A2E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for FitnessPlusCaloriesProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-v11];
  sub_1B49A6D24(a2, v9, type metadata accessor for FitnessPlusCaloriesProperty);
  sub_1B4974FBC(v9, v6, &qword_1EB8A6D68, &qword_1B4D208D0);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v16 = v6;
  sub_1B49A6BC0(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B49A6CC4(v9, type metadata accessor for FitnessPlusCaloriesProperty);
  sub_1B4975024(v6, &qword_1EB8A6D68, &qword_1B4D208D0);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  return sub_1B49A205C(v12, a1, &qword_1EB8A6D38, &qword_1B4D1BCB8);
}

uint64_t sub_1B49A30D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for FitnessPlusDurationProperty(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-v11];
  sub_1B49A6D24(a2, v9, type metadata accessor for FitnessPlusDurationProperty);
  sub_1B4974FBC(v9, v6, &qword_1EB8A6858, &qword_1B4D1AB70);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v16 = v6;
  sub_1B49A6BC0(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B49A6CC4(v9, type metadata accessor for FitnessPlusDurationProperty);
  sub_1B4975024(v6, &qword_1EB8A6858, &qword_1B4D1AB70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  return sub_1B49A205C(v12, a1, &qword_1EB8A6D38, &qword_1B4D1BCB8);
}

uint64_t sub_1B49A334C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v65 = a4;
  v64 = a1;
  v60 = type metadata accessor for FitnessPlusDurationProperty(0);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for FitnessPlusCaloriesProperty(0);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FitnessPlusAverageHeartRateProperty(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v56 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v58 = &v55 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - v24;
  v26 = type metadata accessor for FitnessPlusBestWorkoutProperty(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v33;
  (*(v33 + 16))(v32, a2, a3, v30);
  if (swift_dynamicCast())
  {
    v34 = sub_1B49A6BC0(&qword_1EB8A6D80, type metadata accessor for FitnessPlusBestWorkoutProperty, &protocol conformance descriptor for FitnessPlusBestWorkoutProperty);
    v35 = v66;
    sub_1B49A3C44(a3, v26, v34, v25);
    if (!v35)
    {
      v36 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v36 - 8) + 56))(v25, 0, 1, v36);
      sub_1B49A205C(v25, v64, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    }

    sub_1B49A6CC4(v28, type metadata accessor for FitnessPlusBestWorkoutProperty);
    return (*(v67 + 8))(v32, a3);
  }

  v37 = v66;
  if (swift_dynamicCast())
  {
    v38 = v11;
    v39 = sub_1B49A6BC0(&qword_1EB8A6D70, type metadata accessor for FitnessPlusAverageHeartRateProperty, &protocol conformance descriptor for FitnessPlusAverageHeartRateProperty);
    sub_1B49A3C44(a3, v9, v39, v22);
    if (!v37)
    {
      v40 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v40 - 8) + 56))(v22, 0, 1, v40);
      sub_1B49A205C(v22, v64, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    }

    v41 = type metadata accessor for FitnessPlusAverageHeartRateProperty;
LABEL_17:
    sub_1B49A6CC4(v38, v41);
    return (*(v67 + 8))(v32, a3);
  }

  v42 = v62;
  v38 = v63;
  if (swift_dynamicCast())
  {
    v43 = sub_1B49A6BC0(&qword_1EB8A6D60, type metadata accessor for FitnessPlusCaloriesProperty, &protocol conformance descriptor for FitnessPlusCaloriesProperty);
    v44 = v59;
    sub_1B49A3C44(a3, v42, v43, v59);
    if (!v37)
    {
      v45 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
      sub_1B49A205C(v44, v64, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    }

    v41 = type metadata accessor for FitnessPlusCaloriesProperty;
    goto LABEL_17;
  }

  v46 = v60;
  v38 = v61;
  if (swift_dynamicCast())
  {
    v47 = sub_1B49A6BC0(&qword_1EB8A6D58, type metadata accessor for FitnessPlusDurationProperty, &protocol conformance descriptor for FitnessPlusDurationProperty);
    v48 = v58;
    sub_1B49A3C44(a3, v46, v47, v58);
    if (!v37)
    {
      v49 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
      sub_1B49A205C(v48, v64, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    }

    v41 = type metadata accessor for FitnessPlusDurationProperty;
    goto LABEL_17;
  }

  if (swift_dynamicCast())
  {

    v51 = sub_1B49A50D0();
    v52 = v57;
    sub_1B49A3C44(a3, &type metadata for FitnessPlusCountByTrainerProperty, v51, v57);
    if (v37)
    {
      return (*(v67 + 8))(v32, a3);
    }

LABEL_24:
    v54 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v54 - 8) + 56))(v52, 0, 1, v54);
    sub_1B49A205C(v52, v64, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    return (*(v67 + 8))(v32, a3);
  }

  if (!swift_dynamicCast())
  {
    sub_1B49A4D28();
    swift_allocError();
    swift_willThrow();
    return (*(v67 + 8))(v32, a3);
  }

  v53 = sub_1B49A507C();
  v52 = v56;
  sub_1B49A3C44(a3, &type metadata for FitnessPlusWorkoutCountProperty, v53, v56);
  if (!v37)
  {
    goto LABEL_24;
  }

  return (*(v67 + 8))(v32, a3);
}

uint64_t sub_1B49A3C44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v34 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29[1] = swift_getAssociatedConformanceWitness();
  v31 = AssociatedTypeWitness;
  v8 = swift_getAssociatedTypeWitness();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v30 = v29 - v9;
  v10 = sub_1B4D1880C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v16, v35, a1, v19);
  v23 = swift_dynamicCast();
  v24 = *(v17 + 56);
  if (v23)
  {
    v24(v13, 0, 1, a2);
    (*(v17 + 32))(v21, v13, a2);
    v25 = v30;
    (*(v6 + 64))(a2, v6);
    v26 = v33;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(AssociatedConformanceWitness + 8) + 32))(v26);
    (*(v32 + 8))(v25, v26);
    return (*(v17 + 8))(v21, a2);
  }

  else
  {
    v24(v13, 1, 1, a2);
    (*(v11 + 8))(v13, v10);
    sub_1B49A4D28();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t static FitnessPlusPropertySerialization.from(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = a2;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_1B498FC0C(a1, a2);
  sub_1B4D17BDC();
  sub_1B49A6BC0(&qword_1EB8A6D30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  result = sub_1B4D17D7C();
  if (!v3)
  {
    static FitnessPlusPropertySerialization.from(_:)(v10, a3);
    return sub_1B49A6CC4(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  }

  return result;
}

uint64_t static FitnessPlusPropertySerialization.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v78 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v72 - v10;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v76 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v74 = *(v16 - 8);
  v75 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v72 - v17;
  v18 = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v72 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v72 - v25;
  sub_1B4974FBC(a1, &v72 - v25, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v27 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
  {
    sub_1B49A4D28();
    swift_allocError();
    return swift_willThrow();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1B49A6C5C(v26, v23, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
      sub_1B49A6D24(v23, v20, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
      sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v48 = [ObjCClassFromMetadata baseUnit];
      v49 = v73;
      sub_1B4D1741C();
      v51 = *(v20 + 1);
      v50 = *(v20 + 2);

      v52 = [ObjCClassFromMetadata baseUnit];
      v53 = type metadata accessor for FitnessPlusBestWorkoutProperty(0);
      v54 = v78;
      v78[3] = v53;
      v54[4] = sub_1B49A6BC0(&qword_1EB8A6D80, type metadata accessor for FitnessPlusBestWorkoutProperty, &protocol conformance descriptor for FitnessPlusBestWorkoutProperty);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
      v56 = v75;
      sub_1B4D1745C();

      (*(v74 + 8))(v49, v56);
      sub_1B49A6CC4(v20, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
      sub_1B49A6CC4(v23, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0);
      v57 = (boxed_opaque_existential_1 + *(result + 28));
      *v57 = v51;
      v57[1] = v50;
      return result;
    }

    v30 = v77;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B49A6C5C(v26, v77, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v31 = v76;
      sub_1B49A6D24(v30, v76, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v32 = *(v31 + 8);
      sub_1B498AFB8(0, &qword_1EDC378B8, 0x1E696B038);
      v33 = swift_getObjCClassFromMetadata();
      v34 = [v33 baseUnit];
      v35 = type metadata accessor for FitnessPlusAverageHeartRateProperty(0);
      v36 = v78;
      v78[3] = v35;
      v36[4] = sub_1B49A6BC0(&qword_1EB8A6D70, type metadata accessor for FitnessPlusAverageHeartRateProperty, &protocol conformance descriptor for FitnessPlusAverageHeartRateProperty);
      v37 = __swift_allocate_boxed_opaque_existential_1(v36);
      sub_1B4D1741C();
      v38 = [v33 baseUnit];
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D78, &unk_1B4D1BCC0);
    }

    else
    {
      sub_1B49A6C5C(v26, v77, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v31 = v76;
      sub_1B49A6D24(v30, v76, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v32 = *(v31 + 8);
      sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
      v33 = swift_getObjCClassFromMetadata();
      v65 = [v33 baseUnit];
      v66 = type metadata accessor for FitnessPlusCaloriesProperty(0);
      v67 = v78;
      v78[3] = v66;
      v67[4] = sub_1B49A6BC0(&qword_1EB8A6D60, type metadata accessor for FitnessPlusCaloriesProperty, &protocol conformance descriptor for FitnessPlusCaloriesProperty);
      v37 = __swift_allocate_boxed_opaque_existential_1(v67);
      sub_1B4D1741C();
      v68 = [v33 baseUnit];
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
    }

    sub_1B4D1741C();
    v40 = [v33 baseUnit];
    sub_1B4D1741C();
    v41 = [v33 baseUnit];
    sub_1B4D1741C();
    v42 = [v33 baseUnit];
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v30 = v77;
    sub_1B49A6C5C(v26, v77, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    v31 = v76;
    sub_1B49A6D24(v30, v76, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    v32 = *(v31 + 8);
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    v58 = swift_getObjCClassFromMetadata();
    v59 = [v58 baseUnit];
    v60 = type metadata accessor for FitnessPlusDurationProperty(0);
    v61 = v78;
    v78[3] = v60;
    v61[4] = sub_1B49A6BC0(&qword_1EB8A6D58, type metadata accessor for FitnessPlusDurationProperty, &protocol conformance descriptor for FitnessPlusDurationProperty);
    v37 = __swift_allocate_boxed_opaque_existential_1(v61);
    sub_1B4D1741C();
    v62 = [v58 baseUnit];
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
    sub_1B4D1741C();
    v63 = [v58 baseUnit];
    sub_1B4D1741C();
    v64 = [v58 baseUnit];
    sub_1B4D1741C();
    v42 = [v58 baseUnit];
LABEL_15:
    v69 = v42;
    sub_1B4D1741C();
    sub_1B49A6CC4(v31, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    result = sub_1B49A6CC4(v30, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    *(v37 + *(v39 + 28)) = v32;
    return result;
  }

  if (EnumCaseMultiPayload == 4)
  {
    sub_1B49A6C5C(v26, v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
    sub_1B49A6D24(v11, v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
    v43 = v79;
    sub_1B49A4D7C(v8, v80);
    result = sub_1B49A6CC4(v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
    if (!v43)
    {
      v44 = v80[0];
      v45 = v80[1];
      v46 = v78;
      v78[3] = &type metadata for FitnessPlusCountByTrainerProperty;
      result = sub_1B49A50D0();
      v46[4] = result;
      *v46 = v44;
      v46[1] = v45;
    }
  }

  else
  {
    sub_1B49A6C5C(v26, v5, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    v70 = *v5;
    sub_1B49A6CC4(v5, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    v71 = v78;
    v78[3] = &type metadata for FitnessPlusWorkoutCountProperty;
    result = sub_1B49A507C();
    v71[4] = result;
    *v71 = v70;
  }

  return result;
}

unint64_t sub_1B49A4D28()
{
  result = qword_1EB8A6D40;
  if (!qword_1EB8A6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6D40);
  }

  return result;
}

uint64_t sub_1B49A4D7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(*a1 + 16);
  v33 = a2;
  if (v11)
  {
    v32 = a1;
    v37 = MEMORY[0x1E69E7CC0];
    v34 = v11;
    sub_1B4BCEDBC(0, v11, 0);
    v12 = 0;
    v13 = v37;
    v35 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = v7;
    while (v12 < *(v10 + 16))
    {
      sub_1B49A6D24(v35 + *(v14 + 72) * v12, v9, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
      sub_1B49A54E0(v9, v36);
      if (v3)
      {
        sub_1B49A6CC4(v9, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
        sub_1B49A6CC4(v32, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
      }

      v3 = 0;
      v15 = v10;
      v16 = v9;
      sub_1B49A6CC4(v9, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
      v18 = v36[0];
      v17 = v36[1];
      v37 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v31 = v14;
        sub_1B4BCEDBC((v19 > 1), v20 + 1, 1);
        v21 = v20 + 1;
        v14 = v31;
        v13 = v37;
      }

      ++v12;
      *(v13 + 16) = v21;
      v22 = v13 + 16 * v20;
      *(v22 + 32) = v18;
      *(v22 + 40) = v17;
      v10 = v15;
      v9 = v16;
      if (v34 == v12)
      {
        a1 = v32;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68E8, &unk_1B4D1AC00);
      v23 = sub_1B4D18AEC();
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC8];
    }

    v36[0] = v23;

    sub_1B49A60BC(v25, 1, v36);
    if (!v3)
    {

      v26 = v36[0];
      v27 = a1;
      v28 = a1[1];
      result = sub_1B49A6CC4(v27, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
      v29 = v33;
      *v33 = v26;
      v29[1] = v28;
      return result;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1B49A507C()
{
  result = qword_1EB8A6D48;
  if (!qword_1EB8A6D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6D48);
  }

  return result;
}

unint64_t sub_1B49A50D0()
{
  result = qword_1EB8A6D50;
  if (!qword_1EB8A6D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6D50);
  }

  return result;
}

unint64_t sub_1B49A5148()
{
  result = qword_1EB8A6D90;
  if (!qword_1EB8A6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6D90);
  }

  return result;
}

uint64_t sub_1B49A51F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  sub_1B49A6BC0(&qword_1EB8A6D30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49A52F0()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  sub_1B49A6BC0(&qword_1EB8A6D30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49A53A0()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  sub_1B49A6BC0(&qword_1EB8A6D30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  return sub_1B4D17DAC();
}

void sub_1B49A5450(void *a1, uint64_t a2)
{
  v3 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0) + 28));
  v5 = *v3;
  v4 = v3[1];

  a1[1] = v5;
  a1[2] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B4D1742C();
  *a1 = v6;
}

uint64_t sub_1B49A54E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC0, &unk_1B4D1BDD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = &v36 - v4;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DD0, &unk_1B4D1BDE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DB0, &unk_1B4D462F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36 - v14;
  v16 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  v39 = a1;
  sub_1B4974FBC(a1 + *(v38 + 20), v15, &qword_1EB8A6DB0, &unk_1B4D462F0);
  v20 = *(v17 + 48);
  if (v20(v15, 1, v16) == 1)
  {
    v21 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    sub_1B4D17BBC();
    if (v20(v15, 1, v16) != 1)
    {
      sub_1B4975024(v15, &qword_1EB8A6DB0, &unk_1B4D462F0);
    }
  }

  else
  {
    sub_1B49A6C5C(v15, v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  }

  sub_1B4974FBC(v19, v12, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v22 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  if ((*(*(v22 - 8) + 48))(v12, 1, v22) == 1)
  {
    sub_1B49A6CC4(v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
    v45 = 0u;
    v46 = 0u;
  }

  else
  {
    sub_1B49A6C5C(v12, v9, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
    v23 = *v9;

    sub_1B49A6CC4(v9, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
    *(&v46 + 1) = &type metadata for FitnessPlusTrainerIdentifiers;
    *&v45 = v23;
    sub_1B49A6CC4(v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
  if (!swift_dynamicCast())
  {
    v44 = 0;
    goto LABEL_14;
  }

  v24 = v44;
  if (!v44)
  {
LABEL_14:

    sub_1B49A6C08();
    swift_allocError();
    *v30 = 0;
    return swift_willThrow();
  }

  v25 = v42;
  sub_1B4974FBC(v39 + *(v38 + 24), v42, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v26 = v41;
  v27 = *(v40 + 48);
  if (v27(v25, 1, v41) == 1)
  {
    v28 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
    v29 = v43;
    (*(*(v28 - 8) + 56))(v43, 1, 1, v28);
    sub_1B4D17BBC();
    if (v27(v25, 1, v26) != 1)
    {
      sub_1B4975024(v25, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
    }
  }

  else
  {
    v29 = v43;
    sub_1B49A6C5C(v25, v43, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  }

  v32 = v47;
  sub_1B49A5B5C(v29, &v45);
  sub_1B49A6CC4(v29, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  if (!v32)
  {
    result = swift_dynamicCast();
    if (result)
    {
      v33 = v44;
      v34 = v37;
      *v37 = v24;
      v34[1] = v33;
      return result;
    }

    sub_1B49A6C08();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();
  }
}

uint64_t sub_1B49A5B5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC8, &unk_1B4D20350);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  sub_1B4974FBC(a1, &v17 - v11, &qword_1EB8A6DC8, &unk_1B4D20350);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  result = (*(*(v13 - 8) + 48))(v12, 1, v13);
  if (result == 1)
  {
    v15 = 0;
    v16 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    sub_1B49A6C5C(v12, v9, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B49A6D24(v9, v6, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    v15 = *v6;
    sub_1B49A6CC4(v6, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    result = sub_1B49A6CC4(v9, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    v16 = &type metadata for CountPropertyValue;
  }

  *a2 = v15;
  a2[3] = v16;
  return result;
}

uint64_t sub_1B49A5D44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B49A24E4(a2);
  if (!v3)
  {
    v7 = result;

    *a1 = v7;
    a1[1] = a3;
  }

  return result;
}

uint64_t sub_1B49A5D94(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v22 = a1;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2;
  v23 = &v25;
  v24 = a3;
  sub_1B49A6BC0(&qword_1EB8A6DA8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  result = sub_1B4D17DAC();
  if (!v4)
  {
    v21 = v8;
    v16 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
    v17 = *(v16 + 20);
    v18 = v22;
    sub_1B4975024(v22 + v17, &qword_1EB8A6DB0, &unk_1B4D462F0);
    sub_1B49A6C5C(v14, v18 + v17, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
    v19 = (*(v12 + 56))(v18 + v17, 0, 1, v11);
    MEMORY[0x1EEE9AC00](v19);
    *(&v21 - 2) = &v24;
    sub_1B49A6BC0(&qword_1EB8A6DB8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
    sub_1B4D17DAC();
    v20 = *(v16 + 24);
    sub_1B4975024(v18 + v20, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
    sub_1B49A6C5C(v10, v18 + v20, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
    return (*(v21 + 56))(v18 + v20, 0, 1, v7);
  }

  return result;
}

void sub_1B49A60BC(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_23;
  }

  LOBYTE(v6) = a2;
  v7 = a1[4];
  v8 = a1[5];

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_1B49E9F3C(v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1B4984030(v15, v6 & 1);
    v10 = sub_1B49E9F3C(v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_1B4D18E1C();
    __break(1u);
  }

  if (v6)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v20 = v10;
  sub_1B49886AC();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + 8 * v10) = v7;
  *(v21[7] + 8 * v10) = v8;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
    sub_1B4D18A8C();
    MEMORY[0x1B8C7C620](39, 0xE100000000000000);
    sub_1B4D18A9C();
    __break(1u);
    return;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v6 = a1 + 7;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v6 - 1);
      v24 = *v6;

      if (!v7)
      {
        goto LABEL_23;
      }

      v25 = *a3;
      v26 = sub_1B49E9F3C(v7);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_1B4984030(v30, 1);
        v26 = sub_1B49E9F3C(v7);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v32[6] + 8 * v26) = v7;
      *(v32[7] + 8 * v26) = v24;
      v33 = v32[2];
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v8;
      v32[2] = v34;
      v6 += 2;
      if (v4 == v8)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1B49A6418(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12[-v6];
  v8 = *a2;
  v9 = a2[1];
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0);
  v13 = v8;
  v14 = v9;
  sub_1B49A6BC0(&qword_1EB8A6D98, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    return sub_1B49A205C(v7, a1, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  return result;
}

uint64_t sub_1B49A6594(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DD0, &unk_1B4D1BDE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10[-v5];
  v7 = *a2;
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);
  v11 = v7;
  sub_1B49A6BC0(&qword_1EB8A6DD8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  sub_1B4D17DAC();
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  return sub_1B49A205C(v6, a1, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
}

uint64_t sub_1B49A6700(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC8, &unk_1B4D20350);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10[-v5];
  v7 = *a2;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v11 = v7;
  sub_1B49A6BC0(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
  sub_1B4D17DAC();
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  return sub_1B49A205C(v6, a1, &qword_1EB8A6DC8, &unk_1B4D20350);
}

uint64_t sub_1B49A686C(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v11[1] = *a2;
  v8 = sub_1B49A69C0();
  result = (*(v8 + 32))(&type metadata for CountPropertyValue, v8);
  if (!v2)
  {
    v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    return sub_1B49A205C(v7, a1, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  return result;
}

unint64_t sub_1B49A69C0()
{
  result = qword_1EDC39688;
  if (!qword_1EDC39688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39688);
  }

  return result;
}

uint64_t sub_1B49A6BC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B49A6C08()
{
  result = qword_1EB8A6DF0;
  if (!qword_1EB8A6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6DF0);
  }

  return result;
}

uint64_t sub_1B49A6C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49A6CC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B49A6D24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t WorkoutMediaCurrentPlayingItemFact.TemplateString.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  v6 = 8;
  if (v4 < 8)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t WorkoutMediaCurrentPlayingItemFact.TemplateString.rawValue.getter()
{
  v1 = 0xD00000000000002ALL;
  v2 = *v0;
  v3 = 0xD00000000000006DLL;
  if (v2 != 6)
  {
    v3 = 0xD000000000000061;
  }

  v4 = 0xD000000000000047;
  if (v2 != 4)
  {
    v4 = 0xD000000000000053;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000050;
  if (v2 != 2)
  {
    v5 = 0xD000000000000044;
  }

  if (*v0)
  {
    v1 = 0xD000000000000036;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

void sub_1B49A6F14(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002ALL;
  v3 = *v1;
  v4 = "le_description>.";
  v5 = "ne of my favorites.";
  v6 = 0xD00000000000006DLL;
  if (v3 != 6)
  {
    v6 = 0xD000000000000061;
    v5 = " this is one of my favorites.";
  }

  v7 = "is of genre <genre>.";
  v8 = 0xD000000000000047;
  if (v3 != 4)
  {
    v8 = 0xD000000000000053;
    v7 = "is one of my favorites.";
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "ia_title> by <artist>.";
  v10 = 0xD000000000000050;
  if (v3 != 2)
  {
    v10 = 0xD000000000000044;
    v9 = "f genre <genre>.";
  }

  if (*v1)
  {
    v2 = 0xD000000000000036;
    v4 = "istening to <media_title>.";
  }

  if (*v1 > 1u)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
}

uint64_t WorkoutMediaCurrentPlayingItemFact.placeholders()()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B4D1BE00;
  *(v7 + 32) = 0x69745F616964656DLL;
  *(v7 + 40) = 0xEB00000000656C74;
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  *(v7 + 48) = sub_1B4993DFC;
  *(v7 + 56) = v8;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0x747369747261;
  *(v7 + 88) = 0xE600000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  *(v7 + 96) = sub_1B4994004;
  *(v7 + 104) = v9;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0x65726E6567;
  *(v7 + 136) = 0xE500000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  *(v7 + 144) = sub_1B4994004;
  *(v7 + 152) = v10;
  *(v7 + 160) = 0;
  *(v7 + 168) = 0;

  return v7;
}

void WorkoutMediaCurrentPlayingItemFact.selectTemplate(formatter:)(char *a1@<X8>)
{
  v2 = *(v1 + 24);
  if (*(v1 + 48))
  {
    v3 = 7;
  }

  else
  {
    v3 = 3;
  }

  if (*(v1 + 48))
  {
    v4 = 6;
  }

  else
  {
    v4 = 2;
  }

  if (v2)
  {
    v3 = v4;
  }

  if (*(v1 + 48))
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (*(v1 + 48))
  {
    v6 = 5;
  }

  else
  {
    v6 = 1;
  }

  if (v2)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (*(v1 + 40))
  {
    v7 = v3;
  }

  *a1 = v7;
}

unint64_t sub_1B49A71EC()
{
  result = qword_1EB8A6DF8;
  if (!qword_1EB8A6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6DF8);
  }

  return result;
}

unint64_t sub_1B49A7244()
{
  result = qword_1EB8A6E00;
  if (!qword_1EB8A6E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6E08, &qword_1B4D1BEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E00);
  }

  return result;
}

unint64_t sub_1B49A72AC()
{
  result = qword_1EB8A6E10;
  if (!qword_1EB8A6E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E10);
  }

  return result;
}

unint64_t sub_1B49A7304()
{
  result = qword_1EB8A6E18;
  if (!qword_1EB8A6E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E18);
  }

  return result;
}

unint64_t sub_1B49A7358(uint64_t a1)
{
  result = sub_1B49A7380();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B49A7380()
{
  result = qword_1EB8A6E20;
  if (!qword_1EB8A6E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6E20);
  }

  return result;
}

uint64_t _s14TemplateStringOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14TemplateStringOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}