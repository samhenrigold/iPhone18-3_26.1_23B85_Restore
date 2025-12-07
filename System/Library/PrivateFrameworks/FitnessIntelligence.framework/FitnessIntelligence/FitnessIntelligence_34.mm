uint64_t sub_1B4CBD018()
{
  type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4CBD3F4(qword_1EDC3BF18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreakPropertyValue);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4CBD100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4CBD164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4CBD1D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4CBD23C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_1B4CBD29C(__n128 *a1)
{
  v2 = *(v1 + 16);
  result = *v2;
  *a1 = *v2;
  v4 = v2[1].n128_u64[0];
  v5 = v2[2].n128_u64[0];
  a1[1].n128_u64[0] = v4;
  a1[1].n128_u64[1] = v5;
  return result;
}

uint64_t sub_1B4CBD3F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4CBD43C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t static ThisWeekCurrentWorkoutDistanceFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4CBE064(v3, v1, v2);
}

uint64_t static ThisWeekCurrentWorkoutDistanceFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49AA274;

  return sub_1B4CBEC54(a1, a3);
}

uint64_t ThisWeekCurrentWorkoutDistanceFact.QueryIdentifier.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t ThisWeekCurrentWorkoutDistanceFact.QueryIdentifier.rawValue.getter()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1B4CBD690(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "thisWeekProperties";
  v4 = 0xD00000000000001ALL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v2 == 1)
  {
    v6 = "thisWeekProperties";
  }

  else
  {
    v6 = "thisTimeLastWeekProperties";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "last_week_total_distance>.";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = "thisTimeLastWeekProperties";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "last_week_total_distance>.";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B4CBD764()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4CBD7FC(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4CBD880(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4CBD920(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "thisWeekProperties";
  v4 = 0xD00000000000001ALL;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = "thisTimeLastWeekProperties";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "last_week_total_distance>.";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

id ThisWeekCurrentWorkoutDistanceFact.makePrompt(promptFormatter:)(uint64_t a1)
{
  v2 = v1;
  v47 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - v14;
  v46 = *v2;
  [v46 effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v17 = result;
    v45 = sub_1B4D1818C();
    v19 = v18;

    v20 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact(0);
    sub_1B4974FBC(v2 + v20[7], v7, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v21 = *(v9 + 48);
    if (v21(v7, 1, v8) == 1)
    {
      v42 = v9;
      v43 = v11;
      sub_1B4975024(v7, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      v22 = sub_1B4D133E8(v2 + v20[5], v46, 0, 1);
      v23 = v8;
      v25 = v24;
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000002DLL, 0x80000001B4D66CB0);
      MEMORY[0x1B8C7C620](v22, v25);

      MEMORY[0x1B8C7C620](0x6C61206D6F726620, 0xED000020796D206CLL);
      MEMORY[0x1B8C7C620](v45, v19);

      MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xEA00000000002E73);
      v26 = v50;
      v27 = v2 + v20[6];
      v28 = v44;
      sub_1B4974FBC(v27, v44, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      if (v21(v28, 1, v23) == 1)
      {
        sub_1B4975024(v28, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      }

      else
      {
        v33 = v23;
        v35 = v42;
        v34 = v43;
        (*(v42 + 32))(v43, v28, v33);
        sub_1B49A2254();
        if (sub_1B4D180EC())
        {
          v36 = 0xEC0000006E616874;
          v37 = 0x2072657461657267;
        }

        else
        {
          v38 = sub_1B4D180FC();
          if (v38)
          {
            v37 = 0x616874207373656CLL;
          }

          else
          {
            v37 = 0x6F74206C61757165;
          }

          if (v38)
          {
            v36 = 0xE90000000000006ELL;
          }

          else
          {
            v36 = 0xE800000000000000;
          }
        }

        v39 = sub_1B4D133E8(v34, v46, 0, 1);
        v41 = v40;
        v48 = 0;
        v49 = 0xE000000000000000;
        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0x7369207369685420, 0xE900000000000020);
        MEMORY[0x1B8C7C620](v37, v36);

        MEMORY[0x1B8C7C620](0xD000000000000025, 0x80000001B4D66CE0);
        MEMORY[0x1B8C7C620](v39, v41);

        MEMORY[0x1B8C7C620](46, 0xE100000000000000);
        MEMORY[0x1B8C7C620](v48, v49);

        (*(v35 + 8))(v34, v33);
        return v50;
      }
    }

    else
    {
      (*(v9 + 32))(v15, v7, v8);
      v29 = v8;
      v30 = sub_1B4D133E8(v15, v46, 0, 1);
      v32 = v31;
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD000000000000029, 0x80000001B4D66D10);
      MEMORY[0x1B8C7C620](v30, v32);

      MEMORY[0x1B8C7C620](0x6C61206D6F726620, 0xED000020796D206CLL);
      MEMORY[0x1B8C7C620](v45, v19);

      MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xEA00000000002E73);
      v26 = v50;
      (*(v9 + 8))(v15, v29);
    }

    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B4CBDF60(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4CBE064(v3, v1, v2);
}

uint64_t sub_1B4CBDFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49DD034;

  return sub_1B4CBEC54(a1, a3);
}

unint64_t sub_1B4CBE064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B0, &unk_1B4D1AA60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v83 - v7;
  v9 = sub_1B4D1777C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v83 - v13;
  v15 = type metadata accessor for DateRangeDescriptor(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104[3] = a2;
  v104[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v104);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  v19 = sub_1B498AFB8(0, &qword_1EB8A6C80, 0x1E699C9F8);
  sub_1B49A79FC(boxed_opaque_existential_1, v19, a2, a3);
  v21 = *(v20 + 16);
  v22 = 32;
  do
  {
    if (!v21)
    {

      if (qword_1EDC36EF8 != -1)
      {
        swift_once();
      }

      v55 = sub_1B4D17F6C();
      __swift_project_value_buffer(v55, qword_1EDC36F00);
      v56 = sub_1B4D17F5C();
      v57 = sub_1B4D1873C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v101[0] = v59;
        *v58 = 136315138;
        *(v58 + 4) = sub_1B49558AC(0xD000000000000022, 0x80000001B4D4EF90, v101);
        _os_log_impl(&dword_1B4953000, v56, v57, "%s does not support this workout state", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        MEMORY[0x1B8C7DDA0](v59, -1, -1);
        MEMORY[0x1B8C7DDA0](v58, -1, -1);
      }

      v46 = sub_1B4C94A9C(MEMORY[0x1E69E7CC0]);
      goto LABEL_29;
    }

    v23 = *(v20 + v22);
    v22 += 8;
    --v21;
  }

  while (v23 != 1);
  v85 = v8;

  v24 = (*(a3 + 56))(a2, a3);
  v98 = [v24 effectiveTypeIdentifier];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B40, &qword_1B4D1B2B8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B48, &unk_1B4D1B2C0);
  v90 = v9;
  v26 = v25;
  v92 = v25;
  v27 = *(v25 - 8);
  v28 = a3;
  v94 = a2;
  v95 = v10;
  v99 = boxed_opaque_existential_1;
  v97 = v15;
  v87 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  v88 = v30;
  *(v30 + 16) = xmmword_1B4D1AA70;
  v89 = v14;
  v31 = (v30 + v29);
  v32 = v30 + v29 + *(v26 + 48);
  *v31 = 0;
  v33 = v30 + v29;
  v86 = v31;
  v93 = *(v28 + 80);
  v93(v94, v28);
  swift_storeEnumTagMultiPayload();
  v34 = v17;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
  v36 = swift_allocObject();
  v91 = xmmword_1B4D1A800;
  *(v36 + 16) = xmmword_1B4D1A800;
  *(v36 + 32) = v98;
  v37 = type metadata accessor for WorkoutPropertiesQuery(0);
  v38 = (v32 + v37[5]);
  v39 = MEMORY[0x1E69E7CC0];
  *v38 = MEMORY[0x1E69E7CC0];
  v38[1] = v39;
  v38[2] = v39;
  v38[3] = v36;
  v38[4] = v39;
  v38[5] = v39;
  *(v32 + v37[6]) = v39;
  *(v32 + v37[7]) = &unk_1F2CB83C0;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  swift_storeEnumTagMultiPayload();
  v41 = (v33 + v87);
  v42 = v94;
  v43 = &v41[*(v92 + 48)];
  *v41 = 1;
  v93(v42, v28);
  swift_storeEnumTagMultiPayload();
  v87 = v35;
  v44 = swift_allocObject();
  *(v44 + 16) = v91;
  *(v44 + 32) = v98;
  sub_1B4CBFEC4(v34, v43, type metadata accessor for DateRangeDescriptor);
  v45 = (v43 + v37[5]);
  *v45 = v39;
  v45[1] = v39;
  v45[2] = v39;
  v45[3] = v44;
  v45[4] = v39;
  v45[5] = v39;
  *(v43 + v37[6]) = v39;
  v83 = v37;
  *(v43 + v37[7]) = &unk_1F2CB83E8;
  v84 = Descriptor;
  swift_storeEnumTagMultiPayload();
  v46 = sub_1B4C94A9C(v88);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v103 = v46;
  v47 = v96;
  v92 = v28 + 80;
  v48 = v93;
  v93(v42, v28);
  v49 = v48;
  v50 = v28;
  v51 = *(v28 + 96);
  v51(v42, v28);
  v52 = v89;
  sub_1B4D1770C();
  v53 = *(v95 + 8);
  v95 += 8;
  v53(v47, v90);
  DayOfWeek.init(from:)(v52, v101);
  v54 = LOBYTE(v101[0]);
  if (LOBYTE(v101[0]) <= 3u)
  {
    if (LOBYTE(v101[0]) <= 1u && !LOBYTE(v101[0]))
    {
LABEL_24:

      goto LABEL_27;
    }

LABEL_17:
    v60 = sub_1B4D18DCC();

    if (v60)
    {
      goto LABEL_27;
    }

    if (v54 == 1)
    {
      goto LABEL_24;
    }

    v75 = sub_1B4D18DCC();

    if (v75)
    {
LABEL_27:
      v76 = v85;
      v49(v42, v50);
      swift_storeEnumTagMultiPayload();
      v77 = swift_allocObject();
      *(v77 + 16) = v91;
      *(v77 + 32) = v98;
      v78 = v83;
      v79 = (v76 + v83[5]);
      v80 = MEMORY[0x1E69E7CC0];
      *v79 = MEMORY[0x1E69E7CC0];
      v79[1] = v80;
      v79[2] = v80;
      v79[3] = v77;
      v79[4] = v80;
      v79[5] = v80;
      *(v76 + v78[6]) = v80;
      *(v76 + v78[7]) = &unk_1F2CB8410;
      v81 = v84;
      swift_storeEnumTagMultiPayload();
      (*(*(v81 - 8) + 56))(v76, 0, 1, v81);
      sub_1B49CA980(v76, 2);
    }

    v46 = v103;
    goto LABEL_29;
  }

  if (LOBYTE(v101[0]) <= 5u || LOBYTE(v101[0]) == 6)
  {
    goto LABEL_17;
  }

  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v61 = sub_1B4D17F6C();
  __swift_project_value_buffer(v61, qword_1EDC36F00);
  sub_1B497558C(v104, v101);
  v62 = sub_1B4D17F5C();
  v63 = sub_1B4D186FC();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v100 = v99;
    *v64 = 136315138;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    v65 = v49;
    v66 = v96;
    LODWORD(v98) = v63;
    v65(v42, v28);
    __swift_project_boxed_opaque_existential_1(v101, v102);
    v51(v42, v28);
    v67 = v89;
    sub_1B4D1770C();
    v68 = v66;
    v69 = v90;
    v53(v68, v90);
    sub_1B4CBFF2C(&qword_1EB8A6B58, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v70 = sub_1B4D18D5C();
    v72 = v71;
    v53(v67, v69);
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    v73 = sub_1B49558AC(v70, v72, &v100);

    *(v64 + 4) = v73;
    _os_log_impl(&dword_1B4953000, v62, v98, "Failed to create day fact. Today: %s", v64, 0xCu);
    v74 = v99;
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
    MEMORY[0x1B8C7DDA0](v74, -1, -1);
    MEMORY[0x1B8C7DDA0](v64, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v101);
  }

LABEL_29:
  __swift_destroy_boxed_opaque_existential_1Tm(v104);
  return v46;
}

uint64_t sub_1B4CBEC54(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7978, &unk_1B4D1F2F0);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v2[34] = swift_task_alloc();
  v4 = type metadata accessor for WorkoutState(0);
  v2[35] = v4;
  v2[36] = *(v4 - 8);
  v2[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4CBEE78, 0, 0);
}

uint64_t sub_1B4CBEE78()
{
  v111 = v0;
  v1 = v0;
  v2 = v0[36];
  v3 = v1[34];
  v4 = v1[35];
  sub_1B4974FBC(v1[21], v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if ((*(v2 + 48))(v3, 1, v4) == 1)
  {
    sub_1B4975024(v1[34], &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_13:
    v108 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v5 = v1[20];
  sub_1B4CBFEC4(v1[34], v1[37], type metadata accessor for WorkoutState);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v1[17] = &type metadata for ThisWeekCurrentWorkoutDistanceFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67F0, &qword_1B4D1AB08);
  v109 = sub_1B4D181CC();
  v110 = v8;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D4E890);

  (*(v7 + 8))(v109, v110, &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v6, v7);

  v9 = v1[10];
  if (!v9)
  {
    sub_1B49AA7C0(v1[37]);
    v108 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v10 = v5[3];
  v11 = v5[4];
  __swift_project_boxed_opaque_existential_1(v1[20], v10);
  v1[18] = &type metadata for ThisWeekCurrentWorkoutDistanceFact.QueryIdentifier;
  v109 = sub_1B4D181CC();
  v110 = v12;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001ALL, 0x80000001B4D4E8B0);

  (*(v11 + 8))(v109, v110, &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v10, v11);

  v13 = v1[13];
  v14 = v1[37];
  if (!v13)
  {
    sub_1B49AA7C0(v14);
LABEL_12:

    goto LABEL_13;
  }

  v15 = sub_1B4CAC70C(v14);
  v16 = *(v15 + 2);
  v17 = 32;
  do
  {
    if (!v16)
    {
      v23 = v1[37];

      sub_1B49AA7C0(v23);

      goto LABEL_12;
    }

    v18 = *&v15[v17];
    v17 += 8;
    --v16;
  }

  while (v18 != 1);
  v19 = v1[33];
  v20 = v1[22];
  v21 = v1[23];

  v22 = *(v21 + 56);
  v22(v19, 1, 1, v20);
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *(v1 + 1) = 0u;
  sub_1B4CE3B10(v1 + 2, v9, &v109);
  v106 = v22;
  v26 = v1[20];
  v27 = v109;
  if (v110)
  {
    v27 = 0;
  }

  v107 = v27;
  v28 = v1;
  v29 = v5[3];
  v30 = v5[4];
  __swift_project_boxed_opaque_existential_1(v26, v29);
  v28[19] = &type metadata for ThisWeekCurrentWorkoutDistanceFact.QueryIdentifier;
  v109 = sub_1B4D181CC();
  v110 = v31;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D4E8D0);

  v32 = v29;
  v1 = v28;
  (*(v30 + 8))(v109, v110, &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v32, v30);

  if (v28[16])
  {
    sub_1B4CE458C(v28 + 2, v28[16], v28[28]);
    v33 = v28[28];

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v28[28];
    if (v35 == 1)
    {
      sub_1B4975024(v28[28], &qword_1EB8A7978, &unk_1B4D1F2F0);
    }

    else
    {
      v37 = v28[25];
      v39 = v28[22];
      v38 = v28[23];
      (*(v38 + 16))(v37, v28[28], v39);
      sub_1B4975024(v36, &qword_1EB8A6840, &unk_1B4D20FA0);
      sub_1B4D1742C();
      v41 = v40;
      (*(v38 + 8))(v37, v39);
      if (!v107 && v41 > 0.0)
      {
        v43 = v28[32];
        v42 = v28[33];
        v44 = v28[22];
        v45 = [objc_opt_self() meters];
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        v1 = v28;
        sub_1B4D1741C();
        sub_1B4975024(v42, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        v22(v43, 0, 1, v44);
        sub_1B4B016F8(v43, v42);
      }
    }
  }

  sub_1B4CE458C(v1 + 2, v9, v1[27]);
  v46 = v1[27];

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  v48 = *(*(v47 - 8) + 48);
  v49 = v48(v46, 1, v47);
  v50 = v1[27];
  if (v49 == 1)
  {
    sub_1B4975024(v1[27], &qword_1EB8A7978, &unk_1B4D1F2F0);
    v51 = 0.0;
  }

  else
  {
    v52 = v1[25];
    v54 = v1[22];
    v53 = v1[23];
    (*(v53 + 16))(v52, v1[27], v54);
    sub_1B4975024(v50, &qword_1EB8A6840, &unk_1B4D20FA0);
    sub_1B4D1742C();
    v51 = v55;
    (*(v53 + 8))(v52, v54);
  }

  v56 = v1[31];
  v57 = v1[22];
  v58 = v1[23];
  sub_1B4974FBC(v1[37] + *(v1[35] + 60), v56, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v59 = *(v58 + 48);
  v60 = v59(v56, 1, v57);
  v61 = v1[31];
  if (v60 == 1)
  {
    sub_1B4975024(v1[31], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v62 = 0.0;
  }

  else
  {
    v63 = v1[23];
    v64 = v1[24];
    v65 = v48;
    v66 = v59;
    v67 = v1[22];
    v68 = [objc_opt_self() meters];
    sub_1B4D1745C();

    v69 = *(v63 + 8);
    v69(v61, v67);
    sub_1B4D1742C();
    v62 = v70;
    v71 = v67;
    v59 = v66;
    v48 = v65;
    v69(v64, v71);
    v1 = v28;
  }

  sub_1B4CE458C(v1 + 2, v13, v1[26]);
  v72 = v51 + v62;
  v73 = v1[26];

  v74 = v48(v73, 1, v47);
  v75 = v1[26];
  if (v74 == 1)
  {
    sub_1B4975024(v1[26], &qword_1EB8A7978, &unk_1B4D1F2F0);
    v76 = 0.0;
  }

  else
  {
    v77 = v1[25];
    v78 = v1[22];
    v79 = v1[23];
    (*(v79 + 16))(v77, v1[26], v78);
    sub_1B4975024(v75, &qword_1EB8A6840, &unk_1B4D20FA0);
    sub_1B4D1742C();
    v76 = v80;
    (*(v79 + 8))(v77, v78);
  }

  v106(v1[30], 1, 1, v1[22]);
  if (v72 > 0.0 && v76 > 0.0 && v76 <= v72)
  {
    v81 = v1[32];
    v82 = v1[30];
    v83 = v1[22];
    v84 = [objc_opt_self() meters];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    sub_1B4D1741C();
    sub_1B4975024(v82, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v106(v81, 0, 1, v83);
    sub_1B4B016F8(v81, v82);
  }

  if (v107 < 1 || v72 <= 0.0)
  {
    v85 = v1[29];
    v86 = v1[22];
    sub_1B4974FBC(v1[33], v85, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    LODWORD(v86) = v59(v85, 1, v86);
    sub_1B4975024(v85, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    if (v86 == 1)
    {
      if (qword_1EDC36EF8 != -1)
      {
        swift_once();
      }

      v87 = sub_1B4D17F6C();
      __swift_project_value_buffer(v87, qword_1EDC36F00);
      v88 = sub_1B4D17F5C();
      v89 = sub_1B4D1873C();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_1B4953000, v88, v89, "No distance workouts done this or last week", v90, 2u);
        MEMORY[0x1B8C7DDA0](v90, -1, -1);
      }

      v91 = v1[37];
      v92 = v1[33];
      v93 = v1[30];

      sub_1B4975024(v93, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      sub_1B4975024(v92, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      sub_1B49AA7C0(v91);
      goto LABEL_13;
    }
  }

  v94 = v1[37];
  v95 = v1[35];
  v96 = v1[33];
  v97 = v1[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE018, &unk_1B4D46710);
  v98 = (type metadata accessor for ThisWeekCurrentWorkoutDistanceFact(0) - 8);
  v99 = (*(*v98 + 80) + 32) & ~*(*v98 + 80);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1B4D1A800;
  v108 = v100;
  v101 = (v100 + v99);
  v102 = *(v94 + *(v95 + 24));
  v103 = objc_opt_self();
  v104 = v102;
  v105 = [v103 meters];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D1741C();
  sub_1B4974FBC(v97, v101 + v98[8], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(v96, v101 + v98[9], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  *v101 = v104;
  sub_1B4975024(v97, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v1 = v28;
  sub_1B4975024(v96, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B49AA7C0(v94);
LABEL_14:

  v24 = v1[1];

  return v24(v108);
}

unint64_t sub_1B4CBFD04()
{
  result = qword_1EB8ADFF0;
  if (!qword_1EB8ADFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADFF0);
  }

  return result;
}

unint64_t sub_1B4CBFD58(uint64_t a1)
{
  *(a1 + 8) = sub_1B4CBFD88();
  result = sub_1B4CBFDDC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4CBFD88()
{
  result = qword_1EB8ADFF8;
  if (!qword_1EB8ADFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADFF8);
  }

  return result;
}

unint64_t sub_1B4CBFDDC()
{
  result = qword_1EB8AE000;
  if (!qword_1EB8AE000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE000);
  }

  return result;
}

uint64_t sub_1B4CBFE30(uint64_t a1)
{
  *(a1 + 8) = sub_1B4CBFF2C(&qword_1EB8AE008, type metadata accessor for ThisWeekCurrentWorkoutDistanceFact, &protocol conformance descriptor for ThisWeekCurrentWorkoutDistanceFact);
  result = sub_1B4CBFF2C(&qword_1EB8AE010, type metadata accessor for ThisWeekCurrentWorkoutDistanceFact, &protocol conformance descriptor for ThisWeekCurrentWorkoutDistanceFact);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4CBFEC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4CBFF2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B4CBFF74(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = a1;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF81C(0, v1, 0);
    v4 = v35;
    v5 = v3 + 64;
    v6 = sub_1B4D188DC();
    v7 = 0;
    v34 = *(v3 + 36);
    v27 = v3 + 72;
    v28 = v1;
    v29 = v3 + 64;
    v30 = v3;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_28;
      }

      if (v34 != *(v3 + 36))
      {
        goto LABEL_29;
      }

      v32 = v7;
      v33 = v4;
      v10 = *(*(v3 + 48) + 8 * v6);
      v11 = *(*(v3 + 56) + 8 * v6);
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = v10;

        v31 = v13;
        sub_1B4D18A1C();
        v14 = 32;
        do
        {
          v15 = *(v11 + v14);
          sub_1B4D189EC();
          sub_1B4D18A2C();
          sub_1B4D18A3C();
          sub_1B4D189FC();
          v14 += 8;
          --v12;
        }

        while (v12);
      }

      else
      {
        v16 = v10;
      }

      v4 = v33;
      v18 = *(v33 + 16);
      v17 = *(v33 + 24);
      v5 = v29;
      if (v18 >= v17 >> 1)
      {
        sub_1B4BCF81C((v17 > 1), v18 + 1, 1);
        v4 = v33;
      }

      *(v4 + 16) = v18 + 1;
      v19 = v4 + 16 * v18;
      *(v19 + 32) = v10;
      *(v19 + 40) = v2;
      v3 = v30;
      v8 = 1 << *(v30 + 32);
      if (v6 >= v8)
      {
        goto LABEL_30;
      }

      v20 = *(v29 + 8 * v9);
      if ((v20 & (1 << v6)) == 0)
      {
        goto LABEL_31;
      }

      if (v34 != *(v30 + 36))
      {
        goto LABEL_32;
      }

      v21 = v20 & (-2 << (v6 & 0x3F));
      if (v21)
      {
        v8 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v2 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v22 = v9 << 6;
        v23 = v9 + 1;
        v24 = (v27 + 8 * v9);
        v2 = MEMORY[0x1E69E7CC0];
        while (v23 < (v8 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_1B497CD6C(v6, v34, 0);
            v8 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        sub_1B497CD6C(v6, v34, 0);
      }

LABEL_4:
      v7 = v32 + 1;
      v6 = v8;
      if (v32 + 1 == v28)
      {
        return;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }
}

uint64_t WorkoutState.init(identifier:activityType:status:goal:configuredAlerts:start:sessionStart:end:duration:location:weatherConditions:distance:pace:averagePace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:elapsedTimeInHeartRateZones:averagePower:elevationGain:events:metadata:samplesByType:route:mediaDetails:activitySummaryRepresentable:isMachineWorkout:splitAverageHeartRate:timeBasedSplitDuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 *a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31)
{
  v38 = a27[3];
  v95 = a27[2];
  v96 = v38;
  v97 = a27[4];
  v98 = *(a27 + 80);
  v39 = a27[1];
  v93 = *a27;
  v94 = v39;
  v40 = type metadata accessor for WorkoutState(0);
  v41 = a9 + v40[21];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v85 = v41;
  (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
  v43 = a9 + v40[22];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v84 = v43;
  (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
  v45 = sub_1B4D177CC();
  v82 = *(v45 - 8);
  v83 = v45;
  v86 = a1;
  (*(v82 + 16))(a9, a1);
  *(a9 + v40[6]) = a2;
  *(a9 + v40[5]) = a3;
  v46 = v40[7];
  v47 = sub_1B4D179EC();
  v48 = *(v47 - 8);
  v87 = a4;
  v81 = v47;
  (*(v48 + 16))(a9 + v46, a4);
  *(a9 + v40[8]) = a5;
  v49 = v40[9];
  v50 = sub_1B4D1777C();
  v78 = *(v50 - 8);
  v79 = v50;
  v89 = a6;
  (*(v78 + 16))(a9 + v49, a6);
  sub_1B4974FBC(a7, a9 + v40[10], &qword_1EB8A6790, &qword_1B4D1BBC0);
  sub_1B4974FBC(a8, a9 + v40[11], &qword_1EB8A6790, &qword_1B4D1BBC0);
  *(a9 + v40[12]) = a10;
  *(a9 + v40[13]) = a11;
  sub_1B4974FBC(a12, a9 + v40[14], &qword_1EB8A6CB8, &unk_1B4D1F0C0);
  sub_1B4974FBC(a13, a9 + v40[15], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(a14, a9 + v40[16], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(a15, a9 + v40[17], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(a16, a9 + v40[18], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4974FBC(a17, a9 + v40[19], &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(a18, a9 + v40[20], &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(a19, a9 + v40[23], &qword_1EB8A6CC8, &unk_1B4D464B0);
  *(a9 + v40[24]) = a20;
  sub_1B4974FBC(a21, a9 + v40[25], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B4974FBC(a22, a9 + v40[26], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (a23 >> 62)
  {
    v51 = sub_1B4D18ABC();
  }

  else
  {
    v51 = *((a23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v80 = v48;
  if (v51)
  {
    v92 = MEMORY[0x1E69E7CC0];
    v52 = a11;
    sub_1B4BCF1BC(0, v51 & ~(v51 >> 63), 0);
    if (v51 < 0)
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v53 = v92;
    v54 = a11;
    if ((a23 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v51; ++i)
      {
        v56 = MEMORY[0x1B8C7CD90](i, a23);
        v92 = v53;
        v58 = *(v53 + 16);
        v57 = *(v53 + 24);
        if (v58 >= v57 >> 1)
        {
          v59 = v56;
          sub_1B4BCF1BC((v57 > 1), v58 + 1, 1);
          v56 = v59;
          v53 = v92;
        }

        *(v53 + 16) = v58 + 1;
        *(v53 + 8 * v58 + 32) = v56;
      }
    }

    else
    {
      v61 = 32;
      do
      {
        v62 = *(a23 + v61);
        v92 = v53;
        v64 = *(v53 + 16);
        v63 = *(v53 + 24);
        v65 = v62;
        if (v64 >= v63 >> 1)
        {
          v66 = v65;
          sub_1B4BCF1BC((v63 > 1), v64 + 1, 1);
          v65 = v66;
          v53 = v92;
        }

        *(v53 + 16) = v64 + 1;
        *(v53 + 8 * v64 + 32) = v65;
        v61 += 8;
        --v51;
      }

      while (v51);
    }
  }

  else
  {
    v54 = a11;
    v60 = a11;

    v53 = MEMORY[0x1E69E7CC0];
  }

  *(a9 + v40[27]) = v53;
  sub_1B4BAF044(a24);
  v68 = v67;

  *(a9 + v40[28]) = v68;
  sub_1B4996E40(a25);
  v70 = v69;

  if (*(v70 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68F0, &qword_1B4D1BC20);
    v71 = sub_1B4D18AEC();
  }

  else
  {
    v71 = MEMORY[0x1E69E7CC8];
  }

  v92 = v71;

  sub_1B499F570(v72, 1, &v92);
  v73 = a26;

  *(a9 + v40[29]) = v92;

  sub_1B4975024(a22, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4975024(a21, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B4975024(a19, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4975024(a18, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4975024(a17, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4975024(a16, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4975024(a15, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if (!a26)
  {
    v73 = MEMORY[0x1E69E7CC0];
  }

  sub_1B4975024(a14, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4975024(a13, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4975024(a12, &qword_1EB8A6CB8, &unk_1B4D1F0C0);
  sub_1B4975024(a8, &qword_1EB8A6790, &qword_1B4D1BBC0);
  sub_1B4975024(a7, &qword_1EB8A6790, &qword_1B4D1BBC0);
  (*(v78 + 8))(v89, v79);
  (*(v80 + 8))(v87, v81);
  (*(v82 + 8))(v86, v83);
  *(a9 + v40[30]) = v73;
  v74 = a9 + v40[31];
  v75 = v96;
  *(v74 + 32) = v95;
  *(v74 + 48) = v75;
  *(v74 + 64) = v97;
  *(v74 + 80) = v98;
  v76 = v94;
  *v74 = v93;
  *(v74 + 16) = v76;
  sub_1B498B270(a28, a9 + v40[32], &qword_1EB8A6C98, &unk_1B4D2F3F0);
  *(a9 + v40[33]) = a29 & 1;
  sub_1B49A205C(a30, v85, &qword_1EB8A6CC8, &unk_1B4D464B0);
  return sub_1B49A205C(a31, v84, &qword_1EB8A6C90, &unk_1B4D1BBD0);
}

id WorkoutState.activityType.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutState(0) + 24));

  return v1;
}

uint64_t WorkoutState.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4D177CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutState.workoutGoal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutState(0) + 28);
  v4 = sub_1B4D179EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double WorkoutState.configuredAlerts.getter()
{
  type metadata accessor for WorkoutState(0);

  return result;
}

uint64_t WorkoutState.start.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutState(0) + 36);
  v4 = sub_1B4D1777C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *WorkoutState.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutState(0) + 52));
  v2 = v1;
  return v1;
}

double WorkoutState.elapsedTimeInHeartRateZones.getter()
{
  type metadata accessor for WorkoutState(0);

  return result;
}

uint64_t WorkoutState.events.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutState(0) + 108));
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1B4D18A1C();
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      sub_1B4D189EC();
      sub_1B4D18A2C();
      sub_1B4D18A3C();
      sub_1B4D189FC();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void *WorkoutState.metadataDictionary.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutState(0) + 112));

  return sub_1B4BAE58C(v1);
}

uint64_t WorkoutState.samplesByType.getter()
{
  v1 = type metadata accessor for WorkoutState(0);
  sub_1B4CBFF74(*(v0 + *(v1 + 116)));
  if (*(v2 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6888, &qword_1B4D1ABA0);
    v3 = sub_1B4D18AEC();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;

  sub_1B4CCC470(v4, 1, &v6);

  return v6;
}

double WorkoutState.route.getter()
{
  type metadata accessor for WorkoutState(0);

  return result;
}

uint64_t WorkoutState.mediaDetails.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutState(0) + 124);
  v4 = *(v3 + 32);
  v6 = *(v3 + 64);
  v13 = *(v3 + 48);
  v5 = v13;
  v14 = v6;
  v15 = *(v3 + 80);
  v7 = v15;
  v9 = *(v3 + 16);
  v12[0] = *v3;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v4;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v8;
  *(a1 + 16) = v9;
  return sub_1B4974FBC(v12, v11, &qword_1EB8ABC80, &qword_1B4D38648);
}

void *sub_1B4CC15A8(void *a1, void *a2, unint64_t a3)
{
  *a1 = a2;
  if (!(a3 >> 62))
  {
    v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_16:
    v21 = a2;
    return MEMORY[0x1E69E7CC0];
  }

  v19 = a2;
  v20 = sub_1B4D18ABC();
  a2 = v19;
  v4 = v20;
  if (!v20)
  {
    goto LABEL_16;
  }

LABEL_3:
  v22 = MEMORY[0x1E69E7CC0];
  v5 = a2;
  result = sub_1B4BCF83C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = v22;
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = MEMORY[0x1B8C7CD90](v8, a3);
        v11 = *(v22 + 16);
        v10 = *(v22 + 24);
        if (v11 >= v10 >> 1)
        {
          v12 = v9;
          sub_1B4BCF83C((v10 > 1), v11 + 1, 1);
          v9 = v12;
        }

        ++v8;
        *(v22 + 16) = v11 + 1;
        *(v22 + 8 * v11 + 32) = v9;
      }

      while (v4 != v8);
    }

    else
    {
      v13 = (a3 + 32);
      do
      {
        v14 = *(v22 + 16);
        v15 = *(v22 + 24);
        v16 = *v13;
        if (v14 >= v15 >> 1)
        {
          v17 = v15 > 1;
          v18 = v16;
          sub_1B4BCF83C(v17, v14 + 1, 1);
          v16 = v18;
        }

        *(v22 + 16) = v14 + 1;
        *(v22 + 8 * v14 + 32) = v16;
        ++v13;
        --v4;
      }

      while (v4);
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t WorkoutState.updatedWith(identifier:activityType:status:goal:configuredAlerts:start:sessionStart:end:duration:location:weatherConditions:distance:pace:averagePace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:elapsedTimeInHeartRateZones:averagePower:elevationGain:events:metadata:samplesByType:route:mediaDetails:activitySummaryRepresentable:isMachineWorkout:splitAverageHeartRate:timeBasedSplitDuration:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, int a4@<W3>, unsigned int (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t (*a16)(uint64_t, uint64_t, uint64_t), uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, unint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 *a29, uint64_t a30, unsigned __int8 a31, uint64_t a32, uint64_t a33)
{
  v305 = a8;
  v292 = a6;
  v293 = a7;
  v282 = a5;
  LODWORD(v281) = a4;
  v297 = a9;
  v298 = a3;
  v326 = a2;
  v301 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v296 = &v281 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v304 = &v281 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v306 = &v281 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v303 = &v281 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v291 = &v281 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v325 = &v281 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v295 = &v281 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v302 = &v281 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v289 = &v281 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v324 = &v281 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v308 = &v281 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v323 = &v281 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v288 = &v281 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v322 = &v281 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v307 = &v281 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v321 = &v281 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v287 = (&v281 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v67);
  v320 = &v281 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v286 = &v281 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v319 = &v281 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v73 - 8);
  v290 = &v281 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v315 = &v281 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v285 = &v281 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v318 = &v281 - v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB8, &unk_1B4D1F0C0);
  MEMORY[0x1EEE9AC00](v81 - 8);
  v284 = &v281 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v83);
  v317 = &v281 - v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v85 - 8);
  v283 = &v281 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v316 = &v281 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v281 - v90;
  MEMORY[0x1EEE9AC00](v92);
  v314 = &v281 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v281 - v95;
  v309 = sub_1B4D1777C();
  v327 = *(v309 - 8);
  MEMORY[0x1EEE9AC00](v309);
  v313 = &v281 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE020, &unk_1B4D46720);
  MEMORY[0x1EEE9AC00](v98 - 8);
  v100 = &v281 - v99;
  v101 = sub_1B4D179EC();
  v311 = *(v101 - 8);
  v312 = v101;
  MEMORY[0x1EEE9AC00](v101);
  v310 = &v281 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  MEMORY[0x1EEE9AC00](v103 - 8);
  v105 = &v281 - v104;
  v106 = sub_1B4D177CC();
  MEMORY[0x1EEE9AC00](v106);
  v108 = &v281 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = a29[3];
  v343 = a29[2];
  v344 = v109;
  v345 = a29[4];
  v346 = *(a29 + 80);
  v110 = a29[1];
  v341 = *a29;
  v342 = v110;
  v112 = v111;
  sub_1B4974FBC(v301, v105, &qword_1EB8A6A30, &unk_1B4D1FC00);
  v113 = *(v112 + 48);
  v114 = v113(v105, 1, v106);
  v299 = v108;
  v300 = v112;
  if (v114 == 1)
  {
    (*(v112 + 16))(v108, v328, v106);
    if (v113(v105, 1, v106) != 1)
    {
      sub_1B4975024(v105, &qword_1EB8A6A30, &unk_1B4D1FC00);
    }
  }

  else
  {
    (*(v112 + 32))(v108, v105, v106);
  }

  v115 = v312;
  v116 = v297;
  if (v326)
  {
    v294 = v326;
  }

  else
  {
    v294 = *(v328 + *(type metadata accessor for WorkoutState(0) + 24));
  }

  v117 = v309;
  v301 = v106;
  if (v281)
  {
    v298 = *(v328 + *(type metadata accessor for WorkoutState(0) + 20));
  }

  sub_1B4974FBC(v282, v100, &qword_1EB8AE020, &unk_1B4D46720);
  v118 = v311;
  v119 = *(v311 + 48);
  if (v119(v100, 1, v115) == 1)
  {
    v120 = type metadata accessor for WorkoutState(0);
    (*(v118 + 16))(v310, v328 + *(v120 + 28), v115);
    v121 = v119(v100, 1, v115);
    v122 = v326;
    v123 = v121 == 1;
    v124 = v327;
    v125 = v293;
    if (!v123)
    {
      sub_1B4975024(v100, &qword_1EB8AE020, &unk_1B4D46720);
    }

    v126 = v292;
    if (v292)
    {
      goto LABEL_14;
    }
  }

  else
  {
    (*(v118 + 32))(v310, v100, v115);
    v127 = v326;
    v124 = v327;
    v125 = v293;
    v126 = v292;
    if (v292)
    {
LABEL_14:
      v293 = v126;
      goto LABEL_17;
    }
  }

  v293 = *(v328 + *(type metadata accessor for WorkoutState(0) + 32));

LABEL_17:
  sub_1B4974FBC(v125, v96, &qword_1EB8A6790, &qword_1B4D1BBC0);
  v128 = *(v124 + 48);
  if (v128(v96, 1, v117) == 1)
  {
    v129 = type metadata accessor for WorkoutState(0);
    (*(v124 + 16))(v313, v328 + *(v129 + 36), v117);
    v130 = v128(v96, 1, v117);

    if (v130 != 1)
    {
      sub_1B4975024(v96, &qword_1EB8A6790, &qword_1B4D1BBC0);
    }
  }

  else
  {
    (*(v124 + 32))(v313, v96, v117);
  }

  sub_1B4974FBC(v305, v91, &qword_1EB8A6790, &qword_1B4D1BBC0);
  if (v128(v91, 1, v117) == 1)
  {
    v131 = type metadata accessor for WorkoutState(0);
    v132 = v328;
    sub_1B4974FBC(v328 + *(v131 + 40), v314, &qword_1EB8A6790, &qword_1B4D1BBC0);
    v133 = v128(v91, 1, v117);
    v134 = v283;
    if (v133 != 1)
    {
      sub_1B4975024(v91, &qword_1EB8A6790, &qword_1B4D1BBC0);
    }
  }

  else
  {
    v135 = v327;
    v136 = v314;
    (*(v327 + 32))(v314, v91, v117);
    (*(v135 + 56))(v136, 0, 1, v117);
    v132 = v328;
    v134 = v283;
  }

  sub_1B4974FBC(a10, v134, &qword_1EB8A6790, &qword_1B4D1BBC0);
  if (v128(v134, 1, v117) == 1)
  {
    v138 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v132 + *(v138 + 44), v316, &qword_1EB8A6790, &qword_1B4D1BBC0);
    if (v128(v134, 1, v117) != 1)
    {
      sub_1B4975024(v134, &qword_1EB8A6790, &qword_1B4D1BBC0);
    }
  }

  else
  {
    v139 = v134;
    v140 = v327;
    v141 = v316;
    (*(v327 + 32))(v316, v139, v117);
    (*(v140 + 56))(v141, 0, 1, v117);
  }

  if (a12)
  {
    a11 = *(v132 + *(type metadata accessor for WorkoutState(0) + 48));
  }

  v292 = a11;
  v305 = a13;
  v142 = v284;
  if (!a13)
  {
    v143 = *(v132 + *(type metadata accessor for WorkoutState(0) + 52));
    if (v143)
    {
      v305 = v143;
      v144 = v143;
    }

    else
    {
      v305 = 0;
    }
  }

  sub_1B4974FBC(a14, v142, &qword_1EB8A6CB8, &unk_1B4D1F0C0);
  v145 = type metadata accessor for WeatherCondition(0);
  v146 = *(v145 - 8);
  v147 = *(v146 + 48);
  v148 = v147(v142, 1, v145);
  v326 = a16;
  if (v148 == 1)
  {
    v149 = type metadata accessor for WorkoutState(0);
    v150 = v328;
    sub_1B4974FBC(v328 + *(v149 + 56), v317, &qword_1EB8A6CB8, &unk_1B4D1F0C0);
    v151 = v147(v142, 1, v145);
    v152 = a13;
    if (v151 != 1)
    {
      sub_1B4975024(v142, &qword_1EB8A6CB8, &unk_1B4D1F0C0);
    }
  }

  else
  {
    v153 = v317;
    sub_1B4CCF7C0(v142, v317, type metadata accessor for WeatherCondition);
    (*(v146 + 56))(v153, 0, 1, v145);
    v154 = a13;
    v150 = v328;
  }

  v155 = v285;
  sub_1B4974FBC(a15, v285, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v157 = *(v156 - 8);
  v158 = *(v157 + 48);
  v159 = v158(v155, 1, v156);
  v160 = v307;
  v283 = (v157 + 48);
  v284 = v156;
  v281 = v157;
  v282 = v158;
  if (v159 == 1)
  {
    v161 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v150 + *(v161 + 60), v318, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v162 = v158(v155, 1, v156);
    v163 = v286;
    if (v162 != 1)
    {
      sub_1B4975024(v155, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    }
  }

  else
  {
    v164 = v318;
    (*(v157 + 32))(v318, v155, v156);
    (*(v157 + 56))(v164, 0, 1, v156);
    v163 = v286;
  }

  sub_1B4974FBC(v326, v163, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v166 = *(v165 - 8);
  v167 = *(v166 + 48);
  if (v167(v163, 1, v165) == 1)
  {
    v168 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v328 + *(v168 + 64), v319, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    if (v167(v163, 1, v165) != 1)
    {
      sub_1B4975024(v163, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    }
  }

  else
  {
    v169 = v163;
    v170 = v319;
    (*(v166 + 32))(v319, v169, v165);
    (*(v166 + 56))(v170, 0, 1, v165);
  }

  v171 = v287;
  sub_1B4974FBC(a17, v287, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if (v167(v171, 1, v165) == 1)
  {
    v172 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v328 + *(v172 + 68), v320, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    if (v167(v171, 1, v165) != 1)
    {
      sub_1B4975024(v171, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    }
  }

  else
  {
    v173 = v171;
    v174 = v320;
    (*(v166 + 32))(v320, v173, v165);
    (*(v166 + 56))(v174, 0, 1, v165);
  }

  sub_1B4974FBC(a18, v160, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v176 = *(v175 - 8);
  v177 = *(v176 + 48);
  v178 = v177(v160, 1, v175);
  v287 = a20;
  if (v178 == 1)
  {
    v179 = type metadata accessor for WorkoutState(0);
    v180 = v328;
    sub_1B4974FBC(v328 + *(v179 + 72), v321, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v181 = v177(v160, 1, v175);
    v182 = v308;
    if (v181 != 1)
    {
      sub_1B4975024(v160, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    }
  }

  else
  {
    v183 = v321;
    (*(v176 + 32))(v321, v160, v175);
    (*(v176 + 56))(v183, 0, 1, v175);
    v180 = v328;
    v182 = v308;
  }

  v184 = v288;
  sub_1B4974FBC(a19, v288, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v186 = *(v185 - 8);
  v187 = *(v186 + 6);
  v188 = v187(v184, 1, v185);
  v307 = v186 + 48;
  v308 = v186;
  v326 = v187;
  if (v188 == 1)
  {
    v189 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v180 + *(v189 + 76), v322, &qword_1EB8A6CC8, &unk_1B4D464B0);
    v190 = v187(v184, 1, v185);
    v191 = v291;
    v192 = v289;
    if (v190 != 1)
    {
      sub_1B4975024(v184, &qword_1EB8A6CC8, &unk_1B4D464B0);
    }
  }

  else
  {
    v193 = v322;
    (*(v186 + 4))(v322, v184, v185);
    (*(v186 + 7))(v193, 0, 1, v185);
    v191 = v291;
    v192 = v289;
  }

  sub_1B4974FBC(v287, v182, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v194 = v326;
  if (v326(v182, 1, v185) == 1)
  {
    v195 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v180 + *(v195 + 80), v323, &qword_1EB8A6CC8, &unk_1B4D464B0);
    if (v194(v182, 1, v185) != 1)
    {
      sub_1B4975024(v182, &qword_1EB8A6CC8, &unk_1B4D464B0);
    }
  }

  else
  {
    v196 = v308;
    v197 = v323;
    (*(v308 + 4))(v323, v182, v185);
    (*(v196 + 7))(v197, 0, 1, v185);
  }

  sub_1B4974FBC(a21, v192, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v198 = v326;
  if (v326(v192, 1, v185) == 1)
  {
    v199 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v180 + *(v199 + 92), v324, &qword_1EB8A6CC8, &unk_1B4D464B0);
    if (v198(v192, 1, v185) != 1)
    {
      sub_1B4975024(v192, &qword_1EB8A6CC8, &unk_1B4D464B0);
    }
  }

  else
  {
    v200 = v308;
    v201 = v324;
    (*(v308 + 4))(v324, v192, v185);
    (*(v200 + 7))(v201, 0, 1, v185);
  }

  v202 = a22;
  if (!a22)
  {
    type metadata accessor for WorkoutState(0);
  }

  v291 = v202;
  sub_1B4974FBC(a23, v191, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v203 = v191;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v205 = *(v204 - 8);
  v206 = *(v205 + 48);
  if (v206(v203, 1, v204) == 1)
  {
    v207 = type metadata accessor for WorkoutState(0);
    v208 = v328;
    sub_1B4974FBC(v328 + *(v207 + 100), v325, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    v209 = v206(v203, 1, v204);

    v210 = v281;
    if (v209 != 1)
    {
      sub_1B4975024(v203, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    }
  }

  else
  {
    v211 = v325;
    (*(v205 + 32))(v325, v203, v204);
    (*(v205 + 56))(v211, 0, 1, v204);

    v208 = v328;
    v210 = v281;
  }

  v212 = v290;
  sub_1B4974FBC(a24, v290, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v213 = v284;
  v214 = v282;
  if (v282(v212, 1, v284) == 1)
  {
    v215 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v208 + *(v215 + 104), v315, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    if (v214(v212, 1, v213) != 1)
    {
      sub_1B4975024(v212, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    }

    v216 = a26;
    if (a25)
    {
LABEL_77:
      v217 = a25;
      v218 = a27;
      if (v216)
      {
        goto LABEL_78;
      }

LABEL_82:
      v221 = *(v208 + *(type metadata accessor for WorkoutState(0) + 112));

      v219 = sub_1B4BAE58C(v221);
      if (v218)
      {
        goto LABEL_79;
      }

      goto LABEL_83;
    }
  }

  else
  {
    v220 = v315;
    (*(v210 + 32))(v315, v212, v213);
    (*(v210 + 56))(v220, 0, 1, v213);
    v216 = a26;
    if (a25)
    {
      goto LABEL_77;
    }
  }

  v217 = WorkoutState.events.getter();
  v218 = a27;
  if (!v216)
  {
    goto LABEL_82;
  }

LABEL_78:

  v219 = v216;
  if (v218)
  {
LABEL_79:

    v285 = v218;
    goto LABEL_87;
  }

LABEL_83:
  v222 = *(v208 + *(type metadata accessor for WorkoutState(0) + 116));

  sub_1B4CBFF74(v222);
  if (*(v223 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6888, &qword_1B4D1ABA0);
    v224 = sub_1B4D18AEC();
  }

  else
  {
    v224 = MEMORY[0x1E69E7CC8];
  }

  *&v335 = v224;

  sub_1B4CCC470(v225, 1, &v335);

  v285 = v335;
LABEL_87:
  if (a28)
  {
    v288 = a28;
  }

  else
  {
    v288 = *(v208 + *(type metadata accessor for WorkoutState(0) + 120));
  }

  v286 = 0;
  v287 = v219;
  v290 = v218;
  if (*(&v341 + 1) == 1)
  {
    v226 = v208 + *(type metadata accessor for WorkoutState(0) + 124);
    v227 = *(v226 + 48);
    v331 = *(v226 + 32);
    v332 = v227;
    v333 = *(v226 + 64);
    v334 = *(v226 + 80);
    v228 = *(v226 + 16);
    v329 = *v226;
    v330 = v228;
    sub_1B4974FBC(&v329, &v335, &qword_1EB8ABC80, &qword_1B4D38648);
    v337 = v331;
    v338 = v332;
    v339 = v333;
    v340 = v334;
    v229 = v329;
    v230 = v330;
  }

  else
  {
    v337 = v343;
    v338 = v344;
    v339 = v345;
    v340 = v346;
    v229 = v341;
    v230 = v342;
  }

  v335 = v229;
  v336 = v230;
  v231 = v306;
  v289 = a32;
  LODWORD(v306) = a31;
  sub_1B4974FBC(a30, v231, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  v232 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v233 = *(v232 - 8);
  v234 = *(v233 + 48);
  if (v234(v231, 1, v232) == 1)
  {
    v235 = type metadata accessor for WorkoutState(0);
    v236 = v328;
    sub_1B4974FBC(v328 + *(v235 + 128), v303, &qword_1EB8A6C98, &unk_1B4D2F3F0);
    v237 = v234(v231, 1, v232);

    sub_1B4974FBC(&v341, &v329, &qword_1EB8ABC80, &qword_1B4D38648);
    if (v237 != 1)
    {
      sub_1B4975024(v231, &qword_1EB8A6C98, &unk_1B4D2F3F0);
    }
  }

  else
  {
    v238 = v303;
    sub_1B4CCF7C0(v231, v303, type metadata accessor for HKActivitySummaryRepresentable);
    (*(v233 + 56))(v238, 0, 1, v232);

    sub_1B4974FBC(&v341, &v329, &qword_1EB8ABC80, &qword_1B4D38648);
    v236 = v328;
  }

  v239 = v295;
  v240 = v326;
  if (v306 == 2)
  {
    LODWORD(v306) = *(v236 + *(type metadata accessor for WorkoutState(0) + 132));
  }

  sub_1B4974FBC(v289, v239, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v240(v239, 1, v185) == 1)
  {
    v241 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v236 + *(v241 + 84), v302, &qword_1EB8A6CC8, &unk_1B4D464B0);
    if (v240(v239, 1, v185) != 1)
    {
      sub_1B4975024(v239, &qword_1EB8A6CC8, &unk_1B4D464B0);
    }
  }

  else
  {
    v242 = v308;
    v243 = v302;
    (*(v308 + 4))(v302, v239, v185);
    (*(v242 + 7))(v243, 0, 1, v185);
  }

  v244 = v296;
  sub_1B4974FBC(a33, v296, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v246 = *(v245 - 8);
  v247 = *(v246 + 48);
  if (v247(v244, 1, v245) == 1)
  {
    v248 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v236 + *(v248 + 88), v304, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    if (v247(v244, 1, v245) != 1)
    {
      sub_1B4975024(v244, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    }
  }

  else
  {
    v249 = v304;
    (*(v246 + 32))(v304, v244, v245);
    (*(v246 + 56))(v249, 0, 1, v245);
  }

  v250 = type metadata accessor for WorkoutState(0);
  v251 = *(v308 + 7);
  v328 = v116 + v250[21];
  v251();
  v252 = *(v246 + 56);
  v326 = (v116 + v250[22]);
  v252();
  (*(v300 + 16))(v116, v299, v301);
  *(v116 + v250[6]) = v294;
  *(v116 + v250[5]) = v298;
  (*(v311 + 16))(v116 + v250[7], v310, v312);
  *(v116 + v250[8]) = v293;
  v253 = v309;
  (*(v327 + 16))(v116 + v250[9], v313, v309);
  sub_1B4974FBC(v314, v116 + v250[10], &qword_1EB8A6790, &qword_1B4D1BBC0);
  sub_1B4974FBC(v316, v116 + v250[11], &qword_1EB8A6790, &qword_1B4D1BBC0);
  *(v116 + v250[12]) = v292;
  v254 = v305;
  *(v116 + v250[13]) = v305;
  sub_1B4974FBC(v317, v116 + v250[14], &qword_1EB8A6CB8, &unk_1B4D1F0C0);
  sub_1B4974FBC(v318, v116 + v250[15], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(v319, v116 + v250[16], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(v320, v116 + v250[17], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(v321, v116 + v250[18], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4974FBC(v322, v116 + v250[19], &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v323, v116 + v250[20], &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v324, v116 + v250[23], &qword_1EB8A6CC8, &unk_1B4D464B0);
  *(v116 + v250[24]) = v291;
  sub_1B4974FBC(v325, v116 + v250[25], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B4974FBC(v315, v116 + v250[26], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v217 >> 62)
  {
    v255 = sub_1B4D18ABC();
    if (v255)
    {
      goto LABEL_110;
    }

LABEL_123:
    v269 = v254;

    v257 = MEMORY[0x1E69E7CC0];
    goto LABEL_124;
  }

  v255 = *((v217 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v255)
  {
    goto LABEL_123;
  }

LABEL_110:
  *&v329 = MEMORY[0x1E69E7CC0];
  v256 = v254;
  sub_1B4BCF1BC(0, v255 & ~(v255 >> 63), 0);
  if (v255 < 0)
  {
    __break(1u);
    goto LABEL_130;
  }

  v257 = v329;
  if ((v217 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v255; ++i)
    {
      v259 = MEMORY[0x1B8C7CD90](i, v217);
      *&v329 = v257;
      v261 = *(v257 + 16);
      v260 = *(v257 + 24);
      if (v261 >= v260 >> 1)
      {
        sub_1B4BCF1BC((v260 > 1), v261 + 1, 1);
        v257 = v329;
      }

      *(v257 + 16) = v261 + 1;
      *(v257 + 8 * v261 + 32) = v259;
    }
  }

  else
  {
    v262 = 32;
    do
    {
      v263 = *(v217 + v262);
      *&v329 = v257;
      v264 = *(v257 + 16);
      v265 = *(v257 + 24);
      v266 = v263;
      if (v264 >= v265 >> 1)
      {
        v267 = v265 > 1;
        v268 = v266;
        sub_1B4BCF1BC(v267, v264 + 1, 1);
        v266 = v268;
        v257 = v329;
      }

      *(v257 + 16) = v264 + 1;
      *(v257 + 8 * v264 + 32) = v266;
      v262 += 8;
      --v255;
    }

    while (v255);
  }

  v253 = v309;
LABEL_124:
  *(v116 + v250[27]) = v257;
  sub_1B4BAF044(v287);
  v271 = v270;

  *(v116 + v250[28]) = v271;
  v272 = v286;
  sub_1B4996E40(v285);
  v274 = v273;

  if (*(v274 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68F0, &qword_1B4D1BC20);
    v275 = sub_1B4D18AEC();
  }

  else
  {
    v275 = MEMORY[0x1E69E7CC8];
  }

  *&v329 = v275;

  sub_1B499F570(v276, 1, &v329);
  if (!v272)
  {

    *(v116 + v250[29]) = v329;
    sub_1B4975024(v315, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B4975024(v325, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    sub_1B4975024(v324, &qword_1EB8A6CC8, &unk_1B4D464B0);
    sub_1B4975024(v323, &qword_1EB8A6CC8, &unk_1B4D464B0);
    sub_1B4975024(v322, &qword_1EB8A6CC8, &unk_1B4D464B0);
    sub_1B4975024(v321, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B4975024(v320, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    sub_1B4975024(v319, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    sub_1B4975024(v318, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B4975024(v317, &qword_1EB8A6CB8, &unk_1B4D1F0C0);
    sub_1B4975024(v316, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4975024(v314, &qword_1EB8A6790, &qword_1B4D1BBC0);
    (*(v327 + 8))(v313, v253);
    (*(v311 + 8))(v310, v312);
    (*(v300 + 8))(v299, v301);
    *(v116 + v250[30]) = v288;
    v277 = v116 + v250[31];
    v278 = v338;
    *(v277 + 32) = v337;
    *(v277 + 48) = v278;
    *(v277 + 64) = v339;
    *(v277 + 80) = v340;
    v279 = v336;
    *v277 = v335;
    *(v277 + 16) = v279;
    sub_1B498B270(v303, v116 + v250[32], &qword_1EB8A6C98, &unk_1B4D2F3F0);
    *(v116 + v250[33]) = v306 & 1;
    sub_1B49A205C(v302, v328, &qword_1EB8A6CC8, &unk_1B4D464B0);
    return sub_1B49A205C(v304, v326, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  }

LABEL_130:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t WorkoutState.init(identifier:activityType:status:goal:configuredAlerts:start:end:duration:location:weatherConditions:distance:pace:averagePace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:elapsedTimeInHeartRateZones:averagePower:elevationGain:events:metadata:samplesByType:route:mediaDetails:activitySummaryRepresentable:isMachineWorkout:splitAverageHeartRate:timeBasedSplitDuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(char *, uint64_t)@<X5>, void (*a7)(char *, uint64_t)@<X6>, void *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int128 *a26, uint64_t a27, unsigned __int8 a28, uint64_t a29, uint64_t a30)
{
  v127 = a8;
  v149 = a7;
  v150 = a6;
  v130 = a5;
  v152 = a4;
  v129 = a3;
  v128 = a2;
  v151 = a1;
  v140 = a21;
  v141 = a18;
  v142 = a17;
  v143 = a16;
  v144 = a15;
  v145 = a14;
  v146 = a13;
  v147 = a12;
  v148 = a11;
  v139 = a20;
  v131 = a19;
  v138 = a27;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v155 = &v116 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v154 = &v116 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v167 = &v116 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v153 = &v116 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v166 = &v116 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v165 = &v116 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v164 = &v116 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v163 = &v116 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v162 = &v116 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v161 = &v116 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v156 = &v116 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v160 = &v116 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB8, &unk_1B4D1F0C0);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v159 = &v116 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v158 = &v116 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v116 - v61;
  v137 = &v116 - v61;
  v157 = sub_1B4D1777C();
  v63 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v65 = &v116 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v65;
  v66 = sub_1B4D179EC();
  v135 = v66;
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v116 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v69;
  v133 = sub_1B4D177CC();
  v70 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v116 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a26[3];
  v171 = a26[2];
  v172 = v72;
  v173 = a26[4];
  v174 = *(a26 + 80);
  v73 = a26[1];
  v169 = *a26;
  v170 = v73;
  v119 = v70;
  v122 = *(v70 + 16);
  v122(v132, v151);
  v120 = v67;
  v123 = *(v67 + 16);
  v124 = v67 + 16;
  v123(v69, v152, v66);
  v125 = *(v63 + 16);
  v126 = v63 + 16;
  v74 = v157;
  v125(v65, v150, v157);
  v121 = v63;
  (*(v63 + 56))(v62, 1, 1, v74);
  sub_1B4974FBC(v149, v158, &qword_1EB8A6790, &qword_1B4D1BBC0);
  sub_1B4974FBC(v148, v159, &qword_1EB8A6CB8, &unk_1B4D1F0C0);
  sub_1B4974FBC(v147, v160, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(v146, v161, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(v145, v162, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(v144, v163, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4974FBC(v143, v164, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v142, v165, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v141, v166, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v139, v167, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B4974FBC(v140, v156, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(v138, v154, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v76 = *(*(v75 - 8) + 56);
  (v76)(v153, 1, 1, v75);
  v77 = [objc_opt_self() minutes];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  v78 = v155;
  sub_1B4D1741C();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v80 = *(*(v79 - 8) + 56);
  v80(v78, 0, 1, v79);
  v81 = type metadata accessor for WorkoutState(0);
  v118 = a9 + v81[21];
  v76();
  v82 = a9 + v81[22];
  v83 = v79;
  v84 = v127;
  v80(v82, 1, 1, v83);
  (v122)(a9, v132, v133);
  *(a9 + v81[6]) = v128;
  *(a9 + v81[5]) = v129;
  v123((a9 + v81[7]), v134, v135);
  *(a9 + v81[8]) = v130;
  v125((a9 + v81[9]), v136, v157);
  sub_1B4974FBC(v137, a9 + v81[10], &qword_1EB8A6790, &qword_1B4D1BBC0);
  sub_1B4974FBC(v158, a9 + v81[11], &qword_1EB8A6790, &qword_1B4D1BBC0);
  *(a9 + v81[12]) = a10;
  *(a9 + v81[13]) = v84;
  sub_1B4974FBC(v159, a9 + v81[14], &qword_1EB8A6CB8, &unk_1B4D1F0C0);
  sub_1B4974FBC(v160, a9 + v81[15], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(v161, a9 + v81[16], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(v162, a9 + v81[17], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(v163, a9 + v81[18], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4974FBC(v164, a9 + v81[19], &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v165, a9 + v81[20], &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v166, a9 + v81[23], &qword_1EB8A6CC8, &unk_1B4D464B0);
  *(a9 + v81[24]) = v131;
  sub_1B4974FBC(v167, a9 + v81[25], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B4974FBC(v156, a9 + v81[26], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (a22 >> 62)
  {
    v85 = sub_1B4D18ABC();
  }

  else
  {
    v85 = *((a22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v86 = MEMORY[0x1E69E7CC0];
  v117 = v82;
  if (v85)
  {
    v168 = MEMORY[0x1E69E7CC0];
    v87 = v84;
    sub_1B4BCF1BC(0, v85 & ~(v85 >> 63), 0);
    if (v85 < 0)
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v88 = v84;
    v89 = v168;
    if ((a22 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v85; ++i)
      {
        v91 = MEMORY[0x1B8C7CD90](i, a22);
        v168 = v89;
        v93 = *(v89 + 16);
        v92 = *(v89 + 24);
        if (v93 >= v92 >> 1)
        {
          v94 = v91;
          sub_1B4BCF1BC((v92 > 1), v93 + 1, 1);
          v91 = v94;
          v89 = v168;
        }

        *(v89 + 16) = v93 + 1;
        *(v89 + 8 * v93 + 32) = v91;
      }
    }

    else
    {
      v96 = 32;
      do
      {
        v97 = *(a22 + v96);
        v168 = v89;
        v99 = *(v89 + 16);
        v98 = *(v89 + 24);
        v100 = v97;
        if (v99 >= v98 >> 1)
        {
          v101 = v100;
          sub_1B4BCF1BC((v98 > 1), v99 + 1, 1);
          v100 = v101;
          v89 = v168;
        }

        *(v89 + 16) = v99 + 1;
        *(v89 + 8 * v99 + 32) = v100;
        v96 += 8;
        --v85;
      }

      while (v85);
    }

    v84 = v88;
    v86 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v95 = v84;

    v89 = MEMORY[0x1E69E7CC0];
  }

  *(a9 + v81[27]) = v89;
  sub_1B4BAF044(a23);
  v103 = v102;

  *(a9 + v81[28]) = v103;
  sub_1B4996E40(a24);
  v105 = v104;

  if (*(v105 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68F0, &qword_1B4D1BC20);
    v106 = sub_1B4D18AEC();
  }

  else
  {
    v106 = MEMORY[0x1E69E7CC8];
  }

  v168 = v106;

  sub_1B499F570(v107, 1, &v168);
  LODWORD(v131) = a28;

  *(a9 + v81[29]) = v168;

  sub_1B4975024(a30, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4975024(a29, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4975024(v138, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  sub_1B4975024(v140, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4975024(v139, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B4975024(v141, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4975024(v142, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4975024(v143, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4975024(v144, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4975024(v145, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4975024(v146, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4975024(v147, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (a25)
  {
    v108 = a25;
  }

  else
  {
    v108 = v86;
  }

  v147 = v108;
  sub_1B4975024(v148, &qword_1EB8A6CB8, &unk_1B4D1F0C0);
  sub_1B4975024(v149, &qword_1EB8A6790, &qword_1B4D1BBC0);
  v149 = *(v121 + 8);
  v109 = v157;
  v149(v150, v157);
  v150 = *(v120 + 8);
  v110 = v135;
  v150(v152, v135);
  v152 = *(v119 + 8);
  v111 = v133;
  v152(v151, v133);
  sub_1B4975024(v156, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4975024(v167, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B4975024(v166, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4975024(v165, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4975024(v164, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4975024(v163, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4975024(v162, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4975024(v161, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4975024(v160, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4975024(v159, &qword_1EB8A6CB8, &unk_1B4D1F0C0);
  sub_1B4975024(v158, &qword_1EB8A6790, &qword_1B4D1BBC0);
  sub_1B4975024(v137, &qword_1EB8A6790, &qword_1B4D1BBC0);
  v149(v136, v109);
  v150(v134, v110);
  v152(v132, v111);
  *(a9 + v81[30]) = v147;
  v112 = a9 + v81[31];
  v113 = v172;
  *(v112 + 32) = v171;
  *(v112 + 48) = v113;
  *(v112 + 64) = v173;
  *(v112 + 80) = v174;
  v114 = v170;
  *v112 = v169;
  *(v112 + 16) = v114;
  sub_1B498B270(v154, a9 + v81[32], &qword_1EB8A6C98, &unk_1B4D2F3F0);
  *(a9 + v81[33]) = v131 & 1;
  sub_1B49A205C(v153, v118, &qword_1EB8A6CC8, &unk_1B4D464B0);
  return sub_1B49A205C(v155, v117, &qword_1EB8A6C90, &unk_1B4D1BBD0);
}

uint64_t WorkoutState.copyWith(identifier:activityType:status:goal:configuredAlerts:start:end:duration:location:weatherConditions:distance:pace:averagePace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:elapsedTimeInHeartRateZones:averagePower:elevationGain:events:metadata:samplesByType:route:mediaDetails:activitySummaryRepresentable:isMachineWorkout:splitAverageHeartRate:timeBasedSplitDuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unsigned int (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, unsigned int (*a6)(uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char *a12, uint64_t a13, uint64_t a14, unsigned int (*a15)(uint64_t, uint64_t, uint64_t), uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, uint64_t a22, uint64_t a23, unint64_t a24, void *a25, uint64_t a26, uint64_t a27, __int128 *a28, uint64_t a29, unsigned __int8 a30, uint64_t a31, uint64_t a32)
{
  v327 = a6;
  v283 = a8;
  v297 = a7;
  v298 = a3;
  v290 = a5;
  LODWORD(v281) = a4;
  v308 = a2;
  v302 = a1;
  v295 = a9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v294 = &v277 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v306 = &v277 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v292 = &v277 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v305 = &v277 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v296 = &v277 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v326 = &v277 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v293 = &v277 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v304 = &v277 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v288 = &v277 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v325 = &v277 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v307 = &v277 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v324 = &v277 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v287 = (&v277 - v57);
  MEMORY[0x1EEE9AC00](v58);
  v323 = &v277 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v60 - 8);
  v286 = &v277 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v322 = &v277 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v64 - 8);
  v285 = &v277 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v321 = &v277 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v284 = &v277 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v320 = &v277 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v72 - 8);
  v289 = &v277 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v314 = &v277 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v299 = &v277 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v319 = &v277 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB8, &unk_1B4D1F0C0);
  MEMORY[0x1EEE9AC00](v80 - 8);
  v282 = (&v277 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v82);
  v316 = &v277 - v83;
  v84 = sub_1B4D1777C();
  v85 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v315 = &v277 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE020, &unk_1B4D46720);
  MEMORY[0x1EEE9AC00](v87 - 8);
  v89 = &v277 - v88;
  v90 = sub_1B4D179EC();
  v312 = *(v90 - 8);
  v313 = v90;
  MEMORY[0x1EEE9AC00](v90);
  v311 = &v277 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  MEMORY[0x1EEE9AC00](v92 - 8);
  v94 = &v277 - v93;
  v95 = sub_1B4D177CC();
  v96 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v98 = &v277 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v99 - 8);
  v280 = &v277 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v101);
  v310 = &v277 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v278 = &v277 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v309 = &v277 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v109 = &v277 - v108;
  MEMORY[0x1EEE9AC00](v110);
  v111 = a28[3];
  v343 = a28[2];
  v344 = v111;
  v345 = a28[4];
  v346 = *(a28 + 80);
  v112 = a28[1];
  v341 = *a28;
  v342 = v112;
  v317 = v85;
  v318 = v84;
  v113 = *(v85 + 56);
  v300 = &v277 - v114;
  v279 = v113;
  v113();
  sub_1B4974FBC(v302, v94, &qword_1EB8A6A30, &unk_1B4D1FC00);
  v115 = *(v96 + 48);
  v116 = v115(v94, 1, v95);
  v301 = v98;
  v302 = v96;
  v303 = v95;
  if (v116 == 1)
  {
    v117 = *(v96 + 16);
    v118 = v328;
    v117(v98, v328, v95);
    if (v115(v94, 1, v95) != 1)
    {
      sub_1B4975024(v94, &qword_1EB8A6A30, &unk_1B4D1FC00);
    }
  }

  else
  {
    (*(v96 + 32))(v98, v94, v95);
    v118 = v328;
  }

  v119 = v313;
  v120 = v308;
  if (!v308)
  {
    v120 = *(v118 + *(type metadata accessor for WorkoutState(0) + 24));
  }

  v121 = v312;
  if (v281)
  {
    v298 = *(v118 + *(type metadata accessor for WorkoutState(0) + 20));
  }

  sub_1B4974FBC(v290, v89, &qword_1EB8AE020, &unk_1B4D46720);
  v122 = *(v121 + 48);
  if (v122(v89, 1, v119) != 1)
  {
    (*(v121 + 32))(v311, v89, v119);
    v133 = v308;
    v126 = v318;
    v127 = v327;
    if (v327)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  v123 = type metadata accessor for WorkoutState(0);
  (*(v121 + 16))(v311, v118 + *(v123 + 28), v119);
  v124 = v122(v89, 1, v119);
  v125 = v308;
  v126 = v318;
  if (v124 != 1)
  {
    sub_1B4975024(v89, &qword_1EB8AE020, &unk_1B4D46720);
  }

  v127 = v327;
  if (!v327)
  {
LABEL_17:
    v127 = *(v118 + *(type metadata accessor for WorkoutState(0) + 32));
  }

LABEL_13:
  v128 = v317;
  sub_1B4974FBC(v297, v109, &qword_1EB8A6790, &qword_1B4D1BBC0);
  v129 = *(v128 + 48);
  v130 = v129(v109, 1, v126);
  v290 = v127;
  if (v130 == 1)
  {
    v131 = type metadata accessor for WorkoutState(0);
    (*(v128 + 16))(v315, v118 + *(v131 + 36), v126);
    v132 = v129(v109, 1, v126);

    if (v132 != 1)
    {
      sub_1B4975024(v109, &qword_1EB8A6790, &qword_1B4D1BBC0);
    }
  }

  else
  {
    (*(v128 + 32))(v315, v109, v126);
  }

  v134 = v278;
  sub_1B4974FBC(v300, v278, &qword_1EB8A6790, &qword_1B4D1BBC0);
  v135 = v129(v134, 1, v126);
  v136 = v280;
  v291 = v120;
  if (v135 == 1)
  {
    v137 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v118 + *(v137 + 40), v309, &qword_1EB8A6790, &qword_1B4D1BBC0);
    if (v129(v134, 1, v126) != 1)
    {
      sub_1B4975024(v134, &qword_1EB8A6790, &qword_1B4D1BBC0);
    }
  }

  else
  {
    v138 = v309;
    (*(v128 + 32))(v309, v134, v126);
    (v279)(v138, 0, 1, v126);
  }

  sub_1B4974FBC(v283, v136, &qword_1EB8A6790, &qword_1B4D1BBC0);
  v139 = v129(v136, 1, v126);
  v297 = a10;
  if (v139 == 1)
  {
    v140 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v118 + *(v140 + 44), v310, &qword_1EB8A6790, &qword_1B4D1BBC0);
    v141 = v129(v136, 1, v126);
    v142 = v299;
    v143 = v282;
    if (v141 != 1)
    {
      sub_1B4975024(v136, &qword_1EB8A6790, &qword_1B4D1BBC0);
    }
  }

  else
  {
    v144 = v310;
    (*(v128 + 32))(v310, v136, v126);
    (v279)(v144, 0, 1, v126);
    v142 = v299;
    v143 = v282;
  }

  if (a11)
  {
    v297 = *(v118 + *(type metadata accessor for WorkoutState(0) + 48));
  }

  v299 = a12;
  if (!a12)
  {
    v145 = *(v118 + *(type metadata accessor for WorkoutState(0) + 52));
    if (v145)
    {
      v299 = v145;
      v146 = v145;
    }

    else
    {
      v299 = 0;
    }
  }

  v327 = a15;
  sub_1B4974FBC(a13, v143, &qword_1EB8A6CB8, &unk_1B4D1F0C0);
  v147 = type metadata accessor for WeatherCondition(0);
  v148 = *(v147 - 8);
  v149 = *(v148 + 48);
  if (v149(v143, 1, v147) == 1)
  {
    v150 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v118 + *(v150 + 56), v316, &qword_1EB8A6CB8, &unk_1B4D1F0C0);
    v151 = v149(v143, 1, v147);
    v152 = a12;
    if (v151 != 1)
    {
      sub_1B4975024(v143, &qword_1EB8A6CB8, &unk_1B4D1F0C0);
    }
  }

  else
  {
    v153 = v143;
    v154 = v316;
    sub_1B4CCF7C0(v153, v316, type metadata accessor for WeatherCondition);
    (*(v148 + 56))(v154, 0, 1, v147);
    v155 = a12;
  }

  sub_1B4974FBC(a14, v142, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v157 = *(v156 - 1);
  v158 = *(v157 + 48);
  v159 = (v158)(v142, 1, v156);
  v308 = v156;
  v282 = v158;
  v283 = v157 + 48;
  v281 = v157;
  if (v159 == 1)
  {
    v160 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v118 + *(v160 + 60), v319, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v161 = (v158)(v142, 1, v156);
    v162 = v284;
    if (v161 != 1)
    {
      sub_1B4975024(v142, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    }
  }

  else
  {
    v163 = v319;
    (*(v157 + 32))(v319, v142, v156);
    (*(v157 + 56))(v163, 0, 1, v156);
    v162 = v284;
  }

  sub_1B4974FBC(v327, v162, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v165 = *(v164 - 8);
  v166 = *(v165 + 48);
  if (v166(v162, 1, v164) == 1)
  {
    v167 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v328 + *(v167 + 64), v320, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    v168 = v166(v162, 1, v164);
    v169 = v285;
    if (v168 != 1)
    {
      sub_1B4975024(v162, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    }
  }

  else
  {
    v170 = v320;
    (*(v165 + 32))(v320, v162, v164);
    (*(v165 + 56))(v170, 0, 1, v164);
    v169 = v285;
  }

  sub_1B4974FBC(a16, v169, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if (v166(v169, 1, v164) == 1)
  {
    v171 = type metadata accessor for WorkoutState(0);
    v172 = v328;
    sub_1B4974FBC(v328 + *(v171 + 68), v321, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    if (v166(v169, 1, v164) != 1)
    {
      sub_1B4975024(v169, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    }
  }

  else
  {
    v173 = v321;
    (*(v165 + 32))(v321, v169, v164);
    (*(v165 + 56))(v173, 0, 1, v164);
    v172 = v328;
  }

  v174 = v286;
  sub_1B4974FBC(a17, v286, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v176 = *(v175 - 8);
  v177 = *(v176 + 48);
  if (v177(v174, 1, v175) == 1)
  {
    v178 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v172 + *(v178 + 72), v322, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v179 = v177(v174, 1, v175);
    v180 = v307;
    if (v179 != 1)
    {
      sub_1B4975024(v174, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    }
  }

  else
  {
    v181 = v322;
    (*(v176 + 32))(v322, v174, v175);
    (*(v176 + 56))(v181, 0, 1, v175);
    v180 = v307;
  }

  v182 = v287;
  sub_1B4974FBC(a18, v287, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v184 = *(v183 - 8);
  v185 = *(v184 + 48);
  v186 = v185(v182, 1, v183);
  v307 = (v184 + 48);
  v327 = v185;
  if (v186 == 1)
  {
    v187 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v172 + *(v187 + 76), v323, &qword_1EB8A6CC8, &unk_1B4D464B0);
    v188 = v185(v182, 1, v183);
    v189 = v288;
    if (v188 != 1)
    {
      sub_1B4975024(v182, &qword_1EB8A6CC8, &unk_1B4D464B0);
    }
  }

  else
  {
    v190 = v323;
    (*(v184 + 32))(v323, v182, v183);
    (*(v184 + 56))(v190, 0, 1, v183);
    v189 = v288;
  }

  sub_1B4974FBC(a19, v180, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v191 = v327;
  if (v327(v180, 1, v183) == 1)
  {
    v192 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v172 + *(v192 + 80), v324, &qword_1EB8A6CC8, &unk_1B4D464B0);
    if (v191(v180, 1, v183) != 1)
    {
      sub_1B4975024(v180, &qword_1EB8A6CC8, &unk_1B4D464B0);
    }
  }

  else
  {
    v193 = v324;
    (*(v184 + 32))(v324, v180, v183);
    (*(v184 + 56))(v193, 0, 1, v183);
  }

  sub_1B4974FBC(a20, v189, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v194 = v327;
  if (v327(v189, 1, v183) == 1)
  {
    v195 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v172 + *(v195 + 92), v325, &qword_1EB8A6CC8, &unk_1B4D464B0);
    if (v194(v189, 1, v183) != 1)
    {
      sub_1B4975024(v189, &qword_1EB8A6CC8, &unk_1B4D464B0);
    }
  }

  else
  {
    v196 = v325;
    (*(v184 + 32))(v325, v189, v183);
    (*(v184 + 56))(v196, 0, 1, v183);
  }

  v197 = a21;
  if (!a21)
  {
    type metadata accessor for WorkoutState(0);
  }

  v288 = v197;
  v198 = v296;
  sub_1B4974FBC(a22, v296, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v200 = *(v199 - 8);
  v201 = *(v200 + 48);
  if (v201(v198, 1, v199) == 1)
  {
    v202 = type metadata accessor for WorkoutState(0);
    v203 = v328;
    sub_1B4974FBC(v328 + *(v202 + 100), v326, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    v204 = v201(v198, 1, v199);

    if (v204 != 1)
    {
      sub_1B4975024(v198, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    }
  }

  else
  {
    v205 = v326;
    (*(v200 + 32))(v326, v198, v199);
    (*(v200 + 56))(v205, 0, 1, v199);

    v203 = v328;
  }

  v206 = v289;
  sub_1B4974FBC(a23, v289, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v207 = v308;
  v208 = v282;
  if (v282(v206, 1, v308) == 1)
  {
    v209 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v203 + *(v209 + 104), v314, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    if (v208(v206, 1, v207) != 1)
    {
      sub_1B4975024(v206, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    }
  }

  else
  {
    v210 = v281;
    v211 = v314;
    (*(v281 + 32))(v314, v206, v207);
    (*(v210 + 56))(v211, 0, 1, v207);
  }

  v296 = v184;
  if (a24)
  {
    v212 = a24;
    v213 = a26;
    if (a25)
    {
      goto LABEL_77;
    }

LABEL_80:
    v215 = *(v203 + *(type metadata accessor for WorkoutState(0) + 112));

    v214 = sub_1B4BAE58C(v215);
    if (v213)
    {
      goto LABEL_78;
    }

    goto LABEL_81;
  }

  v212 = WorkoutState.events.getter();
  v213 = a26;
  if (!a25)
  {
    goto LABEL_80;
  }

LABEL_77:

  v214 = a25;
  if (v213)
  {
LABEL_78:

    v285 = v213;
    v286 = 0;
    goto LABEL_85;
  }

LABEL_81:
  v216 = *(v203 + *(type metadata accessor for WorkoutState(0) + 116));

  sub_1B4CBFF74(v216);
  if (*(v217 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6888, &qword_1B4D1ABA0);
    v218 = sub_1B4D18AEC();
  }

  else
  {
    v218 = MEMORY[0x1E69E7CC8];
  }

  *&v335 = v218;

  sub_1B4CCC470(v219, 1, &v335);
  v286 = 0;

  v285 = v335;
LABEL_85:
  v220 = v292;
  if (a27)
  {
    v289 = a27;
  }

  else
  {
    v289 = *(v203 + *(type metadata accessor for WorkoutState(0) + 120));
  }

  v287 = v214;
  if (*(&v341 + 1) == 1)
  {
    v221 = v203 + *(type metadata accessor for WorkoutState(0) + 124);
    v222 = *(v221 + 48);
    v331 = *(v221 + 32);
    v332 = v222;
    v333 = *(v221 + 64);
    v334 = *(v221 + 80);
    v223 = *(v221 + 16);
    v329 = *v221;
    v330 = v223;
    sub_1B4974FBC(&v329, &v335, &qword_1EB8ABC80, &qword_1B4D38648);
    v337 = v331;
    v338 = v332;
    v339 = v333;
    v340 = v334;
    v224 = v329;
    v225 = v330;
  }

  else
  {
    v337 = v343;
    v338 = v344;
    v339 = v345;
    v340 = v346;
    v224 = v341;
    v225 = v342;
  }

  v335 = v224;
  v336 = v225;
  v292 = a31;
  LODWORD(v308) = a30;
  sub_1B4974FBC(a29, v220, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  v226 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v227 = *(v226 - 8);
  v228 = *(v227 + 48);
  if (v228(v220, 1, v226) == 1)
  {
    v229 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v328 + *(v229 + 128), v305, &qword_1EB8A6C98, &unk_1B4D2F3F0);
    v230 = v228(v220, 1, v226);

    if (v230 != 1)
    {
      sub_1B4974FBC(&v341, &v329, &qword_1EB8ABC80, &qword_1B4D38648);
      sub_1B4975024(v220, &qword_1EB8A6C98, &unk_1B4D2F3F0);
      goto LABEL_96;
    }
  }

  else
  {
    v231 = v305;
    sub_1B4CCF7C0(v220, v305, type metadata accessor for HKActivitySummaryRepresentable);
    (*(v227 + 56))(v231, 0, 1, v226);
  }

  sub_1B4974FBC(&v341, &v329, &qword_1EB8ABC80, &qword_1B4D38648);
LABEL_96:
  v232 = v327;
  v233 = v328;
  v234 = v293;
  v235 = v294;
  if (v308 == 2)
  {
    LODWORD(v308) = *(v233 + *(type metadata accessor for WorkoutState(0) + 132));
  }

  sub_1B4974FBC(v292, v234, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v232(v234, 1, v183) == 1)
  {
    v236 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v233 + *(v236 + 84), v304, &qword_1EB8A6CC8, &unk_1B4D464B0);
    v237 = v232(v234, 1, v183);
    v238 = v298;
    if (v237 != 1)
    {
      sub_1B4975024(v234, &qword_1EB8A6CC8, &unk_1B4D464B0);
    }
  }

  else
  {
    v239 = v296;
    v240 = v304;
    (*(v296 + 32))(v304, v234, v183);
    (*(v239 + 56))(v240, 0, 1, v183);
    v238 = v298;
  }

  sub_1B4974FBC(a32, v235, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v242 = *(v241 - 8);
  v243 = *(v242 + 48);
  if (v243(v235, 1, v241) == 1)
  {
    v244 = type metadata accessor for WorkoutState(0);
    sub_1B4974FBC(v233 + *(v244 + 88), v306, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    if (v243(v235, 1, v241) != 1)
    {
      sub_1B4975024(v235, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    }
  }

  else
  {
    v245 = v306;
    (*(v242 + 32))(v306, v235, v241);
    (*(v242 + 56))(v245, 0, 1, v241);
  }

  v246 = type metadata accessor for WorkoutState(0);
  v247 = v295;
  v248 = v295 + v246[21];
  (*(v296 + 56))(v248, 1, 1, v183);
  v249 = *(v242 + 56);
  v327 = (v247 + v246[22]);
  v249();
  (*(v302 + 16))(v247, v301, v303);
  *(v247 + v246[6]) = v291;
  *(v247 + v246[5]) = v238;
  (*(v312 + 16))(v247 + v246[7], v311, v313);
  *(v247 + v246[8]) = v290;
  (*(v317 + 16))(v247 + v246[9], v315, v318);
  sub_1B4974FBC(v309, v247 + v246[10], &qword_1EB8A6790, &qword_1B4D1BBC0);
  sub_1B4974FBC(v310, v247 + v246[11], &qword_1EB8A6790, &qword_1B4D1BBC0);
  *(v247 + v246[12]) = v297;
  v250 = v299;
  *(v247 + v246[13]) = v299;
  sub_1B4974FBC(v316, v247 + v246[14], &qword_1EB8A6CB8, &unk_1B4D1F0C0);
  sub_1B4974FBC(v319, v247 + v246[15], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(v320, v247 + v246[16], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(v321, v247 + v246[17], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(v322, v247 + v246[18], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4974FBC(v323, v247 + v246[19], &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v324, v247 + v246[20], &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v325, v247 + v246[23], &qword_1EB8A6CC8, &unk_1B4D464B0);
  *(v247 + v246[24]) = v288;
  sub_1B4974FBC(v326, v247 + v246[25], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B4974FBC(v314, v247 + v246[26], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v212 >> 62)
  {
    v251 = sub_1B4D18ABC();
    v328 = v248;
    if (v251)
    {
      goto LABEL_108;
    }

LABEL_121:
    v265 = v250;

    v253 = MEMORY[0x1E69E7CC0];
    goto LABEL_122;
  }

  v251 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v328 = v248;
  if (!v251)
  {
    goto LABEL_121;
  }

LABEL_108:
  *&v329 = MEMORY[0x1E69E7CC0];
  v252 = v250;
  sub_1B4BCF1BC(0, v251 & ~(v251 >> 63), 0);
  if (v251 < 0)
  {
    __break(1u);
    goto LABEL_128;
  }

  v253 = v329;
  if ((v212 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v251; ++i)
    {
      v255 = MEMORY[0x1B8C7CD90](i, v212);
      *&v329 = v253;
      v257 = *(v253 + 16);
      v256 = *(v253 + 24);
      if (v257 >= v256 >> 1)
      {
        sub_1B4BCF1BC((v256 > 1), v257 + 1, 1);
        v253 = v329;
      }

      *(v253 + 16) = v257 + 1;
      *(v253 + 8 * v257 + 32) = v255;
    }

    v250 = v299;
  }

  else
  {
    v258 = 32;
    do
    {
      v259 = *(v212 + v258);
      *&v329 = v253;
      v260 = *(v253 + 16);
      v261 = *(v253 + 24);
      v262 = v259;
      if (v260 >= v261 >> 1)
      {
        v263 = v261 > 1;
        v264 = v262;
        sub_1B4BCF1BC(v263, v260 + 1, 1);
        v262 = v264;
        v253 = v329;
      }

      *(v253 + 16) = v260 + 1;
      *(v253 + 8 * v260 + 32) = v262;
      v258 += 8;
      --v251;
    }

    while (v251);

    v247 = v295;
  }

LABEL_122:
  *(v247 + v246[27]) = v253;
  sub_1B4BAF044(v287);
  v267 = v266;

  *(v247 + v246[28]) = v267;
  v268 = v286;
  sub_1B4996E40(v285);
  v270 = v269;

  if (*(v270 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68F0, &qword_1B4D1BC20);
    v271 = sub_1B4D18AEC();
  }

  else
  {
    v271 = MEMORY[0x1E69E7CC8];
  }

  *&v329 = v271;

  sub_1B499F570(v272, 1, &v329);
  if (!v268)
  {

    *(v247 + v246[29]) = v329;
    sub_1B4975024(v314, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B4975024(v326, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    sub_1B4975024(v325, &qword_1EB8A6CC8, &unk_1B4D464B0);
    sub_1B4975024(v324, &qword_1EB8A6CC8, &unk_1B4D464B0);
    sub_1B4975024(v323, &qword_1EB8A6CC8, &unk_1B4D464B0);
    sub_1B4975024(v322, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B4975024(v321, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    sub_1B4975024(v320, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    sub_1B4975024(v319, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B4975024(v316, &qword_1EB8A6CB8, &unk_1B4D1F0C0);
    sub_1B4975024(v310, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4975024(v309, &qword_1EB8A6790, &qword_1B4D1BBC0);
    (*(v317 + 8))(v315, v318);
    (*(v312 + 8))(v311, v313);
    (*(v302 + 8))(v301, v303);
    sub_1B4975024(v300, &qword_1EB8A6790, &qword_1B4D1BBC0);
    *(v247 + v246[30]) = v289;
    v273 = v247 + v246[31];
    v274 = v338;
    *(v273 + 32) = v337;
    *(v273 + 48) = v274;
    *(v273 + 64) = v339;
    *(v273 + 80) = v340;
    v275 = v336;
    *v273 = v335;
    *(v273 + 16) = v275;
    sub_1B498B270(v305, v247 + v246[32], &qword_1EB8A6C98, &unk_1B4D2F3F0);
    *(v247 + v246[33]) = v308 & 1;
    sub_1B49A205C(v304, v328, &qword_1EB8A6CC8, &unk_1B4D464B0);
    return sub_1B49A205C(v306, v327, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  }

LABEL_128:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id WorkoutState.locationType.getter@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for WorkoutState(0) + 24));
  v4 = [v3 location];
  result = [v3 swimmingLocationType];
  if (v4 == 1)
  {
    v7 = 4 * (result == 1);
    if (result == 2)
    {
      v7 = 3;
    }
  }

  else
  {
    if (v4 == 3)
    {
      if (!result)
      {
        v7 = 2;
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if (v4 != 2 || result != 0)
    {
LABEL_10:
      v7 = 0;
      goto LABEL_15;
    }

    v7 = 1;
  }

LABEL_15:
  *a1 = v7;
  return result;
}

unint64_t sub_1B4CC77A4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x737574617473;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x4774756F6B726F77;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x7472617473;
      break;
    case 6:
      result = 0x536E6F6973736573;
      break;
    case 7:
      result = 6581861;
      break;
    case 8:
      result = 0x6E6F697461727564;
      break;
    case 9:
      result = 0x4C656C6261646F63;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x65636E6174736964;
      break;
    case 12:
      result = 1701011824;
      break;
    case 13:
    case 21:
      result = 0x5065676172657661;
      break;
    case 14:
      result = 0x736569726F6C6163;
      break;
    case 15:
      result = 0x7461527472616568;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      v3 = 5;
      goto LABEL_18;
    case 18:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      v3 = 11;
LABEL_18:
      result = v3 | 0xD000000000000010;
      break;
    case 22:
      result = 0x6F69746176656C65;
      break;
    case 23:
      result = 0x45656C6261646F63;
      break;
    case 24:
      result = 0x4D656C6261646F63;
      break;
    case 25:
      result = 0xD000000000000014;
      break;
    case 26:
      result = 0x6574756F72;
      break;
    case 27:
      result = 0x746544616964656DLL;
      break;
    case 28:
      result = 0xD00000000000001CLL;
      break;
    case 29:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B4CC7B0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4CD0880(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4CC7B34(uint64_t a1)
{
  v2 = sub_1B4CCF828();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4CC7B70(uint64_t a1)
{
  v2 = sub_1B4CCF828();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE028, &unk_1B4D46730);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4CCF828();
  sub_1B4D18EFC();
  LOBYTE(v35[0]) = 0;
  sub_1B4D177CC();
  sub_1B4CD122C(&qword_1EB8A7770, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1B4D18D0C();
  if (!v2)
  {
    v9 = type metadata accessor for WorkoutState(0);
    *&v35[0] = *(v3 + *(v9 + 20));
    LOBYTE(v29) = 1;
    type metadata accessor for HKWorkoutSessionState(0);
    sub_1B4CD122C(&qword_1EB8AE038, type metadata accessor for HKWorkoutSessionState, &protocol conformance descriptor for HKWorkoutSessionState);
    sub_1B4D18D0C();
    v42 = v9;
    v10 = *(v9 + 24);
    v24 = v3;
    *&v35[0] = *(v3 + v10);
    LOBYTE(v29) = 2;
    v11 = *&v35[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
    sub_1B4D18D0C();

    LOBYTE(v35[0]) = 3;
    sub_1B4D179EC();
    sub_1B4CD122C(&qword_1EB8A9F90, MEMORY[0x1E6985B58], &protocol conformance descriptor for WorkoutGoal);
    v12 = v24;
    sub_1B4D18D0C();
    *&v35[0] = *(v12 + v42[8]);
    LOBYTE(v29) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE040, &qword_1B4D46740);
    sub_1B4CCFB58(&qword_1EB8AE048, sub_1B4AFFB50, MEMORY[0x1E69E6300]);
    sub_1B4D18D0C();
    LOBYTE(v35[0]) = 5;
    sub_1B4D1777C();
    sub_1B4CD122C(&qword_1EDC37820, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1B4D18D0C();
    LOBYTE(v35[0]) = 6;
    sub_1B4D18CAC();
    LOBYTE(v35[0]) = 7;
    sub_1B4D18CAC();
    v13 = v24;
    LOBYTE(v35[0]) = 8;
    sub_1B4D18CDC();
    *&v35[0] = *(v13 + v42[13]);
    LOBYTE(v29) = 9;
    v15 = *&v35[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE050, &qword_1B4D46748);
    sub_1B49B0578(&qword_1EB8AE058, &qword_1EB8AE050, &qword_1B4D46748, &protocol conformance descriptor for CodableBridging<A>);
    sub_1B4D18CAC();

    LOBYTE(v35[0]) = 10;
    type metadata accessor for WeatherCondition(0);
    sub_1B4CD122C(&qword_1EB8AE060, type metadata accessor for WeatherCondition, &protocol conformance descriptor for WeatherCondition);
    sub_1B4D18CAC();
    LOBYTE(v35[0]) = 11;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    v17 = sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968078]);
    v23[0] = v16;
    v23[1] = v17;
    sub_1B4D18CAC();
    LOBYTE(v35[0]) = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    sub_1B49B0578(&qword_1EB8A71E8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v35[0]) = 13;
    sub_1B4D18CAC();
    LOBYTE(v35[0]) = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    sub_1B49B0578(&qword_1EB8A6ED0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v35[0]) = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
    sub_1B49B0578(&qword_1EB8A9D68, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v35[0]) = 16;
    sub_1B4D18CAC();
    LOBYTE(v35[0]) = 17;
    sub_1B4D18CAC();
    LOBYTE(v35[0]) = 18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v35[0]) = 19;
    sub_1B4D18CAC();
    *&v35[0] = *(v24 + v42[24]);
    LOBYTE(v29) = 20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE068, &qword_1B4D46750);
    sub_1B4CCFBD0(&qword_1EB8AE070, MEMORY[0x1E69E6538], MEMORY[0x1E69E63C0], MEMORY[0x1E69E5E38]);
    sub_1B4D18CAC();
    LOBYTE(v35[0]) = 21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
    sub_1B49B0578(&qword_1EB8A7838, &qword_1EB8A6CE0, &unk_1B4D1EF00, MEMORY[0x1E6968078]);
    sub_1B4D18CAC();
    LOBYTE(v35[0]) = 22;
    sub_1B4D18CAC();
    *&v35[0] = *(v24 + v42[27]);
    LOBYTE(v29) = 23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE078, &qword_1B4D46758);
    sub_1B4CCFC40(&qword_1EB8AE080, &qword_1EB8AE088, &protocol conformance descriptor for CodableBridging<A>, MEMORY[0x1E69E6300]);
    sub_1B4D18D0C();
    *&v35[0] = *(v24 + v42[28]);
    LOBYTE(v29) = 24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE098, &qword_1B4D46768);
    sub_1B4CCF87C();
    sub_1B4D18D0C();
    *&v35[0] = *(v24 + v42[29]);
    LOBYTE(v29) = 25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE0B0, &unk_1B4D46770);
    sub_1B4CCF938();
    sub_1B4D18D0C();
    v41[0] = *(v24 + v42[30]);
    v40 = 26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE0E8, &qword_1B4D46790);
    sub_1B4CCFABC(&qword_1EB8AE0F0, &qword_1EB8AE0F8, &protocol conformance descriptor for LocationCoordinate, MEMORY[0x1E69E6300]);
    sub_1B4D18D0C();
    v18 = v24 + v42[31];
    v19 = *(v18 + 48);
    v20 = *(v18 + 16);
    v36 = *(v18 + 32);
    v37 = v19;
    v21 = *(v18 + 48);
    v38 = *(v18 + 64);
    v22 = *(v18 + 16);
    v35[0] = *v18;
    v35[1] = v22;
    v31 = v36;
    v32 = v21;
    v33 = *(v18 + 64);
    v39 = *(v18 + 80);
    v34 = *(v18 + 80);
    v29 = v35[0];
    v30 = v20;
    v28 = 27;
    sub_1B4974FBC(v35, v26, &qword_1EB8ABC80, &qword_1B4D38648);
    sub_1B4AF1524();
    sub_1B4D18CAC();
    v26[2] = v31;
    v26[3] = v32;
    v26[4] = v33;
    v27 = v34;
    v26[0] = v29;
    v26[1] = v30;
    sub_1B4975024(v26, &qword_1EB8ABC80, &qword_1B4D38648);
    v25 = 28;
    type metadata accessor for HKActivitySummaryRepresentable(0);
    sub_1B4CD122C(&qword_1EB8AC608, type metadata accessor for HKActivitySummaryRepresentable, &protocol conformance descriptor for HKActivitySummaryRepresentable);
    sub_1B4D18CAC();
    v25 = 29;
    sub_1B4D18CCC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t WorkoutState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a1;
  v117 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v116 = &v106 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v115 = &v106 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v112 = &v106 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v113 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v111 = &v106 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v106 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v118 = &v106 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v119 = &v106 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v120 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v121 = &v106 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v114 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v122 = &v106 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB8, &unk_1B4D1F0C0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v123 = &v106 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v124 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v125 = &v106 - v31;
  v128 = sub_1B4D1777C();
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1B4D179EC();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v34 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1B4D177CC();
  v131 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE100, &qword_1B4D46798);
  v132 = *(v38 - 8);
  v133 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v106 - v39;
  v41 = type metadata accessor for WorkoutState(0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v106 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v44 + 84);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v47 = *(*(v46 - 8) + 56);
  v135 = v45;
  v47(&v43[v45], 1, 1, v46);
  v139 = v41;
  v48 = *(v41 + 88);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v50 = *(*(v49 - 8) + 56);
  v134 = v48;
  v137 = v43;
  v50(&v43[v48], 1, 1, v49);
  __swift_project_boxed_opaque_existential_1(v138, v138[3]);
  sub_1B4CCF828();
  v51 = v136;
  sub_1B4D18EEC();
  if (v51)
  {
    v136 = v51;
    v53 = v137;
    __swift_destroy_boxed_opaque_existential_1Tm(v138);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    goto LABEL_4;
  }

  v52 = v34;
  v108 = v49;
  v109 = v46;
  LOBYTE(v140) = 0;
  sub_1B4CD122C(&qword_1EB8A7780, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1B4D18C0C();
  v67 = v137;
  (*(v131 + 32))(v137, v37, v35);
  type metadata accessor for HKWorkoutSessionState(0);
  v150 = 1;
  sub_1B4CD122C(&qword_1EB8AE108, type metadata accessor for HKWorkoutSessionState, &protocol conformance descriptor for HKWorkoutSessionState);
  sub_1B4D18C0C();
  v107 = v35;
  *&v67[v139[5]] = v140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  v150 = 2;
  sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
  sub_1B4D18C0C();
  v68 = v139;
  *&v67[v139[6]] = v140;
  LOBYTE(v140) = 3;
  sub_1B4CD122C(&qword_1EB8A9FA0, MEMORY[0x1E6985B58], &protocol conformance descriptor for WorkoutGoal);
  v69 = v40;
  v70 = v130;
  v71 = v69;
  sub_1B4D18C0C();
  (*(v129 + 32))(&v67[v68[7]], v52, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE040, &qword_1B4D46740);
  v150 = 4;
  sub_1B4CCFB58(&qword_1EB8AE110, sub_1B4AFFBA4, MEMORY[0x1E69E6330]);
  sub_1B4D18C0C();
  *&v67[v68[8]] = v140;
  LOBYTE(v140) = 5;
  sub_1B4CD122C(&qword_1EB8A6FB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v72 = v126;
  v73 = v67;
  v74 = v128;
  sub_1B4D18C0C();
  (*(v127 + 32))(&v73[v68[9]], v72, v74);
  LOBYTE(v140) = 6;
  v75 = v125;
  sub_1B4D18BAC();
  sub_1B498B270(v75, &v73[v68[10]], &qword_1EB8A6790, &qword_1B4D1BBC0);
  LOBYTE(v140) = 7;
  v76 = v124;
  sub_1B4D18BAC();
  v77 = v137;
  sub_1B498B270(v76, &v137[v68[11]], &qword_1EB8A6790, &qword_1B4D1BBC0);
  LOBYTE(v140) = 8;
  sub_1B4D18BDC();
  *&v77[v139[12]] = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE050, &qword_1B4D46748);
  v150 = 9;
  sub_1B49B0578(&qword_1EB8AE118, &qword_1EB8AE050, &qword_1B4D46748, &protocol conformance descriptor for CodableBridging<A>);
  sub_1B4D18BAC();
  v136 = 0;
  *&v137[v139[13]] = v140;
  type metadata accessor for WeatherCondition(0);
  LOBYTE(v140) = 10;
  sub_1B4CD122C(&qword_1EB8AE120, type metadata accessor for WeatherCondition, &protocol conformance descriptor for WeatherCondition);
  v79 = v136;
  sub_1B4D18BAC();
  v136 = v79;
  if (v79)
  {
    (*(v132 + 8))(v69, v133);
    LODWORD(v120) = 0;
    LODWORD(v121) = 0;
    LODWORD(v122) = 0;
    LODWORD(v123) = 0;
    LODWORD(v124) = 0;
    LODWORD(v125) = 0;
    LODWORD(v126) = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v118) = 1;
    LODWORD(v113) = 1;
    LODWORD(v114) = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    v80 = &v146;
LABEL_55:
    *(v80 - 64) = 1;
LABEL_56:
    v53 = v137;
    __swift_destroy_boxed_opaque_existential_1Tm(v138);
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    goto LABEL_26;
  }

  sub_1B498B270(v123, &v137[v139[14]], &qword_1EB8A6CB8, &unk_1B4D1F0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  LOBYTE(v140) = 11;
  sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968098]);
  v81 = v136;
  sub_1B4D18BAC();
  v136 = v81;
  if (v81)
  {
    (*(v132 + 8))(v69, v133);
    LODWORD(v121) = 0;
    LODWORD(v122) = 0;
    LODWORD(v123) = 0;
    LODWORD(v124) = 0;
    LODWORD(v125) = 0;
    LODWORD(v126) = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v118) = 1;
    LODWORD(v113) = 1;
    LODWORD(v114) = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v119) = 1;
    v80 = &v147;
    goto LABEL_55;
  }

  sub_1B498B270(v122, &v137[v139[15]], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  LOBYTE(v140) = 12;
  sub_1B49B0578(&qword_1EB8A7200, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968098]);
  v82 = v136;
  sub_1B4D18BAC();
  v136 = v82;
  if (v82)
  {
    (*(v132 + 8))(v69, v133);
    LODWORD(v122) = 0;
    LODWORD(v123) = 0;
    LODWORD(v124) = 0;
    LODWORD(v125) = 0;
    LODWORD(v126) = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v118) = 1;
    LODWORD(v113) = 1;
    LODWORD(v114) = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    v80 = &v148;
    goto LABEL_55;
  }

  sub_1B498B270(v121, &v137[v139[16]], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  LOBYTE(v140) = 13;
  v83 = v136;
  sub_1B4D18BAC();
  v136 = v83;
  if (v83)
  {
    (*(v132 + 8))(v69, v133);
    LODWORD(v123) = 0;
    LODWORD(v124) = 0;
    LODWORD(v125) = 0;
    LODWORD(v126) = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v118) = 1;
    LODWORD(v113) = 1;
    LODWORD(v114) = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v121) = 1;
    v80 = &v151;
    goto LABEL_55;
  }

  sub_1B498B270(v120, &v137[v139[17]], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  LOBYTE(v140) = 14;
  sub_1B49B0578(&qword_1EB8A6F10, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968098]);
  v84 = v136;
  sub_1B4D18BAC();
  v136 = v84;
  if (v84)
  {
    (*(v132 + 8))(v69, v133);
    LODWORD(v124) = 0;
    LODWORD(v125) = 0;
    LODWORD(v126) = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v118) = 1;
    LODWORD(v113) = 1;
    LODWORD(v114) = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v121) = 1;
    LODWORD(v122) = 1;
    v80 = &v152;
    goto LABEL_55;
  }

  sub_1B498B270(v119, &v137[v139[18]], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  LOBYTE(v140) = 15;
  sub_1B49B0578(&qword_1EB8A9D80, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968098]);
  v85 = v136;
  sub_1B4D18BAC();
  v136 = v85;
  if (v85)
  {
    (*(v132 + 8))(v69, v133);
    LODWORD(v125) = 0;
    LODWORD(v126) = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v118) = 1;
    LODWORD(v113) = 1;
    LODWORD(v114) = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v121) = 1;
    LODWORD(v122) = 1;
    LODWORD(v123) = 1;
    v80 = &v153;
    goto LABEL_55;
  }

  sub_1B498B270(v118, &v137[v139[19]], &qword_1EB8A6CC8, &unk_1B4D464B0);
  LOBYTE(v140) = 16;
  v86 = v136;
  sub_1B4D18BAC();
  v136 = v86;
  if (v86)
  {
    (*(v132 + 8))(v69, v133);
    LODWORD(v126) = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v118) = 1;
    LODWORD(v113) = 1;
    LODWORD(v114) = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v121) = 1;
    LODWORD(v122) = 1;
    LODWORD(v123) = 1;
    LODWORD(v124) = 1;
    v80 = &v154;
    goto LABEL_55;
  }

  sub_1B498B270(v110, &v137[v139[20]], &qword_1EB8A6CC8, &unk_1B4D464B0);
  LOBYTE(v140) = 17;
  v87 = v136;
  sub_1B4D18BAC();
  v136 = v87;
  if (v87 || (sub_1B49A205C(v111, &v137[v135], &qword_1EB8A6CC8, &unk_1B4D464B0), LOBYTE(v140) = 18, sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968098]), v88 = v136, sub_1B4D18BAC(), (v136 = v88) != 0) || (sub_1B49A205C(v112, &v137[v134], &qword_1EB8A6C90, &unk_1B4D1BBD0), LOBYTE(v140) = 19, v89 = v136, sub_1B4D18BAC(), (v136 = v89) != 0))
  {
    (*(v132 + 8))(v69, v133);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v118) = 1;
    LODWORD(v113) = 1;
    LODWORD(v114) = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v121) = 1;
    LODWORD(v122) = 1;
    LODWORD(v123) = 1;
    LODWORD(v124) = 1;
    LODWORD(v125) = 1;
    v80 = &v155;
    goto LABEL_55;
  }

  sub_1B498B270(v113, &v137[v139[23]], &qword_1EB8A6CC8, &unk_1B4D464B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE068, &qword_1B4D46750);
  v150 = 20;
  sub_1B4CCFBD0(&qword_1EB8AE128, MEMORY[0x1E69E6560], MEMORY[0x1E69E63E8], MEMORY[0x1E69E5E58]);
  v90 = v136;
  sub_1B4D18BAC();
  v136 = v90;
  if (v90)
  {
    (*(v132 + 8))(v69, v133);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v118) = 1;
    LODWORD(v113) = 1;
    LODWORD(v114) = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v121) = 1;
    LODWORD(v122) = 1;
    LODWORD(v123) = 1;
    LODWORD(v124) = 1;
    LODWORD(v125) = 1;
    LODWORD(v126) = 1;
    v54 = 1;
    goto LABEL_56;
  }

  *&v137[v139[24]] = v140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  LOBYTE(v140) = 21;
  sub_1B49B0578(&qword_1EB8A7848, &qword_1EB8A6CE0, &unk_1B4D1EF00, MEMORY[0x1E6968098]);
  v91 = v136;
  sub_1B4D18BAC();
  v136 = v91;
  if (v91)
  {
    (*(v132 + 8))(v69, v133);
    v56 = 0;
    v57 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v118) = 1;
    LODWORD(v113) = 1;
    LODWORD(v114) = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v121) = 1;
    LODWORD(v122) = 1;
    LODWORD(v123) = 1;
    LODWORD(v124) = 1;
    LODWORD(v125) = 1;
    LODWORD(v126) = 1;
    v54 = 1;
    v55 = 1;
    goto LABEL_56;
  }

  sub_1B498B270(v115, &v137[v139[25]], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  LOBYTE(v140) = 22;
  v92 = v136;
  sub_1B4D18BAC();
  v136 = v92;
  if (v92)
  {
    (*(v132 + 8))(v69, v133);
    v57 = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v118) = 1;
    LODWORD(v113) = 1;
    LODWORD(v114) = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v121) = 1;
    LODWORD(v122) = 1;
    LODWORD(v123) = 1;
    LODWORD(v124) = 1;
    LODWORD(v125) = 1;
    LODWORD(v126) = 1;
    v54 = 1;
    v55 = 1;
    v56 = 1;
    goto LABEL_56;
  }

  sub_1B498B270(v114, &v137[v139[26]], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE078, &qword_1B4D46758);
  v150 = 23;
  sub_1B4CCFC40(&qword_1EB8AE130, &qword_1EB8AE138, &protocol conformance descriptor for CodableBridging<A>, MEMORY[0x1E69E6330]);
  v93 = v136;
  sub_1B4D18C0C();
  v136 = v93;
  if (v93)
  {
    (*(v132 + 8))(v69, v133);
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v118) = 1;
    LODWORD(v113) = 1;
    LODWORD(v114) = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v121) = 1;
    LODWORD(v122) = 1;
    LODWORD(v123) = 1;
    LODWORD(v124) = 1;
    LODWORD(v125) = 1;
    LODWORD(v126) = 1;
    v54 = 1;
    v55 = 1;
    v56 = 1;
    v57 = 1;
    goto LABEL_56;
  }

  *&v137[v139[27]] = v140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE098, &qword_1B4D46768);
  v150 = 24;
  sub_1B4CCFCD8();
  v94 = v136;
  sub_1B4D18C0C();
  v136 = v94;
  if (v94)
  {
    (*(v132 + 8))(v69, v133);
    LODWORD(v133) = 0;
    LODWORD(v118) = 1;
    LODWORD(v113) = 1;
    LODWORD(v114) = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v121) = 1;
    LODWORD(v122) = 1;
    LODWORD(v123) = 1;
    LODWORD(v124) = 1;
    LODWORD(v125) = 1;
    LODWORD(v126) = 1;
    v54 = 1;
    v55 = 1;
    v56 = 1;
    v57 = 1;
    LODWORD(v132) = 1;
    goto LABEL_56;
  }

  *&v137[v139[28]] = v140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE0B0, &unk_1B4D46770);
  v150 = 25;
  sub_1B4CCFD94();
  v95 = v136;
  sub_1B4D18C0C();
  v136 = v95;
  if (v95)
  {
    (*(v132 + 8))(v69, v133);
    LODWORD(v118) = 1;
    LODWORD(v113) = 1;
    LODWORD(v114) = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v121) = 1;
    LODWORD(v122) = 1;
    LODWORD(v123) = 1;
    LODWORD(v124) = 1;
    LODWORD(v125) = 1;
    LODWORD(v126) = 1;
    v54 = 1;
    v55 = 1;
    v56 = 1;
    v57 = 1;
    LODWORD(v132) = 1;
    LODWORD(v133) = 1;
    goto LABEL_56;
  }

  *&v137[v139[29]] = v140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE0E8, &qword_1B4D46790);
  v150 = 26;
  sub_1B4CCFABC(&qword_1EB8AE170, &qword_1EB8AE178, &protocol conformance descriptor for LocationCoordinate, MEMORY[0x1E69E6330]);
  v96 = v136;
  sub_1B4D18C0C();
  v136 = v96;
  if (v96)
  {
    (*(v132 + 8))(v69, v133);
    __swift_destroy_boxed_opaque_existential_1Tm(v138);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    LODWORD(v118) = 1;
    LODWORD(v113) = 1;
    LODWORD(v114) = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v121) = 1;
    LODWORD(v122) = 1;
    LODWORD(v123) = 1;
    LODWORD(v124) = 1;
    LODWORD(v125) = 1;
    LODWORD(v126) = 1;
    v54 = 1;
    v55 = 1;
    v56 = 1;
    v57 = 1;
    LODWORD(v132) = 1;
    LODWORD(v133) = 1;
    v58 = 1;
  }

  else
  {
    *&v137[v139[30]] = v140;
    v150 = 27;
    sub_1B4AF1578();
    v97 = v136;
    sub_1B4D18BAC();
    v136 = v97;
    if (v97)
    {
      (*(v132 + 8))(v69, v133);
      __swift_destroy_boxed_opaque_existential_1Tm(v138);
      v60 = 0;
      v61 = 0;
      LODWORD(v118) = 1;
      LODWORD(v113) = 1;
      LODWORD(v114) = 1;
      LODWORD(v115) = 1;
      LODWORD(v116) = 1;
      LODWORD(v117) = 1;
      LODWORD(v119) = 1;
      LODWORD(v120) = 1;
      LODWORD(v121) = 1;
      LODWORD(v122) = 1;
      LODWORD(v123) = 1;
      LODWORD(v124) = 1;
      LODWORD(v125) = 1;
      LODWORD(v126) = 1;
      v54 = 1;
      v55 = 1;
      v56 = 1;
      v57 = 1;
      LODWORD(v132) = 1;
      LODWORD(v133) = 1;
      v58 = 1;
      v59 = 1;
    }

    else
    {
      v98 = &v137[v139[31]];
      v99 = v143;
      *(v98 + 2) = v142;
      *(v98 + 3) = v99;
      *(v98 + 4) = v144;
      v98[80] = v145;
      v100 = v141;
      *v98 = v140;
      *(v98 + 1) = v100;
      type metadata accessor for HKActivitySummaryRepresentable(0);
      v149 = 28;
      sub_1B4CD122C(&qword_1EB8AC638, type metadata accessor for HKActivitySummaryRepresentable, &protocol conformance descriptor for HKActivitySummaryRepresentable);
      v101 = v136;
      sub_1B4D18BAC();
      v136 = v101;
      if (v101)
      {
        (*(v132 + 8))(v69, v133);
        __swift_destroy_boxed_opaque_existential_1Tm(v138);
        v61 = 0;
        LODWORD(v118) = 1;
        LODWORD(v113) = 1;
        LODWORD(v114) = 1;
        LODWORD(v115) = 1;
        LODWORD(v116) = 1;
        LODWORD(v117) = 1;
        LODWORD(v119) = 1;
        LODWORD(v120) = 1;
        LODWORD(v121) = 1;
        LODWORD(v122) = 1;
        LODWORD(v123) = 1;
        LODWORD(v124) = 1;
        LODWORD(v125) = 1;
        LODWORD(v126) = 1;
        v54 = 1;
        v55 = 1;
        v56 = 1;
        v57 = 1;
        LODWORD(v132) = 1;
        LODWORD(v133) = 1;
        v58 = 1;
        v59 = 1;
        v60 = 1;
      }

      else
      {
        sub_1B498B270(v116, &v137[v139[32]], &qword_1EB8A6C98, &unk_1B4D2F3F0);
        v149 = 29;
        v102 = v136;
        v103 = sub_1B4D18BCC();
        v136 = v102;
        if (!v102)
        {
          v104 = v103;
          (*(v132 + 8))(v71, v133);
          v105 = v137;
          v137[v139[33]] = v104 & 1;
          sub_1B4992854(v105, v117);
          __swift_destroy_boxed_opaque_existential_1Tm(v138);
          return sub_1B4CD11CC(v105, type metadata accessor for WorkoutState);
        }

        (*(v132 + 8))(v69, v133);
        __swift_destroy_boxed_opaque_existential_1Tm(v138);
        LODWORD(v118) = 1;
        LODWORD(v113) = 1;
        LODWORD(v114) = 1;
        LODWORD(v115) = 1;
        LODWORD(v116) = 1;
        LODWORD(v117) = 1;
        LODWORD(v119) = 1;
        LODWORD(v120) = 1;
        LODWORD(v121) = 1;
        LODWORD(v122) = 1;
        LODWORD(v123) = 1;
        LODWORD(v124) = 1;
        LODWORD(v125) = 1;
        LODWORD(v126) = 1;
        v54 = 1;
        v55 = 1;
        v56 = 1;
        v57 = 1;
        LODWORD(v132) = 1;
        LODWORD(v133) = 1;
        v58 = 1;
        v59 = 1;
        v60 = 1;
        v61 = 1;
      }
    }
  }

  v53 = v137;
LABEL_26:
  (*(v131 + 8))(v53, v107);
  if (v118)
  {

    if ((v113 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (!v113)
  {
LABEL_28:
    if (v114)
    {
      goto LABEL_29;
    }

    goto LABEL_43;
  }

  (*(v129 + 8))(&v53[v139[7]], v130);
  if (v114)
  {
LABEL_29:

    if ((v115 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_44;
  }

LABEL_43:
  if (!v115)
  {
LABEL_30:
    if (v116)
    {
      goto LABEL_31;
    }

    goto LABEL_45;
  }

LABEL_44:
  (*(v127 + 8))(&v53[v139[9]], v128);
  if (v116)
  {
LABEL_31:
    sub_1B4975024(&v53[v139[10]], &qword_1EB8A6790, &qword_1B4D1BBC0);
    if ((v117 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_46;
  }

LABEL_45:
  if (!v117)
  {
LABEL_32:
    if (v119)
    {
      goto LABEL_33;
    }

    goto LABEL_47;
  }

LABEL_46:
  sub_1B4975024(&v53[v139[11]], &qword_1EB8A6790, &qword_1B4D1BBC0);
  if (v119)
  {
LABEL_33:

    if ((v120 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_48;
  }

LABEL_47:
  if (!v120)
  {
LABEL_34:
    if (v121)
    {
      goto LABEL_35;
    }

    goto LABEL_49;
  }

LABEL_48:
  sub_1B4975024(&v53[v139[14]], &qword_1EB8A6CB8, &unk_1B4D1F0C0);
  if (v121)
  {
LABEL_35:
    sub_1B4975024(&v53[v139[15]], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    if ((v122 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_50;
  }

LABEL_49:
  if (!v122)
  {
LABEL_36:
    if (v123)
    {
      goto LABEL_37;
    }

    goto LABEL_51;
  }

LABEL_50:
  sub_1B4975024(&v53[v139[16]], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if (v123)
  {
LABEL_37:
    sub_1B4975024(&v53[v139[17]], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    if ((v124 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_52;
  }

LABEL_51:
  if (!v124)
  {
LABEL_38:
    if (v125)
    {
      goto LABEL_39;
    }

LABEL_53:
    if (!v126)
    {
      goto LABEL_4;
    }

    goto LABEL_54;
  }

LABEL_52:
  sub_1B4975024(&v53[v139[18]], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if ((v125 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_39:
  sub_1B4975024(&v53[v139[19]], &qword_1EB8A6CC8, &unk_1B4D464B0);
  if ((v126 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_54:
  sub_1B4975024(&v53[v139[20]], &qword_1EB8A6CC8, &unk_1B4D464B0);
LABEL_4:
  sub_1B4975024(&v53[v135], &qword_1EB8A6CC8, &unk_1B4D464B0);
  result = sub_1B4975024(&v53[v134], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v54)
  {
    result = sub_1B4975024(&v53[v139[23]], &qword_1EB8A6CC8, &unk_1B4D464B0);
    v63 = v139;
    if (!v55)
    {
LABEL_6:
      if (!v56)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v63 = v139;
    if (!v55)
    {
      goto LABEL_6;
    }
  }

  if (!v56)
  {
LABEL_7:
    if (!v57)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = sub_1B4975024(&v53[v63[25]], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  if (!v57)
  {
LABEL_8:
    if (!v132)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = sub_1B4975024(&v53[v63[26]], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (!v132)
  {
LABEL_9:
    if (!v133)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:

  if (!v133)
  {
LABEL_10:
    if (!v58)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:

  if (!v58)
  {
LABEL_11:
    if (!v59)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:

  if (!v59)
  {
LABEL_12:
    if (!v60)
    {
      goto LABEL_13;
    }

LABEL_23:
    v64 = &v53[v63[31]];
    v65 = *(v64 + 3);
    v142 = *(v64 + 2);
    v143 = v65;
    v144 = *(v64 + 4);
    v145 = v64[80];
    v66 = *(v64 + 1);
    v140 = *v64;
    v141 = v66;
    result = sub_1B4975024(&v140, &qword_1EB8ABC80, &qword_1B4D38648);
    if (!v61)
    {
      return result;
    }

    return sub_1B4975024(&v53[v63[32]], &qword_1EB8A6C98, &unk_1B4D2F3F0);
  }

LABEL_22:

  if (v60)
  {
    goto LABEL_23;
  }

LABEL_13:
  if (!v61)
  {
    return result;
  }

  return sub_1B4975024(&v53[v63[32]], &qword_1EB8A6C98, &unk_1B4D2F3F0);
}

uint64_t sub_1B4CCB844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1B4D179EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4CCB8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1B4D1777C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *sub_1B4CCB978(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  v3 = v2;
  return v2;
}

uint64_t sub_1B4CCBC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 124);
  v4 = *(v3 + 32);
  v6 = *(v3 + 64);
  v13 = *(v3 + 48);
  v5 = v13;
  v14 = v6;
  v15 = *(v3 + 80);
  v7 = v15;
  v9 = *(v3 + 16);
  v12[0] = *v3;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v4;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *a2 = v8;
  *(a2 + 16) = v9;
  return sub_1B4974FBC(v12, v11, &qword_1EB8ABC80, &qword_1B4D38648);
}

uint64_t WorkoutState.samples(for:)(void *a1)
{
  v3 = *(v1 + *(type metadata accessor for WorkoutState(0) + 116));
  if (!*(v3 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1B49E9E4C(a1);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = *(*(v3 + 56) + 8 * v4);
  v7 = *(v6 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v11 = MEMORY[0x1E69E7CC0];

    sub_1B4D18A1C();
    v9 = 32;
    do
    {
      v10 = *(v6 + v9);
      sub_1B4D189EC();
      sub_1B4D18A2C();
      sub_1B4D18A3C();
      sub_1B4D189FC();
      v9 += 8;
      --v7;
    }

    while (v7);

    return v11;
  }

  return result;
}

uint64_t WorkoutState.description.getter()
{
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0x696669746E656469, 0xEC000000203A7265);
  sub_1B4D177CC();
  sub_1B4CD122C(&qword_1EB8AE180, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v1 = sub_1B4D18D5C();
  MEMORY[0x1B8C7C620](v1);

  MEMORY[0x1B8C7C620](0xD000000000000010, 0x80000001B4D66D40);
  v2 = [*(v0 + *(type metadata accessor for WorkoutState(0) + 24)) description];
  v3 = sub_1B4D1818C();
  v5 = v4;

  MEMORY[0x1B8C7C620](v3, v5);

  MEMORY[0x1B8C7C620](0x737574617473202CLL, 0xEA0000000000203ALL);
  type metadata accessor for HKWorkoutSessionState(0);
  sub_1B4D18A8C();
  MEMORY[0x1B8C7C620](0x203A6C616F67202CLL, 0xE800000000000000);
  sub_1B4D179EC();
  sub_1B4D18A8C();
  MEMORY[0x1B8C7C620](0x3A7472617473202CLL, 0xE900000000000020);
  sub_1B4D1777C();
  sub_1B4CD122C(&qword_1EB8A6B58, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v6 = sub_1B4D18D5C();
  MEMORY[0x1B8C7C620](v6);

  MEMORY[0x1B8C7C620](0x203A646E65202CLL, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v7 = sub_1B4D187FC();
  MEMORY[0x1B8C7C620](v7);

  MEMORY[0x1B8C7C620](0x697461727564202CLL, 0xEC000000203A6E6FLL);
  sub_1B4D185EC();
  MEMORY[0x1B8C7C620](0x697461636F6C202CLL, 0xEC000000203A6E6FLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE188, &qword_1B4D467A0);
  v8 = sub_1B4D187FC();
  MEMORY[0x1B8C7C620](v8);

  MEMORY[0x1B8C7C620](0xD000000000000015, 0x80000001B4D66D60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB8, &unk_1B4D1F0C0);
  v9 = sub_1B4D187FC();
  MEMORY[0x1B8C7C620](v9);

  MEMORY[0x1B8C7C620](0x6E6174736964202CLL, 0xEC000000203A6563);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v10 = sub_1B4D187FC();
  MEMORY[0x1B8C7C620](v10);

  MEMORY[0x1B8C7C620](0x203A65636170202CLL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v11 = sub_1B4D187FC();
  MEMORY[0x1B8C7C620](v11);

  MEMORY[0x1B8C7C620](0x676172657661202CLL, 0xEF203A6563615065);
  v12 = sub_1B4D187FC();
  MEMORY[0x1B8C7C620](v12);

  MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D66D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v13 = sub_1B4D187FC();
  MEMORY[0x1B8C7C620](v13);

  MEMORY[0x1B8C7C620](0x527472616568202CLL, 0xED0000203A657461);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  v14 = sub_1B4D187FC();
  MEMORY[0x1B8C7C620](v14);

  MEMORY[0x1B8C7C620](0xD000000000000014, 0x80000001B4D66DA0);
  v15 = sub_1B4D187FC();
  MEMORY[0x1B8C7C620](v15);

  MEMORY[0x1B8C7C620](0x73746E657665202CLL, 0xEA0000000000203ALL);
  v16 = WorkoutState.events.getter();
  v17 = sub_1B498AFB8(0, &qword_1EB8A7928, 0x1E696C5B8);
  v18 = MEMORY[0x1B8C7C800](v16, v17);
  v20 = v19;

  MEMORY[0x1B8C7C620](v18, v20);

  MEMORY[0x1B8C7C620](0xD000000000000010, 0x80000001B4D66DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC80, &qword_1B4D38648);
  v21 = sub_1B4D187FC();
  MEMORY[0x1B8C7C620](v21);

  return 0;
}

void sub_1B4CCC470(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = a1[5];
  v8 = *a3;
  v9 = a1[4];

  v10 = sub_1B49EA2CC(v9);
  v12 = v8[2];
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
  if (v8[3] < v15)
  {
    sub_1B4988430(v15, v6 & 1);
    v10 = sub_1B49EA2CC(v9);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1B498AFB8(0, &qword_1EB8A7938, 0x1E696C3D0);
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
  sub_1B498AB9C();
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
  *(v21[6] + 8 * v10) = v9;
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
    sub_1B498AFB8(0, &qword_1EB8A7938, 0x1E696C3D0);
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
    v24 = 1;
    while (v24 < a1[2])
    {
      v7 = *v6;
      v25 = *a3;
      v9 = *(v6 - 1);

      v26 = sub_1B49EA2CC(v9);
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
        sub_1B4988430(v30, 1);
        v26 = sub_1B49EA2CC(v9);
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
      *(v32[6] + 8 * v26) = v9;
      *(v32[7] + 8 * v26) = v7;
      v33 = v32[2];
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v24;
      v32[2] = v34;
      v6 += 2;
      if (v4 == v24)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t type metadata accessor for WorkoutState(uint64_t a1)
{
  result = qword_1EDC37670;
  if (!qword_1EDC37670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s19FitnessIntelligence12WorkoutStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v330 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v328 = *(v330 - 8);
  MEMORY[0x1EEE9AC00](v330);
  v5 = &v308[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v329 = &v308[-v7];
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE1A8, &qword_1B4D46A78);
  MEMORY[0x1EEE9AC00](v327);
  v9 = &v308[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v325 = *(v10 - 8);
  v326 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v324 = &v308[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v322 = &v308[-v13];
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7878, &unk_1B4D2D8B0);
  MEMORY[0x1EEE9AC00](v321);
  v323 = &v308[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v333 = *(v15 - 8);
  v334 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v316 = &v308[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v332 = &v308[-v18];
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F60, &qword_1B4D2C420);
  MEMORY[0x1EEE9AC00](v331);
  v336 = &v308[-v19];
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v344 = *(v348 - 8);
  MEMORY[0x1EEE9AC00](v348);
  v338 = &v308[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v318 = &v308[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v335 = &v308[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v337 = &v308[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v341 = &v308[-v28];
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E10, &unk_1B4D46A80);
  MEMORY[0x1EEE9AC00](v343);
  v317 = &v308[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v339 = &v308[-v31];
  MEMORY[0x1EEE9AC00](v32);
  v342 = &v308[-v33];
  MEMORY[0x1EEE9AC00](v34);
  v347 = &v308[-v35];
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v349 = *(v351 - 8);
  MEMORY[0x1EEE9AC00](v351);
  v340 = &v308[-v36];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v346 = &v308[-v38];
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F68, &unk_1B4D1C550);
  MEMORY[0x1EEE9AC00](v345);
  v353 = &v308[-v39];
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v359 = *(v364 - 8);
  MEMORY[0x1EEE9AC00](v364);
  v350 = &v308[-v40];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v352 = &v308[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v43);
  v355 = &v308[-v44];
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E18, &unk_1B4D2C410);
  MEMORY[0x1EEE9AC00](v358);
  v356 = &v308[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v46);
  v363 = &v308[-v47];
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v367 = *(v362 - 8);
  MEMORY[0x1EEE9AC00](v362);
  v354 = &v308[-v48];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v319 = &v308[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v51);
  v357 = &v308[-v52];
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F50, &qword_1B4D425A0);
  MEMORY[0x1EEE9AC00](v361);
  v320 = &v308[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v54);
  v365 = &v308[-v55];
  v56 = type metadata accessor for WeatherCondition(0);
  v369 = *(v56 - 8);
  v370 = v56;
  MEMORY[0x1EEE9AC00](v56);
  v360 = &v308[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB8, &unk_1B4D1F0C0);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v366 = &v308[-v59];
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE1B0, &unk_1B4D46A90);
  MEMORY[0x1EEE9AC00](v368);
  v371 = &v308[-v60];
  v373 = sub_1B4D1777C();
  v374 = *(v373 - 8);
  MEMORY[0x1EEE9AC00](v373);
  v372 = &v308[-((v61 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v64 = &v308[-((v63 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v308[-v66];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9FD0, &qword_1B4D2CC58);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v308[-((v69 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v308[-v72];
  if ((sub_1B4D177AC() & 1) == 0)
  {
    goto LABEL_27;
  }

  v74 = type metadata accessor for WorkoutState(0);
  if (*(a1 + *(v74 + 20)) != *(a2 + *(v74 + 20)))
  {
    goto LABEL_27;
  }

  v311 = v9;
  v312 = v5;
  v314 = a2;
  v315 = v74;
  v75 = *(v74 + 24);
  v313 = a1;
  v76 = *(a1 + v75);
  v77 = *(a2 + v75);
  objc_opt_self();
  v78 = swift_dynamicCastObjCClass();
  if (v78 && (v79 = v78, objc_opt_self(), (v80 = swift_dynamicCastObjCClass()) != 0))
  {
    v81 = v80;
    v310 = v76;
    v82 = v77;
    [v79 coordinate];
    v84 = v83;
    [v81 coordinate];
    if (v84 != v85)
    {

      goto LABEL_27;
    }

    [v79 coordinate];
    v87 = v86;
    [v81 coordinate];
    v89 = v88;

    if (v87 != v89)
    {
      goto LABEL_27;
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if ((sub_1B4D187AC() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v90 = v314;
  v91 = v315;
  v92 = v313;
  if ((MEMORY[0x1B8C7BDC0](v313 + v315[7], v314 + v315[7]) & 1) == 0 || (sub_1B4A0C1E8(*(v92 + v91[8]), *(v90 + v91[8])) & 1) == 0 || (sub_1B4D1774C() & 1) == 0)
  {
    goto LABEL_27;
  }

  v93 = v91[10];
  v94 = *(v68 + 48);
  sub_1B4974FBC(v92 + v93, v73, &qword_1EB8A6790, &qword_1B4D1BBC0);
  v310 = v94;
  sub_1B4974FBC(v90 + v93, &v94[v73], &qword_1EB8A6790, &qword_1B4D1BBC0);
  v95 = *(v374 + 6);
  v96 = v373;
  if (v95(v73, 1, v373) == 1)
  {
    if (v95(&v310[v73], 1, v96) == 1)
    {
      sub_1B4975024(v73, &qword_1EB8A6790, &qword_1B4D1BBC0);
      goto LABEL_20;
    }

LABEL_18:
    v97 = &qword_1EB8A9FD0;
    v98 = &qword_1B4D2CC58;
    v99 = v73;
LABEL_26:
    sub_1B4975024(v99, v97, v98);
    goto LABEL_27;
  }

  sub_1B4974FBC(v73, v67, &qword_1EB8A6790, &qword_1B4D1BBC0);
  if (v95(&v310[v73], 1, v96) == 1)
  {
    (*(v374 + 1))(v67, v96);
    goto LABEL_18;
  }

  (*(v374 + 4))(v372, &v310[v73], v96);
  sub_1B4CD122C(&qword_1EB8A9FD8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v309 = sub_1B4D1816C();
  v310 = v95;
  v100 = *(v374 + 1);
  v100(v372, v96);
  v100(v67, v96);
  v95 = v310;
  sub_1B4975024(v73, &qword_1EB8A6790, &qword_1B4D1BBC0);
  if ((v309 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  v101 = v315[11];
  v102 = *(v68 + 48);
  sub_1B4974FBC(v313 + v101, v70, &qword_1EB8A6790, &qword_1B4D1BBC0);
  sub_1B4974FBC(v314 + v101, v70 + v102, &qword_1EB8A6790, &qword_1B4D1BBC0);
  if (v95(v70, 1, v96) == 1)
  {
    if (v95(v70 + v102, 1, v96) == 1)
    {
      sub_1B4975024(v70, &qword_1EB8A6790, &qword_1B4D1BBC0);
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  sub_1B4974FBC(v70, v64, &qword_1EB8A6790, &qword_1B4D1BBC0);
  if (v95(v70 + v102, 1, v96) == 1)
  {
    (*(v374 + 1))(v64, v96);
LABEL_25:
    v97 = &qword_1EB8A9FD0;
    v98 = &qword_1B4D2CC58;
    v99 = v70;
    goto LABEL_26;
  }

  v105 = v374;
  v106 = v70 + v102;
  v107 = v372;
  (*(v374 + 4))(v372, v106, v96);
  sub_1B4CD122C(&qword_1EB8A9FD8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v108 = v96;
  v109 = sub_1B4D1816C();
  v110 = v105[1];
  v110(v107, v108);
  v110(v64, v108);
  sub_1B4975024(v70, &qword_1EB8A6790, &qword_1B4D1BBC0);
  if ((v109 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_30:
  v112 = v314;
  v111 = v315;
  v113 = v313;
  if (*(v313 + v315[12]) != *(v314 + v315[12]))
  {
    goto LABEL_27;
  }

  v114 = v315[13];
  v115 = *(v313 + v114);
  v116 = *(v314 + v114);
  if (v115)
  {
    if (!v116)
    {
      goto LABEL_27;
    }

    v117 = v115;
    v118 = v116;
    v119 = v117;
    [v119 coordinate];
    v121 = v120;
    [v118 coordinate];
    if (v121 != v122)
    {

      goto LABEL_27;
    }

    [v119 coordinate];
    v124 = v123;
    [v118 coordinate];
    v126 = v125;

    v111 = v315;
    if (v124 != v126)
    {
      goto LABEL_27;
    }
  }

  else if (v116)
  {
    goto LABEL_27;
  }

  v127 = v111[14];
  v128 = *(v368 + 48);
  v129 = v371;
  sub_1B4974FBC(v113 + v127, v371, &qword_1EB8A6CB8, &unk_1B4D1F0C0);
  v130 = v112 + v127;
  v131 = v129;
  sub_1B4974FBC(v130, &v129[v128], &qword_1EB8A6CB8, &unk_1B4D1F0C0);
  v132 = v370;
  v133 = *(v369 + 48);
  if (v133(v129, 1, v370) == 1)
  {
    if (v133(&v129[v128], 1, v132) == 1)
    {
      sub_1B4975024(v129, &qword_1EB8A6CB8, &unk_1B4D1F0C0);
      v131 = v365;
      goto LABEL_45;
    }

LABEL_42:
    v97 = &qword_1EB8AE1B0;
    v98 = &unk_1B4D46A90;
LABEL_51:
    v99 = v131;
    goto LABEL_26;
  }

  v134 = v366;
  sub_1B4974FBC(v129, v366, &qword_1EB8A6CB8, &unk_1B4D1F0C0);
  if (v133(&v129[v128], 1, v132) == 1)
  {
    sub_1B4CD11CC(v134, type metadata accessor for WeatherCondition);
    goto LABEL_42;
  }

  v135 = &v129[v128];
  v136 = v360;
  sub_1B4CCF7C0(v135, v360, type metadata accessor for WeatherCondition);
  v137 = _s19FitnessIntelligence16WeatherConditionV2eeoiySbAC_ACtFZ_0(v134, v136);
  sub_1B4CD11CC(v136, type metadata accessor for WeatherCondition);
  sub_1B4CD11CC(v134, type metadata accessor for WeatherCondition);
  sub_1B4975024(v129, &qword_1EB8A6CB8, &unk_1B4D1F0C0);
  v131 = v365;
  if (!v137)
  {
    goto LABEL_27;
  }

LABEL_45:
  v138 = v315[15];
  v139 = *(v361 + 48);
  sub_1B4974FBC(v113 + v138, v131, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(v314 + v138, v131 + v139, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v141 = v367 + 48;
  v140 = *(v367 + 48);
  v142 = v362;
  v143 = v140(v131, 1, v362);
  v374 = v140;
  v373 = v141;
  if (v143 == 1)
  {
    if (v140(v131 + v139, 1, v142) == 1)
    {
      sub_1B4975024(v131, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  v144 = v357;
  sub_1B4974FBC(v131, v357, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v140(v131 + v139, 1, v142) == 1)
  {
    (*(v367 + 8))(v144, v142);
LABEL_50:
    v97 = &qword_1EB8A6F50;
    v98 = &qword_1B4D425A0;
    goto LABEL_51;
  }

  v145 = v367;
  v146 = v354;
  (*(v367 + 32))(v354, v131 + v139, v142);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
  v147 = sub_1B4D1816C();
  v148 = *(v145 + 8);
  v148(v146, v142);
  v148(v144, v142);
  sub_1B4975024(v131, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v147 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_53:
  v149 = v315[16];
  v150 = *(v358 + 48);
  v151 = v363;
  sub_1B4974FBC(v313 + v149, v363, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(v314 + v149, &v151[v150], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v152 = *(v359 + 48);
  if (v152(v151, 1, v364) == 1)
  {
    if (v152(&v363[v150], 1, v364) == 1)
    {
      sub_1B4975024(v363, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
      goto LABEL_60;
    }

    goto LABEL_58;
  }

  v153 = v363;
  sub_1B4974FBC(v363, v355, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if (v152(&v153[v150], 1, v364) == 1)
  {
    (*(v359 + 8))(v355, v364);
LABEL_58:
    v97 = &qword_1EB8A9E18;
    v98 = &unk_1B4D2C410;
    v99 = v363;
    goto LABEL_26;
  }

  v154 = v359;
  v155 = v363;
  v156 = v364;
  v157 = v350;
  (*(v359 + 32))(v350, &v363[v150], v364);
  sub_1B49B0578(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968090]);
  v158 = v355;
  v159 = sub_1B4D1816C();
  v160 = *(v154 + 8);
  v160(v157, v156);
  v160(v158, v156);
  sub_1B4975024(v155, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((v159 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_60:
  v161 = v315[17];
  v162 = *(v358 + 48);
  v163 = v356;
  sub_1B4974FBC(v313 + v161, v356, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(v314 + v161, &v163[v162], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if (v152(v163, 1, v364) == 1)
  {
    if (v152(&v356[v162], 1, v364) == 1)
    {
      sub_1B4975024(v356, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  v164 = v356;
  sub_1B4974FBC(v356, v352, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if (v152(&v164[v162], 1, v364) == 1)
  {
    (*(v359 + 8))(v352, v364);
LABEL_65:
    v97 = &qword_1EB8A9E18;
    v98 = &unk_1B4D2C410;
    v99 = v356;
    goto LABEL_26;
  }

  v165 = v359;
  v166 = v356;
  v167 = &v356[v162];
  v168 = v350;
  v169 = v364;
  (*(v359 + 32))(v350, v167, v364);
  sub_1B49B0578(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968090]);
  v170 = v352;
  v171 = sub_1B4D1816C();
  v172 = *(v165 + 8);
  v172(v168, v169);
  v172(v170, v169);
  sub_1B4975024(v166, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((v171 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_67:
  v173 = v315[18];
  v174 = *(v345 + 48);
  v175 = v353;
  sub_1B4974FBC(v313 + v173, v353, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4974FBC(v314 + v173, &v175[v174], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v176 = *(v349 + 48);
  if (v176(v175, 1, v351) == 1)
  {
    if (v176(&v353[v174], 1, v351) == 1)
    {
      sub_1B4975024(v353, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      goto LABEL_74;
    }

    goto LABEL_72;
  }

  v177 = v353;
  sub_1B4974FBC(v353, v346, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if (v176(&v177[v174], 1, v351) == 1)
  {
    (*(v349 + 8))(v346, v351);
LABEL_72:
    v97 = &qword_1EB8A6F68;
    v98 = &unk_1B4D1C550;
    v99 = v353;
    goto LABEL_26;
  }

  v178 = v349;
  v179 = v353;
  v180 = &v353[v174];
  v181 = v340;
  v182 = v351;
  (*(v349 + 32))(v340, v180, v351);
  sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968090]);
  v183 = v346;
  v184 = sub_1B4D1816C();
  v185 = *(v178 + 8);
  v185(v181, v182);
  v185(v183, v182);
  sub_1B4975024(v179, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if ((v184 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_74:
  v186 = v315[19];
  v187 = *(v343 + 48);
  v188 = v347;
  sub_1B4974FBC(v313 + v186, v347, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v314 + v186, &v188[v187], &qword_1EB8A6CC8, &unk_1B4D464B0);
  v189 = *(v344 + 48);
  if (v189(v188, 1, v348) == 1)
  {
    if (v189(&v347[v187], 1, v348) == 1)
    {
      sub_1B4975024(v347, &qword_1EB8A6CC8, &unk_1B4D464B0);
      goto LABEL_81;
    }

    goto LABEL_79;
  }

  v190 = v347;
  sub_1B4974FBC(v347, v341, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v189(&v190[v187], 1, v348) == 1)
  {
    (*(v344 + 8))(v341, v348);
LABEL_79:
    v97 = &qword_1EB8A9E10;
    v98 = &unk_1B4D46A80;
    v99 = v347;
    goto LABEL_26;
  }

  v191 = v344;
  v192 = v347;
  v193 = v348;
  v194 = v338;
  (*(v344 + 32))(v338, &v347[v187], v348);
  sub_1B49B0578(&qword_1EB8A8040, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968090]);
  v195 = v341;
  v196 = sub_1B4D1816C();
  v197 = *(v191 + 8);
  v197(v194, v193);
  v197(v195, v193);
  sub_1B4975024(v192, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if ((v196 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_81:
  v198 = v315[20];
  v199 = v342;
  v200 = *(v343 + 48);
  sub_1B4974FBC(v313 + v198, v342, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v314 + v198, &v199[v200], &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v189(v199, 1, v348) == 1)
  {
    if (v189(&v342[v200], 1, v348) == 1)
    {
      sub_1B4975024(v342, &qword_1EB8A6CC8, &unk_1B4D464B0);
      goto LABEL_88;
    }

    goto LABEL_86;
  }

  v201 = v342;
  sub_1B4974FBC(v342, v337, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v189(&v201[v200], 1, v348) == 1)
  {
    (*(v344 + 8))(v337, v348);
LABEL_86:
    v97 = &qword_1EB8A9E10;
    v98 = &unk_1B4D46A80;
    v99 = v342;
    goto LABEL_26;
  }

  v202 = v344;
  v203 = v342;
  v204 = v338;
  v205 = v348;
  (*(v344 + 32))(v338, &v342[v200], v348);
  sub_1B49B0578(&qword_1EB8A8040, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968090]);
  v206 = v337;
  v207 = sub_1B4D1816C();
  v208 = *(v202 + 8);
  v208(v204, v205);
  v208(v206, v205);
  sub_1B4975024(v203, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if ((v207 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_88:
  v209 = v315[21];
  v210 = *(v343 + 48);
  v211 = v339;
  sub_1B4974FBC(v313 + v209, v339, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v314 + v209, &v211[v210], &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v189(v211, 1, v348) == 1)
  {
    if (v189(&v339[v210], 1, v348) == 1)
    {
      sub_1B4975024(v339, &qword_1EB8A6CC8, &unk_1B4D464B0);
      goto LABEL_95;
    }

    goto LABEL_93;
  }

  v212 = v339;
  sub_1B4974FBC(v339, v335, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v189(&v212[v210], 1, v348) == 1)
  {
    (*(v344 + 8))(v335, v348);
LABEL_93:
    v97 = &qword_1EB8A9E10;
    v98 = &unk_1B4D46A80;
    v99 = v339;
    goto LABEL_26;
  }

  v213 = v344;
  v215 = v338;
  v214 = v339;
  v216 = v348;
  (*(v344 + 32))(v338, &v339[v210], v348);
  sub_1B49B0578(&qword_1EB8A8040, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968090]);
  v217 = v335;
  v218 = sub_1B4D1816C();
  v219 = *(v213 + 8);
  v219(v215, v216);
  v219(v217, v216);
  sub_1B4975024(v214, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if ((v218 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_95:
  v220 = v315[22];
  v221 = *(v331 + 48);
  v222 = v336;
  sub_1B4974FBC(v313 + v220, v336, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4974FBC(v314 + v220, &v222[v221], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  v223 = *(v333 + 48);
  if (v223(v222, 1, v334) == 1)
  {
    if (v223(&v336[v221], 1, v334) == 1)
    {
      sub_1B4975024(v336, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      goto LABEL_102;
    }

    goto LABEL_100;
  }

  v224 = v336;
  sub_1B4974FBC(v336, v332, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v223(&v224[v221], 1, v334) == 1)
  {
    (*(v333 + 8))(v332, v334);
LABEL_100:
    v97 = &qword_1EB8A6F60;
    v98 = &qword_1B4D2C420;
    v99 = v336;
    goto LABEL_26;
  }

  v225 = v333;
  v226 = v336;
  v227 = &v336[v221];
  v228 = v316;
  v229 = v334;
  (*(v333 + 32))(v316, v227, v334);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
  v230 = v332;
  v231 = sub_1B4D1816C();
  v232 = *(v225 + 8);
  v232(v228, v229);
  v232(v230, v229);
  sub_1B4975024(v226, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((v231 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_102:
  v233 = v315[23];
  v234 = *(v343 + 48);
  v235 = v317;
  sub_1B4974FBC(v313 + v233, v317, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(v314 + v233, &v235[v234], &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v189(v235, 1, v348) == 1)
  {
    if (v189(&v317[v234], 1, v348) == 1)
    {
      sub_1B4975024(v317, &qword_1EB8A6CC8, &unk_1B4D464B0);
      goto LABEL_109;
    }

    goto LABEL_107;
  }

  v236 = v317;
  sub_1B4974FBC(v317, v318, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v189(&v236[v234], 1, v348) == 1)
  {
    (*(v344 + 8))(v318, v348);
LABEL_107:
    v97 = &qword_1EB8A9E10;
    v98 = &unk_1B4D46A80;
    v99 = v317;
    goto LABEL_26;
  }

  v237 = v344;
  v238 = v317;
  v239 = &v317[v234];
  v240 = v338;
  v241 = v348;
  (*(v344 + 32))(v338, v239, v348);
  sub_1B49B0578(&qword_1EB8A8040, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E6968090]);
  v242 = v318;
  v243 = sub_1B4D1816C();
  v244 = *(v237 + 8);
  v244(v240, v241);
  v244(v242, v241);
  sub_1B4975024(v238, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if ((v243 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_109:
  v245 = v315[24];
  v246 = *(v313 + v245);
  v247 = *(v314 + v245);
  if (v246)
  {
    if (!v247 || (sub_1B4A2495C(v246, v247) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v247)
  {
    goto LABEL_27;
  }

  v248 = v315[25];
  v249 = *(v321 + 48);
  v250 = v323;
  sub_1B4974FBC(v313 + v248, v323, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B4974FBC(v314 + v248, &v250[v249], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v251 = *(v325 + 48);
  if (v251(v250, 1, v326) == 1)
  {
    if (v251(&v323[v249], 1, v326) == 1)
    {
      sub_1B4975024(v323, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
      goto LABEL_121;
    }

    goto LABEL_119;
  }

  v252 = v323;
  sub_1B4974FBC(v323, v322, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  if (v251(&v252[v249], 1, v326) == 1)
  {
    (*(v325 + 8))(v322, v326);
LABEL_119:
    v97 = &qword_1EB8A7878;
    v98 = &unk_1B4D2D8B0;
    v99 = v323;
    goto LABEL_26;
  }

  v254 = v324;
  v253 = v325;
  v255 = v323;
  v256 = &v323[v249];
  v257 = v326;
  (*(v325 + 32))(v324, v256, v326);
  sub_1B49B0578(&qword_1EB8A7880, &qword_1EB8A6CE0, &unk_1B4D1EF00, MEMORY[0x1E6968090]);
  v258 = v322;
  v259 = sub_1B4D1816C();
  v260 = *(v253 + 8);
  v260(v254, v257);
  v260(v258, v257);
  sub_1B4975024(v255, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  if ((v259 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_121:
  v261 = v315[26];
  v262 = *(v361 + 48);
  v263 = v320;
  sub_1B4974FBC(v313 + v261, v320, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(v314 + v261, &v263[v262], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v374(v263, 1, v362) == 1)
  {
    if (v374(&v320[v262], 1, v362) == 1)
    {
      sub_1B4975024(v320, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      goto LABEL_128;
    }

    goto LABEL_126;
  }

  v264 = v320;
  sub_1B4974FBC(v320, v319, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v374(&v264[v262], 1, v362) == 1)
  {
    (*(v367 + 8))(v319, v362);
LABEL_126:
    v97 = &qword_1EB8A6F50;
    v98 = &qword_1B4D425A0;
    v99 = v320;
    goto LABEL_26;
  }

  v265 = v367;
  v266 = v320;
  v267 = &v320[v262];
  v268 = v354;
  v269 = v362;
  (*(v367 + 32))(v354, v267, v362);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
  v270 = v319;
  v271 = sub_1B4D1816C();
  v272 = *(v265 + 8);
  v272(v268, v269);
  v272(v270, v269);
  sub_1B4975024(v266, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v271 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_128:
  sub_1B4A0C530(*(v313 + v315[27]), *(v314 + v315[27]));
  if ((v273 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1B4A24A64(*(v313 + v315[28]), *(v314 + v315[28]));
  if ((v274 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1B4A24EFC(*(v313 + v315[29]), *(v314 + v315[29]));
  if ((v275 & 1) == 0 || (sub_1B4A0C6D4(*(v313 + v315[30]), *(v314 + v315[30])) & 1) == 0)
  {
    goto LABEL_27;
  }

  v276 = v315[31];
  v277 = v313 + v276;
  v278 = *(v313 + v276 + 48);
  v279 = *(v313 + v276 + 16);
  v414 = *(v313 + v276 + 32);
  v415 = v278;
  v280 = *(v313 + v276 + 48);
  v416 = *(v313 + v276 + 64);
  v281 = *(v313 + v276 + 16);
  v413[0] = *(v313 + v276);
  v413[1] = v281;
  v282 = v314 + v276;
  v283 = *(v282 + 16);
  v418[0] = *v282;
  v418[1] = v283;
  v284 = *(v282 + 48);
  v421 = *(v282 + 64);
  v285 = *(v282 + 16);
  v286 = *(v282 + 48);
  v419 = *(v282 + 32);
  v420 = v286;
  v287 = *(v277 + 64);
  v410 = v280;
  v411 = v287;
  v417 = *(v277 + 80);
  v422 = *(v282 + 80);
  v288 = v413[0];
  v412 = *(v277 + 80);
  v409 = v414;
  v408 = v279;
  v289 = v418[0];
  v290 = *(v282 + 64);
  v407 = *(v282 + 80);
  v406 = v290;
  v405 = v284;
  v403 = v285;
  v404 = v419;
  if (*(&v413[0] + 1) != 1)
  {
    v391 = v413[0];
    v293 = *(v277 + 64);
    v394 = *(v277 + 48);
    v395 = v293;
    v396 = *(v277 + 80);
    v294 = *(v277 + 32);
    v392 = *(v277 + 16);
    v393 = v294;
    v387 = v294;
    v388 = v394;
    v389 = v293;
    v390 = v396;
    v385 = v413[0];
    v386 = v392;
    if (*(&v418[0] + 1) != 1)
    {
      v295 = *(v282 + 64);
      v382 = *(v282 + 48);
      v383 = v295;
      v384 = *(v282 + 80);
      v296 = *(v282 + 32);
      v380 = *(v282 + 16);
      v381 = v296;
      v379 = v418[0];
      v297 = _s19FitnessIntelligence19WorkoutMediaDetailsV2eeoiySbAC_ACtFZ_0(&v385, &v379);
      v375[2] = v381;
      v375[3] = v382;
      v375[4] = v383;
      v376 = v384;
      v375[0] = v379;
      v375[1] = v380;
      sub_1B4974FBC(v413, v377, &qword_1EB8ABC80, &qword_1B4D38648);
      sub_1B4974FBC(v418, v377, &qword_1EB8ABC80, &qword_1B4D38648);
      sub_1B4974FBC(&v391, v377, &qword_1EB8ABC80, &qword_1B4D38648);
      sub_1B4A22568(v375);
      v377[2] = v387;
      v377[3] = v388;
      v377[4] = v389;
      v378 = v390;
      v377[0] = v385;
      v377[1] = v386;
      sub_1B4A22568(v377);
      v379 = v288;
      v382 = v410;
      v383 = v411;
      v384 = v412;
      v380 = v408;
      v381 = v409;
      sub_1B4975024(&v379, &qword_1EB8ABC80, &qword_1B4D38648);
      if (!v297)
      {
        goto LABEL_27;
      }

      goto LABEL_140;
    }

    v381 = v393;
    v382 = v394;
    v383 = v395;
    v384 = v396;
    v379 = v391;
    v380 = v392;
    sub_1B4974FBC(v413, v377, &qword_1EB8ABC80, &qword_1B4D38648);
    sub_1B4974FBC(v418, v377, &qword_1EB8ABC80, &qword_1B4D38648);
    sub_1B4974FBC(&v391, v377, &qword_1EB8ABC80, &qword_1B4D38648);
    sub_1B4A22568(&v379);
    goto LABEL_138;
  }

  if (*(&v418[0] + 1) != 1)
  {
    sub_1B4974FBC(v413, &v391, &qword_1EB8ABC80, &qword_1B4D38648);
    sub_1B4974FBC(v418, &v391, &qword_1EB8ABC80, &qword_1B4D38648);
LABEL_138:
    v391 = v288;
    v394 = v410;
    v395 = v411;
    v396 = v412;
    v392 = v408;
    v393 = v409;
    v397 = v289;
    v398 = v403;
    v402 = v407;
    v401 = v406;
    v400 = v405;
    v399 = v404;
    v97 = &unk_1EB8AE1B8;
    v98 = &unk_1B4D46AA0;
    v99 = &v391;
    goto LABEL_26;
  }

  *&v391 = *&v413[0];
  *(&v391 + 1) = 1;
  v291 = *(v277 + 64);
  v394 = *(v277 + 48);
  v395 = v291;
  v396 = *(v277 + 80);
  v292 = *(v277 + 32);
  v392 = *(v277 + 16);
  v393 = v292;
  sub_1B4974FBC(v413, &v385, &qword_1EB8ABC80, &qword_1B4D38648);
  sub_1B4974FBC(v418, &v385, &qword_1EB8ABC80, &qword_1B4D38648);
  sub_1B4975024(&v391, &qword_1EB8ABC80, &qword_1B4D38648);
LABEL_140:
  v298 = v315[32];
  v299 = *(v327 + 48);
  v300 = v311;
  sub_1B4974FBC(v313 + v298, v311, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  sub_1B4974FBC(v314 + v298, v300 + v299, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  v301 = *(v328 + 48);
  if (v301(v300, 1, v330) == 1)
  {
    if (v301(v311 + v299, 1, v330) == 1)
    {
      sub_1B4975024(v311, &qword_1EB8A6C98, &unk_1B4D2F3F0);
LABEL_147:
      v103 = *(v313 + v315[33]) ^ *(v314 + v315[33]) ^ 1;
      return v103 & 1;
    }

    goto LABEL_145;
  }

  v302 = v311;
  sub_1B4974FBC(v311, v329, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  if (v301((v302 + v299), 1, v330) == 1)
  {
    sub_1B4CD11CC(v329, type metadata accessor for HKActivitySummaryRepresentable);
LABEL_145:
    v97 = &qword_1EB8AE1A8;
    v98 = &qword_1B4D46A78;
    v99 = v311;
    goto LABEL_26;
  }

  v303 = v311;
  v304 = v311 + v299;
  v305 = v312;
  sub_1B4CCF7C0(v304, v312, type metadata accessor for HKActivitySummaryRepresentable);
  v306 = v329;
  v307 = _s19FitnessIntelligence30HKActivitySummaryRepresentableV2eeoiySbAC_ACtFZ_0(v329, v305);
  sub_1B4CD11CC(v305, type metadata accessor for HKActivitySummaryRepresentable);
  sub_1B4CD11CC(v306, type metadata accessor for HKActivitySummaryRepresentable);
  sub_1B4975024(v303, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  if (v307)
  {
    goto LABEL_147;
  }

LABEL_27:
  v103 = 0;
  return v103 & 1;
}

uint64_t sub_1B4CCF7C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B4CCF828()
{
  result = qword_1EB8AE030;
  if (!qword_1EB8AE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE030);
  }

  return result;
}

unint64_t sub_1B4CCF87C()
{
  result = qword_1EB8AE0A0;
  if (!qword_1EB8AE0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AE098, &qword_1B4D46768);
    sub_1B4CD122C(&qword_1EB8AE0A8, type metadata accessor for WorkoutMetadata, &protocol conformance descriptor for WorkoutMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE0A0);
  }

  return result;
}

unint64_t sub_1B4CCF938()
{
  result = qword_1EB8AE0B8;
  if (!qword_1EB8AE0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AE0B0, &unk_1B4D46770);
    sub_1B49B0578(&qword_1EB8AE0C0, &qword_1EB8A6D08, &qword_1B4D1BC90, &protocol conformance descriptor for CodableBridging<A>);
    sub_1B4CCFA24(&qword_1EB8AE0C8, &qword_1EB8AE0D8, &protocol conformance descriptor for CodableBridging<A>, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE0B8);
  }

  return result;
}

uint64_t sub_1B4CCFA24(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AE0D0, &unk_1B4D46780);
    sub_1B49B0578(a2, &qword_1EB8AE0E0, &qword_1B4D47250, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4CCFABC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AE0E8, &qword_1B4D46790);
    sub_1B4CD122C(a2, type metadata accessor for LocationCoordinate, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4CCFB58(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AE040, &qword_1B4D46740);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4CCFBD0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AE068, &qword_1B4D46750);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4CCFC40(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AE078, &qword_1B4D46758);
    sub_1B49B0578(a2, &qword_1EB8AE090, &qword_1B4D46760, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4CCFCD8()
{
  result = qword_1EB8AE140;
  if (!qword_1EB8AE140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AE098, &qword_1B4D46768);
    sub_1B4CD122C(&qword_1EB8AE148, type metadata accessor for WorkoutMetadata, &protocol conformance descriptor for WorkoutMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE140);
  }

  return result;
}

unint64_t sub_1B4CCFD94()
{
  result = qword_1EB8AE150;
  if (!qword_1EB8AE150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AE0B0, &unk_1B4D46770);
    sub_1B49B0578(&qword_1EB8AE158, &qword_1EB8A6D08, &qword_1B4D1BC90, &protocol conformance descriptor for CodableBridging<A>);
    sub_1B4CCFA24(&qword_1EB8AE160, &qword_1EB8AE168, &protocol conformance descriptor for CodableBridging<A>, MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE150);
  }

  return result;
}

void sub_1B4CCFEA8(uint64_t a1)
{
  sub_1B4D177CC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKWorkoutSessionState(319);
    if (v2 <= 0x3F)
    {
      sub_1B49B13FC(319);
      if (v3 <= 0x3F)
      {
        sub_1B4D179EC();
        if (v4 <= 0x3F)
        {
          sub_1B4CD05D8(319, &qword_1EDC36E28, &type metadata for WorkoutVoiceAlert, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            sub_1B4D1777C();
            if (v6 <= 0x3F)
            {
              sub_1B4CD03E0(319, &qword_1EDC37818, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1B4CD0444(319, qword_1EDC37450, &qword_1EB8AE050, &qword_1B4D46748, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1B4CD03E0(319, &qword_1EDC372A0, type metadata accessor for WeatherCondition, MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    sub_1B4CD0444(319, &qword_1EDC3CB30, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
                    {
                      sub_1B4CD0444(319, &qword_1EDC37888, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E69E6720]);
                      if (v11 <= 0x3F)
                      {
                        sub_1B4CD0444(319, &qword_1EDC3CB48, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E69E6720]);
                        if (v12 <= 0x3F)
                        {
                          sub_1B4CD0444(319, &qword_1EDC37868, &qword_1EB8A6CD0, &unk_1B4D1F270, MEMORY[0x1E69E6720]);
                          if (v13 <= 0x3F)
                          {
                            sub_1B4CD0444(319, &qword_1EDC3CB20, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E69E6720]);
                            if (v14 <= 0x3F)
                            {
                              sub_1B4CD0444(319, &qword_1EDC36E58, &qword_1EB8AE068, &qword_1B4D46750, MEMORY[0x1E69E6720]);
                              if (v15 <= 0x3F)
                              {
                                sub_1B4CD0444(319, &qword_1EDC37880, &qword_1EB8A6CE0, &unk_1B4D1EF00, MEMORY[0x1E69E6720]);
                                if (v16 <= 0x3F)
                                {
                                  sub_1B4CD0444(319, &qword_1EDC36E30, &qword_1EB8AE090, &qword_1B4D46760, MEMORY[0x1E69E62F8]);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1B4CD04A8(319);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1B4CD0510(319);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1B4CD03E0(319, &qword_1EDC36E20, type metadata accessor for LocationCoordinate, MEMORY[0x1E69E62F8]);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_1B4CD05D8(319, &qword_1EDC371F0, &type metadata for WorkoutMediaDetails, MEMORY[0x1E69E6720]);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_1B4CD03E0(319, &qword_1EDC36FE8, type metadata accessor for HKActivitySummaryRepresentable, MEMORY[0x1E69E6720]);
                                            if (v22 <= 0x3F)
                                            {
                                              swift_cvw_initStructMetadataWithLayoutString();
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
            }
          }
        }
      }
    }
  }
}

void sub_1B4CD03E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B4CD0444(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B4CD04A8(uint64_t a1)
{
  if (!qword_1EDC36E60)
  {
    type metadata accessor for WorkoutMetadata(255);
    v1 = sub_1B4D1801C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC36E60);
    }
  }
}

void sub_1B4CD0510(uint64_t a1)
{
  if (!qword_1EDC36E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6D08, &qword_1B4D1BC90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AE0D0, &unk_1B4D46780);
    sub_1B49B0578(&qword_1EDC37440, &qword_1EB8A6D08, &qword_1B4D1BC90, &protocol conformance descriptor for CodableBridging<A>);
    v1 = sub_1B4D1801C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC36E68);
    }
  }
}

void sub_1B4CD05D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4CD077C()
{
  result = qword_1EB8AE190;
  if (!qword_1EB8AE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE190);
  }

  return result;
}

unint64_t sub_1B4CD07D4()
{
  result = qword_1EB8AE198;
  if (!qword_1EB8AE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE198);
  }

  return result;
}

unint64_t sub_1B4CD082C()
{
  result = qword_1EB8AE1A0;
  if (!qword_1EB8AE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE1A0);
  }

  return result;
}

uint64_t sub_1B4CD0880(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4774756F6B726F77 && a2 == 0xEB000000006C616FLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D66DE0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x536E6F6973736573 && a2 == 0xEC00000074726174 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4C656C6261646F63 && a2 == 0xEF6E6F697461636FLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4D66E00 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 1701011824 && a2 == 0xE400000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x5065676172657661 && a2 == 0xEB00000000656361 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x736569726F6C6163 && a2 == 0xEE0064656E727542 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7461527472616568 && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4C140 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B4D61440 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B4D66E20 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D61670 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B4D66E40 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x5065676172657661 && a2 == 0xEC0000007265776FLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6F69746176656C65 && a2 == 0xED00006E6961476ELL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x45656C6261646F63 && a2 == 0xED000073746E6576 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x4D656C6261646F63 && a2 == 0xEF61746164617465 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B4D66E60 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6574756F72 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x746544616964656DLL && a2 == 0xEC000000736C6961 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B4D66E80 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D66EA0 == a2)
  {

    return 29;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 29;
    }

    else
    {
      return 30;
    }
  }
}

uint64_t sub_1B4CD11CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4CD122C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B4CD1288()
{
  result = qword_1EB8AE1C0;
  if (!qword_1EB8AE1C0)
  {
    type metadata accessor for CurrentDayFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE1C0);
  }

  return result;
}

uint64_t sub_1B4CD12E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49AA274;

  return sub_1B4CD13A4(a1, a3);
}

uint64_t sub_1B4CD13A4(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_1B4D1777C();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for WorkoutState(0);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4CD1510, 0, 0);
}

uint64_t sub_1B4CD1510()
{
  v25 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];
  sub_1B4992854(v0[2], v2);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_1B49B4670(v2, v1);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[10];
  if (v5 == 1)
  {
    sub_1B49933E8(v6);
LABEL_5:
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  v7 = v0[6];
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];
  sub_1B49B46E0(v6, v0[9]);
  sub_1B4D1770C();
  v11 = *(v9 + 16);
  v11(v8, v7, v10);
  DayOfWeek.init(from:)(v8, &v24);
  v12 = v24;
  v13 = v0[9];
  v14 = v0[6];
  v15 = v0[3];
  v16 = v0[4];
  if (v24 == 7)
  {
    (*(v16 + 8))(v0[6], v0[3]);
    sub_1B49AA7C0(v13);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72A0, &unk_1B4D46B00);
  v23 = v13;
  v18 = (type metadata accessor for CurrentDayFact(0) - 8);
  v19 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B4D1A800;
  v20 = v17 + v19;
  v11(v20, v14, v15);
  *(v20 + v18[7]) = v12;
  (*(v16 + 8))(v14, v15);
  sub_1B49AA7C0(v23);
LABEL_7:
  sub_1B49933E8(v0[11]);

  v21 = v0[1];

  return v21(v17);
}

unint64_t sub_1B4CD17C0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return 0;
  }

  v14 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF43C(0, v2, 0);
  v3 = (v1 + 48);
  do
  {
    v4 = *(v3 - 1);
    v5 = *v3;
    v13[8] = 0;
    *v13 = *(v3 - 16);

    sub_1B4D18A8C();
    MEMORY[0x1B8C7C620](175841338, 0xE400000000000000);
    MEMORY[0x1B8C7C620](v4, v5);
    MEMORY[0x1B8C7C620](32010, 0xE200000000000000);

    v7 = *(v14 + 16);
    v6 = *(v14 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1B4BCF43C((v6 > 1), v7 + 1, 1);
    }

    *(v14 + 16) = v7 + 1;
    v8 = v14 + 16 * v7;
    *(v8 + 32) = *&v13[1];
    *(v8 + 40) = 0xE000000000000000;
    v3 += 3;
    --v2;
  }

  while (v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B38, &qword_1B4D36300);
  sub_1B4C6EB78();
  v9 = sub_1B4D180DC();
  v11 = v10;

  sub_1B4D1896C();

  MEMORY[0x1B8C7C620](v9, v11);

  MEMORY[0x1B8C7C620](0xD000000000000010, 0x80000001B4D66EE0);
  return 0xD000000000000011;
}

FitnessIntelligence::WorkoutVoiceTranscript::Role_optional __swiftcall WorkoutVoiceTranscript.Role.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
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

  *v2 = v5;
  return result;
}

uint64_t WorkoutVoiceTranscript.Role.rawValue.getter()
{
  if (*v0)
  {
    return 1919251317;
  }

  else
  {
    return 0x6E61747369737361;
  }
}

uint64_t sub_1B4CD1A74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1919251317;
  }

  else
  {
    v3 = 0x6E61747369737361;
  }

  if (v2)
  {
    v4 = 0xE900000000000074;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1919251317;
  }

  else
  {
    v5 = 0x6E61747369737361;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B4D18DCC();
  }

  return v8 & 1;
}

uint64_t sub_1B4CD1B18()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4CD1B98(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4CD1C04(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4CD1C80@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1B4CD1CE0(uint64_t *a1@<X8>)
{
  v2 = 1919251317;
  if (!*v1)
  {
    v2 = 0x6E61747369737361;
  }

  v3 = 0xE900000000000074;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t WorkoutVoiceTranscript.Entry.value.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t WorkoutVoiceTranscript.Entry.hash(into:)(uint64_t a1)
{
  sub_1B4D1820C();

  return sub_1B4D1820C();
}

uint64_t WorkoutVoiceTranscript.Entry.hashValue.getter()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4CD1E84()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4CD1F20(uint64_t a1)
{
  sub_1B4D1820C();

  return sub_1B4D1820C();
}

uint64_t sub_1B4CD1FAC(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t WorkoutVoiceTranscript.entries.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _s19FitnessIntelligence22WorkoutVoiceTranscriptV5EntryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *a1 == 0;
  if (*a1)
  {
    v7 = 1919251317;
  }

  else
  {
    v7 = 0x6E61747369737361;
  }

  if (v6)
  {
    v8 = 0xE900000000000074;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = 1919251317;
  }

  else
  {
    v9 = 0x6E61747369737361;
  }

  if (*a2)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE900000000000074;
  }

  if (v7 == v9 && v8 == v10)
  {

    if (v2 != v4)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = sub_1B4D18DCC();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }

    if (v2 != v4)
    {
      goto LABEL_24;
    }
  }

  if (v3 == v5)
  {
    return 1;
  }

LABEL_24:

  return sub_1B4D18DCC();
}

unint64_t sub_1B4CD21C4()
{
  result = qword_1EB8AE1C8;
  if (!qword_1EB8AE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE1C8);
  }

  return result;
}

unint64_t sub_1B4CD221C()
{
  result = qword_1EB8AE1D0;
  if (!qword_1EB8AE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE1D0);
  }

  return result;
}

FitnessIntelligence::FitnessPlusModalityKind_optional __swiftcall FitnessPlusModalityKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FitnessPlusModalityKind.rawValue.getter()
{
  result = 0x6E776F646C6F6F63;
  switch(*v0)
  {
    case 1:
      result = 1701998435;
      break;
    case 2:
      result = 0x676E696C637963;
      break;
    case 3:
      result = 0x65636E6164;
      break;
    case 4:
      result = 0x7552646564697567;
      break;
    case 5:
      result = 0x6157646564697567;
      break;
    case 6:
      result = 1953065320;
      break;
    case 7:
      result = 0x69786F626B63696BLL;
      break;
    case 8:
      result = 0x697461746964656DLL;
      break;
    case 9:
      result = 0x736574616C6970;
      break;
    case 0xA:
      result = 0x676E69776F72;
      break;
    case 0xB:
      result = 0x6874676E65727473;
      break;
    case 0xC:
      result = 0x6C696D6461657274;
      break;
    case 0xD:
      result = 1634168697;
      break;
    case 0xE:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

Swift::String __swiftcall FitnessPlusModalityKind.nameFromModalityKind()()
{
  v1 = 0xE400000000000000;
  v2 = 1701998403;
  switch(*v0)
  {
    case 1:
      break;
    case 2:
      v1 = 0xE700000000000000;
      v2 = 0x676E696C637943;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v2 = 0x65636E6144;
      break;
    case 4:
      v1 = 0xEB000000006E7552;
      goto LABEL_12;
    case 5:
      v1 = 0xEC0000006B6C6157;
LABEL_12:
      v2 = 0x206F7420656D6954;
      break;
    case 6:
      v2 = 1414089032;
      break;
    case 7:
      v2 = 0x69786F626B63694BLL;
      v1 = 0xEA0000000000676ELL;
      break;
    case 8:
      v1 = 0xEA00000000006E6FLL;
      v2 = 0x697461746964654DLL;
      break;
    case 9:
      v1 = 0xE700000000000000;
      v2 = 0x736574616C6950;
      break;
    case 0xA:
      v1 = 0xE600000000000000;
      v2 = 0x676E69776F52;
      break;
    case 0xB:
      v1 = 0xE800000000000000;
      v2 = 0x6874676E65727453;
      break;
    case 0xC:
      v1 = 0xE90000000000006CLL;
      v2 = 0x6C696D6461657254;
      break;
    case 0xD:
      v2 = 1634168665;
      break;
    case 0xE:
      v1 = 0xE500000000000000;
      v2 = 0x726568744FLL;
      break;
    default:
      v1 = 0x80000001B4D62460;
      v2 = 0xD000000000000010;
      break;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_1B4CD25F8()
{
  v0 = FitnessPlusModalityKind.rawValue.getter();
  v2 = v1;
  if (v0 == FitnessPlusModalityKind.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B4D18DCC();
  }

  return v5 & 1;
}

unint64_t sub_1B4CD2698()
{
  result = qword_1EB8AE1D8;
  if (!qword_1EB8AE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE1D8);
  }

  return result;
}

uint64_t sub_1B4CD26EC()
{
  sub_1B4D18E8C();
  FitnessPlusModalityKind.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4CD2754(uint64_t a1)
{
  FitnessPlusModalityKind.rawValue.getter();
  sub_1B4D1820C();
}

uint64_t sub_1B4CD27B8(uint64_t a1)
{
  sub_1B4D18E8C();
  FitnessPlusModalityKind.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4CD2828@<X0>(uint64_t *a1@<X8>)
{
  result = FitnessPlusModalityKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B4CD2854()
{
  result = qword_1EB8AE1E0;
  if (!qword_1EB8AE1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AE1E8, &qword_1B4D46D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE1E0);
  }

  return result;
}

unint64_t sub_1B4CD2988()
{
  result = qword_1EB8AE1F0;
  if (!qword_1EB8AE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE1F0);
  }

  return result;
}

uint64_t AudioSynthesisVoice.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = (a1 + *(v4 + 20));
  v6 = v5[1];
  if (v6)
  {
    v7 = (a1 + *(v4 + 24));
    v8 = v7[1];
    if (v8)
    {
      v9 = *v5;
      v10 = *v7;

      result = sub_1B4CD2B60(a1);
      *a2 = v9;
      a2[1] = v6;
      a2[2] = v10;
      a2[3] = v8;
      return result;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  sub_1B498C3D8();
  swift_allocError();
  *v13 = v12;
  swift_willThrow();
  return sub_1B4CD2B60(a1);
}

uint64_t AudioSynthesisVoice.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  sub_1B4CD2E2C(qword_1EDC3C320, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4CD2B60(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4CD2BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v11 = (a1 + *(v10 + 20));

  *v11 = a2;
  v11[1] = a3;
  v12 = (a1 + *(v10 + 24));

  *v12 = a4;
  v12[1] = a5;
  return result;
}

uint64_t sub_1B4CD2C58(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  v11 = *v1;
  v12 = v7;
  v13 = v8;
  v9 = sub_1B4B2A024();
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_1B4CD2E2C(qword_1EDC3C320, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    v4 = sub_1B4D17D6C();
    sub_1B4CD2B60(v6);
  }

  return v4;
}

double sub_1B4CD2D80@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4B28A30(a1, a2, &v8);
  if (!v3)
  {
    result = *&v8;
    v6 = v9;
    v7 = v10;
    *a3 = v8;
    *(a3 + 16) = v6;
    *(a3 + 24) = v7;
  }

  return result;
}

uint64_t sub_1B4CD2E2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4CD2E70()
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  sub_1B4CD2E2C(qword_1EDC3C320, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4CD2F48()
{
  result = qword_1EB8AE1F8;
  if (!qword_1EB8AE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE1F8);
  }

  return result;
}

uint64_t measureDuration<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4CD2FD8, 0, 0);
}

uint64_t sub_1B4CD2FD8()
{
  v1 = *(v0 + 24);
  *(v0 + 40) = CFAbsoluteTimeGetCurrent();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1B4CD30D4;
  v3 = *(v0 + 16);

  return v5(v3);
}

uint64_t sub_1B4CD30D4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4CD3204, 0, 0);
  }
}

uint64_t sub_1B4CD3204()
{
  v1 = *(v0 + 40);
  v2.n128_f64[0] = CFAbsoluteTimeGetCurrent() - v1;
  v3 = *(v0 + 8);

  return v3(v2);
}

BOOL static MilestoneEntry.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v6(&v10, a3, a4);
  v7 = v10;
  v6(&v9, a3, a4);
  return v7 < v9;
}

uint64_t sub_1B4CD3330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a7@<X8>)
{
  v130 = a3;
  v165 = a2;
  v131 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v138 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v142 = &v129 - v13;
  v169 = sub_1B4D1777C();
  v160 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v135 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v168 = &v129 - v16;
  v174 = sub_1B4D175FC();
  v163 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v137 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v136 = &v129 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v167 = &v129 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v141 = &v129 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v140 = &v129 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v172 = &v129 - v27;
  v28 = type metadata accessor for WorkoutMilestoneEntry(0);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v145 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v144 = &v129 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE218, &qword_1B4D46FA8);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = (&v129 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7150, &qword_1B4D46FB0);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v180 = &v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v173 = (&v129 - v40);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE220, &qword_1B4D46FB8);
  MEMORY[0x1EEE9AC00](v181);
  v42 = (&v129 - v41);
  v132 = a4;
  sub_1B4CD5DC4(a5, &v182);
  v139 = v182;
  v170 = v183;
  v43 = *(a5 + 16);

  v175 = a1;
  v146 = v29;
  v179 = v43;
  v166 = a5;
  if (v43)
  {
    v45 = 0;
    v46 = (v37 + 56);
    v171 = v37;
    v47 = (v37 + 48);
    v177 = v46;
    v178 = (a1 ^ 0x7FFFFFFFFFFFFFFFLL);
    v48 = v29;
    v49 = v44 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v176 = *(v48 + 72);
    v184 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v50 = *(v181 + 48);
      *v42 = v45;
      sub_1B4CDF2D4(v49, v42 + v50);
      v51 = v45 + a1;
      if (__OFADD__(a1, v45))
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        swift_unexpectedError();
        __break(1u);
LABEL_70:

        __break(1u);
        return result;
      }

      if (v178 == v45)
      {
        goto LABEL_65;
      }

      v52 = v51 + 1;
      if ((v51 + 1) > 249)
      {
        if (v52 % 0xFA)
        {
          goto LABEL_14;
        }
      }

      else if (v51 && v51 != 9)
      {
        v53 = v51 - 24;
        if (__OFSUB__(v52, 25))
        {
          goto LABEL_67;
        }

        if (v53 % 25)
        {
LABEL_14:
          v55 = 1;
          goto LABEL_15;
        }
      }

      v54 = *(v36 + 48);
      *v35 = v52;
      sub_1B4CDF2D4(v42 + v50, v35 + v54);
      v55 = 0;
LABEL_15:
      (*v177)(v35, v55, 1, v36);
      sub_1B4975024(v42, &qword_1EB8AE220, &qword_1B4D46FB8);
      if ((*v47)(v35, 1, v36) == 1)
      {
        sub_1B4975024(v35, &qword_1EB8AE218, &qword_1B4D46FA8);
      }

      else
      {
        v56 = v173;
        sub_1B498B270(v35, v173, &qword_1EB8A7150, &qword_1B4D46FB0);
        sub_1B498B270(v56, v180, &qword_1EB8A7150, &qword_1B4D46FB0);
        v57 = v184;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_1B4A1E4D8(0, v57[2] + 1, 1, v57);
        }

        v59 = v57[2];
        v58 = v57[3];
        v184 = v57;
        if (v59 >= v58 >> 1)
        {
          v184 = sub_1B4A1E4D8((v58 > 1), v59 + 1, 1, v184);
        }

        v60 = v184;
        v184[2] = v59 + 1;
        sub_1B498B270(v180, v60 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + v171[9] * v59, &qword_1EB8A7150, &qword_1B4D46FB0);
        a1 = v175;
      }

      v45 = (v45 + 1);
      v49 += v176;
      if (v179 == v45)
      {
        goto LABEL_22;
      }
    }
  }

  v184 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v50 = v184[2];
  if (v50)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6880, &unk_1B4D46FC0);
    v61 = sub_1B4D18AEC();
  }

  else
  {
    v61 = MEMORY[0x1E69E7CC8];
  }

  v62 = v146;
  v63 = v145;
  v64 = v164;
  v182 = v61;

  sub_1B49B9DEC(v65, 1, &v182);
  v129 = v64;
  if (v64)
  {
    goto LABEL_69;
  }

  v133 = v182;
  v182 = v165;

  sub_1B4997AA0(v166);
  v66 = v182;
  v177 = v182[2];
  if (v177)
  {
    v67 = 0;
    v176 = (v163 + 32);
    v179 = (v163 + 8);
    v173 = v160 + 6;
    v171 = (v160 + 4);
    LODWORD(v166) = *MEMORY[0x1E6969A50];
    LODWORD(v165) = *MEMORY[0x1E6969A68];
    LODWORD(v164) = *MEMORY[0x1E6969A78];
    LODWORD(v163) = *MEMORY[0x1E6969A10];
    v162 = *MEMORY[0x1E6969AB0];
    v161 = *MEMORY[0x1E6969A48];
    ++v160;
    v159 = xmmword_1B4D223E0;
    v68 = MEMORY[0x1E69E7CC0];
    v69 = v144;
    v134 = v182;
    while (1)
    {
      if (v67 >= *(v66 + 16))
      {
        goto LABEL_66;
      }

      v184 = v68;
      v72 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v180 = *(v62 + 72);
      v181 = v67;
      sub_1B4CDF2D4(v66 + v72 + v180 * v67, v69);
      if (v170)
      {
LABEL_33:
        sub_1B4CDF394(v69, v63);
        v68 = v184;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v182 = v68;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCF01C(0, v68[2] + 1, 1);
          v68 = v182;
        }

        v50 = v68[2];
        v74 = v68[3];
        if (v50 >= v74 >> 1)
        {
          sub_1B4BCF01C((v74 > 1), v50 + 1, 1);
          v68 = v182;
        }

        v68[2] = v50 + 1;
        sub_1B4CDF394(v63, v68 + v72 + v50 * v180);
        goto LABEL_30;
      }

      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v75 = sub_1B4D1796C();
      __swift_project_value_buffer(v75, qword_1EDC3CE48);
      v76 = _HKActivityCacheDateComponentsFromCacheIndex();
      v77 = v169;
      if (!v76)
      {
        goto LABEL_60;
      }

      v78 = v76;
      v79 = v141;
      sub_1B4D1756C();

      v80 = *v176;
      v81 = v140;
      v82 = v174;
      (*v176)(v140, v79, v174);
      v83 = v142;
      sub_1B4D178FC();
      v178 = *v179;
      (v178)(v81, v82);
      v84 = *v173;
      if ((*v173)(v83, 1, v77) == 1)
      {
        sub_1B4975024(v83, &qword_1EB8A6790, &qword_1B4D1BBC0);
LABEL_60:
        sub_1B4BD9F8C();
        swift_allocError();
        swift_willThrow();
LABEL_63:

        sub_1B4CDF338(v69);
      }

      v157 = v84;
      v158 = v80;
      v143 = v72;
      v156 = *v171;
      v156(v168, v83, v77);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
      v86 = sub_1B4D1794C();
      v87 = *(v86 - 8);
      v88 = *(v87 + 72);
      v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v155 = v85;
      v152 = v89 + 6 * v88;
      v90 = swift_allocObject();
      *(v90 + 16) = v159;
      v153 = v89;
      v91 = *(v87 + 104);
      v91(v90 + v89, v166, v86);
      v91(v90 + v89 + v88, v165, v86);
      v91(v90 + v89 + 2 * v88, v164, v86);
      v151 = 2 * v88;
      v150 = 3 * v88;
      v91(v90 + v89 + 3 * v88, v163, v86);
      v91(v90 + v89 + 4 * v88, v162, v86);
      v154 = v88;
      v149 = 4 * v88;
      v148 = 5 * v88;
      v91(v90 + v89 + 5 * v88, v161, v86);
      sub_1B49B56B4(v90);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v92 = v168;
      sub_1B4D1788C();
      v93 = v174;

      v94 = *v160;
      v95 = v92;
      v96 = v169;
      (*v160)(v95);
      v97 = _HKActivityCacheDateComponentsFromCacheIndex();
      if (!v97)
      {
        goto LABEL_62;
      }

      v98 = v97;
      v147 = v94;
      v99 = v137;
      sub_1B4D1756C();

      v100 = v136;
      v101 = v99;
      v93 = v174;
      v158(v136, v101, v174);
      v102 = v138;
      sub_1B4D178FC();
      (v178)(v100, v93);
      if (v157(v102, 1, v96) == 1)
      {
        sub_1B4975024(v102, &qword_1EB8A6790, &qword_1B4D1BBC0);
LABEL_62:
        sub_1B4BD9F8C();
        swift_allocError();
        swift_willThrow();
        (v178)(v172, v93);
        v69 = v144;
        goto LABEL_63;
      }

      v103 = v135;
      v104 = v96;
      v156(v135, v102, v96);
      v105 = swift_allocObject();
      *(v105 + 16) = v159;
      v106 = v105 + v153;
      v91(v105 + v153, v166, v86);
      v91(v106 + v154, v165, v86);
      v91(v106 + v151, v164, v86);
      v91(v106 + v150, v163, v86);
      v91(v106 + v149, v162, v86);
      v91(v106 + v148, v161, v86);
      sub_1B49B56B4(v105);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1B4D1788C();

      v147(v103, v104);
      v107 = sub_1B4D1759C();
      LOBYTE(v105) = v108;
      v109 = sub_1B4D1759C();
      if (v105)
      {
        v62 = v146;
        v66 = v134;
        if ((v110 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v62 = v146;
        v66 = v134;
        if ((v110 & 1) != 0 || v107 != v109)
        {
LABEL_28:
          v70 = v174;
          v71 = v178;
          v50 = v179;
          (v178)(v167, v174);
          (v71)(v172, v70);
          v69 = v144;
          v63 = v145;
          goto LABEL_29;
        }
      }

      v50 = v172;
      v158 = sub_1B4D175AC();
      v112 = v111;
      v113 = v167;
      v114 = sub_1B4D175AC();
      v116 = v115;
      v117 = v174;
      v118 = v178;
      (v178)(v113, v174);
      (v118)(v50, v117);
      if (v112)
      {
        v69 = v144;
        v63 = v145;
        v72 = v143;
        if (v116)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v69 = v144;
        v63 = v145;
        v72 = v143;
        if ((v116 & 1) == 0 && v158 == v114)
        {
          goto LABEL_33;
        }
      }

LABEL_29:
      sub_1B4CDF338(v69);
      v68 = v184;
LABEL_30:
      v67 = v181 + 1;
      a1 = v175;
      if (v177 == (v181 + 1))
      {
        goto LABEL_56;
      }
    }
  }

  v68 = MEMORY[0x1E69E7CC0];
LABEL_56:

  v182 = v68;

  v119 = v129;
  sub_1B4CD98B4(&v182);
  v50 = v119;
  if (v119)
  {
    goto LABEL_70;
  }

  v120 = __OFADD__(a1, v132);
  v121 = a1 + v132;
  v122 = v133;
  if (v120)
  {
    goto LABEL_68;
  }

  v123 = v182;
  v124 = v130;

  v125 = swift_isUniquelyReferenced_nonNull_native();
  v182 = v124;
  sub_1B4CDED88(v122, sub_1B4CDE124, 0, v125, &v182);

  v127 = v182;
  v128 = v131;
  *v131 = v121;
  v128[1] = v123;
  v128[2] = v127;
  return result;
}

uint64_t sub_1B4CD45F4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v116 = a3;
  v160 = a2;
  v121 = a1;
  v117 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v128 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v133 = &v113 - v13;
  v162 = sub_1B4D1777C();
  v150 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v125 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v161 = &v113 - v16;
  v168 = sub_1B4D175FC();
  v157 = *(v168 - 1);
  MEMORY[0x1EEE9AC00](v168);
  v127 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v126 = &v113 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v158 = &v113 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v132 = &v113 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v131 = &v113 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v165 = &v113 - v27;
  v118 = a4;
  sub_1B4CD5C34(a5, &v166);
  v130 = v166;
  v134 = v167;
  v28 = *(a5 + 2);

  v163 = a5;
  if (!v28)
  {
    v30 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v29 = 0;
  v164 = (a5 + 32);
  v30 = MEMORY[0x1E69E7CC0];
  v31 = v121;
  do
  {
    v32 = v29;
    while (1)
    {
      if (v32 >= v28)
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v29 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_68;
      }

      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_69;
      }

      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_70;
      }

      if (v34 > 999)
      {
        if (__ROR8__(0x1CAC083126E978D5 * v34, 1) <= 0x10624DD2F1A9FBEuLL)
        {
          goto LABEL_17;
        }

        goto LABEL_5;
      }

      if (v34 > 364)
      {
        break;
      }

      if (!v33 || v33 == 99)
      {
        goto LABEL_17;
      }

LABEL_5:
      ++v32;
      if (v29 == v28)
      {
        goto LABEL_24;
      }
    }

    if (v33 != 364 && v33 != 499)
    {
      goto LABEL_5;
    }

LABEL_17:
    v35 = v164[v32];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1B4A1E7E8(0, *(v30 + 2) + 1, 1, v30);
    }

    v37 = *(v30 + 2);
    v36 = *(v30 + 3);
    a6 = (v37 + 1);
    if (v37 >= v36 >> 1)
    {
      v30 = sub_1B4A1E7E8((v36 > 1), v37 + 1, 1, v30);
    }

    *(v30 + 2) = a6;
    v38 = &v30[16 * v37];
    *(v38 + 4) = v34;
    *(v38 + 5) = v35;
    v31 = v121;
  }

  while (v29 != v28);
LABEL_24:
  a6 = *(v30 + 2);
  if (a6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6878, &unk_1B4D1AB90);
    v39 = sub_1B4D18AEC();
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC8];
  }

  v166 = v39;

  v41 = v159;
  sub_1B49E3040(v40, 1, &v166);
  v115 = v41;
  if (v41)
  {
    goto LABEL_73;
  }

  v120 = v166;
  v166 = v160;

  sub_1B4997E10(v163);
  v42 = v166;
  v43 = *(v166 + 2);
  if (!v43)
  {
    v48 = MEMORY[0x1E69E7CC0];
    goto LABEL_64;
  }

  v44 = 0;
  v129 = v166 + 32;
  v164 = (v157 + 1);
  v159 = v150 + 6;
  v160 = (v157 + 4);
  v157 = (v150 + 4);
  v45 = *MEMORY[0x1E6969A50];
  v155 = *MEMORY[0x1E6969A68];
  v156 = v45;
  v46 = *MEMORY[0x1E6969A78];
  v153 = *MEMORY[0x1E6969A10];
  v154 = v46;
  v47 = *MEMORY[0x1E6969AB0];
  v151 = *MEMORY[0x1E6969A48];
  v152 = v47;
  ++v150;
  v114 = v43 - 1;
  v149 = xmmword_1B4D223E0;
  v48 = MEMORY[0x1E69E7CC0];
  v49 = v162;
  v124 = v166;
  v122 = v43;
  while (2)
  {
    v119 = v48;
    v50 = v44;
    while (2)
    {
      if (v50 >= *(v42 + 2))
      {
        goto LABEL_71;
      }

      v53 = *&v129[8 * v50];
      v123 = v50;
      v44 = v50 + 1;
      if (v134)
      {
        goto LABEL_51;
      }

      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v54 = sub_1B4D1796C();
      __swift_project_value_buffer(v54, qword_1EDC3CE48);
      v55 = _HKActivityCacheDateComponentsFromCacheIndex();
      if (!v55)
      {
        goto LABEL_59;
      }

      v56 = v55;
      v135 = v53;
      v57 = v132;
      sub_1B4D1756C();

      v58 = *v160;
      v59 = v131;
      v60 = v57;
      v61 = v168;
      (*v160)(v131, v60, v168);
      v62 = v133;
      sub_1B4D178FC();
      v163 = *v164;
      (v163)(v59, v61);
      v63 = *v159;
      if ((*v159)(v62, 1, v49) == 1)
      {
        sub_1B4975024(v62, &qword_1EB8A6790, &qword_1B4D1BBC0);
LABEL_59:
        sub_1B4BD9F8C();
        swift_allocError();
        swift_willThrow();
LABEL_62:
      }

      v147 = v63;
      v148 = v58;
      v145 = *v157;
      v146 = v44;
      v145(v161, v62, v49);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
      v65 = sub_1B4D1794C();
      v66 = *(v65 - 8);
      v67 = *(v66 + 72);
      v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v142 = *(v66 + 80);
      v144 = v64;
      v141 = v68 + 6 * v67;
      v69 = swift_allocObject();
      *(v69 + 16) = v149;
      v143 = v68;
      v70 = v69 + v68;
      v71 = *(v66 + 104);
      v71(v70, v156, v65);
      v71(v70 + v67, v155, v65);
      v71(v70 + 2 * v67, v154, v65);
      v140 = 2 * v67;
      v139 = 3 * v67;
      v71(v70 + 3 * v67, v153, v65);
      v71(v70 + 4 * v67, v152, v65);
      v138 = 4 * v67;
      v137 = 5 * v67;
      v71(v70 + 5 * v67, v151, v65);
      sub_1B49B56B4(v69);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v72 = v161;
      sub_1B4D1788C();

      v73 = *v150;
      v74 = v72;
      v75 = v162;
      (*v150)(v74);
      v76 = _HKActivityCacheDateComponentsFromCacheIndex();
      if (!v76)
      {
        goto LABEL_61;
      }

      v77 = v76;
      v136 = v73;
      v78 = v127;
      sub_1B4D1756C();

      v79 = v126;
      v80 = v78;
      v81 = v168;
      v148(v126, v80, v168);
      v82 = v128;
      sub_1B4D178FC();
      (v163)(v79, v81);
      if (v147(v82, 1, v75) == 1)
      {
        sub_1B4975024(v82, &qword_1EB8A6790, &qword_1B4D1BBC0);
LABEL_61:
        sub_1B4BD9F8C();
        swift_allocError();
        swift_willThrow();
        (v163)(v165, v168);
        goto LABEL_62;
      }

      v83 = v125;
      v145(v125, v82, v75);
      v84 = swift_allocObject();
      *(v84 + 16) = v149;
      v85 = v84 + v143;
      v71(v84 + v143, v156, v65);
      v71(v85 + v67, v155, v65);
      v71(v85 + v140, v154, v65);
      v71(v85 + v139, v153, v65);
      v71(v85 + v138, v152, v65);
      v71(v85 + v137, v151, v65);
      sub_1B49B56B4(v84);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1B4D1788C();

      v49 = v162;
      v136(v83, v162);
      v86 = sub_1B4D1759C();
      LOBYTE(v85) = v87;
      v88 = sub_1B4D1759C();
      if (v85)
      {
        if (v89)
        {
          goto LABEL_46;
        }

LABEL_31:
        a6 = v168;
        v51 = v163;
        (v163)(v158, v168);
        (v51)(v165, a6);
        v42 = v124;
        v52 = v122;
        v44 = v146;
LABEL_32:
        v50 = v44;
        if (v52 == v44)
        {
          v48 = v119;
          goto LABEL_64;
        }

        continue;
      }

      break;
    }

    if ((v89 & 1) != 0 || v86 != v88)
    {
      goto LABEL_31;
    }

LABEL_46:
    v90 = v165;
    a6 = sub_1B4D175AC();
    v92 = v91;
    v93 = v158;
    v94 = sub_1B4D175AC();
    v96 = v95;
    v97 = v93;
    v98 = v168;
    v99 = v163;
    (v163)(v97, v168);
    (v99)(v90, v98);
    if (v92)
    {
      v42 = v124;
      v52 = v122;
      v44 = v146;
      v53 = v135;
      if (v96)
      {
        goto LABEL_51;
      }

      goto LABEL_32;
    }

    v42 = v124;
    v52 = v122;
    v44 = v146;
    v53 = v135;
    if ((v96 & 1) != 0 || a6 != v94)
    {
      goto LABEL_32;
    }

LABEL_51:
    v48 = v119;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v166 = v48;
    v101 = v53;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B4BCEE7C(0, *(v48 + 2) + 1, 1);
      v48 = v166;
    }

    v103 = *(v48 + 2);
    v102 = *(v48 + 3);
    a6 = (v103 + 1);
    if (v103 >= v102 >> 1)
    {
      sub_1B4BCEE7C((v102 > 1), v103 + 1, 1);
      v48 = v166;
    }

    *(v48 + 2) = a6;
    *&v48[8 * v103 + 32] = v101;
    if (v114 != v123)
    {
      continue;
    }

    break;
  }

LABEL_64:

  v166 = v48;

  v105 = v115;
  sub_1B4CD995C(&v166);
  a6 = v105;
  if (!v105)
  {

    v106 = v121 + v118;
    v107 = v120;
    if (!__OFADD__(v121, v118))
    {
      v108 = v166;
      v109 = v116;

      v110 = swift_isUniquelyReferenced_nonNull_native();
      v166 = v109;
      sub_1B4CDF090(v107, sub_1B4CDED7C, 0, v110, &v166);

      v111 = v166;
      v112 = v117;
      *v117 = v106;
      v112[1] = v108;
      v112[2] = v111;
      return result;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    swift_unexpectedError();
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static MilestonePropertyValueBehavior.add(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v18 = *(a4 + 32);
  v18(a3, a4);
  sub_1B4CD5FF0(a3, a4, &v22);
  v20 = *(a4 + 40);
  v23 = v20(a3, a4);
  swift_getAssociatedTypeWitness();
  v7 = sub_1B4D184BC();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8C7C6C0](&v22, v7, WitnessTable);

  v23 = v22;
  sub_1B4D18AAC();
  swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  v9 = sub_1B4D182BC();

  v22 = v9;
  sub_1B4D184BC();
  swift_getWitnessTable();
  sub_1B4D17FCC();
  v20(a3, a4);
  v20(a3, a4);
  v10 = sub_1B4D1842C();

  v22 = v10;
  swift_getWitnessTable();
  v11 = sub_1B4D189DC();
  if (v19)
  {
  }

  v22 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v21 = sub_1B4D182EC();

  v13 = v18(a3, a4);
  result = v18(a3, a4);
  v14 = __OFADD__(v13, result);
  v15 = v13 + result;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = (*(a4 + 48))(a3, a4);
    MEMORY[0x1EEE9AC00](v16);
    v17 = sub_1B4D1800C();
    return (*(a4 + 56))(v15, v21, v17, a3, a4);
  }

  return result;
}

uint64_t static MilestonePropertyValueBehavior.prepareForReduce(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B4D184BC();
  swift_getWitnessTable();
  return sub_1B4D182EC();
}

uint64_t sub_1B4CD5BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void (*a6)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  v13 = a1;

  sub_1B4CD9818(&v13, a4, a5, a6, a7);
  if (!v7)
  {
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4CD5C34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF09C(0, v3, 0);
    v5 = v25;
    v6 = (a1 + 32);
    v7 = v25[2];
    do
    {
      v9 = *v6++;
      v8 = v9;
      v26 = v5;
      v10 = v5[3];
      v11 = v7 + 1;
      if (v7 >= v10 >> 1)
      {
        sub_1B4BCF09C((v10 > 1), v7 + 1, 1);
        v5 = v26;
      }

      v5[2] = v11;
      v5[v7++ + 4] = v8;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    v11 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v11)
    {
      v12 = 0;
      v23 = 1;
      goto LABEL_19;
    }
  }

  v12 = v5[4];
  v13 = v11 - 1;
  if (v11 != 1)
  {
    if (v11 <= 4)
    {
      v14 = 1;
      goto LABEL_14;
    }

    v14 = v13 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v15 = vdupq_n_s64(v12);
    v16 = (v5 + 7);
    v17 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v15;
    do
    {
      v15 = vbslq_s8(vcgtq_s64(v15, v16[-1]), v15, v16[-1]);
      v18 = vbslq_s8(vcgtq_s64(v18, *v16), v18, *v16);
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    v19 = vbslq_s8(vcgtq_s64(v15, v18), v15, v18);
    v20 = vextq_s8(v19, v19, 8uLL).u64[0];
    v12 = vbsl_s8(vcgtd_s64(v19.i64[0], v20), *v19.i8, v20);
    if (v13 != (v13 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_14:
      v21 = v11 - v14;
      v22 = 8 * v14 + 32;
      do
      {
        if (v12 <= *(v5 + v22))
        {
          v12 = *(v5 + v22);
        }

        v22 += 8;
        --v21;
      }

      while (v21);
    }
  }

  v23 = 0;
LABEL_19:

  *a2 = v12;
  *(a2 + 8) = v23;
  return result;
}

uint64_t sub_1B4CD5DC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WorkoutMilestoneEntry(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF09C(0, v8, 0);
    v9 = v30;
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_1B4CDF2D4(v10, v7);
      v12 = *v7;
      sub_1B4CDF338(v7);
      v30 = v9;
      v14 = v9[2];
      v13 = v9[3];
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_1B4BCF09C((v13 > 1), v14 + 1, 1);
        v9 = v30;
      }

      v9[2] = v15;
      v9[v14 + 4] = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
    v15 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v15)
    {
      v16 = 0;
      v27 = 1;
      goto LABEL_19;
    }
  }

  v16 = v9[4];
  v17 = v15 - 1;
  if (v15 != 1)
  {
    if (v15 <= 4)
    {
      v18 = 1;
      goto LABEL_14;
    }

    v18 = v17 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v19 = vdupq_n_s64(v16);
    v20 = (v9 + 7);
    v21 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = v19;
    do
    {
      v19 = vbslq_s8(vcgtq_s64(v19, v20[-1]), v19, v20[-1]);
      v22 = vbslq_s8(vcgtq_s64(v22, *v20), v22, *v20);
      v20 += 2;
      v21 -= 4;
    }

    while (v21);
    v23 = vbslq_s8(vcgtq_s64(v19, v22), v19, v22);
    v24 = vextq_s8(v23, v23, 8uLL).u64[0];
    v16 = vbsl_s8(vcgtd_s64(v23.i64[0], v24), *v23.i8, v24);
    if (v17 != (v17 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_14:
      v25 = v15 - v18;
      v26 = 8 * v18 + 32;
      do
      {
        if (v16 <= *(v9 + v26))
        {
          v16 = *(v9 + v26);
        }

        v26 += 8;
        --v25;
      }

      while (v25);
    }
  }

  v27 = 0;
LABEL_19:

  *a2 = v16;
  *(a2 + 8) = v27;
  return result;
}

uint64_t sub_1B4CD5FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[5] = (*(a2 + 40))();
  v25[2] = a1;
  v25[3] = a2;
  swift_getAssociatedTypeWitness();
  v6 = sub_1B4D184BC();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1B498D2F0(sub_1B4CDF45C, v25, v6, &type metadata for CacheIndex, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);

  v10 = *(v9 + 16);
  if (!v10)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v11 = *(v9 + 32);
  v12 = v10 - 1;
  if (v10 != 1)
  {
    if (v10 >= 5)
    {
      v13 = v12 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v14 = vdupq_n_s64(v11);
      v15 = (v9 + 56);
      v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      v17 = v14;
      do
      {
        v14 = vbslq_s8(vcgtq_s64(v14, v15[-1]), v14, v15[-1]);
        v17 = vbslq_s8(vcgtq_s64(v17, *v15), v17, *v15);
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      v18 = vbslq_s8(vcgtq_s64(v14, v17), v14, v17);
      v19 = vextq_s8(v18, v18, 8uLL).u64[0];
      v11 = vbsl_s8(vcgtd_s64(v18.i64[0], v19), *v18.i8, v19);
      if (v12 == (v12 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v13 = 1;
    }

    v20 = v10 - v13;
    v21 = (v9 + 8 * v13 + 32);
    do
    {
      v23 = *v21++;
      v22 = v23;
      if (v11 <= v23)
      {
        v11 = v22;
      }

      --v20;
    }

    while (v20);
  }

LABEL_13:
  *a3 = v11;
  *(a3 + 8) = v10 == 0;
}

uint64_t sub_1B4CD61A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 24);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

uint64_t sub_1B4CD6268@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v7 = a3 + result;
  if (__OFADD__(a3, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = (*(a5 + 64))(v8, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = TupleTypeMetadata2;
  if (v10)
  {
    v14 = *(TupleTypeMetadata2 + 48);
    *a6 = v8;
    (*(*(AssociatedTypeWitness - 8) + 16))(&a6[v14], a2, AssociatedTypeWitness);
    v15 = *(*(v13 - 8) + 56);
    v16 = a6;
    v17 = 0;
  }

  else
  {
    v15 = *(*(TupleTypeMetadata2 - 8) + 56);
    v16 = a6;
    v17 = 1;
  }

  return v15(v16, v17, 1, v13);
}

uint64_t sub_1B4CD63E8(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v7, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_1B4CD64B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    return 1;
  }

  v14[9] = v5;
  v14[10] = v6;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v9 = sub_1B4D1796C();
  __swift_project_value_buffer(v9, qword_1EDC3CE48);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = *(AssociatedConformanceWitness + 24);
  v12 = swift_checkMetadataState();
  v11(v14, v12, AssociatedConformanceWitness);
  v13 = a2;
  return Calendar.isSameMonth(_:_:)(v14, &v13) & 1;
}

uint64_t sub_1B4CD6610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1B4D180FC() & 1;
}

uint64_t sub_1B4CD6768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B4CD5FF0(a3, a4, &v11);
  v6 = v11;
  v7 = v12;
  sub_1B4CD5FF0(a3, a4, &v9);
  if (v7)
  {
    return 1;
  }

  else
  {
    return (v6 < v9) & ~v10;
  }
}

char *sub_1B4CD68A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE388, &qword_1B4D47200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B4CD6994(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C50, &qword_1B4D20100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4CD6AA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6848, &unk_1B4D1AB60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4CD6BC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE300, &qword_1B4D47128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B4CD6D90(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABDC0, &unk_1B4D38E20);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABDC8, &qword_1B4D47240);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4CD6EEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE378, &qword_1B4D471F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1B4CD6FFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE3F8, &unk_1B4D472B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4CD7108(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CA0, &qword_1B4D20158);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1B4CD720C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C20, &qword_1B4D200C0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1B4CD7310(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C18, &qword_1B4D2F640);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B4CD755C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7ED8, &qword_1B4D203E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4CD7754(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE268, &unk_1B4D47030);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4CD7888(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1B4CD7A04(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_1B4CD7B00(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE2F0, &qword_1B4D47108);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE2F8, &unk_1B4D47110);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4CD7C48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C88, &qword_1B4D1BBC8);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1B4CD7D48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE3D8, &unk_1B4D47280);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B4CD7E74(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE3B8, &qword_1B4D47258);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE3C0, &qword_1B4D47260);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4CD8120(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_1B4CD8264(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE2E0, &unk_1B4D470F0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7960, &qword_1B4D409B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B4CD8404(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1B4CD854C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B4CD87E8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F08, &qword_1B4D20430);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F10, &qword_1B4D20438);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B4CD8940(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1B4CD8B50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE270, &qword_1B4D47040);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B4CD8C54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE340, &qword_1B4D47178);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4CD8D60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE338, &qword_1B4D47170);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B4CD8F08(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1B4CD9140(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C70, &qword_1B4D20128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4CD9274(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1B4CD9360(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE280, &qword_1B4D47050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE288, &qword_1B4D47058);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B4CD94BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE250, &qword_1B4D47010);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE258, &qword_1B4D47018);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B4CD963C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B4CD9818(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1B4CD9A90(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

void sub_1B4CD98B4(uint64_t *a1)
{
  v2 = *(type metadata accessor for WorkoutMilestoneEntry(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B4CDE58C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1B4CD9BA0(v5);
  *a1 = v3;
}

uint64_t sub_1B4CD995C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4CDE5EC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B4D18D4C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B4D1844C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1B4CDCDF0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B4CD9A90(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1B4D18D4C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1B4D1844C();
        *(v10 + 16) = v7 / 2;
      }

      v12[0] = v10 + 32;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

void sub_1B4CD9BA0(unint64_t *a1)
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
        type metadata accessor for WorkoutMilestoneEntry(0);
        v6 = sub_1B4D1844C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for WorkoutMilestoneEntry(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B4CDC5B0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_1B4CDA620(0, v2, 1, a1);
  }
}

uint64_t sub_1B4CD9CCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v57 = result;
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = MEMORY[0x1E69E7CC0];
    v56 = *a4;
LABEL_6:
    v6 = *(v4 + 24 * a3 + 8);
    v55 = a3;
    while (1)
    {
      v7 = (v4 + 24 * a3);
      v8 = *(v7 - 2);
      v9 = *(v6 + 16);
      v60 = v8;
      v59 = a3;
      if (v9)
      {
        break;
      }

      v16 = v5[2];

      if (v16)
      {
        v10 = v5;
        goto LABEL_15;
      }

      v17 = 0;
      v19 = 1;
LABEL_28:

      v29 = *(v8 + 16);
      if (v29)
      {
        v58 = v19;
        sub_1B4BCF09C(0, v29, 0);
        v30 = v5;
        v31 = (v8 + 32);
        v32 = v30[2];
        do
        {
          v34 = *v31++;
          v33 = v34;
          v62 = v30;
          v35 = v30[3];
          v36 = v32 + 1;
          if (v32 >= v35 >> 1)
          {
            sub_1B4BCF09C((v35 > 1), v32 + 1, 1);
            v30 = v62;
          }

          v30[2] = v36;
          v30[v32++ + 4] = v33;
          --v29;
        }

        while (v29);
        v4 = v56;
        v5 = MEMORY[0x1E69E7CC0];
        v19 = v58;
      }

      else
      {
        v36 = v5[2];
        if (!v36)
        {

          if ((v19 & 1) == 0)
          {

LABEL_5:
            a3 = v55 + 1;
            if (v55 + 1 == a2)
            {
              return result;
            }

            goto LABEL_6;
          }

LABEL_50:

          v50 = v59;
          goto LABEL_51;
        }

        v30 = v5;
      }

      v37 = v30[4];
      v38 = v36 - 1;
      if (v36 != 1)
      {
        if (v36 > 4)
        {
          v39 = v38 & 0xFFFFFFFFFFFFFFFCLL | 1;
          v40 = vdupq_n_s64(v37);
          v41 = (v30 + 7);
          v42 = v38 & 0xFFFFFFFFFFFFFFFCLL;
          v43 = v40;
          do
          {
            v40 = vbslq_s8(vcgtq_s64(v40, v41[-1]), v40, v41[-1]);
            v43 = vbslq_s8(vcgtq_s64(v43, *v41), v43, *v41);
            v41 += 2;
            v42 -= 4;
          }

          while (v42);
          v44 = vbslq_s8(vcgtq_s64(v40, v43), v40, v43);
          v45 = vextq_s8(v44, v44, 8uLL).u64[0];
          v37 = vbsl_s8(vcgtd_s64(v44.i64[0], v45), *v44.i8, v45);
          if (v38 == (v38 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_46;
          }
        }

        else
        {
          v39 = 1;
        }

        v46 = v36 - v39;
        v47 = &v30[v39 + 4];
        do
        {
          v49 = *v47++;
          v48 = v49;
          if (v37 <= v49)
          {
            v37 = v48;
          }

          --v46;
        }

        while (v46);
      }

LABEL_46:

      if (v19)
      {
        goto LABEL_50;
      }

      v50 = v59;
      if (v17 >= v37)
      {
        goto LABEL_5;
      }

LABEL_51:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      a3 = v50 - 1;
      v51 = v7 - 3;
      v52 = *v7;
      v6 = v7[1];
      v53 = v7[2];
      *v7 = *(v7 - 3);
      v7[2] = *(v7 - 1);
      *v51 = v52;
      v51[1] = v6;
      v51[2] = v53;
      if (a3 == v57)
      {
        goto LABEL_5;
      }
    }

    sub_1B4BCF09C(0, v9, 0);
    v10 = v5;
    v11 = (v6 + 32);
    v12 = v5[2];
    do
    {
      v14 = *v11++;
      v13 = v14;
      v61 = v10;
      v15 = v10[3];
      v16 = v12 + 1;
      if (v12 >= v15 >> 1)
      {
        sub_1B4BCF09C((v15 > 1), v12 + 1, 1);
        v10 = v61;
      }

      v10[2] = v16;
      v10[v12++ + 4] = v13;
      --v9;
    }

    while (v9);
    v5 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v17 = v10[4];
    v18 = v16 - 1;
    if (v16 == 1)
    {
      v19 = 0;
      v8 = v60;
      goto LABEL_28;
    }

    v8 = v60;
    if (v16 > 4)
    {
      v20 = v18 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v21 = vdupq_n_s64(v17);
      v22 = (v10 + 7);
      v23 = v18 & 0xFFFFFFFFFFFFFFFCLL;
      v24 = v21;
      do
      {
        v21 = vbslq_s8(vcgtq_s64(v21, v22[-1]), v21, v22[-1]);
        v24 = vbslq_s8(vcgtq_s64(v24, *v22), v24, *v22);
        v22 += 2;
        v23 -= 4;
      }

      while (v23);
      v25 = vbslq_s8(vcgtq_s64(v21, v24), v21, v24);
      v26 = vextq_s8(v25, v25, 8uLL).u64[0];
      v17 = vbsl_s8(vcgtd_s64(v25.i64[0], v26), *v25.i8, v26);
      if (v18 == (v18 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_26:
        v19 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v20 = 1;
    }

    v27 = v16 - v20;
    v28 = 8 * v20 + 32;
    do
    {
      if (v17 <= *(v10 + v28))
      {
        v17 = *(v10 + v28);
      }

      v28 += 8;
      --v27;
    }

    while (v27);
    goto LABEL_26;
  }

  return result;
}

void sub_1B4CDA10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v67 = a1;
  v7 = type metadata accessor for WorkoutMilestoneEntry(0);
  v70 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = a2;
  if (a3 != a2)
  {
    v10 = *a4;
    v11 = MEMORY[0x1E69E7CC0];
    v69 = v10;
LABEL_6:
    v12 = v10 + 24 * a3;
    v14 = *(v12 + 8);
    v13 = *(v12 + 16);
    v66 = a3;
    while (1)
    {
      v73 = a3;
      v15 = (v10 + 24 * a3);
      v17 = *(v15 - 2);
      v16 = *(v15 - 1);
      v71 = v15;
      v18 = *(v14 + 16);
      v75 = v13;
      v76 = v14;
      v74 = v16;
      if (v18)
      {
        break;
      }

      v26 = v11[2];

      if (v26)
      {
        v20 = v11;
        goto LABEL_15;
      }

      v27 = 0;
      v38 = 1;
LABEL_26:

      v39 = *(v17 + 16);
      v72 = v17;
      if (v39)
      {
        v68 = v38;
        v77 = v11;
        sub_1B4BCF09C(0, v39, 0);
        v40 = v77;
        v41 = v17 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
        v42 = *(v70 + 72);
        do
        {
          sub_1B4CDF2D4(v41, v9);
          v43 = *v9;
          sub_1B4CDF338(v9);
          v77 = v40;
          v45 = v40[2];
          v44 = v40[3];
          v46 = v45 + 1;
          if (v45 >= v44 >> 1)
          {
            sub_1B4BCF09C((v44 > 1), v45 + 1, 1);
            v40 = v77;
          }

          v40[2] = v46;
          v40[v45 + 4] = v43;
          v41 += v42;
          --v39;
        }

        while (v39);
        v10 = v69;
        v11 = MEMORY[0x1E69E7CC0];
        LOBYTE(v38) = v68;
      }

      else
      {
        v46 = v11[2];
        if (!v46)
        {

          if ((v38 & 1) == 0)
          {

LABEL_5:
            a3 = v66 + 1;
            if (v66 + 1 == v65)
            {
              return;
            }

            goto LABEL_6;
          }

LABEL_49:

          v60 = v73;
          goto LABEL_50;
        }

        v40 = v11;
      }

      v47 = v40[4];
      v48 = v46 - 1;
      if (v46 != 1)
      {
        if (v46 > 4)
        {
          v49 = v48 & 0xFFFFFFFFFFFFFFFCLL | 1;
          v50 = vdupq_n_s64(v47);
          v51 = (v40 + 7);
          v52 = v48 & 0xFFFFFFFFFFFFFFFCLL;
          v53 = v50;
          do
          {
            v50 = vbslq_s8(vcgtq_s64(v50, v51[-1]), v50, v51[-1]);
            v53 = vbslq_s8(vcgtq_s64(v53, *v51), v53, *v51);
            v51 += 2;
            v52 -= 4;
          }

          while (v52);
          v54 = vbslq_s8(vcgtq_s64(v50, v53), v50, v53);
          v55 = vextq_s8(v54, v54, 8uLL).u64[0];
          v47 = vbsl_s8(vcgtd_s64(v54.i64[0], v55), *v54.i8, v55);
          if (v48 == (v48 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_44;
          }
        }

        else
        {
          v49 = 1;
        }

        v56 = v46 - v49;
        v57 = &v40[v49 + 4];
        do
        {
          v59 = *v57++;
          v58 = v59;
          if (v47 <= v59)
          {
            v47 = v58;
          }

          --v56;
        }

        while (v56);
      }

LABEL_44:

      if (v38)
      {
        goto LABEL_49;
      }

      v60 = v73;
      if (v27 >= v47)
      {
        goto LABEL_5;
      }

LABEL_50:
      if (!v10)
      {
        __break(1u);
        return;
      }

      a3 = v60 - 1;
      v61 = v71;
      v62 = v71 - 3;
      v63 = *v71;
      v14 = v71[1];
      v13 = v71[2];
      *v71 = *(v71 - 3);
      v61[2] = *(v61 - 1);
      *v62 = v63;
      v62[1] = v14;
      v62[2] = v13;
      if (a3 == v67)
      {
        goto LABEL_5;
      }
    }

    v77 = v11;

    v19 = v17;

    sub_1B4BCF09C(0, v18, 0);
    v20 = v77;
    v21 = v14 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v22 = *(v70 + 72);
    do
    {
      sub_1B4CDF2D4(v21, v9);
      v23 = *v9;
      sub_1B4CDF338(v9);
      v77 = v20;
      v25 = v20[2];
      v24 = v20[3];
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        sub_1B4BCF09C((v24 > 1), v25 + 1, 1);
        v20 = v77;
      }

      v20[2] = v26;
      v20[v25 + 4] = v23;
      v21 += v22;
      --v18;
    }

    while (v18);
    v11 = MEMORY[0x1E69E7CC0];
    v17 = v19;
    v10 = v69;
LABEL_15:
    v27 = v20[4];
    v28 = v26 - 1;
    if (v26 != 1)
    {
      if (v26 <= 4)
      {
        v29 = 1;
        goto LABEL_21;
      }

      v29 = v28 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v30 = vdupq_n_s64(v27);
      v31 = (v20 + 7);
      v32 = v28 & 0xFFFFFFFFFFFFFFFCLL;
      v33 = v30;
      do
      {
        v30 = vbslq_s8(vcgtq_s64(v30, v31[-1]), v30, v31[-1]);
        v33 = vbslq_s8(vcgtq_s64(v33, *v31), v33, *v31);
        v31 += 2;
        v32 -= 4;
      }

      while (v32);
      v34 = vbslq_s8(vcgtq_s64(v30, v33), v30, v33);
      v35 = vextq_s8(v34, v34, 8uLL).u64[0];
      v27 = vbsl_s8(vcgtd_s64(v34.i64[0], v35), *v34.i8, v35);
      if (v28 != (v28 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_21:
        v36 = v26 - v29;
        v37 = 8 * v29 + 32;
        do
        {
          if (v27 <= *(v20 + v37))
          {
            v27 = *(v20 + v37);
          }

          v37 += 8;
          --v36;
        }

        while (v36);
      }
    }

    v38 = 0;
    goto LABEL_26;
  }
}

void sub_1B4CDA620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for WorkoutMilestoneEntry(0);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_1B4CDF2D4(v22, v16);
      sub_1B4CDF2D4(v19, v12);
      v23 = *v16;
      v24 = *v12;
      sub_1B4CDF338(v12);
      sub_1B4CDF338(v16);
      if (v23 >= v24)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_1B4CDF394(v22, v9);
      swift_arrayInitWithTakeFrontToBack();
      sub_1B4CDF394(v9, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B4CDA818(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v185 = result;
  v8 = a3[1];
  v9 = MEMORY[0x1E69E7CC0];
  if (v8 < 1)
  {
LABEL_182:
    v5 = *v185;
    if (!*v185)
    {
      goto LABEL_221;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_215;
    }

    goto LABEL_184;
  }

  v10 = 0;
  while (1)
  {
    v11 = v10;
    v12 = v10 + 1;
    v188 = v9;
    v196 = v11;
    if (v12 < v8)
    {
      v198 = v8;
      v189 = v6;
      v13 = v12;
      v14 = *(*v7 + 24 * v12 + 8);
      v194 = *v7;
      v15 = *(*v7 + 24 * v11 + 8);

      sub_1B4CD5C34(v14, &v202);
      v16 = v202;
      v17 = v203;
      sub_1B4CD5C34(v15, &v200);
      v18 = v200;
      v5 = v201;

      if (v17)
      {
        v19 = 1;
      }

      else
      {
        v19 = (v16 < v18) & ~v5;
      }

      v197 = v19;
      v20 = v196 + 2;
      v9 = v188;
      v6 = v189;
      v7 = a3;
      if (v196 + 2 < v198)
      {
        v12 = v13;
        while (1)
        {
          v190 = v6;
          v192 = v20;
          v22 = *(v194 + 24 * v20 + 8);
          v23 = *(v194 + 24 * v12 + 8);
          v24 = *(v22 + 16);
          if (v24)
          {
            break;
          }

          v32 = MEMORY[0x1E69E7CC0];
          v31 = *(MEMORY[0x1E69E7CC0] + 16);

          if (v31)
          {
            v25 = v32;
            goto LABEL_20;
          }

          v33 = 0;
          v5 = 1;
LABEL_31:

          v44 = *(v23 + 16);
          if (v44)
          {
            v45 = v5;
            v202 = v32;
            sub_1B4BCF09C(0, v44, 0);
            v46 = v202;
            v47 = (v23 + 32);
            v48 = v202[2];
            do
            {
              v50 = *v47++;
              v49 = v50;
              v202 = v46;
              v51 = v46[3];
              v52 = v48 + 1;
              if (v48 >= v51 >> 1)
              {
                sub_1B4BCF09C((v51 > 1), v48 + 1, 1);
                v46 = v202;
              }

              v46[2] = v52;
              v46[v48++ + 4] = v49;
              --v44;
            }

            while (v44);
            v9 = v188;
            v5 = v45;
          }

          else
          {
            v52 = v32[2];
            if (!v52)
            {

              if ((v5 & 1) == 0)
              {
                v6 = v190;
                v12 = v192;
                v7 = a3;
                v21 = v198;
                if (v197)
                {
                  goto LABEL_60;
                }

                goto LABEL_11;
              }

              goto LABEL_51;
            }

            v46 = v32;
          }

          v53 = v46[4];
          v54 = v52 - 1;
          if (v52 != 1)
          {
            if (v52 > 4)
            {
              v55 = v54 & 0xFFFFFFFFFFFFFFFCLL | 1;
              v56 = vdupq_n_s64(v53);
              v57 = (v46 + 7);
              v58 = v54 & 0xFFFFFFFFFFFFFFFCLL;
              v59 = v56;
              do
              {
                v56 = vbslq_s8(vcgtq_s64(v56, v57[-1]), v56, v57[-1]);
                v59 = vbslq_s8(vcgtq_s64(v59, *v57), v59, *v57);
                v57 += 2;
                v58 -= 4;
              }

              while (v58);
              v60 = vbslq_s8(vcgtq_s64(v56, v59), v56, v59);
              v61 = vextq_s8(v60, v60, 8uLL).u64[0];
              v53 = vbsl_s8(vcgtd_s64(v60.i64[0], v61), *v60.i8, v61);
              if (v54 == (v54 & 0xFFFFFFFFFFFFFFFCLL))
              {
                goto LABEL_49;
              }
            }

            else
            {
              v55 = 1;
            }

            v62 = v52 - v55;
            v63 = &v46[v55 + 4];
            do
            {
              v65 = *v63++;
              v64 = v65;
              if (v53 <= v65)
              {
                v53 = v64;
              }

              --v62;
            }

            while (v62);
          }

LABEL_49:

          if (v5)
          {

LABEL_51:
            v6 = v190;
            v12 = v192;
            v7 = a3;
            v21 = v198;
            if ((v197 & 1) == 0)
            {
              goto LABEL_68;
            }

            goto LABEL_11;
          }

          v6 = v190;
          v12 = v192;
          v7 = a3;
          v21 = v198;
          if (v197 == v33 >= v53)
          {
            v20 = v192;
            goto LABEL_59;
          }

LABEL_11:
          v20 = v12 + 1;
          if (v12 + 1 == v21)
          {
            v20 = v21;
            goto LABEL_59;
          }
        }

        v202 = MEMORY[0x1E69E7CC0];

        sub_1B4BCF09C(0, v24, 0);
        v25 = v202;
        v26 = (v22 + 32);
        v27 = v202[2];
        do
        {
          v29 = *v26++;
          v28 = v29;
          v202 = v25;
          v30 = v25[3];
          v31 = v27 + 1;
          if (v27 >= v30 >> 1)
          {
            sub_1B4BCF09C((v30 > 1), v27 + 1, 1);
            v25 = v202;
          }

          v25[2] = v31;
          v25[v27++ + 4] = v28;
          --v24;
        }

        while (v24);
        v9 = v188;
        v32 = MEMORY[0x1E69E7CC0];
LABEL_20:
        v33 = v25[4];
        v34 = v31 - 1;
        if (v31 != 1)
        {
          if (v31 <= 4)
          {
            v35 = 1;
            goto LABEL_26;
          }

          v35 = v34 & 0xFFFFFFFFFFFFFFFCLL | 1;
          v36 = vdupq_n_s64(v33);
          v37 = (v25 + 7);
          v38 = v34 & 0xFFFFFFFFFFFFFFFCLL;
          v39 = v36;
          do
          {
            v36 = vbslq_s8(vcgtq_s64(v36, v37[-1]), v36, v37[-1]);
            v39 = vbslq_s8(vcgtq_s64(v39, *v37), v39, *v37);
            v37 += 2;
            v38 -= 4;
          }

          while (v38);
          v40 = vbslq_s8(vcgtq_s64(v36, v39), v36, v39);
          v41 = vextq_s8(v40, v40, 8uLL).u64[0];
          v33 = vbsl_s8(vcgtd_s64(v40.i64[0], v41), *v40.i8, v41);
          if (v34 != (v34 & 0xFFFFFFFFFFFFFFFCLL))
          {
LABEL_26:
            v42 = v31 - v35;
            v43 = 8 * v35 + 32;
            do
            {
              if (v33 <= *(v25 + v43))
              {
                v33 = *(v25 + v43);
              }

              v43 += 8;
              --v42;
            }

            while (v42);
          }
        }

        v5 = 0;
        goto LABEL_31;
      }

LABEL_59:
      v12 = v20;
      if (v197)
      {
LABEL_60:
        v66 = v196;
        if (v12 < v196)
        {
          goto LABEL_214;
        }

        if (v196 < v12)
        {
          v67 = 0;
          v68 = v12;
          v69 = 24 * v12;
          v70 = 24 * v196;
          do
          {
            v71 = v68;
            if (v66 != v68 + v67 - 1)
            {
              v72 = *v7;
              if (!*v7)
              {
                goto LABEL_218;
              }

              v73 = v72 + v70;
              v74 = v72 + v69;
              v75 = *v73;
              v76 = *(v73 + 8);
              v77 = *(v74 - 24);
              *(v73 + 16) = *(v74 - 8);
              *v73 = v77;
              *(v74 - 24) = v75;
              *(v74 - 16) = v76;
            }

            ++v66;
            --v67;
            v68 = v71;
            v69 -= 24;
            v70 += 24;
          }

          while (v66 < v71 + v67);
          v12 = v71;
        }
      }
    }

LABEL_68:
    v78 = v7[1];
    if (v12 >= v78)
    {
      goto LABEL_131;
    }

    v79 = v12;
    v149 = __OFSUB__(v12, v196);
    v80 = v12 - v196;
    if (v149)
    {
      goto LABEL_211;
    }

    if (v80 >= a4)
    {
      v12 = v79;
LABEL_131:
      if (v12 < v196)
      {
        goto LABEL_210;
      }

      goto LABEL_132;
    }

    if (__OFADD__(v196, a4))
    {
      goto LABEL_212;
    }

    if (v196 + a4 >= v78)
    {
      v81 = v7[1];
    }

    else
    {
      v81 = v196 + a4;
    }

    if (v81 < v196)
    {
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      result = sub_1B4CDDE84(v9);
      v9 = result;
LABEL_184:
      v204 = v9;
      v179 = v9;
      v180 = *(v9 + 16);
      if (v180 >= 2)
      {
        v9 = 24;
        while (*v7)
        {
          v181 = *&v179[16 * v180];
          v182 = *&v179[16 * v180 + 24];
          sub_1B4CDD33C((*v7 + 24 * v181), (*v7 + 24 * *&v179[16 * v180 + 16]), *v7 + 24 * v182, v5, sub_1B4CD5C34);
          if (v6)
          {
          }

          if (v182 < v181)
          {
            goto LABEL_208;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v179 = sub_1B4CDDE84(v179);
          }

          if (v180 - 2 >= *(v179 + 2))
          {
            goto LABEL_209;
          }

          v183 = &v179[16 * v180];
          *v183 = v181;
          *(v183 + 1) = v182;
          v204 = v179;
          result = sub_1B4CDDDF8(v180 - 1);
          v179 = v204;
          v180 = *(v204 + 16);
          if (v180 <= 1)
          {
          }
        }

        goto LABEL_219;
      }
    }

    v12 = v79;
    if (v79 != v81)
    {
      break;
    }

    if (v79 < v196)
    {
      goto LABEL_210;
    }

LABEL_132:
    v132 = v12;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B4A1D58C(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v134 = *(v9 + 16);
    v133 = *(v9 + 24);
    v135 = v134 + 1;
    if (v134 >= v133 >> 1)
    {
      result = sub_1B4A1D58C((v133 > 1), v134 + 1, 1, v9);
      v10 = v132;
      v9 = result;
    }

    else
    {
      v10 = v132;
    }

    *(v9 + 16) = v135;
    v136 = v9 + 16 * v134;
    *(v136 + 32) = v196;
    *(v136 + 40) = v10;
    v137 = *v185;
    if (!*v185)
    {
      goto LABEL_220;
    }

    if (v134)
    {
      while (1)
      {
        v138 = v135 - 1;
        if (v135 >= 4)
        {
          break;
        }

        if (v135 == 3)
        {
          v139 = *(v9 + 32);
          v140 = *(v9 + 40);
          v149 = __OFSUB__(v140, v139);
          v141 = v140 - v139;
          v142 = v149;
LABEL_151:
          if (v142)
          {
            goto LABEL_199;
          }

          v155 = (v9 + 16 * v135);
          v157 = *v155;
          v156 = v155[1];
          v158 = __OFSUB__(v156, v157);
          v159 = v156 - v157;
          v160 = v158;
          if (v158)
          {
            goto LABEL_202;
          }

          v161 = (v9 + 32 + 16 * v138);
          v163 = *v161;
          v162 = v161[1];
          v149 = __OFSUB__(v162, v163);
          v164 = v162 - v163;
          if (v149)
          {
            goto LABEL_205;
          }

          if (__OFADD__(v159, v164))
          {
            goto LABEL_206;
          }

          if (v159 + v164 >= v141)
          {
            if (v141 < v164)
            {
              v138 = v135 - 2;
            }

            goto LABEL_172;
          }

          goto LABEL_165;
        }

        v165 = (v9 + 16 * v135);
        v167 = *v165;
        v166 = v165[1];
        v149 = __OFSUB__(v166, v167);
        v159 = v166 - v167;
        v160 = v149;
LABEL_165:
        if (v160)
        {
          goto LABEL_201;
        }

        v168 = v9 + 16 * v138;
        v170 = *(v168 + 32);
        v169 = *(v168 + 40);
        v149 = __OFSUB__(v169, v170);
        v171 = v169 - v170;
        if (v149)
        {
          goto LABEL_204;
        }

        if (v171 < v159)
        {
          v10 = v132;
          goto LABEL_3;
        }

LABEL_172:
        v176 = v138 - 1;
        if (v138 - 1 >= v135)
        {
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
          goto LABEL_213;
        }

        if (!*v7)
        {
          goto LABEL_217;
        }

        v177 = *(v9 + 32 + 16 * v176);
        v5 = *(v9 + 32 + 16 * v138 + 8);
        sub_1B4CDD33C((*v7 + 24 * v177), (*v7 + 24 * *(v9 + 32 + 16 * v138)), *v7 + 24 * v5, v137, sub_1B4CD5C34);
        if (v6)
        {
        }

        if (v5 < v177)
        {
          goto LABEL_195;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B4CDDE84(v9);
        }

        if (v176 >= *(v9 + 16))
        {
          goto LABEL_196;
        }

        v178 = v9 + 16 * v176;
        *(v178 + 32) = v177;
        *(v178 + 40) = v5;
        v204 = v9;
        result = sub_1B4CDDDF8(v138);
        v9 = v204;
        v135 = *(v204 + 16);
        v10 = v132;
        if (v135 <= 1)
        {
          goto LABEL_3;
        }
      }

      v143 = v9 + 32 + 16 * v135;
      v144 = *(v143 - 64);
      v145 = *(v143 - 56);
      v149 = __OFSUB__(v145, v144);
      v146 = v145 - v144;
      if (v149)
      {
        goto LABEL_197;
      }

      v148 = *(v143 - 48);
      v147 = *(v143 - 40);
      v149 = __OFSUB__(v147, v148);
      v141 = v147 - v148;
      v142 = v149;
      if (v149)
      {
        goto LABEL_198;
      }

      v150 = (v9 + 16 * v135);
      v152 = *v150;
      v151 = v150[1];
      v149 = __OFSUB__(v151, v152);
      v153 = v151 - v152;
      if (v149)
      {
        goto LABEL_200;
      }

      v149 = __OFADD__(v141, v153);
      v154 = v141 + v153;
      if (v149)
      {
        goto LABEL_203;
      }

      if (v154 >= v146)
      {
        v172 = (v9 + 32 + 16 * v138);
        v174 = *v172;
        v173 = v172[1];
        v149 = __OFSUB__(v173, v174);
        v175 = v173 - v174;
        if (v149)
        {
          goto LABEL_207;
        }

        if (v141 < v175)
        {
          v138 = v135 - 2;
        }

        goto LABEL_172;
      }

      goto LABEL_151;
    }

LABEL_3:
    v8 = v7[1];
    if (v10 >= v8)
    {
      goto LABEL_182;
    }
  }

  v191 = v6;
  v82 = *v7;
  v83 = MEMORY[0x1E69E7CC0];
  v186 = v81;
  v195 = *v7;
  while (2)
  {
    v84 = *(v82 + 24 * v12 + 8);
    v193 = v12;
    v85 = v12;
LABEL_84:
    v86 = (v82 + 24 * v85);
    v87 = *(v86 - 2);
    v88 = *(v84 + 16);
    v199 = v85;
    if (v88)
    {
      v202 = v83;

      v89 = v87;

      sub_1B4BCF09C(0, v88, 0);
      v90 = v202;
      v91 = (v84 + 32);
      v92 = v202[2];
      do
      {
        v94 = *v91++;
        v93 = v94;
        v202 = v90;
        v95 = v90[3];
        v5 = v92 + 1;
        if (v92 >= v95 >> 1)
        {
          sub_1B4BCF09C((v95 > 1), v92 + 1, 1);
          v90 = v202;
        }

        v90[2] = v5;
        v90[v92++ + 4] = v93;
        --v88;
      }

      while (v88);
      v87 = v89;
      v83 = MEMORY[0x1E69E7CC0];
LABEL_92:
      v96 = v90[4];
      v97 = v5 - 1;
      if (v5 != 1)
      {
        if (v5 > 4)
        {
          v98 = v97 & 0xFFFFFFFFFFFFFFFCLL | 1;
          v99 = vdupq_n_s64(v96);
          v100 = (v90 + 7);
          v101 = v97 & 0xFFFFFFFFFFFFFFFCLL;
          v102 = v99;
          do
          {
            v99 = vbslq_s8(vcgtq_s64(v99, v100[-1]), v99, v100[-1]);
            v102 = vbslq_s8(vcgtq_s64(v102, *v100), v102, *v100);
            v100 += 2;
            v101 -= 4;
          }

          while (v101);
          v103 = vbslq_s8(vcgtq_s64(v99, v102), v99, v102);
          v104 = vextq_s8(v103, v103, 8uLL).u64[0];
          v96 = vbsl_s8(vcgtd_s64(v103.i64[0], v104), *v103.i8, v104);
          if (v97 != (v97 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_98;
          }
        }

        else
        {
          v98 = 1;
LABEL_98:
          v105 = v5 - v98;
          v106 = 8 * v98 + 32;
          do
          {
            if (v96 <= *(v90 + v106))
            {
              v96 = *(v90 + v106);
            }

            v106 += 8;
            --v105;
          }

          while (v105);
        }
      }

      v107 = 0;
    }

    else
    {
      v5 = v83[2];

      if (v5)
      {
        v90 = v83;
        goto LABEL_92;
      }

      v96 = 0;
      v107 = 1;
    }

    v108 = *(v87 + 16);
    if (!v108)
    {
      v114 = v83[2];
      if (v114)
      {
        v109 = v83;
        goto LABEL_111;
      }

      if ((v107 & 1) == 0)
      {

        v82 = v195;
LABEL_82:
        v12 = v193 + 1;
        if (v193 + 1 == v186)
        {
          v12 = v186;
          v9 = v188;
          v6 = v191;
          v7 = a3;
          goto LABEL_131;
        }

        continue;
      }

LABEL_126:

      v82 = v195;
      v128 = v199;
      goto LABEL_127;
    }

    break;
  }

  v202 = v83;
  sub_1B4BCF09C(0, v108, 0);
  v109 = v202;
  v110 = (v87 + 32);
  v5 = v202[2];
  do
  {
    v112 = *v110++;
    v111 = v112;
    v202 = v109;
    v113 = v109[3];
    v114 = v5 + 1;
    if (v5 >= v113 >> 1)
    {
      sub_1B4BCF09C((v113 > 1), v5 + 1, 1);
      v109 = v202;
    }

    v109[2] = v114;
    v109[v5++ + 4] = v111;
    --v108;
  }

  while (v108);
  v83 = MEMORY[0x1E69E7CC0];
LABEL_111:
  v115 = v109[4];
  v116 = v114 - 1;
  if (v114 != 1)
  {
    if (v114 > 4)
    {
      v117 = v116 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v118 = vdupq_n_s64(v115);
      v119 = (v109 + 7);
      v120 = v116 & 0xFFFFFFFFFFFFFFFCLL;
      v121 = v118;
      do
      {
        v118 = vbslq_s8(vcgtq_s64(v118, v119[-1]), v118, v119[-1]);
        v121 = vbslq_s8(vcgtq_s64(v121, *v119), v121, *v119);
        v119 += 2;
        v120 -= 4;
      }

      while (v120);
      v122 = vbslq_s8(vcgtq_s64(v118, v121), v118, v121);
      v123 = vextq_s8(v122, v122, 8uLL).u64[0];
      v115 = vbsl_s8(vcgtd_s64(v122.i64[0], v123), *v122.i8, v123);
      if (v116 != (v116 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_117;
      }
    }

    else
    {
      v117 = 1;
LABEL_117:
      v124 = v114 - v117;
      v125 = &v109[v117 + 4];
      do
      {
        v127 = *v125++;
        v126 = v127;
        if (v115 <= v127)
        {
          v115 = v126;
        }

        --v124;
      }

      while (v124);
    }
  }

  if (v107)
  {
    goto LABEL_126;
  }

  v82 = v195;
  v128 = v199;
  if (v96 >= v115)
  {
    goto LABEL_82;
  }

LABEL_127:
  if (v82)
  {
    v85 = v128 - 1;
    v129 = v86 - 3;
    v130 = *v86;
    v84 = v86[1];
    v131 = v86[2];
    *v86 = *(v86 - 3);
    v86[2] = *(v86 - 1);
    *v129 = v130;
    v129[1] = v84;
    v129[2] = v131;
    if (v85 == v196)
    {
      goto LABEL_82;
    }

    goto LABEL_84;
  }

  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
  return result;
}

void sub_1B4CDB658(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v187 = a4;
  v188 = a1;
  v7 = type metadata accessor for WorkoutMilestoneEntry(0);
  v196 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v187 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v191 = a3;
  v10 = *(a3 + 1);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10 < 1)
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_4:
    a3 = *v188;
    if (!*v188)
    {
      goto LABEL_225;
    }

    v4 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v192;
    if (isUniquelyReferenced_nonNull_native)
    {
      v15 = v4;
LABEL_7:
      v208 = v15;
      v4 = *(v15 + 2);
      if (v4 >= 2)
      {
        while (*v191)
        {
          v16 = *&v15[16 * v4];
          v17 = v15;
          v18 = *&v15[16 * v4 + 24];
          sub_1B4CDD33C((*v191 + 24 * v16), (*v191 + 24 * *&v15[16 * v4 + 16]), *v191 + 24 * v18, a3, sub_1B4CD5DC4);
          if (v5)
          {
            goto LABEL_197;
          }

          if (v18 < v16)
          {
            goto LABEL_212;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_1B4CDDE84(v17);
          }

          if (v4 - 2 >= *(v17 + 2))
          {
            goto LABEL_213;
          }

          v19 = &v17[16 * v4];
          *v19 = v16;
          *(v19 + 1) = v18;
          v208 = v17;
          sub_1B4CDDDF8(v4 - 1);
          v15 = v208;
          v4 = *(v208 + 2);
          if (v4 <= 1)
          {
            goto LABEL_197;
          }
        }

        goto LABEL_223;
      }

LABEL_197:

      return;
    }

LABEL_219:
    v15 = sub_1B4CDDE84(v4);
    goto LABEL_7;
  }

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v20 = v12;
    v21 = v12 + 1;
    v190 = v13;
    v195 = v20;
    if (v21 >= v10)
    {
      goto LABEL_81;
    }

    v198 = v10;
    v22 = *v191;
    v193 = v21;
    v194 = v22;
    v23 = &v22[24 * v21];
    a3 = *(v23 + 1);
    v4 = *(v23 + 2);
    v24 = *&v22[24 * v20 + 8];

    sub_1B4CD5DC4(a3, &v206);
    v25 = v206;
    v26 = v207;
    sub_1B4CD5DC4(v24, &v204);
    v5 = v204;
    v27 = v205;

    if (v26)
    {
      v28 = 1;
    }

    else
    {
      v28 = (v25 < v5) & ~v27;
    }

    v197 = v28;
    v29 = v195 + 2;
    v11 = MEMORY[0x1E69E7CC0];
    v21 = v193;
    if (v195 + 2 < v198)
    {
      while (1)
      {
        v31 = &v194[24 * v21];
        v193 = v29;
        v32 = &v194[24 * v29];
        v34 = *(v32 + 1);
        v33 = *(v32 + 2);
        v35 = *(v31 + 1);
        v36 = *(v34 + 16);
        v202 = *(v31 + 2);
        v203 = v35;
        v200 = v33;
        v201 = v34;
        if (v36)
        {
          break;
        }

        v42 = v11[2];

        if (v42)
        {
          v4 = v11;
          goto LABEL_33;
        }

        v5 = 0;
        v53 = 1;
        v4 = v11;
LABEL_44:

        v54 = *(v35 + 16);
        if (v54)
        {
          LODWORD(v199) = v53;
          v206 = v11;
          sub_1B4BCF09C(0, v54, 0);
          v4 = v206;
          v55 = v35 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
          v56 = *(v196 + 72);
          do
          {
            sub_1B4CDF2D4(v55, v9);
            v57 = *v9;
            sub_1B4CDF338(v9);
            v206 = v4;
            v59 = *(v4 + 16);
            v58 = *(v4 + 24);
            a3 = (v59 + 1);
            if (v59 >= v58 >> 1)
            {
              sub_1B4BCF09C((v58 > 1), v59 + 1, 1);
              v4 = v206;
            }

            *(v4 + 16) = a3;
            *(v4 + 8 * v59 + 32) = v57;
            v55 += v56;
            --v54;
          }

          while (v54);
          v11 = MEMORY[0x1E69E7CC0];
          LOBYTE(v53) = v199;
        }

        else
        {
          a3 = v11[2];
          if (!a3)
          {

            if ((v53 & 1) == 0)
            {
              v21 = v193;
              v30 = v198;
              if (v197)
              {
                goto LABEL_73;
              }

              goto LABEL_24;
            }

            goto LABEL_64;
          }

          v4 = v11;
        }

        v60 = *(v4 + 32);
        v61 = a3 - 1;
        if (a3 != 1)
        {
          if (a3 > 4)
          {
            v62 = v61 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v63 = vdupq_n_s64(v60);
            v64 = (v4 + 56);
            v65 = v61 & 0xFFFFFFFFFFFFFFFCLL;
            v66 = v63;
            do
            {
              v63 = vbslq_s8(vcgtq_s64(v63, v64[-1]), v63, v64[-1]);
              v66 = vbslq_s8(vcgtq_s64(v66, *v64), v66, *v64);
              v64 += 2;
              v65 -= 4;
            }

            while (v65);
            v67 = vbslq_s8(vcgtq_s64(v63, v66), v63, v66);
            v68 = vextq_s8(v67, v67, 8uLL).u64[0];
            v60 = vbsl_s8(vcgtd_s64(v67.i64[0], v68), *v67.i8, v68);
            if (v61 == (v61 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_62;
            }
          }

          else
          {
            v62 = 1;
          }

          v69 = &a3[-v62];
          v70 = (v4 + 8 * v62 + 32);
          do
          {
            v72 = *v70++;
            v71 = v72;
            if (v60 <= v72)
            {
              v60 = v71;
            }

            --v69;
          }

          while (v69);
        }

LABEL_62:

        if (v53)
        {

LABEL_64:
          v21 = v193;
          v30 = v198;
          if ((v197 & 1) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_24;
        }

        v21 = v193;
        v30 = v198;
        if (v197 == v5 >= v60)
        {
          v29 = v193;
          goto LABEL_72;
        }

LABEL_24:
        v29 = v21 + 1;
        if ((v21 + 1) == v30)
        {
          v29 = v30;
          goto LABEL_72;
        }
      }

      v206 = v11;

      sub_1B4BCF09C(0, v36, 0);
      v4 = v206;
      v37 = v34 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
      v38 = *(v196 + 72);
      do
      {
        sub_1B4CDF2D4(v37, v9);
        v39 = *v9;
        sub_1B4CDF338(v9);
        v206 = v4;
        v41 = *(v4 + 16);
        v40 = *(v4 + 24);
        v42 = v41 + 1;
        if (v41 >= v40 >> 1)
        {
          sub_1B4BCF09C((v40 > 1), v41 + 1, 1);
          v4 = v206;
        }

        *(v4 + 16) = v42;
        *(v4 + 8 * v41 + 32) = v39;
        v37 += v38;
        --v36;
      }

      while (v36);
      v35 = v203;
LABEL_33:
      v5 = *(v4 + 32);
      v43 = v42 - 1;
      if (v42 != 1)
      {
        if (v42 <= 4)
        {
          v44 = 1;
          goto LABEL_39;
        }

        v44 = v43 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v45 = vdupq_n_s64(v5);
        v46 = (v4 + 56);
        v47 = v43 & 0xFFFFFFFFFFFFFFFCLL;
        v48 = v45;
        do
        {
          v45 = vbslq_s8(vcgtq_s64(v45, v46[-1]), v45, v46[-1]);
          v48 = vbslq_s8(vcgtq_s64(v48, *v46), v48, *v46);
          v46 += 2;
          v47 -= 4;
        }

        while (v47);
        v49 = vbslq_s8(vcgtq_s64(v45, v48), v45, v48);
        v50 = vextq_s8(v49, v49, 8uLL).u64[0];
        v5 = vbsl_s8(vcgtd_s64(v49.i64[0], v50), *v49.i8, v50);
        if (v43 != (v43 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_39:
          v51 = v42 - v44;
          v52 = 8 * v44 + 32;
          do
          {
            if (v5 <= *(v4 + v52))
            {
              v5 = *(v4 + v52);
            }

            v52 += 8;
            --v51;
          }

          while (v51);
        }
      }

      v53 = 0;
      goto LABEL_44;
    }

LABEL_72:
    v21 = v29;
    if (v197)
    {
LABEL_73:
      v73 = v195;
      if (v21 < v195)
      {
        goto LABEL_218;
      }

      if (v195 < v21)
      {
        v74 = 0;
        v75 = v21;
        v76 = 24 * v21;
        v77 = 24 * v195;
        do
        {
          v78 = v75;
          if (v73 != v75 + v74 - 1)
          {
            v79 = *v191;
            if (!*v191)
            {
              goto LABEL_222;
            }

            v80 = &v79[v77];
            v81 = &v79[v76];
            v82 = *v80;
            v83 = *(v80 + 8);
            v84 = *(v81 - 24);
            *(v80 + 2) = *(v81 - 1);
            *v80 = v84;
            *(v81 - 3) = v82;
            *(v81 - 1) = v83;
          }

          ++v73;
          --v74;
          v75 = v78;
          v76 -= 24;
          v77 += 24;
        }

        while (v73 < v78 + v74);
        v21 = v78;
      }
    }

LABEL_81:
    v85 = *(v191 + 1);
    if (v21 >= v85)
    {
      goto LABEL_145;
    }

    v86 = v21;
    v155 = __OFSUB__(v21, v195);
    v87 = v21 - v195;
    if (v155)
    {
      goto LABEL_215;
    }

    if (v87 >= v187)
    {
      v21 = v86;
LABEL_145:
      if (v21 < v195)
      {
        goto LABEL_214;
      }

      goto LABEL_146;
    }

    if (__OFADD__(v195, v187))
    {
      goto LABEL_216;
    }

    if (v195 + v187 >= v85)
    {
      v88 = *(v191 + 1);
    }

    else
    {
      v88 = v195 + v187;
    }

    if (v88 < v195)
    {
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
      goto LABEL_219;
    }

    v21 = v86;
    if (v86 != v88)
    {
      break;
    }

    if (v86 < v195)
    {
      goto LABEL_214;
    }

LABEL_146:
    v139 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v13 = v190;
    }

    else
    {
      v13 = sub_1B4A1D58C(0, *(v190 + 2) + 1, 1, v190);
    }

    v141 = *(v13 + 2);
    v140 = *(v13 + 3);
    v4 = v141 + 1;
    if (v141 >= v140 >> 1)
    {
      v186 = sub_1B4A1D58C((v140 > 1), v141 + 1, 1, v13);
      v12 = v139;
      v13 = v186;
    }

    else
    {
      v12 = v139;
    }

    *(v13 + 2) = v4;
    v142 = &v13[16 * v141];
    *(v142 + 4) = v195;
    *(v142 + 5) = v12;
    a3 = *v188;
    if (!*v188)
    {
      goto LABEL_224;
    }

    if (v141)
    {
      while (1)
      {
        v143 = v4 - 1;
        v144 = v13;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v145 = *(v13 + 4);
          v146 = *(v13 + 5);
          v155 = __OFSUB__(v146, v145);
          v147 = v146 - v145;
          v148 = v155;
LABEL_165:
          if (v148)
          {
            goto LABEL_203;
          }

          v161 = &v13[16 * v4];
          v163 = *v161;
          v162 = *(v161 + 1);
          v164 = __OFSUB__(v162, v163);
          v165 = v162 - v163;
          v166 = v164;
          if (v164)
          {
            goto LABEL_206;
          }

          v167 = &v13[16 * v143 + 32];
          v169 = *v167;
          v168 = *(v167 + 1);
          v155 = __OFSUB__(v168, v169);
          v170 = v168 - v169;
          if (v155)
          {
            goto LABEL_209;
          }

          if (__OFADD__(v165, v170))
          {
            goto LABEL_210;
          }

          if (v165 + v170 >= v147)
          {
            if (v147 < v170)
            {
              v143 = v4 - 2;
            }

            goto LABEL_186;
          }

          goto LABEL_179;
        }

        v171 = &v13[16 * v4];
        v173 = *v171;
        v172 = *(v171 + 1);
        v155 = __OFSUB__(v172, v173);
        v165 = v172 - v173;
        v166 = v155;
LABEL_179:
        if (v166)
        {
          goto LABEL_205;
        }

        v174 = &v13[16 * v143];
        v176 = *(v174 + 4);
        v175 = *(v174 + 5);
        v155 = __OFSUB__(v175, v176);
        v177 = v175 - v176;
        if (v155)
        {
          goto LABEL_208;
        }

        if (v177 < v165)
        {
          v12 = v139;
          goto LABEL_16;
        }

LABEL_186:
        v182 = v143 - 1;
        if (v143 - 1 >= v4)
        {
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
          goto LABEL_217;
        }

        if (!*v191)
        {
          goto LABEL_221;
        }

        v4 = *&v13[16 * v182 + 32];
        v183 = *&v13[16 * v143 + 40];
        v184 = v192;
        sub_1B4CDD33C((*v191 + 24 * v4), (*v191 + 24 * *&v13[16 * v143 + 32]), *v191 + 24 * v183, a3, sub_1B4CD5DC4);
        v192 = v184;
        if (v184)
        {
          goto LABEL_197;
        }

        if (v183 < v4)
        {
          goto LABEL_199;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v144 = sub_1B4CDDE84(v144);
        }

        if (v182 >= *(v144 + 2))
        {
          goto LABEL_200;
        }

        v185 = &v144[16 * v182];
        *(v185 + 4) = v4;
        *(v185 + 5) = v183;
        v208 = v144;
        sub_1B4CDDDF8(v143);
        v13 = v208;
        v4 = *(v208 + 2);
        v11 = MEMORY[0x1E69E7CC0];
        v12 = v139;
        if (v4 <= 1)
        {
          goto LABEL_16;
        }
      }

      v149 = &v13[16 * v4 + 32];
      v150 = *(v149 - 64);
      v151 = *(v149 - 56);
      v155 = __OFSUB__(v151, v150);
      v152 = v151 - v150;
      if (v155)
      {
        goto LABEL_201;
      }

      v154 = *(v149 - 48);
      v153 = *(v149 - 40);
      v155 = __OFSUB__(v153, v154);
      v147 = v153 - v154;
      v148 = v155;
      if (v155)
      {
        goto LABEL_202;
      }

      v156 = &v13[16 * v4];
      v158 = *v156;
      v157 = *(v156 + 1);
      v155 = __OFSUB__(v157, v158);
      v159 = v157 - v158;
      if (v155)
      {
        goto LABEL_204;
      }

      v155 = __OFADD__(v147, v159);
      v160 = v147 + v159;
      if (v155)
      {
        goto LABEL_207;
      }

      if (v160 >= v152)
      {
        v178 = &v13[16 * v143 + 32];
        v180 = *v178;
        v179 = *(v178 + 1);
        v155 = __OFSUB__(v179, v180);
        v181 = v179 - v180;
        if (v155)
        {
          goto LABEL_211;
        }

        if (v147 < v181)
        {
          v143 = v4 - 2;
        }

        goto LABEL_186;
      }

      goto LABEL_165;
    }

LABEL_16:
    v10 = *(v191 + 1);
    if (v12 >= v10)
    {
      goto LABEL_4;
    }
  }

  a3 = *v191;
  v189 = v88;
  v194 = a3;
LABEL_96:
  v89 = &a3[24 * v21];
  v91 = *(v89 + 1);
  v90 = *(v89 + 2);
  v193 = v21;
  v92 = v21;
  while (1)
  {
    v93 = &a3[24 * v92];
    v95 = *(v93 - 2);
    v94 = *(v93 - 1);
    v198 = v93;
    v96 = *(v91 + 16);
    v202 = v90;
    v203 = v91;
    v200 = v92;
    v201 = v94;
    if (v96)
    {
      v206 = v11;

      v97 = v95;

      sub_1B4BCF09C(0, v96, 0);
      v4 = v206;
      v98 = v91 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
      v99 = *(v196 + 72);
      do
      {
        sub_1B4CDF2D4(v98, v9);
        v100 = *v9;
        sub_1B4CDF338(v9);
        v206 = v4;
        v102 = *(v4 + 16);
        v101 = *(v4 + 24);
        v103 = v102 + 1;
        if (v102 >= v101 >> 1)
        {
          sub_1B4BCF09C((v101 > 1), v102 + 1, 1);
          v4 = v206;
        }

        *(v4 + 16) = v103;
        *(v4 + 8 * v102 + 32) = v100;
        v98 += v99;
        --v96;
      }

      while (v96);
      v95 = v97;
      v11 = MEMORY[0x1E69E7CC0];
LABEL_105:
      v104 = *(v4 + 32);
      v105 = v103 - 1;
      if (v103 != 1)
      {
        if (v103 <= 4)
        {
          v106 = 1;
          goto LABEL_111;
        }

        v106 = v105 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v107 = vdupq_n_s64(v104);
        v108 = (v4 + 56);
        v109 = v105 & 0xFFFFFFFFFFFFFFFCLL;
        v110 = v107;
        do
        {
          v107 = vbslq_s8(vcgtq_s64(v107, v108[-1]), v107, v108[-1]);
          v110 = vbslq_s8(vcgtq_s64(v110, *v108), v110, *v108);
          v108 += 2;
          v109 -= 4;
        }

        while (v109);
        v111 = vbslq_s8(vcgtq_s64(v107, v110), v107, v110);
        v112 = vextq_s8(v111, v111, 8uLL).u64[0];
        v104 = vbsl_s8(vcgtd_s64(v111.i64[0], v112), *v111.i8, v112);
        if (v105 != (v105 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_111:
          v113 = v103 - v106;
          v114 = 8 * v106 + 32;
          do
          {
            if (v104 <= *(v4 + v114))
            {
              v104 = *(v4 + v114);
            }

            v114 += 8;
            --v113;
          }

          while (v113);
        }
      }

      v5 = 0;
      goto LABEL_116;
    }

    v103 = v11[2];

    if (v103)
    {
      v4 = v11;
      goto LABEL_105;
    }

    v104 = 0;
    v5 = 1;
    v4 = v11;
LABEL_116:

    v115 = *(v95 + 16);
    v199 = v95;
    if (v115)
    {
      v197 = v5;
      v206 = v11;
      sub_1B4BCF09C(0, v115, 0);
      v116 = v206;
      v117 = v95 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
      v118 = *(v196 + 72);
      do
      {
        sub_1B4CDF2D4(v117, v9);
        v119 = *v9;
        sub_1B4CDF338(v9);
        v206 = v116;
        v121 = v116[2];
        v120 = v116[3];
        v122 = v121 + 1;
        if (v121 >= v120 >> 1)
        {
          sub_1B4BCF09C((v120 > 1), v121 + 1, 1);
          v116 = v206;
        }

        v116[2] = v122;
        v116[v121 + 4] = v119;
        v117 += v118;
        --v115;
      }

      while (v115);
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v122 = v11[2];
      if (!v122)
      {

        a3 = v194;
        if ((v5 & 1) == 0)
        {

LABEL_95:
          v21 = v193 + 1;
          if (v193 + 1 == v189)
          {
            v21 = v189;
            goto LABEL_145;
          }

          goto LABEL_96;
        }

        v4 = v201;
LABEL_140:

        v135 = v200;
        goto LABEL_141;
      }

      v197 = v5;
      v116 = v11;
    }

    a3 = v194;
    v5 = v116[4];
    v123 = v122 - 1;
    if (v122 != 1)
    {
      if (v122 > 4)
      {
        v124 = v123 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v125 = vdupq_n_s64(v5);
        v126 = (v116 + 7);
        v127 = v123 & 0xFFFFFFFFFFFFFFFCLL;
        v128 = v125;
        do
        {
          v125 = vbslq_s8(vcgtq_s64(v125, v126[-1]), v125, v126[-1]);
          v128 = vbslq_s8(vcgtq_s64(v128, *v126), v128, *v126);
          v126 += 2;
          v127 -= 4;
        }

        while (v127);
        v129 = vbslq_s8(vcgtq_s64(v125, v128), v125, v128);
        v130 = vextq_s8(v129, v129, 8uLL).u64[0];
        v5 = vbsl_s8(vcgtd_s64(v129.i64[0], v130), *v129.i8, v130);
        if (v123 == (v123 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_134;
        }
      }

      else
      {
        v124 = 1;
      }

      v131 = v122 - v124;
      v132 = &v116[v124 + 4];
      do
      {
        v134 = *v132++;
        v133 = v134;
        if (v5 <= v134)
        {
          v5 = v133;
        }

        --v131;
      }

      while (v131);
    }

LABEL_134:

    v4 = v201;
    if (v197)
    {
      goto LABEL_140;
    }

    v135 = v200;
    if (v104 >= v5)
    {
      goto LABEL_95;
    }

LABEL_141:
    if (!a3)
    {
      break;
    }

    v92 = v135 - 1;
    v136 = v198;
    v137 = v198 - 3;
    v138 = *v198;
    v91 = v198[1];
    v90 = v198[2];
    *v198 = *(v198 - 3);
    v136[2] = *(v136 - 1);
    *v137 = v138;
    v137[1] = v91;
    v137[2] = v90;
    if (v92 == v195)
    {
      goto LABEL_95;
    }
  }

  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
}

void sub_1B4CDC5B0(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v106 = a1;
  v119 = type metadata accessor for WorkoutMilestoneEntry(0);
  v113 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v109 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v102 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v102 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v102 - v14);
  v115 = a3;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v4 = *v106;
    if (!*v106)
    {
      goto LABEL_136;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = v117;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_130:
      v18 = sub_1B4CDDE84(v18);
    }

    v120 = v18;
    v98 = *(v18 + 2);
    if (v98 >= 2)
    {
      while (*v115)
      {
        v99 = *&v18[16 * v98];
        v100 = *&v18[16 * v98 + 24];
        sub_1B4CDD774(*v115 + *(v113 + 72) * v99, *v115 + *(v113 + 72) * *&v18[16 * v98 + 16], *v115 + *(v113 + 72) * v100, v4);
        if (v12)
        {
          goto LABEL_108;
        }

        if (v100 < v99)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1B4CDDE84(v18);
        }

        if (v98 - 2 >= *(v18 + 2))
        {
          goto LABEL_124;
        }

        v101 = &v18[16 * v98];
        *v101 = v99;
        *(v101 + 1) = v100;
        v120 = v18;
        sub_1B4CDDDF8(v98 - 1);
        v18 = v120;
        v98 = *(v120 + 2);
        if (v98 <= 1)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_134;
    }

LABEL_108:

    return;
  }

  v104 = a4;
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v110 = v12;
  while (1)
  {
    v19 = v17;
    if (v17 + 1 >= v16)
    {
      v16 = v17 + 1;
    }

    else
    {
      v20 = *v115;
      v21 = *(v113 + 72);
      v4 = *v115 + v21 * (v17 + 1);
      sub_1B4CDF2D4(v4, v15);
      sub_1B4CDF2D4(v20 + v21 * v17, v12);
      v22 = *v15;
      v111 = *v12;
      v112 = v22;
      sub_1B4CDF338(v12);
      sub_1B4CDF338(v15);
      v105 = v17;
      v23 = v17 + 2;
      v114 = v21;
      v24 = v20 + v21 * (v17 + 2);
      while (v16 != v23)
      {
        LODWORD(v116) = v112 < v111;
        sub_1B4CDF2D4(v24, v15);
        v25 = v15;
        v26 = v110;
        sub_1B4CDF2D4(v4, v110);
        v27 = *v25;
        v28 = v16;
        v29 = v18;
        v30 = *v26;
        v31 = v26;
        v15 = v25;
        sub_1B4CDF338(v31);
        sub_1B4CDF338(v25);
        v32 = v27 < v30;
        v18 = v29;
        v16 = v28;
        v33 = !v32;
        ++v23;
        v24 += v114;
        v4 += v114;
        if (((v116 ^ v33) & 1) == 0)
        {
          v16 = v23 - 1;
          break;
        }
      }

      v12 = v110;
      v19 = v105;
      if (v112 < v111)
      {
        if (v16 < v105)
        {
          goto LABEL_127;
        }

        if (v105 < v16)
        {
          v103 = v18;
          v34 = v114 * (v16 - 1);
          v35 = v16 * v114;
          v36 = v16;
          v37 = v105 * v114;
          do
          {
            if (v19 != --v36)
            {
              v116 = v36;
              v4 = *v115;
              if (!*v115)
              {
                goto LABEL_133;
              }

              sub_1B4CDF394(v4 + v37, v109);
              if (v37 < v34 || v4 + v37 >= v4 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
                v36 = v116;
              }

              else
              {
                v36 = v116;
                if (v37 != v34)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              sub_1B4CDF394(v109, v4 + v34);
            }

            ++v19;
            v34 -= v114;
            v35 -= v114;
            v37 += v114;
          }

          while (v19 < v36);
          v18 = v103;
          v19 = v105;
        }
      }
    }

    v38 = v115[1];
    if (v16 < v38)
    {
      if (__OFSUB__(v16, v19))
      {
        goto LABEL_126;
      }

      if (v16 - v19 < v104)
      {
        if (__OFADD__(v19, v104))
        {
          goto LABEL_128;
        }

        if (v19 + v104 >= v38)
        {
          v39 = v115[1];
        }

        else
        {
          v39 = v19 + v104;
        }

        if (v39 < v19)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v16 != v39)
        {
          break;
        }
      }
    }

    v17 = v16;
    if (v16 < v19)
    {
      goto LABEL_125;
    }

LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1B4A1D58C(0, *(v18 + 2) + 1, 1, v18);
    }

    v41 = *(v18 + 2);
    v40 = *(v18 + 3);
    v4 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v18 = sub_1B4A1D58C((v40 > 1), v41 + 1, 1, v18);
    }

    *(v18 + 2) = v4;
    v42 = &v18[16 * v41];
    *(v42 + 4) = v19;
    *(v42 + 5) = v17;
    v43 = *v106;
    if (!*v106)
    {
      goto LABEL_135;
    }

    if (v41)
    {
      while (1)
      {
        v44 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v45 = *(v18 + 4);
          v46 = *(v18 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_55:
          if (v48)
          {
            goto LABEL_114;
          }

          v61 = &v18[16 * v4];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_117;
          }

          v67 = &v18[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_121;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v4 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v71 = &v18[16 * v4];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_69:
        if (v66)
        {
          goto LABEL_116;
        }

        v74 = &v18[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_119;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_76:
        v82 = v44 - 1;
        if (v44 - 1 >= v4)
        {
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
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*v115)
        {
          goto LABEL_132;
        }

        v83 = *&v18[16 * v82 + 32];
        v4 = *&v18[16 * v44 + 40];
        v84 = v117;
        sub_1B4CDD774(*v115 + *(v113 + 72) * v83, *v115 + *(v113 + 72) * *&v18[16 * v44 + 32], *v115 + *(v113 + 72) * v4, v43);
        v117 = v84;
        if (v84)
        {
          goto LABEL_108;
        }

        if (v4 < v83)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1B4CDDE84(v18);
        }

        if (v82 >= *(v18 + 2))
        {
          goto LABEL_111;
        }

        v85 = &v18[16 * v82];
        *(v85 + 4) = v83;
        *(v85 + 5) = v4;
        v120 = v18;
        sub_1B4CDDDF8(v44);
        v18 = v120;
        v4 = *(v120 + 2);
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v18[16 * v4 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_112;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_113;
      }

      v56 = &v18[16 * v4];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_115;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_118;
      }

      if (v60 >= v52)
      {
        v78 = &v18[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_122;
        }

        if (v47 < v81)
        {
          v44 = v4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v16 = v115[1];
    if (v17 >= v16)
    {
      goto LABEL_98;
    }
  }

  v103 = v18;
  v86 = v16;
  v87 = *v115;
  v88 = *(v113 + 72);
  v89 = *v115 + v88 * (v86 - 1);
  v90 = v19;
  v91 = -v88;
  v105 = v90;
  v92 = v90 - v86;
  v116 = v86;
  v107 = v88;
  v108 = v39;
  v4 = v87 + v86 * v88;
LABEL_88:
  v111 = v4;
  v112 = v92;
  v114 = v89;
  while (1)
  {
    sub_1B4CDF2D4(v4, v15);
    sub_1B4CDF2D4(v89, v12);
    v93 = *v15;
    v94 = *v12;
    sub_1B4CDF338(v12);
    sub_1B4CDF338(v15);
    if (v93 >= v94)
    {
LABEL_87:
      v17 = v108;
      v89 = v114 + v107;
      v92 = v112 - 1;
      v4 = v111 + v107;
      if (++v116 != v108)
      {
        goto LABEL_88;
      }

      v18 = v103;
      v19 = v105;
      if (v108 < v105)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v87)
    {
      break;
    }

    v95 = v118;
    sub_1B4CDF394(v4, v118);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B4CDF394(v95, v89);
    v89 += v91;
    v4 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

uint64_t sub_1B4CDCDF0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B4CDDE84(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1B4CDDC04((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B4A1D58C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1B4A1D58C((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1B4CDDC04((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1B4CDD33C(char *__src, char *__dst, unint64_t a3, char *a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v5 = a4;
  v6 = a3;
  v7 = __dst - __src;
  v8 = (__dst - __src) / 24;
  v9 = a3 - __dst;
  v10 = (a3 - __dst) / 24;
  if (v8 >= v10)
  {
    if (a4 != __dst || &__dst[24 * v10] <= a4)
    {
      v28 = __dst;
      memmove(a4, __dst, 24 * v10);
      __dst = v28;
    }

    v57 = &v5[24 * v10];
    if (v9 >= 24 && __dst > __src)
    {
      v45 = v5;
LABEL_27:
      v44 = __dst - 24;
      v29 = v6;
      v30 = v57;
      v47 = __dst;
      do
      {
        v31 = *(v30 - 3);
        v32 = *(v30 - 2);
        v30 -= 24;
        v33 = *(v30 + 2);
        v34 = *(__dst - 2);
        v49 = *(__dst - 3);
        v35 = *(__dst - 1);

        a5(&v55, v31, v32, v33);
        v36 = v55;
        v37 = v56;
        a5(&v53, v49, v34, v35);
        if (v37 == 1)
        {

          v6 = (v29 - 24);
          __dst = v47;
LABEL_36:
          v5 = v45;
          if (v29 != __dst)
          {
            v41 = *v44;
            *(v6 + 16) = *(v44 + 2);
            *v6 = v41;
          }

          if (v57 <= v45 || (__dst = v44, v44 <= __src))
          {
            __dst = v44;
            goto LABEL_43;
          }

          goto LABEL_27;
        }

        v38 = v53;
        v39 = v54;

        v6 = (v29 - 24);
        if (v39)
        {
          __dst = v47;
        }

        else
        {
          __dst = v47;
          if (v36 < v38)
          {
            goto LABEL_36;
          }
        }

        v5 = v45;
        if (v57 != v29)
        {
          v40 = *v30;
          *(v29 - 1) = *(v30 + 2);
          *v6 = v40;
        }

        v57 = v30;
        v29 -= 24;
      }

      while (v30 > v45);
      v57 = v30;
    }
  }

  else
  {
    v11 = __src;
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      v12 = __dst;
      memmove(a4, __src, 24 * v8);
      __dst = v12;
    }

    v57 = &v5[24 * v8];
    if (v7 >= 24 && __dst < v6)
    {
      v46 = v6;
      while (1)
      {
        v51 = v11;
        v13 = *__dst;
        v14 = *(__dst + 1);
        v15 = __dst;
        v16 = *(__dst + 2);
        v18 = *v5;
        v17 = *(v5 + 1);
        v19 = *(v5 + 2);

        a5(&v55, v13, v14, v16);
        v48 = v55;
        v20 = v56;
        a5(&v53, v18, v17, v19);
        v21 = v53;
        v22 = v54;

        if (v20 == 1)
        {
          break;
        }

        if (v22)
        {
          __dst = v15;
          v23 = v51;
          v24 = v46;
        }

        else
        {
          v24 = v46;
          __dst = v15;
          v23 = v51;
          if (v48 < v21)
          {
            goto LABEL_10;
          }
        }

        v25 = v5;
        v26 = v23 == v5;
        v5 += 24;
        if (!v26)
        {
          goto LABEL_11;
        }

LABEL_12:
        v11 = v23 + 24;
        if (v5 >= v57 || __dst >= v24)
        {
          goto LABEL_41;
        }
      }

      __dst = v15;
      v23 = v51;
      v24 = v46;
LABEL_10:
      v25 = __dst;
      v26 = v23 == __dst;
      __dst += 24;
      if (v26)
      {
        goto LABEL_12;
      }

LABEL_11:
      v27 = *v25;
      *(v23 + 2) = *(v25 + 2);
      *v23 = v27;
      goto LABEL_12;
    }

LABEL_41:
    __dst = v11;
  }

LABEL_43:
  v42 = (v57 - v5) / 24;
  if (__dst != v5 || __dst >= &v5[24 * v42])
  {
    memmove(__dst, v5, 24 * v42);
  }

  return 1;
}

void sub_1B4CDD774(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v41 = type metadata accessor for WorkoutMilestoneEntry(0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v42 = (&v35 - v10);
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_60;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v14 = (a2 - a1) / v12;
  v46 = a1;
  v45 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a4 + v16;
    if (v16 >= 1)
    {
      v23 = -v12;
      v24 = a4 + v16;
      v38 = a1;
      v39 = a4;
      v37 = -v12;
      do
      {
        v35 = v22;
        v25 = a2;
        v26 = a2 + v23;
        v40 = v25;
        while (1)
        {
          if (v25 <= a1)
          {
            v46 = v25;
            v44 = v35;
            goto LABEL_58;
          }

          v27 = a3;
          v36 = v22;
          a3 += v23;
          v28 = v24 + v23;
          v29 = v24 + v23;
          v30 = v42;
          sub_1B4CDF2D4(v29, v42);
          v31 = v26;
          v32 = v43;
          sub_1B4CDF2D4(v26, v43);
          v33 = *v30;
          v34 = *v32;
          sub_1B4CDF338(v32);
          sub_1B4CDF338(v30);
          if (v33 < v34)
          {
            break;
          }

          v22 = v28;
          if (v27 < v24 || a3 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v26 = v31;
            v23 = v37;
            a1 = v38;
          }

          else
          {
            v26 = v31;
            v23 = v37;
            a1 = v38;
            if (v27 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v28;
          v25 = v40;
          if (v28 <= v39)
          {
            a2 = v40;
            goto LABEL_57;
          }
        }

        if (v27 < v40 || a3 >= v40)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v37;
          a1 = v38;
          v22 = v36;
        }

        else
        {
          a2 = v31;
          v23 = v37;
          a1 = v38;
          v22 = v36;
          if (v27 != v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v39);
    }

LABEL_57:
    v46 = a2;
    v44 = v22;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v15;
    v44 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      do
      {
        v18 = v42;
        sub_1B4CDF2D4(a2, v42);
        v19 = v43;
        sub_1B4CDF2D4(a4, v43);
        v20 = *v18;
        v21 = *v19;
        sub_1B4CDF338(v19);
        sub_1B4CDF338(v18);
        if (v20 >= v21)
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 = a4 + v12;
          a4 += v12;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v12;
        }

        a1 += v12;
        v46 = a1;
      }

      while (a4 < v40 && a2 < a3);
    }
  }

LABEL_58:
  sub_1B4CDE03C(&v46, &v45, &v44, type metadata accessor for WorkoutMilestoneEntry);
}

uint64_t sub_1B4CDDC04(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
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

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1B4CDDDF8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B4CDDE84(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B4CDDF3C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1B4CDE03C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1B4CDE124@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7188, &unk_1B4D20E20) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7150, &qword_1B4D46FB0);
  v6 = *a1;
  result = sub_1B4CDF2D4(a1 + v4, a2 + *(v5 + 48));
  *a2 = v6;
  return result;
}

void sub_1B4CDE614(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C8, &unk_1B4D20E30);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C0, &unk_1B4D47300);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v45 = a1;
  v43 = v18;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = *(*(v15 + 48) + 8 * v24);
    v26 = (v19 - 1) & v19;
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v24, v5, v13);
    v27 = v42;
    v28 = *(v42 + 48);
    *v14 = v25;
    v29 = v8;
    v30 = v27;
    (*(v6 + 32))(&v14[v28], v29, v5);
    v31 = v41;
    (*(v41 + 56))(v14, 0, 1, v30);
    v23 = v20;
LABEL_11:
    *v1 = v15;
    v1[1] = v16;
    v32 = v44;
    v1[2] = v43;
    v1[3] = v23;
    v1[4] = v26;
    v33 = v1[5];
    sub_1B498B270(v14, v32, &qword_1EB8A81C0, &unk_1B4D47300);
    v34 = 1;
    v35 = (*(v31 + 48))(v32, 1, v30);
    v36 = v45;
    if (v35 != 1)
    {
      v37 = v32;
      v38 = v40;
      sub_1B498B270(v37, v40, &qword_1EB8A81C8, &unk_1B4D20E30);
      v33(v38);
      sub_1B4975024(v38, &qword_1EB8A81C8, &unk_1B4D20E30);
      v34 = 0;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC200, &unk_1B4D3B300);
    (*(*(v39 - 8) + 56))(v36, v34, 1, v39);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v31 = v41;
        v30 = v42;
        (*(v41 + 56))(&v40 - v12, 1, 1, v42, v13);
        v26 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1B4CDE9E4(uint64_t a1@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7188, &unk_1B4D20E20);
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v38 - v4;
  v5 = type metadata accessor for WorkoutMilestoneEntry(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81B8, &unk_1B4D46FD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v38 - v12);
  v16 = *v1;
  v15 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v42 = v18;
  v43 = a1;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v20 << 6);
    v26 = *(*(v16 + 48) + 8 * v25);
    sub_1B4CDF2D4(*(v16 + 56) + *(v40 + 72) * v25, v7);
    v27 = v41;
    v28 = *(v41 + 48);
    *v14 = v26;
    v29 = v7;
    v30 = v27;
    sub_1B4CDF394(v29, v14 + v28);
    (*(v3 + 56))(v14, 0, 1, v30);
    v23 = v20;
LABEL_11:
    *v1 = v16;
    v1[1] = v15;
    v1[2] = v42;
    v1[3] = v23;
    v1[4] = v24;
    v31 = v1[5];
    sub_1B498B270(v14, v10, &qword_1EB8A81B8, &unk_1B4D46FD0);
    v32 = 1;
    v33 = (*(v3 + 48))(v10, 1, v30);
    v34 = v43;
    if (v33 != 1)
    {
      v35 = v10;
      v36 = v39;
      sub_1B498B270(v35, v39, &qword_1EB8A7188, &unk_1B4D20E20);
      v31(v36);
      sub_1B4975024(v36, &qword_1EB8A7188, &unk_1B4D20E20);
      v32 = 0;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7150, &qword_1B4D46FB0);
    (*(*(v37 - 8) + 56))(v34, v32, 1, v37);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v30 = v41;
        (*(v3 + 56))(&v38 - v12, 1, 1, v41, v13);
        v24 = 0;
        goto LABEL_11;
      }

      v19 = *(v15 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

__n128 sub_1B4CDED7C@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B4CDED88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for WorkoutMilestoneEntry(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE218, &qword_1B4D46FA8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v38 - v15);
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v39 = a1;
  v40 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v41 = v18;
  v42 = 0;
  v43 = v21 & v19;
  v44 = a2;
  v45 = a3;

  v38 = a3;

  while (1)
  {
    sub_1B4CDE9E4(v16);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7150, &qword_1B4D46FB0);
    if ((*(*(v22 - 8) + 48))(v16, 1, v22) == 1)
    {
      sub_1B49B75FC(v39);
    }

    v23 = *v16;
    sub_1B4CDF394(v16 + *(v22 + 48), v13);
    v24 = *a5;
    v26 = sub_1B49EF0B0(v23);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (a4)
      {
        v33 = *a5;
        if ((v25 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1B49890E4();
        v33 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      sub_1B4CDF3F8(v13, v33[7] + *(v11 + 72) * v26);
      a4 = 1;
    }

    else
    {
      sub_1B498528C(v29, a4 & 1);
      v31 = sub_1B49EF0B0(v23);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_21;
      }

      v26 = v31;
      v33 = *a5;
      if (v30)
      {
        goto LABEL_5;
      }

LABEL_14:
      v33[(v26 >> 6) + 8] |= 1 << v26;
      *(v33[6] + 8 * v26) = v23;
      sub_1B4CDF394(v13, v33[7] + *(v11 + 72) * v26);
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_20;
      }

      v33[2] = v36;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1B4D18E1C();
  __break(1u);
  return result;
}

uint64_t sub_1B4CDF090(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v39 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v35 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
    v15 = *(*(a1 + 48) + v14);
    v16 = *(*(a1 + 56) + v14);
    v36[0] = v15;
    v36[1] = v16;
    a2(v37, v36);
    v38 = 0;
    v17 = v37[0];
    v18 = v37[1];
    v19 = *v39;
    v21 = sub_1B49EF0B0(v37[0]);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_25;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if ((v35 & 1) == 0)
      {
        sub_1B4988808();
      }
    }

    else
    {
      sub_1B4984310(v24, v35 & 1);
      v26 = sub_1B49EF0B0(v17);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_27;
      }

      v21 = v26;
    }

    v9 &= v9 - 1;
    v28 = *v39;
    if (v25)
    {
      *(v28[7] + 8 * v21) = v18;
    }

    else
    {
      v28[(v21 >> 6) + 8] |= 1 << v21;
      *(v28[6] + 8 * v21) = v17;
      *(v28[7] + 8 * v21) = v18;
      v29 = v28[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_26;
      }

      v28[2] = v31;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_1B49B75FC(a1);
    }

    ++v13;
    if (*(v6 + 8 * v12))
    {
      v35 = a4;
      v9 = *(v6 + 8 * v12);
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1B4D18E1C();
  __break(1u);
  return result;
}

uint64_t sub_1B4CDF2D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutMilestoneEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4CDF338(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutMilestoneEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4CDF394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutMilestoneEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4CDF3F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutMilestoneEntry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PromptFormatable.promptString(formatter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1B4D1880C();
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  (*(v15 + 16))(v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE430, &qword_1B4D47320);
  if (swift_dynamicCast())
  {
    sub_1B496F398(v28, v30);
    v16 = v31;
    v17 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v18 = ComposablePromptFormatable.promptString(formatter:)(a1, v16, v17);
    if (v4)
    {
      return __swift_destroy_boxed_opaque_existential_1Tm(v30);
    }

    else
    {
      v21 = v18;
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      return v21;
    }
  }

  else
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_1B4CDF800(v28);
    v20 = *(a3 + 48);
    v27[1] = v3;
    result = v20(a1, a2, a3);
    if (!v4)
    {
      v27[0] = 0;
      v22 = *(AssociatedTypeWitness - 8);
      if ((*(v22 + 48))(v11, 1, AssociatedTypeWitness) == 1)
      {
        (*(v33 + 8))(v11, v9);
        return 0;
      }

      else
      {
        swift_getAssociatedConformanceWitness();
        sub_1B4D1831C();
        v23 = v30[0];
        v24 = v30[1];
        (*(v22 + 8))(v11, AssociatedTypeWitness);
        v25 = v27[0];
        v26 = sub_1B4CDFDD8(v23, v24, a1, a2, a3);

        if (!v25)
        {
          return v26;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4CDF800(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE438, &qword_1B4D47328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ComposablePromptFormatable.promptString(formatter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B4D1880C();
  v54 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v42 - v12;
  (*(v8 + 48))(a1, a2, v8, v11);
  if (!v4)
  {
    v14 = v54;
    v45 = a1;
    v46 = v3;
    v15 = v8;
    v47 = 0;
    v16 = *(AssociatedTypeWitness - 8);
    if ((*(v16 + 48))(v13, 1, AssociatedTypeWitness) == 1)
    {
      (*(v14 + 8))(v13, v10);
      return 0;
    }

    else
    {
      v54 = v15;
      v17 = a2;
      swift_getAssociatedConformanceWitness();
      sub_1B4D1831C();
      v18 = v53;
      v44 = v52;
      (*(v16 + 8))(v13, AssociatedTypeWitness);
      v8 = (*(a3 + 48))(v17, a3);
      v19 = v45;
      v20 = v47;
      v21 = (*(a3 + 40))(v45, v17, a3);
      v47 = v20;
      if (v20)
      {
      }

      else
      {
        v42[2] = v8;
        v52 = v21;
        MEMORY[0x1EEE9AC00](v21);
        KeyPath = swift_getKeyPath();
        v42[1] = v42;
        MEMORY[0x1EEE9AC00](KeyPath);
        swift_getAssociatedTypeWitness();
        v23 = sub_1B4D184BC();
        v43 = v17;
        v24 = v23;
        WitnessTable = swift_getWitnessTable();
        v26 = v47;
        v28 = sub_1B498D2F0(sub_1B4CE04B0, &v42[-6], v24, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v27);
        v47 = v26;

        v52 = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B38, &qword_1B4D36300);
        sub_1B49B0578(&qword_1EDC378E8, &qword_1EB8A7B38, &qword_1B4D36300, MEMORY[0x1E69E6310]);
        v29 = sub_1B4D180DC();
        v31 = v30;

        v52 = v44;
        v53 = v18;
        v50 = 0x6D65745F6275733CLL;
        v51 = 0xEF3E736574616C70;
        v48 = 123;
        v49 = 0xE100000000000000;
        MEMORY[0x1B8C7C620](v29, v31);

        MEMORY[0x1B8C7C620](125, 0xE100000000000000);
        v8 = v49;
        v40 = sub_1B4955758();
        v41 = v40;
        v39 = v40;
        v38 = MEMORY[0x1E69E6158];
        v32 = sub_1B4D1888C();
        v34 = v33;

        v35 = v47;
        v36 = sub_1B4CDFDD8(v32, v34, v19, v43, v54);
        v47 = v35;
        if (!v35)
        {
          v8 = v36;

          return v8;
        }
      }
    }
  }

  return v8;
}

uint64_t sub_1B4CDFDD8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v64 = a1;
  v8 = (*(a5 + 40))(a4, a5);
  v9 = *(v8 + 16);
  if (v9)
  {
    v57 = v5;
    v59 = a2;
    v62 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF7DC(0, v9, 0);
    v10 = v62;
    v11 = (v8 + 56);
    do
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v15 = *(v11 - 1);
      v14 = *v11;
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = v14;
      v62 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);

      if (v18 >= v17 >> 1)
      {
        sub_1B4BCF7DC((v17 > 1), v18 + 1, 1);
        v10 = v62;
      }

      *(v10 + 16) = v18 + 1;
      v19 = (v10 + 32 * v18);
      v19[4] = v12;
      v19[5] = v13;
      v19[6] = sub_1B4CE0650;
      v19[7] = v16;
      v11 += 6;
      --v9;
    }

    while (v9);

    v6 = v57;
    a2 = v59;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v20 = v64;
  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6898, &qword_1B4D1ABB0);
    v21 = sub_1B4D18AEC();
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC8];
  }

  v62 = v21;
  sub_1B4CE0684(v10, 1, &v62);
  if (v6)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v22 = v62;
    v23 = objc_allocWithZone(MEMORY[0x1E696AE70]);
    v24 = sub_1B4CE0574(0x3E293F2A2E283CLL, 0xE700000000000000, 0);
    v54 = v22;
    v25 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v25 = v20;
    }

    v26 = 7;
    if (((a2 >> 60) & ((v20 & 0x800000000000000) == 0)) != 0)
    {
      v26 = 11;
    }

    v62 = 15;
    v63 = v26 | (v25 << 16);
    v60 = v20;
    v61 = a2;
    v27 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABCA0, &qword_1B4D474A0);
    sub_1B49B0578(&qword_1EB8ABCA8, &qword_1EB8ABCA0, &qword_1B4D474A0, MEMORY[0x1E69E66D8]);
    sub_1B4955758();
    v28 = sub_1B4D187CC();
    v30 = v29;
    v31 = sub_1B4D1817C();
    v53 = v27;
    v32 = [v27 matchesInString:v31 options:0 range:{v28, v30}];

    sub_1B4CE0A40();
    v33 = sub_1B4D183FC();

    if (v33 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B4D18ABC())
    {

      if (!i)
      {
        break;
      }

      v35 = 0;
      v56 = a2;
      v58 = v20;
      while (1)
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x1B8C7CD90](v35, v33);
        }

        else
        {
          if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v36 = *(v33 + 8 * v35 + 32);
        }

        v37 = v36;
        v20 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        [v36 rangeAtIndex_];
        sub_1B4D186CC();
        if (v38)
        {

          ++v35;
          if (v20 == i)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v39 = sub_1B4D1829C();
          v40 = MEMORY[0x1B8C7C5E0](v39);
          v51 = v41;

          v52 = v40;
          if (!*(v54 + 16))
          {

            v43 = v51;
LABEL_38:
            sub_1B4CE0A8C();
            swift_allocError();
            *v50 = v64;
            v50[1] = a2;
            v50[2] = v52;
            v50[3] = v43;
            swift_willThrow();
          }

          v42 = v40;
          v43 = v51;
          v44 = sub_1B49E9EC4(v42, v51);
          if ((v45 & 1) == 0)
          {

            goto LABEL_38;
          }

          v46 = *(*(v54 + 56) + 16 * v44);
          v60 = a3;

          v46(&v62, &v60);

          if (!v63)
          {

            goto LABEL_38;
          }

          v62 = v58;
          v63 = v56;
          v60 = 60;
          v61 = 0xE100000000000000;
          MEMORY[0x1B8C7C620](v52, v51);

          MEMORY[0x1B8C7C620](62, 0xE100000000000000);
          v58 = sub_1B4D1888C();
          v48 = v47;

          v56 = v48;
          ++v35;
          if (v20 == i)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

    v58 = v20;
LABEL_34:

    return v58;
  }

  return result;
}

void *sub_1B4CE0410@<X0>(void *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1B4D1831C();
  *a3 = v5;
  a3[1] = v6;
  return result;
}

id sub_1B4CE0574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B4D1817C();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1B4D1760C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1B4CE0650@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_1B4CE0684(uint64_t a1, char a2, void *a3)
{
  v36 = *(a1 + 16);
  if (!v36)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v37 = *(a1 + 48);
  v8 = *a3;

  v9 = sub_1B49E9EC4(v7, v6);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    sub_1B4988178(v14, v5 & 1);
    v9 = sub_1B49E9EC4(v7, v6);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v9 = sub_1B4D18E1C();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v15)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v9;
  sub_1B498AA1C();
  v9 = v19;
  if (v15)
  {
LABEL_8:
    v17 = swift_allocError();
    swift_willThrow();

    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  v21 = (v20[6] + 16 * v9);
  *v21 = v7;
  v21[1] = v6;
  *(v20[7] + 16 * v9) = v37;
  v22 = v20[2];
  v13 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v13)
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

  v20[2] = v23;
  if (v36 != 1)
  {
    v5 = (a1 + 80);
    v24 = 1;
    while (v24 < *(a1 + 16))
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v37 = *v5;
      v25 = *a3;

      v26 = sub_1B49E9EC4(v7, v6);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v13 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v13)
      {
        goto LABEL_23;
      }

      v15 = v27;
      if (v25[3] < v30)
      {
        sub_1B4988178(v30, 1);
        v26 = sub_1B49E9EC4(v7, v6);
        if ((v15 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v15)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v33 = (v32[6] + 16 * v26);
      *v33 = v7;
      v33[1] = v6;
      *(v32[7] + 16 * v26) = v37;
      v34 = v32[2];
      v13 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v13)
      {
        goto LABEL_24;
      }

      ++v24;
      v32[2] = v35;
      v5 += 2;
      if (v36 == v24)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

unint64_t sub_1B4CE0A40()
{
  result = qword_1EB8AE440;
  if (!qword_1EB8AE440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB8AE440);
  }

  return result;
}

unint64_t sub_1B4CE0A8C()
{
  result = qword_1EB8AE448;
  if (!qword_1EB8AE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE448);
  }

  return result;
}

id HKWorkoutActivityType.displayName.getter(uint64_t a1)
{
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v2 = result;
    v3 = sub_1B4D1818C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AudioSynthesisSettings.init(_:)@<X0>(unsigned int *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8790, &qword_1B4D22450);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v20 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (*a1 >= 3)
  {
    sub_1B4CE0E48();
    swift_allocError();
    swift_willThrow();
    return sub_1B4CE0E9C(a1);
  }

  else
  {
    v21 = a2;
    v13 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
    sub_1B4CE0EF8(a1 + *(v13 + 24), v7);
    v14 = *(v9 + 48);
    if (v14(v7, 1, v8) == 1)
    {
      *v11 = 0;
      v11[8] = 1;
      sub_1B4D17BBC();
      v15 = *(v8 + 24);
      v16 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
      (*(*(v16 - 8) + 56))(&v11[v15], 1, 1, v16);
      if (v14(v7, 1, v8) != 1)
      {
        sub_1B4CE0F68(v7);
      }
    }

    else
    {
      sub_1B4CE0FD0(v7, v11);
    }

    AudioSynthesisVoiceSelection.init(_:)(v11, v20);
    result = sub_1B4CE0E9C(a1);
    v18 = v21;
    if (!v2)
    {
      v19 = v20[1];
      *v21 = v20[0];
      v18[1] = v19;
      *(v18 + 32) = v12;
    }
  }

  return result;
}

uint64_t AudioSynthesisSettings.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  sub_1B4CE154C(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4CE0E48()
{
  result = qword_1EB8AE450;
  if (!qword_1EB8AE450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE450);
  }

  return result;
}

uint64_t sub_1B4CE0E9C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4CE0EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8790, &qword_1B4D22450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4CE0F68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8790, &qword_1B4D22450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4CE0FD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4CE1034(char *a1, __int128 *a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a2[1];
  v13 = *a2;
  v14 = v9;
  sub_1B4CE154C(&qword_1EB8A89B8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    v11 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0) + 24);
    sub_1B4CE0F68(&a1[v11]);
    sub_1B4CE0FD0(v8, &a1[v11]);
    result = (*(v6 + 56))(&a1[v11], 0, 1, v5);
    *a1 = *(a2 + 32);
  }

  return result;
}

uint64_t sub_1B4CE11B0(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v5) = *(v1 + 32);
  v7 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v7;
  v11 = v5;
  v8 = sub_1B4CE14F8();
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4CE154C(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
    v4 = sub_1B4D17D6C();
    sub_1B4CE0E9C(v6);
  }

  return v4;
}

double sub_1B4CE12EC@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4B28D40(a1, a2, v8);
  if (!v3)
  {
    v6 = v9;
    result = *v8;
    v7 = v8[1];
    *a3 = v8[0];
    *(a3 + 16) = v7;
    *(a3 + 32) = v6;
  }

  return result;
}

uint64_t sub_1B4CE13C0()
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  sub_1B4CE154C(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4CE14A4()
{
  result = qword_1EB8AE458;
  if (!qword_1EB8AE458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE458);
  }

  return result;
}

unint64_t sub_1B4CE14F8()
{
  result = qword_1EB8AE460;
  if (!qword_1EB8AE460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE460);
  }

  return result;
}

uint64_t sub_1B4CE154C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B4CE15BC(uint64_t a1)
{
  result = sub_1B4A2FAF0();
  *(a1 + 8) = result;
  return result;
}

uint64_t JSONSerializable.init(jsonData:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B4D173AC();
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B4D1738C();
  sub_1B49DDD2C(a1, a2);
}

uint64_t JSONSerializable.jsonData()(uint64_t a1, uint64_t a2)
{
  sub_1B4D173DC();
  swift_allocObject();
  sub_1B4D173CC();
  v2 = sub_1B4D173BC();

  return v2;
}

uint64_t sub_1B4CE175C(uint64_t a1, uint64_t a2)
{
  v15 = a1;

  sub_1B4CF1C60(&v15);
  v6 = sub_1B4C5B758(a2, v15);
  if ((v5 & 1) == 0)
  {
    goto LABEL_2;
  }

  v9 = v5;
  v10 = v4;
  v11 = v3;
  sub_1B4D18DDC();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v9 >> 1, v10))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v13 != (v9 >> 1) - v10)
  {
LABEL_12:
    swift_unknownObjectRelease();
    v5 = v9;
    v4 = v10;
    v3 = v11;
LABEL_2:
    sub_1B4C5C308(v6, v3, v4, v5);
    v8 = v7;
LABEL_9:
    swift_unknownObjectRelease();
    return v8;
  }

  v8 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v8)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  return v8;
}

void sub_1B4CE1888(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v35 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  v15 = *(a1 + v14[7]);
  sub_1B4D1742C();
  v16 = a2;
  sub_1B4D1742C();
  v17 = *(a2 + v14[7]);
  v42 = v15;
  v18 = __OFADD__(v15, v17);
  v19 = v15 + v17;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v41 = v19;
    v38 = sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v40 = v13;
    v36 = a2;
    sub_1B4D1743C();
    v20 = v14[8];
    v37 = v7;
    v21 = a1 + v20;
    v22 = a1;
    v35[2] = a1;
    v23 = v16 + v20;
    v35[1] = sub_1B49B0578(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968088]);
    v24 = sub_1B4D180FC();
    v39 = v10;
    v25 = v43;
    v26 = *(v44 + 16);
    if (v24)
    {
      v27 = v21;
    }

    else
    {
      v27 = v23;
    }

    v26(v10, v27, v5);
    v28 = v14[9];
    v29 = v22 + v28;
    v30 = v36 + v28;
    if (sub_1B4D180EC())
    {
      v31 = v29;
    }

    else
    {
      v31 = v30;
    }

    v32 = v37;
    v26(v37, v31, v5);
    sub_1B4D1743C();
    sub_1B4D1742C();
    v33 = [swift_getObjCClassFromMetadata() baseUnit];
    sub_1B4D1741C();
    v34 = *(v44 + 32);
    v34(v25, v40, v5);
    *(v25 + v14[7]) = v41;
    v34(v25 + v14[8], v39, v5);
    v34(v25 + v14[9], v32, v5);
  }
}

void sub_1B4CE1BF4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v35 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  v15 = *(a1 + v14[7]);
  sub_1B4D1742C();
  v16 = a2;
  sub_1B4D1742C();
  v17 = *(a2 + v14[7]);
  v42 = v15;
  v18 = __OFADD__(v15, v17);
  v19 = v15 + v17;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v41 = v19;
    v38 = sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    v40 = v13;
    v36 = a2;
    sub_1B4D1743C();
    v20 = v14[8];
    v37 = v7;
    v21 = a1 + v20;
    v22 = a1;
    v35[2] = a1;
    v23 = v16 + v20;
    v35[1] = sub_1B49B0578(&qword_1EB8AE4C8, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968088]);
    v24 = sub_1B4D180FC();
    v39 = v10;
    v25 = v43;
    v26 = *(v44 + 16);
    if (v24)
    {
      v27 = v21;
    }

    else
    {
      v27 = v23;
    }

    v26(v10, v27, v5);
    v28 = v14[9];
    v29 = v22 + v28;
    v30 = v36 + v28;
    if (sub_1B4D180EC())
    {
      v31 = v29;
    }

    else
    {
      v31 = v30;
    }

    v32 = v37;
    v26(v37, v31, v5);
    sub_1B4D1743C();
    sub_1B4D1742C();
    v33 = [swift_getObjCClassFromMetadata() baseUnit];
    sub_1B4D1741C();
    v34 = *(v44 + 32);
    v34(v25, v40, v5);
    *(v25 + v14[7]) = v41;
    v34(v25 + v14[8], v39, v5);
    v34(v25 + v14[9], v32, v5);
  }
}

void sub_1B4CE1F60(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v35 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  v15 = *(a1 + v14[7]);
  sub_1B4D1742C();
  v16 = a2;
  sub_1B4D1742C();
  v17 = *(a2 + v14[7]);
  v42 = v15;
  v18 = __OFADD__(v15, v17);
  v19 = v15 + v17;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v41 = v19;
    v38 = sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    v40 = v13;
    v36 = a2;
    sub_1B4D1743C();
    v20 = v14[8];
    v37 = v7;
    v21 = a1 + v20;
    v22 = a1;
    v35[2] = a1;
    v23 = v16 + v20;
    v35[1] = sub_1B49B0578(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968088]);
    v24 = sub_1B4D180FC();
    v39 = v10;
    v25 = v43;
    v26 = *(v44 + 16);
    if (v24)
    {
      v27 = v21;
    }

    else
    {
      v27 = v23;
    }

    v26(v10, v27, v5);
    v28 = v14[9];
    v29 = v22 + v28;
    v30 = v36 + v28;
    if (sub_1B4D180EC())
    {
      v31 = v29;
    }

    else
    {
      v31 = v30;
    }

    v32 = v37;
    v26(v37, v31, v5);
    sub_1B4D1743C();
    sub_1B4D1742C();
    v33 = [swift_getObjCClassFromMetadata() baseUnit];
    sub_1B4D1741C();
    v34 = *(v44 + 32);
    v34(v25, v40, v5);
    *(v25 + v14[7]) = v41;
    v34(v25 + v14[8], v39, v5);
    v34(v25 + v14[9], v32, v5);
  }
}

void sub_1B4CE22CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v35 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v15 = *(a1 + v14[7]);
  sub_1B4D1742C();
  v16 = a2;
  sub_1B4D1742C();
  v17 = *(a2 + v14[7]);
  v42 = v15;
  v18 = __OFADD__(v15, v17);
  v19 = v15 + v17;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v41 = v19;
    v38 = type metadata accessor for UnitCount();
    v40 = v13;
    v36 = a2;
    sub_1B4D1743C();
    v20 = v14[8];
    v37 = v7;
    v21 = a1 + v20;
    v22 = a1;
    v35[2] = a1;
    v23 = v16 + v20;
    v35[1] = sub_1B49B0578(&qword_1EB8AE518, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968088]);
    v24 = sub_1B4D180FC();
    v39 = v10;
    v25 = v43;
    v26 = *(v44 + 16);
    if (v24)
    {
      v27 = v21;
    }

    else
    {
      v27 = v23;
    }

    v26(v10, v27, v5);
    v28 = v14[9];
    v29 = v22 + v28;
    v30 = v36 + v28;
    if (sub_1B4D180EC())
    {
      v31 = v29;
    }

    else
    {
      v31 = v30;
    }

    v32 = v37;
    v26(v37, v31, v5);
    sub_1B4D1743C();
    sub_1B4D1742C();
    v33 = [swift_getObjCClassFromMetadata() baseUnit];
    sub_1B4D1741C();
    v34 = *(v44 + 32);
    v34(v25, v40, v5);
    *(v25 + v14[7]) = v41;
    v34(v25 + v14[8], v39, v5);
    v34(v25 + v14[9], v32, v5);
  }
}

uint64_t sub_1B4CE2628@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v159 = a3;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v167 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v164 = v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v174 = v140 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v173 = v140 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v169 = v140 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v178 = *(v12 - 8);
  v179 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v180 = v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v157 = v140 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v155 = v140 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v150 = v140 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v149 = v140 - v21;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C8, &unk_1B4D20E30);
  MEMORY[0x1EEE9AC00](v168);
  v172 = (v140 - v22);
  v176 = sub_1B4D1796C();
  v171 = *(v176 - 1);
  MEMORY[0x1EEE9AC00](v176);
  v24 = v140 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00);
  v170 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v165 = v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v175 = v140 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v156 = v140 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = (v140 - v31);
  MEMORY[0x1EEE9AC00](v33);
  v35 = v140 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v140 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = v140 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = v140 - v43;
  v160 = a1;
  v45 = *a1;
  v161 = a2;
  v46 = *a2;
  if (*a2 <= v45)
  {
    v47 = v45;
  }

  else
  {
    v47 = *a2;
  }

  v158 = v47;
  v48 = [objc_opt_self() hk_gregorianCalendarWithUTCTimeZone];
  sub_1B4D178DC();

  v182 = v45;
  v183 = v46;
  v49 = v177;
  v50 = Calendar.isSameMonth(_:_:)(&v182, &v183);
  if (v49)
  {
    return (*(v171 + 1))(v24, v176);
  }

  v52 = v50;
  v153 = v38;
  v162 = v41;
  v143 = v35;
  v163 = v32;
  v144 = v44;
  (*(v171 + 1))(v24, v176);
  if ((v52 & 1) == 0)
  {
    v62 = v161[1];
    v63 = *(v62 + 16);
    if (v63)
    {
      v64 = sub_1B49B70F8(*(v62 + 16), 0);
      v65 = sub_1B49B73A4(&v182, (v64 + 32), v63, v62);
      v66 = v182;

      sub_1B49B75FC(v66);
      if (v65 == v63)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    v64 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v67 = v179;
    v68 = v163;
    v69 = v160[1];

    v70 = sub_1B4CF8E50(v69, v64);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v182 = v62;
    sub_1B4CF9010(v70, sub_1B4CF83B8, 0, isUniquelyReferenced_nonNull_native, &v182);
    v140[1] = 0;

    v140[0] = v182;
    v72 = v69 + 64;
    v73 = 1 << *(v69 + 32);
    v74 = -1;
    if (v73 < 64)
    {
      v74 = ~(-1 << v73);
    }

    v75 = v74 & *(v69 + 64);
    v171 = ((v73 + 63) >> 6);
    v76 = v167;
    v166 = (v167 + 16);
    v152 = v64;
    v147 = (v64 + 32);
    v176 = (v178 + 56);
    v142 = (v167 + 8);
    v177 = (v178 + 48);
    v151 = v69;

    v77 = 0;
    v141 = MEMORY[0x1E69E7CC0];
    v78 = v162;
    v79 = v168;
    v80 = v170;
    v148 = v69 + 64;
    while (v75)
    {
      v81 = v77;
LABEL_20:
      v82 = __clz(__rbit64(v75));
      v75 &= v75 - 1;
      v83 = v82 | (v81 << 6);
      v84 = *(*(v151 + 48) + 8 * v83);
      v85 = *(v79 + 48);
      v64 = *(v76 + 16);
      v86 = v172;
      (v64)(v172 + v85, *(v151 + 56) + *(v76 + 72) * v83, v181);
      *v86 = v84;
      v87 = *(v152 + 16);
      v88 = v147;
      while (v87)
      {
        v89 = *v88++;
        --v87;
        if (v89 == v84)
        {
          v90 = 1;
          v91 = v153;
          goto LABEL_25;
        }
      }

      v92 = v169;
      v93 = v181;
      (v64)(v169, v86 + v85, v181);
      v146 = type metadata accessor for UnitCount();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v94 = [ObjCClassFromMetadata baseUnit];
      v95 = *(v179 + 44);
      v91 = v153;
      sub_1B4D1745C();

      v67 = v179;
      sub_1B4D1742C();
      *(v91 + *(v67 + 7)) = 1;
      (v64)(v91, v91 + v95, v93);
      v96 = [ObjCClassFromMetadata baseUnit];
      sub_1B4D1741C();
      (*v142)(v92, v93);
      (v64)(v91 + *(v67 + 9), v91 + v95, v93);
      v97 = v91 + v95;
      v68 = v163;
      (v64)(v91 + *(v67 + 8), v97, v93);
      v79 = v168;
      v90 = 0;
LABEL_25:
      (*v176)(v91, v90, 1, v67);
      sub_1B4975024(v172, &qword_1EB8A81C8, &unk_1B4D20E30);
      v98 = (*v177)(v91, 1, v67) == 1;
      v78 = v162;
      v80 = v170;
      if (v98)
      {
        sub_1B4975024(v91, &qword_1EB8A8370, &unk_1B4D21F00);
        v77 = v81;
        v76 = v167;
        v72 = v148;
      }

      else
      {
        v99 = v149;
        sub_1B498B270(v91, v149, &qword_1EB8A6928, &qword_1B4D20480);
        sub_1B498B270(v99, v150, &qword_1EB8A6928, &qword_1B4D20480);
        v100 = swift_isUniquelyReferenced_nonNull_native();
        v72 = v148;
        if ((v100 & 1) == 0)
        {
          v141 = sub_1B4A1DBB8(0, v141[2] + 1, 1, v141);
        }

        v64 = v141[2];
        v101 = v141[3];
        if (v64 >= v101 >> 1)
        {
          v141 = sub_1B4A1DBB8((v101 > 1), v64 + 1, 1, v141);
        }

        v102 = v141;
        v141[2] = v64 + 1;
        sub_1B498B270(v150, v102 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v64, &qword_1EB8A6928, &qword_1B4D20480);
        v77 = v81;
        v76 = v167;
        v78 = v162;
      }
    }

    while (1)
    {
      v81 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        __break(1u);
        goto LABEL_63;
      }

      if (v81 >= v171)
      {
        break;
      }

      v75 = *(v72 + 8 * v81);
      ++v77;
      if (v75)
      {
        goto LABEL_20;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE538, &qword_1B4D47790);
    v64 = *(v80 + 72);
    v103 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v172 = swift_allocObject();
    v80 = v172 + v103;
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
    v81 = &unk_1B4D21F00;
    sub_1B4974FBC(v160 + *(v104 + 32), v80, &qword_1EB8A8370, &unk_1B4D21F00);
    sub_1B4974FBC(v161 + *(v104 + 32), v80 + v64, &qword_1EB8A8370, &unk_1B4D21F00);
    sub_1B4974FBC(v80, v78, &qword_1EB8A8370, &unk_1B4D21F00);
    v105 = v156;
    sub_1B498B270(v78, v156, &qword_1EB8A8370, &unk_1B4D21F00);
    v171 = *v177;
    if (v171(v105, 1, v67) != 1)
    {
      sub_1B498B270(v105, v157, &qword_1EB8A6928, &qword_1B4D20480);
      v67 = MEMORY[0x1E69E7CC0];
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_36;
      }

      goto LABEL_65;
    }

    sub_1B4975024(v105, &qword_1EB8A8370, &unk_1B4D21F00);
    v67 = MEMORY[0x1E69E7CC0];
    v106 = v157;
    while (1)
    {
      v110 = v80 + v64;
      v111 = v162;
      sub_1B4974FBC(v110, v162, &qword_1EB8A8370, v81);
      sub_1B498B270(v111, v105, &qword_1EB8A8370, v81);
      if (v171(v105, 1, v179) == 1)
      {
        sub_1B4975024(v105, &qword_1EB8A8370, &unk_1B4D21F00);
        v81 = v155;
      }

      else
      {
        sub_1B498B270(v105, v106, &qword_1EB8A6928, &qword_1B4D20480);
        v112 = swift_isUniquelyReferenced_nonNull_native();
        v81 = v155;
        if ((v112 & 1) == 0)
        {
          v67 = sub_1B4A1DBB8(0, v67[2] + 1, 1, v67);
        }

        v114 = v67[2];
        v113 = v67[3];
        if (v114 >= v113 >> 1)
        {
          v67 = sub_1B4A1DBB8((v113 > 1), v114 + 1, 1, v67);
        }

        v67[2] = v114 + 1;
        sub_1B498B270(v106, v67 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v114, &qword_1EB8A6928, &qword_1B4D20480);
      }

      v115 = v143;
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v182 = v141;
      sub_1B4997644(v67);
      v116 = v182;
      v67 = v179;
      v170 = *v176;
      v170(v115, 1, 1, v179);
      v80 = v68;
      sub_1B4974FBC(v115, v68, &qword_1EB8A8370, &unk_1B4D21F00);
      v172 = v116;
      v117 = *(v116 + 16);
      v118 = v165;
      v169 = v117;
      if (!v117)
      {
        break;
      }

      v64 = 0;
      v168 = v172 + ((*(v178 + 80) + 32) & ~*(v178 + 80));
      v162 = (v167 + 32);
      while (v64 < v172[2])
      {
        sub_1B4974FBC(v168 + *(v178 + 72) * v64, v81, &qword_1EB8A6928, &qword_1B4D20480);
        v120 = v80;
        v68 = &qword_1EB8A8370;
        sub_1B4974FBC(v80, v118, &qword_1EB8A8370, &unk_1B4D21F00);
        if (v171(v118, 1, v67) == 1)
        {
          sub_1B4975024(v80, &qword_1EB8A8370, &unk_1B4D21F00);
          sub_1B4975024(v118, &qword_1EB8A8370, &unk_1B4D21F00);
          v119 = v175;
          sub_1B498B270(v81, v175, &qword_1EB8A6928, &qword_1B4D20480);
          v170(v119, 0, 1, v67);
        }

        else
        {
          v80 = v180;
          sub_1B498B270(v118, v180, &qword_1EB8A6928, &qword_1B4D20480);
          v121 = *(v80 + *(v67 + 7));
          sub_1B4D1742C();
          sub_1B4D1742C();
          v122 = *(v81 + *(v67 + 7));
          v123 = __OFADD__(v121, v122);
          v124 = v121 + v122;
          if (v123)
          {
            goto LABEL_64;
          }

          v167 = v124;
          type metadata accessor for UnitCount();
          sub_1B4D1743C();
          v125 = *(v67 + 8);
          v126 = v80 + v125;
          v127 = v81 + v125;
          sub_1B49B0578(&qword_1EB8AE518, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968088]);
          v128 = sub_1B4D180FC();
          v129 = *v166;
          if (v128)
          {
            v130 = v126;
          }

          else
          {
            v130 = v127;
          }

          v129(v174, v130, v181);
          v131 = *(v179 + 36);
          v132 = v180 + v131;
          v133 = v81 + v131;
          v67 = v179;
          if (sub_1B4D180EC())
          {
            v134 = v132;
          }

          else
          {
            v134 = v133;
          }

          v135 = v164;
          v129(v164, v134, v181);
          v136 = v181;
          v119 = v175;
          sub_1B4D1743C();
          sub_1B4D1742C();
          v137 = [swift_getObjCClassFromMetadata() baseUnit];
          sub_1B4D1741C();
          v138 = *v162;
          (*v162)(v119, v173, v136);
          *(v119 + *(v67 + 7)) = v167;
          v138(v119 + *(v67 + 8), v174, v136);
          v138(v119 + *(v67 + 9), v135, v136);
          sub_1B4975024(v180, &qword_1EB8A6928, &qword_1B4D20480);
          sub_1B4975024(v81, &qword_1EB8A6928, &qword_1B4D20480);
          v120 = v163;
          v68 = &qword_1EB8A8370;
          sub_1B4975024(v163, &qword_1EB8A8370, &unk_1B4D21F00);
          v170(v119, 0, 1, v67);
          v118 = v165;
        }

        ++v64;
        v80 = v120;
        sub_1B498B270(v119, v120, &qword_1EB8A8370, &unk_1B4D21F00);
        if (v169 == v64)
        {
          goto LABEL_60;
        }
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      v67 = sub_1B4A1DBB8(0, v67[2] + 1, 1, v67);
LABEL_36:
      v108 = v67[2];
      v107 = v67[3];
      if (v108 >= v107 >> 1)
      {
        v67 = sub_1B4A1DBB8((v107 > 1), v108 + 1, 1, v67);
      }

      v67[2] = v108 + 1;
      v109 = v67 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v108;
      v106 = v157;
      sub_1B498B270(v157, v109, &qword_1EB8A6928, &qword_1B4D20480);
      v105 = v156;
    }

LABEL_60:

    sub_1B4975024(v143, &qword_1EB8A8370, &unk_1B4D21F00);
    v57 = v144;
    sub_1B498B270(v80, v144, &qword_1EB8A8370, &unk_1B4D21F00);
    v60 = v159;
    v61 = v158;
    v58 = v140[0];
    goto LABEL_61;
  }

  v53 = v160;
  v54 = v160[1];
  v55 = v161[1];

  v56 = swift_isUniquelyReferenced_nonNull_native();
  v182 = v54;
  sub_1B4CF9010(v55, sub_1B4CF83B8, 0, v56, &v182);
  v57 = v144;

  v58 = v182;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
  sub_1B4974FBC(v53 + *(v59 + 32), v57, &qword_1EB8A8370, &unk_1B4D21F00);
  v60 = v159;
  v61 = v158;
LABEL_61:
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
  result = sub_1B498B270(v57, v60 + *(v139 + 32), &qword_1EB8A8370, &unk_1B4D21F00);
  *v60 = v61;
  v60[1] = v58;
  return result;
}

uint64_t sub_1B4CE3B10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v83 = a3;
  v3 = MEMORY[0x1E69E7CC0];
  v90 = *(a2 + 16);
  if (v90)
  {
    v5 = 0;
    v89 = (a2 + 32);
    do
    {
      sub_1B498ADFC(&v89[14 * v5], &v102);
      v99 = v103;
      v100 = v104;
      *v101 = v105;
      *&v101[16] = *&v106[0];
      v6 = *a1;
      v109 = v3;
      if (v6)
      {
        v7 = a1[1];
        v88 = a1[2];
        v8 = a1[3];
        v85 = a1[4];
        v86 = v8;
        v9 = a1[5];
        v10 = v99;
        if (v99 == 12 || !*(v6 + 16))
        {
          v11 = sub_1B498B0D4(&v99, &v91);
        }

        else
        {
          sub_1B498B0D4(&v99, &v91);
          v11 = sub_1B4978C4C(v10, v6);
          if ((v11 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v12 = BYTE1(v99);
        v87 = v9;
        if (BYTE1(v99) != 7)
        {
          v13 = *(v7 + 16);
          if (v13)
          {
            v14 = (v7 + 32);
            do
            {
              if (!v13)
              {
                goto LABEL_3;
              }

              v16 = *v14;
              if (v16 <= 2)
              {
                v19 = 0xE900000000000079;
                v20 = 0x616473656E646577;
                if (v16 == 1)
                {
                  v20 = 0x79616473657574;
                  v19 = 0xE700000000000000;
                }

                if (*v14)
                {
                  v17 = v20;
                }

                else
                {
                  v17 = 0x7961646E6F6DLL;
                }

                if (*v14)
                {
                  v18 = v19;
                }

                else
                {
                  v18 = 0xE600000000000000;
                }

                if (v12 > 2)
                {
LABEL_39:
                  v21 = 0x7961646E7573;
                  if (v12 == 5)
                  {
                    v21 = 0x7961647275746173;
                    v22 = 0xE800000000000000;
                  }

                  else
                  {
                    v22 = 0xE600000000000000;
                  }

                  v23 = 0x7961647372756874;
                  if (v12 == 3)
                  {
                    v24 = 0xE800000000000000;
                  }

                  else
                  {
                    v23 = 0x796164697266;
                    v24 = 0xE600000000000000;
                  }

                  if (v12 <= 4)
                  {
                    v25 = v23;
                  }

                  else
                  {
                    v25 = v21;
                  }

                  if (v12 <= 4)
                  {
                    v26 = v24;
                  }

                  else
                  {
                    v26 = v22;
                  }

                  if (v17 != v25)
                  {
                    goto LABEL_15;
                  }

                  goto LABEL_64;
                }
              }

              else if (*v14 > 4u)
              {
                if (v16 == 5)
                {
                  v18 = 0xE800000000000000;
                  v17 = 0x7961647275746173;
                  if (v12 > 2)
                  {
                    goto LABEL_39;
                  }
                }

                else
                {
                  v17 = 0x7961646E7573;
                  v18 = 0xE600000000000000;
                  if (v12 > 2)
                  {
                    goto LABEL_39;
                  }
                }
              }

              else
              {
                if (v16 == 3)
                {
                  v17 = 0x7961647372756874;
                }

                else
                {
                  v17 = 0x796164697266;
                }

                if (v16 == 3)
                {
                  v18 = 0xE800000000000000;
                }

                else
                {
                  v18 = 0xE600000000000000;
                }

                if (v12 > 2)
                {
                  goto LABEL_39;
                }
              }

              if (v12)
              {
                if (v12 == 1)
                {
                  v27 = 0x79616473657574;
                }

                else
                {
                  v27 = 0x616473656E646577;
                }

                if (v12 == 1)
                {
                  v26 = 0xE700000000000000;
                }

                else
                {
                  v26 = 0xE900000000000079;
                }

                if (v17 != v27)
                {
                  goto LABEL_15;
                }
              }

              else
              {
                v26 = 0xE600000000000000;
                if (v17 != 0x7961646E6F6DLL)
                {
                  goto LABEL_15;
                }
              }

LABEL_64:
              if (v18 == v26)
              {

                break;
              }

LABEL_15:
              v15 = sub_1B4D18DCC();

              ++v14;
              --v13;
            }

            while ((v15 & 1) == 0);
          }
        }

        if ((v100 & 1) == 0)
        {
          v28 = *(v88 + 16);
          if (v28)
          {
            v29 = (v88 + 32);
            while (v28)
            {
              v30 = *v29++;
              --v28;
              if (v30 == *(&v99 + 1))
              {
                goto LABEL_71;
              }
            }

            goto LABEL_3;
          }
        }

LABEL_71:
        if ((v101[0] & 1) == 0)
        {
          v31 = *(v86 + 16);
          if (v31)
          {
            v32 = (v86 + 32);
            while (v31)
            {
              v33 = *v32++;
              --v31;
              if (v33 == *(&v100 + 1))
              {
                goto LABEL_76;
              }
            }

LABEL_3:
            sub_1B498AD54(&v99);
            goto LABEL_4;
          }
        }

LABEL_76:
        v34 = v101[1];
        if (v101[1] != 5)
        {
          v35 = *(v85 + 16);
          if (v35)
          {
            v36 = (v85 + 32);
            do
            {
              if (!v35)
              {
                goto LABEL_3;
              }

              v38 = *v36;
              if (v38 <= 1)
              {
                if (*v36)
                {
                  v39 = 0x726F6F646E69;
                }

                else
                {
                  v39 = 0x6E776F6E6B6E75;
                }

                if (*v36)
                {
                  v40 = 0xE600000000000000;
                }

                else
                {
                  v40 = 0xE700000000000000;
                }

                if (v34 > 1)
                {
LABEL_98:
                  v41 = 0x676E696D6D697773;
                  if (v34 == 3)
                  {
                    v41 = 0x657461576E65706FLL;
                  }

                  v42 = 0xEC0000006C6F6F50;
                  if (v34 == 3)
                  {
                    v42 = 0xE900000000000072;
                  }

                  if (v34 == 2)
                  {
                    v43 = 0x726F6F6474756FLL;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  if (v34 == 2)
                  {
                    v44 = 0xE700000000000000;
                  }

                  else
                  {
                    v44 = v42;
                  }

                  if (v39 != v43)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_115;
                }
              }

              else if (v38 == 2)
              {
                v40 = 0xE700000000000000;
                v39 = 0x726F6F6474756FLL;
                if (v34 > 1)
                {
                  goto LABEL_98;
                }
              }

              else
              {
                if (v38 == 3)
                {
                  v39 = 0x657461576E65706FLL;
                }

                else
                {
                  v39 = 0x676E696D6D697773;
                }

                if (v38 == 3)
                {
                  v40 = 0xE900000000000072;
                }

                else
                {
                  v40 = 0xEC0000006C6F6F50;
                }

                if (v34 > 1)
                {
                  goto LABEL_98;
                }
              }

              if (v34)
              {
                v44 = 0xE600000000000000;
                if (v39 != 0x726F6F646E69)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                v44 = 0xE700000000000000;
                if (v39 != 0x6E776F6E6B6E75)
                {
                  goto LABEL_79;
                }
              }

LABEL_115:
              if (v40 == v44)
              {

                break;
              }

LABEL_79:
              v37 = sub_1B4D18DCC();

              ++v36;
              --v35;
            }

            while ((v37 & 1) == 0);
          }
        }

        if (*&v101[16] && *(v87 + 16))
        {
          v91 = *&v101[8];
          MEMORY[0x1EEE9AC00](v11);
          v82[2] = &v91;
          v45 = v84;
          v47 = sub_1B49B1748(sub_1B4C926F8, v82, v46);
          v84 = v45;
          sub_1B498AD54(&v99);
          if ((v47 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_1B498AD54(&v99);
        }
      }

      v48 = v107;
      __swift_project_boxed_opaque_existential_1(v106 + 1, v107);
      sub_1B4B70700(v48, *(*(&v48 + 1) + 8));
      v98 = v91;
      if (WorkoutPropertyKind.rawValue.getter() == 0x756F436C61746F74 && v49 == 0xEA0000000000746ELL)
      {

LABEL_126:
        v95 = v106[0];
        v96 = v106[1];
        v97 = v107;
        v91 = v102;
        v92 = v103;
        v93 = v104;
        v94 = v105;
        v3 = v109;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCECFC(0, *(v3 + 16) + 1, 1);
          v3 = v108;
        }

        v53 = *(v3 + 16);
        v52 = *(v3 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1B4BCECFC((v52 > 1), v53 + 1, 1);
          v3 = v108;
        }

        *(v3 + 16) = v53 + 1;
        v54 = (v3 + 112 * v53);
        v55 = v91;
        v56 = v93;
        v54[3] = v92;
        v54[4] = v56;
        v54[2] = v55;
        v57 = v94;
        v58 = v95;
        v59 = v97;
        v54[7] = v96;
        v54[8] = v59;
        v54[5] = v57;
        v54[6] = v58;
        goto LABEL_5;
      }

      v50 = sub_1B4D18DCC();

      if (v50)
      {
        goto LABEL_126;
      }

LABEL_4:
      sub_1B498AE58(&v102);
      v3 = v109;
LABEL_5:
      ++v5;
    }

    while (v5 != v90);
  }

  *&v102 = v3;

  v60 = v84;
  sub_1B4AE42B8(&v102);
  v61 = v60;
  if (v60)
  {

    __break(1u);
  }

  else
  {

    v62 = v102;
    v63 = *(v102 + 16);
    if (v63)
    {
      v87 = 0;
      *&v99 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF0BC(0, v63, 0);
      v64 = v99;
      v86 = v62;
      v65 = v62 + 32;
      do
      {
        v109 = v63;
        v90 = v65;
        sub_1B498ADFC(v65, &v102);
        v66 = v107;
        v67 = __swift_project_boxed_opaque_existential_1(v106 + 1, v107);
        v68 = *(*(&v66 + 1) + 8);
        v88 = *(v68 + 64);
        v89 = v67;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *(&v92 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        *&v93 = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v91);
        (v88)(v66, v68);
        v72 = sub_1B498AE58(&v102);
        *&v99 = v64;
        v74 = *(v64 + 16);
        v73 = *(v64 + 24);
        if (v74 >= v73 >> 1)
        {
          v72 = sub_1B4BCF0BC((v73 > 1), v74 + 1, 1);
        }

        v75 = MEMORY[0x1EEE9AC00](v72);
        v77 = &v83 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v78 + 16))(v77, boxed_opaque_existential_1, AssociatedTypeWitness, v75);
        sub_1B4CB7620(v74, v77, &v99, AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_destroy_boxed_opaque_existential_1Tm(&v91);
        v64 = v99;
        v65 = v90 + 112;
        v63 = v109 - 1;
      }

      while (v109 != 1);

      v61 = v87;
    }

    else
    {

      v64 = MEMORY[0x1E69E7CC0];
    }

    v79 = sub_1B49E684C(v64);

    if (!v79)
    {
      v79 = MEMORY[0x1E69E7CC0];
    }

    sub_1B4CEB478(v79, &v102);

    if (!v61)
    {
      v81 = v83;
      if (BYTE8(v102))
      {
        *v83 = 0;
        *(v81 + 8) = 1;
      }

      else
      {
        *v83 = v102;
        *(v81 + 8) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B4CE458C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v92 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE510, &qword_1B4D47778);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v91 = &v91 - v6;
  v7 = MEMORY[0x1E69E7CC0];
  v100 = *(a2 + 16);
  if (v100)
  {
    v8 = 0;
    v99 = (a2 + 32);
    v96 = 0x80000001B4D488D0;
    do
    {
      sub_1B498ADFC(&v99[14 * v8], &v112);
      v109 = v113;
      v110 = v114;
      *v111 = v115;
      *&v111[16] = *&v116[0];
      v9 = *a1;
      if (*a1)
      {
        v119 = v7;
        v11 = a1[1];
        v10 = a1[2];
        v12 = a1[3];
        v95 = a1[4];
        v13 = a1[5];
        v14 = v109;
        v97 = v12;
        if (v109 == 12 || !*(v9 + 16))
        {
          v15 = sub_1B498B0D4(&v109, &v101);
        }

        else
        {
          sub_1B498B0D4(&v109, &v101);
          v15 = sub_1B4978C4C(v14, v9);
          if ((v15 & 1) == 0)
          {
LABEL_3:
            v7 = v119;
LABEL_4:
            sub_1B498AD54(&v109);
            goto LABEL_5;
          }
        }

        v94 = v10;
        v16 = BYTE1(v109);
        v98 = v13;
        if (BYTE1(v109) != 7)
        {
          v17 = *(v11 + 16);
          if (v17)
          {
            v18 = (v11 + 32);
            do
            {
              if (!v17)
              {
                goto LABEL_3;
              }

              v20 = *v18;
              if (v20 <= 2)
              {
                v23 = 0xE900000000000079;
                v24 = 0x616473656E646577;
                if (v20 == 1)
                {
                  v24 = 0x79616473657574;
                  v23 = 0xE700000000000000;
                }

                if (*v18)
                {
                  v21 = v24;
                }

                else
                {
                  v21 = 0x7961646E6F6DLL;
                }

                if (*v18)
                {
                  v22 = v23;
                }

                else
                {
                  v22 = 0xE600000000000000;
                }

                if (v16 > 2)
                {
LABEL_40:
                  v25 = 0x7961646E7573;
                  if (v16 == 5)
                  {
                    v25 = 0x7961647275746173;
                    v26 = 0xE800000000000000;
                  }

                  else
                  {
                    v26 = 0xE600000000000000;
                  }

                  v27 = 0x7961647372756874;
                  if (v16 == 3)
                  {
                    v28 = 0xE800000000000000;
                  }

                  else
                  {
                    v27 = 0x796164697266;
                    v28 = 0xE600000000000000;
                  }

                  if (v16 <= 4)
                  {
                    v29 = v27;
                  }

                  else
                  {
                    v29 = v25;
                  }

                  if (v16 <= 4)
                  {
                    v30 = v28;
                  }

                  else
                  {
                    v30 = v26;
                  }

                  if (v21 != v29)
                  {
                    goto LABEL_16;
                  }

                  goto LABEL_65;
                }
              }

              else if (*v18 > 4u)
              {
                if (v20 == 5)
                {
                  v22 = 0xE800000000000000;
                  v21 = 0x7961647275746173;
                  if (v16 > 2)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                  v21 = 0x7961646E7573;
                  v22 = 0xE600000000000000;
                  if (v16 > 2)
                  {
                    goto LABEL_40;
                  }
                }
              }

              else
              {
                if (v20 == 3)
                {
                  v21 = 0x7961647372756874;
                }

                else
                {
                  v21 = 0x796164697266;
                }

                if (v20 == 3)
                {
                  v22 = 0xE800000000000000;
                }

                else
                {
                  v22 = 0xE600000000000000;
                }

                if (v16 > 2)
                {
                  goto LABEL_40;
                }
              }

              if (v16)
              {
                if (v16 == 1)
                {
                  v31 = 0x79616473657574;
                }

                else
                {
                  v31 = 0x616473656E646577;
                }

                if (v16 == 1)
                {
                  v30 = 0xE700000000000000;
                }

                else
                {
                  v30 = 0xE900000000000079;
                }

                if (v21 != v31)
                {
                  goto LABEL_16;
                }
              }

              else
              {
                v30 = 0xE600000000000000;
                if (v21 != 0x7961646E6F6DLL)
                {
                  goto LABEL_16;
                }
              }

LABEL_65:
              if (v22 == v30)
              {

                break;
              }

LABEL_16:
              v19 = sub_1B4D18DCC();

              ++v18;
              --v17;
            }

            while ((v19 & 1) == 0);
          }
        }

        if (v110)
        {
          v7 = v119;
        }

        else
        {
          v32 = *(v94 + 16);
          v7 = v119;
          if (v32)
          {
            v33 = (v94 + 32);
            while (v32)
            {
              v34 = *v33++;
              --v32;
              if (v34 == *(&v109 + 1))
              {
                goto LABEL_73;
              }
            }

            goto LABEL_4;
          }
        }

LABEL_73:
        if ((v111[0] & 1) == 0)
        {
          v35 = *(v97 + 16);
          if (v35)
          {
            v36 = (v97 + 32);
            while (v35)
            {
              v37 = *v36++;
              --v35;
              if (v37 == *(&v110 + 1))
              {
                goto LABEL_78;
              }
            }

            goto LABEL_4;
          }
        }

LABEL_78:
        v38 = v111[1];
        if (v111[1] != 5)
        {
          v39 = *(v95 + 16);
          if (v39)
          {
            v40 = (v95 + 32);
            do
            {
              if (!v39)
              {
                goto LABEL_3;
              }

              v42 = *v40;
              if (v42 <= 1)
              {
                if (*v40)
                {
                  v43 = 0x726F6F646E69;
                }

                else
                {
                  v43 = 0x6E776F6E6B6E75;
                }

                if (*v40)
                {
                  v44 = 0xE600000000000000;
                }

                else
                {
                  v44 = 0xE700000000000000;
                }

                if (v38 > 1)
                {
LABEL_100:
                  v45 = 0x676E696D6D697773;
                  if (v38 == 3)
                  {
                    v45 = 0x657461576E65706FLL;
                  }

                  v46 = 0xEC0000006C6F6F50;
                  if (v38 == 3)
                  {
                    v46 = 0xE900000000000072;
                  }

                  if (v38 == 2)
                  {
                    v47 = 0x726F6F6474756FLL;
                  }

                  else
                  {
                    v47 = v45;
                  }

                  if (v38 == 2)
                  {
                    v48 = 0xE700000000000000;
                  }

                  else
                  {
                    v48 = v46;
                  }

                  if (v43 != v47)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_117;
                }
              }

              else if (v42 == 2)
              {
                v44 = 0xE700000000000000;
                v43 = 0x726F6F6474756FLL;
                if (v38 > 1)
                {
                  goto LABEL_100;
                }
              }

              else
              {
                if (v42 == 3)
                {
                  v43 = 0x657461576E65706FLL;
                }

                else
                {
                  v43 = 0x676E696D6D697773;
                }

                if (v42 == 3)
                {
                  v44 = 0xE900000000000072;
                }

                else
                {
                  v44 = 0xEC0000006C6F6F50;
                }

                if (v38 > 1)
                {
                  goto LABEL_100;
                }
              }

              if (v38)
              {
                v48 = 0xE600000000000000;
                if (v43 != 0x726F6F646E69)
                {
                  goto LABEL_81;
                }
              }

              else
              {
                v48 = 0xE700000000000000;
                if (v43 != 0x6E776F6E6B6E75)
                {
                  goto LABEL_81;
                }
              }

LABEL_117:
              if (v44 == v48)
              {

                break;
              }

LABEL_81:
              v41 = sub_1B4D18DCC();

              ++v40;
              --v39;
            }

            while ((v41 & 1) == 0);
          }
        }

        if (*&v111[16] && *(v98 + 16))
        {
          v101 = *&v111[8];
          MEMORY[0x1EEE9AC00](v15);
          *(&v91 - 2) = &v101;
          v49 = v93;
          v51 = sub_1B49B1748(sub_1B4C926F8, (&v91 - 4), v50);
          v93 = v49;
          sub_1B498AD54(&v109);
          v7 = v119;
          if ((v51 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_1B498AD54(&v109);
          v7 = v119;
        }
      }

      v52 = v117;
      __swift_project_boxed_opaque_existential_1(v116 + 1, v117);
      sub_1B4B70700(v52, *(*(&v52 + 1) + 8));
      v108 = v101;
      if (WorkoutPropertyKind.rawValue.getter() == 0xD000000000000012 && v96 == v53)
      {

LABEL_128:
        v105 = v116[0];
        v106 = v116[1];
        v107 = v117;
        v101 = v112;
        v102 = v113;
        v103 = v114;
        v104 = v115;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCECFC(0, *(v7 + 16) + 1, 1);
          v7 = v118;
        }

        v57 = *(v7 + 16);
        v56 = *(v7 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_1B4BCECFC((v56 > 1), v57 + 1, 1);
          v7 = v118;
        }

        *(v7 + 16) = v57 + 1;
        v58 = (v7 + 112 * v57);
        v59 = v101;
        v60 = v103;
        v58[3] = v102;
        v58[4] = v60;
        v58[2] = v59;
        v61 = v104;
        v62 = v105;
        v63 = v107;
        v58[7] = v106;
        v58[8] = v63;
        v58[5] = v61;
        v58[6] = v62;
        goto LABEL_6;
      }

      v54 = sub_1B4D18DCC();

      if (v54)
      {
        goto LABEL_128;
      }

LABEL_5:
      sub_1B498AE58(&v112);
LABEL_6:
      ++v8;
    }

    while (v8 != v100);
  }

  *&v112 = v7;

  v64 = v93;
  sub_1B4AE42B8(&v112);
  v65 = v64;
  if (v64)
  {

    __break(1u);
  }

  else
  {

    v66 = v112;
    v67 = *(v112 + 16);
    if (v67)
    {
      v97 = 0;
      *&v109 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF0BC(0, v67, 0);
      v68 = v109;
      v96 = v66;
      v69 = v66 + 32;
      do
      {
        v119 = v67;
        v100 = v69;
        sub_1B498ADFC(v69, &v112);
        v70 = v117;
        v71 = __swift_project_boxed_opaque_existential_1(v116 + 1, v117);
        v72 = *(*(&v70 + 1) + 8);
        v98 = *(v72 + 64);
        v99 = v71;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *(&v102 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        *&v103 = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v101);
        (v98)(v70, v72);
        v76 = sub_1B498AE58(&v112);
        *&v109 = v68;
        v78 = *(v68 + 16);
        v77 = *(v68 + 24);
        if (v78 >= v77 >> 1)
        {
          v76 = sub_1B4BCF0BC((v77 > 1), v78 + 1, 1);
        }

        v79 = MEMORY[0x1EEE9AC00](v76);
        v81 = &v91 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v82 + 16))(v81, boxed_opaque_existential_1, AssociatedTypeWitness, v79);
        sub_1B4CB7620(v78, v81, &v109, AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_destroy_boxed_opaque_existential_1Tm(&v101);
        v68 = v109;
        v69 = v100 + 112;
        v67 = v119 - 1;
      }

      while (v119 != 1);

      v65 = v97;
    }

    else
    {

      v68 = MEMORY[0x1E69E7CC0];
    }

    v83 = sub_1B49E656C(v68);

    if (v83)
    {
      v84 = v83;
    }

    else
    {
      v84 = MEMORY[0x1E69E7CC0];
    }

    v85 = v91;
    sub_1B4CEB630(v84, &qword_1EB8AE510, &qword_1B4D47778, type metadata accessor for WorkoutDistanceStatisticsProperty, type metadata accessor for WorkoutDistanceStatisticsProperty, v91);

    v87 = v92;
    if (!v65)
    {
      v88 = type metadata accessor for WorkoutDistanceStatisticsProperty(0);
      if ((*(*(v88 - 8) + 48))(v85, 1, v88) == 1)
      {
        sub_1B4975024(v85, &qword_1EB8AE510, &qword_1B4D47778);
        v89 = 1;
      }

      else
      {
        sub_1B4974FBC(v85, v87, &qword_1EB8A6840, &unk_1B4D20FA0);
        sub_1B4CFA938(v85, type metadata accessor for WorkoutDistanceStatisticsProperty);
        v89 = 0;
      }

      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
      return (*(*(v90 - 8) + 56))(v87, v89, 1, v90);
    }
  }

  return result;
}

uint64_t sub_1B4CE5168@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v92 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE4A0, &qword_1B4D47740);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v91 = &v91 - v6;
  v7 = MEMORY[0x1E69E7CC0];
  v100 = *(a2 + 16);
  if (v100)
  {
    v8 = 0;
    v99 = (a2 + 32);
    v96 = 0x80000001B4D48BA0;
    do
    {
      sub_1B498ADFC(&v99[14 * v8], &v112);
      v109 = v113;
      v110 = v114;
      *v111 = v115;
      *&v111[16] = *&v116[0];
      v9 = *a1;
      if (*a1)
      {
        v119 = v7;
        v11 = a1[1];
        v10 = a1[2];
        v12 = a1[3];
        v95 = a1[4];
        v13 = a1[5];
        v14 = v109;
        v97 = v12;
        if (v109 == 12 || !*(v9 + 16))
        {
          v15 = sub_1B498B0D4(&v109, &v101);
        }

        else
        {
          sub_1B498B0D4(&v109, &v101);
          v15 = sub_1B4978C4C(v14, v9);
          if ((v15 & 1) == 0)
          {
LABEL_3:
            v7 = v119;
LABEL_4:
            sub_1B498AD54(&v109);
            goto LABEL_5;
          }
        }

        v94 = v10;
        v16 = BYTE1(v109);
        v98 = v13;
        if (BYTE1(v109) != 7)
        {
          v17 = *(v11 + 16);
          if (v17)
          {
            v18 = (v11 + 32);
            do
            {
              if (!v17)
              {
                goto LABEL_3;
              }

              v20 = *v18;
              if (v20 <= 2)
              {
                v23 = 0xE900000000000079;
                v24 = 0x616473656E646577;
                if (v20 == 1)
                {
                  v24 = 0x79616473657574;
                  v23 = 0xE700000000000000;
                }

                if (*v18)
                {
                  v21 = v24;
                }

                else
                {
                  v21 = 0x7961646E6F6DLL;
                }

                if (*v18)
                {
                  v22 = v23;
                }

                else
                {
                  v22 = 0xE600000000000000;
                }

                if (v16 > 2)
                {
LABEL_40:
                  v25 = 0x7961646E7573;
                  if (v16 == 5)
                  {
                    v25 = 0x7961647275746173;
                    v26 = 0xE800000000000000;
                  }

                  else
                  {
                    v26 = 0xE600000000000000;
                  }

                  v27 = 0x7961647372756874;
                  if (v16 == 3)
                  {
                    v28 = 0xE800000000000000;
                  }

                  else
                  {
                    v27 = 0x796164697266;
                    v28 = 0xE600000000000000;
                  }

                  if (v16 <= 4)
                  {
                    v29 = v27;
                  }

                  else
                  {
                    v29 = v25;
                  }

                  if (v16 <= 4)
                  {
                    v30 = v28;
                  }

                  else
                  {
                    v30 = v26;
                  }

                  if (v21 != v29)
                  {
                    goto LABEL_16;
                  }

                  goto LABEL_65;
                }
              }

              else if (*v18 > 4u)
              {
                if (v20 == 5)
                {
                  v22 = 0xE800000000000000;
                  v21 = 0x7961647275746173;
                  if (v16 > 2)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                  v21 = 0x7961646E7573;
                  v22 = 0xE600000000000000;
                  if (v16 > 2)
                  {
                    goto LABEL_40;
                  }
                }
              }

              else
              {
                if (v20 == 3)
                {
                  v21 = 0x7961647372756874;
                }

                else
                {
                  v21 = 0x796164697266;
                }

                if (v20 == 3)
                {
                  v22 = 0xE800000000000000;
                }

                else
                {
                  v22 = 0xE600000000000000;
                }

                if (v16 > 2)
                {
                  goto LABEL_40;
                }
              }

              if (v16)
              {
                if (v16 == 1)
                {
                  v31 = 0x79616473657574;
                }

                else
                {
                  v31 = 0x616473656E646577;
                }

                if (v16 == 1)
                {
                  v30 = 0xE700000000000000;
                }

                else
                {
                  v30 = 0xE900000000000079;
                }

                if (v21 != v31)
                {
                  goto LABEL_16;
                }
              }

              else
              {
                v30 = 0xE600000000000000;
                if (v21 != 0x7961646E6F6DLL)
                {
                  goto LABEL_16;
                }
              }

LABEL_65:
              if (v22 == v30)
              {

                break;
              }

LABEL_16:
              v19 = sub_1B4D18DCC();

              ++v18;
              --v17;
            }

            while ((v19 & 1) == 0);
          }
        }

        if (v110)
        {
          v7 = v119;
        }

        else
        {
          v32 = *(v94 + 16);
          v7 = v119;
          if (v32)
          {
            v33 = (v94 + 32);
            while (v32)
            {
              v34 = *v33++;
              --v32;
              if (v34 == *(&v109 + 1))
              {
                goto LABEL_73;
              }
            }

            goto LABEL_4;
          }
        }

LABEL_73:
        if ((v111[0] & 1) == 0)
        {
          v35 = *(v97 + 16);
          if (v35)
          {
            v36 = (v97 + 32);
            while (v35)
            {
              v37 = *v36++;
              --v35;
              if (v37 == *(&v110 + 1))
              {
                goto LABEL_78;
              }
            }

            goto LABEL_4;
          }
        }

LABEL_78:
        v38 = v111[1];
        if (v111[1] != 5)
        {
          v39 = *(v95 + 16);
          if (v39)
          {
            v40 = (v95 + 32);
            do
            {
              if (!v39)
              {
                goto LABEL_3;
              }

              v42 = *v40;
              if (v42 <= 1)
              {
                if (*v40)
                {
                  v43 = 0x726F6F646E69;
                }

                else
                {
                  v43 = 0x6E776F6E6B6E75;
                }

                if (*v40)
                {
                  v44 = 0xE600000000000000;
                }

                else
                {
                  v44 = 0xE700000000000000;
                }

                if (v38 > 1)
                {
LABEL_100:
                  v45 = 0x676E696D6D697773;
                  if (v38 == 3)
                  {
                    v45 = 0x657461576E65706FLL;
                  }

                  v46 = 0xEC0000006C6F6F50;
                  if (v38 == 3)
                  {
                    v46 = 0xE900000000000072;
                  }

                  if (v38 == 2)
                  {
                    v47 = 0x726F6F6474756FLL;
                  }

                  else
                  {
                    v47 = v45;
                  }

                  if (v38 == 2)
                  {
                    v48 = 0xE700000000000000;
                  }

                  else
                  {
                    v48 = v46;
                  }

                  if (v43 != v47)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_117;
                }
              }

              else if (v42 == 2)
              {
                v44 = 0xE700000000000000;
                v43 = 0x726F6F6474756FLL;
                if (v38 > 1)
                {
                  goto LABEL_100;
                }
              }

              else
              {
                if (v42 == 3)
                {
                  v43 = 0x657461576E65706FLL;
                }

                else
                {
                  v43 = 0x676E696D6D697773;
                }

                if (v42 == 3)
                {
                  v44 = 0xE900000000000072;
                }

                else
                {
                  v44 = 0xEC0000006C6F6F50;
                }

                if (v38 > 1)
                {
                  goto LABEL_100;
                }
              }

              if (v38)
              {
                v48 = 0xE600000000000000;
                if (v43 != 0x726F6F646E69)
                {
                  goto LABEL_81;
                }
              }

              else
              {
                v48 = 0xE700000000000000;
                if (v43 != 0x6E776F6E6B6E75)
                {
                  goto LABEL_81;
                }
              }

LABEL_117:
              if (v44 == v48)
              {

                break;
              }

LABEL_81:
              v41 = sub_1B4D18DCC();

              ++v40;
              --v39;
            }

            while ((v41 & 1) == 0);
          }
        }

        if (*&v111[16] && *(v98 + 16))
        {
          v101 = *&v111[8];
          MEMORY[0x1EEE9AC00](v15);
          *(&v91 - 2) = &v101;
          v49 = v93;
          v51 = sub_1B49B1748(sub_1B4AE535C, (&v91 - 4), v50);
          v93 = v49;
          sub_1B498AD54(&v109);
          v7 = v119;
          if ((v51 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_1B498AD54(&v109);
          v7 = v119;
        }
      }

      v52 = v117;
      __swift_project_boxed_opaque_existential_1(v116 + 1, v117);
      sub_1B4B70700(v52, *(*(&v52 + 1) + 8));
      v108 = v101;
      if (WorkoutPropertyKind.rawValue.getter() == 0xD000000000000012 && v96 == v53)
      {

LABEL_128:
        v105 = v116[0];
        v106 = v116[1];
        v107 = v117;
        v101 = v112;
        v102 = v113;
        v103 = v114;
        v104 = v115;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCECFC(0, *(v7 + 16) + 1, 1);
          v7 = v118;
        }

        v57 = *(v7 + 16);
        v56 = *(v7 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_1B4BCECFC((v56 > 1), v57 + 1, 1);
          v7 = v118;
        }

        *(v7 + 16) = v57 + 1;
        v58 = (v7 + 112 * v57);
        v59 = v101;
        v60 = v103;
        v58[3] = v102;
        v58[4] = v60;
        v58[2] = v59;
        v61 = v104;
        v62 = v105;
        v63 = v107;
        v58[7] = v106;
        v58[8] = v63;
        v58[5] = v61;
        v58[6] = v62;
        goto LABEL_6;
      }

      v54 = sub_1B4D18DCC();

      if (v54)
      {
        goto LABEL_128;
      }

LABEL_5:
      sub_1B498AE58(&v112);
LABEL_6:
      ++v8;
    }

    while (v8 != v100);
  }

  *&v112 = v7;

  v64 = v93;
  sub_1B4AE42B8(&v112);
  v65 = v64;
  if (v64)
  {

    __break(1u);
  }

  else
  {

    v66 = v112;
    v67 = *(v112 + 16);
    if (v67)
    {
      v97 = 0;
      *&v109 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF0BC(0, v67, 0);
      v68 = v109;
      v96 = v66;
      v69 = v66 + 32;
      do
      {
        v119 = v67;
        v100 = v69;
        sub_1B498ADFC(v69, &v112);
        v70 = v117;
        v71 = __swift_project_boxed_opaque_existential_1(v116 + 1, v117);
        v72 = *(*(&v70 + 1) + 8);
        v98 = *(v72 + 64);
        v99 = v71;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *(&v102 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        *&v103 = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v101);
        (v98)(v70, v72);
        v76 = sub_1B498AE58(&v112);
        *&v109 = v68;
        v78 = *(v68 + 16);
        v77 = *(v68 + 24);
        if (v78 >= v77 >> 1)
        {
          v76 = sub_1B4BCF0BC((v77 > 1), v78 + 1, 1);
        }

        v79 = MEMORY[0x1EEE9AC00](v76);
        v81 = &v91 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v82 + 16))(v81, boxed_opaque_existential_1, AssociatedTypeWitness, v79);
        sub_1B4CB7620(v78, v81, &v109, AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_destroy_boxed_opaque_existential_1Tm(&v101);
        v68 = v109;
        v69 = v100 + 112;
        v67 = v119 - 1;
      }

      while (v119 != 1);

      v65 = v97;
    }

    else
    {

      v68 = MEMORY[0x1E69E7CC0];
    }

    v83 = sub_1B49E6DBC(v68);

    if (v83)
    {
      v84 = v83;
    }

    else
    {
      v84 = MEMORY[0x1E69E7CC0];
    }

    v85 = v91;
    sub_1B4CECBA8(v84, v91);

    v87 = v92;
    if (!v65)
    {
      v88 = type metadata accessor for WorkoutDurationStatisticsProperty(0);
      if ((*(*(v88 - 8) + 48))(v85, 1, v88) == 1)
      {
        sub_1B4975024(v85, &qword_1EB8AE4A0, &qword_1B4D47740);
        v89 = 1;
      }

      else
      {
        sub_1B4974FBC(v85, v87, &qword_1EB8A6858, &qword_1B4D1AB70);
        sub_1B4CFA938(v85, type metadata accessor for WorkoutDurationStatisticsProperty);
        v89 = 0;
      }

      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
      return (*(*(v90 - 8) + 56))(v87, v89, 1, v90);
    }
  }

  return result;
}

uint64_t sub_1B4CE5D0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v92 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE4E0, &qword_1B4D47758);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v91 = &v91 - v6;
  v7 = MEMORY[0x1E69E7CC0];
  v100 = *(a2 + 16);
  if (v100)
  {
    v8 = 0;
    v99 = (a2 + 32);
    v96 = 0x80000001B4D48B80;
    do
    {
      sub_1B498ADFC(&v99[14 * v8], &v112);
      v109 = v113;
      v110 = v114;
      *v111 = v115;
      *&v111[16] = *&v116[0];
      v9 = *a1;
      if (*a1)
      {
        v119 = v7;
        v11 = a1[1];
        v10 = a1[2];
        v12 = a1[3];
        v95 = a1[4];
        v13 = a1[5];
        v14 = v109;
        v97 = v12;
        if (v109 == 12 || !*(v9 + 16))
        {
          v15 = sub_1B498B0D4(&v109, &v101);
        }

        else
        {
          sub_1B498B0D4(&v109, &v101);
          v15 = sub_1B4978C4C(v14, v9);
          if ((v15 & 1) == 0)
          {
LABEL_3:
            v7 = v119;
LABEL_4:
            sub_1B498AD54(&v109);
            goto LABEL_5;
          }
        }

        v94 = v10;
        v16 = BYTE1(v109);
        v98 = v13;
        if (BYTE1(v109) != 7)
        {
          v17 = *(v11 + 16);
          if (v17)
          {
            v18 = (v11 + 32);
            do
            {
              if (!v17)
              {
                goto LABEL_3;
              }

              v20 = *v18;
              if (v20 <= 2)
              {
                v23 = 0xE900000000000079;
                v24 = 0x616473656E646577;
                if (v20 == 1)
                {
                  v24 = 0x79616473657574;
                  v23 = 0xE700000000000000;
                }

                if (*v18)
                {
                  v21 = v24;
                }

                else
                {
                  v21 = 0x7961646E6F6DLL;
                }

                if (*v18)
                {
                  v22 = v23;
                }

                else
                {
                  v22 = 0xE600000000000000;
                }

                if (v16 > 2)
                {
LABEL_40:
                  v25 = 0x7961646E7573;
                  if (v16 == 5)
                  {
                    v25 = 0x7961647275746173;
                    v26 = 0xE800000000000000;
                  }

                  else
                  {
                    v26 = 0xE600000000000000;
                  }

                  v27 = 0x7961647372756874;
                  if (v16 == 3)
                  {
                    v28 = 0xE800000000000000;
                  }

                  else
                  {
                    v27 = 0x796164697266;
                    v28 = 0xE600000000000000;
                  }

                  if (v16 <= 4)
                  {
                    v29 = v27;
                  }

                  else
                  {
                    v29 = v25;
                  }

                  if (v16 <= 4)
                  {
                    v30 = v28;
                  }

                  else
                  {
                    v30 = v26;
                  }

                  if (v21 != v29)
                  {
                    goto LABEL_16;
                  }

                  goto LABEL_65;
                }
              }

              else if (*v18 > 4u)
              {
                if (v20 == 5)
                {
                  v22 = 0xE800000000000000;
                  v21 = 0x7961647275746173;
                  if (v16 > 2)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                  v21 = 0x7961646E7573;
                  v22 = 0xE600000000000000;
                  if (v16 > 2)
                  {
                    goto LABEL_40;
                  }
                }
              }

              else
              {
                if (v20 == 3)
                {
                  v21 = 0x7961647372756874;
                }

                else
                {
                  v21 = 0x796164697266;
                }

                if (v20 == 3)
                {
                  v22 = 0xE800000000000000;
                }

                else
                {
                  v22 = 0xE600000000000000;
                }

                if (v16 > 2)
                {
                  goto LABEL_40;
                }
              }

              if (v16)
              {
                if (v16 == 1)
                {
                  v31 = 0x79616473657574;
                }

                else
                {
                  v31 = 0x616473656E646577;
                }

                if (v16 == 1)
                {
                  v30 = 0xE700000000000000;
                }

                else
                {
                  v30 = 0xE900000000000079;
                }

                if (v21 != v31)
                {
                  goto LABEL_16;
                }
              }

              else
              {
                v30 = 0xE600000000000000;
                if (v21 != 0x7961646E6F6DLL)
                {
                  goto LABEL_16;
                }
              }

LABEL_65:
              if (v22 == v30)
              {

                break;
              }

LABEL_16:
              v19 = sub_1B4D18DCC();

              ++v18;
              --v17;
            }

            while ((v19 & 1) == 0);
          }
        }

        if (v110)
        {
          v7 = v119;
        }

        else
        {
          v32 = *(v94 + 16);
          v7 = v119;
          if (v32)
          {
            v33 = (v94 + 32);
            while (v32)
            {
              v34 = *v33++;
              --v32;
              if (v34 == *(&v109 + 1))
              {
                goto LABEL_73;
              }
            }

            goto LABEL_4;
          }
        }

LABEL_73:
        if ((v111[0] & 1) == 0)
        {
          v35 = *(v97 + 16);
          if (v35)
          {
            v36 = (v97 + 32);
            while (v35)
            {
              v37 = *v36++;
              --v35;
              if (v37 == *(&v110 + 1))
              {
                goto LABEL_78;
              }
            }

            goto LABEL_4;
          }
        }

LABEL_78:
        v38 = v111[1];
        if (v111[1] != 5)
        {
          v39 = *(v95 + 16);
          if (v39)
          {
            v40 = (v95 + 32);
            do
            {
              if (!v39)
              {
                goto LABEL_3;
              }

              v42 = *v40;
              if (v42 <= 1)
              {
                if (*v40)
                {
                  v43 = 0x726F6F646E69;
                }

                else
                {
                  v43 = 0x6E776F6E6B6E75;
                }

                if (*v40)
                {
                  v44 = 0xE600000000000000;
                }

                else
                {
                  v44 = 0xE700000000000000;
                }

                if (v38 > 1)
                {
LABEL_100:
                  v45 = 0x676E696D6D697773;
                  if (v38 == 3)
                  {
                    v45 = 0x657461576E65706FLL;
                  }

                  v46 = 0xEC0000006C6F6F50;
                  if (v38 == 3)
                  {
                    v46 = 0xE900000000000072;
                  }

                  if (v38 == 2)
                  {
                    v47 = 0x726F6F6474756FLL;
                  }

                  else
                  {
                    v47 = v45;
                  }

                  if (v38 == 2)
                  {
                    v48 = 0xE700000000000000;
                  }

                  else
                  {
                    v48 = v46;
                  }

                  if (v43 != v47)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_117;
                }
              }

              else if (v42 == 2)
              {
                v44 = 0xE700000000000000;
                v43 = 0x726F6F6474756FLL;
                if (v38 > 1)
                {
                  goto LABEL_100;
                }
              }

              else
              {
                if (v42 == 3)
                {
                  v43 = 0x657461576E65706FLL;
                }

                else
                {
                  v43 = 0x676E696D6D697773;
                }

                if (v42 == 3)
                {
                  v44 = 0xE900000000000072;
                }

                else
                {
                  v44 = 0xEC0000006C6F6F50;
                }

                if (v38 > 1)
                {
                  goto LABEL_100;
                }
              }

              if (v38)
              {
                v48 = 0xE600000000000000;
                if (v43 != 0x726F6F646E69)
                {
                  goto LABEL_81;
                }
              }

              else
              {
                v48 = 0xE700000000000000;
                if (v43 != 0x6E776F6E6B6E75)
                {
                  goto LABEL_81;
                }
              }

LABEL_117:
              if (v44 == v48)
              {

                break;
              }

LABEL_81:
              v41 = sub_1B4D18DCC();

              ++v40;
              --v39;
            }

            while ((v41 & 1) == 0);
          }
        }

        if (*&v111[16] && *(v98 + 16))
        {
          v101 = *&v111[8];
          MEMORY[0x1EEE9AC00](v15);
          *(&v91 - 2) = &v101;
          v49 = v93;
          v51 = sub_1B49B1748(sub_1B4C926F8, (&v91 - 4), v50);
          v93 = v49;
          sub_1B498AD54(&v109);
          v7 = v119;
          if ((v51 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_1B498AD54(&v109);
          v7 = v119;
        }
      }

      v52 = v117;
      __swift_project_boxed_opaque_existential_1(v116 + 1, v117);
      sub_1B4B70700(v52, *(*(&v52 + 1) + 8));
      v108 = v101;
      if (WorkoutPropertyKind.rawValue.getter() == 0xD000000000000012 && v96 == v53)
      {

LABEL_128:
        v105 = v116[0];
        v106 = v116[1];
        v107 = v117;
        v101 = v112;
        v102 = v113;
        v103 = v114;
        v104 = v115;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCECFC(0, *(v7 + 16) + 1, 1);
          v7 = v118;
        }

        v57 = *(v7 + 16);
        v56 = *(v7 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_1B4BCECFC((v56 > 1), v57 + 1, 1);
          v7 = v118;
        }

        *(v7 + 16) = v57 + 1;
        v58 = (v7 + 112 * v57);
        v59 = v101;
        v60 = v103;
        v58[3] = v102;
        v58[4] = v60;
        v58[2] = v59;
        v61 = v104;
        v62 = v105;
        v63 = v107;
        v58[7] = v106;
        v58[8] = v63;
        v58[5] = v61;
        v58[6] = v62;
        goto LABEL_6;
      }

      v54 = sub_1B4D18DCC();

      if (v54)
      {
        goto LABEL_128;
      }

LABEL_5:
      sub_1B498AE58(&v112);
LABEL_6:
      ++v8;
    }

    while (v8 != v100);
  }

  *&v112 = v7;

  v64 = v93;
  sub_1B4AE42B8(&v112);
  v65 = v64;
  if (v64)
  {

    __break(1u);
  }

  else
  {

    v66 = v112;
    v67 = *(v112 + 16);
    if (v67)
    {
      v97 = 0;
      *&v109 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF0BC(0, v67, 0);
      v68 = v109;
      v96 = v66;
      v69 = v66 + 32;
      do
      {
        v119 = v67;
        v100 = v69;
        sub_1B498ADFC(v69, &v112);
        v70 = v117;
        v71 = __swift_project_boxed_opaque_existential_1(v116 + 1, v117);
        v72 = *(*(&v70 + 1) + 8);
        v98 = *(v72 + 64);
        v99 = v71;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *(&v102 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        *&v103 = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v101);
        (v98)(v70, v72);
        v76 = sub_1B498AE58(&v112);
        *&v109 = v68;
        v78 = *(v68 + 16);
        v77 = *(v68 + 24);
        if (v78 >= v77 >> 1)
        {
          v76 = sub_1B4BCF0BC((v77 > 1), v78 + 1, 1);
        }

        v79 = MEMORY[0x1EEE9AC00](v76);
        v81 = &v91 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v82 + 16))(v81, boxed_opaque_existential_1, AssociatedTypeWitness, v79);
        sub_1B4CB7620(v78, v81, &v109, AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_destroy_boxed_opaque_existential_1Tm(&v101);
        v68 = v109;
        v69 = v100 + 112;
        v67 = v119 - 1;
      }

      while (v119 != 1);

      v65 = v97;
    }

    else
    {

      v68 = MEMORY[0x1E69E7CC0];
    }

    v83 = sub_1B49E6ADC(v68);

    if (v83)
    {
      v84 = v83;
    }

    else
    {
      v84 = MEMORY[0x1E69E7CC0];
    }

    v85 = v91;
    sub_1B4CEC0FC(v84, v91);

    v87 = v92;
    if (!v65)
    {
      v88 = type metadata accessor for WorkoutCaloriesStatisticsProperty(0);
      if ((*(*(v88 - 8) + 48))(v85, 1, v88) == 1)
      {
        sub_1B4975024(v85, &qword_1EB8AE4E0, &qword_1B4D47758);
        v89 = 1;
      }

      else
      {
        sub_1B4974FBC(v85, v87, &qword_1EB8A6D68, &qword_1B4D208D0);
        sub_1B4CFA938(v85, type metadata accessor for WorkoutCaloriesStatisticsProperty);
        v89 = 0;
      }

      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
      return (*(*(v90 - 8) + 56))(v87, v89, 1, v90);
    }
  }

  return result;
}

uint64_t sub_1B4CE68B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v92 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE4F8, &qword_1B4D47768);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v91 = &v91 - v6;
  v7 = MEMORY[0x1E69E7CC0];
  v100 = *(a2 + 16);
  if (v100)
  {
    v8 = 0;
    v99 = (a2 + 32);
    v96 = 0x80000001B4D48B20;
    do
    {
      sub_1B498ADFC(&v99[14 * v8], &v112);
      v109 = v113;
      v110 = v114;
      *v111 = v115;
      *&v111[16] = *&v116[0];
      v9 = *a1;
      if (*a1)
      {
        v119 = v7;
        v11 = a1[1];
        v10 = a1[2];
        v12 = a1[3];
        v95 = a1[4];
        v13 = a1[5];
        v14 = v109;
        v97 = v12;
        if (v109 == 12 || !*(v9 + 16))
        {
          v15 = sub_1B498B0D4(&v109, &v101);
        }

        else
        {
          sub_1B498B0D4(&v109, &v101);
          v15 = sub_1B4978C4C(v14, v9);
          if ((v15 & 1) == 0)
          {
LABEL_3:
            v7 = v119;
LABEL_4:
            sub_1B498AD54(&v109);
            goto LABEL_5;
          }
        }

        v94 = v10;
        v16 = BYTE1(v109);
        v98 = v13;
        if (BYTE1(v109) != 7)
        {
          v17 = *(v11 + 16);
          if (v17)
          {
            v18 = (v11 + 32);
            do
            {
              if (!v17)
              {
                goto LABEL_3;
              }

              v20 = *v18;
              if (v20 <= 2)
              {
                v23 = 0xE900000000000079;
                v24 = 0x616473656E646577;
                if (v20 == 1)
                {
                  v24 = 0x79616473657574;
                  v23 = 0xE700000000000000;
                }

                if (*v18)
                {
                  v21 = v24;
                }

                else
                {
                  v21 = 0x7961646E6F6DLL;
                }

                if (*v18)
                {
                  v22 = v23;
                }

                else
                {
                  v22 = 0xE600000000000000;
                }

                if (v16 > 2)
                {
LABEL_40:
                  v25 = 0x7961646E7573;
                  if (v16 == 5)
                  {
                    v25 = 0x7961647275746173;
                    v26 = 0xE800000000000000;
                  }

                  else
                  {
                    v26 = 0xE600000000000000;
                  }

                  v27 = 0x7961647372756874;
                  if (v16 == 3)
                  {
                    v28 = 0xE800000000000000;
                  }

                  else
                  {
                    v27 = 0x796164697266;
                    v28 = 0xE600000000000000;
                  }

                  if (v16 <= 4)
                  {
                    v29 = v27;
                  }

                  else
                  {
                    v29 = v25;
                  }

                  if (v16 <= 4)
                  {
                    v30 = v28;
                  }

                  else
                  {
                    v30 = v26;
                  }

                  if (v21 != v29)
                  {
                    goto LABEL_16;
                  }

                  goto LABEL_65;
                }
              }

              else if (*v18 > 4u)
              {
                if (v20 == 5)
                {
                  v22 = 0xE800000000000000;
                  v21 = 0x7961647275746173;
                  if (v16 > 2)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                  v21 = 0x7961646E7573;
                  v22 = 0xE600000000000000;
                  if (v16 > 2)
                  {
                    goto LABEL_40;
                  }
                }
              }

              else
              {
                if (v20 == 3)
                {
                  v21 = 0x7961647372756874;
                }

                else
                {
                  v21 = 0x796164697266;
                }

                if (v20 == 3)
                {
                  v22 = 0xE800000000000000;
                }

                else
                {
                  v22 = 0xE600000000000000;
                }

                if (v16 > 2)
                {
                  goto LABEL_40;
                }
              }

              if (v16)
              {
                if (v16 == 1)
                {
                  v31 = 0x79616473657574;
                }

                else
                {
                  v31 = 0x616473656E646577;
                }

                if (v16 == 1)
                {
                  v30 = 0xE700000000000000;
                }

                else
                {
                  v30 = 0xE900000000000079;
                }

                if (v21 != v31)
                {
                  goto LABEL_16;
                }
              }

              else
              {
                v30 = 0xE600000000000000;
                if (v21 != 0x7961646E6F6DLL)
                {
                  goto LABEL_16;
                }
              }

LABEL_65:
              if (v22 == v30)
              {

                break;
              }

LABEL_16:
              v19 = sub_1B4D18DCC();

              ++v18;
              --v17;
            }

            while ((v19 & 1) == 0);
          }
        }

        if (v110)
        {
          v7 = v119;
        }

        else
        {
          v32 = *(v94 + 16);
          v7 = v119;
          if (v32)
          {
            v33 = (v94 + 32);
            while (v32)
            {
              v34 = *v33++;
              --v32;
              if (v34 == *(&v109 + 1))
              {
                goto LABEL_73;
              }
            }

            goto LABEL_4;
          }
        }

LABEL_73:
        if ((v111[0] & 1) == 0)
        {
          v35 = *(v97 + 16);
          if (v35)
          {
            v36 = (v97 + 32);
            while (v35)
            {
              v37 = *v36++;
              --v35;
              if (v37 == *(&v110 + 1))
              {
                goto LABEL_78;
              }
            }

            goto LABEL_4;
          }
        }

LABEL_78:
        v38 = v111[1];
        if (v111[1] != 5)
        {
          v39 = *(v95 + 16);
          if (v39)
          {
            v40 = (v95 + 32);
            do
            {
              if (!v39)
              {
                goto LABEL_3;
              }

              v42 = *v40;
              if (v42 <= 1)
              {
                if (*v40)
                {
                  v43 = 0x726F6F646E69;
                }

                else
                {
                  v43 = 0x6E776F6E6B6E75;
                }

                if (*v40)
                {
                  v44 = 0xE600000000000000;
                }

                else
                {
                  v44 = 0xE700000000000000;
                }

                if (v38 > 1)
                {
LABEL_100:
                  v45 = 0x676E696D6D697773;
                  if (v38 == 3)
                  {
                    v45 = 0x657461576E65706FLL;
                  }

                  v46 = 0xEC0000006C6F6F50;
                  if (v38 == 3)
                  {
                    v46 = 0xE900000000000072;
                  }

                  if (v38 == 2)
                  {
                    v47 = 0x726F6F6474756FLL;
                  }

                  else
                  {
                    v47 = v45;
                  }

                  if (v38 == 2)
                  {
                    v48 = 0xE700000000000000;
                  }

                  else
                  {
                    v48 = v46;
                  }

                  if (v43 != v47)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_117;
                }
              }

              else if (v42 == 2)
              {
                v44 = 0xE700000000000000;
                v43 = 0x726F6F6474756FLL;
                if (v38 > 1)
                {
                  goto LABEL_100;
                }
              }

              else
              {
                if (v42 == 3)
                {
                  v43 = 0x657461576E65706FLL;
                }

                else
                {
                  v43 = 0x676E696D6D697773;
                }

                if (v42 == 3)
                {
                  v44 = 0xE900000000000072;
                }

                else
                {
                  v44 = 0xEC0000006C6F6F50;
                }

                if (v38 > 1)
                {
                  goto LABEL_100;
                }
              }

              if (v38)
              {
                v48 = 0xE600000000000000;
                if (v43 != 0x726F6F646E69)
                {
                  goto LABEL_81;
                }
              }

              else
              {
                v48 = 0xE700000000000000;
                if (v43 != 0x6E776F6E6B6E75)
                {
                  goto LABEL_81;
                }
              }

LABEL_117:
              if (v44 == v48)
              {

                break;
              }

LABEL_81:
              v41 = sub_1B4D18DCC();

              ++v40;
              --v39;
            }

            while ((v41 & 1) == 0);
          }
        }

        if (*&v111[16] && *(v98 + 16))
        {
          v101 = *&v111[8];
          MEMORY[0x1EEE9AC00](v15);
          *(&v91 - 2) = &v101;
          v49 = v93;
          v51 = sub_1B49B1748(sub_1B4C926F8, (&v91 - 4), v50);
          v93 = v49;
          sub_1B498AD54(&v109);
          v7 = v119;
          if ((v51 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_1B498AD54(&v109);
          v7 = v119;
        }
      }

      v52 = v117;
      __swift_project_boxed_opaque_existential_1(v116 + 1, v117);
      sub_1B4B70700(v52, *(*(&v52 + 1) + 8));
      v108 = v101;
      if (WorkoutPropertyKind.rawValue.getter() == 0xD000000000000017 && v96 == v53)
      {

LABEL_128:
        v105 = v116[0];
        v106 = v116[1];
        v107 = v117;
        v101 = v112;
        v102 = v113;
        v103 = v114;
        v104 = v115;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCECFC(0, *(v7 + 16) + 1, 1);
          v7 = v118;
        }

        v57 = *(v7 + 16);
        v56 = *(v7 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_1B4BCECFC((v56 > 1), v57 + 1, 1);
          v7 = v118;
        }

        *(v7 + 16) = v57 + 1;
        v58 = (v7 + 112 * v57);
        v59 = v101;
        v60 = v103;
        v58[3] = v102;
        v58[4] = v60;
        v58[2] = v59;
        v61 = v104;
        v62 = v105;
        v63 = v107;
        v58[7] = v106;
        v58[8] = v63;
        v58[5] = v61;
        v58[6] = v62;
        goto LABEL_6;
      }

      v54 = sub_1B4D18DCC();

      if (v54)
      {
        goto LABEL_128;
      }

LABEL_5:
      sub_1B498AE58(&v112);
LABEL_6:
      ++v8;
    }

    while (v8 != v100);
  }

  *&v112 = v7;

  v64 = v93;
  sub_1B4AE42B8(&v112);
  v65 = v64;
  if (v64)
  {

    __break(1u);
  }

  else
  {

    v66 = v112;
    v67 = *(v112 + 16);
    if (v67)
    {
      v97 = 0;
      *&v109 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF0BC(0, v67, 0);
      v68 = v109;
      v96 = v66;
      v69 = v66 + 32;
      do
      {
        v119 = v67;
        v100 = v69;
        sub_1B498ADFC(v69, &v112);
        v70 = v117;
        v71 = __swift_project_boxed_opaque_existential_1(v116 + 1, v117);
        v72 = *(*(&v70 + 1) + 8);
        v98 = *(v72 + 64);
        v99 = v71;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *(&v102 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        *&v103 = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v101);
        (v98)(v70, v72);
        v76 = sub_1B498AE58(&v112);
        *&v109 = v68;
        v78 = *(v68 + 16);
        v77 = *(v68 + 24);
        if (v78 >= v77 >> 1)
        {
          v76 = sub_1B4BCF0BC((v77 > 1), v78 + 1, 1);
        }

        v79 = MEMORY[0x1EEE9AC00](v76);
        v81 = &v91 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v82 + 16))(v81, boxed_opaque_existential_1, AssociatedTypeWitness, v79);
        sub_1B4CB7620(v78, v81, &v109, AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_destroy_boxed_opaque_existential_1Tm(&v101);
        v68 = v109;
        v69 = v100 + 112;
        v67 = v119 - 1;
      }

      while (v119 != 1);

      v65 = v97;
    }

    else
    {

      v68 = MEMORY[0x1E69E7CC0];
    }

    v83 = sub_1B49E656C(v68);

    if (v83)
    {
      v84 = v83;
    }

    else
    {
      v84 = MEMORY[0x1E69E7CC0];
    }

    v85 = v91;
    sub_1B4CEB630(v84, &qword_1EB8AE4F8, &qword_1B4D47768, type metadata accessor for ElevationGainStatisticsProperty, type metadata accessor for ElevationGainStatisticsProperty, v91);

    v87 = v92;
    if (!v65)
    {
      v88 = type metadata accessor for ElevationGainStatisticsProperty(0);
      if ((*(*(v88 - 8) + 48))(v85, 1, v88) == 1)
      {
        sub_1B4975024(v85, &qword_1EB8AE4F8, &qword_1B4D47768);
        v89 = 1;
      }

      else
      {
        sub_1B4974FBC(v85, v87, &qword_1EB8A6840, &unk_1B4D20FA0);
        sub_1B4CFA938(v85, type metadata accessor for ElevationGainStatisticsProperty);
        v89 = 0;
      }

      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
      return (*(*(v90 - 8) + 56))(v87, v89, 1, v90);
    }
  }

  return result;
}

uint64_t sub_1B4CE748C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v92 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE520, &qword_1B4D47780);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v91 = &v91 - v6;
  v7 = MEMORY[0x1E69E7CC0];
  v100 = *(a2 + 16);
  if (v100)
  {
    v8 = 0;
    v99 = (a2 + 32);
    v96 = 0x80000001B4D48BE0;
    do
    {
      sub_1B498ADFC(&v99[14 * v8], &v112);
      v109 = v113;
      v110 = v114;
      *v111 = v115;
      *&v111[16] = *&v116[0];
      v9 = *a1;
      if (*a1)
      {
        v119 = v7;
        v11 = a1[1];
        v10 = a1[2];
        v12 = a1[3];
        v95 = a1[4];
        v13 = a1[5];
        v14 = v109;
        v97 = v12;
        if (v109 == 12 || !*(v9 + 16))
        {
          v15 = sub_1B498B0D4(&v109, &v101);
        }

        else
        {
          sub_1B498B0D4(&v109, &v101);
          v15 = sub_1B4978C4C(v14, v9);
          if ((v15 & 1) == 0)
          {
LABEL_3:
            v7 = v119;
LABEL_4:
            sub_1B498AD54(&v109);
            goto LABEL_5;
          }
        }

        v94 = v10;
        v16 = BYTE1(v109);
        v98 = v13;
        if (BYTE1(v109) != 7)
        {
          v17 = *(v11 + 16);
          if (v17)
          {
            v18 = (v11 + 32);
            do
            {
              if (!v17)
              {
                goto LABEL_3;
              }

              v20 = *v18;
              if (v20 <= 2)
              {
                v23 = 0xE900000000000079;
                v24 = 0x616473656E646577;
                if (v20 == 1)
                {
                  v24 = 0x79616473657574;
                  v23 = 0xE700000000000000;
                }

                if (*v18)
                {
                  v21 = v24;
                }

                else
                {
                  v21 = 0x7961646E6F6DLL;
                }

                if (*v18)
                {
                  v22 = v23;
                }

                else
                {
                  v22 = 0xE600000000000000;
                }

                if (v16 > 2)
                {
LABEL_40:
                  v25 = 0x7961646E7573;
                  if (v16 == 5)
                  {
                    v25 = 0x7961647275746173;
                    v26 = 0xE800000000000000;
                  }

                  else
                  {
                    v26 = 0xE600000000000000;
                  }

                  v27 = 0x7961647372756874;
                  if (v16 == 3)
                  {
                    v28 = 0xE800000000000000;
                  }

                  else
                  {
                    v27 = 0x796164697266;
                    v28 = 0xE600000000000000;
                  }

                  if (v16 <= 4)
                  {
                    v29 = v27;
                  }

                  else
                  {
                    v29 = v25;
                  }

                  if (v16 <= 4)
                  {
                    v30 = v28;
                  }

                  else
                  {
                    v30 = v26;
                  }

                  if (v21 != v29)
                  {
                    goto LABEL_16;
                  }

                  goto LABEL_65;
                }
              }

              else if (*v18 > 4u)
              {
                if (v20 == 5)
                {
                  v22 = 0xE800000000000000;
                  v21 = 0x7961647275746173;
                  if (v16 > 2)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                  v21 = 0x7961646E7573;
                  v22 = 0xE600000000000000;
                  if (v16 > 2)
                  {
                    goto LABEL_40;
                  }
                }
              }

              else
              {
                if (v20 == 3)
                {
                  v21 = 0x7961647372756874;
                }

                else
                {
                  v21 = 0x796164697266;
                }

                if (v20 == 3)
                {
                  v22 = 0xE800000000000000;
                }

                else
                {
                  v22 = 0xE600000000000000;
                }

                if (v16 > 2)
                {
                  goto LABEL_40;
                }
              }

              if (v16)
              {
                if (v16 == 1)
                {
                  v31 = 0x79616473657574;
                }

                else
                {
                  v31 = 0x616473656E646577;
                }

                if (v16 == 1)
                {
                  v30 = 0xE700000000000000;
                }

                else
                {
                  v30 = 0xE900000000000079;
                }

                if (v21 != v31)
                {
                  goto LABEL_16;
                }
              }

              else
              {
                v30 = 0xE600000000000000;
                if (v21 != 0x7961646E6F6DLL)
                {
                  goto LABEL_16;
                }
              }

LABEL_65:
              if (v22 == v30)
              {

                break;
              }

LABEL_16:
              v19 = sub_1B4D18DCC();

              ++v18;
              --v17;
            }

            while ((v19 & 1) == 0);
          }
        }

        if (v110)
        {
          v7 = v119;
        }

        else
        {
          v32 = *(v94 + 16);
          v7 = v119;
          if (v32)
          {
            v33 = (v94 + 32);
            while (v32)
            {
              v34 = *v33++;
              --v32;
              if (v34 == *(&v109 + 1))
              {
                goto LABEL_73;
              }
            }

            goto LABEL_4;
          }
        }

LABEL_73:
        if ((v111[0] & 1) == 0)
        {
          v35 = *(v97 + 16);
          if (v35)
          {
            v36 = (v97 + 32);
            while (v35)
            {
              v37 = *v36++;
              --v35;
              if (v37 == *(&v110 + 1))
              {
                goto LABEL_78;
              }
            }

            goto LABEL_4;
          }
        }

LABEL_78:
        v38 = v111[1];
        if (v111[1] != 5)
        {
          v39 = *(v95 + 16);
          if (v39)
          {
            v40 = (v95 + 32);
            do
            {
              if (!v39)
              {
                goto LABEL_3;
              }

              v42 = *v40;
              if (v42 <= 1)
              {
                if (*v40)
                {
                  v43 = 0x726F6F646E69;
                }

                else
                {
                  v43 = 0x6E776F6E6B6E75;
                }

                if (*v40)
                {
                  v44 = 0xE600000000000000;
                }

                else
                {
                  v44 = 0xE700000000000000;
                }

                if (v38 > 1)
                {
LABEL_100:
                  v45 = 0x676E696D6D697773;
                  if (v38 == 3)
                  {
                    v45 = 0x657461576E65706FLL;
                  }

                  v46 = 0xEC0000006C6F6F50;
                  if (v38 == 3)
                  {
                    v46 = 0xE900000000000072;
                  }

                  if (v38 == 2)
                  {
                    v47 = 0x726F6F6474756FLL;
                  }

                  else
                  {
                    v47 = v45;
                  }

                  if (v38 == 2)
                  {
                    v48 = 0xE700000000000000;
                  }

                  else
                  {
                    v48 = v46;
                  }

                  if (v43 != v47)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_117;
                }
              }

              else if (v42 == 2)
              {
                v44 = 0xE700000000000000;
                v43 = 0x726F6F6474756FLL;
                if (v38 > 1)
                {
                  goto LABEL_100;
                }
              }

              else
              {
                if (v42 == 3)
                {
                  v43 = 0x657461576E65706FLL;
                }

                else
                {
                  v43 = 0x676E696D6D697773;
                }

                if (v42 == 3)
                {
                  v44 = 0xE900000000000072;
                }

                else
                {
                  v44 = 0xEC0000006C6F6F50;
                }

                if (v38 > 1)
                {
                  goto LABEL_100;
                }
              }

              if (v38)
              {
                v48 = 0xE600000000000000;
                if (v43 != 0x726F6F646E69)
                {
                  goto LABEL_81;
                }
              }

              else
              {
                v48 = 0xE700000000000000;
                if (v43 != 0x6E776F6E6B6E75)
                {
                  goto LABEL_81;
                }
              }

LABEL_117:
              if (v44 == v48)
              {

                break;
              }

LABEL_81:
              v41 = sub_1B4D18DCC();

              ++v40;
              --v39;
            }

            while ((v41 & 1) == 0);
          }
        }

        if (*&v111[16] && *(v98 + 16))
        {
          v101 = *&v111[8];
          MEMORY[0x1EEE9AC00](v15);
          *(&v91 - 2) = &v101;
          v49 = v93;
          v51 = sub_1B49B1748(sub_1B4C926F8, (&v91 - 4), v50);
          v93 = v49;
          sub_1B498AD54(&v109);
          v7 = v119;
          if ((v51 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_1B498AD54(&v109);
          v7 = v119;
        }
      }

      v52 = v117;
      __swift_project_boxed_opaque_existential_1(v116 + 1, v117);
      sub_1B4B70700(v52, *(*(&v52 + 1) + 8));
      v108 = v101;
      if (WorkoutPropertyKind.rawValue.getter() == 0xD000000000000015 && v96 == v53)
      {

LABEL_128:
        v105 = v116[0];
        v106 = v116[1];
        v107 = v117;
        v101 = v112;
        v102 = v113;
        v103 = v114;
        v104 = v115;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCECFC(0, *(v7 + 16) + 1, 1);
          v7 = v118;
        }

        v57 = *(v7 + 16);
        v56 = *(v7 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_1B4BCECFC((v56 > 1), v57 + 1, 1);
          v7 = v118;
        }

        *(v7 + 16) = v57 + 1;
        v58 = (v7 + 112 * v57);
        v59 = v101;
        v60 = v103;
        v58[3] = v102;
        v58[4] = v60;
        v58[2] = v59;
        v61 = v104;
        v62 = v105;
        v63 = v107;
        v58[7] = v106;
        v58[8] = v63;
        v58[5] = v61;
        v58[6] = v62;
        goto LABEL_6;
      }

      v54 = sub_1B4D18DCC();

      if (v54)
      {
        goto LABEL_128;
      }

LABEL_5:
      sub_1B498AE58(&v112);
LABEL_6:
      ++v8;
    }

    while (v8 != v100);
  }

  *&v112 = v7;

  v64 = v93;
  sub_1B4AE42B8(&v112);
  v65 = v64;
  if (v64)
  {

    __break(1u);
  }

  else
  {

    v66 = v112;
    v67 = *(v112 + 16);
    if (v67)
    {
      v97 = 0;
      *&v109 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF0BC(0, v67, 0);
      v68 = v109;
      v96 = v66;
      v69 = v66 + 32;
      do
      {
        v119 = v67;
        v100 = v69;
        sub_1B498ADFC(v69, &v112);
        v70 = v117;
        v71 = __swift_project_boxed_opaque_existential_1(v116 + 1, v117);
        v72 = *(*(&v70 + 1) + 8);
        v98 = *(v72 + 64);
        v99 = v71;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *(&v102 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        *&v103 = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v101);
        (v98)(v70, v72);
        v76 = sub_1B498AE58(&v112);
        *&v109 = v68;
        v78 = *(v68 + 16);
        v77 = *(v68 + 24);
        if (v78 >= v77 >> 1)
        {
          v76 = sub_1B4BCF0BC((v77 > 1), v78 + 1, 1);
        }

        v79 = MEMORY[0x1EEE9AC00](v76);
        v81 = &v91 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v82 + 16))(v81, boxed_opaque_existential_1, AssociatedTypeWitness, v79);
        sub_1B4CB7620(v78, v81, &v109, AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_destroy_boxed_opaque_existential_1Tm(&v101);
        v68 = v109;
        v69 = v100 + 112;
        v67 = v119 - 1;
      }

      while (v119 != 1);

      v65 = v97;
    }

    else
    {

      v68 = MEMORY[0x1E69E7CC0];
    }

    v83 = sub_1B49E72B8(v68);

    if (v83)
    {
      v84 = v83;
    }

    else
    {
      v84 = MEMORY[0x1E69E7CC0];
    }

    v85 = v91;
    sub_1B4CEFEB0(v84, v91);

    v87 = v92;
    if (!v65)
    {
      v88 = type metadata accessor for WorkoutWeeklyCountStatisticsProperty(0);
      if ((*(*(v88 - 8) + 48))(v85, 1, v88) == 1)
      {
        sub_1B4975024(v85, &qword_1EB8AE520, &qword_1B4D47780);
        v89 = 1;
      }

      else
      {
        sub_1B4974FBC(v85, v87, &qword_1EB8A79B0, &qword_1B4D20FC0);
        sub_1B4CFA938(v85, type metadata accessor for WorkoutWeeklyCountStatisticsProperty);
        v89 = 0;
      }

      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
      return (*(*(v90 - 8) + 56))(v87, v89, 1, v90);
    }
  }

  return result;
}

uint64_t sub_1B4CE8030@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v83 = a3;
  v3 = MEMORY[0x1E69E7CC0];
  v91 = *(a2 + 16);
  if (v91)
  {
    v5 = 0;
    v90 = (a2 + 32);
    v86 = 0x80000001B4D48C80;
    do
    {
      sub_1B498ADFC(&v90[14 * v5], &v103);
      v100 = v104;
      v101 = v105;
      *v102 = v106;
      *&v102[16] = *&v107[0];
      v6 = *a1;
      v110 = v3;
      if (v6)
      {
        v7 = a1[1];
        v89 = a1[2];
        v8 = a1[3];
        v85 = a1[4];
        v9 = a1[5];
        v10 = v100;
        v87 = v8;
        if (v100 == 12 || !*(v6 + 16))
        {
          v11 = sub_1B498B0D4(&v100, &v92);
        }

        else
        {
          sub_1B498B0D4(&v100, &v92);
          v11 = sub_1B4978C4C(v10, v6);
          if ((v11 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v12 = BYTE1(v100);
        v88 = v9;
        if (BYTE1(v100) != 7)
        {
          v13 = *(v7 + 16);
          if (v13)
          {
            v14 = (v7 + 32);
            do
            {
              if (!v13)
              {
                goto LABEL_3;
              }

              v16 = *v14;
              if (v16 <= 2)
              {
                v19 = 0xE900000000000079;
                v20 = 0x616473656E646577;
                if (v16 == 1)
                {
                  v20 = 0x79616473657574;
                  v19 = 0xE700000000000000;
                }

                if (*v14)
                {
                  v17 = v20;
                }

                else
                {
                  v17 = 0x7961646E6F6DLL;
                }

                if (*v14)
                {
                  v18 = v19;
                }

                else
                {
                  v18 = 0xE600000000000000;
                }

                if (v12 > 2)
                {
LABEL_39:
                  v21 = 0x7961646E7573;
                  if (v12 == 5)
                  {
                    v21 = 0x7961647275746173;
                    v22 = 0xE800000000000000;
                  }

                  else
                  {
                    v22 = 0xE600000000000000;
                  }

                  v23 = 0x7961647372756874;
                  if (v12 == 3)
                  {
                    v24 = 0xE800000000000000;
                  }

                  else
                  {
                    v23 = 0x796164697266;
                    v24 = 0xE600000000000000;
                  }

                  if (v12 <= 4)
                  {
                    v25 = v23;
                  }

                  else
                  {
                    v25 = v21;
                  }

                  if (v12 <= 4)
                  {
                    v26 = v24;
                  }

                  else
                  {
                    v26 = v22;
                  }

                  if (v17 != v25)
                  {
                    goto LABEL_15;
                  }

                  goto LABEL_64;
                }
              }

              else if (*v14 > 4u)
              {
                if (v16 == 5)
                {
                  v18 = 0xE800000000000000;
                  v17 = 0x7961647275746173;
                  if (v12 > 2)
                  {
                    goto LABEL_39;
                  }
                }

                else
                {
                  v17 = 0x7961646E7573;
                  v18 = 0xE600000000000000;
                  if (v12 > 2)
                  {
                    goto LABEL_39;
                  }
                }
              }

              else
              {
                if (v16 == 3)
                {
                  v17 = 0x7961647372756874;
                }

                else
                {
                  v17 = 0x796164697266;
                }

                if (v16 == 3)
                {
                  v18 = 0xE800000000000000;
                }

                else
                {
                  v18 = 0xE600000000000000;
                }

                if (v12 > 2)
                {
                  goto LABEL_39;
                }
              }

              if (v12)
              {
                if (v12 == 1)
                {
                  v27 = 0x79616473657574;
                }

                else
                {
                  v27 = 0x616473656E646577;
                }

                if (v12 == 1)
                {
                  v26 = 0xE700000000000000;
                }

                else
                {
                  v26 = 0xE900000000000079;
                }

                if (v17 != v27)
                {
                  goto LABEL_15;
                }
              }

              else
              {
                v26 = 0xE600000000000000;
                if (v17 != 0x7961646E6F6DLL)
                {
                  goto LABEL_15;
                }
              }

LABEL_64:
              if (v18 == v26)
              {

                break;
              }

LABEL_15:
              v15 = sub_1B4D18DCC();

              ++v14;
              --v13;
            }

            while ((v15 & 1) == 0);
          }
        }

        if ((v101 & 1) == 0)
        {
          v28 = *(v89 + 16);
          if (v28)
          {
            v29 = (v89 + 32);
            while (v28)
            {
              v30 = *v29++;
              --v28;
              if (v30 == *(&v100 + 1))
              {
                goto LABEL_71;
              }
            }

            goto LABEL_3;
          }
        }

LABEL_71:
        if ((v102[0] & 1) == 0)
        {
          v31 = *(v87 + 16);
          if (v31)
          {
            v32 = (v87 + 32);
            while (v31)
            {
              v33 = *v32++;
              --v31;
              if (v33 == *(&v101 + 1))
              {
                goto LABEL_76;
              }
            }

LABEL_3:
            sub_1B498AD54(&v100);
            goto LABEL_4;
          }
        }

LABEL_76:
        v34 = v102[1];
        if (v102[1] != 5)
        {
          v35 = *(v85 + 16);
          if (v35)
          {
            v36 = (v85 + 32);
            do
            {
              if (!v35)
              {
                goto LABEL_3;
              }

              v38 = *v36;
              if (v38 <= 1)
              {
                if (*v36)
                {
                  v39 = 0x726F6F646E69;
                }

                else
                {
                  v39 = 0x6E776F6E6B6E75;
                }

                if (*v36)
                {
                  v40 = 0xE600000000000000;
                }

                else
                {
                  v40 = 0xE700000000000000;
                }

                if (v34 > 1)
                {
LABEL_98:
                  v41 = 0x676E696D6D697773;
                  if (v34 == 3)
                  {
                    v41 = 0x657461576E65706FLL;
                  }

                  v42 = 0xEC0000006C6F6F50;
                  if (v34 == 3)
                  {
                    v42 = 0xE900000000000072;
                  }

                  if (v34 == 2)
                  {
                    v43 = 0x726F6F6474756FLL;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  if (v34 == 2)
                  {
                    v44 = 0xE700000000000000;
                  }

                  else
                  {
                    v44 = v42;
                  }

                  if (v39 != v43)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_115;
                }
              }

              else if (v38 == 2)
              {
                v40 = 0xE700000000000000;
                v39 = 0x726F6F6474756FLL;
                if (v34 > 1)
                {
                  goto LABEL_98;
                }
              }

              else
              {
                if (v38 == 3)
                {
                  v39 = 0x657461576E65706FLL;
                }

                else
                {
                  v39 = 0x676E696D6D697773;
                }

                if (v38 == 3)
                {
                  v40 = 0xE900000000000072;
                }

                else
                {
                  v40 = 0xEC0000006C6F6F50;
                }

                if (v34 > 1)
                {
                  goto LABEL_98;
                }
              }

              if (v34)
              {
                v44 = 0xE600000000000000;
                if (v39 != 0x726F6F646E69)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                v44 = 0xE700000000000000;
                if (v39 != 0x6E776F6E6B6E75)
                {
                  goto LABEL_79;
                }
              }

LABEL_115:
              if (v40 == v44)
              {

                break;
              }

LABEL_79:
              v37 = sub_1B4D18DCC();

              ++v36;
              --v35;
            }

            while ((v37 & 1) == 0);
          }
        }

        if (*&v102[16] && *(v88 + 16))
        {
          v92 = *&v102[8];
          MEMORY[0x1EEE9AC00](v11);
          v81[2] = &v92;
          v45 = v84;
          v47 = sub_1B49B1748(sub_1B4C926F8, v81, v46);
          v84 = v45;
          sub_1B498AD54(&v100);
          if ((v47 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_1B498AD54(&v100);
        }
      }

      v48 = v108;
      __swift_project_boxed_opaque_existential_1(v107 + 1, v108);
      sub_1B4B70700(v48, *(*(&v48 + 1) + 8));
      v99 = v92;
      if (WorkoutPropertyKind.rawValue.getter() == 0xD000000000000017 && v86 == v49)
      {

LABEL_126:
        v96 = v107[0];
        v97 = v107[1];
        v98 = v108;
        v92 = v103;
        v93 = v104;
        v94 = v105;
        v95 = v106;
        v3 = v110;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCECFC(0, *(v3 + 16) + 1, 1);
          v3 = v109;
        }

        v53 = *(v3 + 16);
        v52 = *(v3 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1B4BCECFC((v52 > 1), v53 + 1, 1);
          v3 = v109;
        }

        *(v3 + 16) = v53 + 1;
        v54 = (v3 + 112 * v53);
        v55 = v92;
        v56 = v94;
        v54[3] = v93;
        v54[4] = v56;
        v54[2] = v55;
        v57 = v95;
        v58 = v96;
        v59 = v98;
        v54[7] = v97;
        v54[8] = v59;
        v54[5] = v57;
        v54[6] = v58;
        goto LABEL_5;
      }

      v50 = sub_1B4D18DCC();

      if (v50)
      {
        goto LABEL_126;
      }

LABEL_4:
      sub_1B498AE58(&v103);
      v3 = v110;
LABEL_5:
      ++v5;
    }

    while (v5 != v91);
  }

  *&v103 = v3;

  v60 = v84;
  sub_1B4AE42B8(&v103);
  v61 = v60;
  if (v60)
  {

    __break(1u);
  }

  else
  {

    v62 = v103;
    v63 = *(v103 + 16);
    if (v63)
    {
      v88 = 0;
      *&v100 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF0BC(0, v63, 0);
      v64 = v100;
      v87 = v62;
      v65 = v62 + 32;
      do
      {
        v110 = v63;
        v91 = v65;
        sub_1B498ADFC(v65, &v103);
        v66 = v108;
        v67 = __swift_project_boxed_opaque_existential_1(v107 + 1, v108);
        v68 = *(*(&v66 + 1) + 8);
        v89 = *(v68 + 64);
        v90 = v67;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *(&v93 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        *&v94 = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v92);
        (v89)(v66, v68);
        v72 = sub_1B498AE58(&v103);
        *&v100 = v64;
        v74 = *(v64 + 16);
        v73 = *(v64 + 24);
        if (v74 >= v73 >> 1)
        {
          v72 = sub_1B4BCF0BC((v73 > 1), v74 + 1, 1);
        }

        v75 = MEMORY[0x1EEE9AC00](v72);
        v77 = &v82 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v78 + 16))(v77, boxed_opaque_existential_1, AssociatedTypeWitness, v75);
        sub_1B4CB7620(v74, v77, &v100, AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_destroy_boxed_opaque_existential_1Tm(&v92);
        v64 = v100;
        v65 = v91 + 112;
        v63 = v110 - 1;
      }

      while (v110 != 1);

      v61 = v88;
    }

    else
    {

      v64 = MEMORY[0x1E69E7CC0];
    }

    v79 = sub_1B49E7730(v64);

    if (!v79)
    {
      v79 = MEMORY[0x1E69E7CC0];
    }

    sub_1B4CF1304(v79, &v103);

    if (!v61)
    {
      if (v103)
      {
        *v83 = v103;
      }

      else
      {

        *v83 = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B4CE8AA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v83 = a3;
  v3 = MEMORY[0x1E69E7CC0];
  v91 = *(a2 + 16);
  if (v91)
  {
    v5 = 0;
    v90 = (a2 + 32);
    v86 = 0x80000001B4D48C40;
    do
    {
      sub_1B498ADFC(&v90[14 * v5], &v103);
      v100 = v104;
      v101 = v105;
      *v102 = v106;
      *&v102[16] = *&v107[0];
      v6 = *a1;
      v110 = v3;
      if (v6)
      {
        v7 = a1[1];
        v89 = a1[2];
        v8 = a1[3];
        v85 = a1[4];
        v9 = a1[5];
        v10 = v100;
        v87 = v8;
        if (v100 == 12 || !*(v6 + 16))
        {
          v11 = sub_1B498B0D4(&v100, &v92);
        }

        else
        {
          sub_1B498B0D4(&v100, &v92);
          v11 = sub_1B4978C4C(v10, v6);
          if ((v11 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v12 = BYTE1(v100);
        v88 = v9;
        if (BYTE1(v100) != 7)
        {
          v13 = *(v7 + 16);
          if (v13)
          {
            v14 = (v7 + 32);
            do
            {
              if (!v13)
              {
                goto LABEL_3;
              }

              v16 = *v14;
              if (v16 <= 2)
              {
                v19 = 0xE900000000000079;
                v20 = 0x616473656E646577;
                if (v16 == 1)
                {
                  v20 = 0x79616473657574;
                  v19 = 0xE700000000000000;
                }

                if (*v14)
                {
                  v17 = v20;
                }

                else
                {
                  v17 = 0x7961646E6F6DLL;
                }

                if (*v14)
                {
                  v18 = v19;
                }

                else
                {
                  v18 = 0xE600000000000000;
                }

                if (v12 > 2)
                {
LABEL_39:
                  v21 = 0x7961646E7573;
                  if (v12 == 5)
                  {
                    v21 = 0x7961647275746173;
                    v22 = 0xE800000000000000;
                  }

                  else
                  {
                    v22 = 0xE600000000000000;
                  }

                  v23 = 0x7961647372756874;
                  if (v12 == 3)
                  {
                    v24 = 0xE800000000000000;
                  }

                  else
                  {
                    v23 = 0x796164697266;
                    v24 = 0xE600000000000000;
                  }

                  if (v12 <= 4)
                  {
                    v25 = v23;
                  }

                  else
                  {
                    v25 = v21;
                  }

                  if (v12 <= 4)
                  {
                    v26 = v24;
                  }

                  else
                  {
                    v26 = v22;
                  }

                  if (v17 != v25)
                  {
                    goto LABEL_15;
                  }

                  goto LABEL_64;
                }
              }

              else if (*v14 > 4u)
              {
                if (v16 == 5)
                {
                  v18 = 0xE800000000000000;
                  v17 = 0x7961647275746173;
                  if (v12 > 2)
                  {
                    goto LABEL_39;
                  }
                }

                else
                {
                  v17 = 0x7961646E7573;
                  v18 = 0xE600000000000000;
                  if (v12 > 2)
                  {
                    goto LABEL_39;
                  }
                }
              }

              else
              {
                if (v16 == 3)
                {
                  v17 = 0x7961647372756874;
                }

                else
                {
                  v17 = 0x796164697266;
                }

                if (v16 == 3)
                {
                  v18 = 0xE800000000000000;
                }

                else
                {
                  v18 = 0xE600000000000000;
                }

                if (v12 > 2)
                {
                  goto LABEL_39;
                }
              }

              if (v12)
              {
                if (v12 == 1)
                {
                  v27 = 0x79616473657574;
                }

                else
                {
                  v27 = 0x616473656E646577;
                }

                if (v12 == 1)
                {
                  v26 = 0xE700000000000000;
                }

                else
                {
                  v26 = 0xE900000000000079;
                }

                if (v17 != v27)
                {
                  goto LABEL_15;
                }
              }

              else
              {
                v26 = 0xE600000000000000;
                if (v17 != 0x7961646E6F6DLL)
                {
                  goto LABEL_15;
                }
              }

LABEL_64:
              if (v18 == v26)
              {

                break;
              }

LABEL_15:
              v15 = sub_1B4D18DCC();

              ++v14;
              --v13;
            }

            while ((v15 & 1) == 0);
          }
        }

        if ((v101 & 1) == 0)
        {
          v28 = *(v89 + 16);
          if (v28)
          {
            v29 = (v89 + 32);
            while (v28)
            {
              v30 = *v29++;
              --v28;
              if (v30 == *(&v100 + 1))
              {
                goto LABEL_71;
              }
            }

            goto LABEL_3;
          }
        }

LABEL_71:
        if ((v102[0] & 1) == 0)
        {
          v31 = *(v87 + 16);
          if (v31)
          {
            v32 = (v87 + 32);
            while (v31)
            {
              v33 = *v32++;
              --v31;
              if (v33 == *(&v101 + 1))
              {
                goto LABEL_76;
              }
            }

LABEL_3:
            sub_1B498AD54(&v100);
            goto LABEL_4;
          }
        }

LABEL_76:
        v34 = v102[1];
        if (v102[1] != 5)
        {
          v35 = *(v85 + 16);
          if (v35)
          {
            v36 = (v85 + 32);
            do
            {
              if (!v35)
              {
                goto LABEL_3;
              }

              v38 = *v36;
              if (v38 <= 1)
              {
                if (*v36)
                {
                  v39 = 0x726F6F646E69;
                }

                else
                {
                  v39 = 0x6E776F6E6B6E75;
                }

                if (*v36)
                {
                  v40 = 0xE600000000000000;
                }

                else
                {
                  v40 = 0xE700000000000000;
                }

                if (v34 > 1)
                {
LABEL_98:
                  v41 = 0x676E696D6D697773;
                  if (v34 == 3)
                  {
                    v41 = 0x657461576E65706FLL;
                  }

                  v42 = 0xEC0000006C6F6F50;
                  if (v34 == 3)
                  {
                    v42 = 0xE900000000000072;
                  }

                  if (v34 == 2)
                  {
                    v43 = 0x726F6F6474756FLL;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  if (v34 == 2)
                  {
                    v44 = 0xE700000000000000;
                  }

                  else
                  {
                    v44 = v42;
                  }

                  if (v39 != v43)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_115;
                }
              }

              else if (v38 == 2)
              {
                v40 = 0xE700000000000000;
                v39 = 0x726F6F6474756FLL;
                if (v34 > 1)
                {
                  goto LABEL_98;
                }
              }

              else
              {
                if (v38 == 3)
                {
                  v39 = 0x657461576E65706FLL;
                }

                else
                {
                  v39 = 0x676E696D6D697773;
                }

                if (v38 == 3)
                {
                  v40 = 0xE900000000000072;
                }

                else
                {
                  v40 = 0xEC0000006C6F6F50;
                }

                if (v34 > 1)
                {
                  goto LABEL_98;
                }
              }

              if (v34)
              {
                v44 = 0xE600000000000000;
                if (v39 != 0x726F6F646E69)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                v44 = 0xE700000000000000;
                if (v39 != 0x6E776F6E6B6E75)
                {
                  goto LABEL_79;
                }
              }

LABEL_115:
              if (v40 == v44)
              {

                break;
              }

LABEL_79:
              v37 = sub_1B4D18DCC();

              ++v36;
              --v35;
            }

            while ((v37 & 1) == 0);
          }
        }

        if (*&v102[16] && *(v88 + 16))
        {
          v92 = *&v102[8];
          MEMORY[0x1EEE9AC00](v11);
          v81[2] = &v92;
          v45 = v84;
          v47 = sub_1B49B1748(sub_1B4C926F8, v81, v46);
          v84 = v45;
          sub_1B498AD54(&v100);
          if ((v47 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_1B498AD54(&v100);
        }
      }

      v48 = v108;
      __swift_project_boxed_opaque_existential_1(v107 + 1, v108);
      sub_1B4B70700(v48, *(*(&v48 + 1) + 8));
      v99 = v92;
      if (WorkoutPropertyKind.rawValue.getter() == 0xD00000000000001CLL && v86 == v49)
      {

LABEL_126:
        v96 = v107[0];
        v97 = v107[1];
        v98 = v108;
        v92 = v103;
        v93 = v104;
        v94 = v105;
        v95 = v106;
        v3 = v110;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCECFC(0, *(v3 + 16) + 1, 1);
          v3 = v109;
        }

        v53 = *(v3 + 16);
        v52 = *(v3 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1B4BCECFC((v52 > 1), v53 + 1, 1);
          v3 = v109;
        }

        *(v3 + 16) = v53 + 1;
        v54 = (v3 + 112 * v53);
        v55 = v92;
        v56 = v94;
        v54[3] = v93;
        v54[4] = v56;
        v54[2] = v55;
        v57 = v95;
        v58 = v96;
        v59 = v98;
        v54[7] = v97;
        v54[8] = v59;
        v54[5] = v57;
        v54[6] = v58;
        goto LABEL_5;
      }

      v50 = sub_1B4D18DCC();

      if (v50)
      {
        goto LABEL_126;
      }

LABEL_4:
      sub_1B498AE58(&v103);
      v3 = v110;
LABEL_5:
      ++v5;
    }

    while (v5 != v91);
  }

  *&v103 = v3;

  v60 = v84;
  sub_1B4AE42B8(&v103);
  v61 = v60;
  if (v60)
  {

    __break(1u);
  }

  else
  {

    v62 = v103;
    v63 = *(v103 + 16);
    if (v63)
    {
      v88 = 0;
      *&v100 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF0BC(0, v63, 0);
      v64 = v100;
      v87 = v62;
      v65 = v62 + 32;
      do
      {
        v110 = v63;
        v91 = v65;
        sub_1B498ADFC(v65, &v103);
        v66 = v108;
        v67 = __swift_project_boxed_opaque_existential_1(v107 + 1, v108);
        v68 = *(*(&v66 + 1) + 8);
        v89 = *(v68 + 64);
        v90 = v67;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *(&v93 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        *&v94 = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v92);
        (v89)(v66, v68);
        v72 = sub_1B498AE58(&v103);
        *&v100 = v64;
        v74 = *(v64 + 16);
        v73 = *(v64 + 24);
        if (v74 >= v73 >> 1)
        {
          v72 = sub_1B4BCF0BC((v73 > 1), v74 + 1, 1);
        }

        v75 = MEMORY[0x1EEE9AC00](v72);
        v77 = &v82 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v78 + 16))(v77, boxed_opaque_existential_1, AssociatedTypeWitness, v75);
        sub_1B4CB7620(v74, v77, &v100, AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_destroy_boxed_opaque_existential_1Tm(&v92);
        v64 = v100;
        v65 = v91 + 112;
        v63 = v110 - 1;
      }

      while (v110 != 1);

      v61 = v88;
    }

    else
    {

      v64 = MEMORY[0x1E69E7CC0];
    }

    v79 = sub_1B49E7708(v64);

    if (!v79)
    {
      v79 = MEMORY[0x1E69E7CC0];
    }

    sub_1B496E788(v79, &v103);

    if (!v61)
    {
      if (v103)
      {
        *v83 = v103;
      }

      else
      {

        *v83 = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B4CE9518@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v83 = a3;
  v3 = MEMORY[0x1E69E7CC0];
  v91 = *(a2 + 16);
  if (v91)
  {
    v5 = 0;
    v90 = (a2 + 32);
    v86 = 0x80000001B4D48C00;
    do
    {
      sub_1B498ADFC(&v90[14 * v5], &v103);
      v100 = v104;
      v101 = v105;
      *v102 = v106;
      *&v102[16] = *&v107[0];
      v6 = *a1;
      v110 = v3;
      if (v6)
      {
        v7 = a1[1];
        v89 = a1[2];
        v8 = a1[3];
        v85 = a1[4];
        v9 = a1[5];
        v10 = v100;
        v87 = v8;
        if (v100 == 12 || !*(v6 + 16))
        {
          v11 = sub_1B498B0D4(&v100, &v92);
        }

        else
        {
          sub_1B498B0D4(&v100, &v92);
          v11 = sub_1B4978C4C(v10, v6);
          if ((v11 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v12 = BYTE1(v100);
        v88 = v9;
        if (BYTE1(v100) != 7)
        {
          v13 = *(v7 + 16);
          if (v13)
          {
            v14 = (v7 + 32);
            do
            {
              if (!v13)
              {
                goto LABEL_3;
              }

              v16 = *v14;
              if (v16 <= 2)
              {
                v19 = 0xE900000000000079;
                v20 = 0x616473656E646577;
                if (v16 == 1)
                {
                  v20 = 0x79616473657574;
                  v19 = 0xE700000000000000;
                }

                if (*v14)
                {
                  v17 = v20;
                }

                else
                {
                  v17 = 0x7961646E6F6DLL;
                }

                if (*v14)
                {
                  v18 = v19;
                }

                else
                {
                  v18 = 0xE600000000000000;
                }

                if (v12 > 2)
                {
LABEL_39:
                  v21 = 0x7961646E7573;
                  if (v12 == 5)
                  {
                    v21 = 0x7961647275746173;
                    v22 = 0xE800000000000000;
                  }

                  else
                  {
                    v22 = 0xE600000000000000;
                  }

                  v23 = 0x7961647372756874;
                  if (v12 == 3)
                  {
                    v24 = 0xE800000000000000;
                  }

                  else
                  {
                    v23 = 0x796164697266;
                    v24 = 0xE600000000000000;
                  }

                  if (v12 <= 4)
                  {
                    v25 = v23;
                  }

                  else
                  {
                    v25 = v21;
                  }

                  if (v12 <= 4)
                  {
                    v26 = v24;
                  }

                  else
                  {
                    v26 = v22;
                  }

                  if (v17 != v25)
                  {
                    goto LABEL_15;
                  }

                  goto LABEL_64;
                }
              }

              else if (*v14 > 4u)
              {
                if (v16 == 5)
                {
                  v18 = 0xE800000000000000;
                  v17 = 0x7961647275746173;
                  if (v12 > 2)
                  {
                    goto LABEL_39;
                  }
                }

                else
                {
                  v17 = 0x7961646E7573;
                  v18 = 0xE600000000000000;
                  if (v12 > 2)
                  {
                    goto LABEL_39;
                  }
                }
              }

              else
              {
                if (v16 == 3)
                {
                  v17 = 0x7961647372756874;
                }

                else
                {
                  v17 = 0x796164697266;
                }

                if (v16 == 3)
                {
                  v18 = 0xE800000000000000;
                }

                else
                {
                  v18 = 0xE600000000000000;
                }

                if (v12 > 2)
                {
                  goto LABEL_39;
                }
              }

              if (v12)
              {
                if (v12 == 1)
                {
                  v27 = 0x79616473657574;
                }

                else
                {
                  v27 = 0x616473656E646577;
                }

                if (v12 == 1)
                {
                  v26 = 0xE700000000000000;
                }

                else
                {
                  v26 = 0xE900000000000079;
                }

                if (v17 != v27)
                {
                  goto LABEL_15;
                }
              }

              else
              {
                v26 = 0xE600000000000000;
                if (v17 != 0x7961646E6F6DLL)
                {
                  goto LABEL_15;
                }
              }

LABEL_64:
              if (v18 == v26)
              {

                break;
              }

LABEL_15:
              v15 = sub_1B4D18DCC();

              ++v14;
              --v13;
            }

            while ((v15 & 1) == 0);
          }
        }

        if ((v101 & 1) == 0)
        {
          v28 = *(v89 + 16);
          if (v28)
          {
            v29 = (v89 + 32);
            while (v28)
            {
              v30 = *v29++;
              --v28;
              if (v30 == *(&v100 + 1))
              {
                goto LABEL_71;
              }
            }

            goto LABEL_3;
          }
        }

LABEL_71:
        if ((v102[0] & 1) == 0)
        {
          v31 = *(v87 + 16);
          if (v31)
          {
            v32 = (v87 + 32);
            while (v31)
            {
              v33 = *v32++;
              --v31;
              if (v33 == *(&v101 + 1))
              {
                goto LABEL_76;
              }
            }

LABEL_3:
            sub_1B498AD54(&v100);
            goto LABEL_4;
          }
        }

LABEL_76:
        v34 = v102[1];
        if (v102[1] != 5)
        {
          v35 = *(v85 + 16);
          if (v35)
          {
            v36 = (v85 + 32);
            do
            {
              if (!v35)
              {
                goto LABEL_3;
              }

              v38 = *v36;
              if (v38 <= 1)
              {
                if (*v36)
                {
                  v39 = 0x726F6F646E69;
                }

                else
                {
                  v39 = 0x6E776F6E6B6E75;
                }

                if (*v36)
                {
                  v40 = 0xE600000000000000;
                }

                else
                {
                  v40 = 0xE700000000000000;
                }

                if (v34 > 1)
                {
LABEL_98:
                  v41 = 0x676E696D6D697773;
                  if (v34 == 3)
                  {
                    v41 = 0x657461576E65706FLL;
                  }

                  v42 = 0xEC0000006C6F6F50;
                  if (v34 == 3)
                  {
                    v42 = 0xE900000000000072;
                  }

                  if (v34 == 2)
                  {
                    v43 = 0x726F6F6474756FLL;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  if (v34 == 2)
                  {
                    v44 = 0xE700000000000000;
                  }

                  else
                  {
                    v44 = v42;
                  }

                  if (v39 != v43)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_115;
                }
              }

              else if (v38 == 2)
              {
                v40 = 0xE700000000000000;
                v39 = 0x726F6F6474756FLL;
                if (v34 > 1)
                {
                  goto LABEL_98;
                }
              }

              else
              {
                if (v38 == 3)
                {
                  v39 = 0x657461576E65706FLL;
                }

                else
                {
                  v39 = 0x676E696D6D697773;
                }

                if (v38 == 3)
                {
                  v40 = 0xE900000000000072;
                }

                else
                {
                  v40 = 0xEC0000006C6F6F50;
                }

                if (v34 > 1)
                {
                  goto LABEL_98;
                }
              }

              if (v34)
              {
                v44 = 0xE600000000000000;
                if (v39 != 0x726F6F646E69)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                v44 = 0xE700000000000000;
                if (v39 != 0x6E776F6E6B6E75)
                {
                  goto LABEL_79;
                }
              }

LABEL_115:
              if (v40 == v44)
              {

                break;
              }

LABEL_79:
              v37 = sub_1B4D18DCC();

              ++v36;
              --v35;
            }

            while ((v37 & 1) == 0);
          }
        }

        if (*&v102[16] && *(v88 + 16))
        {
          v92 = *&v102[8];
          MEMORY[0x1EEE9AC00](v11);
          v81[2] = &v92;
          v45 = v84;
          v47 = sub_1B49B1748(sub_1B4C926F8, v81, v46);
          v84 = v45;
          sub_1B498AD54(&v100);
          if ((v47 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_1B498AD54(&v100);
        }
      }

      v48 = v108;
      __swift_project_boxed_opaque_existential_1(v107 + 1, v108);
      sub_1B4B70700(v48, *(*(&v48 + 1) + 8));
      v99 = v92;
      if (WorkoutPropertyKind.rawValue.getter() == 0xD000000000000017 && v86 == v49)
      {

LABEL_126:
        v96 = v107[0];
        v97 = v107[1];
        v98 = v108;
        v92 = v103;
        v93 = v104;
        v94 = v105;
        v95 = v106;
        v3 = v110;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCECFC(0, *(v3 + 16) + 1, 1);
          v3 = v109;
        }

        v53 = *(v3 + 16);
        v52 = *(v3 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1B4BCECFC((v52 > 1), v53 + 1, 1);
          v3 = v109;
        }

        *(v3 + 16) = v53 + 1;
        v54 = (v3 + 112 * v53);
        v55 = v92;
        v56 = v94;
        v54[3] = v93;
        v54[4] = v56;
        v54[2] = v55;
        v57 = v95;
        v58 = v96;
        v59 = v98;
        v54[7] = v97;
        v54[8] = v59;
        v54[5] = v57;
        v54[6] = v58;
        goto LABEL_5;
      }

      v50 = sub_1B4D18DCC();

      if (v50)
      {
        goto LABEL_126;
      }

LABEL_4:
      sub_1B498AE58(&v103);
      v3 = v110;
LABEL_5:
      ++v5;
    }

    while (v5 != v91);
  }

  *&v103 = v3;

  v60 = v84;
  sub_1B4AE42B8(&v103);
  v61 = v60;
  if (v60)
  {

    __break(1u);
  }

  else
  {

    v62 = v103;
    v63 = *(v103 + 16);
    if (v63)
    {
      v88 = 0;
      *&v100 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF0BC(0, v63, 0);
      v64 = v100;
      v87 = v62;
      v65 = v62 + 32;
      do
      {
        v110 = v63;
        v91 = v65;
        sub_1B498ADFC(v65, &v103);
        v66 = v108;
        v67 = __swift_project_boxed_opaque_existential_1(v107 + 1, v108);
        v68 = *(*(&v66 + 1) + 8);
        v89 = *(v68 + 64);
        v90 = v67;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *(&v93 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        *&v94 = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v92);
        (v89)(v66, v68);
        v72 = sub_1B498AE58(&v103);
        *&v100 = v64;
        v74 = *(v64 + 16);
        v73 = *(v64 + 24);
        if (v74 >= v73 >> 1)
        {
          v72 = sub_1B4BCF0BC((v73 > 1), v74 + 1, 1);
        }

        v75 = MEMORY[0x1EEE9AC00](v72);
        v77 = &v82 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v78 + 16))(v77, boxed_opaque_existential_1, AssociatedTypeWitness, v75);
        sub_1B4CB7620(v74, v77, &v100, AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_destroy_boxed_opaque_existential_1Tm(&v92);
        v64 = v100;
        v65 = v91 + 112;
        v63 = v110 - 1;
      }

      while (v110 != 1);

      v61 = v88;
    }

    else
    {

      v64 = MEMORY[0x1E69E7CC0];
    }

    v79 = sub_1B49E7708(v64);

    if (!v79)
    {
      v79 = MEMORY[0x1E69E7CC0];
    }

    sub_1B496E788(v79, &v103);

    if (!v61)
    {
      if (v103)
      {
        *v83 = v103;
      }

      else
      {

        *v83 = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B4CE9F8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v83 = a3;
  v3 = MEMORY[0x1E69E7CC0];
  v91 = *(a2 + 16);
  if (v91)
  {
    v5 = 0;
    v90 = (a2 + 32);
    v86 = 0x80000001B4D48C20;
    do
    {
      sub_1B498ADFC(&v90[14 * v5], &v103);
      v100 = v104;
      v101 = v105;
      *v102 = v106;
      *&v102[16] = *&v107[0];
      v6 = *a1;
      v110 = v3;
      if (v6)
      {
        v7 = a1[1];
        v89 = a1[2];
        v8 = a1[3];
        v85 = a1[4];
        v9 = a1[5];
        v10 = v100;
        v87 = v8;
        if (v100 == 12 || !*(v6 + 16))
        {
          v11 = sub_1B498B0D4(&v100, &v92);
        }

        else
        {
          sub_1B498B0D4(&v100, &v92);
          v11 = sub_1B4978C4C(v10, v6);
          if ((v11 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v12 = BYTE1(v100);
        v88 = v9;
        if (BYTE1(v100) != 7)
        {
          v13 = *(v7 + 16);
          if (v13)
          {
            v14 = (v7 + 32);
            do
            {
              if (!v13)
              {
                goto LABEL_3;
              }

              v16 = *v14;
              if (v16 <= 2)
              {
                v19 = 0xE900000000000079;
                v20 = 0x616473656E646577;
                if (v16 == 1)
                {
                  v20 = 0x79616473657574;
                  v19 = 0xE700000000000000;
                }

                if (*v14)
                {
                  v17 = v20;
                }

                else
                {
                  v17 = 0x7961646E6F6DLL;
                }

                if (*v14)
                {
                  v18 = v19;
                }

                else
                {
                  v18 = 0xE600000000000000;
                }

                if (v12 > 2)
                {
LABEL_39:
                  v21 = 0x7961646E7573;
                  if (v12 == 5)
                  {
                    v21 = 0x7961647275746173;
                    v22 = 0xE800000000000000;
                  }

                  else
                  {
                    v22 = 0xE600000000000000;
                  }

                  v23 = 0x7961647372756874;
                  if (v12 == 3)
                  {
                    v24 = 0xE800000000000000;
                  }

                  else
                  {
                    v23 = 0x796164697266;
                    v24 = 0xE600000000000000;
                  }

                  if (v12 <= 4)
                  {
                    v25 = v23;
                  }

                  else
                  {
                    v25 = v21;
                  }

                  if (v12 <= 4)
                  {
                    v26 = v24;
                  }

                  else
                  {
                    v26 = v22;
                  }

                  if (v17 != v25)
                  {
                    goto LABEL_15;
                  }

                  goto LABEL_64;
                }
              }

              else if (*v14 > 4u)
              {
                if (v16 == 5)
                {
                  v18 = 0xE800000000000000;
                  v17 = 0x7961647275746173;
                  if (v12 > 2)
                  {
                    goto LABEL_39;
                  }
                }

                else
                {
                  v17 = 0x7961646E7573;
                  v18 = 0xE600000000000000;
                  if (v12 > 2)
                  {
                    goto LABEL_39;
                  }
                }
              }

              else
              {
                if (v16 == 3)
                {
                  v17 = 0x7961647372756874;
                }

                else
                {
                  v17 = 0x796164697266;
                }

                if (v16 == 3)
                {
                  v18 = 0xE800000000000000;
                }

                else
                {
                  v18 = 0xE600000000000000;
                }

                if (v12 > 2)
                {
                  goto LABEL_39;
                }
              }

              if (v12)
              {
                if (v12 == 1)
                {
                  v27 = 0x79616473657574;
                }

                else
                {
                  v27 = 0x616473656E646577;
                }

                if (v12 == 1)
                {
                  v26 = 0xE700000000000000;
                }

                else
                {
                  v26 = 0xE900000000000079;
                }

                if (v17 != v27)
                {
                  goto LABEL_15;
                }
              }

              else
              {
                v26 = 0xE600000000000000;
                if (v17 != 0x7961646E6F6DLL)
                {
                  goto LABEL_15;
                }
              }

LABEL_64:
              if (v18 == v26)
              {

                break;
              }

LABEL_15:
              v15 = sub_1B4D18DCC();

              ++v14;
              --v13;
            }

            while ((v15 & 1) == 0);
          }
        }

        if ((v101 & 1) == 0)
        {
          v28 = *(v89 + 16);
          if (v28)
          {
            v29 = (v89 + 32);
            while (v28)
            {
              v30 = *v29++;
              --v28;
              if (v30 == *(&v100 + 1))
              {
                goto LABEL_71;
              }
            }

            goto LABEL_3;
          }
        }

LABEL_71:
        if ((v102[0] & 1) == 0)
        {
          v31 = *(v87 + 16);
          if (v31)
          {
            v32 = (v87 + 32);
            while (v31)
            {
              v33 = *v32++;
              --v31;
              if (v33 == *(&v101 + 1))
              {
                goto LABEL_76;
              }
            }

LABEL_3:
            sub_1B498AD54(&v100);
            goto LABEL_4;
          }
        }

LABEL_76:
        v34 = v102[1];
        if (v102[1] != 5)
        {
          v35 = *(v85 + 16);
          if (v35)
          {
            v36 = (v85 + 32);
            do
            {
              if (!v35)
              {
                goto LABEL_3;
              }

              v38 = *v36;
              if (v38 <= 1)
              {
                if (*v36)
                {
                  v39 = 0x726F6F646E69;
                }

                else
                {
                  v39 = 0x6E776F6E6B6E75;
                }

                if (*v36)
                {
                  v40 = 0xE600000000000000;
                }

                else
                {
                  v40 = 0xE700000000000000;
                }

                if (v34 > 1)
                {
LABEL_98:
                  v41 = 0x676E696D6D697773;
                  if (v34 == 3)
                  {
                    v41 = 0x657461576E65706FLL;
                  }

                  v42 = 0xEC0000006C6F6F50;
                  if (v34 == 3)
                  {
                    v42 = 0xE900000000000072;
                  }

                  if (v34 == 2)
                  {
                    v43 = 0x726F6F6474756FLL;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  if (v34 == 2)
                  {
                    v44 = 0xE700000000000000;
                  }

                  else
                  {
                    v44 = v42;
                  }

                  if (v39 != v43)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_115;
                }
              }

              else if (v38 == 2)
              {
                v40 = 0xE700000000000000;
                v39 = 0x726F6F6474756FLL;
                if (v34 > 1)
                {
                  goto LABEL_98;
                }
              }

              else
              {
                if (v38 == 3)
                {
                  v39 = 0x657461576E65706FLL;
                }

                else
                {
                  v39 = 0x676E696D6D697773;
                }

                if (v38 == 3)
                {
                  v40 = 0xE900000000000072;
                }

                else
                {
                  v40 = 0xEC0000006C6F6F50;
                }

                if (v34 > 1)
                {
                  goto LABEL_98;
                }
              }

              if (v34)
              {
                v44 = 0xE600000000000000;
                if (v39 != 0x726F6F646E69)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                v44 = 0xE700000000000000;
                if (v39 != 0x6E776F6E6B6E75)
                {
                  goto LABEL_79;
                }
              }

LABEL_115:
              if (v40 == v44)
              {

                break;
              }

LABEL_79:
              v37 = sub_1B4D18DCC();

              ++v36;
              --v35;
            }

            while ((v37 & 1) == 0);
          }
        }

        if (*&v102[16] && *(v88 + 16))
        {
          v92 = *&v102[8];
          MEMORY[0x1EEE9AC00](v11);
          v81[2] = &v92;
          v45 = v84;
          v47 = sub_1B49B1748(sub_1B4C926F8, v81, v46);
          v84 = v45;
          sub_1B498AD54(&v100);
          if ((v47 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_1B498AD54(&v100);
        }
      }

      v48 = v108;
      __swift_project_boxed_opaque_existential_1(v107 + 1, v108);
      sub_1B4B70700(v48, *(*(&v48 + 1) + 8));
      v99 = v92;
      if (WorkoutPropertyKind.rawValue.getter() == 0xD000000000000013 && v86 == v49)
      {

LABEL_126:
        v96 = v107[0];
        v97 = v107[1];
        v98 = v108;
        v92 = v103;
        v93 = v104;
        v94 = v105;
        v95 = v106;
        v3 = v110;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCECFC(0, *(v3 + 16) + 1, 1);
          v3 = v109;
        }

        v53 = *(v3 + 16);
        v52 = *(v3 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1B4BCECFC((v52 > 1), v53 + 1, 1);
          v3 = v109;
        }

        *(v3 + 16) = v53 + 1;
        v54 = (v3 + 112 * v53);
        v55 = v92;
        v56 = v94;
        v54[3] = v93;
        v54[4] = v56;
        v54[2] = v55;
        v57 = v95;
        v58 = v96;
        v59 = v98;
        v54[7] = v97;
        v54[8] = v59;
        v54[5] = v57;
        v54[6] = v58;
        goto LABEL_5;
      }

      v50 = sub_1B4D18DCC();

      if (v50)
      {
        goto LABEL_126;
      }

LABEL_4:
      sub_1B498AE58(&v103);
      v3 = v110;
LABEL_5:
      ++v5;
    }

    while (v5 != v91);
  }

  *&v103 = v3;

  v60 = v84;
  sub_1B4AE42B8(&v103);
  v61 = v60;
  if (v60)
  {

    __break(1u);
  }

  else
  {

    v62 = v103;
    v63 = *(v103 + 16);
    if (v63)
    {
      v88 = 0;
      *&v100 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF0BC(0, v63, 0);
      v64 = v100;
      v87 = v62;
      v65 = v62 + 32;
      do
      {
        v110 = v63;
        v91 = v65;
        sub_1B498ADFC(v65, &v103);
        v66 = v108;
        v67 = __swift_project_boxed_opaque_existential_1(v107 + 1, v108);
        v68 = *(*(&v66 + 1) + 8);
        v89 = *(v68 + 64);
        v90 = v67;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *(&v93 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        *&v94 = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v92);
        (v89)(v66, v68);
        v72 = sub_1B498AE58(&v103);
        *&v100 = v64;
        v74 = *(v64 + 16);
        v73 = *(v64 + 24);
        if (v74 >= v73 >> 1)
        {
          v72 = sub_1B4BCF0BC((v73 > 1), v74 + 1, 1);
        }

        v75 = MEMORY[0x1EEE9AC00](v72);
        v77 = &v82 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v78 + 16))(v77, boxed_opaque_existential_1, AssociatedTypeWitness, v75);
        sub_1B4CB7620(v74, v77, &v100, AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_destroy_boxed_opaque_existential_1Tm(&v92);
        v64 = v100;
        v65 = v91 + 112;
        v63 = v110 - 1;
      }

      while (v110 != 1);

      v61 = v88;
    }

    else
    {

      v64 = MEMORY[0x1E69E7CC0];
    }

    v79 = sub_1B49E76E0(v64);

    if (!v79)
    {
      v79 = MEMORY[0x1E69E7CC0];
    }

    sub_1B4CF0E58(v79, &v103);

    if (!v61)
    {
      if (v103)
      {
        *v83 = v103;
      }

      else
      {

        *v83 = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B4CEAA00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v86 = a3;
  v3 = MEMORY[0x1E69E7CC0];
  v94 = *(a2 + 16);
  if (v94)
  {
    v5 = 0;
    v93 = (a2 + 32);
    v89 = 0x80000001B4D48AF0;
    do
    {
      sub_1B498ADFC(&v93[14 * v5], &v106);
      v103 = v107;
      v104 = v108;
      *v105 = v109;
      *&v105[16] = *&v110[0];
      v6 = *a1;
      v113 = v3;
      if (v6)
      {
        v7 = a1[1];
        v92 = a1[2];
        v8 = a1[3];
        v88 = a1[4];
        v9 = a1[5];
        v10 = v103;
        v90 = v8;
        if (v103 == 12 || !*(v6 + 16))
        {
          v11 = sub_1B498B0D4(&v103, &v95);
        }

        else
        {
          sub_1B498B0D4(&v103, &v95);
          v11 = sub_1B4978C4C(v10, v6);
          if ((v11 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v12 = BYTE1(v103);
        v91 = v9;
        if (BYTE1(v103) != 7)
        {
          v13 = *(v7 + 16);
          if (v13)
          {
            v14 = (v7 + 32);
            do
            {
              if (!v13)
              {
                goto LABEL_3;
              }

              v16 = *v14;
              if (v16 <= 2)
              {
                v19 = 0xE900000000000079;
                v20 = 0x616473656E646577;
                if (v16 == 1)
                {
                  v20 = 0x79616473657574;
                  v19 = 0xE700000000000000;
                }

                if (*v14)
                {
                  v17 = v20;
                }

                else
                {
                  v17 = 0x7961646E6F6DLL;
                }

                if (*v14)
                {
                  v18 = v19;
                }

                else
                {
                  v18 = 0xE600000000000000;
                }

                if (v12 > 2)
                {
LABEL_39:
                  v21 = 0x7961646E7573;
                  if (v12 == 5)
                  {
                    v21 = 0x7961647275746173;
                    v22 = 0xE800000000000000;
                  }

                  else
                  {
                    v22 = 0xE600000000000000;
                  }

                  v23 = 0x7961647372756874;
                  if (v12 == 3)
                  {
                    v24 = 0xE800000000000000;
                  }

                  else
                  {
                    v23 = 0x796164697266;
                    v24 = 0xE600000000000000;
                  }

                  if (v12 <= 4)
                  {
                    v25 = v23;
                  }

                  else
                  {
                    v25 = v21;
                  }

                  if (v12 <= 4)
                  {
                    v26 = v24;
                  }

                  else
                  {
                    v26 = v22;
                  }

                  if (v17 != v25)
                  {
                    goto LABEL_15;
                  }

                  goto LABEL_64;
                }
              }

              else if (*v14 > 4u)
              {
                if (v16 == 5)
                {
                  v18 = 0xE800000000000000;
                  v17 = 0x7961647275746173;
                  if (v12 > 2)
                  {
                    goto LABEL_39;
                  }
                }

                else
                {
                  v17 = 0x7961646E7573;
                  v18 = 0xE600000000000000;
                  if (v12 > 2)
                  {
                    goto LABEL_39;
                  }
                }
              }

              else
              {
                if (v16 == 3)
                {
                  v17 = 0x7961647372756874;
                }

                else
                {
                  v17 = 0x796164697266;
                }

                if (v16 == 3)
                {
                  v18 = 0xE800000000000000;
                }

                else
                {
                  v18 = 0xE600000000000000;
                }

                if (v12 > 2)
                {
                  goto LABEL_39;
                }
              }

              if (v12)
              {
                if (v12 == 1)
                {
                  v27 = 0x79616473657574;
                }

                else
                {
                  v27 = 0x616473656E646577;
                }

                if (v12 == 1)
                {
                  v26 = 0xE700000000000000;
                }

                else
                {
                  v26 = 0xE900000000000079;
                }

                if (v17 != v27)
                {
                  goto LABEL_15;
                }
              }

              else
              {
                v26 = 0xE600000000000000;
                if (v17 != 0x7961646E6F6DLL)
                {
                  goto LABEL_15;
                }
              }

LABEL_64:
              if (v18 == v26)
              {

                break;
              }

LABEL_15:
              v15 = sub_1B4D18DCC();

              ++v14;
              --v13;
            }

            while ((v15 & 1) == 0);
          }
        }

        if ((v104 & 1) == 0)
        {
          v28 = *(v92 + 16);
          if (v28)
          {
            v29 = (v92 + 32);
            while (v28)
            {
              v30 = *v29++;
              --v28;
              if (v30 == *(&v103 + 1))
              {
                goto LABEL_71;
              }
            }

            goto LABEL_3;
          }
        }

LABEL_71:
        if ((v105[0] & 1) == 0)
        {
          v31 = *(v90 + 16);
          if (v31)
          {
            v32 = (v90 + 32);
            while (v31)
            {
              v33 = *v32++;
              --v31;
              if (v33 == *(&v104 + 1))
              {
                goto LABEL_76;
              }
            }

LABEL_3:
            sub_1B498AD54(&v103);
            goto LABEL_4;
          }
        }

LABEL_76:
        v34 = v105[1];
        if (v105[1] != 5)
        {
          v35 = *(v88 + 16);
          if (v35)
          {
            v36 = (v88 + 32);
            do
            {
              if (!v35)
              {
                goto LABEL_3;
              }

              v38 = *v36;
              if (v38 <= 1)
              {
                if (*v36)
                {
                  v39 = 0x726F6F646E69;
                }

                else
                {
                  v39 = 0x6E776F6E6B6E75;
                }

                if (*v36)
                {
                  v40 = 0xE600000000000000;
                }

                else
                {
                  v40 = 0xE700000000000000;
                }

                if (v34 > 1)
                {
LABEL_98:
                  v41 = 0x676E696D6D697773;
                  if (v34 == 3)
                  {
                    v41 = 0x657461576E65706FLL;
                  }

                  v42 = 0xEC0000006C6F6F50;
                  if (v34 == 3)
                  {
                    v42 = 0xE900000000000072;
                  }

                  if (v34 == 2)
                  {
                    v43 = 0x726F6F6474756FLL;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  if (v34 == 2)
                  {
                    v44 = 0xE700000000000000;
                  }

                  else
                  {
                    v44 = v42;
                  }

                  if (v39 != v43)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_115;
                }
              }

              else if (v38 == 2)
              {
                v40 = 0xE700000000000000;
                v39 = 0x726F6F6474756FLL;
                if (v34 > 1)
                {
                  goto LABEL_98;
                }
              }

              else
              {
                if (v38 == 3)
                {
                  v39 = 0x657461576E65706FLL;
                }

                else
                {
                  v39 = 0x676E696D6D697773;
                }

                if (v38 == 3)
                {
                  v40 = 0xE900000000000072;
                }

                else
                {
                  v40 = 0xEC0000006C6F6F50;
                }

                if (v34 > 1)
                {
                  goto LABEL_98;
                }
              }

              if (v34)
              {
                v44 = 0xE600000000000000;
                if (v39 != 0x726F6F646E69)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                v44 = 0xE700000000000000;
                if (v39 != 0x6E776F6E6B6E75)
                {
                  goto LABEL_79;
                }
              }

LABEL_115:
              if (v40 == v44)
              {

                break;
              }

LABEL_79:
              v37 = sub_1B4D18DCC();

              ++v36;
              --v35;
            }

            while ((v37 & 1) == 0);
          }
        }

        if (*&v105[16] && *(v91 + 16))
        {
          v95 = *&v105[8];
          MEMORY[0x1EEE9AC00](v11);
          v84[2] = &v95;
          v45 = v87;
          v47 = sub_1B49B1748(sub_1B4C926F8, v84, v46);
          v87 = v45;
          sub_1B498AD54(&v103);
          if ((v47 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_1B498AD54(&v103);
        }
      }

      v48 = v111;
      __swift_project_boxed_opaque_existential_1(v110 + 1, v111);
      sub_1B4B70700(v48, *(*(&v48 + 1) + 8));
      v102 = v95;
      if (WorkoutPropertyKind.rawValue.getter() == 0xD000000000000011 && v89 == v49)
      {

LABEL_126:
        v99 = v110[0];
        v100 = v110[1];
        v101 = v111;
        v95 = v106;
        v96 = v107;
        v97 = v108;
        v98 = v109;
        v3 = v113;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCECFC(0, *(v3 + 16) + 1, 1);
          v3 = v112;
        }

        v53 = *(v3 + 16);
        v52 = *(v3 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1B4BCECFC((v52 > 1), v53 + 1, 1);
          v3 = v112;
        }

        *(v3 + 16) = v53 + 1;
        v54 = (v3 + 112 * v53);
        v55 = v95;
        v56 = v97;
        v54[3] = v96;
        v54[4] = v56;
        v54[2] = v55;
        v57 = v98;
        v58 = v99;
        v59 = v101;
        v54[7] = v100;
        v54[8] = v59;
        v54[5] = v57;
        v54[6] = v58;
        goto LABEL_5;
      }

      v50 = sub_1B4D18DCC();

      if (v50)
      {
        goto LABEL_126;
      }

LABEL_4:
      sub_1B498AE58(&v106);
      v3 = v113;
LABEL_5:
      ++v5;
    }

    while (v5 != v94);
  }

  *&v106 = v3;

  v60 = v87;
  sub_1B4AE42B8(&v106);
  v61 = v60;
  if (v60)
  {

    __break(1u);
  }

  else
  {

    v62 = v106;
    v63 = *(v106 + 16);
    if (v63)
    {
      v91 = 0;
      *&v103 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF0BC(0, v63, 0);
      v64 = v103;
      v90 = v62;
      v65 = v62 + 32;
      do
      {
        v113 = v63;
        v94 = v65;
        sub_1B498ADFC(v65, &v106);
        v66 = v111;
        v67 = __swift_project_boxed_opaque_existential_1(v110 + 1, v111);
        v68 = *(*(&v66 + 1) + 8);
        v92 = *(v68 + 64);
        v93 = v67;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *(&v96 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        *&v97 = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v95);
        (v92)(v66, v68);
        v72 = sub_1B498AE58(&v106);
        *&v103 = v64;
        v74 = *(v64 + 16);
        v73 = *(v64 + 24);
        if (v74 >= v73 >> 1)
        {
          v72 = sub_1B4BCF0BC((v73 > 1), v74 + 1, 1);
        }

        v75 = MEMORY[0x1EEE9AC00](v72);
        v77 = &v85 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v78 + 16))(v77, boxed_opaque_existential_1, AssociatedTypeWitness, v75);
        sub_1B4CB7620(v74, v77, &v103, AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_destroy_boxed_opaque_existential_1Tm(&v95);
        v64 = v103;
        v65 = v94 + 112;
        v63 = v113 - 1;
      }

      while (v113 != 1);

      v61 = v91;
    }

    else
    {

      v64 = MEMORY[0x1E69E7CC0];
    }

    v79 = sub_1B49E7598(v64);

    if (!v79)
    {
      v79 = MEMORY[0x1E69E7CC0];
    }

    sub_1B4CF0A94(v79, &v106);

    if (!v61)
    {
      if (v106)
      {
        v81 = *(&v106 + 1);
        v82 = v86;
        *v86 = v106;
        v82[1] = v81;
      }

      else
      {

        v83 = v86;
        *v86 = 0;
        v83[1] = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B4CEB478@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (result + 32);
    v5 = 1;
    while (1)
    {
      v7 = *v4++;
      v6 = v7;
      if (v5)
      {
        v18 = 0;
        v16 = 0u;
        v17 = 0u;
      }

      else
      {
        *(&v17 + 1) = &type metadata for CountPropertyValue;
        v18 = sub_1B49A85A0();
        *&v16 = v3;
      }

      v15[3] = &type metadata for CountPropertyValue;
      v15[4] = sub_1B49A85A0();
      v15[0] = v6;
      sub_1B4974FBC(&v16, v14, &qword_1EB8AB2A0, &unk_1B4D360A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A0, &unk_1B4D360A0);
      v8 = swift_dynamicCast();
      if ((v8 & 1) == 0)
      {
        v12 = 0;
      }

      v13 = v8 ^ 1;
      sub_1B4974FBC(v15, v11, &qword_1EB8AB2A0, &unk_1B4D360A0);
      result = swift_dynamicCast();
      if (result)
      {
        v3 = v10;
        if ((v13 & 1) == 0)
        {
          v3 = v12 + v10;
          if (__OFADD__(v12, v10))
          {
            __break(1u);
            return result;
          }
        }
      }

      else
      {
        if (v13 == 1)
        {
          v3 = 0;
          v5 = 1;
          goto LABEL_5;
        }

        v3 = v12;
      }

      v5 = 0;
LABEL_5:
      sub_1B4975024(v15, &qword_1EB8AB2A0, &unk_1B4D360A0);
      result = sub_1B4975024(&v16, &qword_1EB8AB2A0, &unk_1B4D360A0);
      if (!--v2)
      {
        goto LABEL_19;
      }
    }
  }

  v3 = 0;
  v5 = 1;
LABEL_19:
  *a2 = v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1B4CEB630@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void, double)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v75 = a5;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE500, &qword_1B4D47770);
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7978, &unk_1B4D1F2F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v97 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v71 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  v95 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v72 = &v71 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v74 = &v71 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v88 = &v71 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v84 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v83 = &v71 - v30;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v71 - v33;
  v35 = a4(0, v32);
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v86 = v35;
  v82 = v36 + 56;
  v81 = v37;
  (v37)(v34, 1, 1);
  v71 = v34;
  v104 = a6;
  sub_1B4974FBC(v34, a6, a2, a3);
  v38 = *(a1 + 16);
  if (v38)
  {
    v39 = a1 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
    v79 = (v36 + 48);
    v78 = v95[9];
    v94 = v95 + 7;
    v93 = v95 + 6;
    v89 = a3;
    v95 = a2;
    v40 = v104;
    v80 = v18;
    v41 = v88;
    v42 = v86;
    v77 = v19;
    while (1)
    {
      v92 = v38;
      v91 = v39;
      sub_1B4974FBC(v39, v41, &qword_1EB8A6840, &unk_1B4D20FA0);
      v45 = v40;
      v46 = v84;
      sub_1B4974FBC(v45, v84, a2, a3);
      if ((*v79)(v46, 1, v42) == 1)
      {
        sub_1B4975024(v46, a2, a3);
        v101 = 0u;
        v102 = 0u;
        v103 = 0;
      }

      else
      {
        *(&v102 + 1) = v19;
        v103 = sub_1B49B0578(&qword_1EB8AE508, &qword_1EB8A6840, &unk_1B4D20FA0, &protocol conformance descriptor for StatisticsPropertyValue<A>);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v101);
        sub_1B4974FBC(v46, boxed_opaque_existential_1, &qword_1EB8A6840, &unk_1B4D20FA0);
        sub_1B4CFA938(v46, v75);
      }

      v100[3] = v19;
      v100[4] = sub_1B49B0578(&qword_1EB8AE508, &qword_1EB8A6840, &unk_1B4D20FA0, &protocol conformance descriptor for StatisticsPropertyValue<A>);
      v48 = __swift_allocate_boxed_opaque_existential_1(v100);
      sub_1B4974FBC(v41, v48, &qword_1EB8A6840, &unk_1B4D20FA0);
      sub_1B4974FBC(&v101, v99, &qword_1EB8AB2A0, &unk_1B4D360A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A0, &unk_1B4D360A0);
      v49 = v96;
      v50 = swift_dynamicCast();
      v51 = *v94;
      (*v94)(v49, v50 ^ 1u, 1, v19);
      sub_1B4974FBC(v100, v98, &qword_1EB8AB2A0, &unk_1B4D360A0);
      v52 = v97;
      v53 = swift_dynamicCast();
      v90 = v51;
      v51(v52, v53 ^ 1u, 1, v19);
      v54 = v87;
      v55 = v87 + *(v85 + 48);
      sub_1B4974FBC(v49, v87, &qword_1EB8A7978, &unk_1B4D1F2F0);
      sub_1B4974FBC(v52, v55, &qword_1EB8A7978, &unk_1B4D1F2F0);
      v56 = *v93;
      if ((*v93)(v54, 1, v19) == 1)
      {
        break;
      }

      v60 = v56(v55, 1, v19);
      v59 = v80;
      if (v60 == 1)
      {
        sub_1B4975024(v88, &qword_1EB8A6840, &unk_1B4D20FA0);
        sub_1B4975024(v104, v95, v89);
        v55 = v87;
LABEL_13:
        sub_1B498B270(v55, v59, &qword_1EB8A6840, &unk_1B4D20FA0);
        v57 = 0;
LABEL_14:
        v61 = v89;
        goto LABEL_16;
      }

      v62 = v72;
      sub_1B498B270(v87, v72, &qword_1EB8A6840, &unk_1B4D20FA0);
      v63 = v55;
      v64 = v73;
      sub_1B498B270(v63, v73, &qword_1EB8A6840, &unk_1B4D20FA0);
      v65 = v76;
      sub_1B4CE1888(v62, v64, v59);
      v57 = v65;
      sub_1B4975024(v64, &qword_1EB8A6840, &unk_1B4D20FA0);
      sub_1B4975024(v62, &qword_1EB8A6840, &unk_1B4D20FA0);
      sub_1B4975024(v88, &qword_1EB8A6840, &unk_1B4D20FA0);
      v61 = v89;
      sub_1B4975024(v104, v95, v89);
      v76 = v65;
      if (v65)
      {
        sub_1B4975024(v71, v95, v61);
        sub_1B4975024(v97, &qword_1EB8A7978, &unk_1B4D1F2F0);
        sub_1B4975024(v96, &qword_1EB8A7978, &unk_1B4D1F2F0);
        sub_1B4975024(v100, &qword_1EB8AB2A0, &unk_1B4D360A0);
        v67 = &v101;
        v68 = &qword_1EB8AB2A0;
        v69 = &unk_1B4D360A0;
        return sub_1B4975024(v67, v68, v69);
      }

LABEL_16:
      v90(v59, v57, 1, v19);
      sub_1B4975024(v97, &qword_1EB8A7978, &unk_1B4D1F2F0);
      sub_1B4975024(v96, &qword_1EB8A7978, &unk_1B4D1F2F0);
      if (v56(v59, 1, v19) == 1)
      {
        sub_1B4975024(v59, &qword_1EB8A7978, &unk_1B4D1F2F0);
        v43 = 1;
        a2 = v95;
        v40 = v104;
        v44 = v83;
      }

      else
      {
        v66 = v74;
        sub_1B498B270(v59, v74, &qword_1EB8A6840, &unk_1B4D20FA0);
        v44 = v83;
        sub_1B498B270(v66, v83, &qword_1EB8A6840, &unk_1B4D20FA0);
        v43 = 0;
        a2 = v95;
        v40 = v104;
      }

      v42 = v86;
      v81(v44, v43, 1, v86);
      sub_1B4975024(v100, &qword_1EB8AB2A0, &unk_1B4D360A0);
      sub_1B4975024(&v101, &qword_1EB8AB2A0, &unk_1B4D360A0);
      a3 = v61;
      sub_1B498B270(v44, v40, a2, v61);
      v39 = v91 + v78;
      v38 = v92 - 1;
      v19 = v77;
      v41 = v88;
      if (v92 == 1)
      {
        goto LABEL_18;
      }
    }

    sub_1B4975024(v41, &qword_1EB8A6840, &unk_1B4D20FA0);
    sub_1B4975024(v104, v95, v89);
    v57 = 1;
    v58 = v56(v55, 1, v19);
    v59 = v80;
    if (v58 != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

LABEL_18:
  v67 = v71;
  v68 = a2;
  v69 = a3;
  return sub_1B4975024(v67, v68, v69);
}

uint64_t sub_1B4CEC0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE4E8, &qword_1B4D47760);
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7970, &unk_1B4D1F2E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v85 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v61 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v61 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v61 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v61 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE4E0, &qword_1B4D47758);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v76 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v73 = &v61 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v61 - v26;
  v28 = type metadata accessor for WorkoutCaloriesStatisticsProperty(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v75 = v28;
  v72 = v29 + 56;
  v71 = v30;
  (v30)(v27, 1, 1);
  v62 = v27;
  sub_1B4974FBC(v27, a2, &qword_1EB8AE4E0, &qword_1B4D47758);
  v31 = *(a1 + 16);
  if (v31)
  {
    v32 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v69 = (v29 + 48);
    v68 = *(v13 + 72);
    v82 = (v13 + 56);
    v77 = (v13 + 48);
    v83 = a2;
    v70 = v11;
    v33 = v76;
    v34 = v75;
    v67 = v12;
    while (1)
    {
      v81 = v31;
      v80 = v32;
      sub_1B4974FBC(v32, v92, &qword_1EB8A6D68, &qword_1B4D208D0);
      sub_1B4974FBC(a2, v33, &qword_1EB8AE4E0, &qword_1B4D47758);
      if ((*v69)(v33, 1, v34) == 1)
      {
        sub_1B4975024(v33, &qword_1EB8AE4E0, &qword_1B4D47758);
        v89 = 0u;
        v90 = 0u;
        v91 = 0;
      }

      else
      {
        *(&v90 + 1) = v12;
        v91 = sub_1B49B0578(&qword_1EB8AE4F0, &qword_1EB8A6D68, &qword_1B4D208D0, &protocol conformance descriptor for StatisticsPropertyValue<A>);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v89);
        sub_1B4974FBC(v33, boxed_opaque_existential_1, &qword_1EB8A6D68, &qword_1B4D208D0);
        sub_1B4CFA938(v33, type metadata accessor for WorkoutCaloriesStatisticsProperty);
      }

      v88[3] = v12;
      v88[4] = sub_1B49B0578(&qword_1EB8AE4F0, &qword_1EB8A6D68, &qword_1B4D208D0, &protocol conformance descriptor for StatisticsPropertyValue<A>);
      v37 = __swift_allocate_boxed_opaque_existential_1(v88);
      sub_1B4974FBC(v92, v37, &qword_1EB8A6D68, &qword_1B4D208D0);
      sub_1B4974FBC(&v89, v87, &qword_1EB8AB2A0, &unk_1B4D360A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A0, &unk_1B4D360A0);
      v38 = v84;
      v39 = swift_dynamicCast();
      v40 = *v82;
      (*v82)(v38, v39 ^ 1u, 1, v12);
      sub_1B4974FBC(v88, v86, &qword_1EB8AB2A0, &unk_1B4D360A0);
      v41 = v85;
      v42 = swift_dynamicCast();
      v79 = v40;
      v40(v41, v42 ^ 1u, 1, v12);
      v43 = v78;
      v44 = v78 + *(v74 + 48);
      sub_1B4974FBC(v38, v78, &qword_1EB8A7970, &unk_1B4D1F2E0);
      sub_1B4974FBC(v41, v44, &qword_1EB8A7970, &unk_1B4D1F2E0);
      v45 = *v77;
      if ((*v77)(v43, 1, v12) == 1)
      {
        break;
      }

      v49 = v45(v44, 1, v12);
      v48 = v70;
      if (v49 == 1)
      {
        sub_1B4975024(v92, &qword_1EB8A6D68, &qword_1B4D208D0);
        sub_1B4975024(v83, &qword_1EB8AE4E0, &qword_1B4D47758);
        v44 = v78;
LABEL_13:
        sub_1B498B270(v44, v48, &qword_1EB8A6D68, &qword_1B4D208D0);
        v46 = 0;
        goto LABEL_16;
      }

      v50 = v92;
      v51 = v63;
      sub_1B498B270(v78, v63, &qword_1EB8A6D68, &qword_1B4D208D0);
      v52 = v64;
      sub_1B498B270(v44, v64, &qword_1EB8A6D68, &qword_1B4D208D0);
      v53 = v66;
      sub_1B4CE1BF4(v51, v52, v48);
      sub_1B4975024(v52, &qword_1EB8A6D68, &qword_1B4D208D0);
      sub_1B4975024(v51, &qword_1EB8A6D68, &qword_1B4D208D0);
      sub_1B4975024(v50, &qword_1EB8A6D68, &qword_1B4D208D0);
      sub_1B4975024(v83, &qword_1EB8AE4E0, &qword_1B4D47758);
      v66 = v53;
      if (v53)
      {
        sub_1B4975024(v62, &qword_1EB8AE4E0, &qword_1B4D47758);
        sub_1B4975024(v85, &qword_1EB8A7970, &unk_1B4D1F2E0);
        sub_1B4975024(v84, &qword_1EB8A7970, &unk_1B4D1F2E0);
        sub_1B4975024(v88, &qword_1EB8AB2A0, &unk_1B4D360A0);
        v59 = &v89;
        v57 = &qword_1EB8AB2A0;
        v58 = &unk_1B4D360A0;
        return sub_1B4975024(v59, v57, v58);
      }

      v46 = 0;
LABEL_16:
      v12 = v67;
      v79(v48, v46, 1, v67);
      sub_1B4975024(v85, &qword_1EB8A7970, &unk_1B4D1F2E0);
      sub_1B4975024(v84, &qword_1EB8A7970, &unk_1B4D1F2E0);
      v54 = v45(v48, 1, v12) == 1;
      v55 = v73;
      if (v54)
      {
        sub_1B4975024(v48, &qword_1EB8A7970, &unk_1B4D1F2E0);
        v35 = 1;
      }

      else
      {
        v56 = v65;
        sub_1B498B270(v48, v65, &qword_1EB8A6D68, &qword_1B4D208D0);
        sub_1B498B270(v56, v55, &qword_1EB8A6D68, &qword_1B4D208D0);
        v35 = 0;
      }

      a2 = v83;
      v33 = v76;
      v34 = v75;
      v71(v55, v35, 1, v75);
      sub_1B4975024(v88, &qword_1EB8AB2A0, &unk_1B4D360A0);
      sub_1B4975024(&v89, &qword_1EB8AB2A0, &unk_1B4D360A0);
      sub_1B498B270(v55, a2, &qword_1EB8AE4E0, &qword_1B4D47758);
      v32 = v80 + v68;
      v31 = v81 - 1;
      if (v81 == 1)
      {
        goto LABEL_18;
      }
    }

    sub_1B4975024(v92, &qword_1EB8A6D68, &qword_1B4D208D0);
    sub_1B4975024(v83, &qword_1EB8AE4E0, &qword_1B4D47758);
    v46 = 1;
    v47 = v45(v44, 1, v12);
    v48 = v70;
    if (v47 == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_18:
  v57 = &qword_1EB8AE4E0;
  v58 = &qword_1B4D47758;
  v59 = v62;
  return sub_1B4975024(v59, v57, v58);
}

uint64_t sub_1B4CECBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE4A8, &qword_1B4D47748);
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7530, &unk_1B4D40250);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v85 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v61 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v61 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v61 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v61 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE4A0, &qword_1B4D47740);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v76 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v73 = &v61 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v61 - v26;
  v28 = type metadata accessor for WorkoutDurationStatisticsProperty(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v75 = v28;
  v72 = v29 + 56;
  v71 = v30;
  (v30)(v27, 1, 1);
  v62 = v27;
  sub_1B4974FBC(v27, a2, &qword_1EB8AE4A0, &qword_1B4D47740);
  v31 = *(a1 + 16);
  if (v31)
  {
    v32 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v69 = (v29 + 48);
    v68 = *(v13 + 72);
    v82 = (v13 + 56);
    v77 = (v13 + 48);
    v83 = a2;
    v70 = v11;
    v33 = v76;
    v34 = v75;
    v67 = v12;
    while (1)
    {
      v81 = v31;
      v80 = v32;
      sub_1B4974FBC(v32, v92, &qword_1EB8A6858, &qword_1B4D1AB70);
      sub_1B4974FBC(a2, v33, &qword_1EB8AE4A0, &qword_1B4D47740);
      if ((*v69)(v33, 1, v34) == 1)
      {
        sub_1B4975024(v33, &qword_1EB8AE4A0, &qword_1B4D47740);
        v89 = 0u;
        v90 = 0u;
        v91 = 0;
      }

      else
      {
        *(&v90 + 1) = v12;
        v91 = sub_1B49B0578(&qword_1EB8AE4B0, &qword_1EB8A6858, &qword_1B4D1AB70, &protocol conformance descriptor for StatisticsPropertyValue<A>);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v89);
        sub_1B4974FBC(v33, boxed_opaque_existential_1, &qword_1EB8A6858, &qword_1B4D1AB70);
        sub_1B4CFA938(v33, type metadata accessor for WorkoutDurationStatisticsProperty);
      }

      v88[3] = v12;
      v88[4] = sub_1B49B0578(&qword_1EB8AE4B0, &qword_1EB8A6858, &qword_1B4D1AB70, &protocol conformance descriptor for StatisticsPropertyValue<A>);
      v37 = __swift_allocate_boxed_opaque_existential_1(v88);
      sub_1B4974FBC(v92, v37, &qword_1EB8A6858, &qword_1B4D1AB70);
      sub_1B4974FBC(&v89, v87, &qword_1EB8AB2A0, &unk_1B4D360A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A0, &unk_1B4D360A0);
      v38 = v84;
      v39 = swift_dynamicCast();
      v40 = *v82;
      (*v82)(v38, v39 ^ 1u, 1, v12);
      sub_1B4974FBC(v88, v86, &qword_1EB8AB2A0, &unk_1B4D360A0);
      v41 = v85;
      v42 = swift_dynamicCast();
      v79 = v40;
      v40(v41, v42 ^ 1u, 1, v12);
      v43 = v78;
      v44 = v78 + *(v74 + 48);
      sub_1B4974FBC(v38, v78, &qword_1EB8A7530, &unk_1B4D40250);
      sub_1B4974FBC(v41, v44, &qword_1EB8A7530, &unk_1B4D40250);
      v45 = *v77;
      if ((*v77)(v43, 1, v12) == 1)
      {
        break;
      }

      v49 = v45(v44, 1, v12);
      v48 = v70;
      if (v49 == 1)
      {
        sub_1B4975024(v92, &qword_1EB8A6858, &qword_1B4D1AB70);
        sub_1B4975024(v83, &qword_1EB8AE4A0, &qword_1B4D47740);
        v44 = v78;
LABEL_13:
        sub_1B498B270(v44, v48, &qword_1EB8A6858, &qword_1B4D1AB70);
        v46 = 0;
        goto LABEL_16;
      }

      v50 = v92;
      v51 = v63;
      sub_1B498B270(v78, v63, &qword_1EB8A6858, &qword_1B4D1AB70);
      v52 = v64;
      sub_1B498B270(v44, v64, &qword_1EB8A6858, &qword_1B4D1AB70);
      v53 = v66;
      sub_1B4CE1F60(v51, v52, v48);
      sub_1B4975024(v52, &qword_1EB8A6858, &qword_1B4D1AB70);
      sub_1B4975024(v51, &qword_1EB8A6858, &qword_1B4D1AB70);
      sub_1B4975024(v50, &qword_1EB8A6858, &qword_1B4D1AB70);
      sub_1B4975024(v83, &qword_1EB8AE4A0, &qword_1B4D47740);
      v66 = v53;
      if (v53)
      {
        sub_1B4975024(v62, &qword_1EB8AE4A0, &qword_1B4D47740);
        sub_1B4975024(v85, &qword_1EB8A7530, &unk_1B4D40250);
        sub_1B4975024(v84, &qword_1EB8A7530, &unk_1B4D40250);
        sub_1B4975024(v88, &qword_1EB8AB2A0, &unk_1B4D360A0);
        v59 = &v89;
        v57 = &qword_1EB8AB2A0;
        v58 = &unk_1B4D360A0;
        return sub_1B4975024(v59, v57, v58);
      }

      v46 = 0;
LABEL_16:
      v12 = v67;
      v79(v48, v46, 1, v67);
      sub_1B4975024(v85, &qword_1EB8A7530, &unk_1B4D40250);
      sub_1B4975024(v84, &qword_1EB8A7530, &unk_1B4D40250);
      v54 = v45(v48, 1, v12) == 1;
      v55 = v73;
      if (v54)
      {
        sub_1B4975024(v48, &qword_1EB8A7530, &unk_1B4D40250);
        v35 = 1;
      }

      else
      {
        v56 = v65;
        sub_1B498B270(v48, v65, &qword_1EB8A6858, &qword_1B4D1AB70);
        sub_1B498B270(v56, v55, &qword_1EB8A6858, &qword_1B4D1AB70);
        v35 = 0;
      }

      a2 = v83;
      v33 = v76;
      v34 = v75;
      v71(v55, v35, 1, v75);
      sub_1B4975024(v88, &qword_1EB8AB2A0, &unk_1B4D360A0);
      sub_1B4975024(&v89, &qword_1EB8AB2A0, &unk_1B4D360A0);
      sub_1B498B270(v55, a2, &qword_1EB8AE4A0, &qword_1B4D47740);
      v32 = v80 + v68;
      v31 = v81 - 1;
      if (v81 == 1)
      {
        goto LABEL_18;
      }
    }

    sub_1B4975024(v92, &qword_1EB8A6858, &qword_1B4D1AB70);
    sub_1B4975024(v83, &qword_1EB8AE4A0, &qword_1B4D47740);
    v46 = 1;
    v47 = v45(v44, 1, v12);
    v48 = v70;
    if (v47 == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_18:
  v57 = &qword_1EB8AE4A0;
  v58 = &qword_1B4D47740;
  v59 = v62;
  return sub_1B4975024(v59, v57, v58);
}

uint64_t sub_1B4CED654@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v176 = a1;

  sub_1B4CAFC90(&v176, v4);
  if (!v2)
  {
    v43 = a2;
    v5 = v176;
    sub_1B496F544(&v167);
    v6 = *(v5 + 2);
    v164 = v173;
    v165 = v174;
    v166 = v175;
    v160 = v169;
    v161 = v170;
    v163 = v172;
    v162 = v171;
    v159 = v168;
    v158 = v167;
    v44 = v6;
    if (!v6)
    {
LABEL_23:

      v39 = v165;
      *(v43 + 96) = v164;
      *(v43 + 112) = v39;
      *(v43 + 128) = v166;
      v40 = v161;
      *(v43 + 32) = v160;
      *(v43 + 48) = v40;
      v41 = v163;
      *(v43 + 64) = v162;
      *(v43 + 80) = v41;
      v42 = v159;
      *v43 = v158;
      *(v43 + 16) = v42;
      return result;
    }

    v7 = 0;
    v8 = 32;
    while (v7 < *(v5 + 2))
    {
      v147 = *&v5[v8];
      v11 = *&v5[v8 + 16];
      v12 = *&v5[v8 + 32];
      v13 = *&v5[v8 + 48];
      v151 = *&v5[v8 + 64];
      v150 = v13;
      v149 = v12;
      v148 = v11;
      v14 = *&v5[v8 + 80];
      v15 = *&v5[v8 + 96];
      v16 = *&v5[v8 + 128];
      v154 = *&v5[v8 + 112];
      v153 = v15;
      v152 = v14;
      v96 = v164;
      v97 = v165;
      v92 = v160;
      v93 = v161;
      v95 = v163;
      v94 = v162;
      v91 = v159;
      v90 = v158;
      v156[6] = v164;
      v156[7] = v165;
      v156[2] = v160;
      v156[3] = v161;
      v155 = v16;
      v98 = v166;
      v157 = v166;
      v156[5] = v163;
      v156[4] = v162;
      v156[1] = v159;
      v156[0] = v158;
      if (sub_1B496F52C(v156) == 1)
      {
        v141 = v96;
        v142 = v97;
        v143 = v98;
        v137 = v92;
        v138 = v93;
        v140 = v95;
        v139 = v94;
        v136 = v91;
        v135 = v90;
        sub_1B4BA6D90(&v147, &v126);
        sub_1B4974FBC(&v158, &v126, &qword_1EB8AC4D8, &qword_1B4D3C6A8);
        sub_1B4975024(&v135, &qword_1EB8AC4D8, &qword_1B4D3C6A8);
        v144 = 0u;
        v145 = 0u;
        v146 = 0;
      }

      else
      {
        *(&v145 + 1) = &type metadata for StreakPropertyValue;
        v146 = sub_1B4C43918();
        v17 = swift_allocObject();
        v18 = v96;
        v132 = v96;
        v133 = v97;
        v19 = v92;
        v20 = v92;
        v128 = v92;
        v129 = v93;
        v21 = v94;
        v22 = v94;
        v131 = v95;
        v130 = v94;
        v23 = v90;
        v24 = v90;
        v127 = v91;
        v126 = v90;
        v25 = v97;
        v26 = v97;
        *(v17 + 112) = v96;
        *(v17 + 128) = v25;
        v27 = v93;
        v28 = v93;
        *(v17 + 48) = v19;
        *(v17 + 64) = v27;
        v29 = v95;
        v30 = v95;
        *(v17 + 80) = v21;
        *(v17 + 96) = v29;
        v31 = v91;
        v32 = v91;
        *(v17 + 16) = v23;
        *(v17 + 32) = v31;
        v141 = v18;
        v142 = v26;
        v137 = v20;
        v138 = v28;
        v140 = v30;
        v139 = v22;
        v134 = v98;
        *&v144 = v17;
        *(v17 + 144) = v98;
        v143 = v98;
        v136 = v32;
        v135 = v24;
        sub_1B4BA6D90(&v147, &v114);
        sub_1B4974FBC(&v158, &v114, &qword_1EB8AC4D8, &qword_1B4D3C6A8);
        sub_1B4BA6D90(&v126, &v114);
        sub_1B4C0522C(&v135);
      }

      v125[3] = &type metadata for StreakPropertyValue;
      v125[4] = sub_1B4C43918();
      v33 = swift_allocObject();
      v125[0] = v33;
      v34 = v154;
      *(v33 + 112) = v153;
      *(v33 + 128) = v34;
      *(v33 + 144) = v155;
      v35 = v150;
      *(v33 + 48) = v149;
      *(v33 + 64) = v35;
      v36 = v152;
      *(v33 + 80) = v151;
      *(v33 + 96) = v36;
      v37 = v148;
      *(v33 + 16) = v147;
      *(v33 + 32) = v37;
      sub_1B4974FBC(&v144, v124, &qword_1EB8AB2A0, &unk_1B4D360A0);
      sub_1B4BA6D90(&v147, &v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A0, &unk_1B4D360A0);
      if (swift_dynamicCast())
      {
        nullsub_1();
      }

      else
      {
        sub_1B496F544(&v90);
        v132 = v96;
        v133 = v97;
        v134 = v98;
        v128 = v92;
        v129 = v93;
        v131 = v95;
        v130 = v94;
        v127 = v91;
        v126 = v90;
      }

      sub_1B4974FBC(v125, v123, &qword_1EB8AB2A0, &unk_1B4D360A0);
      if (swift_dynamicCast())
      {
        nullsub_1();
      }

      else
      {
        sub_1B496F544(&v90);
        v120 = v96;
        v121 = v97;
        v122 = v98;
        v116 = v92;
        v117 = v93;
        v119 = v95;
        v118 = v94;
        v115 = v91;
        v114 = v90;
      }

      v108[6] = v132;
      v108[7] = v133;
      v108[2] = v128;
      v108[3] = v129;
      v108[5] = v131;
      v108[4] = v130;
      v108[1] = v127;
      v108[0] = v126;
      v110[6] = v120;
      v110[7] = v121;
      v110[2] = v116;
      v110[3] = v117;
      v110[5] = v119;
      v110[4] = v118;
      v110[1] = v115;
      v110[0] = v114;
      v96 = v132;
      v97 = v133;
      v92 = v128;
      v93 = v129;
      v95 = v131;
      v94 = v130;
      v91 = v127;
      v90 = v126;
      v104 = v119;
      v105 = v120;
      v106 = v121;
      v100 = v115;
      v101 = v116;
      v102 = v117;
      v103 = v118;
      v99 = v114;
      v112[6] = v132;
      v112[7] = v133;
      v112[2] = v128;
      v112[3] = v129;
      v112[5] = v131;
      v112[4] = v130;
      v109 = v134;
      v111 = v122;
      v98 = v134;
      v107 = v122;
      v113 = v134;
      v112[1] = v127;
      v112[0] = v126;
      if (sub_1B496F52C(v112) == 1)
      {
        sub_1B4974FBC(v108, &v81, &qword_1EB8A79B8, &qword_1B4D1F320);
        sub_1B4974FBC(v110, &v81, &qword_1EB8A79B8, &qword_1B4D1F320);
        sub_1B4BA87C4(&v147);
        sub_1B4975024(&v158, &qword_1EB8AC4D8, &qword_1B4D3C6A8);
        v87 = v105;
        v88 = v106;
        v89 = v107;
        v83 = v101;
        v84 = v102;
        v85 = v103;
        v86 = v104;
        v81 = v99;
        v82 = v100;
        sub_1B496F52C(&v81);
        v141 = v105;
        v142 = v106;
        v143 = v107;
        v137 = v101;
        v138 = v102;
        v140 = v104;
        v139 = v103;
        v136 = v100;
        v135 = v99;
      }

      else
      {
        v87 = v105;
        v88 = v106;
        v89 = v107;
        v83 = v101;
        v84 = v102;
        v85 = v103;
        v86 = v104;
        v81 = v99;
        v82 = v100;
        if (sub_1B496F52C(&v81) == 1)
        {
          sub_1B4974FBC(v108, &v72, &qword_1EB8A79B8, &qword_1B4D1F320);
          sub_1B4974FBC(v110, &v72, &qword_1EB8A79B8, &qword_1B4D1F320);
          sub_1B4BA87C4(&v147);
          sub_1B4975024(&v158, &qword_1EB8AC4D8, &qword_1B4D3C6A8);
          v141 = v96;
          v142 = v97;
          v143 = v98;
          v137 = v92;
          v138 = v93;
          v140 = v95;
          v139 = v94;
          v136 = v91;
          v135 = v90;
        }

        else
        {
          v78 = v96;
          v79 = v97;
          v80 = v98;
          v74 = v92;
          v75 = v93;
          v76 = v94;
          v77 = v95;
          v72 = v90;
          v73 = v91;
          v69 = v105;
          v70 = v106;
          v71 = v107;
          v65 = v101;
          v66 = v102;
          v67 = v103;
          v68 = v104;
          v63 = v99;
          v64 = v100;
          sub_1B4974FBC(v108, &v54, &qword_1EB8A79B8, &qword_1B4D1F320);
          sub_1B4974FBC(v110, &v54, &qword_1EB8A79B8, &qword_1B4D1F320);
          v2 = 0;
          static StreakPropertyValue.add(_:_:)(&v72, &v63, &v135);
          sub_1B4BA87C4(&v147);
          sub_1B4975024(&v158, &qword_1EB8AC4D8, &qword_1B4D3C6A8);
          v51 = v69;
          v52 = v70;
          v53 = v71;
          v47 = v65;
          v48 = v66;
          v49 = v67;
          v50 = v68;
          v45 = v63;
          v46 = v64;
          sub_1B4BA87C4(&v45);
          v60 = v78;
          v61 = v79;
          v62 = v80;
          v56 = v74;
          v57 = v75;
          v58 = v76;
          v59 = v77;
          v54 = v72;
          v55 = v73;
          sub_1B4BA87C4(&v54);
          nullsub_1();
        }
      }

      v69 = v120;
      v70 = v121;
      v71 = v122;
      v65 = v116;
      v66 = v117;
      v67 = v118;
      v68 = v119;
      v63 = v114;
      v64 = v115;
      sub_1B4975024(&v63, &qword_1EB8A79B8, &qword_1B4D1F320);
      v78 = v132;
      v79 = v133;
      v80 = v134;
      v74 = v128;
      v75 = v129;
      v76 = v130;
      v77 = v131;
      v72 = v126;
      v73 = v127;
      sub_1B4975024(&v72, &qword_1EB8A79B8, &qword_1B4D1F320);
      v87 = v141;
      v88 = v142;
      v89 = v143;
      v83 = v137;
      v84 = v138;
      v85 = v139;
      v86 = v140;
      v81 = v135;
      v82 = v136;
      if (sub_1B496F52C(&v81) == 1)
      {
        v51 = v141;
        v52 = v142;
        v53 = v143;
        v47 = v137;
        v48 = v138;
        v49 = v139;
        v50 = v140;
        v45 = v135;
        v46 = v136;
        sub_1B4975024(&v45, &qword_1EB8A79B8, &qword_1B4D1F320);
        v60 = v173;
        v61 = v174;
        v62 = v175;
        v56 = v169;
        v57 = v170;
        v58 = v171;
        v59 = v172;
        v10 = v167;
        v9 = v168;
      }

      else
      {
        v51 = v141;
        v52 = v142;
        v53 = v143;
        v47 = v137;
        v48 = v138;
        v49 = v139;
        v50 = v140;
        v45 = v135;
        v46 = v136;
        nullsub_1();
        v60 = v51;
        v61 = v52;
        v62 = v53;
        v56 = v47;
        v57 = v48;
        v58 = v49;
        v59 = v50;
        v10 = v45;
        v9 = v46;
      }

      v54 = v10;
      v55 = v9;
      ++v7;
      sub_1B4975024(v125, &qword_1EB8AB2A0, &unk_1B4D360A0);
      sub_1B4975024(&v144, &qword_1EB8AB2A0, &unk_1B4D360A0);
      v164 = v60;
      v165 = v61;
      v166 = v62;
      v160 = v56;
      v161 = v57;
      v163 = v59;
      v162 = v58;
      v8 += 136;
      v159 = v55;
      v158 = v54;
      if (v44 == v7)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4CEE3C8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v176 = a1;

  sub_1B4CAFC90(&v176, v4);
  if (!v2)
  {
    v43 = a2;
    v5 = v176;
    sub_1B496F544(&v167);
    v6 = *(v5 + 2);
    v164 = v173;
    v165 = v174;
    v166 = v175;
    v160 = v169;
    v161 = v170;
    v163 = v172;
    v162 = v171;
    v159 = v168;
    v158 = v167;
    v44 = v6;
    if (!v6)
    {
LABEL_23:

      v39 = v165;
      *(v43 + 96) = v164;
      *(v43 + 112) = v39;
      *(v43 + 128) = v166;
      v40 = v161;
      *(v43 + 32) = v160;
      *(v43 + 48) = v40;
      v41 = v163;
      *(v43 + 64) = v162;
      *(v43 + 80) = v41;
      v42 = v159;
      *v43 = v158;
      *(v43 + 16) = v42;
      return result;
    }

    v7 = 0;
    v8 = 32;
    while (v7 < *(v5 + 2))
    {
      v147 = *&v5[v8];
      v11 = *&v5[v8 + 16];
      v12 = *&v5[v8 + 32];
      v13 = *&v5[v8 + 48];
      v151 = *&v5[v8 + 64];
      v150 = v13;
      v149 = v12;
      v148 = v11;
      v14 = *&v5[v8 + 80];
      v15 = *&v5[v8 + 96];
      v16 = *&v5[v8 + 128];
      v154 = *&v5[v8 + 112];
      v153 = v15;
      v152 = v14;
      v96 = v164;
      v97 = v165;
      v92 = v160;
      v93 = v161;
      v95 = v163;
      v94 = v162;
      v91 = v159;
      v90 = v158;
      v156[6] = v164;
      v156[7] = v165;
      v156[2] = v160;
      v156[3] = v161;
      v155 = v16;
      v98 = v166;
      v157 = v166;
      v156[5] = v163;
      v156[4] = v162;
      v156[1] = v159;
      v156[0] = v158;
      if (sub_1B496F52C(v156) == 1)
      {
        v141 = v96;
        v142 = v97;
        v143 = v98;
        v137 = v92;
        v138 = v93;
        v140 = v95;
        v139 = v94;
        v136 = v91;
        v135 = v90;
        sub_1B4BA6D90(&v147, &v126);
        sub_1B4974FBC(&v158, &v126, &qword_1EB8AC4E0, &qword_1B4D3C6B0);
        sub_1B4975024(&v135, &qword_1EB8AC4E0, &qword_1B4D3C6B0);
        v144 = 0u;
        v145 = 0u;
        v146 = 0;
      }

      else
      {
        *(&v145 + 1) = &type metadata for StreakPropertyValue;
        v146 = sub_1B4C43918();
        v17 = swift_allocObject();
        v18 = v96;
        v132 = v96;
        v133 = v97;
        v19 = v92;
        v20 = v92;
        v128 = v92;
        v129 = v93;
        v21 = v94;
        v22 = v94;
        v131 = v95;
        v130 = v94;
        v23 = v90;
        v24 = v90;
        v127 = v91;
        v126 = v90;
        v25 = v97;
        v26 = v97;
        *(v17 + 112) = v96;
        *(v17 + 128) = v25;
        v27 = v93;
        v28 = v93;
        *(v17 + 48) = v19;
        *(v17 + 64) = v27;
        v29 = v95;
        v30 = v95;
        *(v17 + 80) = v21;
        *(v17 + 96) = v29;
        v31 = v91;
        v32 = v91;
        *(v17 + 16) = v23;
        *(v17 + 32) = v31;
        v141 = v18;
        v142 = v26;
        v137 = v20;
        v138 = v28;
        v140 = v30;
        v139 = v22;
        v134 = v98;
        *&v144 = v17;
        *(v17 + 144) = v98;
        v143 = v98;
        v136 = v32;
        v135 = v24;
        sub_1B4BA6D90(&v147, &v114);
        sub_1B4974FBC(&v158, &v114, &qword_1EB8AC4E0, &qword_1B4D3C6B0);
        sub_1B4BA6D90(&v126, &v114);
        sub_1B4C05280(&v135);
      }

      v125[3] = &type metadata for StreakPropertyValue;
      v125[4] = sub_1B4C43918();
      v33 = swift_allocObject();
      v125[0] = v33;
      v34 = v154;
      *(v33 + 112) = v153;
      *(v33 + 128) = v34;
      *(v33 + 144) = v155;
      v35 = v150;
      *(v33 + 48) = v149;
      *(v33 + 64) = v35;
      v36 = v152;
      *(v33 + 80) = v151;
      *(v33 + 96) = v36;
      v37 = v148;
      *(v33 + 16) = v147;
      *(v33 + 32) = v37;
      sub_1B4974FBC(&v144, v124, &qword_1EB8AB2A0, &unk_1B4D360A0);
      sub_1B4BA6D90(&v147, &v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A0, &unk_1B4D360A0);
      if (swift_dynamicCast())
      {
        nullsub_1();
      }

      else
      {
        sub_1B496F544(&v90);
        v132 = v96;
        v133 = v97;
        v134 = v98;
        v128 = v92;
        v129 = v93;
        v131 = v95;
        v130 = v94;
        v127 = v91;
        v126 = v90;
      }

      sub_1B4974FBC(v125, v123, &qword_1EB8AB2A0, &unk_1B4D360A0);
      if (swift_dynamicCast())
      {
        nullsub_1();
      }

      else
      {
        sub_1B496F544(&v90);
        v120 = v96;
        v121 = v97;
        v122 = v98;
        v116 = v92;
        v117 = v93;
        v119 = v95;
        v118 = v94;
        v115 = v91;
        v114 = v90;
      }

      v108[6] = v132;
      v108[7] = v133;
      v108[2] = v128;
      v108[3] = v129;
      v108[5] = v131;
      v108[4] = v130;
      v108[1] = v127;
      v108[0] = v126;
      v110[6] = v120;
      v110[7] = v121;
      v110[2] = v116;
      v110[3] = v117;
      v110[5] = v119;
      v110[4] = v118;
      v110[1] = v115;
      v110[0] = v114;
      v96 = v132;
      v97 = v133;
      v92 = v128;
      v93 = v129;
      v95 = v131;
      v94 = v130;
      v91 = v127;
      v90 = v126;
      v104 = v119;
      v105 = v120;
      v106 = v121;
      v100 = v115;
      v101 = v116;
      v102 = v117;
      v103 = v118;
      v99 = v114;
      v112[6] = v132;
      v112[7] = v133;
      v112[2] = v128;
      v112[3] = v129;
      v112[5] = v131;
      v112[4] = v130;
      v109 = v134;
      v111 = v122;
      v98 = v134;
      v107 = v122;
      v113 = v134;
      v112[1] = v127;
      v112[0] = v126;
      if (sub_1B496F52C(v112) == 1)
      {
        sub_1B4974FBC(v108, &v81, &qword_1EB8A79B8, &qword_1B4D1F320);
        sub_1B4974FBC(v110, &v81, &qword_1EB8A79B8, &qword_1B4D1F320);
        sub_1B4BA87C4(&v147);
        sub_1B4975024(&v158, &qword_1EB8AC4E0, &qword_1B4D3C6B0);
        v87 = v105;
        v88 = v106;
        v89 = v107;
        v83 = v101;
        v84 = v102;
        v85 = v103;
        v86 = v104;
        v81 = v99;
        v82 = v100;
        sub_1B496F52C(&v81);
        v141 = v105;
        v142 = v106;
        v143 = v107;
        v137 = v101;
        v138 = v102;
        v140 = v104;
        v139 = v103;
        v136 = v100;
        v135 = v99;
      }

      else
      {
        v87 = v105;
        v88 = v106;
        v89 = v107;
        v83 = v101;
        v84 = v102;
        v85 = v103;
        v86 = v104;
        v81 = v99;
        v82 = v100;
        if (sub_1B496F52C(&v81) == 1)
        {
          sub_1B4974FBC(v108, &v72, &qword_1EB8A79B8, &qword_1B4D1F320);
          sub_1B4974FBC(v110, &v72, &qword_1EB8A79B8, &qword_1B4D1F320);
          sub_1B4BA87C4(&v147);
          sub_1B4975024(&v158, &qword_1EB8AC4E0, &qword_1B4D3C6B0);
          v141 = v96;
          v142 = v97;
          v143 = v98;
          v137 = v92;
          v138 = v93;
          v140 = v95;
          v139 = v94;
          v136 = v91;
          v135 = v90;
        }

        else
        {
          v78 = v96;
          v79 = v97;
          v80 = v98;
          v74 = v92;
          v75 = v93;
          v76 = v94;
          v77 = v95;
          v72 = v90;
          v73 = v91;
          v69 = v105;
          v70 = v106;
          v71 = v107;
          v65 = v101;
          v66 = v102;
          v67 = v103;
          v68 = v104;
          v63 = v99;
          v64 = v100;
          sub_1B4974FBC(v108, &v54, &qword_1EB8A79B8, &qword_1B4D1F320);
          sub_1B4974FBC(v110, &v54, &qword_1EB8A79B8, &qword_1B4D1F320);
          v2 = 0;
          static StreakPropertyValue.add(_:_:)(&v72, &v63, &v135);
          sub_1B4BA87C4(&v147);
          sub_1B4975024(&v158, &qword_1EB8AC4E0, &qword_1B4D3C6B0);
          v51 = v69;
          v52 = v70;
          v53 = v71;
          v47 = v65;
          v48 = v66;
          v49 = v67;
          v50 = v68;
          v45 = v63;
          v46 = v64;
          sub_1B4BA87C4(&v45);
          v60 = v78;
          v61 = v79;
          v62 = v80;
          v56 = v74;
          v57 = v75;
          v58 = v76;
          v59 = v77;
          v54 = v72;
          v55 = v73;
          sub_1B4BA87C4(&v54);
          nullsub_1();
        }
      }

      v69 = v120;
      v70 = v121;
      v71 = v122;
      v65 = v116;
      v66 = v117;
      v67 = v118;
      v68 = v119;
      v63 = v114;
      v64 = v115;
      sub_1B4975024(&v63, &qword_1EB8A79B8, &qword_1B4D1F320);
      v78 = v132;
      v79 = v133;
      v80 = v134;
      v74 = v128;
      v75 = v129;
      v76 = v130;
      v77 = v131;
      v72 = v126;
      v73 = v127;
      sub_1B4975024(&v72, &qword_1EB8A79B8, &qword_1B4D1F320);
      v87 = v141;
      v88 = v142;
      v89 = v143;
      v83 = v137;
      v84 = v138;
      v85 = v139;
      v86 = v140;
      v81 = v135;
      v82 = v136;
      if (sub_1B496F52C(&v81) == 1)
      {
        v51 = v141;
        v52 = v142;
        v53 = v143;
        v47 = v137;
        v48 = v138;
        v49 = v139;
        v50 = v140;
        v45 = v135;
        v46 = v136;
        sub_1B4975024(&v45, &qword_1EB8A79B8, &qword_1B4D1F320);
        v60 = v173;
        v61 = v174;
        v62 = v175;
        v56 = v169;
        v57 = v170;
        v58 = v171;
        v59 = v172;
        v10 = v167;
        v9 = v168;
      }

      else
      {
        v51 = v141;
        v52 = v142;
        v53 = v143;
        v47 = v137;
        v48 = v138;
        v49 = v139;
        v50 = v140;
        v45 = v135;
        v46 = v136;
        nullsub_1();
        v60 = v51;
        v61 = v52;
        v62 = v53;
        v56 = v47;
        v57 = v48;
        v58 = v49;
        v59 = v50;
        v10 = v45;
        v9 = v46;
      }

      v54 = v10;
      v55 = v9;
      ++v7;
      sub_1B4975024(v125, &qword_1EB8AB2A0, &unk_1B4D360A0);
      sub_1B4975024(&v144, &qword_1EB8AB2A0, &unk_1B4D360A0);
      v164 = v60;
      v165 = v61;
      v166 = v62;
      v160 = v56;
      v161 = v57;
      v163 = v59;
      v162 = v58;
      v8 += 136;
      v159 = v55;
      v158 = v54;
      if (v44 == v7)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4CEF13C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v176 = a1;

  sub_1B4CAFC90(&v176, v4);
  if (!v2)
  {
    v43 = a2;
    v5 = v176;
    sub_1B496F544(&v167);
    v6 = *(v5 + 2);
    v164 = v173;
    v165 = v174;
    v166 = v175;
    v160 = v169;
    v161 = v170;
    v163 = v172;
    v162 = v171;
    v159 = v168;
    v158 = v167;
    v44 = v6;
    if (!v6)
    {
LABEL_23:

      v39 = v165;
      *(v43 + 96) = v164;
      *(v43 + 112) = v39;
      *(v43 + 128) = v166;
      v40 = v161;
      *(v43 + 32) = v160;
      *(v43 + 48) = v40;
      v41 = v163;
      *(v43 + 64) = v162;
      *(v43 + 80) = v41;
      v42 = v159;
      *v43 = v158;
      *(v43 + 16) = v42;
      return result;
    }

    v7 = 0;
    v8 = 32;
    while (v7 < *(v5 + 2))
    {
      v147 = *&v5[v8];
      v11 = *&v5[v8 + 16];
      v12 = *&v5[v8 + 32];
      v13 = *&v5[v8 + 48];
      v151 = *&v5[v8 + 64];
      v150 = v13;
      v149 = v12;
      v148 = v11;
      v14 = *&v5[v8 + 80];
      v15 = *&v5[v8 + 96];
      v16 = *&v5[v8 + 128];
      v154 = *&v5[v8 + 112];
      v153 = v15;
      v152 = v14;
      v96 = v164;
      v97 = v165;
      v92 = v160;
      v93 = v161;
      v95 = v163;
      v94 = v162;
      v91 = v159;
      v90 = v158;
      v156[6] = v164;
      v156[7] = v165;
      v156[2] = v160;
      v156[3] = v161;
      v155 = v16;
      v98 = v166;
      v157 = v166;
      v156[5] = v163;
      v156[4] = v162;
      v156[1] = v159;
      v156[0] = v158;
      if (sub_1B496F52C(v156) == 1)
      {
        v141 = v96;
        v142 = v97;
        v143 = v98;
        v137 = v92;
        v138 = v93;
        v140 = v95;
        v139 = v94;
        v136 = v91;
        v135 = v90;
        sub_1B4BA6D90(&v147, &v126);
        sub_1B4974FBC(&v158, &v126, &qword_1EB8AC4F8, &qword_1B4D3C6C8);
        sub_1B4975024(&v135, &qword_1EB8AC4F8, &qword_1B4D3C6C8);
        v144 = 0u;
        v145 = 0u;
        v146 = 0;
      }

      else
      {
        *(&v145 + 1) = &type metadata for StreakPropertyValue;
        v146 = sub_1B4C43918();
        v17 = swift_allocObject();
        v18 = v96;
        v132 = v96;
        v133 = v97;
        v19 = v92;
        v20 = v92;
        v128 = v92;
        v129 = v93;
        v21 = v94;
        v22 = v94;
        v131 = v95;
        v130 = v94;
        v23 = v90;
        v24 = v90;
        v127 = v91;
        v126 = v90;
        v25 = v97;
        v26 = v97;
        *(v17 + 112) = v96;
        *(v17 + 128) = v25;
        v27 = v93;
        v28 = v93;
        *(v17 + 48) = v19;
        *(v17 + 64) = v27;
        v29 = v95;
        v30 = v95;
        *(v17 + 80) = v21;
        *(v17 + 96) = v29;
        v31 = v91;
        v32 = v91;
        *(v17 + 16) = v23;
        *(v17 + 32) = v31;
        v141 = v18;
        v142 = v26;
        v137 = v20;
        v138 = v28;
        v140 = v30;
        v139 = v22;
        v134 = v98;
        *&v144 = v17;
        *(v17 + 144) = v98;
        v143 = v98;
        v136 = v32;
        v135 = v24;
        sub_1B4BA6D90(&v147, &v114);
        sub_1B4974FBC(&v158, &v114, &qword_1EB8AC4F8, &qword_1B4D3C6C8);
        sub_1B4BA6D90(&v126, &v114);
        sub_1B4C056C4(&v135);
      }

      v125[3] = &type metadata for StreakPropertyValue;
      v125[4] = sub_1B4C43918();
      v33 = swift_allocObject();
      v125[0] = v33;
      v34 = v154;
      *(v33 + 112) = v153;
      *(v33 + 128) = v34;
      *(v33 + 144) = v155;
      v35 = v150;
      *(v33 + 48) = v149;
      *(v33 + 64) = v35;
      v36 = v152;
      *(v33 + 80) = v151;
      *(v33 + 96) = v36;
      v37 = v148;
      *(v33 + 16) = v147;
      *(v33 + 32) = v37;
      sub_1B4974FBC(&v144, v124, &qword_1EB8AB2A0, &unk_1B4D360A0);
      sub_1B4BA6D90(&v147, &v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A0, &unk_1B4D360A0);
      if (swift_dynamicCast())
      {
        nullsub_1();
      }

      else
      {
        sub_1B496F544(&v90);
        v132 = v96;
        v133 = v97;
        v134 = v98;
        v128 = v92;
        v129 = v93;
        v131 = v95;
        v130 = v94;
        v127 = v91;
        v126 = v90;
      }

      sub_1B4974FBC(v125, v123, &qword_1EB8AB2A0, &unk_1B4D360A0);
      if (swift_dynamicCast())
      {
        nullsub_1();
      }

      else
      {
        sub_1B496F544(&v90);
        v120 = v96;
        v121 = v97;
        v122 = v98;
        v116 = v92;
        v117 = v93;
        v119 = v95;
        v118 = v94;
        v115 = v91;
        v114 = v90;
      }

      v108[6] = v132;
      v108[7] = v133;
      v108[2] = v128;
      v108[3] = v129;
      v108[5] = v131;
      v108[4] = v130;
      v108[1] = v127;
      v108[0] = v126;
      v110[6] = v120;
      v110[7] = v121;
      v110[2] = v116;
      v110[3] = v117;
      v110[5] = v119;
      v110[4] = v118;
      v110[1] = v115;
      v110[0] = v114;
      v96 = v132;
      v97 = v133;
      v92 = v128;
      v93 = v129;
      v95 = v131;
      v94 = v130;
      v91 = v127;
      v90 = v126;
      v104 = v119;
      v105 = v120;
      v106 = v121;
      v100 = v115;
      v101 = v116;
      v102 = v117;
      v103 = v118;
      v99 = v114;
      v112[6] = v132;
      v112[7] = v133;
      v112[2] = v128;
      v112[3] = v129;
      v112[5] = v131;
      v112[4] = v130;
      v109 = v134;
      v111 = v122;
      v98 = v134;
      v107 = v122;
      v113 = v134;
      v112[1] = v127;
      v112[0] = v126;
      if (sub_1B496F52C(v112) == 1)
      {
        sub_1B4974FBC(v108, &v81, &qword_1EB8A79B8, &qword_1B4D1F320);
        sub_1B4974FBC(v110, &v81, &qword_1EB8A79B8, &qword_1B4D1F320);
        sub_1B4BA87C4(&v147);
        sub_1B4975024(&v158, &qword_1EB8AC4F8, &qword_1B4D3C6C8);
        v87 = v105;
        v88 = v106;
        v89 = v107;
        v83 = v101;
        v84 = v102;
        v85 = v103;
        v86 = v104;
        v81 = v99;
        v82 = v100;
        sub_1B496F52C(&v81);
        v141 = v105;
        v142 = v106;
        v143 = v107;
        v137 = v101;
        v138 = v102;
        v140 = v104;
        v139 = v103;
        v136 = v100;
        v135 = v99;
      }

      else
      {
        v87 = v105;
        v88 = v106;
        v89 = v107;
        v83 = v101;
        v84 = v102;
        v85 = v103;
        v86 = v104;
        v81 = v99;
        v82 = v100;
        if (sub_1B496F52C(&v81) == 1)
        {
          sub_1B4974FBC(v108, &v72, &qword_1EB8A79B8, &qword_1B4D1F320);
          sub_1B4974FBC(v110, &v72, &qword_1EB8A79B8, &qword_1B4D1F320);
          sub_1B4BA87C4(&v147);
          sub_1B4975024(&v158, &qword_1EB8AC4F8, &qword_1B4D3C6C8);
          v141 = v96;
          v142 = v97;
          v143 = v98;
          v137 = v92;
          v138 = v93;
          v140 = v95;
          v139 = v94;
          v136 = v91;
          v135 = v90;
        }

        else
        {
          v78 = v96;
          v79 = v97;
          v80 = v98;
          v74 = v92;
          v75 = v93;
          v76 = v94;
          v77 = v95;
          v72 = v90;
          v73 = v91;
          v69 = v105;
          v70 = v106;
          v71 = v107;
          v65 = v101;
          v66 = v102;
          v67 = v103;
          v68 = v104;
          v63 = v99;
          v64 = v100;
          sub_1B4974FBC(v108, &v54, &qword_1EB8A79B8, &qword_1B4D1F320);
          sub_1B4974FBC(v110, &v54, &qword_1EB8A79B8, &qword_1B4D1F320);
          v2 = 0;
          static StreakPropertyValue.add(_:_:)(&v72, &v63, &v135);
          sub_1B4BA87C4(&v147);
          sub_1B4975024(&v158, &qword_1EB8AC4F8, &qword_1B4D3C6C8);
          v51 = v69;
          v52 = v70;
          v53 = v71;
          v47 = v65;
          v48 = v66;
          v49 = v67;
          v50 = v68;
          v45 = v63;
          v46 = v64;
          sub_1B4BA87C4(&v45);
          v60 = v78;
          v61 = v79;
          v62 = v80;
          v56 = v74;
          v57 = v75;
          v58 = v76;
          v59 = v77;
          v54 = v72;
          v55 = v73;
          sub_1B4BA87C4(&v54);
          nullsub_1();
        }
      }

      v69 = v120;
      v70 = v121;
      v71 = v122;
      v65 = v116;
      v66 = v117;
      v67 = v118;
      v68 = v119;
      v63 = v114;
      v64 = v115;
      sub_1B4975024(&v63, &qword_1EB8A79B8, &qword_1B4D1F320);
      v78 = v132;
      v79 = v133;
      v80 = v134;
      v74 = v128;
      v75 = v129;
      v76 = v130;
      v77 = v131;
      v72 = v126;
      v73 = v127;
      sub_1B4975024(&v72, &qword_1EB8A79B8, &qword_1B4D1F320);
      v87 = v141;
      v88 = v142;
      v89 = v143;
      v83 = v137;
      v84 = v138;
      v85 = v139;
      v86 = v140;
      v81 = v135;
      v82 = v136;
      if (sub_1B496F52C(&v81) == 1)
      {
        v51 = v141;
        v52 = v142;
        v53 = v143;
        v47 = v137;
        v48 = v138;
        v49 = v139;
        v50 = v140;
        v45 = v135;
        v46 = v136;
        sub_1B4975024(&v45, &qword_1EB8A79B8, &qword_1B4D1F320);
        v60 = v173;
        v61 = v174;
        v62 = v175;
        v56 = v169;
        v57 = v170;
        v58 = v171;
        v59 = v172;
        v10 = v167;
        v9 = v168;
      }

      else
      {
        v51 = v141;
        v52 = v142;
        v53 = v143;
        v47 = v137;
        v48 = v138;
        v49 = v139;
        v50 = v140;
        v45 = v135;
        v46 = v136;
        nullsub_1();
        v60 = v51;
        v61 = v52;
        v62 = v53;
        v56 = v47;
        v57 = v48;
        v58 = v49;
        v59 = v50;
        v10 = v45;
        v9 = v46;
      }

      v54 = v10;
      v55 = v9;
      ++v7;
      sub_1B4975024(v125, &qword_1EB8AB2A0, &unk_1B4D360A0);
      sub_1B4975024(&v144, &qword_1EB8AB2A0, &unk_1B4D360A0);
      v164 = v60;
      v165 = v61;
      v166 = v62;
      v160 = v56;
      v161 = v57;
      v163 = v59;
      v162 = v58;
      v8 += 136;
      v159 = v55;
      v158 = v54;
      if (v44 == v7)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4CEFEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE528, &qword_1B4D47788);
  MEMORY[0x1EEE9AC00](v85);
  v6 = &v69 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79A8, &unk_1B4D1F310);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v95 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v69 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v69 - v12);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
  v86 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v72 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v71 = (&v69 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v73 = &v69 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v69 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE520, &qword_1B4D47780);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v84 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v83 = &v69 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v69 - v27;
  *&v99 = a1;

  sub_1B4CF1B74(&v99);
  if (v2)
  {
LABEL_25:

    __break(1u);
  }

  else
  {
    v74 = 0;
    v29 = v99;
    v30 = type metadata accessor for WorkoutWeeklyCountStatisticsProperty(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 56);
    v93 = v30;
    v82 = v32;
    v81 = v31 + 56;
    (v32)(v28, 1, 1);
    v70 = v28;
    v87 = a2;
    sub_1B4974FBC(v28, a2, &qword_1EB8AE520, &qword_1B4D47780);
    v80 = *(v29 + 16);
    if (v80)
    {
      v33 = 0;
      v76 = v29 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
      v75 = (v31 + 48);
      v91 = (v86 + 56);
      v90 = (v86 + 48);
      v34 = v87;
      v79 = v6;
      v78 = v13;
      v92 = v21;
      v77 = v29;
      while (1)
      {
        if (v33 >= *(v29 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        sub_1B4974FBC(v76 + *(v86 + 72) * v33, v21, &qword_1EB8A79B0, &qword_1B4D20FC0);
        v38 = v34;
        v39 = v84;
        sub_1B4974FBC(v38, v84, &qword_1EB8AE520, &qword_1B4D47780);
        v40 = (*v75)(v39, 1, v93);
        v89 = v33;
        if (v40 == 1)
        {
          sub_1B4975024(v39, &qword_1EB8AE520, &qword_1B4D47780);
          v99 = 0u;
          v100 = 0u;
          v101 = 0;
        }

        else
        {
          *(&v100 + 1) = v102;
          v101 = sub_1B49B0578(&qword_1EB8AE530, &qword_1EB8A79B0, &qword_1B4D20FC0, &protocol conformance descriptor for WeeklyStatisticsPropertyValue<A>);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
          sub_1B4974FBC(v39, boxed_opaque_existential_1, &qword_1EB8A79B0, &qword_1B4D20FC0);
          sub_1B4CFA938(v39, type metadata accessor for WorkoutWeeklyCountStatisticsProperty);
        }

        v42 = v102;
        v98[3] = v102;
        v98[4] = sub_1B49B0578(&qword_1EB8AE530, &qword_1EB8A79B0, &qword_1B4D20FC0, &protocol conformance descriptor for WeeklyStatisticsPropertyValue<A>);
        v43 = __swift_allocate_boxed_opaque_existential_1(v98);
        sub_1B4974FBC(v21, v43, &qword_1EB8A79B0, &qword_1B4D20FC0);
        sub_1B4974FBC(&v99, v97, &qword_1EB8AB2A0, &unk_1B4D360A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A0, &unk_1B4D360A0);
        v44 = v94;
        v45 = swift_dynamicCast();
        v46 = *v91;
        (*v91)(v44, v45 ^ 1u, 1, v42);
        sub_1B4974FBC(v98, v96, &qword_1EB8AB2A0, &unk_1B4D360A0);
        v47 = v95;
        v48 = swift_dynamicCast();
        v88 = v46;
        v46(v47, v48 ^ 1u, 1, v42);
        v49 = *(v85 + 48);
        v50 = v44;
        v51 = v79;
        sub_1B4974FBC(v50, v79, &qword_1EB8A79A8, &unk_1B4D1F310);
        sub_1B4974FBC(v47, v51 + v49, &qword_1EB8A79A8, &unk_1B4D1F310);
        v52 = *v90;
        if ((*v90)(v51, 1, v42) == 1)
        {
          break;
        }

        if (v52(v51 + v49, 1, v42) == 1)
        {
          sub_1B4975024(v92, &qword_1EB8A79B0, &qword_1B4D20FC0);
          v34 = v87;
          sub_1B4975024(v87, &qword_1EB8AE520, &qword_1B4D47780);
          v55 = v51;
          v54 = v78;
          sub_1B498B270(v55, v78, &qword_1EB8A79B0, &qword_1B4D20FC0);
          v53 = 0;
LABEL_16:
          v57 = v89;
          goto LABEL_19;
        }

        v58 = v71;
        sub_1B498B270(v51, v71, &qword_1EB8A79B0, &qword_1B4D20FC0);
        v59 = v51 + v49;
        v60 = v72;
        sub_1B498B270(v59, v72, &qword_1EB8A79B0, &qword_1B4D20FC0);
        v54 = v78;
        v2 = v74;
        sub_1B4CE2628(v58, v60, v78);
        v74 = v2;
        v57 = v89;
        if (v2)
        {

          sub_1B4975024(v60, &qword_1EB8A79B0, &qword_1B4D20FC0);
          sub_1B4975024(v58, &qword_1EB8A79B0, &qword_1B4D20FC0);
          sub_1B4975024(v92, &qword_1EB8A79B0, &qword_1B4D20FC0);
          sub_1B4975024(v87, &qword_1EB8AE520, &qword_1B4D47780);
          sub_1B4975024(v70, &qword_1EB8AE520, &qword_1B4D47780);
          sub_1B4975024(v95, &qword_1EB8A79A8, &unk_1B4D1F310);
          sub_1B4975024(v94, &qword_1EB8A79A8, &unk_1B4D1F310);
          sub_1B4975024(v98, &qword_1EB8AB2A0, &unk_1B4D360A0);
          v67 = &v99;
          v65 = &qword_1EB8AB2A0;
          v66 = &unk_1B4D360A0;
          return sub_1B4975024(v67, v65, v66);
        }

        sub_1B4975024(v60, &qword_1EB8A79B0, &qword_1B4D20FC0);
        sub_1B4975024(v58, &qword_1EB8A79B0, &qword_1B4D20FC0);
        sub_1B4975024(v92, &qword_1EB8A79B0, &qword_1B4D20FC0);
        v34 = v87;
        sub_1B4975024(v87, &qword_1EB8AE520, &qword_1B4D47780);
        v53 = 0;
LABEL_19:
        v61 = v53;
        v62 = v102;
        v88(v54, v61, 1, v102);
        sub_1B4975024(v95, &qword_1EB8A79A8, &unk_1B4D1F310);
        sub_1B4975024(v94, &qword_1EB8A79A8, &unk_1B4D1F310);
        if (v52(v54, 1, v62) == 1)
        {
          sub_1B4975024(v54, &qword_1EB8A79A8, &unk_1B4D1F310);
          v35 = 1;
          v36 = v92;
          v37 = v83;
        }

        else
        {
          v63 = v73;
          sub_1B498B270(v54, v73, &qword_1EB8A79B0, &qword_1B4D20FC0);
          v64 = v63;
          v37 = v83;
          sub_1B498B270(v64, v83, &qword_1EB8A79B0, &qword_1B4D20FC0);
          v35 = 0;
          v36 = v92;
        }

        v29 = v77;
        v33 = v57 + 1;
        v82(v37, v35, 1, v93);
        sub_1B4975024(v98, &qword_1EB8AB2A0, &unk_1B4D360A0);
        sub_1B4975024(&v99, &qword_1EB8AB2A0, &unk_1B4D360A0);
        sub_1B498B270(v37, v34, &qword_1EB8AE520, &qword_1B4D47780);
        v21 = v36;
        if (v80 == v33)
        {
          goto LABEL_21;
        }
      }

      sub_1B4975024(v92, &qword_1EB8A79B0, &qword_1B4D20FC0);
      sub_1B4975024(v87, &qword_1EB8AE520, &qword_1B4D47780);
      v53 = 1;
      if (v52(v51 + v49, 1, v42) == 1)
      {
        v34 = v87;
        v54 = v78;
      }

      else
      {
        v56 = v51 + v49;
        v54 = v78;
        sub_1B498B270(v56, v78, &qword_1EB8A79B0, &qword_1B4D20FC0);
        v53 = 0;
        v34 = v87;
      }

      goto LABEL_16;
    }

LABEL_21:

    v65 = &qword_1EB8AE520;
    v66 = &qword_1B4D47780;
    v67 = v70;
    return sub_1B4975024(v67, v65, v66);
  }

  return result;
}

uint64_t sub_1B4CF0A94@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = (result + 40);
    v6 = &qword_1B4D409B0;
    while (1)
    {
      v8 = *(v5 - 1);
      v7 = *v5;
      if (v4)
      {
        *(&v24 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7960, v6);
        v25 = sub_1B49B0578(&qword_1EDC38290, &qword_1EB8A7960, v6, &protocol conformance descriptor for WorkoutDictionaryPropertyValue<A, B>);
        *&v23 = v4;
        *(&v23 + 1) = v3;
      }

      else
      {

        v25 = 0;
        v23 = 0u;
        v24 = 0u;
      }

      v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7960, v6);
      v9 = v6;
      v22[4] = sub_1B49B0578(&qword_1EDC38290, &qword_1EB8A7960, v6, &protocol conformance descriptor for WorkoutDictionaryPropertyValue<A, B>);
      v22[0] = v8;
      v22[1] = v7;
      sub_1B4974FBC(&v23, v21, &qword_1EB8AB2A0, &unk_1B4D360A0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A0, &unk_1B4D360A0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v19 = 0;
        v20 = 0;
      }

      sub_1B4974FBC(v22, v18, &qword_1EB8AB2A0, &unk_1B4D360A0);
      if (!swift_dynamicCast())
      {
        break;
      }

      v10 = v19;
      v11 = v16;
      v3 = v17;
      if (!v19)
      {
        goto LABEL_18;
      }

      v12 = v20;
      if (!v16)
      {
        v3 = v20;
        goto LABEL_20;
      }

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v10;
      sub_1B4CF9E44(v16, sub_1B4CF8874, 0, isUniquelyReferenced_nonNull_native, &v26);
      if (v15)
      {

        swift_bridgeObjectRelease_n();

        sub_1B4975024(v22, &qword_1EB8AB2A0, &unk_1B4D360A0);
        return sub_1B4975024(&v23, &qword_1EB8AB2A0, &unk_1B4D360A0);
      }

      swift_bridgeObjectRelease_n();

      v3 = v12 + v17;
      if (__OFADD__(v12, v17))
      {
        __break(1u);
        return result;
      }

      v4 = v26;
LABEL_21:
      v6 = v9;

      if (!v4)
      {

        v3 = 0;
      }

      v5 += 2;
      sub_1B4975024(v22, &qword_1EB8AB2A0, &unk_1B4D360A0);
      result = sub_1B4975024(&v23, &qword_1EB8AB2A0, &unk_1B4D360A0);
      if (!--v2)
      {
        goto LABEL_24;
      }
    }

    v16 = 0;
    v17 = 0;
    v10 = v19;
    if (v19)
    {
      v3 = v20;
LABEL_20:

      v4 = v10;
      goto LABEL_21;
    }

    v3 = 0;
    v11 = 0;
LABEL_18:

    v4 = v11;
    goto LABEL_21;
  }

  v4 = 0;
  v3 = 0;
LABEL_24:
  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B4CF0E58@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  if (!v2)
  {
    v3 = 0;
LABEL_26:
    *a2 = v3;
    return result;
  }

  v3 = 0;
  v4 = (result + 32);
  while (1)
  {
    v6 = *v4;
    if (v3)
    {
      *(&v26 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7958, &unk_1B4D1F2D0);
      v27 = sub_1B49B0578(&qword_1EB8AE4D8, &qword_1EB8A7958, &unk_1B4D1F2D0, &protocol conformance descriptor for WorkoutBestMetricPropertyValue<A, B>);
      *&v25 = v3;
    }

    else
    {

      v27 = 0;
      v25 = 0u;
      v26 = 0u;
    }

    v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7958, &unk_1B4D1F2D0);
    v24[4] = sub_1B49B0578(&qword_1EB8AE4D8, &qword_1EB8A7958, &unk_1B4D1F2D0, &protocol conformance descriptor for WorkoutBestMetricPropertyValue<A, B>);
    v24[0] = v6;
    sub_1B4974FBC(&v25, v23, &qword_1EB8AB2A0, &unk_1B4D360A0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A0, &unk_1B4D360A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v28 = 0;
    }

    sub_1B4974FBC(v24, v22, &qword_1EB8AB2A0, &unk_1B4D360A0);
    if (!swift_dynamicCast())
    {
      v21 = 0;
      v5 = v28;
      if (!v28)
      {
        v7 = 0;
LABEL_24:

        v3 = v7;
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v7 = v21;
    v5 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }

    if (v21)
    {
      break;
    }

LABEL_4:

    v3 = v5;
LABEL_5:

    sub_1B4975024(v24, &qword_1EB8AB2A0, &unk_1B4D360A0);
    result = sub_1B4975024(&v25, &qword_1EB8AB2A0, &unk_1B4D360A0);
    ++v4;
    if (!--v2)
    {
      goto LABEL_26;
    }
  }

  v20 = v28;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1B4997880(v7);

  v8 = v19;
  sub_1B4CF1D4C(&v20, &qword_1EB8A6CF8, &unk_1B4D1BC80, sub_1B4CDE41C, sub_1B4CF1F64);
  if (v19)
  {
    goto LABEL_29;
  }

  v9 = v20;
  v10 = v20[2];
  v11 = 5;
  if (v10 < 5)
  {
    v11 = v20[2];
  }

  v19 = 0;
  if (v10 < 6)
  {
LABEL_22:

    v3 = v9;
    goto LABEL_5;
  }

  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D38, &unk_1B4D20200);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF8, &unk_1B4D1BC80) - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = v12;
  v9 = swift_allocObject();
  v16 = _swift_stdlib_malloc_size(v9);
  if (v14)
  {
    if (v16 - v15 == 0x8000000000000000 && v14 == -1)
    {
      goto LABEL_28;
    }

    v9[2] = v18;
    v9[3] = 2 * ((v16 - v15) / v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF8, &unk_1B4D1BC80);
    swift_arrayInitWithCopy();

    goto LABEL_22;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_1B4CF1304@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  if (!v2)
  {
    v3 = 0;
LABEL_26:
    *a2 = v3;
    return result;
  }

  v3 = 0;
  v4 = (result + 32);
  while (1)
  {
    v6 = *v4;
    if (v3)
    {
      *(&v26 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7948, &qword_1B4D1F2C0);
      v27 = sub_1B49B0578(&qword_1EB8AE4C0, &qword_1EB8A7948, &qword_1B4D1F2C0, &protocol conformance descriptor for WorkoutBestMetricPropertyValue<A, B>);
      *&v25 = v3;
    }

    else
    {

      v27 = 0;
      v25 = 0u;
      v26 = 0u;
    }

    v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7948, &qword_1B4D1F2C0);
    v24[4] = sub_1B49B0578(&qword_1EB8AE4C0, &qword_1EB8A7948, &qword_1B4D1F2C0, &protocol conformance descriptor for WorkoutBestMetricPropertyValue<A, B>);
    v24[0] = v6;
    sub_1B4974FBC(&v25, v23, &qword_1EB8AB2A0, &unk_1B4D360A0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A0, &unk_1B4D360A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v28 = 0;
    }

    sub_1B4974FBC(v24, v22, &qword_1EB8AB2A0, &unk_1B4D360A0);
    if (!swift_dynamicCast())
    {
      v21 = 0;
      v5 = v28;
      if (!v28)
      {
        v7 = 0;
LABEL_24:

        v3 = v7;
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v7 = v21;
    v5 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }

    if (v21)
    {
      break;
    }

LABEL_4:

    v3 = v5;
LABEL_5:

    sub_1B4975024(v24, &qword_1EB8AB2A0, &unk_1B4D360A0);
    result = sub_1B4975024(&v25, &qword_1EB8AB2A0, &unk_1B4D360A0);
    ++v4;
    if (!--v2)
    {
      goto LABEL_26;
    }
  }

  v20 = v28;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1B49978D0(v7);

  v8 = v19;
  sub_1B4CF1D4C(&v20, &qword_1EB8A6CF0, &unk_1B4D1BC70, sub_1B4CDE4AC, sub_1B4CF2274);
  if (v19)
  {
    goto LABEL_29;
  }

  v9 = v20;
  v10 = v20[2];
  v11 = 5;
  if (v10 < 5)
  {
    v11 = v20[2];
  }

  v19 = 0;
  if (v10 < 6)
  {
LABEL_22:

    v3 = v9;
    goto LABEL_5;
  }

  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D28, &unk_1B4D201E0);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF0, &unk_1B4D1BC70) - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = v12;
  v9 = swift_allocObject();
  v16 = _swift_stdlib_malloc_size(v9);
  if (v14)
  {
    if (v16 - v15 == 0x8000000000000000 && v14 == -1)
    {
      goto LABEL_28;
    }

    v9[2] = v18;
    v9[3] = 2 * ((v16 - v15) / v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF0, &unk_1B4D1BC70);
    swift_arrayInitWithCopy();

    goto LABEL_22;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

unint64_t static AverageWorkoutDurationFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4CF8888(v3, v1, v2);
}

uint64_t static AverageWorkoutDurationFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49AA274;

  return sub_1B4CF944C(a1, a3);
}

uint64_t AverageWorkoutDurationFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4CF1930()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4CF19A4(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4CF19F8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1B4CF1A70(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4CF8888(v3, v1, v2);
}

uint64_t sub_1B4CF1AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49DD034;

  return sub_1B4CF944C(a1, a3);
}

uint64_t sub_1B4CF1B74(void *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B4CDE38C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1B4CF1E10(v6, &qword_1EB8A79B0, &qword_1B4D20FC0, sub_1B4CF363C, sub_1B4CF23FC);
  *a1 = v3;
  return result;
}

uint64_t sub_1B4CF1C60(void *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B4CDE3D4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1B4CF1E10(v6, &qword_1EB8A6CE8, &qword_1B4D44B80, sub_1B4CF3F9C, sub_1B4CF2650);
  *a1 = v3;
  return result;
}

uint64_t sub_1B4CF1D4C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void *))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = a4(v9);
  }

  v10 = *(v9 + 16);
  v12[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v12[1] = v10;
  result = a5(v12);
  *a1 = v9;
  return result;
}

uint64_t sub_1B4CF1E10(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_1B4D18D4C();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = sub_1B4D1844C();
        *(v14 + 16) = v13;
      }

      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
      v16[0] = v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v16[1] = v13;
      a4(v16, v17, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

void sub_1B4CF1F64(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF8, &unk_1B4D1BC80);
        v6 = sub_1B4D1844C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF8, &unk_1B4D1BC80) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B4CF5420(v8, v9, a1, v4, &qword_1EB8A6CF8, &unk_1B4D1BC80, &qword_1EB8A6CD8, &unk_1B4D1D2C0, &qword_1EB8AB848, sub_1B4CF7194);
      *(v6 + 16) = 0;

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
    sub_1B4CF2E20(0, v2, 1, a1);
  }
}

void sub_1B4CF20EC(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30);
        v6 = sub_1B4D1844C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B4CF5420(v8, v9, a1, v4, &qword_1EB8A6818, &unk_1B4D1AB30, &qword_1EB8A6830, &unk_1B4D1AB40, &qword_1EDC37878, sub_1B4CF77A0);
      *(v6 + 16) = 0;

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
    sub_1B4CF30D4(0, v2, 1, a1);
  }
}

void sub_1B4CF2274(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF0, &unk_1B4D1BC70);
        v6 = sub_1B4D1844C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF0, &unk_1B4D1BC70) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B4CF5420(v8, v9, a1, v4, &qword_1EB8A6CF0, &unk_1B4D1BC70, &qword_1EB8A6868, &unk_1B4D1AB80, &qword_1EB8AE4C8, sub_1B4CF7DAC);
      *(v6 + 16) = 0;

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
    sub_1B4CF3388(0, v2, 1, a1);
  }
}

void sub_1B4CF23FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v26 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v26 - v14);
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v33 = -v17;
    v34 = v16;
    v19 = a1 - a3;
    v27 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v31 = v18;
    v32 = a3;
    v29 = v20;
    v30 = v19;
    v21 = v19;
    while (1)
    {
      sub_1B4974FBC(v20, v15, &qword_1EB8A79B0, &qword_1B4D20FC0);
      sub_1B4974FBC(v18, v11, &qword_1EB8A79B0, &qword_1B4D20FC0);
      v22 = *v15;
      v23 = *v11;
      sub_1B4975024(v11, &qword_1EB8A79B0, &qword_1B4D20FC0);
      sub_1B4975024(v15, &qword_1EB8A79B0, &qword_1B4D20FC0);
      if (v22 >= v23)
      {
LABEL_4:
        a3 = v32 + 1;
        v18 = v31 + v27;
        v19 = v30 - 1;
        v20 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v24 = v35;
      sub_1B498B270(v20, v35, &qword_1EB8A79B0, &qword_1B4D20FC0);
      swift_arrayInitWithTakeFrontToBack();
      sub_1B498B270(v24, v18, &qword_1EB8A79B0, &qword_1B4D20FC0);
      v18 += v33;
      v20 += v33;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B4CF2650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v8 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v58[-v9];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v10 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v58[-v11];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v12 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v58[-v15];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
  v16 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v67 = &v58[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v58[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58[-v21];
  v64 = a3;
  v60 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = objc_opt_self();
    v79 = (v10 + 8);
    v80 = v24;
    v25 = *(v16 + 72);
    v68 = (v12 + 8);
    v69 = (v8 + 8);
    v26 = v23 + v25 * (v64 - 1);
    v65 = -v25;
    v66 = v23;
    v27 = a1 - v64;
    v59 = v25;
    v28 = v23 + v25 * v64;
    v70 = v22;
LABEL_5:
    v61 = v28;
    v62 = v27;
    v29 = v27;
    v63 = v26;
    while (1)
    {
      v78 = v29;
      sub_1B4974FBC(v28, v22, &qword_1EB8A6CE8, &qword_1B4D44B80);
      sub_1B4974FBC(v26, v84, &qword_1EB8A6CE8, &qword_1B4D44B80);
      type metadata accessor for DistanceSampleIntervalRecord(0);
      v30 = [v80 meters];
      v31 = v82;
      v32 = v83;
      sub_1B4D1745C();

      sub_1B4D1742C();
      v34 = v33;
      v77 = *v79;
      v77(v31, v32);
      if (v34 > 0.0)
      {
        break;
      }

      if (qword_1EDC36E80 != -1)
      {
        goto LABEL_8;
      }

LABEL_10:
      v38 = qword_1EDC36E88;
      v39 = type metadata accessor for UnitPace();
      v40 = v38;
      v76 = v39;
      sub_1B4D1741C();
      v41 = [v80 meters];
      v42 = v82;
      v43 = v83;
      sub_1B4D1745C();

      sub_1B4D1742C();
      v45 = v44;
      v77(v42, v43);
      if (v45 > 0.0)
      {
        v46 = [objc_opt_self() seconds];
        v48 = v73;
        v47 = v74;
        sub_1B4D1745C();

        sub_1B4D1742C();
        (*v69)(v48, v47);
      }

      v22 = v70;
      if (qword_1EDC36E80 != -1)
      {
        swift_once();
      }

      v49 = v40;
      v50 = v71;
      sub_1B4D1741C();
      sub_1B49B0578(&qword_1EB8AB848, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968088]);
      v51 = v81;
      v52 = v72;
      v53 = sub_1B4D180FC();
      v54 = *v68;
      (*v68)(v50, v52);
      v54(v51, v52);
      sub_1B4975024(v84, &qword_1EB8A6CE8, &qword_1B4D44B80);
      sub_1B4975024(v22, &qword_1EB8A6CE8, &qword_1B4D44B80);
      v55 = v78;
      if ((v53 & 1) == 0)
      {
LABEL_4:
        v26 = v63 + v59;
        v27 = v62 - 1;
        v28 = v61 + v59;
        if (++v64 == v60)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v66)
      {
        __break(1u);
        return;
      }

      v56 = v67;
      sub_1B498B270(v28, v67, &qword_1EB8A6CE8, &qword_1B4D44B80);
      swift_arrayInitWithTakeFrontToBack();
      sub_1B498B270(v56, v26, &qword_1EB8A6CE8, &qword_1B4D44B80);
      v26 += v65;
      v28 += v65;
      v57 = __CFADD__(v55, 1);
      v29 = v55 + 1;
      if (v57)
      {
        goto LABEL_4;
      }
    }

    v35 = [objc_opt_self() seconds];
    v37 = v73;
    v36 = v74;
    sub_1B4D1745C();

    sub_1B4D1742C();
    (*v69)(v37, v36);
    if (qword_1EDC36E80 == -1)
    {
      goto LABEL_10;
    }

LABEL_8:
    swift_once();
    goto LABEL_10;
  }
}

void sub_1B4CF2E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF8, &unk_1B4D1BC80);
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v26 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    v17 = *(v8 + 72);
    v18 = v16 + v17 * (a3 - 1);
    v31 = -v17;
    v32 = v16;
    v19 = a1 - a3;
    v25 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v29 = v18;
    v30 = a3;
    v27 = v20;
    v28 = v19;
    while (1)
    {
      sub_1B4974FBC(v20, v15, &qword_1EB8A6CF8, &unk_1B4D1BC80);
      sub_1B4974FBC(v18, v12, &qword_1EB8A6CF8, &unk_1B4D1BC80);
      sub_1B49B0578(&qword_1EB8AB848, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968088]);
      v21 = sub_1B4D180FC();
      sub_1B4975024(v12, &qword_1EB8A6CF8, &unk_1B4D1BC80);
      sub_1B4975024(v15, &qword_1EB8A6CF8, &unk_1B4D1BC80);
      if ((v21 & 1) == 0)
      {
LABEL_4:
        a3 = v30 + 1;
        v18 = v29 + v25;
        v19 = v28 - 1;
        v20 = v27 + v25;
        if (v30 + 1 == v26)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v22 = v33;
      sub_1B498B270(v20, v33, &qword_1EB8A6CF8, &unk_1B4D1BC80);
      swift_arrayInitWithTakeFrontToBack();
      sub_1B498B270(v22, v18, &qword_1EB8A6CF8, &unk_1B4D1BC80);
      v18 += v31;
      v20 += v31;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B4CF30D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30);
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v26 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    v17 = *(v8 + 72);
    v18 = v16 + v17 * (a3 - 1);
    v31 = -v17;
    v32 = v16;
    v19 = a1 - a3;
    v25 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v29 = v18;
    v30 = a3;
    v27 = v20;
    v28 = v19;
    while (1)
    {
      sub_1B4974FBC(v20, v15, &qword_1EB8A6818, &unk_1B4D1AB30);
      sub_1B4974FBC(v18, v12, &qword_1EB8A6818, &unk_1B4D1AB30);
      sub_1B49B0578(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968088]);
      v21 = sub_1B4D180FC();
      sub_1B4975024(v12, &qword_1EB8A6818, &unk_1B4D1AB30);
      sub_1B4975024(v15, &qword_1EB8A6818, &unk_1B4D1AB30);
      if ((v21 & 1) == 0)
      {
LABEL_4:
        a3 = v30 + 1;
        v18 = v29 + v25;
        v19 = v28 - 1;
        v20 = v27 + v25;
        if (v30 + 1 == v26)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v22 = v33;
      sub_1B498B270(v20, v33, &qword_1EB8A6818, &unk_1B4D1AB30);
      swift_arrayInitWithTakeFrontToBack();
      sub_1B498B270(v22, v18, &qword_1EB8A6818, &unk_1B4D1AB30);
      v18 += v31;
      v20 += v31;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B4CF3388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF0, &unk_1B4D1BC70);
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v26 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    v17 = *(v8 + 72);
    v18 = v16 + v17 * (a3 - 1);
    v31 = -v17;
    v32 = v16;
    v19 = a1 - a3;
    v25 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v29 = v18;
    v30 = a3;
    v27 = v20;
    v28 = v19;
    while (1)
    {
      sub_1B4974FBC(v20, v15, &qword_1EB8A6CF0, &unk_1B4D1BC70);
      sub_1B4974FBC(v18, v12, &qword_1EB8A6CF0, &unk_1B4D1BC70);
      sub_1B49B0578(&qword_1EB8AE4C8, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968088]);
      v21 = sub_1B4D180FC();
      sub_1B4975024(v12, &qword_1EB8A6CF0, &unk_1B4D1BC70);
      sub_1B4975024(v15, &qword_1EB8A6CF0, &unk_1B4D1BC70);
      if ((v21 & 1) == 0)
      {
LABEL_4:
        a3 = v30 + 1;
        v18 = v29 + v25;
        v19 = v28 - 1;
        v20 = v27 + v25;
        if (v30 + 1 == v26)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v22 = v33;
      sub_1B498B270(v20, v33, &qword_1EB8A6CF0, &unk_1B4D1BC70);
      swift_arrayInitWithTakeFrontToBack();
      sub_1B498B270(v22, v18, &qword_1EB8A6CF0, &unk_1B4D1BC70);
      v18 += v31;
      v20 += v31;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B4CF363C(unint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v105 = a1;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
  v8 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v109 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v119 = &v103 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v122 = (&v103 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v121 = (&v103 - v15);
  v16 = *(a3 + 8);
  if (v16 < 1)
  {
    v19 = a3;
    v18 = MEMORY[0x1E69E7CC0];
LABEL_99:
    a4 = *v105;
    if (!*v105)
    {
      goto LABEL_139;
    }

    a3 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v98 = a3;
    }

    else
    {
LABEL_133:
      v98 = sub_1B4CDDE84(a3);
    }

    v123 = v98;
    a3 = *(v98 + 2);
    if (a3 >= 2)
    {
      v99 = v8;
      while (*v19)
      {
        v8 = *&v98[16 * a3];
        v100 = v98;
        v101 = *&v98[16 * a3 + 24];
        sub_1B4CF5E30(*v19 + *(v99 + 72) * v8, *v19 + *(v99 + 72) * *&v98[16 * a3 + 16], *v19 + *(v99 + 72) * v101, a4);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v101 < v8)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_1B4CDDE84(v100);
        }

        if (a3 - 2 >= *(v100 + 2))
        {
          goto LABEL_127;
        }

        v102 = &v100[16 * a3];
        *v102 = v8;
        v102[1] = v101;
        v123 = v100;
        sub_1B4CDDDF8(a3 - 1);
        v98 = v123;
        a3 = *(v123 + 2);
        if (a3 <= 1)
        {
          goto LABEL_111;
        }
      }

      goto LABEL_137;
    }

LABEL_111:

    return;
  }

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v19 = a3;
  v106 = a3;
  v116 = v8;
  v104 = a4;
  while (1)
  {
    v20 = v17;
    v21 = v17 + 1;
    v110 = v18;
    v107 = v20;
    if (v21 >= v16)
    {
      v16 = v21;
    }

    else
    {
      v111 = v5;
      v22 = *v19;
      v23 = *(v8 + 72);
      v24 = *v19 + v23 * v21;
      v25 = v121;
      a3 = &qword_1EB8A79B0;
      sub_1B4974FBC(v24, v121, &qword_1EB8A79B0, &qword_1B4D20FC0);
      v26 = v122;
      sub_1B4974FBC(v22 + v23 * v20, v122, &qword_1EB8A79B0, &qword_1B4D20FC0);
      v27 = *v25;
      v114 = *v26;
      v115 = v27;
      sub_1B4975024(v26, &qword_1EB8A79B0, &qword_1B4D20FC0);
      sub_1B4975024(v25, &qword_1EB8A79B0, &qword_1B4D20FC0);
      v28 = v20 + 2;
      v117 = v23;
      v29 = v22 + v23 * v28;
      while (v16 != v28)
      {
        LODWORD(v118) = v115 < v114;
        v30 = v121;
        sub_1B4974FBC(v29, v121, &qword_1EB8A79B0, &qword_1B4D20FC0);
        v31 = v122;
        sub_1B4974FBC(v24, v122, &qword_1EB8A79B0, &qword_1B4D20FC0);
        a3 = v16;
        v32 = *v30;
        v33 = *v31;
        sub_1B4975024(v31, &qword_1EB8A79B0, &qword_1B4D20FC0);
        sub_1B4975024(v30, &qword_1EB8A79B0, &qword_1B4D20FC0);
        v34 = v32 < v33;
        v16 = a3;
        v35 = !v34;
        ++v28;
        v29 += v117;
        v24 += v117;
        if (((v118 ^ v35) & 1) == 0)
        {
          v16 = v28 - 1;
          break;
        }
      }

      v19 = v106;
      v20 = v107;
      v8 = v116;
      v5 = v111;
      a4 = v104;
      if (v115 < v114)
      {
        if (v16 < v107)
        {
          goto LABEL_130;
        }

        if (v107 < v16)
        {
          v36 = v116;
          a3 = v117 * (v16 - 1);
          v37 = v16 * v117;
          v115 = v16;
          v38 = v16;
          v39 = v107;
          v40 = v107 * v117;
          do
          {
            if (v39 != --v38)
            {
              v111 = v5;
              v41 = *v19;
              if (!*v19)
              {
                goto LABEL_136;
              }

              sub_1B498B270(v41 + v40, v109, &qword_1EB8A79B0, &qword_1B4D20FC0);
              if (v40 < a3 || v41 + v40 >= (v41 + v37))
              {
                swift_arrayInitWithTakeFrontToBack();
                v5 = v111;
              }

              else
              {
                v5 = v111;
                if (v40 != a3)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              sub_1B498B270(v109, v41 + a3, &qword_1EB8A79B0, &qword_1B4D20FC0);
              v19 = v106;
              v20 = v107;
              v36 = v116;
            }

            ++v39;
            a3 -= v117;
            v37 -= v117;
            v40 += v117;
          }

          while (v39 < v38);
          a4 = v104;
          v16 = v115;
          v8 = v36;
        }
      }
    }

    v42 = v19[1];
    if (v16 < v42)
    {
      if (__OFSUB__(v16, v20))
      {
        goto LABEL_129;
      }

      if (v16 - v20 < a4)
      {
        if (__OFADD__(v20, a4))
        {
          goto LABEL_131;
        }

        if (v20 + a4 >= v42)
        {
          v43 = v19[1];
        }

        else
        {
          v43 = v20 + a4;
        }

        if (v43 < v20)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (v16 != v43)
        {
          break;
        }
      }
    }

    v44 = v16;
    if (v16 < v20)
    {
      goto LABEL_128;
    }

LABEL_36:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = v110;
    }

    else
    {
      v18 = sub_1B4A1D58C(0, *(v110 + 2) + 1, 1, v110);
    }

    a3 = *(v18 + 2);
    v45 = *(v18 + 3);
    a4 = a3 + 1;
    if (a3 >= v45 >> 1)
    {
      v18 = sub_1B4A1D58C((v45 > 1), a3 + 1, 1, v18);
    }

    *(v18 + 2) = a4;
    v46 = &v18[16 * a3];
    *(v46 + 4) = v20;
    *(v46 + 5) = v44;
    v47 = *v105;
    if (!*v105)
    {
      goto LABEL_138;
    }

    v112 = v44;
    if (a3)
    {
      v8 = v47;
      while (1)
      {
        v48 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v49 = *(v18 + 4);
          v50 = *(v18 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_56:
          if (v52)
          {
            goto LABEL_117;
          }

          v65 = &v18[16 * a4];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_120;
          }

          v71 = &v18[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_124;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v75 = &v18[16 * a4];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_70:
        if (v70)
        {
          goto LABEL_119;
        }

        v78 = &v18[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_122;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_77:
        a3 = v48 - 1;
        if (v48 - 1 >= a4)
        {
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
LABEL_126:
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
          goto LABEL_132;
        }

        if (!*v19)
        {
          goto LABEL_135;
        }

        v86 = v18;
        a4 = *&v18[16 * a3 + 32];
        v87 = *&v18[16 * v48 + 40];
        sub_1B4CF5E30(*v19 + *(v116 + 72) * a4, *v19 + *(v116 + 72) * *&v18[16 * v48 + 32], *v19 + *(v116 + 72) * v87, v8);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v87 < a4)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_1B4CDDE84(v86);
        }

        if (a3 >= *(v86 + 2))
        {
          goto LABEL_114;
        }

        v88 = &v86[16 * a3];
        *(v88 + 4) = a4;
        *(v88 + 5) = v87;
        v123 = v86;
        a3 = &v123;
        sub_1B4CDDDF8(v48);
        v18 = v123;
        a4 = *(v123 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v18[16 * a4 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_115;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_116;
      }

      v60 = &v18[16 * a4];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_118;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_121;
      }

      if (v64 >= v56)
      {
        v82 = &v18[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_125;
        }

        if (v51 < v85)
        {
          v48 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v16 = v19[1];
    v17 = v112;
    a4 = v104;
    v8 = v116;
    if (v112 >= v16)
    {
      goto LABEL_99;
    }
  }

  v111 = v5;
  v112 = v43;
  v89 = *(v8 + 72);
  v90 = *v19 + v89 * (v16 - 1);
  v91 = v20;
  v92 = -v89;
  a3 = v91 - v16;
  v118 = *v19;
  v108 = v89;
  a4 = v118 + v16 * v89;
LABEL_89:
  v114 = a3;
  v115 = v16;
  v113 = a4;
  v117 = v90;
  v93 = v90;
  while (1)
  {
    v94 = v121;
    sub_1B4974FBC(a4, v121, &qword_1EB8A79B0, &qword_1B4D20FC0);
    v95 = v122;
    sub_1B4974FBC(v93, v122, &qword_1EB8A79B0, &qword_1B4D20FC0);
    v96 = *v94;
    v8 = *v95;
    sub_1B4975024(v95, &qword_1EB8A79B0, &qword_1B4D20FC0);
    sub_1B4975024(v94, &qword_1EB8A79B0, &qword_1B4D20FC0);
    if (v96 >= v8)
    {
LABEL_88:
      v16 = v115 + 1;
      v90 = v117 + v108;
      a3 = v114 - 1;
      v44 = v112;
      a4 = v113 + v108;
      if (v115 + 1 != v112)
      {
        goto LABEL_89;
      }

      v5 = v111;
      v19 = v106;
      v20 = v107;
      if (v112 < v107)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (!v118)
    {
      break;
    }

    v8 = v119;
    sub_1B498B270(a4, v119, &qword_1EB8A79B0, &qword_1B4D20FC0);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B498B270(v8, v93, &qword_1EB8A79B0, &qword_1B4D20FC0);
    v93 += v92;
    a4 += v92;
    if (__CFADD__(a3++, 1))
    {
      goto LABEL_88;
    }
  }

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
}

void sub_1B4CF3F9C(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v178 = a4;
  v179 = a1;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v7 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v200 = &v172 - v8;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v9 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v212 = &v172 - v10;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v11 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v198 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v210 = &v172 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v185 = &v172 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v191 = &v172 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v175 = &v172 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v174 = &v172 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
  v188 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v182 = &v172 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v197 = &v172 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v214 = &v172 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v209 = &v172 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v194 = &v172 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v190 = &v172 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v173 = &v172 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v177 = &v172 - v38;
  v189 = a3;
  v39 = a3[1];
  if (v39 < 1)
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_108:
    v7 = *v179;
    if (!*v179)
    {
      goto LABEL_146;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_110:
      v215 = v41;
      v168 = *(v41 + 2);
      if (v168 >= 2)
      {
        while (*v189)
        {
          v169 = *&v41[16 * v168];
          v170 = *&v41[16 * v168 + 24];
          sub_1B4CF6330(&(*v189)[*(v188 + 72) * v169], &(*v189)[*(v188 + 72) * *&v41[16 * v168 + 16]], &(*v189)[*(v188 + 72) * v170], v7);
          if (v5)
          {
            goto LABEL_118;
          }

          if (v170 < v169)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_1B4CDDE84(v41);
          }

          if (v168 - 2 >= *(v41 + 2))
          {
            goto LABEL_134;
          }

          v171 = &v41[16 * v168];
          *v171 = v169;
          *(v171 + 1) = v170;
          v215 = v41;
          sub_1B4CDDDF8(v168 - 1);
          v41 = v215;
          v168 = *(v215 + 2);
          if (v168 <= 1)
          {
            goto LABEL_118;
          }
        }

        goto LABEL_144;
      }

LABEL_118:

      return;
    }

LABEL_140:
    v41 = sub_1B4CDDE84(v41);
    goto LABEL_110;
  }

  v40 = 0;
  v202 = (v11 + 8);
  v211 = (v9 + 8);
  v199 = (v7 + 8);
  v41 = MEMORY[0x1E69E7CC0];
  v204 = v23;
  while (1)
  {
    v181 = v40;
    if (v40 + 1 >= v39)
    {
      v53 = v40 + 1;
      v78 = v178;
    }

    else
    {
      v192 = v39;
      v176 = v41;
      v42 = *v189;
      v207 = v42;
      v7 = *(v188 + 72);
      v208 = &v42[v7 * (v40 + 1)];
      sub_1B4974FBC(v208, v177, &qword_1EB8A6CE8, &qword_1B4D44B80);
      v43 = v173;
      sub_1B4974FBC(&v42[v7 * v40], v173, &qword_1EB8A6CE8, &qword_1B4D44B80);
      v44 = v174;
      DistanceSampleIntervalRecord.pace.getter(v174);
      v45 = v175;
      DistanceSampleIntervalRecord.pace.getter(v175);
      v46 = sub_1B49B0578(&qword_1EB8AB848, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968088]);
      v47 = v203;
      v187 = v46;
      LODWORD(v195) = sub_1B4D180FC();
      v48 = *v202;
      v49 = v45;
      v50 = v208;
      (*v202)(v49, v47);
      v186 = v48;
      (v48)(v44, v47);
      sub_1B4975024(v43, &qword_1EB8A6CE8, &qword_1B4D44B80);
      sub_1B4975024(v177, &qword_1EB8A6CE8, &qword_1B4D44B80);
      v51 = v181 + 2;
      v196 = v7;
      v52 = &v207[v7 * (v181 + 2)];
      while (1)
      {
        v53 = v192;
        if (v192 == v51)
        {
          break;
        }

        v193 = v5;
        sub_1B4974FBC(v52, v190, &qword_1EB8A6CE8, &qword_1B4D44B80);
        v208 = v50;
        sub_1B4974FBC(v50, v194, &qword_1EB8A6CE8, &qword_1B4D44B80);
        type metadata accessor for DistanceSampleIntervalRecord(0);
        v207 = objc_opt_self();
        v54 = [v207 meters];
        v55 = v212;
        v56 = v213;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v58 = v57;
        v206 = *v211;
        (v206)(v55, v56);
        if (v58 > 0.0)
        {
          v59 = [objc_opt_self() seconds];
          v61 = v200;
          v60 = v201;
          sub_1B4D1745C();

          sub_1B4D1742C();
          (*v199)(v61, v60);
        }

        if (qword_1EDC36E80 != -1)
        {
          swift_once();
        }

        v62 = qword_1EDC36E88;
        v63 = type metadata accessor for UnitPace();
        v64 = v62;
        v205 = v63;
        sub_1B4D1741C();
        v65 = [v207 meters];
        v67 = v212;
        v66 = v213;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v69 = v68;
        (v206)(v67, v66);
        if (v69 > 0.0)
        {
          v70 = [objc_opt_self() seconds];
          v72 = v200;
          v71 = v201;
          sub_1B4D1745C();

          sub_1B4D1742C();
          (*v199)(v72, v71);
        }

        v5 = v193;
        if (qword_1EDC36E80 != -1)
        {
          swift_once();
        }

        v73 = v64;
        v74 = v185;
        sub_1B4D1741C();
        v75 = v191;
        v76 = v203;
        v7 = sub_1B4D180FC() & 1;
        v77 = v186;
        (v186)(v74, v76);
        v77(v75, v76);
        sub_1B4975024(v194, &qword_1EB8A6CE8, &qword_1B4D44B80);
        sub_1B4975024(v190, &qword_1EB8A6CE8, &qword_1B4D44B80);
        ++v51;
        v52 += v196;
        v50 = &v208[v196];
        if ((v195 & 1) != v7)
        {
          v53 = v51 - 1;
          break;
        }
      }

      v78 = v178;
      v41 = v176;
      v40 = v181;
      if (v195)
      {
        if (v53 < v181)
        {
          goto LABEL_137;
        }

        if (v181 < v53)
        {
          v79 = v196 * (v53 - 1);
          v80 = v53 * v196;
          v81 = v53;
          v82 = v181;
          v83 = v181 * v196;
          do
          {
            if (v82 != --v81)
            {
              v193 = v5;
              v84 = *v189;
              if (!*v189)
              {
                goto LABEL_143;
              }

              v85 = v53;
              v7 = &v84[v83];
              sub_1B498B270(&v84[v83], v182, &qword_1EB8A6CE8, &qword_1B4D44B80);
              if (v83 < v79 || v7 >= &v84[v80])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v83 != v79)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1B498B270(v182, &v84[v79], &qword_1EB8A6CE8, &qword_1B4D44B80);
              v40 = v181;
              v53 = v85;
              v5 = v193;
            }

            ++v82;
            v79 -= v196;
            v80 -= v196;
            v83 += v196;
          }

          while (v82 < v81);
          v78 = v178;
        }
      }
    }

    v86 = v189[1];
    if (v53 < v86)
    {
      if (__OFSUB__(v53, v40))
      {
        goto LABEL_136;
      }

      if (v53 - v40 < v78)
      {
        break;
      }
    }

LABEL_57:
    if (v53 < v40)
    {
      goto LABEL_135;
    }

    v183 = v53;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1B4A1D58C(0, *(v41 + 2) + 1, 1, v41);
    }

    v7 = *(v41 + 2);
    v122 = *(v41 + 3);
    v123 = v7 + 1;
    if (v7 >= v122 >> 1)
    {
      v41 = sub_1B4A1D58C((v122 > 1), v7 + 1, 1, v41);
    }

    *(v41 + 2) = v123;
    v124 = &v41[16 * v7];
    v125 = v183;
    *(v124 + 4) = v40;
    *(v124 + 5) = v125;
    v126 = *v179;
    if (!*v179)
    {
      goto LABEL_145;
    }

    if (v7)
    {
      while (1)
      {
        v127 = v123 - 1;
        if (v123 >= 4)
        {
          break;
        }

        if (v123 == 3)
        {
          v128 = *(v41 + 4);
          v129 = *(v41 + 5);
          v138 = __OFSUB__(v129, v128);
          v130 = v129 - v128;
          v131 = v138;
LABEL_77:
          if (v131)
          {
            goto LABEL_124;
          }

          v144 = &v41[16 * v123];
          v146 = *v144;
          v145 = *(v144 + 1);
          v147 = __OFSUB__(v145, v146);
          v148 = v145 - v146;
          v149 = v147;
          if (v147)
          {
            goto LABEL_127;
          }

          v150 = &v41[16 * v127 + 32];
          v152 = *v150;
          v151 = *(v150 + 1);
          v138 = __OFSUB__(v151, v152);
          v153 = v151 - v152;
          if (v138)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v148, v153))
          {
            goto LABEL_131;
          }

          if (v148 + v153 >= v130)
          {
            if (v130 < v153)
            {
              v127 = v123 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v154 = &v41[16 * v123];
        v156 = *v154;
        v155 = *(v154 + 1);
        v138 = __OFSUB__(v155, v156);
        v148 = v155 - v156;
        v149 = v138;
LABEL_91:
        if (v149)
        {
          goto LABEL_126;
        }

        v157 = &v41[16 * v127];
        v159 = *(v157 + 4);
        v158 = *(v157 + 5);
        v138 = __OFSUB__(v158, v159);
        v160 = v158 - v159;
        if (v138)
        {
          goto LABEL_129;
        }

        if (v160 < v148)
        {
          goto LABEL_3;
        }

LABEL_98:
        v7 = v127 - 1;
        if (v127 - 1 >= v123)
        {
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
LABEL_126:
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v189)
        {
          goto LABEL_142;
        }

        v165 = *&v41[16 * v7 + 32];
        v166 = *&v41[16 * v127 + 40];
        sub_1B4CF6330(&(*v189)[*(v188 + 72) * v165], &(*v189)[*(v188 + 72) * *&v41[16 * v127 + 32]], &(*v189)[*(v188 + 72) * v166], v126);
        if (v5)
        {
          goto LABEL_118;
        }

        if (v166 < v165)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1B4CDDE84(v41);
        }

        if (v7 >= *(v41 + 2))
        {
          goto LABEL_121;
        }

        v167 = &v41[16 * v7];
        *(v167 + 4) = v165;
        *(v167 + 5) = v166;
        v215 = v41;
        sub_1B4CDDDF8(v127);
        v41 = v215;
        v123 = *(v215 + 2);
        if (v123 <= 1)
        {
          goto LABEL_3;
        }
      }

      v132 = &v41[16 * v123 + 32];
      v133 = *(v132 - 64);
      v134 = *(v132 - 56);
      v138 = __OFSUB__(v134, v133);
      v135 = v134 - v133;
      if (v138)
      {
        goto LABEL_122;
      }

      v137 = *(v132 - 48);
      v136 = *(v132 - 40);
      v138 = __OFSUB__(v136, v137);
      v130 = v136 - v137;
      v131 = v138;
      if (v138)
      {
        goto LABEL_123;
      }

      v139 = &v41[16 * v123];
      v141 = *v139;
      v140 = *(v139 + 1);
      v138 = __OFSUB__(v140, v141);
      v142 = v140 - v141;
      if (v138)
      {
        goto LABEL_125;
      }

      v138 = __OFADD__(v130, v142);
      v143 = v130 + v142;
      if (v138)
      {
        goto LABEL_128;
      }

      if (v143 >= v135)
      {
        v161 = &v41[16 * v127 + 32];
        v163 = *v161;
        v162 = *(v161 + 1);
        v138 = __OFSUB__(v162, v163);
        v164 = v162 - v163;
        if (v138)
        {
          goto LABEL_132;
        }

        if (v130 < v164)
        {
          v127 = v123 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_77;
    }

LABEL_3:
    v39 = v189[1];
    v40 = v183;
    if (v183 >= v39)
    {
      goto LABEL_108;
    }
  }

  if (__OFADD__(v40, v78))
  {
    goto LABEL_138;
  }

  if (v40 + v78 < v86)
  {
    v86 = (v40 + v78);
  }

  if (v86 < v40)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v53 == v86)
  {
    goto LABEL_57;
  }

  v183 = v86;
  v176 = v41;
  v193 = v5;
  v87 = *v189;
  v88 = v53;
  v89 = objc_opt_self();
  v90 = v88;
  v208 = v89;
  v91 = *(v188 + 72);
  v92 = &v87[v91 * (v88 - 1)];
  v195 = -v91;
  v93 = (v40 - v88);
  v196 = v87;
  v180 = v91;
  v94 = &v87[v88 * v91];
LABEL_42:
  v192 = v90;
  v184 = v94;
  v186 = v93;
  v95 = v93;
  v187 = v92;
  while (1)
  {
    v205 = v95;
    sub_1B4974FBC(v94, v209, &qword_1EB8A6CE8, &qword_1B4D44B80);
    sub_1B4974FBC(v92, v214, &qword_1EB8A6CE8, &qword_1B4D44B80);
    type metadata accessor for DistanceSampleIntervalRecord(0);
    v96 = [v208 meters];
    v97 = v212;
    v98 = v213;
    sub_1B4D1745C();

    sub_1B4D1742C();
    v100 = v99;
    v207 = *v211;
    (v207)(v97, v98);
    if (v100 > 0.0)
    {
      v101 = [objc_opt_self() seconds];
      v103 = v200;
      v102 = v201;
      sub_1B4D1745C();

      sub_1B4D1742C();
      (*v199)(v103, v102);
      if (qword_1EDC36E80 == -1)
      {
        goto LABEL_47;
      }

LABEL_45:
      swift_once();
      goto LABEL_47;
    }

    if (qword_1EDC36E80 != -1)
    {
      goto LABEL_45;
    }

LABEL_47:
    v104 = qword_1EDC36E88;
    v105 = type metadata accessor for UnitPace();
    v106 = v104;
    v206 = v105;
    sub_1B4D1741C();
    v107 = [v208 meters];
    v108 = v212;
    v109 = v213;
    sub_1B4D1745C();

    sub_1B4D1742C();
    v111 = v110;
    (v207)(v108, v109);
    if (v111 > 0.0)
    {
      v112 = [objc_opt_self() seconds];
      v114 = v200;
      v113 = v201;
      sub_1B4D1745C();

      sub_1B4D1742C();
      (*v199)(v114, v113);
      if (qword_1EDC36E80 == -1)
      {
        goto LABEL_51;
      }

LABEL_49:
      swift_once();
      goto LABEL_51;
    }

    if (qword_1EDC36E80 != -1)
    {
      goto LABEL_49;
    }

LABEL_51:
    v115 = v106;
    v116 = v198;
    sub_1B4D1741C();
    sub_1B49B0578(&qword_1EB8AB848, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968088]);
    v117 = v210;
    v118 = v203;
    v7 = sub_1B4D180FC();
    v119 = *v202;
    (*v202)(v116, v118);
    v119(v117, v118);
    sub_1B4975024(v214, &qword_1EB8A6CE8, &qword_1B4D44B80);
    sub_1B4975024(v209, &qword_1EB8A6CE8, &qword_1B4D44B80);
    if ((v7 & 1) == 0)
    {
      goto LABEL_41;
    }

    v120 = v205;
    if (!v196)
    {
      break;
    }

    v7 = v197;
    sub_1B498B270(v94, v197, &qword_1EB8A6CE8, &qword_1B4D44B80);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B498B270(v7, v92, &qword_1EB8A6CE8, &qword_1B4D44B80);
    v92 += v195;
    v94 += v195;
    v121 = __CFADD__(v120, 1);
    v95 = (v120 + 1);
    if (v121)
    {
LABEL_41:
      v90 = v192 + 1;
      v92 = v187 + v180;
      v93 = v186 - 1;
      v94 = v184 + v180;
      if (v192 + 1 == v183)
      {
        v5 = v193;
        v41 = v176;
        v40 = v181;
        v53 = v183;
        goto LABEL_57;
      }

      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

void sub_1B4CF5420(unint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, unint64_t *a9, void (*a10)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v133 = a7;
  v134 = a8;
  v11 = a6;
  v13 = v10;
  v117 = a1;
  v125 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v128 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v120 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v131 = &v114 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v136 = &v114 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v135 = &v114 - v23;
  v24 = a3[1];
  v122 = a3;
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_96:
    a4 = *v117;
    if (!*v117)
    {
      goto LABEL_136;
    }

    v11 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v108 = v11;
    }

    else
    {
LABEL_130:
      v108 = sub_1B4CDDE84(v11);
    }

    v139 = v108;
    v11 = *(v108 + 2);
    if (v11 >= 2)
    {
      v109 = v125;
      do
      {
        v110 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        a3 = *&v108[16 * v11];
        v111 = v108;
        v112 = *&v108[16 * v11 + 24];
        v109(v110 + *(v128 + 72) * a3, v110 + *(v128 + 72) * *&v108[16 * v11 + 16], v110 + *(v128 + 72) * v112, a4);
        if (v13)
        {
          break;
        }

        if (v112 < a3)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_1B4CDDE84(v111);
        }

        if (v11 - 2 >= *(v111 + 2))
        {
          goto LABEL_124;
        }

        v113 = &v111[16 * v11];
        *v113 = a3;
        *(v113 + 1) = v112;
        v139 = v111;
        sub_1B4CDDDF8(v11 - 1);
        v108 = v139;
        v11 = *(v139 + 2);
        a3 = v122;
      }

      while (v11 > 1);
    }

LABEL_108:

    return;
  }

  v25 = 0;
  v132 = a9;
  v26 = MEMORY[0x1E69E7CC0];
  v116 = a4;
  v137 = v16;
  v138 = v11;
  while (1)
  {
    v121 = v26;
    if (v25 + 1 >= v24)
    {
      v37 = v25 + 1;
    }

    else
    {
      v129 = v24;
      v115 = v13;
      v124 = *a3;
      v27 = v124;
      v28 = *(v128 + 72);
      v29 = v25;
      v118 = v25;
      v30 = v124 + v28 * (v25 + 1);
      v31 = v135;
      sub_1B4974FBC(v30, v135, a5, v138);
      v32 = v136;
      sub_1B4974FBC(v27 + v28 * v29, v136, a5, v138);
      v33 = v133;
      v34 = v134;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v133, v134);
      v126 = sub_1B49B0578(v132, v33, v34, MEMORY[0x1E6968088]);
      LODWORD(v127) = sub_1B4D180FC();
      sub_1B4975024(v32, a5, v138);
      sub_1B4975024(v31, a5, v138);
      v35 = v118 + 2;
      v130 = v28;
      v36 = v124 + v28 * (v118 + 2);
      v13 = v138;
      while (1)
      {
        v37 = v129;
        if (v129 == v35)
        {
          break;
        }

        v38 = v135;
        sub_1B4974FBC(v36, v135, a5, v13);
        v39 = v136;
        sub_1B4974FBC(v30, v136, a5, v13);
        v40 = sub_1B4D180FC() & 1;
        sub_1B4975024(v39, a5, v13);
        sub_1B4975024(v38, a5, v13);
        ++v35;
        v36 += v130;
        v30 += v130;
        if ((v127 & 1) != v40)
        {
          v37 = v35 - 1;
          goto LABEL_9;
        }
      }

      a3 = v122;
      a4 = v116;
      v25 = v118;
      if ((v127 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v37 < v118)
      {
        goto LABEL_127;
      }

      if (v118 < v37)
      {
        v41 = v130 * (v37 - 1);
        v42 = v37 * v130;
        v129 = v37;
        v43 = v37;
        v44 = v118;
        v45 = v118 * v130;
        do
        {
          if (v44 != --v43)
          {
            v46 = *v122;
            if (!*v122)
            {
              goto LABEL_133;
            }

            v11 = v46 + v45;
            sub_1B498B270(v46 + v45, v120, a5, v13);
            if (v45 < v41 || v11 >= v46 + v42)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v45 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1B498B270(v120, v46 + v41, a5, v13);
          }

          ++v44;
          v41 -= v130;
          v42 -= v130;
          v45 += v130;
        }

        while (v44 < v43);
        v13 = v115;
        a3 = v122;
        a4 = v116;
        v25 = v118;
        v37 = v129;
      }

      else
      {
LABEL_23:
        v13 = v115;
      }
    }

    v47 = a3[1];
    if (v37 < v47)
    {
      if (__OFSUB__(v37, v25))
      {
        goto LABEL_126;
      }

      if (v37 - v25 < a4)
      {
        if (__OFADD__(v25, a4))
        {
          goto LABEL_128;
        }

        if (v25 + a4 < v47)
        {
          v47 = v25 + a4;
        }

        if (v47 < v25)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v37 != v47)
        {
          break;
        }
      }
    }

    a4 = v37;
    if (v37 < v25)
    {
      goto LABEL_125;
    }

LABEL_34:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v123 = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
      v26 = v121;
    }

    else
    {
      v26 = sub_1B4A1D58C(0, *(v121 + 2) + 1, 1, v121);
    }

    a4 = *(v26 + 2);
    v49 = *(v26 + 3);
    v11 = a4 + 1;
    if (a4 >= v49 >> 1)
    {
      v26 = sub_1B4A1D58C((v49 > 1), a4 + 1, 1, v26);
    }

    *(v26 + 2) = v11;
    v50 = &v26[16 * a4];
    v51 = v123;
    *(v50 + 4) = v25;
    *(v50 + 5) = v51;
    if (!*v117)
    {
      goto LABEL_135;
    }

    if (a4)
    {
      v52 = *v117;
      while (1)
      {
        v53 = v11 - 1;
        if (v11 >= 4)
        {
          break;
        }

        if (v11 == 3)
        {
          v54 = *(v26 + 4);
          v55 = *(v26 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_54:
          if (v57)
          {
            goto LABEL_114;
          }

          v70 = &v26[16 * v11];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_117;
          }

          v76 = &v26[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_121;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v11 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v80 = &v26[16 * v11];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_68:
        if (v75)
        {
          goto LABEL_116;
        }

        v83 = &v26[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_119;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v53 - 1;
        if (v53 - 1 >= v11)
        {
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
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v91 = v26;
        v11 = *&v26[16 * a4 + 32];
        v92 = *&v26[16 * v53 + 40];
        v125(*a3 + *(v128 + 72) * v11, *a3 + *(v128 + 72) * *&v26[16 * v53 + 32], *a3 + *(v128 + 72) * v92, v52);
        if (v13)
        {
          goto LABEL_108;
        }

        if (v92 < v11)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_1B4CDDE84(v91);
        }

        if (a4 >= *(v91 + 2))
        {
          goto LABEL_111;
        }

        v93 = &v91[16 * a4];
        *(v93 + 4) = v11;
        *(v93 + 5) = v92;
        v139 = v91;
        sub_1B4CDDDF8(v53);
        v26 = v139;
        v11 = *(v139 + 2);
        if (v11 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v26[16 * v11 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_112;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_113;
      }

      v65 = &v26[16 * v11];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_115;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_118;
      }

      if (v69 >= v61)
      {
        v87 = &v26[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_122;
        }

        if (v56 < v90)
        {
          v53 = v11 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v24 = a3[1];
    v25 = v123;
    a4 = v116;
    if (v123 >= v24)
    {
      goto LABEL_96;
    }
  }

  v123 = v47;
  v115 = v13;
  v94 = *a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v133, v134);
  v95 = *(v128 + 72);
  v96 = v94 + v95 * (v37 - 1);
  v97 = -v95;
  v118 = v25;
  v119 = v95;
  v98 = v25 - v37;
  v130 = v94;
  v99 = v94 + v37 * v95;
LABEL_86:
  v129 = v37;
  v124 = v99;
  v126 = v98;
  v127 = v96;
  v100 = v98;
  while (1)
  {
    v101 = v135;
    sub_1B4974FBC(v99, v135, a5, v138);
    v102 = v136;
    sub_1B4974FBC(v96, v136, a5, v138);
    sub_1B49B0578(v132, v133, v134, MEMORY[0x1E6968088]);
    v103 = sub_1B4D180FC();
    sub_1B4975024(v102, a5, v138);
    v104 = v101;
    v105 = v138;
    sub_1B4975024(v104, a5, v138);
    if ((v103 & 1) == 0)
    {
LABEL_85:
      v37 = v129 + 1;
      v96 = v127 + v119;
      v98 = v126 - 1;
      v99 = v124 + v119;
      if (v129 + 1 != v123)
      {
        goto LABEL_86;
      }

      v13 = v115;
      a3 = v122;
      v25 = v118;
      a4 = v123;
      if (v123 < v118)
      {
        goto LABEL_125;
      }

      goto LABEL_34;
    }

    if (!v130)
    {
      break;
    }

    v106 = v131;
    sub_1B498B270(v99, v131, a5, v105);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B498B270(v106, v96, a5, v105);
    v96 += v97;
    v99 += v97;
    if (__CFADD__(v100++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_1B4CF5E30(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v43 = (&v34 - v10);
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_58;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_59;
  }

  v14 = (a2 - a1) / v12;
  v47 = a1;
  v46 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v16;
    if (v16 >= 1)
    {
      v26 = -v12;
      v27 = a4 + v16;
      v37 = a1;
      v38 = a4;
      v36 = -v12;
      do
      {
        v34 = v25;
        v28 = a2 + v26;
        v39 = a2;
        v40 = a2 + v26;
        while (1)
        {
          if (a2 <= a1)
          {
            v47 = a2;
            v45 = v34;
            goto LABEL_56;
          }

          v29 = a3;
          v35 = v25;
          a3 += v26;
          v30 = v27 + v26;
          v31 = v43;
          sub_1B4974FBC(v27 + v26, v43, &qword_1EB8A79B0, &qword_1B4D20FC0);
          v32 = v44;
          sub_1B4974FBC(v28, v44, &qword_1EB8A79B0, &qword_1B4D20FC0);
          v41 = *v31;
          v33 = *v32;
          sub_1B4975024(v32, &qword_1EB8A79B0, &qword_1B4D20FC0);
          sub_1B4975024(v31, &qword_1EB8A79B0, &qword_1B4D20FC0);
          if (v41 < v33)
          {
            break;
          }

          v25 = v27 + v26;
          if (v29 < v27 || a3 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v40;
            v26 = v36;
            a1 = v37;
          }

          else
          {
            v28 = v40;
            v26 = v36;
            a1 = v37;
            if (v29 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v30;
          a2 = v39;
          if (v30 <= v38)
          {
            goto LABEL_54;
          }
        }

        if (v29 < v39 || a3 >= v39)
        {
          a2 = v40;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v36;
          a1 = v37;
          v25 = v35;
        }

        else
        {
          a2 = v40;
          v26 = v36;
          a1 = v37;
          v25 = v35;
          if (v29 != v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v38);
    }

LABEL_54:
    v47 = a2;
    v45 = v25;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a3;
    v41 = a4 + v15;
    v45 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      v39 = v12;
      do
      {
        v18 = v43;
        v19 = a2;
        sub_1B4974FBC(a2, v43, &qword_1EB8A79B0, &qword_1B4D20FC0);
        v20 = v44;
        sub_1B4974FBC(a4, v44, &qword_1EB8A79B0, &qword_1B4D20FC0);
        v21 = *v18;
        v22 = *v20;
        sub_1B4975024(v20, &qword_1EB8A79B0, &qword_1B4D20FC0);
        sub_1B4975024(v18, &qword_1EB8A79B0, &qword_1B4D20FC0);
        if (v21 >= v22)
        {
          v23 = v39;
          v24 = a4 + v39;
          if (a1 < a4 || a1 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = v24;
          a4 += v23;
        }

        else
        {
          v23 = v39;
          a2 += v39;
          if (a1 < v19 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += v23;
        v47 = a1;
      }

      while (a4 < v41 && a2 < v40);
    }
  }

LABEL_56:
  sub_1B4CDDED8(&v47, &v46, &v45);
}

void sub_1B4CF6330(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v118 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v99 - v8;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v103 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v99 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v10 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v105 = (&v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v99 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v109 = &v99 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v115 = &v99 - v17;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
  MEMORY[0x1EEE9AC00](v120);
  v114 = (&v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v99 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v119 = &v99 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v99 - v25;
  v28 = *(v27 + 72);
  if (!v28)
  {
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_77;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_78;
  }

  v30 = (a2 - a1) / v28;
  v125 = a1;
  v124 = a4;
  if (v30 >= v29 / v28)
  {
    v32 = v29 / v28 * v28;
    if (a4 < a2 || a2 + v32 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v32;
    if (v32 >= 1)
    {
      v64 = -v28;
      v109 = (v103 + 1);
      v103 = (v118 + 8);
      v102 = (v10 + 8);
      v65 = v63;
      v116 = a1;
      v117 = a4;
      v104 = v21;
      v115 = -v28;
      do
      {
        v100 = v63;
        v66 = a2;
        v67 = a2 + v64;
        v118 = v67;
        v106 = v66;
        while (1)
        {
          if (v66 <= a1)
          {
            v125 = v66;
            v123 = v100;
            goto LABEL_75;
          }

          v107 = a3;
          v101 = v63;
          v108 = v65;
          v119 = v65 + v64;
          sub_1B4974FBC(v65 + v64, v21, &qword_1EB8A6CE8, &qword_1B4D44B80);
          sub_1B4974FBC(v67, v114, &qword_1EB8A6CE8, &qword_1B4D44B80);
          type metadata accessor for DistanceSampleIntervalRecord(0);
          v69 = objc_opt_self();
          v70 = [v69 meters];
          v71 = v121;
          v72 = v122;
          sub_1B4D1745C();

          sub_1B4D1742C();
          v74 = v73;
          v75 = *v109;
          (*v109)(v71, v72);
          if (v74 > 0.0)
          {
            v76 = [objc_opt_self() seconds];
            v78 = v112;
            v77 = v113;
            sub_1B4D1745C();

            sub_1B4D1742C();
            (*v103)(v78, v77);
          }

          if (qword_1EDC36E80 != -1)
          {
            swift_once();
          }

          v79 = qword_1EDC36E88;
          type metadata accessor for UnitPace();
          v80 = v79;
          sub_1B4D1741C();
          v81 = [v69 meters];
          v82 = v121;
          v83 = v122;
          sub_1B4D1745C();

          sub_1B4D1742C();
          v85 = v84;
          v75(v82, v83);
          if (v85 > 0.0)
          {
            v86 = [objc_opt_self() seconds];
            v88 = v112;
            v87 = v113;
            sub_1B4D1745C();

            sub_1B4D1742C();
            (*v103)(v88, v87);
          }

          a1 = v116;
          if (qword_1EDC36E80 != -1)
          {
            swift_once();
          }

          v89 = v80;
          v90 = v105;
          sub_1B4D1741C();
          v91 = v107;
          v92 = v107 + v115;
          sub_1B49B0578(&qword_1EB8AB848, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968088]);
          v94 = v110;
          v93 = v111;
          v95 = sub_1B4D180FC();
          v96 = *v102;
          (*v102)(v90, v93);
          v96(v94, v93);
          sub_1B4975024(v114, &qword_1EB8A6CE8, &qword_1B4D44B80);
          v21 = v104;
          sub_1B4975024(v104, &qword_1EB8A6CE8, &qword_1B4D44B80);
          if (v95)
          {
            break;
          }

          v63 = v119;
          a3 = v92;
          if (v91 < v108 || v92 >= v108)
          {
            swift_arrayInitWithTakeFrontToBack();
            v64 = v115;
            v68 = v117;
            v67 = v118;
          }

          else
          {
            v97 = v91 == v108;
            v64 = v115;
            v68 = v117;
            v67 = v118;
            if (!v97)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = v63;
          v66 = v106;
          if (v119 <= v68)
          {
            a2 = v106;
            goto LABEL_74;
          }
        }

        a3 = v92;
        if (v91 < v106 || v92 >= v106)
        {
          a2 = v118;
          swift_arrayInitWithTakeFrontToBack();
          v63 = v101;
          v64 = v115;
          v98 = v117;
        }

        else
        {
          v97 = v91 == v106;
          v63 = v101;
          v64 = v115;
          v98 = v117;
          a2 = v118;
          if (!v97)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v65 = v108;
      }

      while (v108 > v98);
    }

LABEL_74:
    v125 = a2;
    v123 = v63;
  }

  else
  {
    v31 = v30 * v28;
    if (a4 < a1 || a1 + v31 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v110 = (a4 + v31);
    v123 = a4 + v31;
    if (v31 >= 1 && a2 < a3)
    {
      v114 = v103 + 1;
      v105 = (v118 + 8);
      v104 = (v10 + 8);
      v107 = v28;
      v108 = a3;
      v106 = v26;
      do
      {
        v116 = a1;
        v118 = a2;
        sub_1B4974FBC(a2, v26, &qword_1EB8A6CE8, &qword_1B4D44B80);
        v117 = a4;
        sub_1B4974FBC(a4, v119, &qword_1EB8A6CE8, &qword_1B4D44B80);
        type metadata accessor for DistanceSampleIntervalRecord(0);
        v34 = objc_opt_self();
        v35 = [v34 meters];
        v36 = v121;
        v37 = v122;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v39 = v38;
        v40 = *v114;
        (*v114)(v36, v37);
        if (v39 > 0.0)
        {
          v41 = [objc_opt_self() seconds];
          v42 = v112;
          v43 = v113;
          sub_1B4D1745C();

          sub_1B4D1742C();
          (*v105)(v42, v43);
        }

        if (qword_1EDC36E80 != -1)
        {
          swift_once();
        }

        v44 = qword_1EDC36E88;
        type metadata accessor for UnitPace();
        v45 = v44;
        sub_1B4D1741C();
        v46 = [v34 meters];
        v47 = v121;
        v48 = v122;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v50 = v49;
        v40(v47, v48);
        if (v50 > 0.0)
        {
          v51 = [objc_opt_self() seconds];
          v52 = v112;
          v53 = v113;
          sub_1B4D1745C();

          sub_1B4D1742C();
          (*v105)(v52, v53);
        }

        a2 = v118;
        v54 = v116;
        v55 = v108;
        if (qword_1EDC36E80 != -1)
        {
          swift_once();
        }

        v56 = v45;
        v57 = v109;
        sub_1B4D1741C();
        sub_1B49B0578(&qword_1EB8AB848, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968088]);
        v58 = v115;
        v59 = v111;
        v60 = sub_1B4D180FC();
        v61 = *v104;
        (*v104)(v57, v59);
        v61(v58, v59);
        sub_1B4975024(v119, &qword_1EB8A6CE8, &qword_1B4D44B80);
        v26 = v106;
        sub_1B4975024(v106, &qword_1EB8A6CE8, &qword_1B4D44B80);
        if (v60)
        {
          v62 = v107;
          a4 = v117;
          if (v54 < a2 || v54 >= a2 + v107)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v54 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v62;
        }

        else
        {
          v62 = v107;
          a4 = v117 + v107;
          if (v54 < v117 || v54 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v54 != v117)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v124 = a4;
        }

        a1 = v54 + v62;
        v125 = a1;
      }

      while (a4 < v110 && a2 < v55);
    }
  }

LABEL_75:
  sub_1B4CDDEEC(&v125, &v124, &v123);
}

void sub_1B4CF7194(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF8, &unk_1B4D1BC80);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v52 = a1;
  v51 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v28 = v26;
      v41 = v27;
      v42 = a4;
      v49 = a1;
      do
      {
        v39 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v45 = v30;
        v43 = v29;
        while (1)
        {
          if (v29 <= a1)
          {
            v52 = v29;
            v50 = v39;
            goto LABEL_58;
          }

          v32 = v8;
          v33 = a3;
          v40 = v26;
          v48 = a3 + v27;
          v34 = v28 + v27;
          v35 = v46;
          sub_1B4974FBC(v34, v46, &qword_1EB8A6CF8, &unk_1B4D1BC80);
          v36 = v47;
          sub_1B4974FBC(v30, v47, &qword_1EB8A6CF8, &unk_1B4D1BC80);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
          sub_1B49B0578(&qword_1EB8AB848, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968088]);
          v37 = sub_1B4D180FC();
          sub_1B4975024(v36, &qword_1EB8A6CF8, &unk_1B4D1BC80);
          sub_1B4975024(v35, &qword_1EB8A6CF8, &unk_1B4D1BC80);
          if (v37)
          {
            break;
          }

          v26 = v34;
          a3 = v48;
          if (v33 < v28 || v48 >= v28)
          {
            v8 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v49;
          }

          else
          {
            v38 = v33 == v28;
            v8 = v32;
            a1 = v49;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v34;
          v29 = v43;
          v31 = v34 > v42;
          v30 = v45;
          v27 = v41;
          if (!v31)
          {
            a2 = v43;
            goto LABEL_57;
          }
        }

        a3 = v48;
        if (v33 < v43 || v48 >= v43)
        {
          v8 = v32;
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v49;
          v27 = v41;
        }

        else
        {
          v38 = v33 == v43;
          v8 = v32;
          a2 = v45;
          a1 = v49;
          v27 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v40;
      }

      while (v28 > v42);
    }

LABEL_57:
    v52 = a2;
    v50 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v16;
    v50 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v48 = a3;
      v43 = v13;
      v44 = v8;
      do
      {
        v49 = a1;
        v19 = v46;
        v20 = a2;
        sub_1B4974FBC(a2, v46, &qword_1EB8A6CF8, &unk_1B4D1BC80);
        v21 = v47;
        sub_1B4974FBC(a4, v47, &qword_1EB8A6CF8, &unk_1B4D1BC80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
        sub_1B49B0578(&qword_1EB8AB848, &qword_1EB8A6CD8, &unk_1B4D1D2C0, MEMORY[0x1E6968088]);
        v22 = sub_1B4D180FC();
        sub_1B4975024(v21, &qword_1EB8A6CF8, &unk_1B4D1BC80);
        sub_1B4975024(v19, &qword_1EB8A6CF8, &unk_1B4D1BC80);
        if (v22)
        {
          v23 = v43;
          a2 += v43;
          v24 = v49;
          if (v49 < v20 || v49 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v23 = v43;
          v25 = a4 + v43;
          v24 = v49;
          if (v49 < a4 || v49 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = v25;
          a4 += v23;
        }

        a1 = v24 + v23;
        v52 = a1;
      }

      while (a4 < v45 && a2 < v48);
    }
  }

LABEL_58:
  sub_1B4CDDF00(&v52, &v51, &v50);
}

void sub_1B4CF77A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v52 = a1;
  v51 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v28 = v26;
      v41 = v27;
      v42 = a4;
      v49 = a1;
      do
      {
        v39 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v45 = v30;
        v43 = v29;
        while (1)
        {
          if (v29 <= a1)
          {
            v52 = v29;
            v50 = v39;
            goto LABEL_58;
          }

          v32 = v8;
          v33 = a3;
          v40 = v26;
          v48 = a3 + v27;
          v34 = v28 + v27;
          v35 = v46;
          sub_1B4974FBC(v34, v46, &qword_1EB8A6818, &unk_1B4D1AB30);
          v36 = v47;
          sub_1B4974FBC(v30, v47, &qword_1EB8A6818, &unk_1B4D1AB30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
          sub_1B49B0578(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968088]);
          v37 = sub_1B4D180FC();
          sub_1B4975024(v36, &qword_1EB8A6818, &unk_1B4D1AB30);
          sub_1B4975024(v35, &qword_1EB8A6818, &unk_1B4D1AB30);
          if (v37)
          {
            break;
          }

          v26 = v34;
          a3 = v48;
          if (v33 < v28 || v48 >= v28)
          {
            v8 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v49;
          }

          else
          {
            v38 = v33 == v28;
            v8 = v32;
            a1 = v49;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v34;
          v29 = v43;
          v31 = v34 > v42;
          v30 = v45;
          v27 = v41;
          if (!v31)
          {
            a2 = v43;
            goto LABEL_57;
          }
        }

        a3 = v48;
        if (v33 < v43 || v48 >= v43)
        {
          v8 = v32;
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v49;
          v27 = v41;
        }

        else
        {
          v38 = v33 == v43;
          v8 = v32;
          a2 = v45;
          a1 = v49;
          v27 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v40;
      }

      while (v28 > v42);
    }

LABEL_57:
    v52 = a2;
    v50 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v16;
    v50 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v48 = a3;
      v43 = v13;
      v44 = v8;
      do
      {
        v49 = a1;
        v19 = v46;
        v20 = a2;
        sub_1B4974FBC(a2, v46, &qword_1EB8A6818, &unk_1B4D1AB30);
        v21 = v47;
        sub_1B4974FBC(a4, v47, &qword_1EB8A6818, &unk_1B4D1AB30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
        sub_1B49B0578(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968088]);
        v22 = sub_1B4D180FC();
        sub_1B4975024(v21, &qword_1EB8A6818, &unk_1B4D1AB30);
        sub_1B4975024(v19, &qword_1EB8A6818, &unk_1B4D1AB30);
        if (v22)
        {
          v23 = v43;
          a2 += v43;
          v24 = v49;
          if (v49 < v20 || v49 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v23 = v43;
          v25 = a4 + v43;
          v24 = v49;
          if (v49 < a4 || v49 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = v25;
          a4 += v23;
        }

        a1 = v24 + v23;
        v52 = a1;
      }

      while (a4 < v45 && a2 < v48);
    }
  }

LABEL_58:
  sub_1B4CDDF14(&v52, &v51, &v50);
}

void sub_1B4CF7DAC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF0, &unk_1B4D1BC70);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v52 = a1;
  v51 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v28 = v26;
      v41 = v27;
      v42 = a4;
      v49 = a1;
      do
      {
        v39 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v45 = v30;
        v43 = v29;
        while (1)
        {
          if (v29 <= a1)
          {
            v52 = v29;
            v50 = v39;
            goto LABEL_58;
          }

          v32 = v8;
          v33 = a3;
          v40 = v26;
          v48 = a3 + v27;
          v34 = v28 + v27;
          v35 = v46;
          sub_1B4974FBC(v34, v46, &qword_1EB8A6CF0, &unk_1B4D1BC70);
          v36 = v47;
          sub_1B4974FBC(v30, v47, &qword_1EB8A6CF0, &unk_1B4D1BC70);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
          sub_1B49B0578(&qword_1EB8AE4C8, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968088]);
          v37 = sub_1B4D180FC();
          sub_1B4975024(v36, &qword_1EB8A6CF0, &unk_1B4D1BC70);
          sub_1B4975024(v35, &qword_1EB8A6CF0, &unk_1B4D1BC70);
          if (v37)
          {
            break;
          }

          v26 = v34;
          a3 = v48;
          if (v33 < v28 || v48 >= v28)
          {
            v8 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v49;
          }

          else
          {
            v38 = v33 == v28;
            v8 = v32;
            a1 = v49;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v34;
          v29 = v43;
          v31 = v34 > v42;
          v30 = v45;
          v27 = v41;
          if (!v31)
          {
            a2 = v43;
            goto LABEL_57;
          }
        }

        a3 = v48;
        if (v33 < v43 || v48 >= v43)
        {
          v8 = v32;
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v49;
          v27 = v41;
        }

        else
        {
          v38 = v33 == v43;
          v8 = v32;
          a2 = v45;
          a1 = v49;
          v27 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v40;
      }

      while (v28 > v42);
    }

LABEL_57:
    v52 = a2;
    v50 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v16;
    v50 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v48 = a3;
      v43 = v13;
      v44 = v8;
      do
      {
        v49 = a1;
        v19 = v46;
        v20 = a2;
        sub_1B4974FBC(a2, v46, &qword_1EB8A6CF0, &unk_1B4D1BC70);
        v21 = v47;
        sub_1B4974FBC(a4, v47, &qword_1EB8A6CF0, &unk_1B4D1BC70);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
        sub_1B49B0578(&qword_1EB8AE4C8, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968088]);
        v22 = sub_1B4D180FC();
        sub_1B4975024(v21, &qword_1EB8A6CF0, &unk_1B4D1BC70);
        sub_1B4975024(v19, &qword_1EB8A6CF0, &unk_1B4D1BC70);
        if (v22)
        {
          v23 = v43;
          a2 += v43;
          v24 = v49;
          if (v49 < v20 || v49 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v23 = v43;
          v25 = a4 + v43;
          v24 = v49;
          if (v49 < a4 || v49 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = v25;
          a4 += v23;
        }

        a1 = v24 + v23;
        v52 = a1;
      }

      while (a4 < v45 && a2 < v48);
    }
  }

LABEL_58:
  sub_1B4CDDF28(&v52, &v51, &v50);
}

uint64_t sub_1B4CF83B8@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C8, &unk_1B4D20E30) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC200, &unk_1B4D3B300) + 48);
  *a2 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v7 = *(*(v6 - 8) + 16);

  return v7(&a2[v5], &a1[v4], v6);
}

unint64_t *sub_1B4CF8470(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B4CF8B48(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_1B4CF850C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v41 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v44 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6918, &qword_1B4D1AC30);
  result = sub_1B4D18AEC();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v42 = result;
  v43 = v48 + 16;
  v17 = v48 + 32;
  v18 = result + 64;
  v19 = v44;
  v41 = a4;
  while (v15)
  {
    v20 = v19;
    v21 = v17;
    v22 = __clz(__rbit64(v15));
    v46 = (v15 - 1) & v15;
LABEL_16:
    v25 = v22 | (v16 << 6);
    v26 = a4[7];
    v27 = *(a4[6] + 8 * v25);
    v28 = v48;
    v47 = *(v48 + 72);
    v29 = v45;
    (*(v48 + 16))(v45, v26 + v47 * v25, v20);
    v30 = *(v28 + 32);
    v31 = v29;
    v17 = v21;
    v30(v49, v31, v20);
    v14 = v42;
    sub_1B4D18E8C();
    MEMORY[0x1B8C7D2C0](v27);
    result = sub_1B4D18EDC();
    v32 = -1 << *(v14 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
    {
      v36 = 0;
      v37 = (63 - v32) >> 6;
      v19 = v44;
      while (++v34 != v37 || (v36 & 1) == 0)
      {
        v38 = v34 == v37;
        if (v34 == v37)
        {
          v34 = 0;
        }

        v36 |= v38;
        v39 = *(v18 + 8 * v34);
        if (v39 != -1)
        {
          v35 = __clz(__rbit64(~v39)) + (v34 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    v19 = v44;
LABEL_26:
    *(v18 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    *(*(v14 + 48) + 8 * v35) = v27;
    result = (v30)(*(v14 + 56) + v35 * v47, v49, v19);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v41;
    v15 = v46;
    if (!a3)
    {
      return v14;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v24 = a1[v16];
    ++v23;
    if (v24)
    {
      v20 = v19;
      v21 = v17;
      v22 = __clz(__rbit64(v24));
      v46 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

double sub_1B4CF8874@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  *a2 = v2;
  *(a2 + 8) = v3;

  return result;
}

unint64_t sub_1B4CF8888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE4B8, &qword_1B4D47750);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADB88, &qword_1B4D44CC8) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v21 = xmmword_1B4D1A800;
  *(v11 + 16) = xmmword_1B4D1A800;
  v12 = v11 + v10;
  (*(a3 + 80))(a2, a3);
  type metadata accessor for DateRangeDescriptor(0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
  v13 = swift_allocObject();
  *(v13 + 16) = v21;
  v14 = (*(a3 + 56))(a2, a3);
  v15 = [v14 effectiveTypeIdentifier];

  *(v13 + 32) = v15;
  v16 = type metadata accessor for WorkoutPropertiesQuery(0);
  v17 = (v12 + v16[5]);
  v18 = MEMORY[0x1E69E7CC0];
  *v17 = MEMORY[0x1E69E7CC0];
  v17[1] = v18;
  v17[2] = v18;
  v17[3] = v13;
  v17[4] = v18;
  v17[5] = v18;
  *(v12 + v16[6]) = v18;
  *(v12 + v16[7]) = &unk_1F2CBD190;
  type metadata accessor for FitnessContextQueryDescriptor(0);
  swift_storeEnumTagMultiPayload();
  v19 = sub_1B4C973F0(v11);
  swift_setDeallocating();
  sub_1B4975024(v12, &qword_1EB8ADB88, &qword_1B4D44CC8);
  swift_deallocClassInstance();
  (*(v5 + 8))(v8, a2);
  return v19;
}

void sub_1B4CF8B48(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a2;
  v32 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81C8, &unk_1B4D20E30);
  MEMORY[0x1EEE9AC00](v37);
  v44 = (&v31 - v6);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v43);
  v42 = &v31 - v9;
  v39 = 0;
  v40 = a3;
  v10 = 0;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v38 = a4;
  v34 = (a4 + 32);
  v35 = v7 + 16;
  v36 = v7;
  v33 = (v7 + 8);
LABEL_5:
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v41 = (v16 - 1) & v16;
LABEL_12:
    v21 = v18 | (v10 << 6);
    v22 = *(v40[6] + 8 * v21);
    v23 = *(v36 + 16);
    v24 = v42;
    v25 = v43;
    v23(v42, v40[7] + *(v36 + 72) * v21, v43, v8);
    v26 = v44;
    *v44 = v22;
    (v23)(v26 + *(v37 + 48), v24, v25);
    v27 = *(v38 + 16);
    v28 = v34;
    do
    {
      if (!v27)
      {
        sub_1B4975024(v44, &qword_1EB8A81C8, &unk_1B4D20E30);
        (*v33)(v42, v43);
        v16 = v41;
        goto LABEL_5;
      }

      v29 = *v28++;
      --v27;
    }

    while (v29 != v22);
    sub_1B4975024(v44, &qword_1EB8A81C8, &unk_1B4D20E30);
    (*v33)(v42, v43);
    *(v32 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v30 = __OFADD__(v39++, 1);
    v16 = v41;
    if (v30)
    {
      __break(1u);
LABEL_18:
      sub_1B4CF850C(v32, v31, v39, v40);
      return;
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_18;
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v41 = (v20 - 1) & v20;
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t *sub_1B4CF8E50(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_1B4CF8470(v13, v7, a1, a2);
      MEMORY[0x1B8C7DDA0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_1B4CF8B48((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_1B4CF9010(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v63 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v52 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v51 = v50 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v55 = v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE540, &qword_1B4D47798);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (v50 - v17);
  v19 = -1 << *(a1 + 32);
  v20 = ~v19;
  v21 = *(a1 + 64);
  v22 = -v19;
  v56 = a1;
  v57 = a1 + 64;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v58 = v20;
  v59 = 0;
  v60 = v23 & v21;
  v61 = a2;
  v62 = a3;
  v24 = (v10 + 32);
  v50[4] = v10 + 8;
  v50[5] = v10 + 16;
  v54 = v10;
  v50[3] = v10 + 40;

  v50[1] = a3;

  for (i = v18; ; v18 = i)
  {
    sub_1B4CDE614(v18);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC200, &unk_1B4D3B300);
    if ((*(*(v33 - 8) + 48))(v18, 1, v33) == 1)
    {
      sub_1B49B75FC(v56);
    }

    v34 = *v18;
    v35 = *v24;
    (*v24)(v55, v18 + *(v33 + 48), v9);
    v36 = *v63;
    v38 = sub_1B49E9C38(v34);
    v39 = v36[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      break;
    }

    v42 = v37;
    if (v36[3] >= v41)
    {
      if ((a4 & 1) == 0)
      {
        sub_1B4988954();
      }
    }

    else
    {
      sub_1B4984574(v41, a4 & 1);
      v43 = sub_1B49E9C38(v34);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_20;
      }

      v38 = v43;
    }

    v45 = *v63;
    if (v42)
    {
      v25 = v54;
      v26 = *(v54 + 72) * v38;
      v27 = v52;
      (*(v54 + 16))(v52, v45[7] + v26, v9);
      type metadata accessor for UnitCount();
      v28 = v51;
      v29 = v24;
      v30 = v55;
      sub_1B4D1743C();
      v31 = *(v25 + 8);
      v31(v27, v9);
      v32 = v30;
      v24 = v29;
      v31(v32, v9);
      (*(v25 + 40))(v45[7] + v26, v28, v9);
    }

    else
    {
      v45[(v38 >> 6) + 8] |= 1 << v38;
      *(v45[6] + 8 * v38) = v34;
      v35((v45[7] + *(v54 + 72) * v38), v55, v9);
      v46 = v45[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_19;
      }

      v45[2] = v48;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1B4D18E1C();
  __break(1u);
  return result;
}

uint64_t sub_1B4CF944C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v2[15] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7530, &unk_1B4D40250);
  v2[21] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v2[25] = swift_task_alloc();
  v5 = type metadata accessor for WorkoutState(0);
  v2[26] = v5;
  v2[27] = *(v5 - 8);
  v2[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4CF96D4, 0, 0);
}

uint64_t sub_1B4CF96D4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_1B4974FBC(*(v0 + 104), v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B4975024(*(v0 + 200), &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_17:
    v30 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v4 = *(v0 + 96);
  sub_1B49B46E0(*(v0 + 200), *(v0 + 224));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  *(v0 + 88) = &type metadata for AverageWorkoutDurationFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6800, &qword_1B4D1AB18);
  v53 = sub_1B4D181CC();
  v54 = v7;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001ALL, 0x80000001B4D4E0D0);
  (*(v6 + 8))(v53, v54, &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v5, v6);

  v8 = *(v0 + 80);
  if (!v8)
  {
    v11 = *(v0 + 224);
LABEL_16:
    sub_1B4CFA938(v11, type metadata accessor for WorkoutState);
    goto LABEL_17;
  }

  v9 = *(v0 + 168);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  sub_1B4CE5168((v0 + 16), v8, v9);
  v10 = *(v0 + 168);
  v12 = *(v0 + 176);
  v13 = *(v0 + 184);

  v14 = (*(v13 + 48))(v10, 1, v12);
  if (v14 == 1)
  {
    v15 = *(v0 + 224);
    v16 = *(v0 + 168);
    v17 = &qword_1EB8A7530;
    v18 = &unk_1B4D40250;
LABEL_15:
    sub_1B4975024(v16, v17, v18);
    v11 = v15;
    goto LABEL_16;
  }

  v19 = *(v0 + 192);
  v20 = *(v0 + 176);
  sub_1B498B270(*(v0 + 168), v19, &qword_1EB8A6858, &qword_1B4D1AB70);
  v21 = *(v19 + *(v20 + 28));
  if (v21 < 3)
  {
LABEL_14:
    v15 = *(v0 + 224);
    v16 = *(v0 + 192);
    v17 = &qword_1EB8A6858;
    v18 = &qword_1B4D1AB70;
    goto LABEL_15;
  }

  v22 = *(v0 + 136);
  v23 = [objc_opt_self() seconds];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  sub_1B4D1742C();
  v24 = *(v0 + 136);
  if (v25 <= 0.0)
  {
    (*(v24 + 8))(*(v0 + 152), *(v0 + 128));
    v26 = 1;
  }

  else
  {
    (*(v24 + 32))(*(v0 + 120), *(v0 + 152), *(v0 + 128));
    v26 = 0;
  }

  v27 = *(v0 + 128);
  v28 = *(v0 + 136);
  v29 = *(v0 + 120);
  (*(v22 + 56))(v29, v26, 1, v27);
  if ((*(v28 + 48))(v29, 1, v27) == 1)
  {
    sub_1B4975024(*(v0 + 120), &qword_1EB8A6C90, &unk_1B4D1BBD0);
    goto LABEL_14;
  }

  v33 = *(v0 + 224);
  v34 = *(v0 + 208);
  v51 = *(v0 + 160);
  v52 = *(v0 + 192);
  v35 = *(v0 + 136);
  v36 = *(v0 + 144);
  v50 = *(v0 + 128);
  v37 = *(v0 + 112);
  (*(v35 + 32))();
  sub_1B4D1742C();
  v38 = [swift_getObjCClassFromMetadata() baseUnit];
  v39 = v36;
  sub_1B4D1741C();
  v49 = v21;
  sub_1B4974FBC(v33 + *(v34 + 44), v37, &qword_1EB8A6790, &qword_1B4D1BBC0);
  v40 = sub_1B4D1777C();
  v48 = (*(*(v40 - 8) + 48))(v37, 1, v40) != 1;
  sub_1B4975024(v37, &qword_1EB8A6790, &qword_1B4D1BBC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE498, &qword_1B4D47738);
  v41 = (type metadata accessor for AverageWorkoutDurationFact(0) - 8);
  v42 = (*(*v41 + 80) + 32) & ~*(*v41 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B4D1A800;
  v43 = (v30 + v42);
  v47 = *(v33 + *(v34 + 24));
  v44 = *(v35 + 16);
  v44(&v43[v41[8]], v39, v50);
  v44(&v43[v41[9]], v51, v50);
  *v43 = v47;
  *(v43 + 1) = v49;
  v43[v41[10]] = v48;
  v45 = *(v35 + 8);
  v46 = v47;
  v45(v39, v50);
  v45(v51, v50);
  sub_1B4975024(v52, &qword_1EB8A6858, &qword_1B4D1AB70);
  sub_1B4CFA938(v33, type metadata accessor for WorkoutState);
LABEL_18:

  v31 = *(v0 + 8);

  return v31(v30);
}

uint64_t sub_1B4CF9E44(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v42 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  for (i = v6; ; v6 = i)
  {
    v14 = v9;
    v15 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v17 = __clz(__rbit64(v14)) | (v15 << 6);
    v18 = *(*(a1 + 56) + 8 * v17);
    LOBYTE(v39[0]) = *(*(a1 + 48) + v17);
    v39[1] = v18;

    a2(&v40, v39);

    v19 = v41;
    if (!v41)
    {
LABEL_22:
      sub_1B49B75FC(a1);
    }

    v20 = v40;
    v21 = *v42;
    v23 = sub_1B49E9CA4(v40);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_24;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((a4 & 1) == 0)
      {
        sub_1B4988F88();
      }
    }

    else
    {
      sub_1B4984F00(v26, a4 & 1);
      v28 = sub_1B49E9CA4(v20);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_26;
      }

      v23 = v28;
    }

    v38 = (v14 - 1) & v14;
    v30 = *v42;
    if (v27)
    {
      v39[0] = *(v30[7] + 8 * v23);
      swift_bridgeObjectRetain_n();

      sub_1B4997858(v12);
      v13 = sub_1B4CE175C(v39[0], 5);

      *(v30[7] + 8 * v23) = v13;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      *(v30[6] + v23) = v20;
      *(v30[7] + 8 * v23) = v19;
      v31 = v30[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v30[2] = v33;
    }

    a4 = 1;
    v11 = v15;
    v9 = v38;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      goto LABEL_22;
    }

    v14 = *(v6 + 8 * v15);
    ++v16;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B4D18E1C();
  __break(1u);
  return result;
}

uint64_t _s19FitnessIntelligence26AverageWorkoutDurationFactV10makePrompt15promptFormatterSSAA0hJ0C_tF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v36 - v5;
  v7 = [*v1 localizedName];
  v8 = sub_1B4D1818C();
  v10 = v9;

  v11 = type metadata accessor for AverageWorkoutDurationFact(0);
  if (*(v1 + v11[8]) != 1)
  {
    v29 = v11[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    sub_1B4D18F8C();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v31 = sub_1B4BCA7BC(v30);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v32 = sub_1B4D15F5C(v1 + v29, v31);
    v34 = v33;

    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0x617265766120794DLL, 0xEB00000000206567);
    MEMORY[0x1B8C7C620](v8, v10);

    MEMORY[0x1B8C7C620](0xD000000000000023, 0x80000001B4D66F10);
    MEMORY[0x1B8C7C620](v32, v34);

    v27 = 46;
    v28 = 0xE100000000000000;
    goto LABEL_5;
  }

  v12 = v11[6];
  v13 = v11[7];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D173EC();
  sub_1B49B0578(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968088]);
  v14 = sub_1B4D1810C();
  (*(v3 + 8))(v6, v2);
  if (v14)
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    v36[0] = sub_1B4D18F8C();
    v15 = *(*(v36[0] - 8) + 72);
    v39 = v12;
    v41 = v10;
    v16 = swift_allocObject();
    v37 = xmmword_1B4D1B2D0;
    *(v16 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    v36[1] = 3 * v15;
    sub_1B4D18F7C();
    v17 = sub_1B4BCA7BC(v16);
    v40 = v8;
    v18 = v17;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v19 = sub_1B4D15F5C(v1 + v13, v18);
    v21 = v20;

    v22 = swift_allocObject();
    *(v22 + 16) = v37;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v23 = sub_1B4BCA7BC(v22);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v24 = sub_1B4D15F5C(v1 + v39, v23);
    v26 = v25;

    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD000000000000024, 0x80000001B4D66F40);
    MEMORY[0x1B8C7C620](v19, v21);

    MEMORY[0x1B8C7C620](0xD00000000000001DLL, 0x80000001B4D66F70);
    MEMORY[0x1B8C7C620](v40, v41);

    MEMORY[0x1B8C7C620](0xD000000000000015, 0x80000001B4D66F90);
    MEMORY[0x1B8C7C620](v24, v26);

    v27 = 0x65687420726F6620;
    v28 = 0xEF2E68746E6F6D20;
LABEL_5:
    MEMORY[0x1B8C7C620](v27, v28);
    return v42;
  }

  return 0;
}

unint64_t sub_1B4CFA6F8()
{
  result = qword_1EB8AE468;
  if (!qword_1EB8AE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE468);
  }

  return result;
}

unint64_t sub_1B4CFA74C(uint64_t a1)
{
  *(a1 + 8) = sub_1B4CFA77C();
  result = sub_1B4CFA7D0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4CFA77C()
{
  result = qword_1EB8AE470;
  if (!qword_1EB8AE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE470);
  }

  return result;
}

unint64_t sub_1B4CFA7D0()
{
  result = qword_1EB8AE478;
  if (!qword_1EB8AE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE478);
  }

  return result;
}

unint64_t sub_1B4CFA828()
{
  result = qword_1EB8AE480;
  if (!qword_1EB8AE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE480);
  }

  return result;
}

uint64_t sub_1B4CFA87C(uint64_t a1)
{
  *(a1 + 8) = sub_1B4CFA8E4(&qword_1EB8AE488, &protocol conformance descriptor for AverageWorkoutDurationFact);
  result = sub_1B4CFA8E4(&qword_1EB8AE490, &protocol conformance descriptor for AverageWorkoutDurationFact);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4CFA8E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AverageWorkoutDurationFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4CFA938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Measurement<>.speed()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  if (qword_1EDC36E80 != -1)
  {
    swift_once();
  }

  sub_1B4D1745C();
  sub_1B4D1742C();
  (*(v1 + 8))(v3, v0);
  v4 = [objc_opt_self() metersPerSecond];
  sub_1B4CFAB40();
  return sub_1B4D1741C();
}

unint64_t sub_1B4CFAB40()
{
  result = qword_1EB8A7230;
  if (!qword_1EB8A7230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB8A7230);
  }

  return result;
}

uint64_t sub_1B4CFABBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1B4D1746C();
  WitnessTable = swift_getWitnessTable();
  v11 = a4(a1, a2, v9, WitnessTable);
  v12 = *(*(v9 - 8) + 16);
  if (v11)
  {
    v13 = a1;
  }

  else
  {
    v13 = a2;
  }

  return v12(a5, v13, v9);
}

Swift::String __swiftcall Measurement.toString(digits:)(Swift::Int digits)
{
  v1 = sub_1B4D1764C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B4D1781C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE548, &qword_1B4D477C8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  sub_1B4D1742C();
  v23[3] = v13;
  sub_1B4D177FC();
  sub_1B4CFAF5C();
  sub_1B4D1761C();
  sub_1B4D1763C();
  MEMORY[0x1B8C7BA20](v4, v6);
  (*(v2 + 8))(v4, v1);
  v14 = *(v7 + 8);
  v14(v9, v6);
  sub_1B4CFAFB0();
  sub_1B4D17F9C();
  v14(v12, v6);
  MEMORY[0x1B8C7C620](32, 0xE100000000000000);
  v15 = sub_1B4D1740C();
  v16 = [v15 symbol];

  v17 = sub_1B4D1818C();
  v19 = v18;

  MEMORY[0x1B8C7C620](v17, v19);

  v20 = v23[4];
  v21 = v23[5];
  result._object = v21;
  result._countAndFlagsBits = v20;
  return result;
}

unint64_t sub_1B4CFAF5C()
{
  result = qword_1EB8AE550;
  if (!qword_1EB8AE550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE550);
  }

  return result;
}

unint64_t sub_1B4CFAFB0()
{
  result = qword_1EB8AE558;
  if (!qword_1EB8AE558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AE548, &qword_1B4D477C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE558);
  }

  return result;
}

uint64_t sub_1B4CFB014()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4CFB088(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4CFB0DC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1B4CFB170(uint64_t a1)
{
  *(a1 + 8) = sub_1B4CFB1A0();
  result = sub_1B4CFB1F4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4CFB1A0()
{
  result = qword_1EB8AE560;
  if (!qword_1EB8AE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE560);
  }

  return result;
}

unint64_t sub_1B4CFB1F4()
{
  result = qword_1EB8AE568;
  if (!qword_1EB8AE568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE568);
  }

  return result;
}

unint64_t sub_1B4CFB24C()
{
  result = qword_1EB8AE570;
  if (!qword_1EB8AE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE570);
  }

  return result;
}

unint64_t sub_1B4CFB2A4()
{
  result = qword_1EB8AE578;
  if (!qword_1EB8AE578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE578);
  }

  return result;
}

unint64_t sub_1B4CFB2FC()
{
  result = qword_1EB8AE580;
  if (!qword_1EB8AE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE580);
  }

  return result;
}

uint64_t sub_1B4CFB350@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v65 = a3;
  v5 = type metadata accessor for WorkoutRecord(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v64 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v64 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - v24;
  v26 = *a2;
  result = [*&a1[*(type metadata accessor for WorkoutState(0) + 24)] effectiveTypeIdentifier];
  v67 = v5;
  if (result <= 36)
  {
    v64 = v19;
    if (result == 13)
    {
      goto LABEL_19;
    }

    if (result != 20)
    {
LABEL_49:
      v60 = v65;
      *v65 = 0;
      v60[1] = 0;
      return result;
    }

    v28 = *(v26 + 16);
    if (v28)
    {
      v29 = 0;
      v30 = MEMORY[0x1E69E7CC0];
      v66 = *(v26 + 16);
      while (v29 < *(v26 + 16))
      {
        v31 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v32 = *(v6 + 72);
        sub_1B4C8951C(v26 + v31 + v32 * v29, v22);
        if (*&v22[*(v5 + 28)] == 50)
        {
          sub_1B4B811EC(v22, v16, v33);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v68 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B4BCED9C(0, *(v30 + 16) + 1, 1);
            v30 = v68;
          }

          v37 = *(v30 + 16);
          v36 = *(v30 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_1B4BCED9C((v36 > 1), v37 + 1, 1);
            v30 = v68;
          }

          *(v30 + 16) = v37 + 1;
          result = sub_1B4B811EC(v16, v30 + v31 + v37 * v32, v35);
          v28 = v66;
          v5 = v67;
        }

        else
        {
          result = sub_1B4C89580(v22);
        }

        if (v28 == ++v29)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_55;
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_47:
    if (*(v30 + 16))
    {
LABEL_38:
      v52 = v64;
      sub_1B4C8951C(v30 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v64);
      v53 = *(v52 + *(v5 + 28));
      v54 = *(v52 + *(v5 + 32));
      if (v54 <= 1)
      {
        if (*(v52 + *(v5 + 32)))
        {
          v61 = 1;
          v55 = v65;
          goto LABEL_52;
        }
      }

      else if (v54 != 2)
      {
        v55 = v65;
LABEL_51:
        v61 = sub_1B4D18DCC();
LABEL_52:

        v62 = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:v53 isIndoor:v61 & 1];
        sub_1B4C89580(v52);
        v63 = *(v30 + 16);

        *v55 = v62;
        v55[1] = v63;
        return result;
      }

      v55 = v65;
      goto LABEL_51;
    }

LABEL_48:

    goto LABEL_49;
  }

  if (result == 52)
  {
    goto LABEL_19;
  }

  if (result == 50)
  {
    v64 = v10;
    v43 = *(v26 + 16);
    if (v43)
    {
      v44 = 0;
      v30 = MEMORY[0x1E69E7CC0];
      while (v44 < *(v26 + 16))
      {
        v45 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v46 = *(v6 + 72);
        sub_1B4C8951C(v26 + v45 + v46 * v44, v13);
        if (*&v13[*(v5 + 28)] == 20)
        {
          sub_1B4B811EC(v13, v66, v47);
          v48 = swift_isUniquelyReferenced_nonNull_native();
          v68 = v30;
          if ((v48 & 1) == 0)
          {
            sub_1B4BCED9C(0, *(v30 + 16) + 1, 1);
            v30 = v68;
          }

          v51 = *(v30 + 16);
          v50 = *(v30 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_1B4BCED9C((v50 > 1), v51 + 1, 1);
            v30 = v68;
          }

          *(v30 + 16) = v51 + 1;
          result = sub_1B4B811EC(v66, v30 + v45 + v51 * v46, v49);
          v5 = v67;
        }

        else
        {
          result = sub_1B4C89580(v13);
        }

        if (v43 == ++v44)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
      return result;
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_37:
    if (*(v30 + 16))
    {
      goto LABEL_38;
    }

    goto LABEL_48;
  }

  if (result != 37)
  {
    goto LABEL_49;
  }

LABEL_19:
  MEMORY[0x1EEE9AC00](result);
  *(&v64 - 2) = a1;

  sub_1B499E3F0(sub_1B4CFBFD0, v38, (&v64 - 4), v26);
  if (!*(v39 + 16))
  {

    goto LABEL_49;
  }

  v40 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v41 = v39;
  sub_1B4C8951C(v39 + v40, v25);
  v42 = *&v25[*(v5 + 28)];
  if (v25[*(v5 + 32)] <= 1u && v25[*(v5 + 32)])
  {
    v56 = 1;
  }

  else
  {
    v56 = sub_1B4D18DCC();
  }

  v57 = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:v42 isIndoor:v56 & 1];
  sub_1B4C89580(v25);
  v58 = *(v41 + 16);

  v59 = v65;
  *v65 = v57;
  v59[1] = v58;
  return result;
}

uint64_t sub_1B4CFBA00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutRecord(0);
  v5 = *(a1 + *(v4 + 28));
  v6 = *(a2 + *(type metadata accessor for WorkoutState(0) + 24));
  if (v5 == [v6 effectiveTypeIdentifier])
  {
    v7 = *(a1 + *(v4 + 32));
    v8 = [v6 location];
    v9 = [v6 swimmingLocationType];
    if (v8 == 1)
    {
      if (v9 == 2)
      {
        v11 = 3;
      }

      else
      {
        v11 = 4 * (v9 == 1);
      }

      goto LABEL_17;
    }

    if (v8 == 3)
    {
      if (!v9)
      {
        v11 = 2;
        goto LABEL_17;
      }
    }

    else if (v8 == 2 && v9 == 0)
    {
      v11 = 1;
LABEL_17:
      v12 = sub_1B4976C84(v7, v11) ^ 1;
      return v12 & 1;
    }

    v11 = 0;
    goto LABEL_17;
  }

  v12 = 0;
  return v12 & 1;
}

unint64_t sub_1B4CFBB0C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE590, &qword_1B4D47928);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADCC0, &qword_1B4D47930) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1A800;
  v5 = *(type metadata accessor for WorkoutState(0) + 36);
  v6 = sub_1B4D1777C();
  (*(*(v6 - 8) + 16))(v4 + v3, a1 + v5, v6);
  type metadata accessor for FitnessContextQueryDescriptor(0);
  swift_storeEnumTagMultiPayload();
  v7 = sub_1B4C96C98(v4);
  swift_setDeallocating();
  sub_1B4CFBFF0(v4 + v3);
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_1B4CFBC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49AA274;

  return sub_1B4CFBD1C(a1, a3);
}

uint64_t sub_1B4CFBD1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4CFBD3C, 0, 0);
}

uint64_t sub_1B4CFBD3C()
{
  v27 = v0;
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v0[3] = &type metadata for CompletedWorkoutsFactGenerator.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67E0, &qword_1B4D478F0);
  v24 = sub_1B4D181CC();
  v25 = v4;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D4E420);
  (*(v3 + 8))(v24, v25, &type metadata for WorkoutWeekContext, &type metadata for WorkoutWeekContext, v2, v3);

  v5 = v0[2];
  if (v5)
  {
    v6 = v0[5];
    KeyPath = swift_getKeyPath();

    v9 = sub_1B4B80618(v5, sub_1B4CFBFA4, KeyPath, v8);

    v26 = v5;
    sub_1B4CFB350(v6, &v26, &v24);
    v10 = v24;
    v11 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE588, &qword_1B4D47920);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B4D1A800;
    v13 = *&v6[*(type metadata accessor for WorkoutState(0) + 24)];
    v14 = *(v9 + 16);
    v15 = v10;
    v16 = v13;
    v17 = v16;
    if (v14 && (sub_1B49E9DFC(v16), (v18 & 1) != 0))
    {
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v20 = *(v19 + 16);

    v21 = *(v5 + 16);

    *(v12 + 32) = v9;
    *(v12 + 40) = v17;
    *(v12 + 48) = v10;
    *(v12 + 56) = v11;
    *(v12 + 64) = v20;
    *(v12 + 72) = v21;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v22 = v0[1];

  return v22(v12);
}

uint64_t sub_1B4CFBFF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADCC0, &qword_1B4D47930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FitnessContextCoalescedQueryRequest.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v8 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v23 = sub_1B4A02DAC(v14);

  Request = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest(0);
  sub_1B4CFC848(a1 + *(Request + 24), v6);
  v16 = *(v8 + 48);
  if (v16(v6, 1, Descriptor) == 1)
  {
    v22 = a2;
    sub_1B4D17BBC();
    v17 = *(Descriptor + 20);
    if (qword_1EB8A64A8 != -1)
    {
      swift_once();
    }

    *&v10[v17] = qword_1EB8AC728;
    v18 = v16(v6, 1, Descriptor);

    a2 = v22;
    if (v18 != 1)
    {
      sub_1B4CFC8B8(v6);
    }
  }

  else
  {
    sub_1B4CFC97C(v6, v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  }

  v19 = v24;
  FitnessContextQueryDescriptor.init(_:)(v10, v13);
  sub_1B4CFC920(a1);
  if (v19)
  {
  }

  *a2 = v23;
  v21 = type metadata accessor for FitnessContextCoalescedQueryRequest(0);
  return sub_1B4CFC97C(v13, a2 + *(v21 + 20), type metadata accessor for FitnessContextQueryDescriptor);
}

uint64_t FitnessContextCoalescedQueryRequest.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest(0);
  sub_1B4CFCA90(&qword_1EB8AA6C0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4CFC3BC(void *a1, uint64_t *a2)
{
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v20 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor);
  v23 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a2;
  v7 = *(*a2 + 16);
  if (v7)
  {
    v18 = Descriptor;
    v19 = a1;
    v8 = sub_1B49B6EF0(v7, 0);
    v9 = sub_1B49B74A4(&v22, v8 + 4, v7, v6);
    v10 = v22;

    result = sub_1B49B75FC(v10);
    if (v9 != v7)
    {
      __break(1u);
      return result;
    }

    Descriptor = v18;
    a1 = v19;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v8;
  Request = type metadata accessor for FitnessContextCoalescedQueryRequest(0);
  MEMORY[0x1EEE9AC00](Request);
  *(&v17 - 2) = v13;
  sub_1B4CFCA90(&qword_1EB8AA710, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  v14 = v23;
  v15 = v21;
  result = sub_1B4D17DAC();
  if (!v15)
  {
    v16 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest(0) + 24);
    sub_1B4CFC8B8(a1 + v16);
    sub_1B4CFC97C(v14, a1 + v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
    return (*(v20 + 56))(a1 + v16, 0, 1, Descriptor);
  }

  return result;
}

uint64_t sub_1B4CFC61C(uint64_t a1)
{
  Request = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest(0);
  MEMORY[0x1EEE9AC00](Request);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B4CFCA90(&qword_1EB8AE598, type metadata accessor for FitnessContextCoalescedQueryRequest, &protocol conformance descriptor for FitnessContextCoalescedQueryRequest);
  (*(v6 + 32))(a1, v6);
  if (!v1)
  {
    sub_1B4CFCA90(&qword_1EB8AA6C0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);
    Request = sub_1B4D17D6C();
    sub_1B4CFC920(v5);
  }

  return Request;
}

uint64_t sub_1B4CFC788()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest(0);
  sub_1B4CFCA90(&qword_1EB8AA6C0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4CFC848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4CFC8B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4CFC920(uint64_t a1)
{
  Request = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest(0);
  (*(*(Request - 8) + 8))(a1, Request);
  return a1;
}

uint64_t sub_1B4CFC97C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4CFCA90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ThisWeekCurrentWorkoutDistanceFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t ThisWeekCurrentWorkoutDistanceFact.TemplateString.rawValue.getter()
{
  v1 = 0xD000000000000069;
  v2 = 0xD0000000000000CELL;
  if (*v0 != 2)
  {
    v2 = 0xD0000000000000CALL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000070;
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

uint64_t sub_1B4CFCBD8()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4CFCC90(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4CFCD34(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4CFCDF4(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000069;
  v3 = "ringsPropertiesThisWeek";
  v4 = "_type> workouts.";
  v5 = 0xD0000000000000CELL;
  if (*v1 != 2)
  {
    v5 = 0xD0000000000000CALL;
    v4 = "ime_last_week_total_distance>.";
  }

  if (*v1)
  {
    v2 = 0xD000000000000070;
    v3 = "<activity_type> workouts.";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

id ThisWeekCurrentWorkoutDistanceFact.placeholders()()
{
  v1 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  sub_1B4B026F4(v0, &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1B4CFD144(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B4CFD1A8;
  *(v7 + 24) = v6;
  *(v4 + 32) = 0xD00000000000001BLL;
  *(v4 + 40) = 0x80000001B4D66FB0;
  *(v4 + 48) = sub_1B4AF87E4;
  *(v4 + 56) = v7;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  [*v0 effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v9 = result;
    v10 = sub_1B4D1818C();
    v12 = v11;

    strcpy((v4 + 80), "activity_type");
    *(v4 + 94) = -4864;
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    *(v4 + 96) = sub_1B4993DFC;
    *(v4 + 104) = v13;
    *(v4 + 112) = 0;
    *(v4 + 120) = 0;
    sub_1B4B026F4(v0, &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = swift_allocObject();
    sub_1B4CFD144(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v5);
    *(v4 + 128) = 0xD000000000000018;
    *(v4 + 136) = 0x80000001B4D66FD0;
    *(v4 + 144) = sub_1B4CFD3D4;
    *(v4 + 152) = v14;
    *(v4 + 160) = 0;
    *(v4 + 168) = 0;
    sub_1B4B026F4(v0, &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = swift_allocObject();
    sub_1B4CFD144(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v5);
    *(v4 + 176) = 0xD000000000000022;
    *(v4 + 184) = 0x80000001B4D66FF0;
    *(v4 + 192) = sub_1B4CFD738;
    *(v4 + 200) = v15;
    *(v4 + 208) = 0;
    *(v4 + 216) = 0;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4CFD144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4CFD1A8()
{
  v1 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  return sub_1B4D133E8(v2 + *(v1 + 20), *v2, 0, 1);
}

uint64_t sub_1B4CFD220(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact(0);
  sub_1B4B02BB8(a2 + *(v10 + 28), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4BD9624(v5);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = sub_1B4D133E8(v9, *a2, 0, 1);
    (*(v7 + 8))(v9, v6);
    return v12;
  }
}

uint64_t sub_1B4CFD3EC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact(0);
  sub_1B4B02BB8(a2 + *(v10 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B4BD9624(v5);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = sub_1B4D133E8(v9, *a2, 0, 1);
    (*(v7 + 8))(v9, v6);
    return v12;
  }
}

uint64_t objectdestroyTm_8()
{
  v1 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 1) + 64);
  v14 = v0;
  v4 = v0 + v3;

  v5 = v1[5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v4 + v5, v6);
  v9 = v1[6];
  v10 = *(v7 + 48);
  if (!v10(v4 + v9, 1, v6))
  {
    v8(v4 + v9, v6);
  }

  v11 = v1[7];
  if (!v10(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  return MEMORY[0x1EEE6BDD0](v14, v3 + v13, v2 | 7);
}

uint64_t sub_1B4CFD750(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ThisWeekCurrentWorkoutDistanceFact(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t ThisWeekCurrentWorkoutDistanceFact.selectTemplate(formatter:)@<X0>(char *a1@<X8>)
{
  v19 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v18 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact(0);
  sub_1B4B02BB8(v1 + *(v11 + 28), v10);
  v12 = *(v3 + 48);
  v13 = v12(v10, 1, v2);
  result = sub_1B4BD9624(v10);
  if (v13 == 1)
  {
    sub_1B4B02BB8(v1 + *(v11 + 24), v7);
    if (v12(v7, 1, v2) == 1)
    {
      result = sub_1B4BD9624(v7);
LABEL_7:
      v15 = 1;
      goto LABEL_11;
    }

    v16 = v18;
    (*(v3 + 32))(v18, v7, v2);
    sub_1B49B0578(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968088]);
    if (sub_1B4D180EC())
    {
      result = (*(v3 + 8))(v16, v2);
      goto LABEL_7;
    }

    v17 = sub_1B4D180FC();
    result = (*(v3 + 8))(v16, v2);
    if (v17)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_11:
  *v19 = v15;
  return result;
}

unint64_t sub_1B4CFDA9C()
{
  result = qword_1EB8AE5A0;
  if (!qword_1EB8AE5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE5A0);
  }

  return result;
}

unint64_t sub_1B4CFDB38()
{
  result = qword_1EB8AE5B8;
  if (!qword_1EB8AE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE5B8);
  }

  return result;
}

unint64_t sub_1B4CFDB90()
{
  result = qword_1EB8AE5C0;
  if (!qword_1EB8AE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE5C0);
  }

  return result;
}

unint64_t sub_1B4CFDC00(uint64_t a1)
{
  result = sub_1B4CFDC28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4CFDC28()
{
  result = qword_1EB8AE5C8;
  if (!qword_1EB8AE5C8)
  {
    type metadata accessor for ThisWeekCurrentWorkoutDistanceFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE5C8);
  }

  return result;
}

uint64_t StatisticsPropertyValue.init(measurement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata baseUnit];
  v10 = type metadata accessor for StatisticsPropertyValue(0, a2, v8, v9);
  v11 = v10[11];
  v12 = sub_1B4D1746C();
  sub_1B4D1745C();

  sub_1B4D1742C();
  *(a3 + v10[7]) = 1;
  v13 = *(v12 - 8);
  v17 = *(v13 + 16);
  v17(a3, a3 + v11, v12);
  v14 = [ObjCClassFromMetadata baseUnit];
  sub_1B4D1741C();
  (*(v13 + 8))(a1, v12);
  v17(a3 + v10[9], a3 + v11, v12);
  v15 = a3 + v10[8];

  return (v17)(v15, a3 + v11, v12);
}

uint64_t StatisticsPropertyValue.mean.getter(uint64_t a1)
{
  if (*(v1 + *(a1 + 28)) >= 1)
  {
    sub_1B4D1746C();
    sub_1B4D1742C();
  }

  v2 = [swift_getObjCClassFromMetadata() baseUnit];

  return sub_1B4D1741C();
}

void static StatisticsPropertyValue.add(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = sub_1B4D1746C();
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  v21 = type metadata accessor for StatisticsPropertyValue(0, a3, v19, v20);
  v22 = *(a1 + v21[7]);
  sub_1B4D1742C();
  sub_1B4D1742C();
  v23 = *(a2 + v21[7]);
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v28 = v22 + v23;
    sub_1B4D1743C();
    sub_1B4CFAB8C(a1 + v21[8], a2 + v21[8], v15);
    v24 = v29;
    sub_1B4CFABA4(a1 + v21[9], a2 + v21[9], v29);
    v25 = v30;
    sub_1B4D1743C();
    sub_1B4D1742C();
    v26 = [swift_getObjCClassFromMetadata() baseUnit];
    v27 = v31;
    sub_1B4D1741C();
    StatisticsPropertyValue.init(count:total:min:max:sumY2:sumXY:)(v28, v18, v15, v24, v25, v27, a3, v32);
  }
}

uint64_t StatisticsPropertyValue.init(count:total:min:max:sumY2:sumXY:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_1B4D1746C();
  v22 = *(*(v16 - 8) + 32);
  (v22)((v16 - 8), a8, a2, v16);
  v19 = type metadata accessor for StatisticsPropertyValue(0, a7, v17, v18);
  *(a8 + v19[7]) = a1;
  v22(a8 + v19[10], a5, v16);
  v22(a8 + v19[8], a3, v16);
  v22(a8 + v19[9], a4, v16);
  v20 = a8 + v19[11];

  return (v22)(v20, a6, v16);
}

uint64_t StatisticsPropertyValue.total.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1B4D1746C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t StatisticsPropertyValue.min.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1B4D1746C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t StatisticsPropertyValue.max.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1B4D1746C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t StatisticsPropertyValue.sumY2.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1B4D1746C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t StatisticsPropertyValue.sumXY.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1B4D1746C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t StatisticsPropertyValue.variance.getter(uint64_t a1)
{
  v3 = sub_1B4D1746C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = *(v1 + *(a1 + 28));
  if (v8 < 1)
  {
    *&result = 0.0;
  }

  else
  {
    v9 = v5;
    sub_1B4D1742C();
    v11 = v10 / v8;
    StatisticsPropertyValue.mean.getter(a1);
    sub_1B4D1742C();
    v13 = v12;
    (*(v4 + 8))(v7, v9);
    *&result = v11 - v13 * v13;
  }

  return result;
}

long double StatisticsPropertyValue.std.getter(uint64_t a1)
{
  v1 = StatisticsPropertyValue.variance.getter(a1);
  if ((v3 & 1) == 0)
  {
    return sqrt(*&v1);
  }

  return result;
}

uint64_t StatisticsPropertyValue.sumX.getter(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() baseUnit];

  return sub_1B4D1741C();
}

double StatisticsPropertyValue.sumOfSquares.getter(uint64_t a1)
{
  sub_1B4D1746C();
  sub_1B4D1742C();
  return result;
}

uint64_t StatisticsPropertyValue.slope.getter(uint64_t a1)
{
  v3 = sub_1B4D1746C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = *(v1 + *(a1 + 28));
  if (v11 < 2 || (v12 = v11, v13 = v8, sub_1B4D1742C(), v15 = v14, StatisticsPropertyValue.sumX.getter(a1), sub_1B4D1742C(), v17 = v16, v18 = *(v4 + 8), v18(v10, v13), sub_1B4D1742C(), v20 = v19, v21 = *(v1 + *(a1 + 28)), v22 = (v21 + 1.0) * v21 * (v21 + v21 + 1.0) / 6.0 * v12, StatisticsPropertyValue.sumX.getter(a1), sub_1B4D1742C(), v24 = v23, v18(v10, v13), StatisticsPropertyValue.sumX.getter(a1), sub_1B4D1742C(), v26 = v25, v18(v6, v13), v27 = v22 - v24 * v26, v27 == 0.0))
  {
    *&result = 0.0;
  }

  else
  {
    *&result = (v15 * v12 - v17 * v20) / v27;
  }

  return result;
}

uint64_t StatisticsPropertyValue.typicalRange.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4D1746C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v33 = &v30 - v15;
  v16 = StatisticsPropertyValue.variance.getter(a1);
  if (v17)
  {
    swift_getWitnessTable();
    v18 = sub_1B4D186EC();
    v19 = *(*(v18 - 8) + 56);

    return v19(a2, 1, 1, v18);
  }

  else
  {
    sqrt(*&v16);
    StatisticsPropertyValue.mean.getter(a1);
    sub_1B4D1742C();
    v31 = v7;
    v30 = *(v5 + 8);
    v30(v13, v4);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = a2;
    v22 = ObjCClassFromMetadata;
    v23 = [ObjCClassFromMetadata baseUnit];
    sub_1B4D1741C();
    StatisticsPropertyValue.mean.getter(a1);
    sub_1B4D1742C();
    v24 = v30;
    v30(v10, v4);
    v25 = [v22 baseUnit];
    sub_1B4D1741C();
    v26 = *(v5 + 16);
    v27 = v33;
    v26(v10, v33, v4);
    v26(v31, v13, v4);
    swift_getWitnessTable();
    v28 = v32;
    sub_1B4D186DC();
    v24(v13, v4);
    v24(v27, v4);
    v29 = sub_1B4D186EC();
    return (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  }
}

uint64_t static StatisticsPropertyValue.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B4D1746C();
  swift_getWitnessTable();
  if (sub_1B4D1816C() & 1) != 0 && (v8 = type metadata accessor for StatisticsPropertyValue(0, a3, v6, v7), *(a1 + *(v8 + 28)) == *(a2 + *(v8 + 28))) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C())
  {
    return sub_1B4D1816C() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t StatisticsPropertyValue.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1B4D1746C();
  swift_getWitnessTable();
  sub_1B4D1808C();
  MEMORY[0x1B8C7D2C0](*(v2 + *(a2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t StatisticsPropertyValue.hashValue.getter(uint64_t a1)
{
  sub_1B4D18E8C();
  StatisticsPropertyValue.hash(into:)(v3, a1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4CFEF94(uint64_t a1, uint64_t a2)
{
  sub_1B4D18E8C();
  StatisticsPropertyValue.hash(into:)(v4, a2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4CFEFFC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4CFF054(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4CFF0B4(uint64_t a1)
{
  result = sub_1B4D1746C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AnnounceUtteranceResult.init(synthesisDuration:synthesizedAudioLength:announceDuration:announceResult:announceSource:debugAudioURL:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v10 = *a4;
  *a6 = a7;
  *(a6 + 8) = a1;
  *(a6 + 16) = a2 & 1;
  *(a6 + 24) = a8;
  *(a6 + 32) = a3;
  *(a6 + 33) = v10;
  v11 = a6 + *(type metadata accessor for AnnounceUtteranceResult(0) + 36);

  return sub_1B498CA24(a5, v11);
}

uint64_t type metadata accessor for AnnounceUtteranceResult(uint64_t a1)
{
  result = qword_1EDC39138;
  if (!qword_1EDC39138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnnounceUtteranceResult.debugAudioURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AnnounceUtteranceResult(0) + 36);

  return sub_1B498D200(v3, a1);
}

unint64_t sub_1B4CFF288()
{
  v1 = 0x65636E756F6E6E61;
  v2 = *v0;
  v3 = 0x6475416775626564;
  if (v2 == 4)
  {
    v3 = 0x65636E756F6E6E61;
  }

  if (v2 != 3)
  {
    v1 = v3;
  }

  v4 = 0xD000000000000016;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B4CFF364@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4CFFE5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4CFF38C(uint64_t a1)
{
  v2 = sub_1B4CFF690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4CFF3C8(uint64_t a1)
{
  v2 = sub_1B4CFF690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnnounceUtteranceResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE5D0, &qword_1B4D47BC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4CFF690();
  sub_1B4D18EFC();
  v11[15] = 0;
  sub_1B4D18CDC();
  if (!v2)
  {
    v11[14] = 1;
    sub_1B4D18C8C();
    v11[13] = 2;
    sub_1B4D18CDC();
    v11[12] = 3;
    sub_1B4D18C7C();
    v11[11] = *(v3 + 33);
    v11[10] = 4;
    sub_1B4CFF6E4();
    sub_1B4D18CAC();
    type metadata accessor for AnnounceUtteranceResult(0);
    v11[9] = 5;
    sub_1B4D1767C();
    sub_1B4CFFAFC(&qword_1EB8AE5E8, MEMORY[0x1E6968FB8], v9);
    sub_1B4D18CAC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B4CFF690()
{
  result = qword_1EB8AE5D8;
  if (!qword_1EB8AE5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE5D8);
  }

  return result;
}

unint64_t sub_1B4CFF6E4()
{
  result = qword_1EB8AE5E0;
  if (!qword_1EB8AE5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE5E0);
  }

  return result;
}

uint64_t AnnounceUtteranceResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6978, &qword_1B4D47BC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE5F0, &qword_1B4D47BD0);
  v7 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v21 - v8;
  v10 = type metadata accessor for AnnounceUtteranceResult(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1B4CFF690();
  sub_1B4D18EEC();
  if (!v2)
  {
    v14 = v6;
    v31 = 0;
    v15 = v23;
    sub_1B4D18BDC();
    *v12 = v16;
    v30 = 1;
    *(v12 + 1) = sub_1B4D18B8C();
    v12[16] = v17 & 1;
    v29 = 2;
    sub_1B4D18BDC();
    *(v12 + 3) = v19;
    v28 = 3;
    v12[32] = sub_1B4D18B7C();
    v26 = 4;
    sub_1B4CFFAA8();
    sub_1B4D18BAC();
    v12[33] = v27;
    sub_1B4D1767C();
    v25 = 5;
    sub_1B4CFFAFC(&qword_1EB8AE600, MEMORY[0x1E6968FD0], v20);
    sub_1B4D18BAC();
    (*(v7 + 8))(v9, v15);
    sub_1B498CA24(v14, &v12[*(v10 + 36)]);
    sub_1B4CFFB40(v12, v22);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

unint64_t sub_1B4CFFAA8()
{
  result = qword_1EB8AE5F8;
  if (!qword_1EB8AE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE5F8);
  }

  return result;
}

uint64_t sub_1B4CFFAFC(unint64_t *a1, uint64_t a2, double a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B4D1767C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4CFFB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnounceUtteranceResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B4CFFBFC(uint64_t a1)
{
  sub_1B49F03FC(319, &qword_1EDC378D8, MEMORY[0x1E69E63B0]);
  if (v1 <= 0x3F)
  {
    sub_1B49F03FC(319, &qword_1EDC3CEB0, MEMORY[0x1E69E6370]);
    if (v2 <= 0x3F)
    {
      sub_1B49F03FC(319, &qword_1EDC39128, &type metadata for AnnounceUtteranceSource);
      if (v4 <= 0x3F)
      {
        sub_1B4CFFCEC(319, v3);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4CFFCEC(uint64_t a1, double a2)
{
  if (!qword_1EDC37850)
  {
    sub_1B4D1767C();
    v2 = sub_1B4D1880C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC37850);
    }
  }
}

unint64_t sub_1B4CFFD58()
{
  result = qword_1EB8AE608;
  if (!qword_1EB8AE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE608);
  }

  return result;
}

unint64_t sub_1B4CFFDB0()
{
  result = qword_1EB8AE610;
  if (!qword_1EB8AE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE610);
  }

  return result;
}

unint64_t sub_1B4CFFE08()
{
  result = qword_1EB8AE618;
  if (!qword_1EB8AE618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE618);
  }

  return result;
}

uint64_t sub_1B4CFFE5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001B4D604B0 == a2;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B4D60500 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D604D0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E756F6E6E61 && a2 == 0xEE00746C75736552 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65636E756F6E6E61 && a2 == 0xEE00656372756F53 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6475416775626564 && a2 == 0xED00004C52556F69)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

uint64_t FitnessContextCoalescedQueryRequest.queryDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + *(type metadata accessor for FitnessContextCoalescedQueryRequest(0) + 20);

  return sub_1B49EEFF0(v4, a1);
}

uint64_t type metadata accessor for FitnessContextCoalescedQueryRequest(uint64_t a1)
{
  result = qword_1EDC37708;
  if (!qword_1EDC37708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static FitnessContextCoalescedQueryRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B4BD7FE0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for FitnessContextCoalescedQueryRequest(0) + 20);

  return _s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(a1 + v4, a2 + v4);
}

uint64_t FitnessContextCoalescedQueryRequest.hash(into:)(__int128 *a1)
{
  sub_1B4D00370(a1, *v1);
  type metadata accessor for FitnessContextCoalescedQueryRequest(0);
  return FitnessContextQueryDescriptor.hash(into:)(a1);
}

uint64_t FitnessContextCoalescedQueryRequest.hashValue.getter()
{
  sub_1B4D18E8C();
  sub_1B4D00370(v2, *v0);
  type metadata accessor for FitnessContextCoalescedQueryRequest(0);
  FitnessContextQueryDescriptor.hash(into:)(v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4D00210()
{
  sub_1B4D18E8C();
  sub_1B4D00370(v2, *v0);
  FitnessContextQueryDescriptor.hash(into:)(v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4D002AC(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D00370(v3, *v1);
  FitnessContextQueryDescriptor.hash(into:)(v3);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4D00300(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1B4BD7FE0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return static FitnessContextQueryDescriptor.== infix(_:_:)(a1 + v6, a2 + v6);
}

void sub_1B4D00370(__int128 *a1, uint64_t a2)
{
  sub_1B4D18EDC();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x1B8C7D290](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1B4D18E8C();

        sub_1B4D1820C();
        v10 = sub_1B4D18EDC();

        v7 ^= v10;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

unint64_t sub_1B4D004D0()
{
  result = qword_1EB8AE620;
  if (!qword_1EB8AE620)
  {
    type metadata accessor for FitnessContextCoalescedQueryRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE620);
  }

  return result;
}

void sub_1B4D00550(uint64_t a1)
{
  sub_1B4A22E94();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FitnessContextQueryDescriptor(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t ActivitySharingAnniversaryFact.TemplateString.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4D00654()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4D006C8(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4D0071C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t ActivitySharingAnniversaryFact.SubTemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t ActivitySharingAnniversaryFact.SubTemplateString.rawValue.getter()
{
  v1 = 0xD00000000000003BLL;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000002FLL;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000045;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B4D00880()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4D00930(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4D009CC(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4D00A84(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000045;
  v3 = "date>. <sub_templates>";
  v4 = "closure_count> times.";
  v5 = 0xD00000000000003BLL;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000002FLL;
    v4 = "etition with <friend_name>.";
  }

  if (*v1)
  {
    v3 = "> workouts this week.";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

Swift::String __swiftcall ActivitySharingAnniversaryFact.separator()()
{
  v0 = 32;
  v1 = 0xE100000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t ActivitySharingAnniversaryFact.placeholders()()
{
  v1 = v0;
  v2 = type metadata accessor for ActivitySharingAnniversaryFact(0);
  v3 = (v2 - 8);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B4D1CBF0;
  v7 = (v0 + *(type metadata accessor for ActivitySharingFriend(0) + 20));
  v9 = *v7;
  v8 = v7[1];
  *(v6 + 32) = 0x6E5F646E65697266;
  *(v6 + 40) = 0xEB00000000656D61;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  *(v6 + 48) = sub_1B4993DFC;
  *(v6 + 56) = v10;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  v27 = *(v1 + v3[9]);

  v11 = sub_1B4D18D5C();
  v13 = v12;
  strcpy((v6 + 80), "number_years");
  *(v6 + 93) = 0;
  *(v6 + 94) = -5120;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  *(v6 + 96) = sub_1B4994004;
  *(v6 + 104) = v14;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  sub_1B4B19C44(v1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_1B4D00F00(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *(v6 + 128) = 0xD000000000000017;
  *(v6 + 136) = 0x80000001B4D67020;
  *(v6 + 144) = sub_1B4D00F64;
  *(v6 + 152) = v16;
  *(v6 + 160) = 0;
  *(v6 + 168) = 0;
  v27 = *(v1 + v3[7]);
  v17 = sub_1B4D18D5C();
  v19 = v18;
  *(v6 + 176) = 0xD000000000000012;
  *(v6 + 184) = 0x80000001B4D67040;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  *(v6 + 192) = sub_1B4994004;
  *(v6 + 200) = v20;
  *(v6 + 208) = 0;
  *(v6 + 216) = 0;
  v27 = *(v1 + v3[8]);
  v21 = sub_1B4D18D5C();
  v23 = v22;
  *(v6 + 224) = 0xD000000000000017;
  *(v6 + 232) = 0x80000001B4D67060;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v23;
  *(v6 + 240) = sub_1B4994004;
  *(v6 + 248) = v24;
  *(v6 + 256) = 0;
  *(v6 + 264) = 0;
  return v6;
}

uint64_t sub_1B4D00E34(uint64_t a1)
{
  type metadata accessor for ActivitySharingFriend(0);
  v2 = sub_1B4D11F8C();
  [v2 setDateStyle_];

  v3 = OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter;
  [*(a1 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter) setTimeStyle_];
  v4 = *(a1 + v3);
  v5 = sub_1B4D1771C();
  v6 = [v4 stringFromDate_];

  v7 = sub_1B4D1818C();
  return v7;
}

uint64_t sub_1B4D00F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingAnniversaryFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4D00F64(uint64_t a1)
{
  type metadata accessor for ActivitySharingAnniversaryFact(0);

  return sub_1B4D00E34(a1);
}

uint64_t ActivitySharingAnniversaryFact.selectTemplate(formatter:)@<X0>(BOOL *a1@<X8>)
{
  result = type metadata accessor for ActivitySharingFriend(0);
  *a1 = *(v1 + *(result + 20) + 8) == 0;
  return result;
}

uint64_t sub_1B4D01054@<X0>(BOOL *a1@<X8>)
{
  result = type metadata accessor for ActivitySharingFriend(0);
  *a1 = *(v1 + *(result + 20) + 8) == 0;
  return result;
}

char *sub_1B4D0109C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for ActivitySharingAnniversaryFact(0);
  if (*(v0 + *(v4 + 20)) < 1)
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v5 = sub_1B4A1EDAC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1B4A1EDAC((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v5[v7 + 32] = 0;
  }

  if (*(v0 + *(v4 + 24)) >= 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1B4A1EDAC(0, *(v5 + 2) + 1, 1, v5);
    }

    v9 = *(v5 + 2);
    v8 = *(v5 + 3);
    if (v9 >= v8 >> 1)
    {
      v5 = sub_1B4A1EDAC((v8 > 1), v9 + 1, 1, v5);
    }

    *(v5 + 2) = v9 + 1;
    v5[v9 + 32] = 1;
  }

  v10 = type metadata accessor for ActivitySharingFriend(0);
  v11 = v10;
  if (*(v0 + *(v10 + 44)) == 1)
  {
    sub_1B4D016E0(v0 + *(v10 + 52), v3);
    v12 = sub_1B4D177CC();
    v13 = (*(*(v12 - 8) + 48))(v3, 1, v12);
    sub_1B4D01750(v3);
    if (v13 != 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1B4A1EDAC(0, *(v5 + 2) + 1, 1, v5);
      }

      v15 = *(v5 + 2);
      v18 = *(v5 + 3);
      v16 = v15 + 1;
      if (v15 >= v18 >> 1)
      {
        v5 = sub_1B4A1EDAC((v18 > 1), v15 + 1, 1, v5);
      }

      v17 = 2;
      goto LABEL_25;
    }
  }

  if (*(v0 + *(v11 + 40)) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1B4A1EDAC(0, *(v5 + 2) + 1, 1, v5);
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v5 = sub_1B4A1EDAC((v14 > 1), v15 + 1, 1, v5);
    }

    v17 = 3;
LABEL_25:
    *(v5 + 2) = v16;
    v5[v15 + 32] = v17;
  }

  return v5;
}

unint64_t sub_1B4D01388()
{
  result = qword_1EB8AE628;
  if (!qword_1EB8AE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE628);
  }

  return result;
}

unint64_t sub_1B4D01410()
{
  result = qword_1EB8AE640;
  if (!qword_1EB8AE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE640);
  }

  return result;
}

unint64_t sub_1B4D01498()
{
  result = qword_1EB8AE658;
  if (!qword_1EB8AE658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE658);
  }

  return result;
}

unint64_t sub_1B4D014F0()
{
  result = qword_1EB8AE660;
  if (!qword_1EB8AE660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE660);
  }

  return result;
}

uint64_t sub_1B4D01544(uint64_t a1)
{
  result = sub_1B4D0167C(&qword_1EB8AE668, &protocol conformance descriptor for ActivitySharingAnniversaryFact);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4D0158C()
{
  result = qword_1EB8AE670;
  if (!qword_1EB8AE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE670);
  }

  return result;
}

unint64_t sub_1B4D015E4()
{
  result = qword_1EB8AE678;
  if (!qword_1EB8AE678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE678);
  }

  return result;
}

uint64_t sub_1B4D01638(uint64_t a1)
{
  result = sub_1B4D0167C(&qword_1EB8AE680, &protocol conformance descriptor for ActivitySharingAnniversaryFact);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4D0167C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ActivitySharingAnniversaryFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4D016E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4D01750(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4D017B8@<X0>(uint64_t (*a1)(void, void, void)@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v184 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v181 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v171 = (&v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6650, &unk_1B4D2FDC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v170 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v177 = &v166 - v7;
  v179 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v178 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v169 = (&v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v168 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v176 = &v166 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v186 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v183 = &v166 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v185 = &v166 - v18;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v202 = *(Metrics - 8);
  v203 = Metrics;
  MEMORY[0x1EEE9AC00](Metrics);
  v182 = &v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v180 = &v166 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v187 = (&v166 - v24);
  v175 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v167 = (&v166 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v166 = &v166 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v173 = &v166 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6658, &qword_1B4D1A650);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v197 = &v166 - v31;
  v196 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v195 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v201 = &v166 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v200 = &v166 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v209);
  v205 = &v166 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v194 = &v166 - v37;
  v193 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v199 = &v166 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v198 = &v166 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v208);
  v204 = &v166 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = &v166 - v43;
  v45 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v191 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v166 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for RingsPropertiesQuery(0);
  v210 = *(v48 - 8);
  v211 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v188 = &v166 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v166 - v51;
  v207 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v207);
  v206 = &v166 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v56 = &v166 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v166 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE718, &qword_1B4D48138);
  MEMORY[0x1EEE9AC00](v60 - 8);
  v190 = &v166 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v213 = &v166 - v63;
  sub_1B4974FBC(a1, v59, &qword_1EB8A6688, &qword_1B4D1A660);
  v64 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  if ((*(*(v64 - 8) + 48))(v59, 1, v64) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE720, &qword_1B4D48140);
    sub_1B49B0578(&qword_1EB8AE728, &qword_1EB8AE720, &qword_1B4D48140, &unk_1B4D1A710);
    swift_allocError();
    *v65 = 0;
    v65[1] = 0;
    swift_willThrow();
    sub_1B4D08664(a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
    v66 = &qword_1EB8A6688;
    v67 = &qword_1B4D1A660;
    v68 = v59;
    return sub_1B4975024(v68, v66, v67);
  }

  v189 = v59;
  sub_1B4974FBC(v59, v56, &qword_1EB8A6688, &qword_1B4D1A660);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v70 = v206;
      sub_1B4D086C4(v56, v206, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
      sub_1B4974FBC(v70 + v207[5], v44, &qword_1EB8A6680, &unk_1B4D2FD90);
      v71 = *(v191 + 48);
      if (v71(v44, 1, v45) == 1)
      {
        v72 = MEMORY[0x1E69E7CC0];
        *v47 = MEMORY[0x1E69E7CC0];
        *(v47 + 1) = v72;
        sub_1B4D17BBC();
        v73 = *(v45 + 28);
        v74 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
        (*(*(v74 - 8) + 56))(&v47[v73], 1, 1, v74);
        v75 = *(v45 + 32);
        v76 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
        (*(*(v76 - 8) + 56))(&v47[v75], 1, 1, v76);
        if (v71(v44, 1, v45) != 1)
        {
          sub_1B4975024(v44, &qword_1EB8A6680, &unk_1B4D2FD90);
        }
      }

      else
      {
        sub_1B4D086C4(v44, v47, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
      }

      v102 = v212;
      RingsPropertiesQuery.init(_:)(v47, v52);
      if (v102)
      {
        sub_1B4D08664(a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
        sub_1B4D08664(v70, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
        return sub_1B4975024(v189, &qword_1EB8A6688, &qword_1B4D1A660);
      }

      v106 = v213;
      sub_1B4D086C4(v52, v213, type metadata accessor for RingsPropertiesQuery);
      (*(v210 + 56))(v106, 0, 1, v211);
      v107 = v207[6];
      v108 = v173;
      sub_1B4974FBC(v70 + v107, v173, &qword_1EB8A6678, &qword_1B4D3CE20);
      v109 = v175;
      v212 = *(v174 + 48);
      v110 = v212(v108, 1, v175);
      sub_1B4975024(v108, &qword_1EB8A6678, &qword_1B4D3CE20);
      if (v110 == 1)
      {
        v212 = 0;
        v209 = 0;
        v111 = 0;
        v112 = v189;
        v113 = v203;
        v114 = v185;
      }

      else
      {
        v133 = v166;
        sub_1B4974FBC(v206 + v107, v166, &qword_1EB8A6678, &qword_1B4D3CE20);
        v134 = v212;
        if (v212(v133, 1, v109) == 1)
        {
          v135 = v167;
          *v167 = 0;
          v135[1] = 0;
          v135[2] = MEMORY[0x1E69E7CC0];
          sub_1B4D17BBC();
          v136 = v134(v133, 1, v109);
          v112 = v189;
          if (v136 != 1)
          {
            sub_1B4975024(v133, &qword_1EB8A6678, &qword_1B4D3CE20);
          }
        }

        else
        {
          v135 = v167;
          sub_1B4D086C4(v133, v167, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
          v112 = v189;
        }

        RingsProperties.init(_:)(v135, v214);
        v113 = v203;
        v114 = v185;
        v212 = v214[0];
        v209 = v214[1];
        v111 = v214[2];
      }

      v145 = v206;
      sub_1B4974FBC(v206 + v207[7], v114, &qword_1EB8A6670, &unk_1B4D2FDA0);
      v146 = *(v202 + 48);
      if (v146(v114, 1, v113) == 1)
      {
        v147 = v187;
        *v187 = 0;
        v147[1] = 0;
        *(v147 + 16) = 0;
        sub_1B4D17BBC();
        sub_1B4D08664(v145, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
        if (v146(v114, 1, v113) != 1)
        {
          sub_1B4975024(v114, &qword_1EB8A6670, &unk_1B4D2FDA0);
        }

        v148 = v187;
      }

      else
      {
        sub_1B4D08664(v145, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
        v149 = v187;
        sub_1B4D086C4(v114, v187, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
        v148 = v149;
      }

      v150 = v212;
      v151 = v209;
      goto LABEL_61;
    }

    v77 = v205;
    sub_1B4D086C4(v56, v205, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
    v90 = v197;
    sub_1B4974FBC(v77 + *(v209 + 20), v197, &qword_1EB8A6658, &qword_1B4D1A650);
    v91 = *(v195 + 48);
    v92 = v196;
    if (v91(v90, 1, v196) == 1)
    {
      v93 = MEMORY[0x1E69E7CC0];
      v94 = v201;
      *v201 = MEMORY[0x1E69E7CC0];
      *(v94 + 1) = v93;
      sub_1B4D17BBC();
      v95 = *(v92 + 28);
      v96 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
      (*(*(v96 - 8) + 56))(&v94[v95], 1, 1, v96);
      v97 = *(v92 + 32);
      v98 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
      (*(*(v98 - 8) + 56))(&v94[v97], 1, 1, v98);
      v99 = v91(v90, 1, v92);
      v88 = v189;
      v100 = v212;
      v101 = v200;
      if (v99 != 1)
      {
        sub_1B4975024(v90, &qword_1EB8A6658, &qword_1B4D1A650);
      }
    }

    else
    {
      v94 = v201;
      sub_1B4D086C4(v90, v201, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      v88 = v189;
      v100 = v212;
      v101 = v200;
    }

    FitnessPlusPropertiesQuery.init(_:)(v94, v101);
    if (v100)
    {
      sub_1B4D08664(a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
      v105 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult;
      goto LABEL_23;
    }

    v212 = a1;
    sub_1B4D08664(v101, type metadata accessor for FitnessPlusPropertiesQuery);
    (*(v210 + 56))(v213, 1, 1, v211);
    v124 = *(v209 + 24);
    v125 = v177;
    sub_1B4974FBC(v77 + v124, v177, &qword_1EB8A6650, &unk_1B4D2FDC0);
    v126 = v77;
    v127 = v184;
    v208 = *(v181 + 48);
    v128 = (v208)(v125, 1, v184);
    sub_1B4975024(v125, &qword_1EB8A6650, &unk_1B4D2FDC0);
    if (v128 == 1)
    {
      v130 = v202;
      v129 = v203;
      v131 = v186;
      v123 = v182;
      v112 = v189;
      v132 = v126;
    }

    else
    {
      v141 = v170;
      sub_1B4974FBC(v126 + v124, v170, &qword_1EB8A6650, &unk_1B4D2FDC0);
      v142 = v208;
      v143 = (v208)(v141, 1, v127);
      v130 = v202;
      if (v143 == 1)
      {
        v144 = v171;
        *v171 = 0;
        v144[1] = 0;
        v144[2] = MEMORY[0x1E69E7CC0];
        sub_1B4D17BBC();
        if (v142(v141, 1, v127) != 1)
        {
          sub_1B4975024(v141, &qword_1EB8A6650, &unk_1B4D2FDC0);
        }
      }

      else
      {
        v144 = v171;
        sub_1B4D086C4(v141, v171, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
      }

      FitnessPlusProperties.init(_:)(v144, v214);
      v129 = v203;
      v131 = v186;
      v123 = v182;
      v112 = v189;
      v132 = v205;
    }

    sub_1B4974FBC(v132 + *(v209 + 28), v131, &qword_1EB8A6670, &unk_1B4D2FDA0);
    v154 = *(v130 + 48);
    if (v154(v131, 1, v129) == 1)
    {
      *v123 = 0;
      *(v123 + 8) = 0;
      *(v123 + 16) = 0;
      sub_1B4D17BBC();
      sub_1B4D08664(v132, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
      if (v154(v131, 1, v129) != 1)
      {
        sub_1B4975024(v131, &qword_1EB8A6670, &unk_1B4D2FDA0);
      }

      goto LABEL_60;
    }

    sub_1B4D08664(v132, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
    v153 = v131;
  }

  else
  {
    v77 = v204;
    sub_1B4D086C4(v56, v204, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
    v78 = v194;
    sub_1B4974FBC(v77 + *(v208 + 20), v194, &qword_1EB8A6668, &qword_1B4D1A658);
    v79 = *(v192 + 48);
    v80 = v193;
    if (v79(v78, 1, v193) == 1)
    {
      v81 = MEMORY[0x1E69E7CC0];
      v82 = v199;
      *v199 = MEMORY[0x1E69E7CC0];
      *(v82 + 1) = v81;
      sub_1B4D17BBC();
      v83 = *(v80 + 28);
      v84 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
      (*(*(v84 - 8) + 56))(&v82[v83], 1, 1, v84);
      v85 = *(v80 + 32);
      v86 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
      (*(*(v86 - 8) + 56))(&v82[v85], 1, 1, v86);
      v87 = v79(v78, 1, v80);
      v88 = v189;
      v89 = v198;
      if (v87 != 1)
      {
        sub_1B4975024(v78, &qword_1EB8A6668, &qword_1B4D1A658);
      }
    }

    else
    {
      v82 = v199;
      sub_1B4D086C4(v78, v199, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      v88 = v189;
      v89 = v198;
    }

    v104 = v212;
    WorkoutPropertiesQuery.init(_:)(v82, v89);
    if (v104)
    {
      sub_1B4D08664(a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
      v105 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult;
LABEL_23:
      sub_1B4D08664(v77, v105);
      v66 = &qword_1EB8A6688;
      v67 = &qword_1B4D1A660;
      v68 = v88;
      return sub_1B4975024(v68, v66, v67);
    }

    v212 = a1;
    sub_1B4D08664(v89, type metadata accessor for WorkoutPropertiesQuery);
    (*(v210 + 56))(v213, 1, 1, v211);
    v115 = *(v208 + 24);
    v116 = v176;
    sub_1B4974FBC(v77 + v115, v176, &qword_1EB8A6660, &unk_1B4D2FDB0);
    v117 = v77;
    v118 = v179;
    v209 = *(v178 + 48);
    v119 = (v209)(v116, 1, v179);
    sub_1B4975024(v116, &qword_1EB8A6660, &unk_1B4D2FDB0);
    if (v119 == 1)
    {
      v121 = v202;
      v120 = v203;
      v122 = v183;
      v123 = v180;
      v112 = v189;
    }

    else
    {
      v137 = v168;
      sub_1B4974FBC(v117 + v115, v168, &qword_1EB8A6660, &unk_1B4D2FDB0);
      v138 = v209;
      v139 = (v209)(v137, 1, v118);
      v121 = v202;
      if (v139 == 1)
      {
        v140 = v169;
        *v169 = 0;
        v140[1] = 0;
        v140[2] = MEMORY[0x1E69E7CC0];
        sub_1B4D17BBC();
        if (v138(v137, 1, v118) != 1)
        {
          sub_1B4975024(v137, &qword_1EB8A6660, &unk_1B4D2FDB0);
        }
      }

      else
      {
        v140 = v169;
        sub_1B4D086C4(v137, v169, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
      }

      WorkoutProperties.init(_:)(v140, v214);
      v120 = v203;
      v117 = v204;
      v122 = v183;
      v123 = v180;
      v112 = v189;
    }

    sub_1B4974FBC(v117 + *(v208 + 28), v122, &qword_1EB8A6670, &unk_1B4D2FDA0);
    v152 = *(v121 + 48);
    if (v152(v122, 1, v120) == 1)
    {
      *v123 = 0;
      *(v123 + 8) = 0;
      *(v123 + 16) = 0;
      sub_1B4D17BBC();
      sub_1B4D08664(v117, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
      if (v152(v122, 1, v120) != 1)
      {
        sub_1B4975024(v122, &qword_1EB8A6670, &unk_1B4D2FDA0);
      }

      goto LABEL_60;
    }

    sub_1B4D08664(v117, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
    v153 = v122;
  }

  sub_1B4D086C4(v153, v123, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
LABEL_60:
  v150 = 0;
  v151 = 0;
  v111 = 0;
  v148 = v123;
  a1 = v212;
LABEL_61:
  v155 = *v148;
  v156 = v148[1];
  v157 = *(v148 + 16);
  sub_1B4D08664(v148, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  sub_1B4975024(v112, &qword_1EB8A6688, &qword_1B4D1A660);
  v158 = v190;
  sub_1B4974FBC(v213, v190, &qword_1EB8AE718, &qword_1B4D48138);
  if ((*(v210 + 48))(v158, 1, v211) == 1)
  {
    sub_1B4975024(v158, &qword_1EB8AE718, &qword_1B4D48138);
  }

  else
  {
    v159 = v158;
    v160 = v188;
    sub_1B4D086C4(v159, v188, type metadata accessor for RingsPropertiesQuery);
    if (v111)
    {
      sub_1B4D08664(a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
      sub_1B4975024(v213, &qword_1EB8AE718, &qword_1B4D48138);
      v161 = v160;
      v162 = v172;
      sub_1B4D086C4(v161, v172, type metadata accessor for RingsPropertiesQuery);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7A50, &qword_1B4D1F6F8);
      v163 = (v162 + *(result + 36));
      *v163 = v150;
      v163[1] = v151;
      v163[2] = v111;
      v164 = v162 + *(result + 40);
      *v164 = v155;
      *(v164 + 8) = v156;
      *(v164 + 16) = v157;
      *(v164 + 24) = v155 + v156;
      return result;
    }

    sub_1B4D08664(v160, type metadata accessor for RingsPropertiesQuery);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE720, &qword_1B4D48140);
  sub_1B49B0578(&qword_1EB8AE728, &qword_1EB8AE720, &qword_1B4D48140, &unk_1B4D1A710);
  swift_allocError();
  *v165 = xmmword_1B4D1A640;
  swift_willThrow();

  sub_1B4D08664(a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
  v66 = &qword_1EB8AE718;
  v67 = &qword_1B4D48138;
  v68 = v213;
  return sub_1B4975024(v68, v66, v67);
}

uint64_t sub_1B4D03558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v181 = a2;
  v193 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v191 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v180 = (&v175 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6650, &unk_1B4D2FDC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v179 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v187 = &v175 - v7;
  v189 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v188 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v178 = (&v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v177 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v186 = &v175 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v194 = &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v195 = &v175 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v190 = &v175 - v18;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v211 = *(Metrics - 8);
  v212 = Metrics;
  MEMORY[0x1EEE9AC00](Metrics);
  v192 = &v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v182 = (&v175 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v196 = (&v175 - v24);
  v185 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v184 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v176 = (&v175 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v175 = &v175 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v183 = &v175 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6658, &qword_1B4D1A650);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v206 = &v175 - v31;
  v205 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v204 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v210 = &v175 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v209 = &v175 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v218);
  v215 = &v175 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v203 = &v175 - v37;
  v201 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v200 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v208 = &v175 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for WorkoutPropertiesQuery(0);
  v219 = *(v39 - 8);
  v220 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v214 = &v175 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v202 = &v175 - v42;
  v217 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v217);
  v207 = &v175 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v46 = &v175 - v45;
  v47 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v199 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v175 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v52 = &v175 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v216);
  v213 = &v175 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v56 = &v175 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v175 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE730, &qword_1B4D48148);
  MEMORY[0x1EEE9AC00](v60 - 8);
  v197 = &v175 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v222 = &v175 - v63;
  sub_1B4974FBC(a1, v59, &qword_1EB8A6688, &qword_1B4D1A660);
  v64 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  if ((*(*(v64 - 8) + 48))(v59, 1, v64) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE738, &qword_1B4D48150);
    sub_1B49B0578(&qword_1EB8AE740, &qword_1EB8AE738, &qword_1B4D48150, &unk_1B4D1A710);
    swift_allocError();
    *v65 = 0;
    v65[1] = 0;
    swift_willThrow();
    sub_1B4D08664(a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
    v66 = &qword_1EB8A6688;
    v67 = &qword_1B4D1A660;
    v68 = v59;
    return sub_1B4975024(v68, v66, v67);
  }

  v198 = v59;
  sub_1B4974FBC(v59, v56, &qword_1EB8A6688, &qword_1B4D1A660);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v70 = v213;
      sub_1B4D086C4(v56, v213, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
      sub_1B4974FBC(v70 + v216[5], v46, &qword_1EB8A6680, &unk_1B4D2FD90);
      v71 = *(v199 + 48);
      if (v71(v46, 1, v47) == 1)
      {
        v72 = MEMORY[0x1E69E7CC0];
        *v49 = MEMORY[0x1E69E7CC0];
        *(v49 + 1) = v72;
        sub_1B4D17BBC();
        v73 = *(v47 + 28);
        v74 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
        (*(*(v74 - 8) + 56))(&v49[v73], 1, 1, v74);
        v75 = *(v47 + 32);
        v76 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
        (*(*(v76 - 8) + 56))(&v49[v75], 1, 1, v76);
        if (v71(v46, 1, v47) != 1)
        {
          sub_1B4975024(v46, &qword_1EB8A6680, &unk_1B4D2FD90);
        }
      }

      else
      {
        sub_1B4D086C4(v46, v49, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
      }

      v102 = v221;
      RingsPropertiesQuery.init(_:)(v49, v52);
      if (v102)
      {
        sub_1B4D08664(a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
        sub_1B4D08664(v70, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
        v66 = &qword_1EB8A6688;
        v67 = &qword_1B4D1A660;
        v68 = v198;
        return sub_1B4975024(v68, v66, v67);
      }

      v221 = a1;
      sub_1B4D08664(v52, type metadata accessor for RingsPropertiesQuery);
      (*(v219 + 56))(v222, 1, 1, v220);
      v105 = v216[6];
      v106 = v183;
      sub_1B4974FBC(v70 + v105, v183, &qword_1EB8A6678, &qword_1B4D3CE20);
      v107 = v185;
      v218 = *(v184 + 48);
      v108 = (v218)(v106, 1, v185);
      sub_1B4975024(v106, &qword_1EB8A6678, &qword_1B4D3CE20);
      v109 = v198;
      if (v108 == 1)
      {
        v110 = v214;
        v112 = v211;
        v111 = v212;
        v113 = v190;
        v114 = v198;
        v115 = v221;
      }

      else
      {
        v136 = v70 + v105;
        v137 = v175;
        sub_1B4974FBC(v136, v175, &qword_1EB8A6678, &qword_1B4D3CE20);
        v138 = v218;
        v139 = (v218)(v137, 1, v107);
        v112 = v211;
        v111 = v212;
        if (v139 == 1)
        {
          v140 = v176;
          *v176 = 0;
          v140[1] = 0;
          v140[2] = MEMORY[0x1E69E7CC0];
          sub_1B4D17BBC();
          v141 = v138(v137, 1, v107);
          v114 = v109;
          if (v141 != 1)
          {
            sub_1B4975024(v137, &qword_1EB8A6678, &qword_1B4D3CE20);
          }
        }

        else
        {
          v140 = v176;
          sub_1B4D086C4(v137, v176, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
          v114 = v109;
        }

        RingsProperties.init(_:)(v140, v223);
        v110 = v214;
        v113 = v190;
        v115 = v221;

        v70 = v213;
      }

      sub_1B4974FBC(v70 + v216[7], v113, &qword_1EB8A6670, &unk_1B4D2FDA0);
      v151 = *(v112 + 48);
      if (v151(v113, 1, v111) == 1)
      {
        v152 = v196;
        *v196 = 0;
        v152[1] = 0;
        *(v152 + 16) = 0;
        sub_1B4D17BBC();
        sub_1B4D08664(v70, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
        if (v151(v113, 1, v111) != 1)
        {
          sub_1B4975024(v113, &qword_1EB8A6670, &unk_1B4D2FDA0);
        }

        v153 = 0;
        v154 = 0;
        v123 = 0;
        v155 = v196;
      }

      else
      {
        sub_1B4D08664(v70, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
        v156 = v196;
        sub_1B4D086C4(v113, v196, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
        v155 = v156;
        v153 = 0;
        v154 = 0;
        v123 = 0;
      }

      v124 = v110;
      goto LABEL_62;
    }

    v77 = v215;
    sub_1B4D086C4(v56, v215, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
    v90 = v206;
    sub_1B4974FBC(v77 + *(v218 + 20), v206, &qword_1EB8A6658, &qword_1B4D1A650);
    v91 = *(v204 + 48);
    v92 = v205;
    if (v91(v90, 1, v205) == 1)
    {
      v93 = MEMORY[0x1E69E7CC0];
      v94 = v210;
      *v210 = MEMORY[0x1E69E7CC0];
      *(v94 + 1) = v93;
      sub_1B4D17BBC();
      v95 = *(v92 + 28);
      v96 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
      (*(*(v96 - 8) + 56))(&v94[v95], 1, 1, v96);
      v97 = *(v92 + 32);
      v98 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
      (*(*(v98 - 8) + 56))(&v94[v97], 1, 1, v98);
      v99 = v91(v90, 1, v92);
      v88 = v198;
      v100 = v221;
      v101 = v209;
      if (v99 != 1)
      {
        sub_1B4975024(v90, &qword_1EB8A6658, &qword_1B4D1A650);
      }
    }

    else
    {
      v94 = v210;
      sub_1B4D086C4(v90, v210, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      v88 = v198;
      v100 = v221;
      v101 = v209;
    }

    FitnessPlusPropertiesQuery.init(_:)(v94, v101);
    if (v100)
    {
      sub_1B4D08664(a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
      v104 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult;
      goto LABEL_23;
    }

    v221 = a1;
    sub_1B4D08664(v101, type metadata accessor for FitnessPlusPropertiesQuery);
    (*(v219 + 56))(v222, 1, 1, v220);
    v127 = *(v218 + 24);
    v128 = v187;
    sub_1B4974FBC(v77 + v127, v187, &qword_1EB8A6650, &unk_1B4D2FDC0);
    v129 = v193;
    v217 = *(v191 + 48);
    v130 = v77;
    v131 = (v217)(v128, 1, v193);
    sub_1B4975024(v128, &qword_1EB8A6650, &unk_1B4D2FDC0);
    if (v131 == 1)
    {
      v124 = v214;
      v133 = v211;
      v132 = v212;
      v134 = v194;
      v135 = v192;
      v115 = v221;
    }

    else
    {
      v146 = v130 + v127;
      v147 = v179;
      sub_1B4974FBC(v146, v179, &qword_1EB8A6650, &unk_1B4D2FDC0);
      v148 = v217;
      v149 = (v217)(v147, 1, v129);
      v133 = v211;
      v132 = v212;
      if (v149 == 1)
      {
        v150 = v180;
        *v180 = 0;
        v150[1] = 0;
        v150[2] = MEMORY[0x1E69E7CC0];
        sub_1B4D17BBC();
        if (v148(v147, 1, v129) != 1)
        {
          sub_1B4975024(v147, &qword_1EB8A6650, &unk_1B4D2FDC0);
        }
      }

      else
      {
        v150 = v180;
        sub_1B4D086C4(v147, v180, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
      }

      FitnessPlusProperties.init(_:)(v150, v223);
      v124 = v214;
      v134 = v194;
      v135 = v192;
      v115 = v221;
    }

    v163 = v215;
    sub_1B4974FBC(v215 + *(v218 + 28), v134, &qword_1EB8A6670, &unk_1B4D2FDA0);
    v164 = *(v133 + 48);
    if (v164(v134, 1, v132) == 1)
    {
      *v135 = 0;
      *(v135 + 8) = 0;
      *(v135 + 16) = 0;
      sub_1B4D17BBC();
      sub_1B4D08664(v163, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
      if (v164(v134, 1, v132) != 1)
      {
        sub_1B4975024(v134, &qword_1EB8A6670, &unk_1B4D2FDA0);
      }
    }

    else
    {
      sub_1B4D08664(v163, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
      sub_1B4D086C4(v134, v135, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    }

    v153 = 0;
    v154 = 0;
    v123 = 0;
    v155 = v135;
    v114 = v198;
  }

  else
  {
    v77 = v207;
    sub_1B4D086C4(v56, v207, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
    v78 = v203;
    sub_1B4974FBC(v77 + *(v217 + 20), v203, &qword_1EB8A6668, &qword_1B4D1A658);
    v79 = *(v200 + 48);
    v80 = v201;
    if (v79(v78, 1, v201) == 1)
    {
      v81 = MEMORY[0x1E69E7CC0];
      v82 = v208;
      *v208 = MEMORY[0x1E69E7CC0];
      *(v82 + 1) = v81;
      sub_1B4D17BBC();
      v83 = *(v80 + 28);
      v84 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
      (*(*(v84 - 8) + 56))(&v82[v83], 1, 1, v84);
      v85 = *(v80 + 32);
      v86 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
      (*(*(v86 - 8) + 56))(&v82[v85], 1, 1, v86);
      v87 = v79(v78, 1, v80);
      v88 = v198;
      v89 = v221;
      if (v87 != 1)
      {
        sub_1B4975024(v78, &qword_1EB8A6668, &qword_1B4D1A658);
      }
    }

    else
    {
      v82 = v208;
      sub_1B4D086C4(v78, v208, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      v88 = v198;
      v89 = v221;
    }

    v103 = v202;
    WorkoutPropertiesQuery.init(_:)(v82, v202);
    if (v89)
    {
      sub_1B4D08664(a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
      v104 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult;
LABEL_23:
      sub_1B4D08664(v77, v104);
      v66 = &qword_1EB8A6688;
      v67 = &qword_1B4D1A660;
      v68 = v88;
      return sub_1B4975024(v68, v66, v67);
    }

    v221 = a1;
    v116 = v103;
    v117 = v222;
    sub_1B4D086C4(v116, v222, type metadata accessor for WorkoutPropertiesQuery);
    (*(v219 + 56))(v117, 0, 1, v220);
    v118 = *(v217 + 24);
    v119 = v186;
    sub_1B4974FBC(v77 + v118, v186, &qword_1EB8A6660, &unk_1B4D2FDB0);
    v120 = v189;
    v218 = *(v188 + 48);
    v121 = v77;
    v122 = (v218)(v119, 1, v189);
    sub_1B4975024(v119, &qword_1EB8A6660, &unk_1B4D2FDB0);
    if (v122 == 1)
    {
      v218 = 0;
      v215 = 0;
      v216 = 0;
      v123 = 0;
      v124 = v214;
      v125 = v195;
      v114 = v198;
      v115 = v221;
      v126 = v121;
    }

    else
    {
      v142 = v177;
      sub_1B4974FBC(v121 + v118, v177, &qword_1EB8A6660, &unk_1B4D2FDB0);
      v143 = v218;
      v126 = v121;
      if ((v218)(v142, 1, v120) == 1)
      {
        v144 = v178;
        *v178 = 0;
        v144[1] = 0;
        v144[2] = MEMORY[0x1E69E7CC0];
        sub_1B4D17BBC();
        v145 = v143(v142, 1, v120);
        v114 = v198;
        if (v145 != 1)
        {
          sub_1B4975024(v142, &qword_1EB8A6660, &unk_1B4D2FDB0);
        }
      }

      else
      {
        v144 = v178;
        sub_1B4D086C4(v142, v178, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
        v114 = v198;
      }

      WorkoutProperties.init(_:)(v144, v223);
      v124 = v214;
      v125 = v195;
      v115 = v221;
      v218 = 0;
      v215 = v223[1];
      v216 = v223[0];
      v123 = v223[2];
    }

    sub_1B4974FBC(v126 + *(v217 + 28), v125, &qword_1EB8A6670, &unk_1B4D2FDA0);
    v157 = v212;
    v158 = *(v211 + 48);
    if (v158(v125, 1, v212) == 1)
    {
      v159 = v126;
      v160 = v182;
      *v182 = 0;
      v160[1] = 0;
      *(v160 + 16) = 0;
      sub_1B4D17BBC();
      sub_1B4D08664(v159, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
      if (v158(v125, 1, v157) != 1)
      {
        sub_1B4975024(v125, &qword_1EB8A6670, &unk_1B4D2FDA0);
      }

      v155 = v160;
      v124 = v214;
    }

    else
    {
      sub_1B4D08664(v126, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
      v161 = v125;
      v162 = v182;
      sub_1B4D086C4(v161, v182, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      v155 = v162;
    }

    v154 = v215;
    v153 = v216;
  }

LABEL_62:
  v165 = *v155;
  v166 = v155[1];
  v167 = *(v155 + 16);
  sub_1B4D08664(v155, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  sub_1B4975024(v114, &qword_1EB8A6688, &qword_1B4D1A660);
  v168 = v197;
  sub_1B4974FBC(v222, v197, &qword_1EB8AE730, &qword_1B4D48148);
  if ((*(v219 + 48))(v168, 1, v220) == 1)
  {
    sub_1B4975024(v168, &qword_1EB8AE730, &qword_1B4D48148);
  }

  else
  {
    sub_1B4D086C4(v168, v124, type metadata accessor for WorkoutPropertiesQuery);
    if (v123)
    {
      sub_1B4D08664(v115, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
      sub_1B4975024(v222, &qword_1EB8AE730, &qword_1B4D48148);
      v169 = v124;
      v170 = v181;
      sub_1B4D086C4(v169, v181, type metadata accessor for WorkoutPropertiesQuery);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7A80, &qword_1B4D1F728);
      v172 = (v170 + *(result + 36));
      *v172 = v153;
      v172[1] = v154;
      v172[2] = v123;
      v173 = v170 + *(result + 40);
      *v173 = v165;
      *(v173 + 8) = v166;
      *(v173 + 16) = v167;
      *(v173 + 24) = v165 + v166;
      return result;
    }

    sub_1B4D08664(v124, type metadata accessor for WorkoutPropertiesQuery);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE738, &qword_1B4D48150);
  sub_1B49B0578(&qword_1EB8AE740, &qword_1EB8AE738, &qword_1B4D48150, &unk_1B4D1A710);
  swift_allocError();
  *v174 = xmmword_1B4D1A640;
  swift_willThrow();

  sub_1B4D08664(v115, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
  v66 = &qword_1EB8AE730;
  v67 = &qword_1B4D48148;
  v68 = v222;
  return sub_1B4975024(v68, v66, v67);
}

uint64_t sub_1B4D05354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v190 = a2;
  v203 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v202 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v189 = (&v183 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6650, &unk_1B4D2FDC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v188 = &v183 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v197 = &v183 - v7;
  v199 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v187 = (&v183 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v186 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v196 = &v183 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v204 = &v183 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v201 = &v183 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v200 = &v183 - v18;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v219 = *(Metrics - 8);
  v220 = Metrics;
  MEMORY[0x1EEE9AC00](Metrics);
  v192 = (&v183 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v191 = (&v183 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v205 = (&v183 - v24);
  v195 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v185 = (&v183 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v184 = &v183 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v193 = &v183 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6658, &qword_1B4D1A650);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v215 = &v183 - v31;
  v214 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v213 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v218 = &v183 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for FitnessPlusPropertiesQuery(0);
  v229 = *(v33 - 8);
  v230 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v221 = &v183 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v217 = &v183 - v36;
  v228 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v228);
  v224 = &v183 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v212 = &v183 - v39;
  v210 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v216 = &v183 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v211 = &v183 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v227);
  v225 = &v183 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v46 = &v183 - v45;
  v47 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v208 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v183 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v52 = &v183 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v226);
  v223 = &v183 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v56 = &v183 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v183 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE748, &qword_1B4D48158);
  MEMORY[0x1EEE9AC00](v60 - 8);
  v207 = &v183 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v232 = &v183 - v63;
  sub_1B4974FBC(a1, v59, &qword_1EB8A6688, &qword_1B4D1A660);
  v64 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  if ((*(*(v64 - 8) + 48))(v59, 1, v64) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE750, &qword_1B4D48160);
    sub_1B49B0578(&qword_1EB8AE758, &qword_1EB8AE750, &qword_1B4D48160, &unk_1B4D1A710);
    swift_allocError();
    *v65 = 0;
    v65[1] = 0;
    swift_willThrow();
    sub_1B4D08664(a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
    v66 = &qword_1EB8A6688;
    v67 = &qword_1B4D1A660;
    v68 = v59;
    return sub_1B4975024(v68, v66, v67);
  }

  v222 = a1;
  v206 = v59;
  sub_1B4974FBC(v59, v56, &qword_1EB8A6688, &qword_1B4D1A660);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v71 = v56;
      v72 = v223;
      sub_1B4D086C4(v71, v223, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
      sub_1B4974FBC(v72 + v226[5], v46, &qword_1EB8A6680, &unk_1B4D2FD90);
      v73 = *(v208 + 48);
      if (v73(v46, 1, v47) == 1)
      {
        v74 = MEMORY[0x1E69E7CC0];
        *v49 = MEMORY[0x1E69E7CC0];
        *(v49 + 1) = v74;
        sub_1B4D17BBC();
        v75 = *(v47 + 28);
        v76 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
        (*(*(v76 - 8) + 56))(&v49[v75], 1, 1, v76);
        v77 = *(v47 + 32);
        v78 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
        (*(*(v78 - 8) + 56))(&v49[v77], 1, 1, v78);
        v79 = v73(v46, 1, v47);
        v80 = v222;
        v81 = v231;
        if (v79 != 1)
        {
          sub_1B4975024(v46, &qword_1EB8A6680, &unk_1B4D2FD90);
        }
      }

      else
      {
        sub_1B4D086C4(v46, v49, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
        v80 = v222;
        v81 = v231;
      }

      RingsPropertiesQuery.init(_:)(v49, v52);
      if (v81)
      {
        sub_1B4D08664(v80, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
        sub_1B4D08664(v72, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
        v66 = &qword_1EB8A6688;
        v67 = &qword_1B4D1A660;
        v68 = v206;
        return sub_1B4975024(v68, v66, v67);
      }

      sub_1B4D08664(v52, type metadata accessor for RingsPropertiesQuery);
      (*(v229 + 56))(v232, 1, 1, v230);
      v114 = v226[6];
      v115 = v193;
      sub_1B4974FBC(v72 + v114, v193, &qword_1EB8A6678, &qword_1B4D3CE20);
      v116 = v195;
      v231 = *(v194 + 48);
      v117 = v72;
      v118 = v231(v115, 1, v195);
      sub_1B4975024(v115, &qword_1EB8A6678, &qword_1B4D3CE20);
      v119 = v206;
      if (v118 == 1)
      {
        v121 = v219;
        v120 = v220;
        v122 = v200;
        v123 = v222;
        v124 = v206;
        v125 = v232;
      }

      else
      {
        v143 = v117 + v114;
        v144 = v184;
        sub_1B4974FBC(v143, v184, &qword_1EB8A6678, &qword_1B4D3CE20);
        v145 = v231;
        v146 = v231(v144, 1, v116);
        v121 = v219;
        v120 = v220;
        if (v146 == 1)
        {
          v147 = v185;
          *v185 = 0;
          v147[1] = 0;
          v147[2] = MEMORY[0x1E69E7CC0];
          sub_1B4D17BBC();
          v148 = v145(v144, 1, v116);
          v123 = v222;
          v124 = v119;
          if (v148 != 1)
          {
            sub_1B4975024(v144, &qword_1EB8A6678, &qword_1B4D3CE20);
          }
        }

        else
        {
          v147 = v185;
          sub_1B4D086C4(v144, v185, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
          v123 = v222;
          v124 = v119;
        }

        RingsProperties.init(_:)(v147, v233);
        v122 = v200;
        v125 = v232;
      }

      v158 = v223;
      sub_1B4974FBC(v223 + v226[7], v122, &qword_1EB8A6670, &unk_1B4D2FDA0);
      v159 = *(v121 + 48);
      if (v159(v122, 1, v120) == 1)
      {
        v160 = v205;
        *v205 = 0;
        v160[1] = 0;
        *(v160 + 16) = 0;
        sub_1B4D17BBC();
        sub_1B4D08664(v158, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
        if (v159(v122, 1, v120) != 1)
        {
          sub_1B4975024(v122, &qword_1EB8A6670, &unk_1B4D2FDA0);
        }

        v161 = 0;
        v162 = 0;
        v140 = 0;
        v163 = v205;
      }

      else
      {
        sub_1B4D08664(v158, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
        v164 = v205;
        sub_1B4D086C4(v122, v205, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
        v163 = v164;
        v161 = 0;
        v162 = 0;
        v140 = 0;
      }

      goto LABEL_54;
    }

    v97 = v224;
    sub_1B4D086C4(v56, v224, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
    v98 = v215;
    sub_1B4974FBC(v97 + v228[5], v215, &qword_1EB8A6658, &qword_1B4D1A650);
    v99 = *(v213 + 48);
    v100 = v214;
    if (v99(v98, 1, v214) == 1)
    {
      v101 = MEMORY[0x1E69E7CC0];
      v102 = v218;
      *v218 = MEMORY[0x1E69E7CC0];
      *(v102 + 1) = v101;
      sub_1B4D17BBC();
      v103 = *(v100 + 28);
      v104 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
      (*(*(v104 - 8) + 56))(&v102[v103], 1, 1, v104);
      v105 = *(v100 + 32);
      v106 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
      (*(*(v106 - 8) + 56))(&v102[v105], 1, 1, v106);
      v107 = v99(v98, 1, v100);
      v108 = v222;
      v109 = v206;
      v110 = v231;
      v111 = v232;
      v112 = v217;
      if (v107 != 1)
      {
        sub_1B4975024(v98, &qword_1EB8A6658, &qword_1B4D1A650);
      }
    }

    else
    {
      v102 = v218;
      sub_1B4D086C4(v98, v218, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      v108 = v222;
      v109 = v206;
      v110 = v231;
      v111 = v232;
      v112 = v217;
    }

    FitnessPlusPropertiesQuery.init(_:)(v102, v112);
    if (v110)
    {
      sub_1B4D08664(v108, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
      sub_1B4D08664(v97, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
      v66 = &qword_1EB8A6688;
      v67 = &qword_1B4D1A660;
      v68 = v109;
      return sub_1B4975024(v68, v66, v67);
    }

    sub_1B4D086C4(v112, v111, type metadata accessor for FitnessPlusPropertiesQuery);
    (*(v229 + 56))(v111, 0, 1, v230);
    v135 = v228[6];
    v136 = v197;
    sub_1B4974FBC(v97 + v135, v197, &qword_1EB8A6650, &unk_1B4D2FDC0);
    v137 = *(v202 + 48);
    v138 = v203;
    v139 = v137(v136, 1, v203);
    sub_1B4975024(v136, &qword_1EB8A6650, &unk_1B4D2FDC0);
    if (v139 == 1)
    {
      v231 = 0;
      v226 = 0;
      v227 = 0;
      v140 = 0;
      v141 = v204;
      v124 = v206;
      v123 = v222;
      v142 = v224;
    }

    else
    {
      v154 = v224;
      v155 = v188;
      sub_1B4974FBC(v224 + v135, v188, &qword_1EB8A6650, &unk_1B4D2FDC0);
      v142 = v154;
      if (v137(v155, 1, v138) == 1)
      {
        v156 = v189;
        *v189 = 0;
        v156[1] = 0;
        v156[2] = MEMORY[0x1E69E7CC0];
        sub_1B4D17BBC();
        v157 = v137(v155, 1, v138);
        v124 = v206;
        v123 = v222;
        if (v157 != 1)
        {
          sub_1B4975024(v155, &qword_1EB8A6650, &unk_1B4D2FDC0);
        }
      }

      else
      {
        v156 = v189;
        sub_1B4D086C4(v155, v189, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
        v124 = v206;
        v123 = v222;
      }

      FitnessPlusProperties.init(_:)(v156, v233);
      v141 = v204;
      v231 = 0;
      v226 = v233[1];
      v227 = v233[0];
      v140 = v233[2];
    }

    sub_1B4974FBC(v142 + v228[7], v141, &qword_1EB8A6670, &unk_1B4D2FDA0);
    v169 = v220;
    v170 = *(v219 + 48);
    if (v170(v141, 1, v220) == 1)
    {
      v171 = v192;
      *v192 = 0;
      v171[1] = 0;
      *(v171 + 16) = 0;
      sub_1B4D17BBC();
      sub_1B4D08664(v142, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
      if (v170(v141, 1, v169) != 1)
      {
        sub_1B4975024(v141, &qword_1EB8A6670, &unk_1B4D2FDA0);
      }

      v163 = v171;
    }

    else
    {
      sub_1B4D08664(v142, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
      v172 = v141;
      v173 = v192;
      sub_1B4D086C4(v172, v192, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      v163 = v173;
    }

    v125 = v232;
    v132 = v221;
    v162 = v226;
    v161 = v227;
  }

  else
  {
    v82 = v225;
    sub_1B4D086C4(v56, v225, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
    v83 = v212;
    sub_1B4974FBC(v82 + v227[5], v212, &qword_1EB8A6668, &qword_1B4D1A658);
    v84 = *(v209 + 48);
    v85 = v210;
    if (v84(v83, 1, v210) == 1)
    {
      v86 = MEMORY[0x1E69E7CC0];
      v87 = v216;
      *v216 = MEMORY[0x1E69E7CC0];
      *(v87 + 1) = v86;
      sub_1B4D17BBC();
      v88 = *(v85 + 28);
      v89 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
      (*(*(v89 - 8) + 56))(&v87[v88], 1, 1, v89);
      v90 = *(v85 + 32);
      v91 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
      (*(*(v91 - 8) + 56))(&v87[v90], 1, 1, v91);
      v92 = v84(v83, 1, v85);
      v93 = v222;
      v94 = v206;
      v95 = v231;
      v96 = v232;
      if (v92 != 1)
      {
        sub_1B4975024(v83, &qword_1EB8A6668, &qword_1B4D1A658);
      }
    }

    else
    {
      v87 = v216;
      sub_1B4D086C4(v83, v216, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      v93 = v222;
      v94 = v206;
      v95 = v231;
      v96 = v232;
    }

    v113 = v211;
    WorkoutPropertiesQuery.init(_:)(v87, v211);
    if (v95)
    {
      sub_1B4D08664(v93, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
      sub_1B4D08664(v82, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
      v66 = &qword_1EB8A6688;
      v67 = &qword_1B4D1A660;
      v68 = v94;
      return sub_1B4975024(v68, v66, v67);
    }

    sub_1B4D08664(v113, type metadata accessor for WorkoutPropertiesQuery);
    (*(v229 + 56))(v96, 1, 1, v230);
    v126 = v227[6];
    v127 = v196;
    sub_1B4974FBC(v82 + v126, v196, &qword_1EB8A6660, &unk_1B4D2FDB0);
    v128 = *(v198 + 48);
    v129 = v199;
    v130 = v128(v127, 1, v199);
    sub_1B4975024(v127, &qword_1EB8A6660, &unk_1B4D2FDB0);
    if (v130 == 1)
    {
      v131 = v220;
      v132 = v221;
      v133 = v219;
      v134 = v201;
      v124 = v206;
      v125 = v232;
    }

    else
    {
      v149 = v225 + v126;
      v150 = v186;
      sub_1B4974FBC(v149, v186, &qword_1EB8A6660, &unk_1B4D2FDB0);
      v151 = v128(v150, 1, v129);
      v133 = v219;
      v131 = v220;
      if (v151 == 1)
      {
        v152 = v187;
        *v187 = 0;
        v152[1] = 0;
        v152[2] = MEMORY[0x1E69E7CC0];
        sub_1B4D17BBC();
        v153 = v128(v150, 1, v129);
        v124 = v206;
        if (v153 != 1)
        {
          sub_1B4975024(v150, &qword_1EB8A6660, &unk_1B4D2FDB0);
        }
      }

      else
      {
        v152 = v187;
        sub_1B4D086C4(v150, v187, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
        v124 = v206;
      }

      WorkoutProperties.init(_:)(v152, v233);
      v132 = v221;
      v134 = v201;
      v125 = v232;
    }

    v165 = v225;
    sub_1B4974FBC(v225 + v227[7], v134, &qword_1EB8A6670, &unk_1B4D2FDA0);
    v166 = *(v133 + 48);
    if (v166(v134, 1, v131) == 1)
    {
      v167 = v191;
      *v191 = 0;
      v167[1] = 0;
      *(v167 + 16) = 0;
      sub_1B4D17BBC();
      sub_1B4D08664(v165, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
      if (v166(v134, 1, v131) != 1)
      {
        sub_1B4975024(v134, &qword_1EB8A6670, &unk_1B4D2FDA0);
      }

      v161 = 0;
      v162 = 0;
      v140 = 0;
      v163 = v167;
      v123 = v222;
LABEL_54:
      v132 = v221;
      goto LABEL_62;
    }

    sub_1B4D08664(v165, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
    v168 = v191;
    sub_1B4D086C4(v134, v191, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    v161 = 0;
    v140 = 0;
    v163 = v168;
    v162 = 0;
    v123 = v222;
  }

LABEL_62:
  v174 = *v163;
  v175 = v163[1];
  v176 = *(v163 + 16);
  sub_1B4D08664(v163, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  sub_1B4975024(v124, &qword_1EB8A6688, &qword_1B4D1A660);
  v177 = v207;
  sub_1B4974FBC(v125, v207, &qword_1EB8AE748, &qword_1B4D48158);
  if ((*(v229 + 48))(v177, 1, v230) == 1)
  {
    sub_1B4975024(v177, &qword_1EB8AE748, &qword_1B4D48158);
LABEL_67:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE750, &qword_1B4D48160);
    sub_1B49B0578(&qword_1EB8AE758, &qword_1EB8AE750, &qword_1B4D48160, &unk_1B4D1A710);
    swift_allocError();
    *v182 = xmmword_1B4D1A640;
    swift_willThrow();

    sub_1B4D08664(v123, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
    v66 = &qword_1EB8AE748;
    v67 = &qword_1B4D48158;
    v68 = v125;
    return sub_1B4975024(v68, v66, v67);
  }

  sub_1B4D086C4(v177, v132, type metadata accessor for FitnessPlusPropertiesQuery);
  if (!v140)
  {
    sub_1B4D08664(v132, type metadata accessor for FitnessPlusPropertiesQuery);
    goto LABEL_67;
  }

  sub_1B4D08664(v123, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult);
  sub_1B4975024(v125, &qword_1EB8AE748, &qword_1B4D48158);
  v178 = v132;
  v179 = v190;
  sub_1B4D086C4(v178, v190, type metadata accessor for FitnessPlusPropertiesQuery);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7AB0, &qword_1B4D1F758);
  v180 = (v179 + *(result + 36));
  *v180 = v161;
  v180[1] = v162;
  v180[2] = v140;
  v181 = v179 + *(result + 40);
  *v181 = v174;
  *(v181 + 8) = v175;
  *(v181 + 16) = v176;
  *(v181 + 24) = v174 + v175;
  return result;
}

uint64_t SnapshotQueryResults.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v40 = a4;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v38 - v17;
  sub_1B4974FBC(a1, &v38 - v17, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v19 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
  {
    _s7FailureOMa_22(0, a2, a3, v20);
    swift_getWitnessTable();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0;
    swift_willThrow();
    return sub_1B4D08664(a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v31 = sub_1B4D086C4(v18, v12, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
    v39 = &v38;
    v42 = *v12;
    MEMORY[0x1EEE9AC00](v31);
    *(&v38 - 2) = a2;
    *(&v38 - 1) = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE688, &qword_1B4D48068);
    type metadata accessor for SnapshotQueryResult(0, a2, a3, v32);
    sub_1B49B0578(qword_1EB8AE690, &qword_1EB8AE688, &qword_1B4D48068, MEMORY[0x1E69E6328]);
    v33 = v41;
    v27 = sub_1B4D182BC();
    v28 = v33;
    sub_1B4D08664(a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults);

    v29 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults;
    v30 = v12;
LABEL_7:
    result = sub_1B4D08664(v30, v29);
    if (v28)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v24 = sub_1B4D086C4(v18, v15, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
    v39 = &v38;
    v42 = *v15;
    MEMORY[0x1EEE9AC00](v24);
    *(&v38 - 2) = a2;
    *(&v38 - 1) = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE688, &qword_1B4D48068);
    type metadata accessor for SnapshotQueryResult(0, a2, a3, v25);
    sub_1B49B0578(qword_1EB8AE690, &qword_1EB8AE688, &qword_1B4D48068, MEMORY[0x1E69E6328]);
    v26 = v41;
    v27 = sub_1B4D182BC();
    v28 = v26;
    sub_1B4D08664(a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults);

    v29 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults;
    v30 = v15;
    goto LABEL_7;
  }

  v34 = sub_1B4D086C4(v18, v9, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
  v39 = &v38;
  v42 = *v9;
  MEMORY[0x1EEE9AC00](v34);
  *(&v38 - 2) = a2;
  *(&v38 - 1) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE688, &qword_1B4D48068);
  type metadata accessor for SnapshotQueryResult(0, a2, a3, v35);
  sub_1B49B0578(qword_1EB8AE690, &qword_1EB8AE688, &qword_1B4D48068, MEMORY[0x1E69E6328]);
  v36 = v41;
  v37 = sub_1B4D182BC();
  if (v36)
  {
    sub_1B4D08664(a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults);

    return sub_1B4D08664(v9, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
  }

  v27 = v37;
  sub_1B4D08664(a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults);

  result = sub_1B4D08664(v9, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
LABEL_12:
  *v40 = v27;
  return result;
}

uint64_t sub_1B4D07840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t (*a6)(char *)@<X5>, uint64_t a7@<X8>)
{
  v15 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  MEMORY[0x1EEE9AC00](v18);
  sub_1B4D08600(a1, v17);
  result = a6(v17);
  if (!v7)
  {
    v21 = type metadata accessor for SnapshotQueryResult(0, a2, a3, v20);
    v22 = swift_dynamicCast();
    return (*(*(v21 - 8) + 56))(a7, v22 ^ 1u, 1, v21);
  }

  return result;
}

uint64_t SnapshotQueryResults.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults(0);
  sub_1B4D0857C(&qword_1EB8AABD8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4D07B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_dynamicCastMetatype();
  if (v16)
  {
    MEMORY[0x1EEE9AC00](v16);
    *(&v30 - 4) = a3;
    *(&v30 - 3) = a4;
    *(&v30 - 2) = a2;
    sub_1B4D0857C(&qword_1EB8AAC08, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
    v17 = v31;
    result = sub_1B4D17DAC();
    if (v17)
    {
      return result;
    }

    v19 = v30;
    sub_1B4975024(v30, &qword_1EB8AAA58, &unk_1B4D2FDF0);
    sub_1B4D086C4(v15, v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
    goto LABEL_10;
  }

  v20 = a2;
  v21 = v31;
  v22 = swift_dynamicCastMetatype();
  if (v22)
  {
    MEMORY[0x1EEE9AC00](v22);
    *(&v30 - 4) = a3;
    *(&v30 - 3) = a4;
    *(&v30 - 2) = v20;
    sub_1B4D0857C(&qword_1EB8AABF0, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
    result = sub_1B4D17DAC();
    if (v21)
    {
      return result;
    }

    v19 = v30;
    sub_1B4975024(v30, &qword_1EB8AAA58, &unk_1B4D2FDF0);
    sub_1B4D086C4(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
    goto LABEL_10;
  }

  v23 = swift_dynamicCastMetatype();
  if (!v23)
  {
    v32 = a3;
    swift_getMetatypeMetadata();
    v25 = sub_1B4D181AC();
    v27 = v26;
    _s7FailureOMa_22(0, a3, a4, v28);
    swift_getWitnessTable();
    swift_allocError();
    *v29 = v25;
    v29[1] = v27;
    return swift_willThrow();
  }

  MEMORY[0x1EEE9AC00](v23);
  *(&v30 - 4) = a3;
  *(&v30 - 3) = a4;
  *(&v30 - 2) = v20;
  sub_1B4D0857C(&qword_1EB8AAC20, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults, &protocol conformance descriptor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
  result = sub_1B4D17DAC();
  if (!v21)
  {
    v19 = v30;
    sub_1B4975024(v30, &qword_1EB8AAA58, &unk_1B4D2FDF0);
    sub_1B4D086C4(v9, v19, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
LABEL_10:
    v24 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v24 - 8) + 56))(v19, 0, 1, v24);
  }

  return result;
}

uint64_t sub_1B4D08040(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SnapshotQueryResult(255, a3, a4, a4);
  sub_1B4D184BC();
  type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult(0);

  swift_getWitnessTable();
  v6 = sub_1B4D182BC();

  if (!v4)
  {

    *a1 = v6;
  }

  return result;
}

uint64_t sub_1B4D0812C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for SnapshotQueryResult(0, a1, a2, a4);
  result = SnapshotQueryResult.protobuf()(v6);
  if (!v4)
  {
    v8 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult(0);
    return (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
  }

  return result;
}

uint64_t sub_1B4D081BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *))
{
  v15[1] = a2;
  v14[2] = a3;
  v14[3] = a4;
  type metadata accessor for SnapshotQueryResult(255, a3, a4, a4);
  v8 = sub_1B4D184BC();
  v9 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult(0);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1B498D2F0(a5, v14, v8, v9, v10, WitnessTable, MEMORY[0x1E69E7288], v15);

  if (!v5)
  {

    *a1 = v12;
  }

  return result;
}

uint64_t sub_1B4D082D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for SnapshotQueryResult(0, a2, a3, a4);
  result = SnapshotQueryResult.protobuf()(v6);
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_1B4D084B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B4D0857C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4D08600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4D08664(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4D086C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FitnessContextQueryResult.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a2;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v78 = *(Metrics - 8);
  v79 = Metrics;
  MEMORY[0x1EEE9AC00](Metrics);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v68 - v9;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  v76 = *(v10 - 8);
  v77 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA0, &unk_1B4D3CE00);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v71 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v68 - v17;
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v20 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v83 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);

  v82 = sub_1B4A02DAC(v25);
  v26 = a1;

  v80 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  sub_1B4974FBC(a1 + v80[6], v18, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  v27 = *(v20 + 48);
  v28 = v27(v18, 1, Descriptor);
  v70 = v5;
  if (v28 == 1)
  {
    sub_1B4D17BBC();
    v29 = *(Descriptor + 20);
    if (qword_1EB8A64A8 != -1)
    {
      swift_once();
    }

    *&v22[v29] = qword_1EB8AC728;
    v30 = v27(v18, 1, Descriptor);

    if (v30 != 1)
    {
      sub_1B4975024(v18, &qword_1EB8AA6B8, &qword_1B4D2FC68);
    }
  }

  else
  {
    sub_1B4D0D120(v18, v22, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  }

  v31 = v81;
  FitnessContextQueryDescriptor.init(_:)(v22, v83);
  if (v31)
  {
    sub_1B4D0D078(v26, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
  }

  v81 = 0;
  v33 = v80[7];
  v34 = v75;
  sub_1B4974FBC(v26 + v33, v75, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  v35 = v77;
  v36 = *(v76 + 48);
  v37 = v36(v34, 1, v77);
  sub_1B4975024(v34, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  if (v37 == 1)
  {
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    v38 = v78;
    v39 = v79;
  }

  else
  {
    v40 = v26 + v33;
    v41 = v71;
    sub_1B4974FBC(v40, v71, &qword_1EB8ACAA0, &unk_1B4D3CE00);
    v42 = v36(v41, 1, v35);
    v43 = v79;
    if (v42 == 1)
    {
      v44 = v35;
      v45 = v72;
      sub_1B4D17BBC();
      v46 = *(v35 + 20);
      if (qword_1EB8A64D8 != -1)
      {
        swift_once();
      }

      *(v45 + v46) = qword_1EB8AC7A8;
      v47 = v36(v41, 1, v44);

      v48 = v41;
      v38 = v78;
      if (v47 != 1)
      {
        sub_1B4975024(v48, &qword_1EB8ACAA0, &unk_1B4D3CE00);
      }
    }

    else
    {
      v45 = v72;
      sub_1B4D0D120(v41, v72, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
      v38 = v78;
    }

    v49 = v81;
    sub_1B4D09058(v45, &v84);
    if (v49)
    {

      sub_1B4D0D078(v26, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
      sub_1B4D0D078(v45, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
      return sub_1B4D0D078(v83, type metadata accessor for FitnessContextQueryDescriptor);
    }

    v39 = v43;
    v81 = 0;
    sub_1B4D0D078(v45, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  }

  v50 = v80[8];
  v51 = v73;
  sub_1B4974FBC(v26 + v50, v73, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v52 = *(v38 + 48);
  v53 = v26;
  v54 = v52(v51, 1, v39);
  sub_1B4975024(v51, &qword_1EB8A6670, &unk_1B4D2FDA0);
  if (v54 == 1)
  {
    sub_1B4D0D078(v53, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
    v55 = 0.0;
    v56 = 0.0;
    v57 = 0.0;
    v58 = 2;
  }

  else
  {
    v59 = v69;
    sub_1B4974FBC(v53 + v50, v69, &qword_1EB8A6670, &unk_1B4D2FDA0);
    if (v52(v59, 1, v39) == 1)
    {
      v60 = v70;
      *v70 = 0;
      v60[1] = 0;
      *(v60 + 16) = 0;
      sub_1B4D17BBC();
      sub_1B4D0D078(v53, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
      if (v52(v59, 1, v39) != 1)
      {
        sub_1B4975024(v59, &qword_1EB8A6670, &unk_1B4D2FDA0);
      }
    }

    else
    {
      sub_1B4D0D078(v53, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
      v60 = v70;
      sub_1B4D0D120(v59, v70, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    }

    v61 = *v60;
    v62 = *(v60 + 1);
    v58 = *(v60 + 16);
    sub_1B4D0D078(v60, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    v57 = v61 + v62;
    v55 = v61;
    v56 = v62;
  }

  v63 = v74;
  *v74 = v82;
  v64 = type metadata accessor for FitnessContextQueryResult(0);
  result = sub_1B4D0D120(v83, v63 + v64[5], type metadata accessor for FitnessContextQueryDescriptor);
  v65 = v63 + v64[6];
  v66 = v85;
  *v65 = v84;
  *(v65 + 1) = v66;
  *(v65 + 4) = v86;
  v67 = (v63 + v64[7]);
  *v67 = v55;
  v67[1] = v56;
  *(v67 + 2) = v58;
  v67[3] = v57;
  return result;
}

uint64_t sub_1B4D09058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v158 = &v128 - v4;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v156 = *(v5 - 8);
  v157 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v159 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v155 = &v128 - v8;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  v152 = *(v9 - 8);
  v153 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v154 = (&v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v151 = &v128 - v12;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v148 = *(v13 - 8);
  v149 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v150 = (&v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v147 = &v128 - v16;
  v145 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v146 = (&v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v142 = &v128 - v19;
  v141 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v143 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v139 = &v128 - v22;
  v137 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v138 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v135 = &v128 - v25;
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  v132 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context);
  v134 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v131 = &v128 - v28;
  v29 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v129 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v130 = (&v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v128 - v32;
  v34 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  v128 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v128 - v38;
  v40 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = (&v128 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  result = swift_beginAccess();
  if (*(v44 + 24) != 1)
  {
    v56 = v160;
    *(v160 + 32) = 0;
    *v56 = 0u;
    v56[1] = 0u;
    return result;
  }

  v46 = *(v44 + 16);
  if (v46 > 4)
  {
    if (v46 <= 6)
    {
      if (v46 == 5)
      {
        v68 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
        swift_beginAccess();
        v69 = v139;
        sub_1B4974FBC(v44 + v68, v139, &qword_1EB8ACAF0, &qword_1B4D3CE38);
        v70 = *(v136 + 48);
        v71 = v137;
        if (v70(v69, 1, v137) == 1)
        {
          v72 = v138;
          sub_1B4D17BBC();
          v73 = *(v71 + 20);
          v74 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
          (*(*(v74 - 8) + 56))(v72 + v73, 1, 1, v74);
          v75 = v70(v69, 1, v71);
          v76 = v161;
          v55 = v160;
          if (v75 != 1)
          {
            sub_1B4975024(v69, &qword_1EB8ACAF0, &qword_1B4D3CE38);
          }
        }

        else
        {
          v72 = v138;
          sub_1B4D0D120(v69, v138, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
          v76 = v161;
          v55 = v160;
        }

        v55[3] = &type metadata for VitalsContext;
        v55[4] = &protocol witness table for VitalsContext;
        result = VitalsContext.init(_:)(v72, v55);
        if (v76)
        {
          return __swift_deallocate_boxed_opaque_existential_1(v55);
        }
      }

      else
      {
        v117 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
        swift_beginAccess();
        v118 = v142;
        sub_1B4974FBC(v44 + v117, v142, &qword_1EB8ACB00, &unk_1B4D3CE40);
        v119 = *(v140 + 48);
        v120 = v141;
        if (v119(v118, 1, v141) == 1)
        {
          v121 = MEMORY[0x1E69E7CC0];
          v122 = v143;
          *(v143 + 8) = 0;
          *(v122 + 16) = 0;
          *v122 = v121;
          sub_1B4D17BBC();
          v123 = v119(v118, 1, v120);
          v124 = v161;
          v55 = v160;
          if (v123 != 1)
          {
            sub_1B4975024(v118, &qword_1EB8ACB00, &unk_1B4D3CE40);
          }
        }

        else
        {
          v122 = v143;
          sub_1B4D0D120(v118, v143, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
          v124 = v161;
          v55 = v160;
        }

        v55[3] = type metadata accessor for AwardsContext(0);
        v55[4] = &protocol witness table for AwardsContext;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
        result = AwardsContext.init(_:)(v122, boxed_opaque_existential_1);
        if (v124)
        {
          return __swift_deallocate_boxed_opaque_existential_1(v55);
        }
      }
    }

    else if (v46 == 7)
    {
      v83 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
      swift_beginAccess();
      v84 = v151;
      sub_1B4974FBC(v44 + v83, v151, &qword_1EB8A6660, &unk_1B4D2FDB0);
      v85 = v149;
      v86 = *(v148 + 48);
      if (v86(v84, 1, v149) == 1)
      {
        v87 = v150;
        *v150 = 0;
        v87[1] = 0;
        v87[2] = MEMORY[0x1E69E7CC0];
        sub_1B4D17BBC();
        v88 = v86(v84, 1, v85);
        v89 = v161;
        v55 = v160;
        if (v88 != 1)
        {
          sub_1B4975024(v84, &qword_1EB8A6660, &unk_1B4D2FDB0);
        }
      }

      else
      {
        v87 = v150;
        sub_1B4D0D120(v84, v150, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
        v89 = v161;
        v55 = v160;
      }

      v55[3] = &type metadata for WorkoutProperties;
      v55[4] = &protocol witness table for WorkoutProperties;
      result = WorkoutProperties.init(_:)(v87, v55);
      if (v89)
      {
        return __swift_deallocate_boxed_opaque_existential_1(v55);
      }
    }

    else if (v46 == 8)
    {
      v57 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
      swift_beginAccess();
      v58 = v155;
      sub_1B4974FBC(v44 + v57, v155, &qword_1EB8ACB18, &qword_1B4D3CE50);
      v59 = v153;
      v60 = *(v152 + 48);
      if (v60(v58, 1, v153) == 1)
      {
        v61 = v154;
        *v154 = MEMORY[0x1E69E7CC0];
        sub_1B4D17BBC();
        v62 = v60(v58, 1, v59);
        v63 = v161;
        v55 = v160;
        if (v62 != 1)
        {
          sub_1B4975024(v58, &qword_1EB8ACB18, &qword_1B4D3CE50);
        }
      }

      else
      {
        v61 = v154;
        sub_1B4D0D120(v58, v154, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
        v63 = v161;
        v55 = v160;
      }

      v55[3] = &type metadata for WorkoutWeekContext;
      v55[4] = &protocol witness table for WorkoutWeekContext;
      result = WorkoutWeekContext.init(_:)(v61, v55);
      if (v63)
      {
        return __swift_deallocate_boxed_opaque_existential_1(v55);
      }
    }

    else
    {
      v99 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
      swift_beginAccess();
      v100 = v158;
      sub_1B4974FBC(v44 + v99, v158, &qword_1EB8ACB28, &unk_1B4D3CE58);
      v101 = v157;
      v102 = *(v156 + 48);
      if (v102(v100, 1, v157) == 1)
      {
        v103 = v159;
        sub_1B4D17BBC();
        v104 = v101[5];
        v105 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
        (*(*(v105 - 8) + 56))(v103 + v104, 1, 1, v105);
        v106 = (v103 + v101[6]);
        *v106 = 0;
        v106[1] = 0;
        v107 = (v103 + v101[7]);
        *v107 = 0;
        v107[1] = 0;
        v108 = (v103 + v101[8]);
        *v108 = 0;
        v108[1] = 0;
        v109 = v102(v100, 1, v101);
        v110 = v161;
        v55 = v160;
        if (v109 != 1)
        {
          sub_1B4975024(v100, &qword_1EB8ACB28, &unk_1B4D3CE58);
        }
      }

      else
      {
        v103 = v159;
        sub_1B4D0D120(v100, v159, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
        v110 = v161;
        v55 = v160;
      }

      v55[3] = type metadata accessor for LocationContext(0);
      v55[4] = &protocol witness table for LocationContext;
      v125 = __swift_allocate_boxed_opaque_existential_1(v55);
      result = LocationContext.init(_:)(v103, v125);
      if (v110)
      {
        return __swift_deallocate_boxed_opaque_existential_1(v55);
      }
    }
  }

  else if (v46 <= 1)
  {
    if (v46)
    {
      v111 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
      swift_beginAccess();
      sub_1B4974FBC(v44 + v111, v33, &qword_1EB8ACAB8, &qword_1B4D3CE18);
      v112 = *(v128 + 48);
      if (v112(v33, 1, v34) == 1)
      {
        sub_1B4D17BBC();
        v113 = *(v34 + 20);
        v114 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
        (*(*(v114 - 8) + 56))(&v36[v113], 1, 1, v114);
        v115 = v112(v33, 1, v34);
        v116 = v161;
        v55 = v160;
        if (v115 != 1)
        {
          sub_1B4975024(v33, &qword_1EB8ACAB8, &qword_1B4D3CE18);
        }
      }

      else
      {
        sub_1B4D0D120(v33, v36, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
        v116 = v161;
        v55 = v160;
      }

      v55[3] = type metadata accessor for ActivitySummaryContext(0);
      v55[4] = &protocol witness table for ActivitySummaryContext;
      v126 = __swift_allocate_boxed_opaque_existential_1(v55);
      result = ActivitySummaryContext.init(_:)(v36, v126);
      if (v116)
      {
        return __swift_deallocate_boxed_opaque_existential_1(v55);
      }
    }

    else
    {
      v64 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
      swift_beginAccess();
      sub_1B4974FBC(v44 + v64, v39, &qword_1EB8ACAA8, &qword_1B4D3CE10);
      v65 = *(v41 + 48);
      if (v65(v39, 1, v40) == 1)
      {
        *v43 = MEMORY[0x1E69E7CC0];
        sub_1B4D17BBC();
        v66 = v65(v39, 1, v40);
        v67 = v161;
        v55 = v160;
        if (v66 != 1)
        {
          sub_1B4975024(v39, &qword_1EB8ACAA8, &qword_1B4D3CE10);
        }
      }

      else
      {
        sub_1B4D0D120(v39, v43, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
        v67 = v161;
        v55 = v160;
      }

      v55[3] = &type metadata for ActivitySharingContext;
      v55[4] = &protocol witness table for ActivitySharingContext;
      result = ActivitySharingContext.init(_:)(v43, v55);
      if (v67)
      {
        return __swift_deallocate_boxed_opaque_existential_1(v55);
      }
    }
  }

  else if (v46 == 2)
  {
    v77 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
    swift_beginAccess();
    v78 = v131;
    sub_1B4974FBC(v44 + v77, v131, &qword_1EB8A6678, &qword_1B4D3CE20);
    v79 = *(v129 + 48);
    if (v79(v78, 1, v29) == 1)
    {
      v80 = v130;
      *v130 = 0;
      v80[1] = 0;
      v80[2] = MEMORY[0x1E69E7CC0];
      sub_1B4D17BBC();
      v81 = v79(v78, 1, v29);
      v82 = v161;
      v55 = v160;
      if (v81 != 1)
      {
        sub_1B4975024(v78, &qword_1EB8A6678, &qword_1B4D3CE20);
      }
    }

    else
    {
      v80 = v130;
      sub_1B4D0D120(v78, v130, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
      v82 = v161;
      v55 = v160;
    }

    v55[3] = &type metadata for RingsProperties;
    v55[4] = &protocol witness table for RingsProperties;
    result = RingsProperties.init(_:)(v80, v55);
    if (v82)
    {
      return __swift_deallocate_boxed_opaque_existential_1(v55);
    }
  }

  else
  {
    if (v46 == 3)
    {
      v47 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
      swift_beginAccess();
      v48 = v147;
      sub_1B4974FBC(v44 + v47, v147, &qword_1EB8ACAD0, &qword_1B4D3CE28);
      v49 = *(v144 + 48);
      v50 = v145;
      if (v49(v48, 1, v145) == 1)
      {
        v51 = MEMORY[0x1E69E7CC0];
        v52 = v146;
        *v146 = MEMORY[0x1E69E7CC0];
        v52[1] = v51;
        sub_1B4D17BBC();
        v53 = v49(v48, 1, v50);
        v54 = v161;
        v55 = v160;
        if (v53 != 1)
        {
          sub_1B4975024(v48, &qword_1EB8ACAD0, &qword_1B4D3CE28);
        }
      }

      else
      {
        v52 = v146;
        sub_1B4D0D120(v48, v146, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
        v54 = v161;
        v55 = v160;
      }

      v55[3] = &type metadata for WeeklySummaryContext;
      v55[4] = &protocol witness table for WeeklySummaryContext;
      result = WeeklySummaryContext.init(_:)(v52, v55);
      if (!v54)
      {
        return result;
      }

      return __swift_deallocate_boxed_opaque_existential_1(v55);
    }

    v90 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
    swift_beginAccess();
    v91 = v135;
    sub_1B4974FBC(v44 + v90, v135, &qword_1EB8ACAE0, &qword_1B4D3CE30);
    v92 = *(v132 + 48);
    v93 = Context;
    if (v92(v91, 1, Context) == 1)
    {
      v94 = v134;
      sub_1B4D17BBC();
      v95 = *(v93 + 20);
      v96 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
      (*(*(v96 - 8) + 56))(v94 + v95, 1, 1, v96);
      v97 = v92(v91, 1, v93);
      v98 = v161;
      v55 = v160;
      if (v97 != 1)
      {
        sub_1B4975024(v91, &qword_1EB8ACAE0, &qword_1B4D3CE30);
      }
    }

    else
    {
      v94 = v134;
      sub_1B4D0D120(v91, v134, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
      v98 = v161;
      v55 = v160;
    }

    v55[3] = &type metadata for TrainingLoadContext;
    v55[4] = &protocol witness table for TrainingLoadContext;
    result = TrainingLoadContext.init(_:)(v94, v55);
    if (v98)
    {
      return __swift_deallocate_boxed_opaque_existential_1(v55);
    }
  }

  return result;
}

uint64_t FitnessContextQueryResult.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  sub_1B4D0D0D8(&qword_1EB8AA6B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4D0A6A8(void *a1, uint64_t *a2)
{
  v3 = v2;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v36 = *(Metrics - 8);
  v37 = Metrics;
  MEMORY[0x1EEE9AC00](Metrics);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  v34 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v45 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v42 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor);
  v43 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *(*a2 + 16);
  if (v12)
  {
    v39 = v2;
    v40 = a2;
    v41 = a1;
    v13 = sub_1B49B6EF0(v12, 0);
    v14 = sub_1B49B74A4(v44, v13 + 4, v12, v11);
    v15 = v44[0];

    result = sub_1B49B75FC(v15);
    if (v14 != v12)
    {
      __break(1u);
      return result;
    }

    a2 = v40;
    a1 = v41;
    v3 = v39;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v13;
  v17 = type metadata accessor for FitnessContextQueryResult(0);
  MEMORY[0x1EEE9AC00](v17);
  *(&v33 - 2) = v18;
  sub_1B4D0D0D8(&qword_1EB8AA710, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  v19 = v43;
  result = sub_1B4D17DAC();
  v20 = v45;
  if (!v3)
  {
    v21 = v19;
    v22 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
    v23 = v22[6];
    sub_1B4975024(a1 + v23, &qword_1EB8AA6B8, &qword_1B4D2FC68);
    sub_1B4D0D120(v21, a1 + v23, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
    (*(v42 + 56))(a1 + v23, 0, 1, Descriptor);
    sub_1B4974FBC(a2 + *(v17 + 24), v44, &qword_1EB8A6E68, &qword_1B4D20870);
    v24 = v44[3];
    result = sub_1B4975024(v44, &qword_1EB8A6E68, &qword_1B4D20870);
    if (v24)
    {
      MEMORY[0x1EEE9AC00](result);
      *(&v33 - 2) = a2;
      sub_1B4D0D0D8(&qword_1EB8ACCB0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextComponent);
      v25 = v38;
      sub_1B4D17DAC();
      v26 = v22[7];
      sub_1B4975024(a1 + v26, &qword_1EB8ACAA0, &unk_1B4D3CE00);
      sub_1B4D0D120(v20, a1 + v26, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
      result = (*(v34 + 56))(a1 + v26, 0, 1, v25);
    }

    if (*(a2 + *(v17 + 28) + 16) != 2)
    {
      v27 = MEMORY[0x1EEE9AC00](result);
      *(&v33 - 2) = v28;
      *(&v33 - 16) = v29 & 1;
      *(&v33 - 1) = v27;
      sub_1B4D0D0D8(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);
      v30 = v35;
      v31 = v37;
      sub_1B4D17DAC();
      v32 = v22[8];
      sub_1B4975024(a1 + v32, &qword_1EB8A6670, &unk_1B4D2FDA0);
      sub_1B4D0D120(v30, a1 + v32, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      return (*(v36 + 56))(a1 + v32, 0, 1, v31);
    }
  }

  return result;
}

uint64_t sub_1B4D0AC78(uint64_t a1, uint64_t a2)
{
  v231 = a2;
  v222 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v182 = &v181 - v4;
  v186 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v181 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v185 = &v181 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for LocationContext(0);
  MEMORY[0x1EEE9AC00](v191);
  v187 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v190 = &v181 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v184 = &v181 - v10;
  v193 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  v183 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v192 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v189 = &v181 - v13;
  v197 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v188 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v196 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v195 = &v181 - v16;
  v201 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  v194 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v200 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v199 = &v181 - v19;
  v205 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  v198 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v204 = &v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for AwardsContext(0);
  MEMORY[0x1EEE9AC00](v210);
  v206 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v209 = &v181 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v203 = &v181 - v25;
  v212 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  v202 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v211 = &v181 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v208 = &v181 - v28;
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  v207 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context);
  v215 = &v181 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v214 = &v181 - v31;
  v220 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v213 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v219 = &v181 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v218 = &v181 - v34;
  v35 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  v217 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v181 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ActivitySummaryContext(0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v181 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v181 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v46 = &v181 - v45;
  v47 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  v221.i64[0] = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v181 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for FitnessContextQueryResult(0);
  sub_1B4974FBC(v231 + *(v50 + 24), v229, &qword_1EB8A6E68, &qword_1B4D20870);
  if (!v230)
  {
    goto LABEL_82;
  }

  v231 = v2;
  sub_1B4974FBC(v229, &v228, &qword_1EB8A6E68, &qword_1B4D20870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E70, &qword_1B4D1C1A0);
  if (swift_dynamicCast())
  {
    v51 = v223;
    v52 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
    v53 = v222;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = *(v53 + v52);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v55 = sub_1B4C29188(v55);
      *(v53 + v52) = v55;
    }

    v56 = swift_beginAccess();
    *(v55 + 16) = 0;
    *(v55 + 24) = 1;
    MEMORY[0x1EEE9AC00](v56);
    *(&v181 - 2) = v51;
    sub_1B4D0D0D8(&qword_1EB8AA730, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext);
    v57 = v231;
    sub_1B4D17DAC();

    if (v57)
    {
      goto LABEL_17;
    }

    v58 = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(v53 + v52);
    if ((v58 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v59 = sub_1B4C29188(v59);
      *(v53 + v52) = v59;
    }

    sub_1B4D0D120(v49, v46, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
    (*(v221.i64[0] + 56))(v46, 0, 1, v47);
    v60 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
    swift_beginAccess();
    v61 = &qword_1EB8ACAA8;
    v62 = &qword_1B4D3CE10;
    v63 = v59 + v60;
    v64 = v46;
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    sub_1B4D0D120(v43, v40, type metadata accessor for ActivitySummaryContext);
    v65 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
    v66 = v222;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v66 + v65);
    if ((v67 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v68 = sub_1B4C29188(v68);
      *(v66 + v65) = v68;
    }

    v69 = swift_beginAccess();
    *(v68 + 16) = 1;
    *(v68 + 24) = 1;
    MEMORY[0x1EEE9AC00](v69);
    *(&v181 - 2) = v40;
    sub_1B4D0D0D8(&qword_1EB8A9C40, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummaryContext);
    v70 = v231;
    sub_1B4D17DAC();
    if (!v70)
    {
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v99 = *(v66 + v65);
      if ((v98 & 1) == 0)
      {
        type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
        swift_allocObject();
        v99 = sub_1B4C29188(v99);
        *(v66 + v65) = v99;
      }

      v100 = v37;
      v101 = v218;
      sub_1B4D0D120(v100, v218, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
      (*(v217 + 56))(v101, 0, 1, v35);
      v102 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
      swift_beginAccess();
      sub_1B49A205C(v101, v99 + v102, &qword_1EB8ACAB8, &qword_1B4D3CE18);
      swift_endAccess();
      sub_1B4D0D078(v40, type metadata accessor for ActivitySummaryContext);
      goto LABEL_17;
    }

    v71 = type metadata accessor for ActivitySummaryContext;
    v72 = v40;
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v73 = v225;
    v74 = v226;
    v75 = v227;
    v76 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
    v77 = v222;
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v79 = *(v77 + v76);
    if ((v78 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v79 = sub_1B4C29188(v79);
      *(v77 + v76) = v79;
    }

    v80 = swift_beginAccess();
    *(v79 + 16) = 2;
    *(v79 + 24) = 1;
    MEMORY[0x1EEE9AC00](v80);
    *(&v181 - 4) = v73;
    *(&v181 - 3) = v74;
    *(&v181 - 2) = v75;
    sub_1B4D0D0D8(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperties);
    v81 = v219;
    v82 = v220;
    v83 = v231;
    sub_1B4D17DAC();
    if (v83)
    {
LABEL_72:

      goto LABEL_17;
    }

    v112 = swift_isUniquelyReferenced_nonNull_native();
    v113 = *(v77 + v76);
    if ((v112 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v113 = sub_1B4C29188(v113);
      *(v77 + v76) = v113;
    }

    v114 = v214;
    sub_1B4D0D120(v81, v214, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    (*(v213 + 56))(v114, 0, 1, v82);
    v115 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
    swift_beginAccess();
    v116 = &qword_1EB8A6678;
    v117 = &qword_1B4D3CE20;
LABEL_41:
    sub_1B49A205C(v114, v113 + v115, v116, v117);
    goto LABEL_10;
  }

  v84 = swift_dynamicCast();
  v85 = v222;
  if (v84)
  {
    v86 = v223;
    v87 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v89 = *(v85 + v87);
    if ((v88 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v89 = sub_1B4C29188(v89);
      *(v85 + v87) = v89;
    }

    v90 = Context;
    v91 = v215;
    v92 = swift_beginAccess();
    *(v89 + 16) = 4;
    *(v89 + 24) = 1;
    MEMORY[0x1EEE9AC00](v92);
    *(&v181 - 16) = v86;
    sub_1B4D0D0D8(&qword_1EB8AA518, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext);
    v93 = v231;
    sub_1B4D17DAC();
    if (v93)
    {
      goto LABEL_17;
    }

    v94 = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v85 + v87);
    if ((v94 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v95 = sub_1B4C29188(v95);
      *(v85 + v87) = v95;
    }

    v96 = v208;
    sub_1B4D0D120(v91, v208, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
    (*(v207 + 56))(v96, 0, 1, v90);
    v97 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
    swift_beginAccess();
    v61 = &qword_1EB8ACAE0;
    v62 = &qword_1B4D3CE30;
    goto LABEL_56;
  }

  if (swift_dynamicCast())
  {
    v103.i32[0] = v223;
    v221 = vmovl_u8(v103);
    v104 = BYTE4(v223);
    v105 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
    v106 = swift_isUniquelyReferenced_nonNull_native();
    v107 = *(v85 + v105);
    if ((v106 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v107 = sub_1B4C29188(v107);
      *(v85 + v105) = v107;
    }

    v108 = v212;
    v109 = v211;
    v110 = swift_beginAccess();
    *(v107 + 16) = 5;
    *(v107 + 24) = 1;
    MEMORY[0x1EEE9AC00](v110);
    *(&v181 - 4) = vuzp1_s8(*v221.i8, *v221.i8).u32[0];
    *(&v181 - 12) = v104;
    sub_1B4D0D0D8(&qword_1EB8AA6D0, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext);
    v111 = v231;
    sub_1B4D17DAC();
    if (v111)
    {
      goto LABEL_17;
    }

    v137 = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v85 + v105);
    if ((v137 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v95 = sub_1B4C29188(v95);
      *(v85 + v105) = v95;
    }

    v96 = v203;
    sub_1B4D0D120(v109, v203, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
    (*(v202 + 56))(v96, 0, 1, v108);
    v97 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
    swift_beginAccess();
    v61 = &qword_1EB8ACAF0;
    v62 = &qword_1B4D3CE38;
    goto LABEL_56;
  }

  v118 = v209;
  if (swift_dynamicCast())
  {
    v119 = v206;
    sub_1B4D0D120(v118, v206, type metadata accessor for AwardsContext);
    v120 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
    v121 = swift_isUniquelyReferenced_nonNull_native();
    v122 = *(v85 + v120);
    if ((v121 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v122 = sub_1B4C29188(v122);
      *(v85 + v120) = v122;
    }

    v123 = v205;
    v124 = v204;
    v125 = swift_beginAccess();
    *(v122 + 16) = 6;
    *(v122 + 24) = 1;
    MEMORY[0x1EEE9AC00](v125);
    *(&v181 - 2) = v119;
    sub_1B4D0D0D8(&qword_1EB8AA700, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext);
    v126 = v231;
    sub_1B4D17DAC();
    if (v126)
    {
      v127 = type metadata accessor for AwardsContext;
LABEL_47:
      v71 = v127;
      v72 = v119;
LABEL_16:
      sub_1B4D0D078(v72, v71);
      goto LABEL_17;
    }

    v149 = swift_isUniquelyReferenced_nonNull_native();
    v150 = *(v85 + v120);
    if ((v149 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v150 = sub_1B4C29188(v150);
      *(v85 + v120) = v150;
    }

    v151 = v199;
    sub_1B4D0D120(v124, v199, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
    (*(v198 + 56))(v151, 0, 1, v123);
    v152 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
    swift_beginAccess();
    sub_1B49A205C(v151, v150 + v152, &qword_1EB8ACB00, &unk_1B4D3CE40);
    swift_endAccess();
    v153 = type metadata accessor for AwardsContext;
    goto LABEL_67;
  }

  if (swift_dynamicCast())
  {
    v128 = v223;
    v129 = v224;
    v130 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
    v131 = swift_isUniquelyReferenced_nonNull_native();
    v132 = *(v85 + v130);
    if ((v131 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v132 = sub_1B4C29188(v132);
      *(v85 + v130) = v132;
    }

    v133 = v201;
    v134 = v200;
    v135 = swift_beginAccess();
    *(v132 + 16) = 3;
    *(v132 + 24) = 1;
    MEMORY[0x1EEE9AC00](v135);
    *(&v181 - 2) = v128;
    *(&v181 - 1) = v129;
    sub_1B4D0D0D8(&qword_1EB8AA718, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklySummaryContext);
    v136 = v231;
    sub_1B4D17DAC();
    if (v136)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v228);
      return sub_1B4975024(v229, &qword_1EB8A6E68, &qword_1B4D20870);
    }

    v162 = swift_isUniquelyReferenced_nonNull_native();
    v95 = *(v85 + v130);
    if ((v162 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v95 = sub_1B4C29188(v95);
      *(v85 + v130) = v95;
    }

    v96 = v195;
    sub_1B4D0D120(v134, v195, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
    (*(v194 + 56))(v96, 0, 1, v133);
    v97 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
    swift_beginAccess();
    v61 = &qword_1EB8ACAD0;
    v62 = &qword_1B4D3CE28;
    goto LABEL_56;
  }

  if (swift_dynamicCast())
  {
    v138 = v225;
    v139 = v226;
    v140 = v227;
    v141 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
    v142 = swift_isUniquelyReferenced_nonNull_native();
    v143 = *(v85 + v141);
    if ((v142 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v143 = sub_1B4C29188(v143);
      *(v85 + v141) = v143;
    }

    v144 = swift_beginAccess();
    *(v143 + 16) = 7;
    *(v143 + 24) = 1;
    MEMORY[0x1EEE9AC00](v144);
    *(&v181 - 4) = v138;
    *(&v181 - 3) = v139;
    *(&v181 - 2) = v140;
    sub_1B4D0D0D8(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperties);
    v145 = v196;
    v146 = v197;
    v147 = v231;
    sub_1B4D17DAC();
    if (v147)
    {
      goto LABEL_72;
    }

    v148 = swift_isUniquelyReferenced_nonNull_native();
    v113 = *(v85 + v141);
    if ((v148 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      swift_allocObject();
      v113 = sub_1B4C29188(v113);
      *(v85 + v141) = v113;
    }

    v114 = v189;
    sub_1B4D0D120(v145, v189, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    (*(v188 + 56))(v114, 0, 1, v146);
    v115 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
    swift_beginAccess();
    v116 = &qword_1EB8A6660;
    v117 = &unk_1B4D2FDB0;
    goto LABEL_41;
  }

  if (!swift_dynamicCast())
  {
    v163 = v190;
    if (swift_dynamicCast())
    {
      v119 = v187;
      sub_1B4D0D120(v163, v187, type metadata accessor for LocationContext);
      v164 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
      v165 = swift_isUniquelyReferenced_nonNull_native();
      v166 = *(v85 + v164);
      if ((v165 & 1) == 0)
      {
        type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
        swift_allocObject();
        v166 = sub_1B4C29188(v166);
        *(v85 + v164) = v166;
      }

      v167 = v186;
      v168 = v185;
      v169 = swift_beginAccess();
      *(v166 + 16) = 9;
      *(v166 + 24) = 1;
      MEMORY[0x1EEE9AC00](v169);
      *(&v181 - 2) = v119;
      sub_1B4D0D0D8(&qword_1EB8AA6F0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationContext);
      v170 = v231;
      sub_1B4D17DAC();
      if (v170)
      {
        v127 = type metadata accessor for LocationContext;
        goto LABEL_47;
      }

      v177 = swift_isUniquelyReferenced_nonNull_native();
      v178 = *(v85 + v164);
      if ((v177 & 1) == 0)
      {
        type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
        swift_allocObject();
        v178 = sub_1B4C29188(v178);
        *(v85 + v164) = v178;
      }

      v179 = v182;
      sub_1B4D0D120(v168, v182, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
      (*(v181 + 56))(v179, 0, 1, v167);
      v180 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
      swift_beginAccess();
      sub_1B49A205C(v179, v178 + v180, &qword_1EB8ACB28, &unk_1B4D3CE58);
      swift_endAccess();
      v153 = type metadata accessor for LocationContext;
LABEL_67:
      sub_1B4D0D078(v119, v153);
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v228);
LABEL_82:
    v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E68, &qword_1B4D20870);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AE768, &qword_1B4D481B8);
    v171 = sub_1B4D181CC();
    v173 = v172;
    sub_1B4D0D024();
    swift_allocError();
    *v174 = v171;
    *(v174 + 8) = v173;
    *(v174 + 16) = 0;
    swift_willThrow();
    return sub_1B4975024(v229, &qword_1EB8A6E68, &qword_1B4D20870);
  }

  v154 = v223;
  v155 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v157 = *(v85 + v155);
  if ((v156 & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v157 = sub_1B4C29188(v157);
    *(v85 + v155) = v157;
  }

  v158 = v193;
  v159 = v192;
  v160 = swift_beginAccess();
  *(v157 + 16) = 8;
  *(v157 + 24) = 1;
  MEMORY[0x1EEE9AC00](v160);
  *(&v181 - 2) = v154;
  sub_1B4D0D0D8(&qword_1EB8A6A48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  v161 = v231;
  sub_1B4D17DAC();
  if (v161)
  {
    goto LABEL_72;
  }

  v176 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *(v85 + v155);
  if ((v176 & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    swift_allocObject();
    v95 = sub_1B4C29188(v95);
    *(v85 + v155) = v95;
  }

  v96 = v184;
  sub_1B4D0D120(v159, v184, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  (*(v183 + 56))(v96, 0, 1, v158);
  v97 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  v61 = &qword_1EB8ACB18;
  v62 = &qword_1B4D3CE50;
LABEL_56:
  v63 = v95 + v97;
  v64 = v96;
LABEL_9:
  sub_1B49A205C(v64, v63, v61, v62);
LABEL_10:
  swift_endAccess();
LABEL_17:
  __swift_destroy_boxed_opaque_existential_1Tm(&v228);
  return sub_1B4975024(v229, &qword_1EB8A6E68, &qword_1B4D20870);
}

uint64_t sub_1B4D0CD1C(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4D0D0D8(&qword_1EB8AE760, type metadata accessor for FitnessContextQueryResult, &protocol conformance descriptor for FitnessContextQueryResult);
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4D0D0D8(&qword_1EB8AA6B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
    v1 = sub_1B4D17D6C();
    sub_1B4D0D078(v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
  }

  return v1;
}

uint64_t sub_1B4D0CE9C()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  sub_1B4D0D0D8(&qword_1EB8AA6B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4D0D024()
{
  result = qword_1EB8AE770;
  if (!qword_1EB8AE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE770);
  }

  return result;
}

uint64_t sub_1B4D0D078(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4D0D0D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4D0D120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4D0D194(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B4D0D1DC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t FitnessContext.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v28 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for FitnessContextQueryResult(0);
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v15 = *(*a1 + 16);
  if (v15)
  {
    v23 = a2;
    v24 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    v25 = v15;
    result = sub_1B4BCEDDC(0, v15, 0);
    v17 = 0;
    v18 = v29;
    v26 = v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    while (v17 < *(v14 + 16))
    {
      sub_1B4D0DC8C(v26 + *(v6 + 72) * v17, v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
      v19 = v28;
      sub_1B4D0DC8C(v10, v28, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
      FitnessContextQueryResult.init(_:)(v19, v13);
      if (v2)
      {
        sub_1B4D0DD3C(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
        sub_1B4D0DD3C(v24, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext);
      }

      v20 = v6;
      sub_1B4D0DD3C(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
      v29 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B4BCEDDC((v21 > 1), v22 + 1, 1);
        v18 = v29;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      result = sub_1B4D0DD9C(v13, v18 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, type metadata accessor for FitnessContextQueryResult);
      v6 = v20;
      if (v25 == v17)
      {
        result = sub_1B4D0DD3C(v24, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext);
        *v23 = v18;
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_1B4D0DD3C(a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext);
    *a2 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t FitnessContext.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessContext(0);
  sub_1B4D0DCF4(&qword_1EB8AA6A8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4D0D644(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for FitnessContextQueryResult(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  v21 = *(v9 - 8);
  v22 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v19 = a1;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF85C(0, v12, 0);
    v13 = v23;
    v14 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = *(v6 + 72);
    while (1)
    {
      v15 = sub_1B4D0DC8C(v14, v8, type metadata accessor for FitnessContextQueryResult);
      MEMORY[0x1EEE9AC00](v15);
      *(&v19 - 2) = v8;
      sub_1B4D0DCF4(&qword_1EB8AA6B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
      sub_1B4D17DAC();
      if (v2)
      {
        break;
      }

      sub_1B4D0DD3C(v8, type metadata accessor for FitnessContextQueryResult);
      v23 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B4BCF85C((v16 > 1), v17 + 1, 1);
        v13 = v23;
      }

      *(v13 + 16) = v17 + 1;
      sub_1B4D0DD9C(v11, v13 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
      v14 += v20;
      if (!--v12)
      {
        a1 = v19;
        goto LABEL_9;
      }
    }

    sub_1B4D0DD3C(v8, type metadata accessor for FitnessContextQueryResult);
  }

  else
  {
LABEL_9:

    *a1 = v13;
  }

  return result;
}

uint64_t *sub_1B4D0D954(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v7 = sub_1B4D0DC38();
  v8 = &v11;
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4D0DCF4(&qword_1EB8AA6A8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContext);
    v8 = sub_1B4D17D6C();
    sub_1B4D0DD3C(v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext);
  }

  return v8;
}

uint64_t sub_1B4D0DA98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1B4B285B4(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B4D0DACC()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessContext(0);
  sub_1B4D0DCF4(&qword_1EB8AA6A8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContext);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4D0DC38()
{
  result = qword_1EB8AE778;
  if (!qword_1EB8AE778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE778);
  }

  return result;
}

uint64_t sub_1B4D0DC8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4D0DCF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4D0DD3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4D0DD9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t InferenceRecord.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8758, &qword_1B4D22430);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v105 = v91 - v4;
  v104 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v108 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v97 = v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InferenceResult(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = (v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8748, &qword_1B4D22428);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v102 = v91 - v9;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v99 = *(v10 - 8);
  v100 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v101 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4D1777C();
  v106 = *(v12 - 8);
  v107 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v119 = v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v91 - v15;
  v17 = sub_1B4D177CC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v91 - v22;
  v24 = a1;
  v25 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20));
  swift_beginAccess();

  sub_1B4D1778C();

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1B4975024(v16, &qword_1EB8A6A30, &unk_1B4D1FC00);
    sub_1B49BA334();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
    return sub_1B4D0E954(v24);
  }

  else
  {
    v96 = v24;
    v91[0] = *(v18 + 32);
    v91[1] = v18 + 32;
    (v91[0])(v23, v16, v17);
    v95 = v18;
    v28 = *(v18 + 16);
    v92 = v20;
    v93 = v17;
    v28(v20, v23, v17);
    swift_beginAccess();
    sub_1B4D176CC();
    v29 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
    swift_beginAccess();
    v30 = v102;
    sub_1B4974FBC(v25 + v29, v102, &qword_1EB8A8748, &qword_1B4D22428);
    v31 = v100;
    v32 = *(v99 + 48);
    v33 = v32(v30, 1, v100);
    v34 = v23;
    v99 = v25;
    if (v33 == 1)
    {
      v35 = v101;
      sub_1B4D17BBC();
      v36 = (v35 + v31[5]);
      *v36 = 0;
      v36[1] = 0;
      v37 = (v35 + v31[6]);
      *v37 = 0;
      v37[1] = 0;
      v38 = v31[7];
      v39 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
      (*(*(v39 - 8) + 56))(v35 + v38, 1, 1, v39);
      v40 = (v35 + v31[8]);
      *v40 = 0;
      v40[1] = 0;
      v41 = v31[9];
      v42 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
      (*(*(v42 - 8) + 56))(v35 + v41, 1, 1, v42);
      v43 = (v35 + v31[10]);
      *v43 = 0;
      v43[1] = 0;
      *(v35 + v31[11]) = 2;
      v44 = v32(v30, 1, v31);
      v45 = v96;
      v46 = v104;
      v47 = v108;
      if (v44 != 1)
      {
        sub_1B4975024(v30, &qword_1EB8A8748, &qword_1B4D22428);
      }
    }

    else
    {
      v35 = v101;
      sub_1B4D0E9B0(v30, v101, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
      v45 = v96;
      v46 = v104;
      v47 = v108;
    }

    v48 = v103;
    v49 = InferenceRequest.init(_:)(v35, v117);
    v50 = v105;
    v51 = v95;
    if (v48)
    {
      (*(v106 + 8))(v119, v107, v49);
      v52 = *(v51 + 8);
      v53 = v93;
      v52(v92, v93);
      v52(v34, v53);
      return sub_1B4D0E954(v45);
    }

    else
    {
      v115 = v117[6];
      v116[0] = v118[0];
      *(v116 + 9) = *(v118 + 9);
      v111 = v117[2];
      v112 = v117[3];
      v113 = v117[4];
      v114 = v117[5];
      v109 = v117[0];
      v110 = v117[1];
      v54 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
      v55 = v99;
      swift_beginAccess();
      sub_1B4974FBC(v55 + v54, v50, &qword_1EB8A8758, &qword_1B4D22430);
      v58 = *(v47 + 48);
      v57 = v47 + 48;
      v56 = v58;
      if (v58(v50, 1, v46) == 1)
      {
        v108 = v57;
        v59 = v46;
        v60 = v97;
        sub_1B4D17BBC();
        v61 = (v60 + v59[5]);
        *v61 = 0;
        v61[1] = 0;
        v62 = v60 + v59[6];
        *v62 = 0;
        *(v62 + 8) = 1;
        v63 = (v60 + v59[7]);
        *v63 = 0;
        v63[1] = 0;
        v64 = (v60 + v59[8]);
        *v64 = 0;
        v64[1] = 0;
        v65 = (v60 + v59[9]);
        *v65 = 0;
        v65[1] = 0;
        v66 = v59[10];
        v67 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
        (*(*(v67 - 8) + 56))(v60 + v66, 1, 1, v67);
        v68 = v59[11];
        v69 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
        (*(*(v69 - 8) + 56))(v60 + v68, 1, 1, v69);
        if (v56(v50, 1, v59) != 1)
        {
          sub_1B4975024(v50, &qword_1EB8A8758, &qword_1B4D22430);
        }
      }

      else
      {
        v60 = v97;
        sub_1B4D0E9B0(v50, v97, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
      }

      InferenceResult.init(_:)(v60, v98);
      v70 = v119;
      v72 = v92;
      v71 = v93;
      (*(v95 + 8))(v34, v93);
      v73 = v99;
      v74 = (v99 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion);
      swift_beginAccess();
      v108 = *v74;
      v75 = v70;
      v76 = v71;
      v77 = v74[1];
      v78 = (v73 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID);
      swift_beginAccess();
      v79 = *v78;
      v80 = v78[1];

      sub_1B4D0E954(v96);
      v81 = v72;
      v82 = v94;
      (v91[0])(v94, v81, v76);
      v83 = type metadata accessor for InferenceRecord(0);
      (*(v106 + 32))(v82 + v83[5], v75, v107);
      v84 = (v82 + v83[6]);
      v85 = v116[0];
      v84[6] = v115;
      v84[7] = v85;
      *(v84 + 121) = *(v116 + 9);
      v86 = v112;
      v84[2] = v111;
      v84[3] = v86;
      v87 = v114;
      v84[4] = v113;
      v84[5] = v87;
      v88 = v110;
      *v84 = v109;
      v84[1] = v88;
      result = sub_1B4D0E9B0(v98, v82 + v83[7], type metadata accessor for InferenceResult);
      v89 = (v82 + v83[8]);
      *v89 = v108;
      v89[1] = v77;
      v90 = (v82 + v83[9]);
      *v90 = v79;
      v90[1] = v80;
    }
  }

  return result;
}

uint64_t InferenceRecord.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  sub_1B4D0F3D8(&qword_1EB8A83E0, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRecord);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4D0E954(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4D0E9B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4D0EA18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8758, &qword_1B4D22430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v57 = &v56 - v5;
  v60 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v56 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8748, &qword_1B4D22428);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v56 - v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4D1779C();
  v15 = v14;
  v16 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a1 + v16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    swift_allocObject();
    v18 = sub_1B4A463BC(v18);
    *(a1 + v16) = v18;
  }

  swift_beginAccess();
  v18[2] = v13;
  v18[3] = v15;

  v19 = type metadata accessor for InferenceRecord(0);
  sub_1B4D176DC();
  v21 = v20;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(a1 + v16);
  if ((v22 & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    swift_allocObject();
    v23 = sub_1B4A463BC(v23);
    *(a1 + v16) = v23;
  }

  v24 = swift_beginAccess();
  v23[4] = v21;
  v25 = (a2 + v19[6]);
  v26 = v25[7];
  v62[6] = v25[6];
  *v63 = v26;
  *&v63[9] = *(v25 + 121);
  v27 = v25[3];
  v62[2] = v25[2];
  v62[3] = v27;
  v28 = v25[5];
  v62[4] = v25[4];
  v62[5] = v28;
  v29 = v25[1];
  v62[0] = *v25;
  v62[1] = v29;
  MEMORY[0x1EEE9AC00](v24);
  *(&v56 - 2) = v62;
  sub_1B4D0F3D8(&qword_1EB8A8940, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRequest);
  v30 = v61;
  result = sub_1B4D17DAC();
  if (!v30)
  {
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(a1 + v16);
    if ((v32 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
      swift_allocObject();
      v33 = sub_1B4A463BC(v33);
      *(a1 + v16) = v33;
    }

    sub_1B4D0E9B0(v12, v9, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
    (*(v58 + 56))(v9, 0, 1, v10);
    v34 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
    swift_beginAccess();
    sub_1B49A205C(v9, v33 + v34, &qword_1EB8A8748, &qword_1B4D22428);
    v35 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v35);
    *(&v56 - 2) = v36;
    sub_1B4D0F3D8(&qword_1EB8A6958, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceResult);
    v37 = v59;
    v38 = v60;
    sub_1B4D17DAC();
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(a1 + v16);
    if ((v39 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
      swift_allocObject();
      v40 = sub_1B4A463BC(v40);
      *(a1 + v16) = v40;
    }

    v41 = v37;
    v42 = v57;
    sub_1B4D0E9B0(v41, v57, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    (*(v56 + 56))(v42, 0, 1, v38);
    v43 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
    swift_beginAccess();
    sub_1B49A205C(v42, v40 + v43, &qword_1EB8A8758, &qword_1B4D22430);
    result = swift_endAccess();
    v44 = (a2 + v19[9]);
    v45 = v44[1];
    if (v45)
    {
      v46 = *v44;

      v47 = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(a1 + v16);
      if ((v47 & 1) == 0)
      {
        type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
        swift_allocObject();
        v48 = sub_1B4A463BC(v48);
        *(a1 + v16) = v48;
      }

      v49 = (v48 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID);
      swift_beginAccess();
      *v49 = v46;
      v49[1] = v45;
    }

    v50 = (a2 + v19[8]);
    v51 = v50[1];
    if (v51)
    {
      v52 = *v50;

      v53 = swift_isUniquelyReferenced_nonNull_native();
      v54 = *(a1 + v16);
      if ((v53 & 1) == 0)
      {
        type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
        swift_allocObject();
        v54 = sub_1B4A463BC(v54);
        *(a1 + v16) = v54;
      }

      v55 = (v54 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion);
      swift_beginAccess();
      *v55 = v52;
      v55[1] = v51;
    }
  }

  return result;
}

uint64_t sub_1B4D0F11C(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B4D0F3D8(&qword_1EB8AE780, type metadata accessor for InferenceRecord, &protocol conformance descriptor for InferenceRecord);
  (*(v6 + 32))(a1, v6);
  if (!v1)
  {
    sub_1B4D0F3D8(&qword_1EB8A83E0, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRecord);
    v3 = sub_1B4D17D6C();
    sub_1B4D0E954(v5);
  }

  return v3;
}

uint64_t sub_1B4D0F318()
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  sub_1B4D0F3D8(&qword_1EB8A83E0, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRecord);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4D0F3D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static WorkoutAlertFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49AA274;

  return sub_1B4D0F75C(a1, a3);
}

uint64_t WorkoutAlertFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4D0F578@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

double sub_1B4D0F5CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = *(a1 + 10);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = *(a1 + 32);
  if (v6 == 1 && v4 > 3)
  {
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {
    v11 = *(a2 + *(type metadata accessor for WorkoutState(0) + 24));
    *a3 = v4;
    *(a3 + 8) = v5 | (v7 << 16) | (v6 << 8);
    *(a3 + 16) = v9;
    *(a3 + 24) = v8;
    *(a3 + 32) = v10;
    *(a3 + 40) = v11;
    v12 = v11;
  }

  return result;
}

uint64_t sub_1B4D0F69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49DD034;

  return sub_1B4D0F75C(a1, a3);
}

uint64_t sub_1B4D0F75C(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v2[3] = swift_task_alloc();
  v3 = type metadata accessor for WorkoutState(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4D0F854, 0, 0);
}

uint64_t sub_1B4D0F854()
{
  v18 = v0;
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_1B49B4670(v0[2], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B49933E8(v0[3]);
  }

  else
  {
    v4 = v0[6];
    v5 = v0[4];
    sub_1B49B46E0(v0[3], v4);
    v6 = *(v4 + *(v5 + 32));
    if (*(v6 + 16))
    {
      v7 = v0[6];
      v8 = swift_task_alloc();
      *(v8 + 16) = v7;
      v9 = sub_1B4AE0DE0(sub_1B4D0FCF4, v8, v6);

      sub_1B49AA7C0(v7);
      goto LABEL_11;
    }

    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v10 = sub_1B4D17F6C();
    __swift_project_value_buffer(v10, qword_1EDC36F00);
    v11 = sub_1B4D17F5C();
    v12 = sub_1B4D1873C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1B49558AC(0xD000000000000010, 0x80000001B4D67080, &v17);
      _os_log_impl(&dword_1B4953000, v11, v12, "%s No workout alerts set.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1B8C7DDA0](v14, -1, -1);
      MEMORY[0x1B8C7DDA0](v13, -1, -1);
    }

    sub_1B49AA7C0(v0[6]);
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_11:

  v15 = v0[1];

  return v15(v9);
}

unint64_t sub_1B4D0FAA8()
{
  result = qword_1EB8AE788;
  if (!qword_1EB8AE788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE788);
  }

  return result;
}

unint64_t sub_1B4D0FB28()
{
  result = qword_1EB8AE790;
  if (!qword_1EB8AE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE790);
  }

  return result;
}

unint64_t sub_1B4D0FB7C()
{
  result = qword_1EB8AE798;
  if (!qword_1EB8AE798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE798);
  }

  return result;
}

uint64_t sub_1B4D0FC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4D0FC3C()
{
  result = qword_1EB8AE7A0;
  if (!qword_1EB8AE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE7A0);
  }

  return result;
}

unint64_t sub_1B4D0FC90()
{
  result = qword_1EB8AE7A8;
  if (!qword_1EB8AE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE7A8);
  }

  return result;
}

void __swiftcall StreamingAudioAvailable.init(identifier:streamDescription:text:voice:intensity:)(FitnessIntelligence::StreamingAudioAvailable *__return_ptr retstr, Swift::String identifier, AudioStreamBasicDescription *streamDescription, Swift::String text, FitnessIntelligence::AudioSynthesisVoice voice, FitnessIntelligence::AudioSynthesisIntensity intensity)
{
  v6 = *voice.name._countAndFlagsBits;
  v7 = *(voice.name._countAndFlagsBits + 16);
  v8 = *(voice.name._countAndFlagsBits + 24);
  v9 = *voice.name._object;
  retstr->identifier = identifier;
  v10 = *&streamDescription->mBytesPerPacket;
  *&retstr->streamDescription.mSampleRate = *&streamDescription->mSampleRate;
  *&retstr->streamDescription.mBytesPerPacket = v10;
  *&retstr->streamDescription.mBitsPerChannel = *&streamDescription->mBitsPerChannel;
  retstr->text = text;
  retstr->voice.name = v6;
  retstr->voice.language._countAndFlagsBits = v7;
  retstr->voice.language._object = v8;
  retstr->intensity = v9;
}

uint64_t StreamingAudioAvailable.identifier.getter()
{
  v1 = *v0;

  return v1;
}

__n128 StreamingAudioAvailable.streamDescription.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 48);
  return result;
}

uint64_t StreamingAudioAvailable.text.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

double StreamingAudioAvailable.voice.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  *a1 = v1[9];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B4D0FE34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1B4D0FE7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SnapshotSerializable<>.protobuf()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B4D1831C();
  return sub_1B4D17B6C();
}

{
  sub_1B4D1831C();
  return sub_1B4D17B9C();
}

{
  sub_1B4D1831C();
  result = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    return sub_1B4D17B6C();
  }

  __break(1u);
  return result;
}

{
  sub_1B4D1831C();
  return sub_1B4D17B6C();
}

uint64_t sub_1B4D0FF8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B4D17B4C();
  v5 = sub_1B4D17B5C();
  result = (*(*(v5 - 8) + 8))(a1, v5);
  *a2 = v4;
  return result;
}

uint64_t SnapshotSerializable<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = sub_1B4D1880C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  v17[0] = sub_1B4D17B7C();
  v17[1] = v11;
  sub_1B4D1832C();
  v12 = *(a2 - 8);
  if ((*(v12 + 48))(v10, 1, a2) == 1)
  {
    (*(v8 + 8))(v10, v7);
    sub_1B49BA334();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    v14 = sub_1B4D17B8C();
    return (*(*(v14 - 8) + 8))(a1, v14);
  }

  else
  {
    v16 = sub_1B4D17B8C();
    (*(*(v16 - 8) + 8))(a1, v16);
    return (*(v12 + 32))(a4, v10, a2);
  }
}

{
  v7 = sub_1B4D1880C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  result = sub_1B4D17B4C();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v16[1] = result;
    sub_1B4D1832C();
    v12 = *(a2 - 8);
    if ((*(v12 + 48))(v10, 1, a2) == 1)
    {
      (*(v8 + 8))(v10, v7);
      sub_1B49BA334();
      swift_allocError();
      *v13 = 1;
      swift_willThrow();
      v14 = sub_1B4D17B5C();
      return (*(*(v14 - 8) + 8))(a1, v14);
    }

    else
    {
      v15 = sub_1B4D17B5C();
      (*(*(v15 - 8) + 8))(a1, v15);
      return (*(v12 + 32))(a4, v10, a2);
    }
  }

  return result;
}

uint64_t DatabasePropertyRecord.with(cacheIndexRange:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v17 - v10;
  v17 = *a1;
  (*(v12 + 16))(&v17 - v10, v3 + *(a2 + 36));
  v13 = *(a2 + 44);
  v14 = *(v3 + v13);
  v15 = *(v3 + v13 + 8);
  DatabasePropertyRecord.init(cacheIndexRange:dimensions:propertyKind:propertyValueData:snapshotEngineVersion:)(&v17, v11, *(v3 + *(a2 + 40)), *(v3 + *(a2 + 40) + 8), v14, v15, *(v3 + *(a2 + 48)), v7, a3, v8);

  return sub_1B498FC0C(v14, v15);
}

__n128 DatabasePropertyBatch.cacheIndexRange.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 DatabasePropertyBatch.init(cacheIndexRange:records:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u64[0] = a2;
  return result;
}

__n128 DatabasePropertyRecord.cacheIndexRange.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t DatabasePropertyRecord.dimensions.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t DatabasePropertyRecord.propertyKind.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t DatabasePropertyRecord.propertyValueData.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 44);
  v3 = *v2;
  sub_1B498FC0C(*v2, *(v2 + 8));
  return v3;
}

uint64_t DatabasePropertyRecord.init(cacheIndexRange:dimensions:propertyKind:propertyValueData:snapshotEngineVersion:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = *a1;
  v16 = type metadata accessor for DatabasePropertyRecord(0, a8, a10, a4);
  v17 = v16[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(&a9[v17], a2, AssociatedTypeWitness);
  v20 = &a9[v16[10]];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &a9[v16[11]];
  *v21 = a5;
  *(v21 + 1) = a6;
  *&a9[v16[12]] = a7;
  return result;
}

uint64_t SnapshotSerializableError.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

uint64_t SnapshotSerializable.protobufData()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  (*(a2 + 32))(a1, a2, v8);
  if (!v3)
  {
    swift_getAssociatedConformanceWitness();
    v2 = sub_1B4D17D6C();
    (*(v7 + 8))(v10, AssociatedTypeWitness);
  }

  return v2;
}

uint64_t SnapshotSerializable.init(protobufData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22[2] = a5;
  v10 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v28 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - v16;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }

  else
  {
    v22[0] = v15;
    v22[1] = v5;
    v26 = a1;
    v27 = a2;
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    sub_1B498FC0C(a1, a2);
    swift_getAssociatedConformanceWitness();
    sub_1B4D17BDC();
    v20 = v22[3];
    sub_1B4D17D7C();
    if (!v20)
    {
      v21 = v22[0];
      (*(v22[0] + 16))(v13, v17, AssociatedTypeWitness);
      (*(a4 + 40))(v13, v28, a4);
      (*(v21 + 8))(v17, AssociatedTypeWitness);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t SnapshotSerializable<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1B4D10DB4(a1, a2, a3);
}

{
  return SnapshotSerializable<>.init(_:)(a1, a2, a3);
}

uint64_t sub_1B4D10DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = sub_1B4D1880C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  v16[1] = sub_1B4D17B4C();
  sub_1B4D1832C();
  v11 = *(a2 - 8);
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    (*(v8 + 8))(v10, v7);
    sub_1B49BA334();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    v13 = sub_1B4D17B5C();
    return (*(*(v13 - 8) + 8))(a1, v13);
  }

  else
  {
    v15 = sub_1B4D17B5C();
    (*(*(v15 - 8) + 8))(a1, v15);
    return (*(v11 + 32))(a4, v10, a2);
  }
}

unint64_t sub_1B4D11018()
{
  result = qword_1EB8AE7B0[0];
  if (!qword_1EB8AE7B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB8AE7B0);
  }

  return result;
}

uint64_t sub_1B4D1106C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1B4D110C0(uint64_t a1)
{
  sub_1B4D11548(319);
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4D11174(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  v11 = v10 + 7;
  if (v8 >= a2)
  {
    goto LABEL_27;
  }

  v12 = ((((((v11 + ((v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = a2 - v8 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_27;
      }
    }

LABEL_24:
    v19 = v17 - 1;
    if (v13)
    {
      v19 = 0;
      v20 = *a1;
    }

    else
    {
      v20 = 0;
    }

    return v8 + (v20 | v19) + 1;
  }

  if (v16)
  {
    v17 = *(a1 + v12);
    if (v17)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  v21 = (a1 + v9 + 16) & ~v9;
  if (v7 < 0x7FFFFFFF)
  {
    v23 = *(((v11 + v21) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }

  else
  {
    v22 = *(v6 + 48);

    return v22(v21);
  }
}

void sub_1B4D11334(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(v7 + 64) + 7;
  v12 = ((((((v11 + ((v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 >= a3)
  {
    v15 = 0;
    v16 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((v11 + ((v9 + 16) & ~v9)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a3 - v10 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *(a1 + v12) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v12) = 0;
      }

      else if (v15)
      {
        *(a1 + v12) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v19 = (a1 + v9 + 16) & ~v9;
      if (v8 < 0x7FFFFFFF)
      {
        v21 = ((v11 + v19) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v21 = a2 & 0x7FFFFFFF;
          v21[1] = 0;
        }

        else
        {
          v21[1] = (a2 - 1);
        }
      }

      else
      {
        v20 = *(v7 + 56);

        v20(v19, a2);
      }

      return;
    }
  }

  if (((((((v11 + ((v9 + 16) & ~v9)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if (((((((v11 + ((v9 + 16) & ~v9)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v18 = ~v10 + a2;
    bzero(a1, v12);
    *a1 = v18;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *(a1 + v12) = v17;
    }

    else
    {
      *(a1 + v12) = v17;
    }
  }

  else if (v15)
  {
    *(a1 + v12) = v17;
  }
}

void sub_1B4D11548(uint64_t a1)
{
  if (!qword_1EDC37988)
  {
    sub_1B4D115A4();
    v1 = sub_1B4D1815C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC37988);
    }
  }
}

unint64_t sub_1B4D115A4()
{
  result = qword_1EDC399C0;
  if (!qword_1EDC399C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC399C0);
  }

  return result;
}

uint64_t sub_1B4D11678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t SnapshotQueryResult.query.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t SnapshotQueryResult.properties.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1B4D1880C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

double SnapshotQueryResult.metrics.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 40);
  v4 = *(v3 + 16);
  result = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = result;
  return result;
}

uint64_t SnapshotQueryResult.init(query:properties:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = a3[1];
  v13 = *(a3 + 16);
  v14 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a6, a1, AssociatedTypeWitness);
  v17 = type metadata accessor for SnapshotQueryResult(0, a4, a5, v16);
  v18 = *(v17 + 36);
  v19 = sub_1B4D1880C();
  result = (*(*(v19 - 8) + 32))(a6 + v18, a2, v19);
  v21 = a6 + *(v17 + 40);
  *v21 = v11;
  *(v21 + 8) = v12;
  *(v21 + 16) = v13;
  *(v21 + 24) = v14;
  return result;
}

uint64_t sub_1B4D11918(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_1B4D1880C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B4D119C0(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10)
  {
    v12 = v10 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  if (v10)
  {
    v14 = *(*(v5 - 8) + 64);
  }

  else
  {
    v14 = *(*(v5 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = AssociatedTypeWitness;
  v16 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  v17 = v14 + 7;
  if (v13 < a2)
  {
    v18 = ((v17 + (v16 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 32;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v13 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v22)
    {
      v23 = *(a1 + v18);
      if (v23)
      {
LABEL_28:
        v24 = v23 - 1;
        if (v19)
        {
          v24 = 0;
          v25 = *a1;
        }

        else
        {
          v25 = 0;
        }

        v31 = v13 + (v25 | v24);
        return (v31 + 1);
      }
    }
  }

  if (v8 != v13)
  {
    v28 = (a1 + v16) & ~v11;
    if (v12 == v13)
    {
      if (v10 >= 2)
      {
        v29 = (*(v9 + 48))(v28);
        if (v29 >= 2)
        {
          return v29 - 1;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      v30 = *(((v17 + v28) & 0xFFFFFFFFFFFFFFF8) + 16);
      if (v30 >= 2)
      {
        v31 = (v30 + 2147483646) & 0x7FFFFFFF;
        return (v31 + 1);
      }
    }

    return 0;
  }

  v26 = *(v7 + 48);

  return v26(a1, v8, v15);
}

void sub_1B4D11C18(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  v14 = *(v11 + 64);
  if (v12)
  {
    v15 = v12 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= 0xFE)
  {
    v16 = 254;
  }

  v17 = *(*(AssociatedTypeWitness - 8) + 64) + v13;
  if (!v12)
  {
    ++v14;
  }

  v18 = v14 + 7;
  v19 = ((v18 + (v17 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (((v18 + (v17 & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v20 = a3 - v16 + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v16 < a3)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (a2 > v16)
  {
    if (((v18 + (v17 & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v24 = a2 - v16;
    }

    else
    {
      v24 = 1;
    }

    if (((v18 + (v17 & ~v13)) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v25 = ~v16 + a2;
      bzero(a1, ((v18 + (v17 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 32);
      *a1 = v25;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        *(a1 + v19) = v24;
      }

      else
      {
        *(a1 + v19) = v24;
      }
    }

    else if (v23)
    {
      *(a1 + v19) = v24;
    }

    return;
  }

  if (v23 > 1)
  {
    if (v23 != 2)
    {
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *(a1 + v19) = 0;
  }

  else if (v23)
  {
    *(a1 + v19) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return;
  }

LABEL_43:
  if (v10 == v16)
  {
    v26 = *(v9 + 56);

    v26(a1, a2, v10, AssociatedTypeWitness);
  }

  else
  {
    v27 = (a1 + v17) & ~v13;
    if (v15 == v16)
    {
      v28 = *(v11 + 56);

      v28(v27, (a2 + 1));
    }

    else
    {
      v29 = ((v18 + v27) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0xFE)
      {
        v29[2] = 0;
        v29[3] = 0;
        *v29 = (a2 - 255);
        v29[1] = 0;
      }

      else
      {
        *(v29 + 16) = a2 + 1;
      }
    }
  }
}

uint64_t PromptFormatter.__allocating_init(unitManager:timeZone:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PromptFormatter.init(unitManager:timeZone:)(a1, a2);
  return v4;
}

uint64_t PromptFormatter.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter_timeZone;
  v4 = sub_1B4D179BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_1B4D11F8C()
{
  v1 = OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = sub_1B4D11FF0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1B4D11FF0()
{
  v0 = sub_1B4D1781C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v4 setDateStyle_];
  [v4 setTimeStyle_];
  v5 = sub_1B4D1799C();
  [v4 setTimeZone_];

  sub_1B4D177DC();
  v6 = sub_1B4D177EC();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  return v4;
}

id sub_1B4D12180()
{
  v0 = sub_1B4D1781C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
  sub_1B4D177DC();
  v5 = sub_1B4D177EC();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  [v4 setUnitStyle_];
  [v4 setUnitOptions_];
  result = [v4 numberFormatter];
  if (result)
  {
    v7 = result;
    [result setMaximumFractionDigits_];

    result = [v4 numberFormatter];
    if (result)
    {
      v8 = result;
      [result setRoundingMode_];

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1B4D1232C()
{
  v1 = OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___tieredDecimalFormatter;
  if (*(v0 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___tieredDecimalFormatter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___tieredDecimalFormatter);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TieredDecimalMeasurementFormatter();
    swift_allocObject();
    v2 = sub_1B4BBB9DC(1);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_1B4D123CC(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1B4D1242C()
{
  v0 = sub_1B4D1781C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
  sub_1B4D177DC();
  v5 = sub_1B4D177EC();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  [v4 setUnitStyle_];
  [v4 setUnitOptions_];
  result = [v4 numberFormatter];
  if (result)
  {
    v7 = result;
    [result setMaximumFractionDigits_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B4D125A4()
{
  v1 = v0;
  v2 = sub_1B4D1781C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___numberFormatter;
  v7 = *(v1 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___numberFormatter);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___numberFormatter);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v9 setNumberStyle_];
    sub_1B4D177DC();
    v10 = sub_1B4D177EC();
    (*(v3 + 8))(v5, v2);
    [v9 setLocale_];

    v11 = *(v1 + v6);
    *(v1 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v12 = v7;
  return v8;
}

id sub_1B4D1270C()
{
  v1 = OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___percentFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___percentFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___percentFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v4 setNumberStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t PromptFormatter.init(unitManager:timeZone:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter) = 0;
  *(v2 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___wholeNumberFormatter) = 0;
  *(v2 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___tieredDecimalFormatter) = 0;
  *(v2 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___decimalFormatter) = 0;
  *(v2 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___numberFormatter) = 0;
  *(v2 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___percentFormatter) = 0;
  *(v2 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___minutesOnly) = 0;
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter_timeZone;
  v5 = sub_1B4D179BC();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t sub_1B4D1285C(double a1)
{
  v2 = sub_1B4D1270C();
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v4 = [v2 stringFromNumber_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1B4D1818C();

  return v5;
}

uint64_t sub_1B4D12908()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v9 - v2);
  FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v2);
  v5 = v4;
  sub_1B4D1745C();
  v6 = sub_1B4D12160();
  v7 = sub_1B4D12A28(v3);

  (*(v1 + 8))(v3, v0);
  return v7;
}

uint64_t sub_1B4D12A28(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - v3;
  sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
  v5 = sub_1B4D1740C();
  if (qword_1EDC36DF0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4D187AC();

  if (v6)
  {
    sub_1B4D1742C();
    v7 = [objc_opt_self() calories];
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    sub_1B4D1741C();
    v11[0] = sub_1B4D1878C();
    v11[1] = v8;
    sub_1B4955758();
    v9 = sub_1B4D1885C();
    (*(v2 + 8))(v4, v1);

    return v9;
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);

    return sub_1B4D1878C();
  }
}

uint64_t sub_1B4D12C84@<X0>(NSUnitEnergy *a1@<X8>)
{
  FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(a1);
  v2 = v1;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 kilocalories];
  sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
  v6 = sub_1B4D187AC();

  if (v6)
  {
    v7 = 0x6F6C61636F6C696BLL;
  }

  else
  {
    v8 = qword_1EDC36DF0;
    v4 = v4;
    if (v8 != -1)
    {
      swift_once();
    }

    v9 = qword_1EDC36DF8;
    v10 = sub_1B4D187AC();

    if (v10)
    {
      v7 = 0x736569726F6C6163;
    }

    else
    {
      v4 = v4;
      v11 = [v3 kilojoules];
      v12 = sub_1B4D187AC();

      if (v12)
      {
        v7 = 0x6C756F6A6F6C696BLL;
      }

      else
      {
        if (qword_1EDC3CEC8 != -1)
        {
          swift_once();
        }

        v13 = sub_1B4D17F6C();
        __swift_project_value_buffer(v13, qword_1EDC3CED0);
        v14 = v4;
        v4 = sub_1B4D17F5C();
        v15 = sub_1B4D1871C();

        if (os_log_type_enabled(v4, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *v16 = 138412290;
          *(v16 + 4) = v14;
          *v17 = v14;
          v18 = v14;
          _os_log_impl(&dword_1B4953000, v4, v15, "Unsupported energy unit: %@ formatting user preferred unit", v16, 0xCu);
          sub_1B49E5EC0(v17);
          MEMORY[0x1B8C7DDA0](v17, -1, -1);
          MEMORY[0x1B8C7DDA0](v16, -1, -1);
          v14 = v4;
          v4 = v18;
        }

        v7 = 0;
      }
    }
  }

  return v7;
}

uint64_t sub_1B4D12F38()
{
  v0 = sub_1B4D18F3C();
  v32 = *(v0 - 8);
  v33 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B4D18F1C();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B4D18FAC();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1B4D18FBC();
  v9 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - v14;
  v16 = [objc_opt_self() seconds];
  sub_1B4D1745C();

  sub_1B4D1742C();
  (*(v13 + 8))(v15, v12);
  v17 = sub_1B4D18FDC();
  v26[1] = v18;
  v26[2] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
  v19 = sub_1B4D18F8C();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B4D1A800;
  sub_1B4D18F6C();
  sub_1B49B5B70(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  sub_1B4D18F9C();
  sub_1B4D18F0C();
  sub_1B4D18F2C();
  sub_1B4D1737C();

  (*(v32 + 8))(v2, v33);
  (*(v30 + 8))(v5, v31);
  v23 = (*(v28 + 8))(v8, v29);
  sub_1B4D165A0(v23);
  v24 = v27;
  sub_1B4D18FCC();
  (*(v9 + 8))(v11, v24);
  return v34;
}

uint64_t sub_1B4D133E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = [*(v5 + 16) userDistanceHKUnitForActivityType_];
  sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
  v15 = [objc_opt_self() mileUnit];
  LOBYTE(a2) = sub_1B4D187AC();

  v16 = objc_opt_self();
  v17 = &selRef_miles;
  if ((a2 & 1) == 0)
  {
    v17 = &selRef_kilometers;
  }

  v18 = [v16 *v17];

  sub_1B4D1745C();
  if (a4)
  {
    sub_1B4D1232C();
    sub_1B4BC79D0();
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v19 = sub_1B4D1878C();

    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v20 = sub_1B4D123AC();
    v21 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v21 setMaximumFractionDigits_];
    [v21 setRoundingMode_];
    [v20 setNumberFormatter_];

    v22 = *(v5 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___decimalFormatter);
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v23 = v22;
    v19 = sub_1B4D1878C();

    (*(v10 + 8))(v13, v9);
  }

  return v19;
}

uint64_t sub_1B4D136CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = [*(v3 + 16) userDistanceWalkingRunningHKUnit];
  sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
  v13 = [objc_opt_self() mileUnit];
  v14 = sub_1B4D187AC();

  v15 = objc_opt_self();
  v16 = &selRef_miles;
  if ((v14 & 1) == 0)
  {
    v16 = &selRef_kilometers;
  }

  v17 = [v15 *v16];

  sub_1B4D1745C();
  if (a3)
  {
    sub_1B4D1232C();
    sub_1B4BC79D0();
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v18 = sub_1B4D1878C();

    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v19 = sub_1B4D123AC();
    v20 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v20 setMaximumFractionDigits_];
    [v20 setRoundingMode_];
    [v19 setNumberFormatter_];

    v21 = *(v4 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___decimalFormatter);
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v22 = v21;
    v18 = sub_1B4D1878C();

    (*(v8 + 8))(v11, v7);
  }

  return v18;
}

uint64_t sub_1B4D139A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1B4D1232C();
    sub_1B4BC79D0();
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v4 = sub_1B4D1878C();
  }

  else
  {
    v6 = sub_1B4D123AC();
    v7 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v7 setMaximumFractionDigits_];
    [v7 setRoundingMode_];
    [v6 setNumberFormatter_];

    v8 = *(v3 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___decimalFormatter);
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v9 = v8;
    v4 = sub_1B4D1878C();
  }

  return v4;
}

uint64_t sub_1B4D13AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = [*(v4 + 16) userDistanceHKUnitForActivityType_];
  sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
  v13 = [objc_opt_self() mileUnit];
  LOBYTE(a2) = sub_1B4D187AC();

  if (a2)
  {
    if (qword_1EB8A6478 != -1)
    {
      swift_once();
    }

    v14 = &qword_1EB8AC490;
  }

  else
  {
    if (qword_1EB8A6480 != -1)
    {
      swift_once();
    }

    v14 = &qword_1EB8AC498;
  }

  v15 = *v14;

  sub_1B4D1745C();
  v16 = sub_1B4D123AC();
  v17 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v17 setMaximumFractionDigits_];
  [v17 setRoundingMode_];
  [v16 setNumberFormatter_];

  v18 = *(v4 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___decimalFormatter);

  v19 = v18;
  v20 = sub_1B4D165F8(v11, v19);

  (*(v8 + 8))(v11, v7);
  return v20;
}

uint64_t sub_1B4D13D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  v12 = [*(v4 + 16) userDistanceHKUnitForActivityType_];
  sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
  v13 = [objc_opt_self() mileUnit];
  LOBYTE(a2) = sub_1B4D187AC();

  v14 = objc_opt_self();
  v15 = &selRef_milesPerHour;
  if ((a2 & 1) == 0)
  {
    v15 = &selRef_kilometersPerHour;
  }

  v16 = [v14 *v15];

  sub_1B4D1745C();
  v17 = sub_1B4D123AC();
  v18 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v18 setMaximumFractionDigits_];
  [v18 setRoundingMode_];
  [v17 setNumberFormatter_];

  v19 = *(v4 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___decimalFormatter);
  sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
  v20 = v19;
  v21 = sub_1B4D1878C();

  (*(v8 + 8))(v11, v7);
  return v21;
}

uint64_t sub_1B4D14000()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - v2;
  v4 = sub_1B4D12160();
  v5 = [objc_opt_self() watts];
  sub_1B4D1745C();

  sub_1B498AFB8(0, &qword_1EB8A7990, 0x1E696B068);
  v6 = sub_1B4D1878C();

  (*(v1 + 8))(v3, v0);
  return v6;
}

void sub_1B4D14174(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v2 = sub_1B4D1740C();
  v3 = [v2 symbol];

  v4 = sub_1B4D1818C();
  v6 = v5;

  if (qword_1EDC36DD8 != -1)
  {
    swift_once();
  }

  v7 = [qword_1EDC36DE0 symbol];
  v8 = sub_1B4D1818C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {

LABEL_13:
    sub_1B4D1896C();
    v15 = a1;
    sub_1B4D1742C();
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v20 > -9.22337204e18)
    {
      if (v20 < 9.22337204e18)
      {
        sub_1B4D18D5C();

        v21 = " beats per minute";
LABEL_17:
        MEMORY[0x1B8C7C620](0xD000000000000011, (v21 - 32) | 0x8000000000000000);
        return;
      }

      goto LABEL_26;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = sub_1B4D18DCC();

  if (v4)
  {
    goto LABEL_13;
  }

  v12 = sub_1B4D1740C();
  v13 = [v12 symbol];

  v4 = sub_1B4D1818C();
  v15 = v14;

  if (qword_1EB8A65C8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v16 = [qword_1EB8AD258 symbol];
  v17 = sub_1B4D1818C();
  v19 = v18;

  if (v4 == v17 && v15 == v19)
  {
  }

  else
  {
    v22 = sub_1B4D18DCC();

    if ((v22 & 1) == 0)
    {
      sub_1B4D14174(a1);
      return;
    }
  }

  sub_1B4D1896C();
  sub_1B4D1742C();
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v23 > -9.22337204e18)
  {
    if (v23 < 9.22337204e18)
    {
      sub_1B4D18D5C();

      v21 = " steps per minute";
      goto LABEL_17;
    }

    goto LABEL_30;
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1B4D14544(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  v9 = sub_1B4D12160();
  if (*a2 != -1)
  {
    swift_once();
  }

  sub_1B4D1745C();
  sub_1B4D14174(v8);
  v11 = v10;

  (*(v6 + 8))(v8, v5);
  return v11;
}

uint64_t sub_1B4D14684()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v9 - v2);
  FIUnitManager.userMeasurementUnitForElevation()(v2);
  v5 = v4;
  sub_1B4D1745C();
  v6 = sub_1B4D12160();
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v7 = sub_1B4D1878C();

  (*(v1 + 8))(v3, v0);
  return v7;
}

uint64_t sub_1B4D147C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4D11F8C();
  [v6 setDateStyle_];

  v7 = OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter;
  [*(v3 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter) setTimeStyle_];
  v8 = *(v3 + v7);
  v9 = sub_1B4D1771C();
  v10 = [v8 stringFromDate_];

  v11 = sub_1B4D1818C();
  return v11;
}

uint64_t sub_1B4D1488C(uint64_t a1)
{
  v1 = sub_1B4D125A4();
  v2 = sub_1B4D1863C();
  v3 = [v1 stringFromNumber_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1B4D1818C();

  return v4;
}

unint64_t sub_1B4D1491C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v67 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v9 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v11 = &v67 - v10;
  v12 = sub_1B4D179EC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v67 - v18;
  v20 = *(v13 + 16);
  v20(&v67 - v18, a1, v12, v17);
  v21 = (*(v13 + 88))(v19, v12);
  if (v21 == *MEMORY[0x1E6985B50])
  {
    (*(v13 + 96))(v19, v12);
    v22 = *(v19 + 1);
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v23 = v22;
    sub_1B4D1741C();
    sub_1B4D1232C();
    sub_1B4BC79D0();
    v24 = sub_1B4D1878C();
    v26 = v25;

    v75 = 0;
    v76 = 0xE000000000000000;
    sub_1B4D1896C();

    v75 = 0xD000000000000013;
    v76 = 0x80000001B4D670E0;
    MEMORY[0x1B8C7C620](v24, v26);

    v27 = v75;
    (*(v9 + 8))(v11, v73);
  }

  else if (v21 == *MEMORY[0x1E6985B40])
  {
    (*(v13 + 96))(v19, v12);
    v28 = *(v19 + 1);
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    v29 = v28;
    v30 = v70;
    sub_1B4D1741C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    sub_1B4D18F8C();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v32 = sub_1B4BCA7BC(v31);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v33 = sub_1B4D15F5C(v30, v32);
    v35 = v34;

    v75 = 0;
    v76 = 0xE000000000000000;
    sub_1B4D1896C();

    v75 = 0x6720656D69742061;
    v76 = 0xEF20666F206C616FLL;
    MEMORY[0x1B8C7C620](v33, v35);

    v27 = v75;
    (*(v71 + 8))(v30, v72);
  }

  else if (v21 == *MEMORY[0x1E6985B48])
  {
    (*(v13 + 96))(v19, v12);
    v36 = *(v19 + 1);
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    v37 = v36;
    v38 = v67;
    sub_1B4D1741C();
    FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v39);
    v41 = v40;
    v42 = v69;
    sub_1B4D1745C();
    v43 = sub_1B4D12160();
    v44 = sub_1B4D12A28(v4);
    v46 = v45;

    v47 = *(v68 + 8);
    v47(v4, v42);
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_1B4D1896C();

    v75 = 0xD000000000000012;
    v76 = 0x80000001B4D670C0;
    MEMORY[0x1B8C7C620](v44, v46);

    v27 = v75;
    v47(v38, v42);
  }

  else if (v21 == *MEMORY[0x1E6985B30])
  {
    (*(v13 + 96))(v19, v12);
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F68, &qword_1B4D204A0) + 48);
    v49 = v9;
    v50 = v11;
    (*(v9 + 32))(v11, v19, v73);
    v51 = v70;
    v52 = v71;
    (*(v71 + 32))(v70, &v19[v48], v72);
    sub_1B4D1232C();
    sub_1B4BC79D0();
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v74 = sub_1B4D1878C();
    v54 = v53;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    sub_1B4D18F8C();
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v56 = sub_1B4BCA7BC(v55);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v57 = sub_1B4D15F5C(v51, v56);
    v59 = v58;

    v75 = 0;
    v76 = 0xE000000000000000;
    sub_1B4D1896C();

    v75 = 0xD00000000000001ELL;
    v76 = 0x80000001B4D670A0;
    MEMORY[0x1B8C7C620](v74, v54);

    MEMORY[0x1B8C7C620](0x69742061206E6920, 0xEE0020666F20656DLL);
    MEMORY[0x1B8C7C620](v57, v59);

    v27 = v75;
    (*(v52 + 8))(v51, v72);
    (*(v49 + 8))(v50, v73);
  }

  else
  {
    if (v21 != *MEMORY[0x1E6985B38])
    {
      if (qword_1EDC3CEC8 != -1)
      {
        swift_once();
      }

      v60 = sub_1B4D17F6C();
      __swift_project_value_buffer(v60, qword_1EDC3CED0);
      (v20)(v15, a1, v12);
      v61 = sub_1B4D17F5C();
      v62 = sub_1B4D1871C();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 134217984;
        v64 = sub_1B4D179DC();
        v65 = *(v13 + 8);
        v65(v15, v12);
        *(v63 + 4) = v64;
        _os_log_impl(&dword_1B4953000, v61, v62, "Unknown goal type: %ld when generating workout detail fact", v63, 0xCu);
        MEMORY[0x1B8C7DDA0](v63, -1, -1);
      }

      else
      {
        v65 = *(v13 + 8);
        v65(v15, v12);
      }

      v65(v19, v12);
    }

    return 0;
  }

  return v27;
}

uint64_t sub_1B4D1543C(uint64_t *a1, void *a2, double a3)
{
  v70 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v60 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v60 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v60 - v27;
  if (*(a1 + 9) != 1)
  {
    if (qword_1EDC36DD8 != -1)
    {
      swift_once();
    }

    v36 = qword_1EDC36DE0;
    goto LABEL_9;
  }

  v29 = *a1;
  if (*a1 > 1)
  {
    v30 = *(a1 + 8);
    if (v29 ^ 2 | v30)
    {
      if (v29 ^ 3 | v30)
      {
        v51 = [objc_opt_self() meters];
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        v52 = v65;
        sub_1B4D1741C();
        v35 = sub_1B4D133E8(v52, v70, 0, 1);
        (*(v66 + 8))(v52, v67);
      }

      else
      {
        v31 = [objc_opt_self() seconds];
        sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
        v32 = v62;
        sub_1B4D1741C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
        sub_1B4D18F8C();
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1B4D1B2D0;
        sub_1B4D18F4C();
        sub_1B4D18F5C();
        sub_1B4D18F6C();
        sub_1B4D18F7C();
        v34 = sub_1B4BCA7BC(v33);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v35 = sub_1B4D15F5C(v32, v34);

        (*(v68 + 8))(v32, v69);
      }
    }

    else
    {
      v44 = objc_opt_self();
      v45 = [v44 watts];
      sub_1B498AFB8(0, &qword_1EB8A7990, 0x1E696B068);
      sub_1B4D1741C();
      v46 = sub_1B4D12160();
      v47 = [v44 watts];
      v48 = v61;
      v49 = v64;
      sub_1B4D1745C();

      v35 = sub_1B4D1878C();
      v50 = *(v63 + 8);
      v50(v48, v49);
      v50(v13, v49);
    }

    return v35;
  }

  if (v29 | *(a1 + 8))
  {
    if (qword_1EB8A65C8 != -1)
    {
      swift_once();
    }

    v36 = qword_1EB8AD258;
LABEL_9:
    sub_1B498AFB8(0, &qword_1EDC378B8, 0x1E696B038);
    v37 = v36;
    sub_1B4D1741C();
    v38 = sub_1B4D12160();
    sub_1B4D1745C();
    sub_1B4D14174(v17);
    v35 = v39;

    v40 = *(v15 + 8);
    v40(v17, v14);
    v40(v20, v14);
    return v35;
  }

  v41 = v25;
  v42 = v70;
  if ([v70 effectiveTypeIdentifier] == 13)
  {
    v43 = [objc_opt_self() metersPerSecond];
    sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
    sub_1B4D1741C();
    v35 = sub_1B4D13D94(v28, v42, 1);
    (*(v41 + 8))(v28, v24);
  }

  else if (a3 <= 0.0)
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v56 = sub_1B4D17F6C();
    __swift_project_value_buffer(v56, qword_1EDC36F00);
    v57 = sub_1B4D17F5C();
    v58 = sub_1B4D1871C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1B4953000, v57, v58, "Attempted to format with a pace of zero. Returning nil.", v59, 2u);
      MEMORY[0x1B8C7DDA0](v59, -1, -1);
    }

    return 0;
  }

  else
  {
    if (qword_1EDC36E80 != -1)
    {
      swift_once();
    }

    v54 = qword_1EDC36E88;
    type metadata accessor for UnitPace();
    v55 = v54;
    sub_1B4D1741C();
    v35 = sub_1B4D13AE8(v23, v42, 2);
    (*(v60 + 8))(v23, v21);
  }

  return v35;
}

uint64_t PromptFormatter.deinit()
{
  v1 = OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter_timeZone;
  v2 = sub_1B4D179BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t PromptFormatter.__deallocating_deinit()
{
  PromptFormatter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1B4D15F5C(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v28 = sub_1B4D18F3C();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B4D18F1C();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4D18FAC();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B4D18FBC();
  v10 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  v17 = [objc_opt_self() seconds];
  sub_1B4D1745C();

  sub_1B4D1742C();
  (*(v14 + 8))(v16, v13);
  sub_1B4D18FDC();
  sub_1B4D18F9C();
  sub_1B4D18F0C();
  sub_1B4D18F2C();
  sub_1B4D1737C();
  (*(v26 + 8))(v3, v28);
  (*(v24 + 8))(v6, v25);
  v18 = (*(v22 + 8))(v9, v23);
  sub_1B4D165A0(v18);
  v19 = v21;
  sub_1B4D18FCC();
  (*(v10 + 8))(v12, v19);
  return v29;
}

uint64_t sub_1B4D16340(uint64_t a1)
{
  v2 = type metadata accessor for DateRangeDescriptor(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B94680(a1, v4);
  v5 = 0x7961646F74;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v6 = 1936287860;
      goto LABEL_6;
    case 2u:
      v9 = 1936287860;
      goto LABEL_15;
    case 3u:
      v10 = 1936287860;
      goto LABEL_19;
    case 4u:
      v6 = 1953718636;
LABEL_6:
      v5 = v6 | 0x6565772000000000;
      break;
    case 5u:
      v9 = 1953718636;
LABEL_15:
      v5 = v9 | 0x6E6F6D2000000000;
      break;
    case 6u:
      v10 = 1953718636;
LABEL_19:
      v5 = v10 | 0x6165792000000000;
      break;
    case 7u:
      v5 = 0xD000000000000013;
      break;
    case 8u:
      v5 = 0xD000000000000014;
      break;
    case 9u:
      v5 = 0xD000000000000013;
      break;
    case 0xAu:
      v8 = 0x33207473616CLL;
      goto LABEL_21;
    case 0xBu:
      v8 = 0x36207473616CLL;
      goto LABEL_21;
    case 0xCu:
      v8 = 0x39207473616CLL;
LABEL_21:
      v5 = v8 & 0xFFFFFFFFFFFFLL | 0x2030000000000000;
      break;
    case 0xDu:
      v7 = 0x36207473616CLL;
      goto LABEL_17;
    case 0xEu:
      v7 = 0x34207473616CLL;
LABEL_17:
      v5 = v7 & 0xFFFFFFFFFFFFLL | 0x7720000000000000;
      break;
    case 0xFu:
      v5 = 0x656D6974206C6C61;
      break;
    default:
      break;
  }

  v11 = sub_1B4D1777C();
  (*(*(v11 - 8) + 8))(v4, v11);
  return v5;
}

unint64_t sub_1B4D165A0(double a1)
{
  result = qword_1EB8AE870;
  if (!qword_1EB8AE870)
  {
    sub_1B4D18FBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AE870);
  }

  return result;
}

uint64_t sub_1B4D165F8(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v2 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v4 = &v57 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v5 = sub_1B4D1740C();
  v6 = [v5 symbol];

  v7 = sub_1B4D1818C();
  v9 = v8;

  if (qword_1EB8A6478 != -1)
  {
    swift_once();
  }

  v10 = [qword_1EB8AC490 symbol];
  v11 = sub_1B4D1818C();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {

LABEL_7:
    sub_1B4D1742C();
    v15 = [objc_opt_self() minutes];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    v59 = 0;
    v60 = 0xE000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    sub_1B4D18F8C();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v17 = sub_1B49B5B70(v16);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v18 = sub_1B4D15F5C(v4, v17);
    v20 = v19;

    MEMORY[0x1B8C7C620](v18, v20);

    v21 = 0x6C696D2072657020;
    v22 = 0xE900000000000065;
    goto LABEL_8;
  }

  v14 = sub_1B4D18DCC();

  if (v14)
  {
    goto LABEL_7;
  }

  v25 = sub_1B4D1740C();
  v26 = [v25 symbol];

  v27 = sub_1B4D1818C();
  v29 = v28;

  if (qword_1EB8A6480 != -1)
  {
    swift_once();
  }

  v30 = [qword_1EB8AC498 symbol];
  v31 = sub_1B4D1818C();
  v33 = v32;

  if (v27 == v31 && v29 == v33)
  {

LABEL_16:
    sub_1B4D1742C();
    v35 = [objc_opt_self() minutes];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1B4D1896C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    sub_1B4D18F8C();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v37 = sub_1B49B5B70(v36);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v38 = sub_1B4D15F5C(v4, v37);
    v40 = v39;

    MEMORY[0x1B8C7C620](v38, v40);

    v21 = 0x6C696B2072657020;
    v22 = 0xEE00726574656D6FLL;
    goto LABEL_8;
  }

  v34 = sub_1B4D18DCC();

  if (v34)
  {
    goto LABEL_16;
  }

  v41 = sub_1B4D1740C();
  v42 = [v41 symbol];

  v43 = sub_1B4D1818C();
  v45 = v44;

  if (qword_1EDC36E80 != -1)
  {
    swift_once();
  }

  v46 = [qword_1EDC36E88 symbol];
  v47 = sub_1B4D1818C();
  v49 = v48;

  if (v43 == v47 && v45 == v49)
  {
  }

  else
  {
    v50 = sub_1B4D18DCC();

    if ((v50 & 1) == 0)
    {
      type metadata accessor for UnitPace();
      return sub_1B4D1878C();
    }
  }

  sub_1B4D1742C();
  v51 = [objc_opt_self() seconds];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  v59 = 0;
  v60 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
  sub_1B4D18F8C();
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1B4D1B2D0;
  sub_1B4D18F4C();
  sub_1B4D18F5C();
  sub_1B4D18F6C();
  sub_1B4D18F7C();
  v53 = sub_1B49B5B70(v52);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v54 = sub_1B4D15F5C(v4, v53);
  v56 = v55;

  MEMORY[0x1B8C7C620](v54, v56);

  v21 = 0x74656D2072657020;
  v22 = 0xEA00000000007265;
LABEL_8:
  MEMORY[0x1B8C7C620](v21, v22);
  v23 = v59;
  (*(v2 + 8))(v4, v58);
  return v23;
}

uint64_t type metadata accessor for PromptFormatter(uint64_t a1)
{
  result = qword_1EB8AE878;
  if (!qword_1EB8AE878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4D16F4C(uint64_t a1)
{
  result = sub_1B4D179BC();
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