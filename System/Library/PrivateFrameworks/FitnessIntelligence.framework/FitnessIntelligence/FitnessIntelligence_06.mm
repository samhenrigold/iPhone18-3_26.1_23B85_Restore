unint64_t sub_1B49D918C()
{
  result = qword_1EB8A7468;
  if (!qword_1EB8A7468)
  {
    type metadata accessor for WorkoutVoiceSession();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7468);
  }

  return result;
}

uint64_t sub_1B49D91E0(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutState(0) - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B49DA364;

  return sub_1B49CCCB8(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1B49D92E8(_OWORD *a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49D9398;

  return sub_1B49CEB64(a1, v4, v5, v6);
}

uint64_t sub_1B49D9398(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_1B49D9494(uint64_t a1, char *a2)
{
  Result = type metadata accessor for FitnessContextQueryResult(0);
  MEMORY[0x1EEE9AC00](Result);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*a1 + 16);
  if (v8)
  {
    v9 = *a2;
    v10 = &v7[*(Result + 28)];
    v11 = *a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_1B49D9F90(v11, v7, type metadata accessor for FitnessContextQueryResult);
      v13 = v10[16];
      if (v13 != 2)
      {
        v14 = *(v10 + 3);
        v16 = *v10;
        v15 = *(v10 + 1);
        v18[1] = FitnessContextQueryDescriptor.analyticsKey.getter();
        v18[2] = v17;
        v18[3] = v16;
        v18[4] = v15;
        v19 = v13 & 1;
        v20 = v14;
        v21 = v9;
        WorkoutVoiceQueryAnalyticsEvent.send()();
      }

      sub_1B49DA04C(v7, type metadata accessor for FitnessContextQueryResult);
      v11 += v12;
      --v8;
    }

    while (v8);
  }
}

uint64_t dispatch thunk of WorkoutVoiceSession.prewarmContext(for:workoutState:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 248) + **(*v2 + 248));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B49DA364;

  return v8(a1, a2);
}

{
  v8 = (*(*v2 + 256) + **(*v2 + 256));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B49DA364;

  return v8(a1, a2);
}

uint64_t dispatch thunk of WorkoutVoiceSession.requestMoment(_:workoutState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 264) + **(*v3 + 264));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49DA364;

  return v10(a1, a2, a3);
}

{
  v10 = (*(*v3 + 272) + **(*v3 + 272));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B4983F3C;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceSession.announce(moment:voiceSelection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 280) + **(*v3 + 280));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49DA364;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceSession.cancelAnnouncement(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 288) + **(*v1 + 288));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B49D9398;

  return v6(a1);
}

uint64_t sub_1B49D9E8C(uint64_t a1)
{
  sub_1B49D9EE4(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1B49D9EE4(uint64_t a1)
{
  if (!qword_1EB8A7490)
  {
    sub_1B4D1777C();
    sub_1B498AFB8(255, &qword_1EDC36DC8, 0x1E699C9F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB8A7490);
    }
  }
}

uint64_t sub_1B49D9F90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B49D9FF8()
{
  result = qword_1EB8A74C8;
  if (!qword_1EB8A74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A74C8);
  }

  return result;
}

uint64_t sub_1B49DA04C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B49DA0AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1B49DA100()
{
  result = qword_1EB8A74E0;
  if (!qword_1EB8A74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A74E0);
  }

  return result;
}

uint64_t sub_1B49DA154(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v17) = *a3;
  v17 = (*(a5 + 40))(a2, &v17, a4, a5);
  v15 = a4;
  v16 = a5;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = sub_1B49DA2CC;
  v13[5] = &v14;
  swift_getAssociatedTypeWitness();
  type metadata accessor for FitnessContextQueryDescriptor(255);
  swift_getAssociatedConformanceWitness();
  v7 = sub_1B4D1801C();
  Request = type metadata accessor for FitnessContextQueryRequest(0);
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1B498D2F0(sub_1B49DA2D4, v13, v7, Request, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  return v11;
}

uint64_t sub_1B49DA2F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B49DA368(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1B8C7DDC0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1B8C7DDC0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B49DA3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
    goto LABEL_6;
  }

  v11 = sub_1B49DA368(*(a1 + 16));
  if (v11 >= v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = *(a2 + 16);
  if (!v12)
  {
LABEL_6:
    if (qword_1EDC36EF8 == -1)
    {
LABEL_7:
      v20 = sub_1B4D17F6C();
      __swift_project_value_buffer(v20, qword_1EDC36F00);
      v21 = sub_1B4D17F5C();
      v22 = sub_1B4D1871C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1B4953000, v21, v22, "Outro prompt missing celebration nouns or compliment examples", v23, 2u);
        MEMORY[0x1B8C7DDA0](v23, -1, -1);
      }

      v15 = 0xD000000000000019;

      v14 = 0x80000001B4D49630;
      v18 = 0x80000001B4D59140;
      v19 = 0xD000000000000068;
      goto LABEL_10;
    }

LABEL_14:
    swift_once();
    goto LABEL_7;
  }

  v13 = a1 + 16 * v11;
  v15 = *(v13 + 32);
  v14 = *(v13 + 40);

  result = sub_1B49DA368(v12);
  if (result >= v12)
  {
    __break(1u);
    return result;
  }

  v17 = a2 + 16 * result;
  v19 = *(v17 + 32);
  v18 = *(v17 + 40);

LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74F0, &unk_1B4D35700);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B4D1BE00;
  v25 = MEMORY[0x1E69E6158];
  *(v24 + 56) = MEMORY[0x1E69E6158];
  v26 = sub_1B49DA914();
  *(v24 + 32) = a3;
  *(v24 + 40) = a4;
  *(v24 + 96) = v25;
  *(v24 + 104) = v26;
  *(v24 + 64) = v26;
  *(v24 + 72) = v15;
  *(v24 + 80) = v14;
  *(v24 + 136) = v25;
  *(v24 + 144) = v26;
  *(v24 + 112) = v19;
  *(v24 + 120) = v18;

  return sub_1B4D1819C();
}

unint64_t sub_1B49DA600(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1 > 36)
  {
    if (a1 > 49)
    {
      switch(a1)
      {
        case '2':
          v4 = " previous responses.";
          v6 = &unk_1F2CB9538;
          v7 = &unk_1F2CB9588;
          v5 = 0xD000000000000660;
          goto LABEL_30;
        case '4':
          if (a2)
          {
            v6 = &unk_1F2CB9178;
            v7 = &unk_1F2CB91C8;
            v5 = 0xD0000000000006D2;
            v12 = 0x80000001B4D570F0;
          }

          else
          {
            v6 = &unk_1F2CB9218;
            v7 = &unk_1F2CB9268;
            v5 = 0xD00000000000067CLL;
            v12 = 0x80000001B4D56A70;
          }

          goto LABEL_31;
        case '?':
          v4 = "vious responses.";
          v5 = 0xD0000000000005DDLL;
          v6 = &unk_1F2CB9498;
          v7 = &unk_1F2CB94E8;
LABEL_30:
          v12 = v4 | 0x8000000000000000;
LABEL_31:
          v13 = v6;
          v14 = v7;
          goto LABEL_32;
      }

      goto LABEL_25;
    }

    if (a1 != 37)
    {
      if (a1 == 44)
      {
        v4 = "istant's) previous responses.";
        v6 = &unk_1F2CB93F8;
        v7 = &unk_1F2CB9448;
        v5 = 0xD000000000000611;
        goto LABEL_30;
      }

      goto LABEL_25;
    }

    if (a2)
    {
      v4 = "tant's) previous responses.";
      v11 = 171;
      v6 = &unk_1F2CB8EF8;
      v7 = &unk_1F2CB8F48;
    }

    else
    {
      v4 = "revious responses.";
      v11 = 43;
      v6 = &unk_1F2CB8F98;
      v7 = &unk_1F2CB8FE8;
    }

LABEL_29:
    v5 = v11 | 0xD000000000000610;
    goto LABEL_30;
  }

  if (a1 > 19)
  {
    if (a1 == 20)
    {
      v4 = "vious responses.";
      v6 = &unk_1F2CB95D8;
      v7 = &unk_1F2CB9628;
      v5 = 0xD000000000000664;
      goto LABEL_30;
    }

    if (a1 == 24)
    {
      v4 = "vious responses.";
      v11 = 100;
      v6 = &unk_1F2CB92B8;
      v7 = &unk_1F2CB9308;
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if (a1 == 13)
  {
    if (a2)
    {
      v4 = "evious responses.";
      v5 = 0xD000000000000602;
      v6 = &unk_1F2CB9038;
      v7 = &unk_1F2CB9088;
      goto LABEL_30;
    }

    v4 = "revious responses.";
    v11 = 65;
    v6 = &unk_1F2CB90D8;
    v7 = &unk_1F2CB9128;
    goto LABEL_29;
  }

  if (a1 != 16)
  {
LABEL_25:
    v8 = "nce/WorkoutVoiceSession.swift";
    v9 = &unk_1F2CB9678;
    v10 = &unk_1F2CB96C8;
    goto LABEL_26;
  }

  v8 = "evious responses.";
  v9 = &unk_1F2CB9358;
  v10 = &unk_1F2CB93A8;
LABEL_26:
  v12 = v8 | 0x8000000000000000;
  v13 = v9;
  v14 = v10;
  v5 = 0xD000000000000610;
LABEL_32:
  v15 = sub_1B49DA3F4(v13, v14, a3, a4, v5, v12);
  swift_arrayDestroy();
  swift_arrayDestroy();
  return v15;
}

unint64_t sub_1B49DA914()
{
  result = qword_1EB8A74F8;
  if (!qword_1EB8A74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A74F8);
  }

  return result;
}

unint64_t static WorkoutVoiceMilestoneWorkoutDurationFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B49DB028(v3, v1, v2);
}

uint64_t static WorkoutVoiceMilestoneWorkoutDurationFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49AA274;

  return sub_1B49DB7C8(a1, a2, a3, a4);
}

uint64_t WorkoutVoiceMilestoneWorkoutDurationFact.QueryIdentifier.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

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

unint64_t WorkoutVoiceMilestoneWorkoutDurationFact.QueryIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_1B49DAB20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v2)
  {
    v4 = " work done today!'";
  }

  else
  {
    v4 = "lastSixWeeksWorkoutProperties";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000019;
  }

  else
  {
    v6 = 0xD00000000000001DLL;
  }

  if (*a2)
  {
    v7 = "lastSixWeeksWorkoutProperties";
  }

  else
  {
    v7 = " work done today!'";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();
  }

  return v9 & 1;
}

uint64_t sub_1B49DABCC()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B49DAC4C(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B49DACB8(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B49DAD34@<X0>(char *a2@<X8>)
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

void sub_1B49DAD94(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v1)
  {
    v3 = "lastSixWeeksWorkoutProperties";
  }

  else
  {
    v3 = " work done today!'";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

int *sub_1B49DADD4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  v10 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact(0);
  v11 = v10[5];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  (*(*(v12 - 8) + 16))(&a5[v11], a1, v12);
  result = type metadata accessor for WorkoutState(0);
  if (__OFADD__(a4, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = *(a3 + result[6]);
    *a5 = 1;
    a5[v10[6]] = v9;
    *&a5[v10[7]] = v14;
    *&a5[v10[8]] = a4 + 1;
    (*(*(v10 - 1) + 56))(a5, 0, 1, v10);

    return v14;
  }

  return result;
}

unint64_t sub_1B49DAF18(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B49DB028(v3, v1, v2);
}

uint64_t sub_1B49DAF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DD034;

  return sub_1B49DB7C8(a1, a2, a3, a4);
}

unint64_t sub_1B49DB028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateRangeDescriptor(0);
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v77 = v64 - v12;
  v13 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B4D1777C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v78 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v23, a1, a2, v21);
  v24 = sub_1B498AFB8(0, &qword_1EB8A6C80, 0x1E699C9F8);
  sub_1B49A79FC(v23, v24, a2, a3);
  v26 = *(v25 + 16);
  v27 = 32;
  do
  {
    if (!v26)
    {

      v53 = sub_1B4C952F4(MEMORY[0x1E69E7CC0]);
      goto LABEL_10;
    }

    v28 = *(v25 + v27);
    v27 += 8;
    --v26;
  }

  while (v28 != 3);
  v67 = v8;
  v69 = v19;

  v29 = v78;
  (*(a3 + 80))(a2, a3);
  v68 = v17;
  v64[0] = *(v17 + 16);
  (v64[0])(v15, v29, v16);
  v30 = v76;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1B4D1A800;
  v32 = *(a3 + 56);
  v71 = a2;
  v33 = v32(a2, a3);
  v34 = [v33 effectiveTypeIdentifier];
  v73 = v16;
  v35 = v34;

  *(v31 + 32) = v35;
  v36 = MEMORY[0x1E69E7CC0];
  v37 = v15;
  v38 = &v15[v13[5]];
  *v38 = MEMORY[0x1E69E7CC0];
  *(v38 + 1) = v36;
  *(v38 + 2) = v36;
  *(v38 + 3) = v31;
  *(v38 + 4) = v36;
  *(v38 + 5) = v36;
  *(v37 + v13[6]) = &unk_1F2CB8948;
  v66 = v13;
  *(v37 + v13[7]) = &unk_1F2CB8970;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7260, &qword_1B4D1D588);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7268, &qword_1B4D1D590);
  v40 = *(*(v39 - 8) + 72);
  v41 = (*(*(v39 - 8) + 80) + 32) & ~*(*(v39 - 8) + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1B4D1AA70;
  v65 = v42;
  v43 = (v42 + v41);
  v72 = v39;
  v44 = *(v39 + 48);
  *v43 = 0;
  sub_1B49DCF64(v37, &v43[v44], type metadata accessor for WorkoutPropertiesQuery);
  v64[1] = type metadata accessor for FitnessContextQueryDescriptor(0);
  swift_storeEnumTagMultiPayload();
  v45 = &v43[v40];
  *v45 = 1;
  v46 = v77;
  (v64[0])(v77, v78, v73);
  swift_storeEnumTagMultiPayload();
  v47 = v75;
  (*(v75 + 56))(v46, 0, 1, v30);
  v48 = v46;
  v49 = v74;
  sub_1B4974FBC(v48, v74, &qword_1EB8A67A8, &qword_1B4D1E060);
  v50 = *(v47 + 48);
  v51 = v50(v49, 1, v30);
  v70 = v37;
  if (v51 == 1)
  {
    v52 = v67;
    sub_1B49DCF64(v37, v67, type metadata accessor for DateRangeDescriptor);
    if (v50(v49, 1, v30) != 1)
    {
      sub_1B4975024(v49, &qword_1EB8A67A8, &qword_1B4D1E060);
    }
  }

  else
  {
    v52 = v67;
    sub_1B49DCFCC(v49, v67, type metadata accessor for DateRangeDescriptor);
  }

  v54 = &v45[*(v72 + 48)];
  v56 = *v38;
  v55 = *(v38 + 1);
  v58 = *(v38 + 2);
  v57 = *(v38 + 3);
  v60 = *(v38 + 4);
  v59 = *(v38 + 5);
  sub_1B49DCF64(v52, v54, type metadata accessor for DateRangeDescriptor);

  sub_1B49BFEC0(v52, type metadata accessor for DateRangeDescriptor);
  v61 = v66;
  v62 = (v54 + v66[5]);
  *v62 = v56;
  v62[1] = v55;
  v62[2] = v58;
  v62[3] = v57;
  v62[4] = v60;
  v62[5] = v59;
  *(v54 + v61[6]) = &unk_1F2CB8948;
  *(v54 + v61[7]) = &unk_1F2CB8970;
  sub_1B4975024(v77, &qword_1EB8A67A8, &qword_1B4D1E060);
  swift_storeEnumTagMultiPayload();
  v53 = sub_1B4C952F4(v65);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B49BFEC0(v70, type metadata accessor for WorkoutPropertiesQuery);
  (*(v68 + 8))(v78, v73);
  a2 = v71;
  v19 = v69;
LABEL_10:
  (*(v19 + 8))(v23, a2);
  return v53;
}

uint64_t sub_1B49DB7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v4[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7528, &qword_1B4D1E430);
  v4[32] = swift_task_alloc();
  v5 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact(0);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7530, &unk_1B4D40250);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  v4[41] = v7;
  v4[42] = *(v7 - 8);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v8 = type metadata accessor for WorkoutState(0);
  v4[47] = v8;
  v4[48] = *(v8 - 8);
  v4[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B49DBB0C, 0, 0);
}

uint64_t sub_1B49DBB0C()
{
  v95 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 368);
  sub_1B4974FBC(*(v0 + 208), v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    sub_1B4975024(*(v0 + 368), &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_12:
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v25 = sub_1B4D17F6C();
    __swift_project_value_buffer(v25, qword_1EDC36F00);
    v26 = sub_1B4D17F5C();
    v27 = sub_1B4D1873C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v93 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1B49558AC(0xD000000000000028, 0x80000001B4D591F0, &v93);
      _os_log_impl(&dword_1B4953000, v26, v27, "Context or snapshots don't exist for %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1B8C7DDA0](v29, -1, -1);
      MEMORY[0x1B8C7DDA0](v28, -1, -1);
    }

    goto LABEL_17;
  }

  v89 = v4;
  v5 = *(v0 + 192);
  sub_1B49DCFCC(*(v0 + 368), *(v0 + 392), type metadata accessor for WorkoutState);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  *(v0 + 176) = &type metadata for WorkoutVoiceMilestoneWorkoutDurationFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7538, &qword_1B4D1E438);
  v93 = sub_1B4D181CC();
  v94 = v8;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001DLL, 0x80000001B4D4AAF0);

  (*(v7 + 8))(v93, v94, &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v6, v7);

  v9 = *(v0 + 144);
  if (!v9)
  {
    v17 = *(v0 + 392);
LABEL_11:
    sub_1B49BFEC0(v17, type metadata accessor for WorkoutState);
    goto LABEL_12;
  }

  v11 = v5[3];
  v10 = v5[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 192), v11);
  *(v0 + 184) = &type metadata for WorkoutVoiceMilestoneWorkoutDurationFact.QueryIdentifier;
  v93 = sub_1B4D181CC();
  v94 = v12;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4AB10);

  (*(v10 + 8))(v93, v94, &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v11, v10);

  v13 = *(v0 + 168);
  if (!v13)
  {
    v18 = *(v0 + 392);

LABEL_10:
    v17 = v18;
    goto LABEL_11;
  }

  v14 = *(v0 + 152);
  v15 = *(v0 + 160);
  v16 = *(v0 + 320);
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_1B4CE5168((v0 + 80), v9, v16);
  v20 = *(v0 + 328);
  v19 = *(v0 + 336);
  v21 = *(v0 + 320);

  v22 = *(v19 + 48);
  v23 = v22(v21, 1, v20);
  if (v23 == 1)
  {
    v18 = *(v0 + 392);
    v24 = *(v0 + 320);

    sub_1B4975024(v24, &qword_1EB8A7530, &unk_1B4D40250);
    goto LABEL_10;
  }

  v32 = *(v0 + 312);
  sub_1B49DCEE8(*(v0 + 320), *(v0 + 352));
  sub_1B4CE5168((v0 + 80), v13, v32);
  v33 = *(v0 + 328);
  v34 = *(v0 + 312);
  if (v22(v34, 1, v33) == 1)
  {
    v35 = *(v0 + 392);
    sub_1B4975024(*(v0 + 352), &qword_1EB8A6858, &qword_1B4D1AB70);

    sub_1B4975024(v34, &qword_1EB8A7530, &unk_1B4D40250);
    v17 = v35;
    goto LABEL_11;
  }

  v36 = *(v0 + 352);
  sub_1B49DCEE8(v34, *(v0 + 344));
  if (*(v36 + *(v33 + 28)) >= 1)
  {
    sub_1B4D1742C();
  }

  v37 = *(v0 + 344);
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  v38 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1741C();
  v39 = *(v0 + 392);
  if (*(v37 + *(v33 + 28)) < 1)
  {
    v53 = *(v0 + 344);
    v52 = *(v0 + 352);
    v54 = *(v0 + 296);
    v55 = *(v0 + 304);
    v56 = *(v0 + 288);

    (*(v54 + 8))(v55, v56);
    sub_1B4975024(v53, &qword_1EB8A6858, &qword_1B4D1AB70);
    sub_1B4975024(v52, &qword_1EB8A6858, &qword_1B4D1AB70);
    sub_1B49BFEC0(v39, type metadata accessor for WorkoutState);
LABEL_17:
    v91 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v87 = *(v37 + *(v33 + 28));
  v40 = *(v0 + 376);
  v41 = *(v0 + 296);
  v79 = *(v0 + 288);
  v80 = *(v0 + 304);
  v42 = *(v0 + 240);
  v78 = *(v0 + 248);
  v82 = *(v0 + 232);
  v84 = *(v0 + 216);
  v85 = *(v0 + 360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7540, &qword_1B4D1E440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4D1A800;
  v44 = v39;
  *(inited + 32) = 3;
  v45 = inited + 32;
  *(inited + 40) = v14;
  *(inited + 48) = v15;
  *(inited + 56) = v13;
  v86 = sub_1B4C95564(inited);
  swift_setDeallocating();
  sub_1B4975024(v45, &qword_1EB8A7548, &qword_1B4D1E448);
  v88 = [*(v44 + *(v40 + 24)) effectiveTypeIdentifier];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  (*(*(v46 - 8) + 56))(v78, 1, 1, v46);
  (*(v41 + 16))(v42, v80, v79);
  v47 = *(v41 + 56);
  v47(v42, 0, 1, v79);
  v81 = objc_opt_self();
  v48 = [v81 seconds];
  v49 = v82;
  sub_1B4D1741C();
  v83 = v47;
  v47(v49, 0, 1, v79);
  sub_1B4974FBC(v84, v85, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v50 = v89(v85, 1, v40);
  v51 = *(v0 + 360);
  if (v50 == 1)
  {
    sub_1B4975024(v51, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  }

  else
  {
    sub_1B49BFEC0(v51, type metadata accessor for WorkoutState);
  }

  v57 = *(v0 + 392);
  v58 = *(v0 + 288);
  v59 = *(v0 + 272);
  v92 = *(v0 + 264);
  v60 = *(v0 + 256);
  v90 = *(v0 + 248);
  v61 = *(v0 + 240);
  v62 = *(v0 + 232);
  v63 = *(v0 + 224);
  v64 = *(v0 + 200);
  v65 = [v81 seconds];
  sub_1B4D1741C();
  v83(v63, 0, 1, v58);
  v66 = swift_task_alloc();
  *(v66 + 16) = v57;
  *(v66 + 24) = v87;
  sub_1B4B8907C(2, v86, v88, v90, v61, v62, v63, 1, v60, v64, sub_1B49DCF58, v66);

  sub_1B4975024(v63, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4975024(v62, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4975024(v61, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4975024(v90, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v67 = (*(v59 + 48))(v60, 1, v92);
  v68 = *(v0 + 392);
  v70 = *(v0 + 344);
  v69 = *(v0 + 352);
  v71 = *(v0 + 296);
  v72 = *(v0 + 304);
  v73 = *(v0 + 288);
  if (v67 == 1)
  {
    sub_1B4975024(*(v0 + 256), &qword_1EB8A7528, &qword_1B4D1E430);
    (*(v71 + 8))(v72, v73);
    sub_1B4975024(v70, &qword_1EB8A6858, &qword_1B4D1AB70);
    sub_1B4975024(v69, &qword_1EB8A6858, &qword_1B4D1AB70);
    sub_1B49BFEC0(v68, type metadata accessor for WorkoutState);
    goto LABEL_17;
  }

  v75 = *(v0 + 272);
  v74 = *(v0 + 280);
  sub_1B49DCFCC(*(v0 + 256), v74, type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8A7550, &unk_1B4D1E450);
  v76 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1B4D1A800;
  v91 = v77;
  sub_1B49DCFCC(v74, v77 + v76, type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact);
  (*(v71 + 8))(v72, v73);
  sub_1B4975024(v70, &qword_1EB8A6858, &qword_1B4D1AB70);
  sub_1B4975024(v69, &qword_1EB8A6858, &qword_1B4D1AB70);
  sub_1B49BFEC0(v68, type metadata accessor for WorkoutState);
LABEL_18:

  v30 = *(v0 + 8);

  return v30(v91);
}

void _s19FitnessIntelligence021WorkoutVoiceMilestoneC12DurationFactV10makePrompt15promptFormatterSSAA0iK0C_tF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - v4;
  v6 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact(0);
  v7 = [objc_opt_self() minutes];
  sub_1B4D1745C();

  [*(v0 + v6[7]) effectiveTypeIdentifier];
  v8 = FILocalizedNameForIndoorAgnosticActivityType();
  if (!v8)
  {
    goto LABEL_32;
  }

  v9 = v8;
  v10 = sub_1B4D1818C();
  v12 = v11;

  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  sub_1B4D1896C();

  strcpy(v35, "I passed the ");
  HIWORD(v35[1]) = -4864;
  sub_1B4D1742C();
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  v29 = v5;
  v30 = v3;
  v33 = v13;
  v14 = sub_1B4D18D5C();
  MEMORY[0x1B8C7C620](v14);

  MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D591B0);
  MEMORY[0x1B8C7C620](v10, v12);
  MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xEA00000000002073);
  v15 = v6[6];
  v16 = *(v1 + v15);
  v31 = v2;
  if (v16 <= 1)
  {
    if (v16)
    {
      v17 = 0x6565772073696874;
      v18 = 0xE90000000000006BLL;
    }

    else
    {
      v18 = 0xE800000000000000;
      v17 = 0x7961642073696874;
    }
  }

  else if (v16 == 2)
  {
    v17 = 0x6E6F6D2073696874;
    v18 = 0xEA00000000006874;
  }

  else if (v16 == 3)
  {
    v17 = 0x6165792073696874;
    v18 = 0xE900000000000072;
  }

  else
  {
    v18 = 0xE400000000000000;
    v17 = 1919252069;
  }

  MEMORY[0x1B8C7C620](v17, v18);

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1B4D1896C();

  v33 = 0xD000000000000019;
  v34 = 0x80000001B4D591D0;
  v32 = *(v1 + v6[8]);
  v19 = v32;
  v20 = sub_1B4D18D5C();
  MEMORY[0x1B8C7C620](v20);

  MEMORY[0x1B8C7C620](32, 0xE100000000000000);
  MEMORY[0x1B8C7C620](v10, v12);

  v21 = 0xE800000000000000;
  MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xE800000000000000);
  if (v19 <= 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = 115;
  }

  if (v19 <= 1)
  {
    v23 = 0xE000000000000000;
  }

  else
  {
    v23 = 0xE100000000000000;
  }

  MEMORY[0x1B8C7C620](v22, v23);

  MEMORY[0x1B8C7C620](32, 0xE100000000000000);
  v24 = *(v1 + v15);
  if (v24 <= 1)
  {
    v26 = v30;
    v25 = v31;
    v28 = 0x7961642073696874;
    v27 = v29;
    if (*(v1 + v15))
    {
      v28 = 0x6565772073696874;
      v21 = 0xE90000000000006BLL;
    }
  }

  else
  {
    v26 = v30;
    v25 = v31;
    v27 = v29;
    if (v24 == 2)
    {
      v28 = 0x6E6F6D2073696874;
      v21 = 0xEA00000000006874;
    }

    else if (v24 == 3)
    {
      v28 = 0x6165792073696874;
      v21 = 0xE900000000000072;
    }

    else
    {
      v21 = 0xE400000000000000;
      v28 = 1919252069;
    }
  }

  MEMORY[0x1B8C7C620](v28, v21);

  MEMORY[0x1B8C7C620](v33, v34);

  (*(v26 + 8))(v27, v25);
}

unint64_t sub_1B49DCD00()
{
  result = qword_1EB8A7500;
  if (!qword_1EB8A7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7500);
  }

  return result;
}

unint64_t sub_1B49DCD54(uint64_t a1)
{
  *(a1 + 8) = sub_1B49DCD84();
  result = sub_1B49DCDD8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B49DCD84()
{
  result = qword_1EB8A7508;
  if (!qword_1EB8A7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7508);
  }

  return result;
}

unint64_t sub_1B49DCDD8()
{
  result = qword_1EB8A7510;
  if (!qword_1EB8A7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7510);
  }

  return result;
}

uint64_t sub_1B49DCE2C(uint64_t a1)
{
  *(a1 + 8) = sub_1B49DCE94(&qword_1EB8A7518, &protocol conformance descriptor for WorkoutVoiceMilestoneWorkoutDurationFact);
  result = sub_1B49DCE94(&qword_1EB8A7520, &protocol conformance descriptor for WorkoutVoiceMilestoneWorkoutDurationFact);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B49DCE94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B49DCEE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49DCF64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49DCFCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49DD038(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1 <= 36)
  {
    if (a1 > 19)
    {
      if (a1 == 20)
      {
        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
        MEMORY[0x1B8C7C620](a3, a4);
        v6 = "r accomplishments etc.";
        v7 = 0xD000000000000797;
        goto LABEL_31;
      }

      if (a1 != 24)
      {
        goto LABEL_26;
      }

      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
      MEMORY[0x1B8C7C620](a3, a4);
      v8 = "}\n\n[Moment Instruction]: Give the user a pep talk of about 20 to 30 words to boost their motivation at the start of their workout. Begin the message by acknowledging the effort it took for them to show up. AVOID judgmental or unearned praise like great start or Starting strong. Then celebrate their recent achievements, focussing on the last few days and how they relate to the current activity. Keep the achievement celebration specific and self-contained, meaning it conveys all necessary information (e.g., workout type, metric, time scale) for a user to fully understand the statement without relying on the fitness context or additional information. If they had a great workout yesterday, acknowledge it. If they did a different type of workout yesterday, emphasize how it complements or prepares them for today's hike. Foster a sense of progress throughout the week. Celebrate consistency or any notable improvements. If the user provides information about training load or alert, restate it by changing the pronoun from My to Your or from I to You, For example, My 7-day training load is.. should be restated as Your 7-day training load is.. and I have an alert set for.. should be restated as You have an alert set for... Do not interpret it, draw conclusions, associate it with other facts, use it to motivate the user, or make suggestions based on it. Simply repeat what the user said using the correct pronouns, and make it a standalone sentence. If the user does not mention training load or alerts, do not bring them up at all. End the pep talk by sending them off with a soft final push into their activity. If the user is listening to media (e.g., music, podcast or book), you can reference the artist and/or the genre if provided to motivate the user as they get their workout started. Adapt this media mention based on the fitness context such as the workout type, intensity, user accomplishments etc. Media Mention Example: Let's kick off your hike with some electronic beats from Jeffrey Hernandez.";
      goto LABEL_30;
    }

    if (a1 != 13)
    {
      if (a1 == 16)
      {
        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
        MEMORY[0x1B8C7C620](a3, a4);
        v6 = "from Jeffrey Hernandez.";
        v7 = 0xD000000000000792;
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    if (a2)
    {
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = " from Jeffrey Hernandez.";
      v7 = 0xD000000000000783;
    }

    else
    {
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = " from Jeffrey Hernandez.";
      v7 = 0xD0000000000007F9;
    }
  }

  else
  {
    if (a1 > 49)
    {
      if (a1 != 50)
      {
        if (a1 != 52)
        {
          if (a1 == 63)
          {
            sub_1B4D1896C();
            MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
            MEMORY[0x1B8C7C620](a3, a4);
            v6 = "from Jeffrey Hernandez.";
            v7 = 0xD000000000000772;
            goto LABEL_31;
          }

LABEL_26:
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "xt at the *peptalk* moment:\n\n{";
          v7 = 0xD000000000000706;
          goto LABEL_31;
        }

        if (a2)
        {
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "from Jeffrey Hernandez.";
          v7 = 0xD0000000000008B9;
          goto LABEL_31;
        }

        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
        MEMORY[0x1B8C7C620](a3, a4);
        v8 = "}\n\n[Moment Instruction]: Give the user a pep talk of about 20 to 30 words to boost their motivation at the start of their workout. Begin the message by acknowledging the effort it took for them to show up. AVOID judgmental or unearned praise like great start or Starting strong. Then celebrate their recent achievements, focussing on the last few days and how they relate to the current activity. Keep the achievement celebration specific and self-contained, meaning it conveys all necessary information (e.g., workout type, metric, time scale) for a user to fully understand the statement without relying on the fitness context or additional information. If they had a great workout yesterday, acknowledge it. If they did a different type of workout yesterday, emphasize how it complements or prepares them for today's walk. Foster a sense of progress throughout the week. Celebrate consistency or any notable improvements. If the user provides information about training load or alert, restate it by changing the pronoun from My to Your or from I to You, For example, My 7-day training load is.. should be restated as Your 7-day training load is.. and I have an alert set for.. should be restated as You have an alert set for... Do not interpret it, draw conclusions, associate it with other facts, use it to motivate the user, or make suggestions based on it. Simply repeat what the user said using the correct pronouns, and make it a standalone sentence. If the user does not mention training load or alerts, do not bring them up at all. End the pep talk by sending them off with a soft final push into their activity. If the user is listening to media (e.g., music, podcast or book), you can reference the artist and/or the genre if provided to motivate the user as they get their workout started. Adapt this media mention based on the fitness context such as the workout type, intensity, user accomplishments etc. Media Mention Example: Let's kick off your walk with some electronic beats from Jeffrey Hernandez.";
LABEL_30:
        v6 = (v8 - 32);
        v7 = 0xD0000000000007F8;
        goto LABEL_31;
      }

      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
      MEMORY[0x1B8C7C620](a3, a4);
      v9 = "}\n\n[Moment Instruction]: Give the user a 20-30 word pep talk when they start their Traditional Strength Training workout. Begin the message by acknowledging the effort it took for them to show up. AVOID judgmental or unearned praise like great start or Starting strong. Then highlight any recent achievements or streaks. Keep the achievement/streak celebration specific and self-contained, meaning it conveys all necessary information (e.g., workout type, metric, time scale) for a user to fully understand the statement without relying on the fitness context or additional information. Focus on positive reinforcement, and connect their current workout to their progress throughout the week. Encourage them to push themselves and let them know what they can expect to accomplish during the workout if relevant context is provided. If the user provides information about training load or alert, restate it by changing the pronoun from My to Your or from I to You, For example, My 7-day training load is.. should be restated as Your 7-day training load is.. and I have an alert set for.. should be restated as You have an alert set for... Do not interpret it, draw conclusions, associate it with other facts, use it to motivate the user, or make suggestions based on it. Simply repeat what the user said using the correct pronouns, and make it a standalone sentence. If the user does not mention training load or alerts, do not bring them up at all. End the pep talk with a motivational phrase to get them started. If the user is listening to media (e.g., music, podcast or book), you can reference the artist and/or the genre if provided to motivate the user as they get their workout started. Adapt this media mention based on the fitness context such as the workout type, intensity, user accomplishments etc. Media Mention Example: Let's kick off your strength training with some electronic beats from Jeffrey Hernandez.";
LABEL_21:
      v6 = (v9 - 32);
      v7 = 0xD000000000000798;
      goto LABEL_31;
    }

    if (a1 != 37)
    {
      if (a1 != 44)
      {
        goto LABEL_26;
      }

      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
      MEMORY[0x1B8C7C620](a3, a4);
      v9 = "}\n            \n[Moment Instruction]: Give the user a 20-30 word pep talk when they start their stair stepper workout. Begin the message by acknowledging the effort it took for them to show up. AVOID judgmental or unearned praise like great start or Starting strong. Then highlight any recent achievements or streaks. Keep the achievement/streak celebration specific and self-contained, meaning it conveys all necessary information (e.g., workout type, metric, time scale) for a user to fully understand the statement without relying on the fitness context or additional information. Focus on positive reinforcement, and connect their current workout to their progress throughout the week. Encourage them to push themselves and let them know what they can expect to accomplish during the workout if relevant context is provided. If the user provides information about training load or alert, restate it by changing the pronoun from My to Your or from I to You, For example, My 7-day training load is.. should be restated as Your 7-day training load is.. and I have an alert set for.. should be restated as You have an alert set for... Do not interpret it, draw conclusions, associate it with other facts, use it to motivate the user, or make suggestions based on it. Simply repeat what the user said using the correct pronouns, and make it a standalone sentence. If the user does not mention training load or alerts, do not bring them up at all. End the pep talk with a motivational phrase to get them started. If the user is listening to media (e.g., music, podcast or book), you can reference the artist and/or the genre if provided to motivate the user as they get their workout started. Adapt this media mention based on the fitness context such as the workout type, intensity, user accomplishments etc. Media Mention Example: Let's kick off your stair stepper workout with some electronic beats from Jeffrey Hernandez.";
      goto LABEL_21;
    }

    if (a2)
    {
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = "om Jeffrey Hernandez.";
      v7 = 0xD000000000000866;
    }

    else
    {
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = "Jeffrey Hernandez.";
      v7 = 0xD0000000000007F6;
    }
  }

LABEL_31:
  MEMORY[0x1B8C7C620](v7, v6 | 0x8000000000000000);
  return 0;
}

BOOL static CodableBridging.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = v4, objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
  {
    v7 = v6;
    v8 = v2;
    v9 = v3;
    [v5 coordinate];
    v11 = v10;
    [v7 coordinate];
    if (v11 == v12)
    {
      [v5 coordinate];
      v14 = v13;
      [v7 coordinate];
      v16 = v15;

      return v14 == v16;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    return sub_1B4D187AC() & 1;
  }
}

BOOL sub_1B49DD720(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B4D18B1C();

  return v2 != 0;
}

uint64_t sub_1B49DD768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B49DD7DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B49DD848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B49DD8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_1B49DD928@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B49DD720(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_1B49DD988@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B49DD720(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B49DD9B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B497CEA0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B49DD9E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B49DDA38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CodableBridging.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  type metadata accessor for CodableBridging.CodingKeys(255, *(a2 + 16), a3, a4);
  swift_getWitnessTable();
  v20 = sub_1B4D18D2C();
  v6 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v8 = &v19 - v7;
  v9 = *v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4D18EFC();
  v10 = objc_opt_self();
  v21[0] = 0;
  v11 = [v10 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v21];
  v12 = v21[0];
  if (v11)
  {
    v13 = sub_1B4D176BC();
    v15 = v14;

    v21[0] = v13;
    v21[1] = v15;
    sub_1B49DDCD8();
    v16 = v20;
    sub_1B4D18D0C();
    (*(v6 + 8))(v8, v16);
    return sub_1B49DDD2C(v13, v15);
  }

  else
  {
    v18 = v12;
    sub_1B4D1760C();

    swift_willThrow();
    return (*(v6 + 8))(v8, v20);
  }
}

unint64_t sub_1B49DDCD8()
{
  result = qword_1EDC37848;
  if (!qword_1EDC37848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37848);
  }

  return result;
}

uint64_t sub_1B49DDD2C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t CodableBridging.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v17 = a5;
  type metadata accessor for CodableBridging.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v7 = sub_1B4D18C3C();
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4D18EEC();
  if (!v5)
  {
    v10 = v20;
    sub_1B49DDFEC();
    sub_1B4D18C0C();
    v12 = v18;
    v11 = v19;
    sub_1B498AFB8(0, &qword_1EB8A7568, 0x1E696ACD0);
    v13 = sub_1B4D1875C();
    if (v13)
    {
      v14 = v13;
      (*(v10 + 8))(v9, v7);
      sub_1B49DDD2C(v12, v11);
      *v17 = v14;
    }

    else
    {
      sub_1B49DE040();
      swift_allocError();
      swift_willThrow();
      sub_1B49DDD2C(v12, v11);
      (*(v10 + 8))(v9, v7);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1B49DDFEC()
{
  result = qword_1EDC37840;
  if (!qword_1EDC37840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37840);
  }

  return result;
}

unint64_t sub_1B49DE040()
{
  result = qword_1EB8A7570;
  if (!qword_1EB8A7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7570);
  }

  return result;
}

void CodableBridging.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  sub_1B4D187BC();
}

uint64_t CodableBridging.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  v2 = v1;
  sub_1B4D187BC();

  return sub_1B4D18EDC();
}

uint64_t sub_1B49DE17C(uint64_t a1)
{
  sub_1B4D18E8C();
  CodableBridging.hash(into:)(v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B49DE1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1B49DE260()
{
  result = qword_1EB8A7658;
  if (!qword_1EB8A7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7658);
  }

  return result;
}

uint64_t StreamingAudioAvailable.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C0, &qword_1B4D1E798);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = &v51 - v4;
  v53 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v58 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v51 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v57 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C8, &unk_1B4D22410);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v51 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[1];
  v52 = *a1;
  v59 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  v60 = a1;
  sub_1B4974FBC(a1 + v59[7], v14, &qword_1EB8A76C8, &unk_1B4D22410);
  v20 = *(v16 + 48);
  if (v20(v14, 1, v15) == 1)
  {
    *(v18 + 4) = 0;
    *v18 = 0u;
    *(v18 + 1) = 0u;

    sub_1B4D17BBC();
    v21 = v20(v14, 1, v15);
    v22 = v19;
    if (v21 != 1)
    {
      sub_1B4975024(v14, &qword_1EB8A76C8, &unk_1B4D22410);
    }
  }

  else
  {
    sub_1B49DF204(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);

    v22 = v19;
  }

  v23 = *v18;
  v24 = *(v18 + 1);
  v25 = *(v18 + 2);
  v26 = *(v18 + 3);
  v27 = *(v18 + 4);
  sub_1B49DF1A4(v18, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  v28 = v60;
  v29 = v60[2];
  v30 = v60[3];
  sub_1B4974FBC(v60 + v59[8], v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v31 = *(v57 + 48);
  if (v31(v8, 1, v9) == 1)
  {

    sub_1B4D17BBC();
    v32 = &v11[*(v9 + 20)];
    *v32 = 0;
    *(v32 + 1) = 0;
    v33 = &v11[*(v9 + 24)];
    *v33 = 0;
    *(v33 + 1) = 0;
    v34 = v31(v8, 1, v9);
    v35 = v58;
    if (v34 != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
    }
  }

  else
  {
    sub_1B49DF204(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);

    v35 = v58;
  }

  v36 = &v11[*(v9 + 20)];
  v37 = *(v36 + 1);
  if (!v37)
  {
    v45 = 0;
LABEL_16:
    sub_1B498C3D8();
    swift_allocError();
    *v46 = v45;
    swift_willThrow();
    sub_1B49DF1A4(v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    sub_1B49DF1A4(v28, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable);
  }

  v38 = &v11[*(v9 + 24)];
  v39 = *(v38 + 1);
  if (!v39)
  {
    v45 = 1;
    goto LABEL_16;
  }

  v57 = *v36;
  v58 = v22;
  v51 = *v38;

  sub_1B49DF1A4(v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v40 = v55;
  sub_1B4974FBC(v28 + v59[9], v55, &qword_1EB8A76C0, &qword_1B4D1E798);
  v41 = *(v35 + 48);
  v42 = v53;
  if (v41(v40, 1, v53) == 1)
  {
    v43 = v54;
    *v54 = 0;
    *(v43 + 8) = 1;
    v44 = v43;
    sub_1B4D17BBC();
    if (v41(v40, 1, v42) != 1)
    {
      sub_1B4975024(v40, &qword_1EB8A76C0, &qword_1B4D1E798);
    }
  }

  else
  {
    v44 = v54;
    sub_1B49DF204(v40, v54, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  }

  AudioSynthesisIntensity.init(_:)(v44, &v61);
  result = sub_1B49DF1A4(v60, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable);
  v48 = v61;
  v49 = v56;
  v50 = v58;
  *v56 = v52;
  v49[1] = v50;
  v49[2] = v23;
  v49[3] = v24;
  v49[4] = v25;
  v49[5] = v26;
  v49[6] = v27;
  v49[7] = v29;
  v49[8] = v30;
  v49[9] = v57;
  v49[10] = v37;
  v49[11] = v51;
  v49[12] = v39;
  *(v49 + 104) = v48;
  return result;
}

uint64_t StreamingAudioAvailable.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B49DF3A4(&qword_1EB8A76D0, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioAvailable);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49DEA70(char *a1, uint64_t *a2, double a3)
{
  v31 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v39 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = a2[1];

  *a1 = v13;
  *(a1 + 1) = v14;
  v15 = *(a2 + 2);
  v37[0] = *(a2 + 1);
  v37[1] = v15;
  v38 = a2[6];
  v36 = v37;
  sub_1B49DF3A4(&qword_1EB8A76E8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioStreamDescription);
  v16 = v28;
  sub_1B4D17DAC();
  v28 = v16;
  v17 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  v18 = v17[7];
  sub_1B4975024(&a1[v18], &qword_1EB8A76C8, &unk_1B4D22410);
  sub_1B49DF204(v12, &a1[v18], type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  (*(v10 + 56))(&a1[v18], 0, 1, v9);
  v20 = a2[7];
  v19 = a2[8];

  *(a1 + 2) = v20;
  *(a1 + 3) = v19;
  v21 = a2[11];
  v22 = a2[12];
  v33 = *(a2 + 9);
  v34 = v21;
  v35 = v22;
  sub_1B49DF3A4(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4D17DAC();
  v23 = v17[8];
  sub_1B4975024(&a1[v23], &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B49DF204(v8, &a1[v23], type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  (*(v29 + 56))(&a1[v23], 0, 1, v6);
  v32 = *(a2 + 104);
  sub_1B49DF3A4(&qword_1EB8A76F0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  v25 = v30;
  v24 = v31;
  sub_1B4D17DAC();
  v26 = v17[9];
  sub_1B4975024(&a1[v26], &qword_1EB8A76C0, &qword_1B4D1E798);
  sub_1B49DF204(v25, &a1[v26], type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  return (*(v39 + 56))(&a1[v26], 0, 1, v24);
}

_OWORD *sub_1B49DEF10(uint64_t a1, double a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[5];
  v14[4] = v2[4];
  v15[0] = v8;
  *(v15 + 9) = *(v2 + 89);
  v9 = v2[1];
  v14[0] = *v2;
  v14[1] = v9;
  v10 = v2[3];
  v14[2] = v2[2];
  v14[3] = v10;
  v11 = sub_1B49DF318();
  v12 = v14;
  (*(v11 + 32))(a1, v11);
  if (!v3)
  {
    sub_1B49DF3A4(&qword_1EB8A76D0, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioAvailable);
    v12 = sub_1B4D17D6C();
    sub_1B49DF1A4(v7, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable);
  }

  return v12;
}

__n128 sub_1B49DF070@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  sub_1B4B21FE4(a2, a3, v8);
  if (!v3)
  {
    v6 = v9[0];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v6;
    *(a1 + 89) = *(v9 + 9);
    v7 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v7;
    result = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_1B49DF0C4()
{
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B49DF3A4(&qword_1EB8A76D0, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioAvailable);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49DF1A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B49DF204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B49DF318()
{
  result = qword_1EB8A76E0;
  if (!qword_1EB8A76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A76E0);
  }

  return result;
}

uint64_t sub_1B49DF3A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ConsistentWorkoutTrendFact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8 && (v9 = v8, objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) != 0))
  {
    v11 = v10;
    v12 = v2;
    v13 = v5;
    [v9 coordinate];
    v15 = v14;
    [v11 coordinate];
    if (v15 != v16)
    {

      return 0;
    }

    [v9 coordinate];
    v18 = v17;
    [v11 coordinate];
    v20 = v19;

    v21 = v18 == v20;
  }

  else
  {
    sub_1B49DF540();
    v21 = sub_1B4D187AC();
  }

  if (v4 == v7)
  {
    return v21 & (v3 == v6);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B49DF540()
{
  result = qword_1EB8A7560;
  if (!qword_1EB8A7560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB8A7560);
  }

  return result;
}

unint64_t sub_1B49DF58C()
{
  v1 = 0xD000000000000022;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1B49DF5E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B49DFD70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B49DF60C(uint64_t a1)
{
  v2 = sub_1B49DF878();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49DF648(uint64_t a1)
{
  v2 = sub_1B49DF878();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConsistentWorkoutTrendFact.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76F8, &unk_1B4D1E7F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v12[1] = *(v1 + 16);
  v12[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49DF878();
  v10 = v9;
  sub_1B4D18EFC();
  v16 = v10;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B1148(&qword_1EB8A6FA0, &protocol conformance descriptor for CodableBridging<A>);
  sub_1B4D18D0C();

  if (!v2)
  {
    v14 = 1;
    sub_1B4D18CEC();
    v13 = 2;
    sub_1B4D18CEC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B49DF878()
{
  result = qword_1EB8A7700;
  if (!qword_1EB8A7700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7700);
  }

  return result;
}

void ConsistentWorkoutTrendFact.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7708, &qword_1B4D1E800);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49DF878();
  sub_1B4D18EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v13[15] = 0;
    sub_1B49B1148(&qword_1EB8A6FB0, &protocol conformance descriptor for CodableBridging<A>);
    sub_1B4D18C0C();
    v9 = v14;
    v13[14] = 1;
    v10 = sub_1B4D18BEC();
    v13[13] = 2;
    v11 = sub_1B4D18BEC();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v11;
    v12 = v9;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

BOOL sub_1B49DFB54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = sub_1B49B0864(*a1, *a2);
  v7 = v3 == v5;
  if (v2 != v4)
  {
    v7 = 0;
  }

  return v6 && v7;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B49DFBC0(uint64_t *a1, int a2)
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

uint64_t sub_1B49DFC08(uint64_t result, int a2, int a3)
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

unint64_t sub_1B49DFC6C()
{
  result = qword_1EB8A7710;
  if (!qword_1EB8A7710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7710);
  }

  return result;
}

unint64_t sub_1B49DFCC4()
{
  result = qword_1EB8A7718;
  if (!qword_1EB8A7718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7718);
  }

  return result;
}

unint64_t sub_1B49DFD1C()
{
  result = qword_1EB8A7720;
  if (!qword_1EB8A7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7720);
  }

  return result;
}

uint64_t sub_1B49DFD70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001B4D5F830 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000002ELL && 0x80000001B4D5F860 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B49DFEA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7728, &qword_1B4D1E9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49DFF14()
{
  if (*v0)
  {
    return 0x6C61767265746E69;
  }

  else
  {
    return 0x72657470616461;
  }
}

uint64_t sub_1B49DFF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72657470616461 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

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

uint64_t sub_1B49E002C(uint64_t a1)
{
  v2 = sub_1B49E025C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49E0068(uint64_t a1)
{
  v2 = sub_1B49E025C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceRecordRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7730, &qword_1B4D1E9D8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49E025C();
  sub_1B4D18EFC();
  v8[15] = 0;
  sub_1B49E02B0();
  sub_1B4D18D0C();
  if (!v1)
  {
    v8[14] = 1;
    sub_1B4D174EC();
    sub_1B49E0628(&qword_1EB8A7740, MEMORY[0x1E6968130], MEMORY[0x1E6968138]);
    sub_1B4D18CAC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B49E025C()
{
  result = qword_1EB8A7738;
  if (!qword_1EB8A7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7738);
  }

  return result;
}

unint64_t sub_1B49E02B0()
{
  result = qword_1EDC36EB0;
  if (!qword_1EDC36EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36EB0);
  }

  return result;
}

uint64_t InferenceRecordRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7728, &qword_1B4D1E9D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7748, &qword_1B4D1E9E0);
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for InferenceRecordRequest(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49E025C();
  sub_1B4D18EEC();
  if (!v2)
  {
    v17 = v12;
    v13 = v19;
    v21 = 0;
    sub_1B49E05D4();
    sub_1B4D18C0C();
    sub_1B4D174EC();
    v20 = 1;
    sub_1B49E0628(&qword_1EB8A7758, MEMORY[0x1E6968130], MEMORY[0x1E6968150]);
    sub_1B4D18BAC();
    (*(v13 + 8))(v9, v7);
    v14 = v17;
    sub_1B49E0670(v6, v17);
    sub_1B49E06E0(v14, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1B49E05D4()
{
  result = qword_1EB8A7750;
  if (!qword_1EB8A7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7750);
  }

  return result;
}

uint64_t sub_1B49E0628(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B49E0670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7728, &qword_1B4D1E9D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49E06E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceRecordRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t InferenceFeedbackUpdateRequest.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4D177CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InferenceFeedbackUpdateRequest.feedbackId.getter()
{
  v1 = *(v0 + *(type metadata accessor for InferenceFeedbackUpdateRequest(0) + 20));

  return v1;
}

uint64_t sub_1B49E08CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B49E0904()
{
  if (*v0)
  {
    return 0x6B63616264656566;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_1B49E093C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xEA00000000006449)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

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

uint64_t sub_1B49E0A20(uint64_t a1)
{
  v2 = sub_1B49E0C54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49E0A5C(uint64_t a1)
{
  v2 = sub_1B49E0C54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceFeedbackUpdateRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7760, &qword_1B4D1E9E8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49E0C54();
  sub_1B4D18EFC();
  v8[15] = 0;
  sub_1B4D177CC();
  sub_1B49E0628(&qword_1EB8A7770, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1B4D18D0C();
  if (!v1)
  {
    type metadata accessor for InferenceFeedbackUpdateRequest(0);
    v8[14] = 1;
    sub_1B4D18CBC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B49E0C54()
{
  result = qword_1EB8A7768;
  if (!qword_1EB8A7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7768);
  }

  return result;
}

uint64_t InferenceFeedbackUpdateRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1B4D177CC();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7778, &qword_1B4D1E9F0);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v22 - v7;
  updated = type metadata accessor for InferenceFeedbackUpdateRequest(0);
  MEMORY[0x1EEE9AC00](updated);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49E0C54();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_1B49E0628(&qword_1EB8A7780, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v14 = v26;
  sub_1B4D18C0C();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = sub_1B4D18BBC();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(updated + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_1B49E0FD8(v19, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1B49E103C(v19);
}

uint64_t sub_1B49E0FD8(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for InferenceFeedbackUpdateRequest(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_1B49E103C(uint64_t a1)
{
  updated = type metadata accessor for InferenceFeedbackUpdateRequest(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_1B49E1098(void *a1)
{
  a1[1] = sub_1B49E0628(&qword_1EB8A7788, type metadata accessor for InferenceRecordRequest, &protocol conformance descriptor for InferenceRecordRequest);
  a1[2] = sub_1B49E0628(&qword_1EB8A7790, type metadata accessor for InferenceRecordRequest, &protocol conformance descriptor for InferenceRecordRequest);
  result = sub_1B49E0628(&qword_1EB8A7798, type metadata accessor for InferenceRecordRequest, &protocol conformance descriptor for InferenceRecordRequest);
  a1[3] = result;
  return result;
}

uint64_t sub_1B49E1144(void *a1)
{
  a1[1] = sub_1B49E0628(&qword_1EB8A77A0, type metadata accessor for InferenceFeedbackUpdateRequest, &protocol conformance descriptor for InferenceFeedbackUpdateRequest);
  a1[2] = sub_1B49E0628(&qword_1EB8A77A8, type metadata accessor for InferenceFeedbackUpdateRequest, &protocol conformance descriptor for InferenceFeedbackUpdateRequest);
  result = sub_1B49E0628(&qword_1EB8A77B0, type metadata accessor for InferenceFeedbackUpdateRequest, &protocol conformance descriptor for InferenceFeedbackUpdateRequest);
  a1[3] = result;
  return result;
}

uint64_t sub_1B49E1268(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_1B4D173DC();
  swift_allocObject();
  sub_1B4D173CC();
  sub_1B49E0628(a3, a4, a5);
  v8 = sub_1B4D173BC();

  return v8;
}

uint64_t sub_1B49E1360(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  sub_1B4D173AC();
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B49E0628(a5, a6, a7);
  sub_1B4D1738C();
  sub_1B49DDD2C(a1, a2);
}

void sub_1B49E1454(uint64_t a1)
{
  sub_1B49E14D0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B49E14D0(uint64_t a1)
{
  if (!qword_1EDC37858)
  {
    sub_1B4D174EC();
    v1 = sub_1B4D1880C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC37858);
    }
  }
}

uint64_t sub_1B49E1550(uint64_t a1)
{
  result = sub_1B4D177CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B49E15E8()
{
  result = qword_1EB8A77B8;
  if (!qword_1EB8A77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A77B8);
  }

  return result;
}

unint64_t sub_1B49E1640()
{
  result = qword_1EB8A77C0;
  if (!qword_1EB8A77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A77C0);
  }

  return result;
}

unint64_t sub_1B49E1698()
{
  result = qword_1EB8A77C8;
  if (!qword_1EB8A77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A77C8);
  }

  return result;
}

unint64_t sub_1B49E16F0()
{
  result = qword_1EB8A77D0;
  if (!qword_1EB8A77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A77D0);
  }

  return result;
}

unint64_t sub_1B49E1748()
{
  result = qword_1EB8A77D8;
  if (!qword_1EB8A77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A77D8);
  }

  return result;
}

unint64_t sub_1B49E17A0()
{
  result = qword_1EB8A77E0;
  if (!qword_1EB8A77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A77E0);
  }

  return result;
}

uint64_t WorkoutGoalAchievementStatusFact.TemplateString.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1B49E1888()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49E18FC(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49E1950@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

  *a2 = v3 != 0;
  return result;
}

uint64_t WorkoutGoalAchievementStatusFact.placeholders()()
{
  v1 = type metadata accessor for WorkoutGoalAchievementStatusFact(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1A800;
  sub_1B49E1B20(v0, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1B49E1B84(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  strcpy((v4 + 32), "formatted_goal");
  *(v4 + 47) = -18;
  *(v4 + 48) = sub_1B49E1BE8;
  *(v4 + 56) = v6;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  return v4;
}

uint64_t sub_1B49E1B20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutGoalAchievementStatusFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49E1B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutGoalAchievementStatusFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutGoalAchievementStatusFact.selectTemplate(formatter:)@<X0>(BOOL *a1@<X8>)
{
  result = sub_1B4D1491C(v1);
  v5 = v4;
  if (v4)
  {
  }

  *a1 = v5 == 0;
  return result;
}

uint64_t sub_1B49E1C38(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1A800;
  sub_1B49E1B20(v1, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1B49E1B84(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  strcpy((v4 + 32), "formatted_goal");
  *(v4 + 47) = -18;
  *(v4 + 48) = sub_1B49E2108;
  *(v4 + 56) = v6;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  return v4;
}

uint64_t sub_1B49E1D7C@<X0>(BOOL *a1@<X8>)
{
  result = sub_1B4D1491C(v1);
  v5 = v4;
  if (v4)
  {
  }

  *a1 = v5 == 0;
  return result;
}

unint64_t sub_1B49E1DDC()
{
  result = qword_1EB8A77E8;
  if (!qword_1EB8A77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A77E8);
  }

  return result;
}

unint64_t sub_1B49E1E34()
{
  result = qword_1EB8A77F0;
  if (!qword_1EB8A77F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A77F8, &qword_1B4D1EE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A77F0);
  }

  return result;
}

unint64_t sub_1B49E1E9C()
{
  result = qword_1EB8A7800;
  if (!qword_1EB8A7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7800);
  }

  return result;
}

unint64_t sub_1B49E1EF4()
{
  result = qword_1EB8A7808;
  if (!qword_1EB8A7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7808);
  }

  return result;
}

unint64_t sub_1B49E1F48(uint64_t a1)
{
  result = sub_1B49E1F70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B49E1F70()
{
  result = qword_1EB8A7810;
  if (!qword_1EB8A7810)
  {
    type metadata accessor for WorkoutGoalAchievementStatusFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7810);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(type metadata accessor for WorkoutGoalAchievementStatusFact(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1B4D179EC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B49E210C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v32 = v6;
    v38 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF45C(0, v7, 0);
    v36 = v38;
    v9 = a1 + 64;
    result = sub_1B4D188DC();
    v10 = result;
    v11 = 0;
    v37 = *(a1 + 36);
    v29 = a1 + 72;
    v30 = v7;
    v31 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      if (v37 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      MEMORY[0x1EEE9AC00](result);
      *(&v28 - 2) = v14;
      *(&v28 - 1) = v15;
      sub_1B49E34A8(qword_1EDC3B168, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
      v16 = v32;
      sub_1B4D17DAC();
      v35 = v2;
      v17 = v36;
      v38 = v36;
      v19 = *(v36 + 16);
      v18 = *(v36 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B4BCF45C((v18 > 1), v19 + 1, 1);
        v17 = v38;
      }

      *(v17 + 16) = v19 + 1;
      v20 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v36 = v17;
      result = sub_1B49E34F0(v16, v17 + v20 + *(v33 + 72) * v19, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_25;
      }

      v9 = v31;
      v21 = *(v31 + 8 * v13);
      if ((v21 & (1 << v10)) == 0)
      {
        goto LABEL_26;
      }

      if (v37 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v22 = v21 & (-2 << (v10 & 0x3F));
      if (v22)
      {
        v12 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v2 = v35;
      }

      else
      {
        v23 = v13 << 6;
        v24 = v13 + 1;
        v25 = (v29 + 8 * v13);
        v2 = v35;
        while (v24 < (v12 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1B497CD6C(v10, v37, 0);
            v12 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_1B497CD6C(v10, v37, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v30)
      {
        return v36;
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
  }

  return result;
}

uint64_t RingsMilestonePropertyValue.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v41 - v4;
  v50 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  v5 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v52 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v7 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v41 - v10);
  v12 = a1[1];
  v44 = *a1;
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v43 = v5;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1B4BCEE7C(0, v13, 0);
    v15 = v53;
    v16 = v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v42 = v7;
    v47 = v7[9];
    do
    {
      sub_1B49E2F00(v16, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      v17 = *v11;
      sub_1B49E337C(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      v53 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B4BCEE7C((v18 > 1), v19 + 1, 1);
        v15 = v53;
      }

      *(v15 + 16) = v19 + 1;
      *(v15 + 8 * v19 + 32) = v17;
      v16 += v47;
      --v13;
    }

    while (v13);
    v7 = v42;
    v5 = v43;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v20 = a1[2];
  v21 = *(v20 + 16);
  if (v21)
  {
    v42 = a1;
    v43 = v15;
    v53 = v14;
    sub_1B4BCEE5C(0, v21, 0);
    v22 = v53;
    v23 = v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v47 = *(v5 + 72);
    v24 = (v7 + 6);
    do
    {
      v25 = v52;
      sub_1B49E2F00(v23, v52, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
      v26 = v51;
      sub_1B49E2F68(v25 + *(v50 + 24), v51);
      v27 = *v24;
      v28 = v49;
      if ((*v24)(v26, 1, v49) == 1)
      {
        v29 = v48;
        *v48 = 0;
        sub_1B4D17BBC();
        if (v27(v26, 1, v28) != 1)
        {
          sub_1B49E2FD8(v26);
        }
      }

      else
      {
        v29 = v48;
        sub_1B49E34F0(v26, v48, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      }

      v30 = *v29;
      sub_1B49E337C(v29, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      v31 = *v52;
      sub_1B49E337C(v52, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
      v53 = v22;
      v33 = *(v22 + 16);
      v32 = *(v22 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1B4BCEE5C((v32 > 1), v33 + 1, 1);
        v22 = v53;
      }

      *(v22 + 16) = v33 + 1;
      v34 = v22 + 16 * v33;
      *(v34 + 32) = v31;
      *(v34 + 40) = v30;
      v23 += v47;
      --v21;
    }

    while (v21);
    a1 = v42;
    goto LABEL_20;
  }

  if (*(v14 + 16))
  {
    v43 = v15;
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6878, &unk_1B4D1AB90);
    v35 = sub_1B4D18AEC();
    v15 = v43;
    goto LABEL_21;
  }

  v35 = MEMORY[0x1E69E7CC8];
LABEL_21:
  v53 = v35;

  v37 = v45;
  sub_1B49E3040(v36, 1, &v53);
  if (v37)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1B49E337C(a1, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);

    v39 = v53;
    v40 = v46;
    *v46 = v44;
    v40[1] = v15;
    v40[2] = v39;
  }

  return result;
}

uint64_t RingsMilestonePropertyValue.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  sub_1B49E34A8(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49E2A5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = a2;
  v13 = *(a3 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v23 = a4;
    v24 = a1;
    v27 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF47C(0, v13, 0);
    v14 = v27;
    v15 = a3 + 32;
    v16 = sub_1B49E34A8(qword_1EDC3B0C0, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
    v25 = v16;
    do
    {
      v15 += 8;
      MEMORY[0x1EEE9AC00](v16);
      *(&v23 - 2) = v17;
      v18 = v26;
      sub_1B4D17DAC();
      v26 = v18;
      v27 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B4BCF47C((v19 > 1), v20 + 1, 1);
        v14 = v27;
      }

      *(v14 + 16) = v20 + 1;
      v16 = sub_1B49E34F0(v12, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v20, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      --v13;
    }

    while (v13);
    a4 = v23;
    a1 = v24;
  }

  a1[1] = v14;
  v21 = sub_1B49E210C(a4);

  a1[2] = v21;
  return result;
}

uint64_t sub_1B49E2CA4(char *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a1 = a2;
  v14 = a3;
  sub_1B49E34A8(qword_1EDC3B0C0, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  sub_1B4D17DAC();
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0) + 24);
  sub_1B49E2FD8(&a1[v11]);
  sub_1B49E34F0(v10, &a1[v11], type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  return (*(v8 + 56))(&a1[v11], 0, 1, v7);
}

uint64_t sub_1B49E2E2C()
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  sub_1B49E34A8(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49E2F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49E2F68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49E2FD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B49E3040(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = a1[4];
  v7 = a1[5];
  v9 = *a3;
  v10 = sub_1B49EF0B0(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1B4984310(v15, v6 & 1);
    v10 = sub_1B49EF0B0(v8);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1B4D18E1C();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1B4988808();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + 8 * v10) = v8;
  *(v21[7] + 8 * v10) = v7;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
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
    v7 = 1;
    while (v7 < a1[2])
    {
      v8 = *(v6 - 1);
      v24 = *v6;
      v25 = *a3;
      v26 = sub_1B49EF0B0(v8);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_1B4984310(v30, 1);
        v26 = sub_1B49EF0B0(v8);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v32[6] + 8 * v26) = v8;
      *(v32[7] + 8 * v26) = v24;
      v33 = v32[2];
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v32[2] = v34;
      v6 += 2;
      if (v4 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1B49E337C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B49E34A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B49E34F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49E3598(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7865646E69;
    v6 = 6581861;
    if (a1 != 2)
    {
      v6 = 0x6E6F697461727564;
    }

    if (a1)
    {
      v5 = 0x7472617473;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x5065676172657661;
    v2 = 0x6169747261507369;
    if (a1 != 7)
    {
      v2 = 0x6D6F747375437369;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65636E6174736964;
    if (a1 != 4)
    {
      v3 = 1701011824;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B49E36B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B49E50B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B49E36D8(uint64_t a1)
{
  v2 = sub_1B49E4A88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49E3714(uint64_t a1)
{
  v2 = sub_1B49E4A88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutSplit.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7828, &unk_1B4D1EEF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49E4A88();
  sub_1B4D18EFC();
  v8[31] = 0;
  sub_1B4D18CEC();
  if (!v1)
  {
    type metadata accessor for WorkoutSplit(0);
    v8[30] = 1;
    sub_1B4D1777C();
    sub_1B49B1198(&qword_1EDC37820, MEMORY[0x1E6969538]);
    sub_1B4D18D0C();
    v8[29] = 2;
    sub_1B4D18D0C();
    v8[28] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968078]);
    sub_1B4D18D0C();
    v8[27] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968078]);
    sub_1B4D18D0C();
    v8[26] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    sub_1B49B0578(&qword_1EB8A71E8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968078]);
    sub_1B4D18D0C();
    v8[25] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
    sub_1B49B0578(&qword_1EB8A7838, &qword_1EB8A6CE0, &unk_1B4D1EF00, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    v8[24] = 7;
    sub_1B4D18CCC();
    v8[15] = 8;
    sub_1B4D18CCC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t WorkoutSplit.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v46 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v58 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v51 = &v46 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v54 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v52 = &v46 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v56 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v53 = &v46 - v7;
  v8 = sub_1B4D1777C();
  v60 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7840, &qword_1B4D1EF10);
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = type metadata accessor for WorkoutSplit(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1B49E4A88();
  v63 = v16;
  v21 = v64;
  sub_1B4D18EEC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v65);
  }

  v22 = v13;
  v46 = v10;
  v47 = v17;
  v64 = v8;
  v48 = v19;
  v74 = 0;
  v23 = v61;
  v24 = sub_1B4D18BEC();
  v25 = v48;
  *v48 = v24;
  v73 = 1;
  sub_1B49B1198(&qword_1EB8A6FB8, MEMORY[0x1E6969558]);
  v26 = v22;
  v27 = v64;
  sub_1B4D18C0C();
  v28 = *(v60 + 32);
  v28(v25 + v47[5], v26, v27);
  v72 = 2;
  v29 = v46;
  sub_1B4D18C0C();
  v28(v48 + v47[6], v29, v27);
  v71 = 3;
  sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968098]);
  v30 = v53;
  v31 = v59;
  sub_1B4D18C0C();
  v32 = v23;
  v34 = v47;
  v33 = v48;
  (*(v56 + 32))(v48 + v47[7], v30, v31);
  v70 = 4;
  sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968098]);
  v35 = v52;
  v36 = v57;
  sub_1B4D18C0C();
  v37 = v58;
  (*(v54 + 32))(v33 + v34[8], v35, v36);
  v69 = 5;
  sub_1B49B0578(&qword_1EB8A7200, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968098]);
  v38 = v51;
  v39 = v55;
  sub_1B4D18C0C();
  (*(v37 + 32))(v33 + v34[9], v38, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v68 = 6;
  sub_1B49B0578(&qword_1EB8A7848, &qword_1EB8A6CE0, &unk_1B4D1EF00, MEMORY[0x1E6968098]);
  v40 = v50;
  v41 = v62;
  sub_1B4D18BAC();
  sub_1B49E4B28(v40, v33 + v34[10]);
  v67 = 7;
  *(v33 + v34[11]) = sub_1B4D18BCC() & 1;
  v66[0] = 8;
  v42 = sub_1B4D18BCC();
  (*(v32 + 8))(v63, v41);
  v44 = v48;
  v43 = v49;
  *(v48 + v34[12]) = v42 & 1;
  sub_1B49E4B98(v44, v43);
  __swift_destroy_boxed_opaque_existential_1Tm(v65);
  return sub_1B49E4BFC(v44);
}

uint64_t _s19FitnessIntelligence12WorkoutSplitV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7878, &unk_1B4D2D8B0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  if (*a1 != *a2)
  {
    goto LABEL_15;
  }

  v25 = v12;
  v15 = type metadata accessor for WorkoutSplit(0);
  if ((sub_1B4D1774C() & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((sub_1B4D1774C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v24 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
  if ((sub_1B4D1816C() & 1) == 0)
  {
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
  if ((sub_1B4D1816C() & 1) == 0)
  {
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  sub_1B49B0578(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968090]);
  if ((sub_1B4D1816C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v16 = v15[10];
  v17 = *(v25 + 48);
  sub_1B49E5394(a1 + v16, v14);
  sub_1B49E5394(a2 + v16, &v14[v17]);
  v18 = *(v24 + 48);
  if (v18(v14, 1, v4) != 1)
  {
    sub_1B49E5394(v14, v10);
    if (v18(&v14[v17], 1, v4) != 1)
    {
      v19 = v24;
      (*(v24 + 32))(v7, &v14[v17], v4);
      sub_1B49B0578(&qword_1EB8A7880, &qword_1EB8A6CE0, &unk_1B4D1EF00, MEMORY[0x1E6968090]);
      v20 = sub_1B4D1816C();
      v21 = *(v19 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_1B4975024(v14, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    (*(v24 + 8))(v10, v4);
LABEL_12:
    sub_1B4975024(v14, &qword_1EB8A7878, &unk_1B4D2D8B0);
    goto LABEL_15;
  }

  if (v18(&v14[v17], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1B4975024(v14, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
LABEL_14:
  if (*(a1 + v15[11]) == *(a2 + v15[11]))
  {
    v22 = *(a1 + v15[12]) ^ *(a2 + v15[12]) ^ 1;
    return v22 & 1;
  }

LABEL_15:
  v22 = 0;
  return v22 & 1;
}

unint64_t sub_1B49E4A88()
{
  result = qword_1EB8A7830;
  if (!qword_1EB8A7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7830);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutSplit(uint64_t a1)
{
  result = qword_1EB8A7850;
  if (!qword_1EB8A7850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B49E4B28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49E4B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutSplit(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49E4BFC(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutSplit(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B49E4C80(uint64_t a1)
{
  sub_1B4D1777C();
  if (v1 <= 0x3F)
  {
    sub_1B49E4D9C(319, &qword_1EDC3CB28, &qword_1EDC378C0, 0x1E696B008);
    if (v2 <= 0x3F)
    {
      sub_1B49E4D9C(319, &qword_1EDC3CE78, &qword_1EDC3CB80, 0x1E696B058);
      if (v3 <= 0x3F)
      {
        sub_1B49BEE84(319);
        if (v4 <= 0x3F)
        {
          sub_1B49E4DF4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B49E4D9C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1B498AFB8(255, a3, a4);
    v5 = sub_1B4D1746C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B49E4DF4(uint64_t a1)
{
  if (!qword_1EDC37880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
    v1 = sub_1B4D1880C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC37880);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutSplit.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutSplit.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B49E4FAC()
{
  result = qword_1EB8A7860;
  if (!qword_1EB8A7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7860);
  }

  return result;
}

unint64_t sub_1B49E5004()
{
  result = qword_1EB8A7868;
  if (!qword_1EB8A7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7868);
  }

  return result;
}

unint64_t sub_1B49E505C()
{
  result = qword_1EB8A7870;
  if (!qword_1EB8A7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7870);
  }

  return result;
}

uint64_t sub_1B49E50B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701011824 && a2 == 0xE400000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5065676172657661 && a2 == 0xEC0000007265776FLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6169747261507369 && a2 == 0xE90000000000006CLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D6F747375437369 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1B49E5394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static WorkoutCountByWeatherConditionPropertyGenerator.from(_:for:)(void *a1@<X0>, _BYTE *a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB8, &unk_1B4D1F0C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15[-v7];
  if (*a2 == 16)
  {
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    (*(v10 + 112))(v9, v10);
    v11 = type metadata accessor for WeatherCondition(0);
    if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
    {
      sub_1B49E5598(v8);
      *a3 = sub_1B4C98484(MEMORY[0x1E69E7CC0]);
      a3[1] = 1;
    }

    else
    {
      v12 = *&v8[*(v11 + 20)];
      sub_1B49E5600(v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7888, &unk_1B4D20440);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B4D1A800;
      *(inited + 32) = v12;
      *(inited + 40) = 1;
      v14 = sub_1B4C98484(inited);
      swift_setDeallocating();
      *a3 = v14;
      a3[1] = 0;
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

uint64_t sub_1B49E5598(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB8, &unk_1B4D1F0C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B49E5600(uint64_t a1)
{
  v2 = type metadata accessor for WeatherCondition(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B49E565C(uint64_t a1)
{
  result = sub_1B49E5684();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B49E5684()
{
  result = qword_1EDC379A0;
  if (!qword_1EDC379A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC379A0);
  }

  return result;
}

unint64_t sub_1B49E56DC()
{
  result = qword_1EB8A7890;
  if (!qword_1EB8A7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7890);
  }

  return result;
}

unint64_t sub_1B49E5734()
{
  result = qword_1EDC38288;
  if (!qword_1EDC38288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB8A7898, &qword_1B4D1F0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38288);
  }

  return result;
}

uint64_t static WorkoutWeeklyStatisticsPropertyGenerator.from(_:for:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v35 = a4;
  v7 = sub_1B4D1746C();
  v8 = sub_1B4D1880C();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v34 = &v31 - v16;
  v17 = *a2;
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v20 = (*(v18 + 56))(v19, v18);
  [v20 effectiveTypeIdentifier];

  if (v17 == 9)
  {
    LOBYTE(v36) = 9;
    sub_1B49E5CDC(&v36, v10);
    v23 = a3;
    if ((*(v11 + 48))(v10, 1, v7) == 1)
    {
      (*(v32 + 8))(v10, v33);
      v24 = 1;
      v25 = v35;
    }

    else
    {
      v26 = v34;
      (*(v11 + 32))(v34, v10, v7);
      v27 = a1[3];
      v28 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v27);
      (*(*(v28 + 16) + 8))(&v36, v27);
      (*(v11 + 16))(v14, v26, v7);
      v25 = v35;
      WeeklyStatisticsPropertyValue.init(cacheIndex:measurement:)(&v36, v14, v23, v35);
      (*(v11 + 8))(v26, v7);
      v24 = 0;
    }
  }

  else
  {
    v24 = 1;
    v25 = v35;
    v23 = a3;
  }

  v29 = type metadata accessor for WeeklyStatisticsPropertyValue(0, v23, v21, v22);
  return (*(*(v29 - 8) + 56))(v25, v24, 1, v29);
}

uint64_t sub_1B49E5CDC@<X0>(_BYTE *a1@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  MEMORY[0x1EEE9AC00](v5);
  if (*a1 == 9)
  {
    if (qword_1EDC36E70 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDC36E78;
    type metadata accessor for UnitCount();
    v7 = v6;
    sub_1B4D1741C();
    v8 = sub_1B4D1746C();
    if (swift_dynamicCast())
    {
      v9 = a3;
      v10 = 0;
    }

    else
    {
      v9 = a3;
      v10 = 1;
    }

    return (*(*(v8 - 8) + 56))(v9, v10, 1, v8);
  }

  else
  {
    v11 = sub_1B4D1746C();
    v12 = *(*(v11 - 8) + 56);

    return v12(a3, 1, 1, v11);
  }
}

uint64_t sub_1B49E5EC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7478, &qword_1B4D1F190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B49E5F28(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 SanityTaskMismatch.cacheIndexRange.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t SanityTaskMismatch.difference.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
    v4 = __OFSUB__(0, result);
    result = v2 - v1;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  return result;
}

__n128 SanityTaskMismatch.init(cacheIndexRange:snapshotPropertiesType:snapshotChecksum:databaseChecksum:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X8>)
{
  v5 = *a2;
  result = *a1;
  *a5 = *a1;
  a5[1].n128_u8[0] = v5;
  a5[1].n128_u64[1] = a3;
  a5[2].n128_u64[0] = a4;
  return result;
}

uint64_t sub_1B49E5FE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 40))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B49E602C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

void *WorkoutRepresentable.splits(userDistanceUnit:)(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7920, &unk_1B4D1F260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v36 = type metadata accessor for WorkoutSplit(0);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v33 = &v31 - v12;
  v13 = *(a3 + 216);
  v13(a2, a3, v11);
  sub_1B498AFB8(0, &qword_1EB8A7928, 0x1E696C5B8);
  v14 = sub_1B4D183EC();

  v15 = FICustomSplits();

  v16 = sub_1B4D183FC();
  if (v16 >> 62)
  {
    goto LABEL_23;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:

    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v17 = [objc_opt_self() miles];
    sub_1B4D187AC();

    (v13)(a2, a3);
    v18 = sub_1B4D183EC();

    v19 = FISplitsForMeasuringSystemIdentifier();

    sub_1B4D183FC();
    goto LABEL_4;
  }

  while (1)
  {
LABEL_4:

    v37 = sub_1B49EE8A8(v20, sub_1B49B79E8, sub_1B49EE94C);
    sub_1B49ECF74(&v37);

    v21 = v37;
    if ((v37 & 0x8000000000000000) == 0 && (v37 & 0x4000000000000000) == 0)
    {
      a3 = *(v37 + 16);
      if (!a3)
      {
        break;
      }

      goto LABEL_7;
    }

    a3 = sub_1B4D18ABC();
    if (!a3)
    {
      break;
    }

LABEL_7:
    v22 = 0;
    v13 = (v21 & 0xC000000000000001);
    v23 = (v34 + 48);
    a2 = MEMORY[0x1E69E7CC0];
    v32 = a1;
    while (1)
    {
      if (v13)
      {
        v24 = MEMORY[0x1B8C7CD90](v22, v21);
      }

      else
      {
        if (v22 >= *(v21 + 16))
        {
          goto LABEL_22;
        }

        v24 = *(v21 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      sub_1B49E8FF0(v22, v24, a1, v8);

      if ((*v23)(v8, 1, v36) == 1)
      {
        sub_1B4975024(v8, &qword_1EB8A7920, &unk_1B4D1F260);
      }

      else
      {
        v27 = v33;
        sub_1B49EE5A8(v8, v33, type metadata accessor for WorkoutSplit);
        sub_1B49EE5A8(v27, v35, type metadata accessor for WorkoutSplit);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_1B4A1D79C(0, a2[2] + 1, 1, a2);
        }

        v29 = a2[2];
        v28 = a2[3];
        if (v29 >= v28 >> 1)
        {
          a2 = sub_1B4A1D79C((v28 > 1), v29 + 1, 1, a2);
        }

        a2[2] = v29 + 1;
        sub_1B49EE5A8(v35, a2 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v29, type metadata accessor for WorkoutSplit);
        a1 = v32;
      }

      ++v22;
      if (v26 == a3)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    if (!sub_1B4D18ABC())
    {
      goto LABEL_3;
    }
  }

  a2 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return a2;
}

uint64_t sub_1B49E656C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7978, &unk_1B4D1F2F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v24 = &v21 - v10;
  v11 = *(a1 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF0DC(0, v11, 0);
  v12 = v26;
  if (v11)
  {
    v13 = a1 + 32;
    v22 = v6;
    v23 = (v6 + 56);
    v14 = &qword_1EB8A6840;
    while (1)
    {
      sub_1B497558C(v13, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v15 = v5;
      (*v23)(v4, 0, 1, v5);
      v16 = v24;
      sub_1B498B270(v4, v24, v14, &unk_1B4D20FA0);
      sub_1B498B270(v16, v8, v14, &unk_1B4D20FA0);
      v26 = v12;
      v17 = v14;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B4BCF0DC((v18 > 1), v19 + 1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v19 + 1;
      sub_1B498B270(v8, v12 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, v17, &unk_1B4D20FA0);
      v13 += 40;
      --v11;
      v5 = v15;
      v14 = v17;
      if (!v11)
      {
        return v12;
      }
    }

    (*v23)(v4, 1, 1, v5);
    sub_1B4975024(v4, &qword_1EB8A7978, &unk_1B4D1F2F0);
    return 0;
  }

  return v12;
}

uint64_t sub_1B49E684C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF0FC(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_1B497558C(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B4BCF0FC((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1B49E6974(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1B4D18A1C();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B4D18ABC())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1B8C7CD90](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1B4D189EC();
      sub_1B4D18A2C();
      sub_1B4D18A3C();
      sub_1B4D189FC();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1B4D18ABC();
    sub_1B4D18A1C();
  }

  return v8;
}

uint64_t sub_1B49E6ADC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7970, &unk_1B4D1F2E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v24 = &v21 - v10;
  v11 = *(a1 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF21C(0, v11, 0);
  v12 = v26;
  if (v11)
  {
    v13 = a1 + 32;
    v22 = v6;
    v23 = (v6 + 56);
    v14 = &qword_1EB8A6D68;
    while (1)
    {
      sub_1B497558C(v13, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v15 = v5;
      (*v23)(v4, 0, 1, v5);
      v16 = v24;
      sub_1B498B270(v4, v24, v14, &qword_1B4D208D0);
      sub_1B498B270(v16, v8, v14, &qword_1B4D208D0);
      v26 = v12;
      v17 = v14;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B4BCF21C((v18 > 1), v19 + 1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v19 + 1;
      sub_1B498B270(v8, v12 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, v17, &qword_1B4D208D0);
      v13 += 40;
      --v11;
      v5 = v15;
      v14 = v17;
      if (!v11)
      {
        return v12;
      }
    }

    (*v23)(v4, 1, 1, v5);
    sub_1B4975024(v4, &qword_1EB8A7970, &unk_1B4D1F2E0);
    return 0;
  }

  return v12;
}

uint64_t sub_1B49E6DBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7530, &unk_1B4D40250);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v24 = &v21 - v10;
  v11 = *(a1 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF23C(0, v11, 0);
  v12 = v26;
  if (v11)
  {
    v13 = a1 + 32;
    v22 = v6;
    v23 = (v6 + 56);
    v14 = &qword_1EB8A6858;
    while (1)
    {
      sub_1B497558C(v13, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v15 = v5;
      (*v23)(v4, 0, 1, v5);
      v16 = v24;
      sub_1B498B270(v4, v24, v14, &qword_1B4D1AB70);
      sub_1B498B270(v16, v8, v14, &qword_1B4D1AB70);
      v26 = v12;
      v17 = v14;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B4BCF23C((v18 > 1), v19 + 1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v19 + 1;
      sub_1B498B270(v8, v12 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, v17, &qword_1B4D1AB70);
      v13 += 40;
      --v11;
      v5 = v15;
      v14 = v17;
      if (!v11)
      {
        return v12;
      }
    }

    (*v23)(v4, 1, 1, v5);
    sub_1B4975024(v4, &qword_1EB8A7530, &unk_1B4D40250);
    return 0;
  }

  return v12;
}

uint64_t sub_1B49E709C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v43 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF2BC(0, v2, 0);
  v3 = v43;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_1B497558C(i, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      nullsub_1();
      v26 = v35;
      v27 = v36;
      v32 = v41;
      v30 = v39;
      v31 = v40;
      v28 = v37;
      v29 = v38;
      v24 = v33;
      v25 = v34;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      v43 = v3;
      if (v6 >= v5 >> 1)
      {
        sub_1B4BCF2BC((v5 > 1), v6 + 1, 1);
        v3 = v43;
      }

      v17 = v26;
      v18 = v27;
      v23 = v32;
      v21 = v30;
      v22 = v31;
      v19 = v28;
      v20 = v29;
      v15 = v24;
      v16 = v25;
      *(v3 + 16) = v6 + 1;
      v7 = v3 + 136 * v6;
      *(v7 + 32) = v15;
      v8 = v16;
      v9 = v17;
      v10 = v19;
      *(v7 + 80) = v18;
      *(v7 + 96) = v10;
      *(v7 + 48) = v8;
      *(v7 + 64) = v9;
      v11 = v20;
      v12 = v21;
      v13 = v22;
      *(v7 + 160) = v23;
      *(v7 + 128) = v12;
      *(v7 + 144) = v13;
      *(v7 + 112) = v11;
      if (!--v2)
      {
        return v3;
      }
    }

    sub_1B496F544(&v15);
    v39 = v21;
    v40 = v22;
    v35 = v17;
    v36 = v18;
    v37 = v19;
    v38 = v20;
    v33 = v15;
    v34 = v16;
    v30 = v21;
    v31 = v22;
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v41 = v23;
    v32 = v23;
    v24 = v15;
    v25 = v16;
    sub_1B4975024(&v24, &qword_1EB8A79B8, &qword_1B4D1F320);
    return 0;
  }

  return v3;
}

uint64_t sub_1B49E72B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79A8, &unk_1B4D1F310);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v24 = &v21 - v10;
  v11 = *(a1 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF2DC(0, v11, 0);
  v12 = v26;
  if (v11)
  {
    v13 = a1 + 32;
    v22 = v6;
    v23 = (v6 + 56);
    v14 = &qword_1EB8A79B0;
    while (1)
    {
      sub_1B497558C(v13, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v15 = v5;
      (*v23)(v4, 0, 1, v5);
      v16 = v24;
      sub_1B498B270(v4, v24, v14, &qword_1B4D20FC0);
      sub_1B498B270(v16, v8, v14, &qword_1B4D20FC0);
      v26 = v12;
      v17 = v14;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B4BCF2DC((v18 > 1), v19 + 1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v19 + 1;
      sub_1B498B270(v8, v12 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, v17, &qword_1B4D20FC0);
      v13 += 40;
      --v11;
      v5 = v15;
      v14 = v17;
      if (!v11)
      {
        return v12;
      }
    }

    (*v23)(v4, 1, 1, v5);
    sub_1B4975024(v4, &qword_1EB8A79A8, &unk_1B4D1F310);
    return 0;
  }

  return v12;
}

uint64_t sub_1B49E7598(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF39C(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_1B497558C(i, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7960, &qword_1B4D409B0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B4BCF39C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1B49E7758(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v8 = *(a1 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  a2(0, v8, 0);
  v9 = v17;
  if (v8)
  {
    v14 = a2;
    for (i = a1 + 32; ; i += 40)
    {
      sub_1B497558C(i, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v17 = v9;
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        v14(v11 > 1, v12 + 1, 1);
        v9 = v17;
      }

      *(v9 + 16) = v12 + 1;
      *(v9 + 8 * v12 + 32) = v15;
      if (!--v8)
      {
        return v9;
      }
    }

    return 0;
  }

  return v9;
}

HKQuantityType_optional __swiftcall WorkoutRepresentable.distanceQuantityType()()
{
  v1 = (*(v0 + 56))();
  v2 = [v1 effectiveTypeIdentifier];

  v4 = 0;
  if (v2 <= 34)
  {
    if (v2 == 13)
    {
      v5 = MEMORY[0x1E696BCC8];
      goto LABEL_10;
    }

    if (v2 != 24)
    {
      goto LABEL_11;
    }

LABEL_8:
    v5 = MEMORY[0x1E696BCF8];
    goto LABEL_10;
  }

  if (v2 == 52 || v2 == 37)
  {
    goto LABEL_8;
  }

  if (v2 == 35)
  {
    v5 = MEMORY[0x1E696BCE0];
LABEL_10:
    sub_1B498AFB8(0, &qword_1EDC36DE8, 0x1E696C370);
    v4 = MEMORY[0x1B8C7CB40](*v5);
  }

LABEL_11:
  result.value.super.super.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t WorkoutRepresentable.cacheIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B4D1777C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 80))(a1, a2, v8);
  v11 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v12 = sub_1B4D1796C();
  __swift_project_value_buffer(v12, qword_1EDC3CE48);
  v13 = sub_1B4D178CC();
  v14 = _HKCacheIndexFromDate();

  result = (*(v7 + 8))(v10, v6);
  *a3 = v14;
  return result;
}

uint64_t WorkoutRepresentable.averageHeartRate()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v10 = *(v9 - 1);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  (*(a2 + 168))(a1, a2, v11);
  if ((v10[6])(v8, 1, v9) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6CC8, &unk_1B4D464B0);
    sub_1B498AFB8(0, &qword_1EDC36DE8, 0x1E696C370);
    v14 = MEMORY[0x1B8C7CB40](*MEMORY[0x1E696BD30]);
    v15 = (*(a2 + 264))(v14, a1, a2);

    v16 = sub_1B49E6974(v15);

    if (v16)
    {
      if (v16 >> 62)
      {
        goto LABEL_20;
      }

      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = v17;
      if (v17)
      {
        while (1)
        {
          v34 = a3;
          v35 = v18;
          v32 = v10;
          v33 = v9;
          v19 = 0;
          v20 = 0.0;
          v10 = &property descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay;
          while (1)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x1B8C7CD90](v19, v16);
            }

            else
            {
              if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_19;
              }

              v21 = *(v16 + 8 * v19 + 32);
            }

            v22 = v21;
            a3 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            v23 = [v21 quantity];
            v9 = [objc_opt_self() _countPerMinuteUnit];
            [v23 doubleValueForUnit_];
            v25 = v24;

            v20 = v20 + v25;
            ++v19;
            if (a3 == v17)
            {
              v9 = v33;
              a3 = v34;
              v10 = v32;
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          v30 = sub_1B4D18ABC();
          if (v30 < 1)
          {
            break;
          }

          v18 = v30;
          v31 = sub_1B4D18ABC();
          if (!v31)
          {
            v35 = v18;
LABEL_14:

            if (qword_1EDC36DD8 != -1)
            {
              swift_once();
            }

            v27 = qword_1EDC36DE0;
            sub_1B498AFB8(0, &qword_1EDC378B8, 0x1E696B038);
            v28 = v27;
            sub_1B4D1741C();
            return v10[7](a3, 0, 1, v9);
          }

          v17 = v31;
        }
      }
    }

    return v10[7](a3, 1, 1, v9);
  }

  else
  {
    v26 = v10[4];
    (v26)(v13, v8, v9);
    (v26)(a3, v13, v9);
    return v10[7](a3, 0, 1, v9);
  }
}

uint64_t WorkoutRepresentable.distance()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  (*(a2 + 120))(a1, a2, v14);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6CC0, &unk_1B4D1BC00);
LABEL_7:
    v22 = 1;
    return (*(v10 + 56))(a3, v22, 1, v9);
  }

  v17 = [objc_opt_self() meters];
  sub_1B4D1745C();

  v18 = *(v10 + 8);
  v18(v8, v9);
  v19 = *(v10 + 32);
  v19(v16, v12, v9);
  sub_1B4D1742C();
  if ((v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (sub_1B4D1742C(), v21 <= 0.0))
  {
    v18(v16, v9);
    goto LABEL_7;
  }

  v19(a3, v16, v9);
  v22 = 0;
  return (*(v10 + 56))(a3, v22, 1, v9);
}

uint64_t WorkoutRepresentable.pace()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  (*(a2 + 128))(a1, a2, v11);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
LABEL_6:
    v16 = 1;
    return (*(v10 + 56))(a3, v16, 1, v9);
  }

  v14 = *(v10 + 32);
  v14(v13, v8, v9);
  sub_1B4D1742C();
  if (v15 <= 0.0)
  {
    (*(v10 + 8))(v13, v9);
    goto LABEL_6;
  }

  v14(a3, v13, v9);
  v16 = 0;
  return (*(v10 + 56))(a3, v16, 1, v9);
}

uint64_t WorkoutRepresentable.elevationGain()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  (*(a2 + 144))(a1, a2, v11);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6CC0, &unk_1B4D1BC00);
LABEL_6:
    v16 = 1;
    return (*(v10 + 56))(a3, v16, 1, v9);
  }

  v14 = *(v10 + 32);
  v14(v13, v8, v9);
  sub_1B4D1742C();
  if (v15 <= 0.0)
  {
    (*(v10 + 8))(v13, v9);
    goto LABEL_6;
  }

  v14(a3, v13, v9);
  v16 = 0;
  return (*(v10 + 56))(a3, v16, 1, v9);
}

uint64_t WorkoutRepresentable.depth()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1B498AFB8(0, &qword_1EDC36DE8, 0x1E696C370);
  v6 = MEMORY[0x1B8C7CB40](*MEMORY[0x1E696BDE8]);
  v7 = (*(a2 + 264))(v6, a1, a2);

  v8 = sub_1B49E6974(v7);

  if (v8)
  {
    if (v8 >> 62)
    {
      goto LABEL_16;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      while (1)
      {
        v24 = a3;
        v10 = 0;
        v11 = 0.0;
        a3 = &property descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay;
        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1B8C7CD90](v10, v8);
          }

          else
          {
            if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_15;
            }

            v12 = *(v8 + 8 * v10 + 32);
          }

          v13 = v12;
          v14 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          v15 = [v12 quantity];
          v16 = [objc_opt_self() meterUnit];
          [v15 doubleValueForUnit_];
          v18 = v17;

          if (v11 <= v18)
          {
            v11 = v18;
          }

          ++v10;
          if (v14 == v9)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        if (sub_1B4D18ABC() < 1)
        {
          break;
        }

        v9 = sub_1B4D18ABC();
        if (!v9)
        {
          v24 = a3;
LABEL_19:

          v19 = [objc_opt_self() meters];
          sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
          a3 = v24;
          sub_1B4D1741C();
          v20 = 0;
          goto LABEL_22;
        }
      }
    }
  }

  v20 = 1;
LABEL_22:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v22 = *(*(v21 - 8) + 56);

  return v22(a3, v20, 1, v21);
}

uint64_t WorkoutRepresentable.calories()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  (*(a2 + 152))(a1, a2, v11);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
LABEL_6:
    v16 = 1;
    return (*(v10 + 56))(a3, v16, 1, v9);
  }

  v14 = *(v10 + 32);
  v14(v13, v8, v9);
  sub_1B4D1742C();
  if (v15 <= 0.0)
  {
    (*(v10 + 8))(v13, v9);
    goto LABEL_6;
  }

  v14(a3, v13, v9);
  v16 = 0;
  return (*(v10 + 56))(a3, v16, 1, v9);
}

uint64_t WorkoutRepresentable.duration()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  (*(a2 + 96))(a1, a2, v8);
  v11 = [objc_opt_self() seconds];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  sub_1B4D1742C();
  if (v12 <= 0.0)
  {
    (*(v7 + 8))(v10, v6);
    v13 = 1;
  }

  else
  {
    (*(v7 + 32))(a3, v10, v6);
    v13 = 0;
  }

  return (*(v7 + 56))(a3, v13, 1, v6);
}

uint64_t WorkoutRepresentable.weatherTemperature()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7930, &unk_1B4D1F280);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB8, &unk_1B4D1F0C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for WeatherCondition(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 112))(a1, a2, v14);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v17 = &qword_1EB8A6CB8;
    v18 = &unk_1B4D1F0C0;
    v19 = v11;
LABEL_5:
    sub_1B4975024(v19, v17, v18);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
    return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
  }

  sub_1B49EE5A8(v11, v16, type metadata accessor for WeatherCondition);
  sub_1B498B270(v16, v8, &qword_1EB8A7930, &unk_1B4D1F280);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v8, 1, v20) == 1)
  {
    v17 = &qword_1EB8A7930;
    v18 = &unk_1B4D1F280;
    v19 = v8;
    goto LABEL_5;
  }

  (*(v21 + 32))(a3, v8, v20);
  return (*(v21 + 56))(a3, 0, 1, v20);
}

HKQuantity_optional __swiftcall WorkoutRepresentable.estimatedEffort()()
{
  v1 = (*(v0 + 224))();
  v2 = sub_1B4D1818C();
  if (!*(v1 + 16))
  {

    goto LABEL_7;
  }

  v4 = sub_1B49E9EC4(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_7:

    v8 = 0;
    goto LABEL_8;
  }

  sub_1B4955D64(*(v1 + 56) + 32 * v4, v10);

  sub_1B498AFB8(0, &qword_1EDC36E00, 0x1E696C348);
  if (swift_dynamicCast())
  {
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

LABEL_8:
  result.value.super.isa = v8;
  result.is_nil = v7;
  return result;
}

void sub_1B49E8FF0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v81 = a1;
  v7 = sub_1B4D174EC();
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v79 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v86 = &v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v74 - v17;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v19 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v74 - v20;
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v21 = [objc_opt_self() miles];
  v78 = a3;
  v22 = sub_1B4D187AC();

  v23 = objc_opt_self();
  if (v22)
  {
    v24 = [v23 mileUnit];
  }

  else
  {
    v24 = [v23 meterUnitWithMetricPrefix_];
  }

  v89 = v24;
  v25 = [a2 fi_splitDistance];
  if (v25)
  {
    v26 = v19;
    v76 = v16;
    v27 = v25;
    [v25 doubleValueForUnit_];

    [a2 fi_splitPaceInMetersPerSecond];
    v28 = [a2 metadata];
    v87 = v18;
    v77 = v15;
    if (v28)
    {
      v29 = v28;
      v30 = sub_1B4D17FBC();

      v31 = sub_1B4D1818C();
      if (*(v30 + 16))
      {
        v74 = v19;
        v33 = sub_1B49E9EC4(v31, v32);
        v35 = v34;

        if (v35)
        {
          sub_1B4955D64(*(v30 + 56) + 32 * v33, v91);

          sub_1B498AFB8(0, &qword_1EDC36E00, 0x1E696C348);
          if (swift_dynamicCast())
          {
            v36 = v90;
          }

          else
          {
            v36 = 0;
          }

          v26 = v74;
        }

        else
        {

          v36 = 0;
          v26 = v74;
        }
      }

      else
      {

        v36 = 0;
      }
    }

    else
    {
      v36 = 0;
    }

    v39 = [a2 metadata];
    if (v39)
    {
      v40 = v39;
      v41 = sub_1B4D17FBC();

      v42 = sub_1B4D1818C();
      if (*(v41 + 16))
      {
        v74 = v26;
        v44 = sub_1B49E9EC4(v42, v43);
        v46 = v45;

        if (v46)
        {
          sub_1B4955D64(*(v41 + 56) + 32 * v44, v91);

          sub_1B498AFB8(0, &qword_1EDC36DB0, 0x1E696AD98);
          if (swift_dynamicCast())
          {
            v47 = v90;
            v75 = [v90 BOOLValue];

            v26 = v74;
LABEL_27:
            v48 = v78;
            sub_1B4D1741C();
            if (qword_1EDC36E80 != -1)
            {
              swift_once();
            }

            v49 = qword_1EDC36E88;
            type metadata accessor for UnitPace();
            v50 = v49;
            sub_1B4D1741C();
            if (v36)
            {
              v51 = objc_opt_self();
              v52 = v36;
              v53 = [v51 wattUnit];
              [v52 doubleValueForUnit_];

              v54 = [objc_opt_self() watts];
              sub_1B498AFB8(0, &qword_1EB8A7990, 0x1E696B068);
              v55 = v79;
              sub_1B4D1741C();
              v78 = v52;

              v56 = 0;
            }

            else
            {
              v78 = 0;
              v56 = 1;
              v55 = v79;
            }

            v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
            (*(*(v57 - 8) + 56))(v55, v56, 1, v57);
            v58 = v86;
            sub_1B498B270(v55, v86, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
            v59 = [a2 dateInterval];
            v60 = v80;
            sub_1B4D174AC();

            v61 = type metadata accessor for WorkoutSplit(0);
            sub_1B4D174DC();
            v62 = *(v83 + 8);
            v63 = v60;
            v64 = v84;
            v62(v63, v84);
            v65 = [a2 dateInterval];
            v66 = v82;
            sub_1B4D174AC();

            sub_1B4D174BC();
            v62(v66, v64);
            [a2 fi_splitActiveDuration];
            v67 = [objc_opt_self() seconds];
            sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
            sub_1B4D1741C();
            v68 = a2;
            v69 = v88;
            v70 = v85;
            (*(v26 + 16))(&a4[v61[8]], v88, v85);
            v72 = v76;
            v71 = v77;
            v73 = v87;
            (*(v76 + 16))(&a4[v61[9]], v87, v77);
            sub_1B49E5394(v58, &a4[v61[10]]);
            LOBYTE(v68) = [v68 fi_isCustomSplitEvent];

            sub_1B4975024(v58, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
            (*(v72 + 8))(v73, v71);
            (*(v26 + 8))(v69, v70);
            *a4 = v81;
            a4[v61[11]] = v75;
            a4[v61[12]] = v68;
            (*(*(v61 - 1) + 56))(a4, 0, 1, v61);
            return;
          }
        }

        else
        {
        }

        v26 = v74;
      }

      else
      {
      }
    }

    v75 = 0;
    goto LABEL_27;
  }

  v37 = type metadata accessor for WorkoutSplit(0);
  (*(*(v37 - 8) + 56))(a4, 1, 1, v37);
  v38 = v89;
}

uint64_t sub_1B49E9A24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1B4D1777C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v2 + *(a1 + 36), v5, v7);
  v10 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4D1796C();
  __swift_project_value_buffer(v11, qword_1EDC3CE48);
  v12 = sub_1B4D178CC();
  v13 = _HKCacheIndexFromDate();

  result = (*(v6 + 8))(v9, v5);
  *a2 = v13;
  return result;
}

unint64_t sub_1B49E9B90(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968080]);
  v2 = sub_1B4D1807C();

  return sub_1B49EABC8(a1, v2);
}

unint64_t sub_1B49E9C38(uint64_t a1)
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](a1);
  v2 = sub_1B4D18EDC();

  return sub_1B49EAD8C(a1, v2);
}

unint64_t sub_1B49E9CA4(uint64_t a1)
{
  v1 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-v4];
  sub_1B4D18E8C();
  v8[7] = v1;
  DistanceReference.rawValue.getter();
  sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  (*(v3 + 8))(v5, v2);
  v6 = sub_1B4D18EDC();
  return sub_1B49EADF8(v1, v6);
}

unint64_t sub_1B49E9E4C(void *a1)
{
  sub_1B4D18E8C();
  v2 = a1;
  sub_1B4D187BC();

  v3 = sub_1B4D18EDC();

  return sub_1B49EAFF0(v2, v3);
}

unint64_t sub_1B49E9EC4(uint64_t a1, uint64_t a2)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  v4 = sub_1B4D18EDC();

  return sub_1B49EB1C4(a1, a2, v4);
}

unint64_t sub_1B49E9F3C(uint64_t a1)
{
  sub_1B4D18E8C();
  v2 = *(a1 + 16);
  MEMORY[0x1B8C7D290](v2);
  if (v2)
  {
    v3 = a1 + 40;
    do
    {

      sub_1B4D1820C();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  v4 = sub_1B4D18EDC();

  return sub_1B49EB27C(a1, v4);
}

unint64_t sub_1B49E9FEC(uint64_t a1)
{
  sub_1B4D18E8C();
  FitnessContextQueryDescriptor.hash(into:)(v4);
  v2 = sub_1B4D18EDC();

  return sub_1B49EB38C(a1, v2);
}

unint64_t sub_1B49EA058(uint64_t a1)
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](a1);
  v2 = sub_1B4D18EDC();
  return sub_1B49EAD8C(a1, v2);
}

unint64_t sub_1B49EA0C0(uint64_t a1)
{
  v1 = a1;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v2 = sub_1B4D18EDC();

  return sub_1B49EB4C4(v1, v2);
}

unint64_t sub_1B49EA180(uint64_t a1)
{
  v1 = a1;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v2 = sub_1B4D18EDC();

  return sub_1B49EB640(v1, v2);
}

unint64_t sub_1B49EA31C(char a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v2 = sub_1B4D18EDC();

  return sub_1B49EB98C(a1 & 1, v2);
}

unint64_t sub_1B49EA3C0(uint64_t a1)
{
  v1 = a1;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v2 = sub_1B4D18EDC();

  return sub_1B49EBAD0(v1, v2);
}

unint64_t sub_1B49EA4A8(uint64_t a1)
{
  v1 = a1;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  v2 = sub_1B4D18EDC();

  return sub_1B49EBC88(v1, v2);
}

unint64_t sub_1B49EA514(__int128 *a1)
{
  v2 = a1[1];
  v6 = *a1;
  v7 = v2;
  v8 = a1[2];
  v9 = *(a1 + 6);
  sub_1B4D18E8C();
  WorkoutPropertyDimensions.hash(into:)(v5);
  v3 = sub_1B4D18EDC();

  return sub_1B49EBCF8(a1, v3);
}

unint64_t sub_1B49EA598(unsigned int a1)
{
  *&v4[77] = a1;
  v4[79] = BYTE2(a1);
  sub_1B4D18E8C();
  RingsPropertyDimensions.hash(into:)(v4);
  v2 = sub_1B4D18EDC();

  return sub_1B49EBE24(a1 & 0xFFFFFF, v2);
}

unint64_t sub_1B49EA618(uint64_t a1)
{
  sub_1B4D18E8C();
  type metadata accessor for CFString(0);
  sub_1B49EEF98();
  sub_1B4D17A1C();
  v2 = sub_1B4D18EDC();

  return sub_1B49EC4A8(a1, v2);
}

unint64_t sub_1B49EA69C(uint64_t a1)
{
  v1 = a1;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v2 = sub_1B4D18EDC();

  return sub_1B49EC584(v1, v2);
}

unint64_t sub_1B49EA7A0(uint64_t a1)
{
  v1 = a1;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v2 = sub_1B4D18EDC();

  return sub_1B49EC73C(v1, v2);
}

unint64_t sub_1B49EA874(char a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v2 = sub_1B4D18EDC();

  return sub_1B49EC8F0(a1 & 1, v2);
}

unint64_t sub_1B49EA90C(char a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v2 = sub_1B4D18EDC();

  return sub_1B49ECA14(a1 & 1, v2);
}

unint64_t sub_1B49EA9AC(char a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v2 = sub_1B4D18EDC();

  return sub_1B49ECB48(a1 & 1, v2);
}

unint64_t sub_1B49EAA50(char a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v2 = sub_1B4D18EDC();
  return sub_1B49ECE2C(a1 & 1, v2);
}

unint64_t sub_1B49EAAF0(uint64_t a1)
{
  v1 = a1;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v2 = sub_1B4D18EDC();

  return sub_1B49ECC90(v1, v2);
}

unint64_t sub_1B49EABC8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
      v16 = sub_1B4D1816C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1B49EAD8C(uint64_t a1, uint64_t a2)
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

unint64_t sub_1B49EADF8(int a1, uint64_t a2)
{
  v3 = v2;
  v20 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = -1 << *(v3 + 32);
  v13 = a2 & ~v12;
  if ((*(v3 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = (v9 + 8);
    do
    {
      v22 = *(*(v3 + 48) + v13);
      v21 = v20;
      DistanceReference.rawValue.getter();
      DistanceReference.rawValue.getter();
      sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
      v16 = sub_1B4D1816C();
      v17 = *v15;
      (*v15)(v7, v5);
      v17(v11, v5);
      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v3 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_1B49EAFF0(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    v9 = 0x1E6985000uLL;
    do
    {
      v12 = *(*(v6 + 48) + 8 * v5);
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13 && (v14 = v13, objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) != 0))
      {
        v16 = v15;
        v17 = v3;
        v18 = v8;
        v19 = v9;
        v20 = v12;
        v21 = a1;
        [v14 coordinate];
        v23 = v22;
        [v16 coordinate];
        if (v23 == v24)
        {
          [v14 coordinate];
          v26 = v25;
          [v16 coordinate];
          v28 = v27;

          v9 = v19;
          v8 = v18;
          v3 = v17;
          v6 = v30;
          if (v26 == v28)
          {
            return v5;
          }
        }

        else
        {

          v9 = v19;
          v8 = v18;
          v3 = v17;
          v6 = v30;
        }
      }

      else
      {
        sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
        v10 = v12;
        v11 = sub_1B4D187AC();

        if (v11)
        {
          return v5;
        }
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B49EB1C4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1B4D18DCC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B49EB27C(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(a1 + 16);
    v9 = *(v2 + 48);
    v10 = (a1 + 40);
    do
    {
      v11 = *(v9 + 8 * v5);
      if (*(v11 + 16) == v8)
      {
        if (!v8 || v11 == a1)
        {
          return v5;
        }

        v12 = (v11 + 40);
        v13 = v10;
        v14 = v8;
        while (1)
        {
          v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
          if (!v15 && (sub_1B4D18DCC() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          if (!--v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B49EB38C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FitnessContextQueryDescriptor(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1B49EEFF0(*(v2 + 48) + v12 * v10, v8);
      DescriptorO2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v8, a1);
      sub_1B49EF054(v8);
      if (DescriptorO2eeoiySbAC_ACtFZ_0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1B49EB4C4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    while (1)
    {
      v5 = 0xD00000000000001ALL;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v6 = "thisWeekProperties";
      }

      else
      {
        v5 = 0xD000000000000012;
        v6 = "thisTimeLastWeekProperties";
      }

      v7 = *(*(v2 + 48) + v4) ? v5 : 0xD000000000000012;
      v8 = *(*(v2 + 48) + v4) ? v6 : "last_week_total_distance>.";
      if (a1)
      {
        v9 = a1 == 1 ? 0xD00000000000001ALL : 0xD000000000000012;
        v10 = a1 == 1 ? "thisWeekProperties" : "thisTimeLastWeekProperties";
      }

      else
      {
        v9 = 0xD000000000000012;
        v10 = "last_week_total_distance>.";
      }

      if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v11 = sub_1B4D18DCC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
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

unint64_t sub_1B49EB640(unsigned __int8 a1, uint64_t a2)
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
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v8 = 0x44676E6974696177;
          v9 = 0xEF6E6F6974617275;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x7275446C61746F74;
          }

          else
          {
            v8 = 0x746E656D6F6DLL;
          }

          if (v7 == 4)
          {
            v9 = 0xED00006E6F697461;
          }

          else
          {
            v9 = 0xE600000000000000;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x687370616E537369;
        }

        else
        {
          v8 = 0xD000000000000012;
        }

        if (v7 == 1)
        {
          v9 = 0xEF7972657551746FLL;
        }

        else
        {
          v9 = 0x80000001B4D4E5A0;
        }
      }

      else
      {
        v9 = 0xE500000000000000;
        v8 = 0x7972657571;
      }

      v10 = 0x7275446C61746F74;
      if (v6 != 4)
      {
        v10 = 0x746E656D6F6DLL;
      }

      v11 = 0xED00006E6F697461;
      if (v6 != 4)
      {
        v11 = 0xE600000000000000;
      }

      if (v6 == 3)
      {
        v10 = 0x44676E6974696177;
        v11 = 0xEF6E6F6974617275;
      }

      v12 = 0xD000000000000012;
      if (v6 == 1)
      {
        v12 = 0x687370616E537369;
      }

      v13 = 0xEF7972657551746FLL;
      if (v6 != 1)
      {
        v13 = 0x80000001B4D4E5A0;
      }

      if (!v6)
      {
        v12 = 0x7972657571;
        v13 = 0xE500000000000000;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_1B4D18DCC();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_1B49EB8C0(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1B498AFB8(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1B4D187AC();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1B49EB98C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    if (a1)
    {
      v5 = 0xD000000000000019;
    }

    else
    {
      v5 = 0xD00000000000001DLL;
    }

    if (a1)
    {
      v6 = "lastSixWeeksWorkoutProperties";
    }

    else
    {
      v6 = " work done today!'";
    }

    v7 = v6 | 0x8000000000000000;
    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD000000000000019 : 0xD00000000000001DLL;
      v9 = *(*(v2 + 48) + v4) ? "lastSixWeeksWorkoutProperties" : " work done today!'";
      if (v8 == v5 && (v9 | 0x8000000000000000) == v7)
      {
        break;
      }

      v11 = sub_1B4D18DCC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
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

unint64_t sub_1B49EBAD0(unsigned __int8 a1, uint64_t a2)
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
      if (v7 <= 1)
      {
        v8 = *(*(v2 + 48) + v4) ? 1801807223 : 7954788;
        v9 = *(*(v2 + 48) + v4) ? 0xE400000000000000 : 0xE300000000000000;
      }

      else if (v7 == 2)
      {
        v9 = 0xE500000000000000;
        v8 = 0x68746E6F6DLL;
      }

      else
      {
        v8 = v7 == 3 ? 1918985593 : 1919252069;
        v9 = 0xE400000000000000;
      }

      if (v6 == 3)
      {
        v10 = 1918985593;
      }

      else
      {
        v10 = 1919252069;
      }

      v11 = 0xE400000000000000;
      if (v6 == 2)
      {
        v10 = 0x68746E6F6DLL;
        v11 = 0xE500000000000000;
      }

      v12 = v6 ? 1801807223 : 7954788;
      v13 = v6 ? 0xE400000000000000 : 0xE300000000000000;
      v14 = v6 <= 1 ? v12 : v10;
      v15 = v6 <= 1 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_1B4D18DCC();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_1B49EBC88(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_1B49EBCF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v3;
  v23[2] = *(a1 + 32);
  v24 = *(a1 + 48);
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 56 * v5;
      v9 = *(v7 + 16);
      v8 = *(v7 + 32);
      v10 = *(v7 + 48);
      v19[0] = *v7;
      v20 = v10;
      v19[1] = v9;
      v19[2] = v8;
      v11 = *(v7 + 16);
      v15 = *v7;
      v16 = v11;
      v17 = *(v7 + 32);
      v18 = *(v7 + 48);
      sub_1B498B0D4(v19, v14);
      v12 = _s19FitnessIntelligence25WorkoutPropertyDimensionsV2eeoiySbAC_ACtFZ_0(&v15, v23);
      v21[0] = v15;
      v21[1] = v16;
      v21[2] = v17;
      v22 = v18;
      sub_1B498AD54(v21);
      if (v12)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B49EBE24(int a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = a1;
    v6 = BYTE1(a1);
    v7 = ~v3;
    v41 = a1 & 0xFF0000;
    v42 = BYTE1(a1);
    do
    {
      v8 = (*(v2 + 48) + 3 * v4);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      if (v9 == 12)
      {
        if (v5 != 12)
        {
          goto LABEL_4;
        }

LABEL_7:
        if (v10 == 7)
        {
          goto LABEL_8;
        }

        goto LABEL_83;
      }

      if (v5 == 12)
      {
        goto LABEL_4;
      }

      if (*v8 > 5u)
      {
        if (*v8 > 8u)
        {
          if (v9 == 9)
          {
            v12 = 0xE700000000000000;
            v13 = 0x7265626F74636FLL;
            if (v5 > 5)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v12 = 0xE800000000000000;
            if (v9 == 10)
            {
              v14 = 1702260590;
            }

            else
            {
              v14 = 1701012836;
            }

            v13 = v14 | 0x7265626D00000000;
            if (v5 > 5)
            {
LABEL_37:
              v15 = 0x7265626D65766F6ELL;
              if (v5 != 10)
              {
                v15 = 0x7265626D65636564;
              }

              v16 = 0xE800000000000000;
              if (v5 == 9)
              {
                v15 = 0x7265626F74636FLL;
                v16 = 0xE700000000000000;
              }

              v17 = 0x65626D6574706573;
              if (v5 == 7)
              {
                v17 = 0x747375677561;
              }

              v18 = 0xE900000000000072;
              if (v5 == 7)
              {
                v18 = 0xE600000000000000;
              }

              if (v5 == 6)
              {
                v17 = 2037151082;
                v18 = 0xE400000000000000;
              }

              if (v5 <= 8)
              {
                v19 = v17;
              }

              else
              {
                v19 = v15;
              }

              if (v5 <= 8)
              {
                v20 = v18;
              }

              else
              {
                v20 = v16;
              }

              if (v13 != v19)
              {
LABEL_110:
                v31 = sub_1B4D18DCC();

                v6 = v42;
                if ((v31 & 1) == 0)
                {
                  goto LABEL_4;
                }

                goto LABEL_7;
              }

              goto LABEL_81;
            }
          }
        }

        else if (v9 == 6)
        {
          v12 = 0xE400000000000000;
          v13 = 2037151082;
          if (v5 > 5)
          {
            goto LABEL_37;
          }
        }

        else if (v9 == 7)
        {
          v12 = 0xE600000000000000;
          v13 = 0x747375677561;
          if (v5 > 5)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v13 = 0x65626D6574706573;
          v12 = 0xE900000000000072;
          if (v5 > 5)
          {
            goto LABEL_37;
          }
        }
      }

      else if (*v8 > 2u)
      {
        if (v9 == 3)
        {
          v12 = 0xE500000000000000;
          v13 = 0x6C69727061;
          if (v5 > 5)
          {
            goto LABEL_37;
          }
        }

        else if (v9 == 4)
        {
          v12 = 0xE300000000000000;
          v13 = 7954797;
          if (v5 > 5)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v12 = 0xE400000000000000;
          v13 = 1701737834;
          if (v5 > 5)
          {
            goto LABEL_37;
          }
        }
      }

      else if (*v8)
      {
        if (v9 == 1)
        {
          v12 = 0xE800000000000000;
          v13 = 0x7972617572626566;
          if (v5 > 5)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v12 = 0xE500000000000000;
          v13 = 0x686372616DLL;
          if (v5 > 5)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        v12 = 0xE700000000000000;
        v13 = 0x797261756E616ALL;
        if (v5 > 5)
        {
          goto LABEL_37;
        }
      }

      if (v5 > 2)
      {
        v25 = 1701737834;
        if (v5 == 4)
        {
          v25 = 7954797;
        }

        v24 = 0xE300000000000000;
        if (v5 != 4)
        {
          v24 = 0xE400000000000000;
        }

        v21 = v5 == 3;
        if (v5 == 3)
        {
          v22 = 0x6C69727061;
        }

        else
        {
          v22 = v25;
        }

        v23 = 0xE500000000000000;
      }

      else
      {
        if (!v5)
        {
          v20 = 0xE700000000000000;
          if (v13 != 0x797261756E616ALL)
          {
            goto LABEL_110;
          }

          goto LABEL_81;
        }

        v21 = v5 == 1;
        if (v5 == 1)
        {
          v22 = 0x7972617572626566;
        }

        else
        {
          v22 = 0x686372616DLL;
        }

        v23 = 0xE800000000000000;
        v24 = 0xE500000000000000;
      }

      if (v21)
      {
        v20 = v23;
      }

      else
      {
        v20 = v24;
      }

      if (v13 != v22)
      {
        goto LABEL_110;
      }

LABEL_81:
      if (v12 != v20)
      {
        goto LABEL_110;
      }

      v6 = v42;
      if (v10 == 7)
      {
LABEL_8:
        if (v6 != 7)
        {
          goto LABEL_4;
        }

        goto LABEL_9;
      }

LABEL_83:
      if (v6 == 7)
      {
        goto LABEL_4;
      }

      if (v10 <= 2)
      {
        if (!v10)
        {
          v26 = 0xE600000000000000;
          v32 = 1684959085;
LABEL_116:
          v28 = v32 & 0xFFFF0000FFFFFFFFLL | 0x796100000000;
          if (v6 <= 2)
          {
            goto LABEL_96;
          }

          goto LABEL_117;
        }

        if (v10 == 1)
        {
          v28 = 0x79616473657574;
        }

        else
        {
          v28 = 0x616473656E646577;
        }

        if (v10 == 1)
        {
          v26 = 0xE700000000000000;
        }

        else
        {
          v26 = 0xE900000000000079;
        }

        if (v6 <= 2)
        {
LABEL_96:
          if (v6)
          {
            if (v6 == 1)
            {
              v29 = 0x79616473657574;
            }

            else
            {
              v29 = 0x616473656E646577;
            }

            if (v6 == 1)
            {
              v30 = 0xE700000000000000;
            }

            else
            {
              v30 = 0xE900000000000079;
            }

            if (v28 == v29)
            {
              goto LABEL_131;
            }
          }

          else
          {
            v30 = 0xE600000000000000;
            if (v28 == 0x7961646E6F6DLL)
            {
              goto LABEL_131;
            }
          }

          goto LABEL_136;
        }
      }

      else
      {
        if (v10 <= 4)
        {
          if (v10 == 3)
          {
            v26 = 0xE800000000000000;
            v27 = 0x647372756874;
            goto LABEL_107;
          }

          v26 = 0xE600000000000000;
          v32 = 1684632166;
          goto LABEL_116;
        }

        if (v10 == 5)
        {
          v26 = 0xE800000000000000;
          v27 = 0x647275746173;
LABEL_107:
          v28 = v27 & 0xFFFFFFFFFFFFLL | 0x7961000000000000;
          if (v6 <= 2)
          {
            goto LABEL_96;
          }

          goto LABEL_117;
        }

        v28 = 0x7961646E7573;
        v26 = 0xE600000000000000;
        if (v6 <= 2)
        {
          goto LABEL_96;
        }
      }

LABEL_117:
      v33 = 0x7961646E7573;
      if (v6 == 5)
      {
        v33 = 0x7961647275746173;
      }

      v34 = 0xE800000000000000;
      if (v6 == 5)
      {
        v35 = 0xE800000000000000;
      }

      else
      {
        v35 = 0xE600000000000000;
      }

      v36 = 0x7961647372756874;
      if (v6 != 3)
      {
        v36 = 0x796164697266;
        v34 = 0xE600000000000000;
      }

      if (v6 <= 4)
      {
        v37 = v36;
      }

      else
      {
        v37 = v33;
      }

      if (v6 <= 4)
      {
        v30 = v34;
      }

      else
      {
        v30 = v35;
      }

      if (v28 == v37)
      {
LABEL_131:
        if (v26 == v30)
        {

          v6 = v42;
          if (v11 == 2)
          {
LABEL_3:
            if (v41 == 0x20000)
            {
              return v4;
            }

            goto LABEL_4;
          }

          goto LABEL_133;
        }
      }

LABEL_136:
      v38 = sub_1B4D18DCC();

      v6 = v42;
      if ((v38 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      if (v11 == 2)
      {
        goto LABEL_3;
      }

LABEL_133:
      if (v41 != 0x20000 && ((v11 ^ ((a1 & 0x10000u) >> 16)) & 1) == 0)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v7;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B49EC4A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1B49EEF98();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B4D17A0C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B49EC584(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = 0xD00000000000001DLL;
      v8 = v6 == 2 ? 0xD00000000000001DLL : 0xD000000000000019;
      v9 = v6 == 2 ? 0x80000001B4D4AAF0 : 0x80000001B4D4AB10;
      v10 = *(*(v23 + 48) + v4) ? 0xD000000000000016 : 0x6665725072657375;
      v11 = *(*(v23 + 48) + v4) ? 0x80000001B4D4BF20 : 0xEF7365636E657265;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = *(*(v23 + 48) + v4) <= 1u ? v11 : v9;
      if (v5 == 2)
      {
        v14 = 0x80000001B4D4AAF0;
      }

      else
      {
        v7 = 0xD000000000000019;
        v14 = 0x80000001B4D4AB10;
      }

      v15 = v5 ? 0xD000000000000016 : 0x6665725072657375;
      v16 = v5 ? 0x80000001B4D4BF20 : 0xEF7365636E657265;
      v17 = v5 <= 1 ? v15 : v7;
      v18 = v5 <= 1 ? v16 : v14;
      if (v12 == v17 && v13 == v18)
      {
        break;
      }

      v19 = sub_1B4D18DCC();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1B49EC73C(unsigned __int8 a1, uint64_t a2)
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
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xD000000000000019;
          v8 = 0x80000001B4D4AE90;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xD00000000000001ALL;
          v8 = 0x80000001B4D4AEB0;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xED0000747865746ELL;
            if (v7 != 0x6F43736472617761)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0x6F43736472617761;
        v8 = 0xED0000747865746ELL;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0xD000000000000019;
      }

      else
      {
        v10 = 0xD00000000000001ALL;
      }

      if (v9 == 1)
      {
        v11 = 0x80000001B4D4AE90;
      }

      else
      {
        v11 = 0x80000001B4D4AEB0;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_1B4D18DCC();

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

unint64_t sub_1B49EC8F0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = "activitySummaryContext";
    }

    else
    {
      v6 = "ringsPropertiesAllTime";
    }

    v7 = (v6 - 32) | 0x8000000000000000;
    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? "activitySummaryContext" : "ringsPropertiesAllTime";
      if (((v8 - 32) | 0x8000000000000000) == v7)
      {
        break;
      }

      v9 = sub_1B4D18DCC();

      if ((v9 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_1B49ECA14(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD000000000000017;
    }

    if (a1)
    {
      v7 = "s <ring_percentage>.";
    }

    else
    {
      v7 = "on";
    }

    v8 = v7 | 0x8000000000000000;
    while (1)
    {
      v9 = *(*(v2 + 48) + v4) ? 0xD000000000000016 : 0xD000000000000017;
      v10 = *(*(v2 + 48) + v4) ? "s <ring_percentage>." : "on";
      if (v9 == v6 && (v10 | 0x8000000000000000) == v8)
      {
        break;
      }

      v12 = sub_1B4D18DCC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_1B49ECB48(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    if (a1)
    {
      v5 = 0xD00000000000002DLL;
    }

    else
    {
      v5 = 0xD00000000000001ELL;
    }

    if (a1)
    {
      v6 = "lastFourWeeksWorkoutProperties";
    }

    else
    {
      v6 = "elevation_milestone>.";
    }

    v7 = v6 | 0x8000000000000000;
    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD00000000000002DLL : 0xD00000000000001ELL;
      v9 = *(*(v2 + 48) + v4) ? "lastFourWeeksWorkoutProperties" : "elevation_milestone>.";
      if (v8 == v5 && (v9 | 0x8000000000000000) == v7)
      {
        break;
      }

      v11 = sub_1B4D18DCC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
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

unint64_t sub_1B49ECC90(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v22 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v24 + 48) + v4);
      v7 = v6 == 2 ? 0xD000000000000019 : 0xD000000000000015;
      v8 = v6 == 2 ? "lastSixWeeksWorkoutProperties" : "ness_plus_modality> workout.";
      v9 = *(*(v24 + 48) + v4) ? 0xD00000000000001ALL : 0xD000000000000019;
      v10 = *(*(v24 + 48) + v4) ? "rmatted_average_duration>." : "e of <distance_milestone>.";
      v11 = *(*(v24 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v24 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v12 | 0x8000000000000000;
      v14 = v5 == 2 ? 0xD000000000000019 : 0xD000000000000015;
      v15 = v5 == 2 ? "lastSixWeeksWorkoutProperties" : "ness_plus_modality> workout.";
      v16 = v5 ? 0xD00000000000001ALL : 0xD000000000000019;
      v17 = v5 ? "rmatted_average_duration>." : "e of <distance_milestone>.";
      v18 = v5 <= 1 ? v16 : v14;
      v19 = v5 <= 1 ? v17 : v15;
      if (v11 == v18 && v13 == (v19 | 0x8000000000000000))
      {
        break;
      }

      v20 = sub_1B4D18DCC();

      if ((v20 & 1) == 0)
      {
        v4 = (v4 + 1) & v22;
        if ((*(v23 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1B49ECE2C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    if (a1)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xD000000000000019;
    }

    if (a1)
    {
      v6 = "ness_plus_modality> workout.";
    }

    else
    {
      v6 = "lastSixWeeksWorkoutProperties";
    }

    v7 = v6 | 0x8000000000000000;
    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD000000000000015 : 0xD000000000000019;
      v9 = *(*(v2 + 48) + v4) ? "ness_plus_modality> workout." : "lastSixWeeksWorkoutProperties";
      if (v8 == v5 && (v9 | 0x8000000000000000) == v7)
      {
        break;
      }

      v11 = sub_1B4D18DCC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
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

uint64_t sub_1B49ECF74(uint64_t *a1)
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
  sub_1B49ECFF0(v6);
  return sub_1B4D189FC();
}

void sub_1B49ECFF0(uint64_t *a1)
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
        sub_1B498AFB8(0, &qword_1EB8A7928, 0x1E696C5B8);
        v6 = sub_1B4D1844C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1B49ED434(v8, v9, a1, v4);
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
    sub_1B49ED104(0, v2, 1, a1);
  }
}

void sub_1B49ED104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v49 = sub_1B4D1777C();
  v8 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v37 - v11;
  v46 = sub_1B4D174EC();
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v37 - v15;
  v38 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = (v8 + 8);
    v43 = (v14 + 8);
    v50 = v16;
    v17 = v16 + 8 * a3 - 8;
    v18 = a1 - a3;
LABEL_5:
    v40 = v17;
    v41 = a3;
    v19 = *(v50 + 8 * a3);
    v39 = v18;
    v20 = v18;
    while (1)
    {
      v21 = *v17;
      v22 = v19;
      v51 = v22;
      v23 = v21;
      v24 = [v22 dateInterval];
      v25 = v44;
      sub_1B4D174AC();

      v26 = v47;
      sub_1B4D174DC();
      v27 = *v43;
      v28 = v46;
      (*v43)(v25, v46);
      v29 = [v23 dateInterval];
      v30 = v45;
      sub_1B4D174AC();

      v31 = v48;
      sub_1B4D174DC();
      v27(v30, v28);
      LOBYTE(v30) = sub_1B4D1773C();
      v32 = *v42;
      v33 = v31;
      v34 = v49;
      (*v42)(v33, v49);
      v32(v26, v34);

      if ((v30 & 1) == 0)
      {
LABEL_4:
        a3 = v41 + 1;
        v17 = v40 + 8;
        v18 = v39 - 1;
        if (v41 + 1 == v38)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v35 = *v17;
      v19 = *(v17 + 8);
      *v17 = v19;
      *(v17 + 8) = v35;
      v17 -= 8;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B49ED434(id **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v135 = a1;
  v148 = sub_1B4D1777C();
  v8 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v146 = &v129 - v11;
  v145 = sub_1B4D174EC();
  MEMORY[0x1EEE9AC00](v145);
  v144 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v143 = &v129 - v15;
  v16 = *(a3 + 8);
  if (v16 < 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_86:
    v8 = *v135;
    if (!*v135)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_118:
      v18 = sub_1B4CDDE84(v18);
    }

    v150 = v18;
    v124 = *(v18 + 2);
    if (v124 >= 2)
    {
      do
      {
        v125 = *a3;
        if (!*a3)
        {
          goto LABEL_122;
        }

        v126 = a3;
        v127 = *&v18[16 * v124];
        a3 = *&v18[16 * v124 + 24];
        sub_1B49EDE58((v125 + 8 * v127), (v125 + 8 * *&v18[16 * v124 + 16]), (v125 + 8 * a3), v8);
        if (v5)
        {
          break;
        }

        if (a3 < v127)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1B4CDDE84(v18);
        }

        if (v124 - 2 >= *(v18 + 2))
        {
          goto LABEL_112;
        }

        v128 = &v18[16 * v124];
        *v128 = v127;
        v128[1] = a3;
        v150 = v18;
        sub_1B4CDDDF8(v124 - 1);
        v18 = v150;
        v124 = *(v150 + 2);
        a3 = v126;
      }

      while (v124 > 1);
    }

LABEL_96:

    return;
  }

  v130 = a4;
  v17 = 0;
  v141 = (v8 + 8);
  v142 = (v14 + 8);
  v18 = MEMORY[0x1E69E7CC0];
  v131 = a3;
  while (1)
  {
    v19 = v17++;
    if (v17 < v16)
    {
      v139 = v16;
      v133 = v18;
      v134 = v5;
      v20 = *a3;
      v21 = *(*a3 + 8 * v17);
      v136 = 8 * v19;
      v22 = (v20 + 8 * v19);
      v23 = *v22;
      v8 = (v22 + 2);
      v24 = v21;
      v149 = v24;
      v25 = v23;
      v132 = v25;
      v26 = [v24 dateInterval];
      v27 = v143;
      sub_1B4D174AC();

      v28 = v146;
      sub_1B4D174DC();
      v29 = *v142;
      v30 = v145;
      (*v142)(v27, v145);
      v31 = [v25 dateInterval];
      v32 = v19;
      v33 = v144;
      sub_1B4D174AC();

      v34 = v147;
      sub_1B4D174DC();
      v138 = v29;
      v29(v33, v30);
      LODWORD(v140) = sub_1B4D1773C();
      v35 = *v141;
      v36 = v148;
      (*v141)(v34, v148);
      v137 = v35;
      (v35)(v28, v36);

      v132 = v32;
      v37 = v32 + 2;
      while (1)
      {
        v17 = v139;
        if (v139 == v37)
        {
          break;
        }

        v38 = *(v8 - 8);
        v39 = *v8;
        v149 = v39;
        v40 = v38;
        v41 = [v39 dateInterval];
        v42 = v143;
        sub_1B4D174AC();

        v43 = v146;
        sub_1B4D174DC();
        v44 = v145;
        v45 = v138;
        v138(v42, v145);
        v46 = [v40 dateInterval];
        v47 = v144;
        sub_1B4D174AC();

        v48 = v147;
        sub_1B4D174DC();
        v45(v47, v44);
        LODWORD(v47) = sub_1B4D1773C() & 1;
        v49 = v48;
        v50 = v148;
        v51 = v137;
        (v137)(v49, v148);
        v51(v43, v50);

        ++v37;
        v8 += 8;
        if ((v140 & 1) != v47)
        {
          v17 = (v37 - 1);
          break;
        }
      }

      v18 = v133;
      v5 = v134;
      a3 = v131;
      v19 = v132;
      v52 = v136;
      if (v140)
      {
        if (v17 < v132)
        {
          goto LABEL_115;
        }

        if (v132 < v17)
        {
          v53 = 8 * v17 - 8;
          v54 = v17;
          v55 = v132;
          do
          {
            if (v55 != --v54)
            {
              v57 = *a3;
              if (!*a3)
              {
                goto LABEL_121;
              }

              v56 = *(v57 + v52);
              *(v57 + v52) = *(v57 + v53);
              *(v57 + v53) = v56;
            }

            ++v55;
            v53 -= 8;
            v52 += 8;
          }

          while (v55 < v54);
        }
      }
    }

    v58 = *(a3 + 8);
    if (v17 < v58)
    {
      if (__OFSUB__(v17, v19))
      {
        goto LABEL_114;
      }

      if (v17 - v19 < v130)
      {
        v59 = (v19 + v130);
        if (__OFADD__(v19, v130))
        {
          goto LABEL_116;
        }

        if (v59 >= v58)
        {
          v59 = *(a3 + 8);
        }

        if (v59 < v19)
        {
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (v17 != v59)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v17 < v19)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1B4A1D58C(0, *(v18 + 2) + 1, 1, v18);
    }

    v8 = *(v18 + 2);
    v79 = *(v18 + 3);
    v80 = v8 + 1;
    if (v8 >= v79 >> 1)
    {
      v18 = sub_1B4A1D58C((v79 > 1), v8 + 1, 1, v18);
    }

    *(v18 + 2) = v80;
    v81 = &v18[16 * v8];
    *(v81 + 4) = v19;
    *(v81 + 5) = v17;
    v82 = *v135;
    if (!*v135)
    {
      goto LABEL_123;
    }

    if (v8)
    {
      while (1)
      {
        v8 = v80 - 1;
        if (v80 >= 4)
        {
          break;
        }

        if (v80 == 3)
        {
          v83 = *(v18 + 4);
          v84 = *(v18 + 5);
          v93 = __OFSUB__(v84, v83);
          v85 = v84 - v83;
          v86 = v93;
LABEL_55:
          if (v86)
          {
            goto LABEL_102;
          }

          v99 = &v18[16 * v80];
          v101 = *v99;
          v100 = *(v99 + 1);
          v102 = __OFSUB__(v100, v101);
          v103 = v100 - v101;
          v104 = v102;
          if (v102)
          {
            goto LABEL_105;
          }

          v105 = &v18[16 * v8 + 32];
          v107 = *v105;
          v106 = *(v105 + 1);
          v93 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v93)
          {
            goto LABEL_108;
          }

          if (__OFADD__(v103, v108))
          {
            goto LABEL_109;
          }

          if (v103 + v108 >= v85)
          {
            if (v85 < v108)
            {
              v8 = v80 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v109 = &v18[16 * v80];
        v111 = *v109;
        v110 = *(v109 + 1);
        v93 = __OFSUB__(v110, v111);
        v103 = v110 - v111;
        v104 = v93;
LABEL_69:
        if (v104)
        {
          goto LABEL_104;
        }

        v112 = &v18[16 * v8];
        v114 = *(v112 + 4);
        v113 = *(v112 + 5);
        v93 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v93)
        {
          goto LABEL_107;
        }

        if (v115 < v103)
        {
          goto LABEL_3;
        }

LABEL_76:
        v120 = v8 - 1;
        if (v8 - 1 >= v80)
        {
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
          goto LABEL_117;
        }

        if (!*a3)
        {
          goto LABEL_120;
        }

        v121 = *&v18[16 * v120 + 32];
        v122 = *&v18[16 * v8 + 40];
        sub_1B49EDE58((*a3 + 8 * v121), (*a3 + 8 * *&v18[16 * v8 + 32]), (*a3 + 8 * v122), v82);
        if (v5)
        {
          goto LABEL_96;
        }

        if (v122 < v121)
        {
          goto LABEL_98;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1B4CDDE84(v18);
        }

        if (v120 >= *(v18 + 2))
        {
          goto LABEL_99;
        }

        v123 = &v18[16 * v120];
        *(v123 + 4) = v121;
        *(v123 + 5) = v122;
        v150 = v18;
        sub_1B4CDDDF8(v8);
        v18 = v150;
        v80 = *(v150 + 2);
        if (v80 <= 1)
        {
          goto LABEL_3;
        }
      }

      v87 = &v18[16 * v80 + 32];
      v88 = *(v87 - 64);
      v89 = *(v87 - 56);
      v93 = __OFSUB__(v89, v88);
      v90 = v89 - v88;
      if (v93)
      {
        goto LABEL_100;
      }

      v92 = *(v87 - 48);
      v91 = *(v87 - 40);
      v93 = __OFSUB__(v91, v92);
      v85 = v91 - v92;
      v86 = v93;
      if (v93)
      {
        goto LABEL_101;
      }

      v94 = &v18[16 * v80];
      v96 = *v94;
      v95 = *(v94 + 1);
      v93 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v93)
      {
        goto LABEL_103;
      }

      v93 = __OFADD__(v85, v97);
      v98 = v85 + v97;
      if (v93)
      {
        goto LABEL_106;
      }

      if (v98 >= v90)
      {
        v116 = &v18[16 * v8 + 32];
        v118 = *v116;
        v117 = *(v116 + 1);
        v93 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v93)
        {
          goto LABEL_110;
        }

        if (v85 < v119)
        {
          v8 = v80 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v16 = *(a3 + 8);
    if (v17 >= v16)
    {
      goto LABEL_86;
    }
  }

  v133 = v18;
  v134 = v5;
  v140 = *a3;
  v60 = v140 + 8 * v17 - 8;
  v132 = v19;
  v61 = (v19 - v17);
  v136 = v59;
LABEL_28:
  v138 = v60;
  v139 = v17;
  v62 = *(v140 + 8 * v17);
  v137 = v61;
  while (1)
  {
    v63 = *v60;
    v64 = v62;
    v149 = v64;
    v65 = v63;
    v66 = [v64 dateInterval];
    v67 = v143;
    sub_1B4D174AC();

    v68 = v146;
    sub_1B4D174DC();
    v69 = *v142;
    v70 = v145;
    (*v142)(v67, v145);
    v71 = [v65 dateInterval];
    v72 = v144;
    sub_1B4D174AC();

    v73 = v147;
    sub_1B4D174DC();
    v69(v72, v70);
    LOBYTE(v72) = sub_1B4D1773C();
    v8 = v141;
    v74 = *v141;
    v75 = v73;
    v76 = v148;
    (*v141)(v75, v148);
    v74(v68, v76);

    if ((v72 & 1) == 0)
    {
LABEL_27:
      v17 = v139 + 1;
      v60 = v138 + 8;
      v61 = v137 - 1;
      if (v139 + 1 != v136)
      {
        goto LABEL_28;
      }

      v17 = v136;
      v18 = v133;
      v5 = v134;
      a3 = v131;
      v19 = v132;
      goto LABEL_35;
    }

    if (!v140)
    {
      break;
    }

    v77 = *v60;
    v62 = *(v60 + 8);
    *v60 = v62;
    *(v60 + 8) = v77;
    v60 -= 8;
    if (__CFADD__(v61++, 1))
    {
      goto LABEL_27;
    }
  }

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
}

uint64_t sub_1B49EDE58(void **a1, void **a2, void **a3, void **a4)
{
  v80 = sub_1B4D1777C();
  v71 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v66 - v11;
  v77 = sub_1B4D174EC();
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v66 - v15;
  v16 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v16 = a2 - a1;
  }

  v17 = v16 >> 3;
  v18 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v18 = a3 - a2;
  }

  v19 = v18 >> 3;
  v81 = a4;
  if (v17 < v18 >> 3)
  {
    if (a4 != a1 || &a1[v17] <= a4)
    {
      v20 = a4;
      v21 = v14;
      memmove(v20, a1, 8 * v17);
      v14 = v21;
      a4 = v81;
    }

    v82 = &a4[v17];
    if (a2 - a1 < 8 || a2 >= a3)
    {
      a2 = a1;
      goto LABEL_39;
    }

    v22 = a2;
    v68 = v4;
    ++v71;
    v72 = (v14 + 8);
    v73 = a3;
    while (1)
    {
      v81 = a4;
      v74 = a1;
      v23 = *a4;
      v24 = *v22;
      v25 = v23;
      v26 = [v24 dateInterval];
      v27 = v75;
      sub_1B4D174AC();

      v28 = v78;
      sub_1B4D174DC();
      v29 = *v72;
      v30 = v27;
      v31 = v77;
      (*v72)(v30, v77);
      v32 = [v25 dateInterval];
      v33 = v76;
      sub_1B4D174AC();

      v34 = v79;
      sub_1B4D174DC();
      v29(v33, v31);
      LOBYTE(v33) = sub_1B4D1773C();
      v35 = *v71;
      v36 = v34;
      v37 = v80;
      (*v71)(v36, v80);
      v35(v28, v37);

      if ((v33 & 1) == 0)
      {
        break;
      }

      v38 = v22;
      v39 = v74;
      v40 = v74 == v22++;
      a4 = v81;
      if (!v40)
      {
        goto LABEL_17;
      }

LABEL_18:
      a1 = v39 + 1;
      if (a4 >= v82 || v22 >= v73)
      {
        a2 = a1;
        goto LABEL_39;
      }
    }

    v38 = v81;
    a4 = v81 + 1;
    v39 = v74;
    if (v74 == v81)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v39 = *v38;
    goto LABEL_18;
  }

  if (a4 != a2 || &a2[v19] <= a4)
  {
    v41 = v14;
    memmove(a4, a2, 8 * v19);
    v14 = v41;
    a4 = v81;
  }

  v82 = &a4[v19];
  if (a3 - a2 >= 8 && a2 > a1)
  {
    v70 = (v14 + 8);
    v68 = v4;
    v69 = (v71 + 1);
    v74 = a1;
    do
    {
      v67 = a2;
      v42 = a2 - 1;
      v43 = a3 - 1;
      v44 = v82;
      v71 = a2 - 1;
      while (1)
      {
        v45 = v43;
        v46 = v43 + 1;
        v47 = *--v44;
        v48 = *v42;
        v49 = v47;
        v73 = v49;
        v50 = v48;
        v72 = v50;
        v51 = [v49 dateInterval];
        v52 = v75;
        sub_1B4D174AC();

        v53 = v78;
        sub_1B4D174DC();
        v54 = *v70;
        v55 = v52;
        v56 = v77;
        (*v70)(v55, v77);
        v57 = [v50 dateInterval];
        v58 = v76;
        sub_1B4D174AC();

        v59 = v79;
        sub_1B4D174DC();
        v54(v58, v56);
        LOBYTE(v58) = sub_1B4D1773C();
        v60 = *v69;
        v61 = v59;
        v62 = v80;
        (*v69)(v61, v80);
        v60(v53, v62);

        if (v58)
        {
          break;
        }

        a4 = v81;
        if (v46 != v82)
        {
          *v45 = *v44;
        }

        v43 = v45 - 1;
        v82 = v44;
        v42 = v71;
        if (v44 <= a4)
        {
          v82 = v44;
          a2 = v67;
          goto LABEL_39;
        }
      }

      a4 = v81;
      v63 = v74;
      a3 = v45;
      v64 = v71;
      if (v46 != v67)
      {
        *v45 = *v71;
      }

      if (v82 <= a4)
      {
        break;
      }

      a2 = v64;
    }

    while (v64 > v63);
    a2 = v64;
  }

LABEL_39:
  if (a2 != a4 || a2 >= (a4 + ((v82 - a4 + (v82 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v82 - a4));
  }

  return 1;
}

void (*sub_1B49EE474(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8C7CD90](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B49EE4F4;
  }

  __break(1u);
  return result;
}

void (*sub_1B49EE4FC(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8C7CD90](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B49EF0BC;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B49EE5A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B49EE8A8(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1B4D18ABC();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B49EE94C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B4D18ABC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1B4D18ABC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B49B0578(&qword_1EB8A79A0, &qword_1EB8A7998, &qword_1B4D1F308, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7998, &qword_1B4D1F308);
            v9 = sub_1B49EE474(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1B498AFB8(0, &qword_1EB8A7928, 0x1E696C5B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B49EEB00(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B4D18ABC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1B4D18ABC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B49B0578(&qword_1EB8A7988, &qword_1EB8A7980, &qword_1B4D1F300, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7980, &qword_1B4D1F300);
            v9 = sub_1B49EE4FC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1B498AFB8(0, &qword_1EDC36DD0, 0x1E696C358);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B49EECD8(uint64_t a1, uint64_t a2)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  v2 = sub_1B4D18EDC();
  return sub_1B49EEF6C(v2);
}

uint64_t sub_1B49EED40()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  v0 = sub_1B4D18EDC();
  return sub_1B49EEF6C(v0);
}

uint64_t sub_1B49EEDCC()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  v0 = sub_1B4D18EDC();
  return sub_1B49EEF6C(v0);
}

uint64_t sub_1B49EEE34()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  v0 = sub_1B4D18EDC();
  return sub_1B49EEF6C(v0);
}

uint64_t sub_1B49EEE9C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  v0 = sub_1B4D18EDC();
  return sub_1B49EEF6C(v0);
}

uint64_t sub_1B49EEF04()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  v0 = sub_1B4D18EDC();
  return sub_1B49EEF6C(v0);
}

unint64_t sub_1B49EEF98()
{
  result = qword_1EB8A7968;
  if (!qword_1EB8A7968)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7968);
  }

  return result;
}

uint64_t sub_1B49EEFF0(uint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  (*(*(Descriptor - 8) + 16))(a2, a1, Descriptor);
  return a2;
}

uint64_t sub_1B49EF054(uint64_t a1)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  (*(*(Descriptor - 8) + 8))(a1, Descriptor);
  return a1;
}

unint64_t sub_1B49EF0C8(void *a1)
{
  a1[1] = sub_1B49EF100();
  a1[2] = sub_1B49EF154();
  result = sub_1B49EF1A8();
  a1[3] = result;
  return result;
}

unint64_t sub_1B49EF100()
{
  result = qword_1EDC370A0;
  if (!qword_1EDC370A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC370A0);
  }

  return result;
}

unint64_t sub_1B49EF154()
{
  result = qword_1EDC37098;
  if (!qword_1EDC37098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37098);
  }

  return result;
}

unint64_t sub_1B49EF1A8()
{
  result = qword_1EB8A79C0;
  if (!qword_1EB8A79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A79C0);
  }

  return result;
}

uint64_t sub_1B49EF1FC(uint64_t a1)
{
  sub_1B4D173DC();
  swift_allocObject();
  sub_1B4D173CC();
  sub_1B49EF1A8();
  v1 = sub_1B4D173BC();

  return v1;
}

double sub_1B49EF2A0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a4@<X8>)
{
  sub_1B4D173AC();
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B49EF154();
  sub_1B4D1738C();
  sub_1B49DDD2C(a1, a2);

  if (!v4)
  {
    result = v11;
    *a4 = v9;
    *(a4 + 8) = v10;
    *(a4 + 16) = v11;
  }

  return result;
}

__n128 InferenceResult.init(text:inferenceDuration:announceUtteranceResult:systemVersion:modelVersion:voice:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a10;
  v17 = type metadata accessor for InferenceResult(0);
  sub_1B498C368(a3, a9 + v17[6]);
  v18 = (a9 + v17[7]);
  *v18 = a4;
  v18[1] = a5;
  v19 = (a9 + v17[8]);
  *v19 = a6;
  v19[1] = a7;
  v20 = (a9 + v17[9]);
  result = *a8;
  v22 = *(a8 + 16);
  *v20 = *a8;
  v20[1] = v22;
  return result;
}

uint64_t type metadata accessor for InferenceResult(uint64_t a1)
{
  result = qword_1EDC397D8;
  if (!qword_1EDC397D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InferenceResult.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InferenceResult.systemVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for InferenceResult(0) + 28));

  return v1;
}

uint64_t InferenceResult.modelVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for InferenceResult(0) + 32));

  return v1;
}

void InferenceResult.voice.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InferenceResult(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_1B49B3D28(v4, v5, v6, v7);
}

uint64_t InferenceResult.debugAudioURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for InferenceResult(0);
  sub_1B4974FBC(v1 + *(v6 + 24), v5, &qword_1EB8A6948, qword_1B4D1E1C0);
  v7 = type metadata accessor for AnnounceUtteranceResult(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1B49EF720(v5);
    v8 = sub_1B4D1767C();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  else
  {
    sub_1B4974FBC(&v5[*(v7 + 36)], a1, &qword_1EB8A6978, &qword_1B4D47BC0);
    return sub_1B49F0218(v5, type metadata accessor for AnnounceUtteranceResult);
  }
}

uint64_t sub_1B49EF720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B49EF788()
{
  v1 = *v0;
  v2 = 1954047348;
  v3 = 0x65566D6574737973;
  v4 = 0x7265566C65646F6DLL;
  if (v1 != 4)
  {
    v4 = 0x6563696F76;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0xD000000000000017;
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

uint64_t sub_1B49EF850@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B49F0560(a2, a3);
  *a1 = result;
  return result;
}