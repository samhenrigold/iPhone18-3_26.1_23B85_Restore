uint64_t sub_2629A46F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2629A4718(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_27FF3BE10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FF3BE10);
    }
  }
}

uint64_t SIDFitnessClient.__allocating_init(bag:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SIDFitnessClient.init(bag:)(a1);
  return v2;
}

void *SIDFitnessClient.init(bag:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BE80, &qword_262A2B2B0);
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BE88, &unk_262A2B2B8);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = MEMORY[0x277D84F90];
  v5[2] = v6;
  v5[3] = v7;
  v5[4] = 0;
  v2[2] = v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BE90, &qword_262A2B2C8);
  v32 = &off_287537768;
  *&v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BE98, &qword_262A2B2D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_262A2B290;
  sub_2629A4B84(&v30, inited + 32);
  v29 = inited;
  v9 = *(inited + 16);
  v10 = *(v7 + 16);
  v11 = v10 + v9;
  v12 = __OFADD__(v10, v9);
  swift_unknownObjectRetain();
  if (v12)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v11 <= v13[3] >> 1)
  {
    if (*(inited + 16))
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  if (v10 <= v11)
  {
    v18 = v10 + v9;
  }

  else
  {
    v18 = v10;
  }

  v13 = sub_2629A8C64(isUniquelyReferenced_nonNull_native, v18, 1, MEMORY[0x277D84F90]);
  if (!*(inited + 16))
  {
LABEL_16:

    if (!v9)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

LABEL_8:
  if ((v13[3] >> 1) - v13[2] < v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEA0, &qword_262A2B2D8);
  swift_arrayInitWithCopy();

  if (!v9)
  {
LABEL_17:
    sub_2629ADF2C(&v29, &qword_27FF3BEA8, &qword_262A2B2E0);
    type metadata accessor for Dependencies();
    swift_initStackObject();
    v19 = sub_262A28750(v13);

    v20 = *(v19 + 16);

    v21 = v2[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEB0, &qword_262A2B2E8);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_262A2B290;
    *(v22 + 32) = v4;
    v23 = v22 + 32;
    *(v22 + 64) = v4;
    *(v22 + 40) = v21;
    v24 = sub_2629ABA88(v22);
    swift_setDeallocating();
    swift_retain_n();

    sub_2629ADF2C(v23, &qword_27FF3BEB8, &qword_262A2B2F0);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v30 = v20;
    sub_2629ABBA4(v24, sub_2629AB8F4, 0, v25, &v30, 0, 0);

    v26 = v30;
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    v2[3] = a1;
    v2[4] = v27;
    return v2;
  }

  v15 = v13[2];
  v16 = __OFADD__(v15, v9);
  v17 = v15 + v9;
  if (!v16)
  {
    v13[2] = v17;
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);

  __break(1u);
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

uint64_t sub_2629A4B84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2629A4B9C(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = sub_262A2A328();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  type metadata accessor for SIDPersonalizedPlanResponse(0);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = type metadata accessor for PersistentLogger(0);
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2629A4CD4, 0, 0);
}

uint64_t sub_2629A4CD4()
{
  v21 = v0;
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[18];
  v4 = v0[19];
  v5 = *(v2 + 20);
  v6 = sub_262A2A018();
  (*(*(v6 - 8) + 16))(v1 + v5, v3, v6);
  sub_262A2A2E8();
  v7 = *(v4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEB0, &qword_262A2B2E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_262A2B290;
  *(inited + 32) = v2;
  *(inited + 64) = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 40));
  sub_2629ADB70(v1, boxed_opaque_existential_0, type metadata accessor for PersistentLogger);
  v10 = sub_2629ABA88(inited);
  swift_setDeallocating();
  sub_2629ADF2C(inited + 32, &qword_27FF3BEB8, &qword_262A2B2F0);
  v11 = *(v7 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v11;
  sub_2629ABBA4(v10, sub_2629AB8F4, 0, isUniquelyReferenced_nonNull_native, &v20, 0, 0);

  v13 = v20;
  type metadata accessor for Dependencies();
  v14 = swift_initStackObject();
  v0[28] = v14;
  *(v14 + 16) = v13;
  sub_262A2A318();
  v15 = swift_task_alloc();
  v0[29] = v15;
  *v15 = v0;
  v15[1] = sub_2629A4F54;
  v16 = v0[27];
  v17 = v0[24];
  v18 = v0[18];

  return sub_2629A57E4(v17, v18, v16, v14);
}

uint64_t sub_2629A4F54()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_2629A5420;
  }

  else
  {
    v2 = sub_2629A5068;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2629A5068()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  sub_262A2A318();
  v5 = sub_262A2A308();
  v6 = sub_262A2A308();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v8 = (v7)(v1, v3);
  if (v5 < v6)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  v11 = *(v0 + 240);
  v12 = *(v0 + 152);
  v13 = (v5 - v6) / 1000000.0;
  sub_2629ADD40(*(v0 + 192), *(v0 + 200), type metadata accessor for SIDPersonalizedPlanResponse);
  v14 = *(v12 + 16);
  *(v0 + 265) = 5;
  v15 = *(v14 + 16);
  v16 = swift_task_alloc();
  *(v16 + 16) = v14;
  *(v16 + 24) = v13;
  *(v16 + 32) = 0;
  *(v16 + 40) = v0 + 265;
  v17 = swift_task_alloc();
  *(v17 + 16) = sub_2629ADFF4;
  *(v17 + 24) = v16;

  os_unfair_lock_lock(v15 + 4);
  sub_2629AE00C();
  if (!v11)
  {
    os_unfair_lock_unlock(v15 + 4);

    sub_2629A85EC();
    sub_262A2A1E8();
    *(v0 + 248) = sub_262A2A1C8();
    sub_2629ADC84(&unk_27FF3BEC8, MEMORY[0x277D4D3C0], MEMORY[0x277D4D3C8]);
    v19 = sub_262A2A568();
    v21 = v20;
    v8 = sub_2629A52B8;
    v9 = v19;
    v10 = v21;

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  os_unfair_lock_unlock(v15 + 4);
}

uint64_t sub_2629A52B8()
{
  sub_262A2A1D8();

  return MEMORY[0x2822009F8](sub_2629A5328, 0, 0);
}

uint64_t sub_2629A5328()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[17];
  swift_setDeallocating();

  sub_2629ADD40(v2, v3, type metadata accessor for SIDPersonalizedPlanResponse);
  sub_2629ADDA8(v1, type metadata accessor for PersistentLogger);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2629A5420()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 152);
  (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
  v3 = *(v2 + 16);
  *(v0 + 264) = 5;
  v4 = *(v3 + 16);
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = 0;
  v5[4] = v1;
  v5[5] = v0 + 264;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_2629ABEE0;
  *(v6 + 24) = v5;
  MEMORY[0x26672F6B0](v1);

  os_unfair_lock_lock(v4 + 4);
  sub_2629ABEF8();
  v7 = *(v0 + 240);
  os_unfair_lock_unlock(v4 + 4);
  MEMORY[0x26672F6A0](v7);

  sub_262A2A6F8();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  MEMORY[0x26672ECF0](0xD000000000000018, 0x8000000262A31D10);
  *(v0 + 128) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  sub_262A2A738();
  sub_2629EA8B0(*(v0 + 112), *(v0 + 120));

  sub_2629A85EC();
  sub_262A2A1E8();
  *(v0 + 256) = sub_262A2A1C8();
  sub_2629ADC84(&unk_27FF3BEC8, MEMORY[0x277D4D3C0], MEMORY[0x277D4D3C8]);
  v9 = sub_262A2A568();

  return MEMORY[0x2822009F8](sub_2629A5698, v9, v8);
}

uint64_t sub_2629A5698()
{
  sub_262A2A1D8();

  return MEMORY[0x2822009F8](sub_2629A5708, 0, 0);
}

uint64_t sub_2629A5708()
{
  v1 = *(v0 + 216);
  swift_willThrow();
  swift_setDeallocating();

  sub_2629ADDA8(v1, type metadata accessor for PersistentLogger);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2629A57E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[106] = v4;
  v5[105] = a4;
  v5[104] = a3;
  v5[103] = a2;
  v5[102] = a1;
  type metadata accessor for FitnessPlanUser(0);
  v5[107] = swift_task_alloc();
  v5[108] = *(type metadata accessor for PreprocessedUserHistoryWithMetadata(0) - 8);
  v5[109] = swift_task_alloc();
  v5[110] = type metadata accessor for PersistentLogger(0);
  v5[111] = swift_task_alloc();
  v5[112] = type metadata accessor for RequestPreProcessor(0);
  v5[113] = swift_task_alloc();
  v5[114] = type metadata accessor for PlanGenerationContext(0);
  v5[115] = swift_task_alloc();
  v6 = sub_262A2A248();
  v5[116] = v6;
  v5[117] = *(v6 - 8);
  v5[118] = swift_task_alloc();
  v7 = sub_262A2A2C8();
  v5[119] = v7;
  v5[120] = *(v7 - 8);
  v5[121] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C0A8, &unk_262A2B550);
  v5[122] = swift_task_alloc();
  v8 = sub_262A2A288();
  v5[123] = v8;
  v5[124] = *(v8 - 8);
  v5[125] = swift_task_alloc();
  v9 = sub_262A2A328();
  v5[126] = v9;
  v5[127] = *(v9 - 8);
  v5[128] = swift_task_alloc();
  v5[129] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0B0, &unk_262A30350);
  v5[130] = swift_task_alloc();
  v10 = type metadata accessor for SIDActiveWorkoutPlan(0);
  v5[131] = v10;
  v5[132] = *(v10 - 8);
  v5[133] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2629A5BB4, 0, 0);
}

uint64_t sub_2629A5BB4()
{
  v1 = v0[132];
  v2 = v0[131];
  v3 = v0[130];
  v4 = v0[103];
  v5 = type metadata accessor for SIDPersonalizedPlanRequest(0);
  sub_2629ADF8C(v4 + *(v5 + 20), v3, &unk_27FF3C0B0, &unk_262A30350);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_2629ADF2C(v0[130], &unk_27FF3C0B0, &unk_262A30350);
  }

  else
  {
    v6 = v0[133];
    v7 = v0[131];
    sub_2629ADD40(v0[130], v6, type metadata accessor for SIDActiveWorkoutPlan);
    sub_262A2A6F8();
    MEMORY[0x26672ECF0](0xD000000000000023, 0x8000000262A31E90);
    v8 = sub_262A29FE8();
    MEMORY[0x26672ECF0](v8);

    MEMORY[0x26672ECF0](0x746169726176202CLL, 0xED0000203A6E6F69);
    if (*(v6 + *(v7 + 36)))
    {
      if (*(v6 + *(v7 + 36)) == 1)
      {
        v9 = 0xE600000000000000;
        v10 = 0x6D6F74737563;
      }

      else
      {
        v9 = 0xE700000000000000;
        v10 = 0x68637465727473;
      }
    }

    else
    {
      v9 = 0xEA0000000000746ELL;
      v10 = 0x65747369736E6F63;
    }

    v11 = v0[133];
    MEMORY[0x26672ECF0](v10, v9);

    sub_2629EA8C8(0, 0xE000000000000000);

    sub_2629ADDA8(v11, type metadata accessor for SIDActiveWorkoutPlan);
  }

  v12 = v0[125];
  v13 = v0[124];
  v14 = v0[123];
  v15 = v0[122];
  type metadata accessor for FunctionTimer();
  v16 = swift_allocObject();
  v0[134] = v16;
  strcpy((v16 + 16), "treatmentFetch");
  *(v16 + 31) = -18;
  *(v16 + 32) = 0;
  sub_262A2A318();
  sub_262A2A1E8();
  v0[135] = sub_262A2A1C8();
  (*(v13 + 104))(v12, *MEMORY[0x277D4D3F8], v14);
  v17 = sub_262A2A228();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_task_alloc();
  v0[136] = v18;
  *v18 = v0;
  v18[1] = sub_2629A5F04;
  v19 = v0[125];
  v20 = v0[122];

  return MEMORY[0x2821ACCD8](v19, v20);
}

uint64_t sub_2629A5F04(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[137] = a1;
  v4[138] = v1;

  v5 = v3[125];
  v6 = v3[124];
  v7 = v3[123];
  v8 = v3[122];

  sub_2629ADF2C(v8, &qword_27FF3C0A8, &unk_262A2B550);
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_2629A6610;
  }

  else
  {
    v9 = sub_2629A60CC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2629A60CC()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 1008);
  sub_262A2A318();
  v5 = sub_262A2A308();
  v6 = sub_262A2A308();
  v7 = *(v3 + 8);
  v7(v2, v4);
  result = (v7)(v1, v4);
  if (v5 < v6)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v0 + 1104);
    v10 = *(v0 + 848);
    v11 = (v5 - v6) / 1000000.0;
    *(*(v0 + 1072) + 32) = v11;
    v12 = *(v10 + 16);
    *(v0 + 1201) = 9;
    v13 = *(v12 + 16);
    v14 = swift_task_alloc();
    *(v14 + 16) = v12;
    *(v14 + 24) = v11;
    *(v14 + 32) = 0;
    *(v14 + 40) = v0 + 1201;
    v15 = swift_task_alloc();
    *(v15 + 16) = sub_2629ADFF4;
    *(v15 + 24) = v14;

    os_unfair_lock_lock(v13 + 4);
    sub_2629AE00C();
    os_unfair_lock_unlock(v13 + 4);

    if (!v9)
    {
      v16 = *(v0 + 1096);
      v17 = *(v0 + 952);

      sub_262A2A6F8();

      v18 = MEMORY[0x26672EDD0](v16, v17);
      MEMORY[0x26672ECF0](v18);

      sub_2629EA8C8(0xD000000000000014, 0x8000000262A31E70);

      v19 = *(v0 + 1096);
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = *(v0 + 960);
        v22 = *(v0 + 936);
        v69 = MEMORY[0x277D84F90];
        sub_2629CD980(0, v20, 0);
        v23 = v69;
        v24 = *(v21 + 16);
        v21 += 16;
        v25 = v19 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
        v62 = *(v21 + 56);
        v63 = v24;
        v64 = v0;
        v60 = (v21 - 8);
        v61 = (v22 + 8);
        do
        {
          v26 = *(v0 + 968);
          v27 = *(v0 + 952);
          v28 = *(v0 + 944);
          v29 = *(v0 + 928);
          v63(v26, v25, v27);
          v30 = sub_262A2A2A8();
          v67 = v31;
          v68 = v30;
          v32 = sub_262A2A298();
          v65 = v33;
          v66 = v32;
          sub_262A2A2B8();
          v34 = sub_262A2A238();
          (*v61)(v28, v29);
          (*v60)(v26, v27);
          v36 = *(v69 + 16);
          v35 = *(v69 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_2629CD980((v35 > 1), v36 + 1, 1);
          }

          *(v69 + 16) = v36 + 1;
          v37 = (v69 + 40 * v36);
          v37[4] = v68;
          v37[5] = v67;
          v37[6] = v66;
          v37[7] = v65;
          v37[8] = v34;
          v25 += v62;
          --v20;
          v0 = v64;
        }

        while (v20);
      }

      else
      {

        v23 = MEMORY[0x277D84F90];
      }

      *(v0 + 1112) = v23;
      v38 = *(v23 + 16);
      v39 = MEMORY[0x277D84F90];
      if (v38)
      {
        v70 = MEMORY[0x277D84F90];
        sub_2629CD800(0, v38, 0);
        v39 = v70;
        v40 = *(v70 + 16);
        v41 = 16 * v40;
        v42 = (v23 + 56);
        do
        {
          v44 = *(v42 - 1);
          v43 = *v42;
          v45 = v40 + 1;
          v46 = *(v70 + 24);

          if (v40 >= v46 >> 1)
          {
            sub_2629CD800((v46 > 1), v45, 1);
          }

          *(v70 + 16) = v45;
          v47 = v70 + v41;
          *(v47 + 32) = v44;
          *(v47 + 40) = v43;
          v41 += 16;
          v42 += 5;
          ++v40;
          --v38;
        }

        while (v38);
      }

      *(v0 + 1120) = v39;
      type metadata accessor for PlanDynamicConfigurationManager(0);
      v48 = swift_allocObject();
      *(v0 + 1128) = v48;
      sub_2629ADAB0(v0 + 248);
      v49 = *(v0 + 424);
      v50 = *(v0 + 456);
      *(v48 + 208) = *(v0 + 440);
      *(v48 + 224) = v50;
      v51 = *(v0 + 360);
      v52 = *(v0 + 392);
      v53 = *(v0 + 408);
      *(v48 + 144) = *(v0 + 376);
      *(v48 + 160) = v52;
      *(v48 + 176) = v53;
      *(v48 + 192) = v49;
      v54 = *(v0 + 296);
      v55 = *(v0 + 328);
      v56 = *(v0 + 344);
      *(v48 + 80) = *(v0 + 312);
      *(v48 + 96) = v55;
      *(v48 + 112) = v56;
      *(v48 + 128) = v51;
      v57 = *(v0 + 264);
      v58 = *(v0 + 280);
      *(v48 + 16) = *(v0 + 248);
      *(v48 + 32) = v57;
      *(v48 + 240) = *(v0 + 472);
      *(v48 + 48) = v58;
      *(v48 + 64) = v54;
      *(v48 + 248) = sub_262A17A1C(0, 0);
      sub_262A17B14(0, 0, v48 + OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_logger);
      *(v48 + OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_operationTracker) = sub_262A17CDC(0, 0);
      v59 = swift_task_alloc();
      *(v0 + 1136) = v59;
      *v59 = v0;
      v59[1] = sub_2629A6B24;

      return sub_2629B1CBC(v0 + 16, v39);
    }
  }

  return result;
}

uint64_t sub_2629A6610()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 848);
  (*(*(v0 + 1016) + 8))(*(v0 + 1032), *(v0 + 1008));
  v3 = *(v2 + 16);
  *(v0 + 1200) = 9;
  v4 = *(v3 + 16);
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = 0;
  v5[4] = v1;
  v5[5] = v0 + 1200;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_2629ADFF4;
  *(v6 + 24) = v5;
  MEMORY[0x26672F6B0](v1);

  os_unfair_lock_lock(v4 + 4);
  sub_2629AE00C();
  os_unfair_lock_unlock(v4 + 4);
  v7 = *(v0 + 1104);
  MEMORY[0x26672F6A0](v7);

  sub_262A2A6F8();
  *(v0 + 752) = 0;
  *(v0 + 760) = 0xE000000000000000;
  MEMORY[0x26672ECF0](0xD000000000000023, 0x8000000262A31DB0);
  *(v0 + 784) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  sub_262A2A738();
  sub_2629EA8B0(*(v0 + 752), *(v0 + 760));

  MEMORY[0x26672F6A0](v7);
  v8 = MEMORY[0x277D84F90];
  v9 = *(MEMORY[0x277D84F90] + 16);
  if (v9)
  {
    v10 = *(v0 + 960);
    v11 = *(v0 + 936);
    v59 = MEMORY[0x277D84F90];
    sub_2629CD980(0, v9, 0);
    v12 = v59;
    v13 = *(v10 + 16);
    v10 += 16;
    v14 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v52 = *(v10 + 56);
    v53 = v13;
    v54 = v0;
    v50 = (v10 - 8);
    v51 = (v11 + 8);
    do
    {
      v15 = *(v0 + 968);
      v16 = *(v0 + 952);
      v17 = *(v0 + 944);
      v18 = *(v0 + 928);
      v53(v15, v14, v16);
      v19 = sub_262A2A2A8();
      v57 = v20;
      v58 = v19;
      v21 = sub_262A2A298();
      v55 = v22;
      v56 = v21;
      sub_262A2A2B8();
      v23 = sub_262A2A238();
      (*v51)(v17, v18);
      (*v50)(v15, v16);
      v25 = *(v59 + 16);
      v24 = *(v59 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2629CD980((v24 > 1), v25 + 1, 1);
      }

      *(v59 + 16) = v25 + 1;
      v26 = (v59 + 40 * v25);
      v26[4] = v58;
      v26[5] = v57;
      v26[6] = v56;
      v26[7] = v55;
      v26[8] = v23;
      v14 += v52;
      --v9;
      v0 = v54;
    }

    while (v9);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  *(v0 + 1112) = v12;
  v27 = *(v12 + 16);
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v60 = MEMORY[0x277D84F90];
    sub_2629CD800(0, v27, 0);
    v28 = v60;
    v29 = *(v60 + 16);
    v30 = 16 * v29;
    v31 = (v12 + 56);
    do
    {
      v33 = *(v31 - 1);
      v32 = *v31;
      v34 = v29 + 1;
      v35 = *(v60 + 24);

      if (v29 >= v35 >> 1)
      {
        sub_2629CD800((v35 > 1), v34, 1);
      }

      *(v60 + 16) = v34;
      v36 = v60 + v30;
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      v30 += 16;
      v31 += 5;
      ++v29;
      --v27;
    }

    while (v27);
  }

  *(v0 + 1120) = v28;
  type metadata accessor for PlanDynamicConfigurationManager(0);
  v37 = swift_allocObject();
  *(v0 + 1128) = v37;
  sub_2629ADAB0(v0 + 248);
  v38 = *(v0 + 424);
  v39 = *(v0 + 456);
  *(v37 + 208) = *(v0 + 440);
  *(v37 + 224) = v39;
  v40 = *(v0 + 360);
  v41 = *(v0 + 392);
  v42 = *(v0 + 408);
  *(v37 + 144) = *(v0 + 376);
  *(v37 + 160) = v41;
  *(v37 + 176) = v42;
  *(v37 + 192) = v38;
  v43 = *(v0 + 296);
  v44 = *(v0 + 328);
  v45 = *(v0 + 344);
  *(v37 + 80) = *(v0 + 312);
  *(v37 + 96) = v44;
  *(v37 + 112) = v45;
  *(v37 + 128) = v40;
  v46 = *(v0 + 264);
  v47 = *(v0 + 280);
  *(v37 + 16) = *(v0 + 248);
  *(v37 + 32) = v46;
  *(v37 + 240) = *(v0 + 472);
  *(v37 + 48) = v47;
  *(v37 + 64) = v43;
  *(v37 + 248) = sub_262A17A1C(0, 0);
  sub_262A17B14(0, 0, v37 + OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_logger);
  *(v37 + OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_operationTracker) = sub_262A17CDC(0, 0);
  v48 = swift_task_alloc();
  *(v0 + 1136) = v48;
  *v48 = v0;
  v48[1] = sub_2629A6B24;

  return sub_2629B1CBC(v0 + 16, v28);
}

uint64_t sub_2629A6B24()
{
  *(*v1 + 1144) = v0;

  if (v0)
  {

    v2 = sub_2629A7B34;
  }

  else
  {
    v2 = sub_2629A6C6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2629A6C6C()
{
  v19 = v0;
  v1 = v0[143];
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[105];
  sub_2629A7F90(v0 + 2, v0[103], v2);
  sub_2629ADAD8((v0 + 2));
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_262A2A6F8();
  v0[96] = 0;
  v0[97] = 0xE000000000000000;
  MEMORY[0x26672ECF0](0xD00000000000001BLL, 0x8000000262A31DE0);
  sub_262A2A738();
  sub_2629EA8C8(v0[96], v0[97]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEB0, &qword_262A2B2E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_262A2B290;
  *(v5 + 32) = v3;
  *(v5 + 64) = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v5 + 40));
  sub_2629ADB70(v2, boxed_opaque_existential_0, type metadata accessor for PlanGenerationContext);
  v7 = sub_2629ABA88(v5);
  swift_setDeallocating();
  sub_2629ADF2C(v5 + 32, &qword_27FF3BEB8, &qword_262A2B2F0);
  swift_deallocClassInstance();
  v8 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18[0] = v8;
  sub_2629ABBA4(v7, sub_2629AB8F4, 0, isUniquelyReferenced_nonNull_native, v18, 0, 0);

  if (v1)
  {
  }

  else
  {
    v11 = v0[113];
    v12 = v0[112];
    v13 = v18[0];
    type metadata accessor for Dependencies();
    v14 = swift_allocObject();
    v0[144] = v14;
    *(v14 + 16) = v13;

    sub_262A17B14(0, 0, v11);
    v15 = sub_262A17CDC(0, 0);
    *(v11 + *(type metadata accessor for CatalogMetadataService(0) + 20)) = v15;
    sub_262A17B14(0, 0, v11 + v12[5]);
    *(v11 + v12[6]) = sub_262A17CDC(0, 0);
    sub_262A17DD4(0, 0, v11 + v12[7]);

    v16 = swift_task_alloc();
    v0[145] = v16;
    *v16 = v0;
    v16[1] = sub_2629A6F88;
    v17 = v0[103];

    return sub_2629FF23C(v17);
  }
}

uint64_t sub_2629A6F88(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1168) = a1;
  *(v3 + 1176) = v1;

  if (v1)
  {

    v4 = sub_2629A7C68;
  }

  else
  {
    v4 = sub_2629A70A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2629A70A8()
{
  v61 = v0;
  v1 = v0[146];
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000031, 0x8000000262A31E00);
  v53 = v1;
  v2 = *(v1 + 16);
  v0[99] = v2;
  v3 = sub_262A2A868();
  MEMORY[0x26672ECF0](v3);

  sub_2629EA8C8(v59, v60);

  if (v2)
  {
    v5 = 0;
    v50 = v0[108];
    v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v49 = v0[146];
    v52 = v2;
    while (1)
    {
      v7 = __OFADD__(v5, 5);
      if (v5 > 0x7FFFFFFFFFFFFFFALL)
      {
        break;
      }

      if (v2 >= (v5 + 5))
      {
        v8 = v5 + 5;
      }

      else
      {
        v8 = v2;
      }

      if (v8 < v5)
      {
        goto LABEL_36;
      }

      v9 = *(v53 + 16);
      if (v9 < v5 || v9 < v8)
      {
        goto LABEL_37;
      }

      v11 = v0[146];
      if (v9 == v8 - v5)
      {
      }

      else
      {
        sub_2629F6E10(v0[146], v49 + v51, v5, (2 * v8) | 1);
        v11 = v40;
        v9 = *(v40 + 16);
      }

      v55 = v7;
      v56 = v5 + 5;
      if (v9)
      {
        v54 = v5;
        v59 = MEMORY[0x277D84F90];
        sub_2629CD800(0, v9, 0);
        v12 = v59;
        v13 = v11 + v51;
        v14 = *(v50 + 72);
        do
        {
          v15 = v0[109];
          sub_2629ADB70(v13, v15, type metadata accessor for PreprocessedUserHistoryWithMetadata);
          v16 = sub_2629DEA78();
          v18 = v17;
          sub_2629ADDA8(v15, type metadata accessor for PreprocessedUserHistoryWithMetadata);
          v59 = v12;
          v20 = *(v12 + 16);
          v19 = *(v12 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_2629CD800((v19 > 1), v20 + 1, 1);
            v12 = v59;
          }

          *(v12 + 16) = v20 + 1;
          v21 = v12 + 16 * v20;
          *(v21 + 32) = v16;
          *(v21 + 40) = v18;
          v13 += v14;
          --v9;
        }

        while (v9);

        v5 = v54;
      }

      else
      {

        v12 = MEMORY[0x277D84F90];
      }

      v22 = v0[111];
      v23 = v0[104];
      v0[100] = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0C0, &unk_262A2BA70);
      sub_2629ADBD8();
      v24 = sub_262A2A398();
      v26 = v25;

      v59 = 0;
      v60 = 0xE000000000000000;
      sub_262A2A6F8();

      v59 = 0xD00000000000002ALL;
      v60 = 0x8000000262A31E40;
      v0[101] = v5 / 5 + 1;
      v27 = sub_262A2A868();
      MEMORY[0x26672ECF0](v27);

      MEMORY[0x26672ECF0](2618, 0xE200000000000000);
      MEMORY[0x26672ECF0](v24, v26);

      v28 = v59;
      v29 = v60;
      sub_2629ADB70(v23, v22, type metadata accessor for PersistentLogger);

      v30 = sub_262A2A2D8();
      v31 = sub_262A2A5F8();

      v32 = os_log_type_enabled(v30, v31);
      v33 = v0[111];
      if (v32)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 136446210;
        v58 = v35;
        v59 = 91;
        v60 = 0xE100000000000000;
        sub_262A2A018();
        sub_2629ADC84(&qword_27FF3C0D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v36 = sub_262A2A868();
        MEMORY[0x26672ECF0](v36);

        MEMORY[0x26672ECF0](8285, 0xE200000000000000);
        MEMORY[0x26672ECF0](v28, v29);
        v38 = v59;
        v37 = v60;
        sub_2629ADDA8(v33, type metadata accessor for PersistentLogger);
        v39 = sub_262A1D0CC(v38, v37, &v58);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_2629A3000, v30, v31, "%{public}s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        MEMORY[0x26672F820](v35, -1, -1);
        MEMORY[0x26672F820](v34, -1, -1);
      }

      else
      {

        sub_2629ADDA8(v33, type metadata accessor for PersistentLogger);
      }

      v2 = v52;
      v5 = v56;
      v6 = v55;
      if (v56 >= v52)
      {
        v6 = 1;
      }

      if (v6)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
LABEL_32:
    v41 = v0[107];
    sub_2629FFDBC(v0[103], v0[146], v0[139], v41);

    type metadata accessor for WorkoutPlanFactory();
    sub_262A275A0(v41, v0 + 89);
    v42 = v0[92];
    v43 = v0[93];
    __swift_project_boxed_opaque_existential_1(v0 + 89, v42);
    v57 = (*(v43 + 8) + **(v43 + 8));
    v44 = swift_task_alloc();
    v0[148] = v44;
    *v44 = v0;
    v44[1] = sub_2629A7788;
    v45 = v0[146];
    v46 = v0[107];
    v47 = v0[103];
    v48 = v0[102];

    return v57(v48, v47, v46, v45, v42, v43);
  }

  return result;
}

uint64_t sub_2629A7788()
{
  *(*v1 + 1192) = v0;

  if (v0)
  {
    v2 = sub_2629A7DE8;
  }

  else
  {
    v2 = sub_2629A78AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2629A78AC()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 920);
  v3 = *(v0 + 904);
  v4 = *(v0 + 856);
  swift_setDeallocating();
  v5 = *(v1 + 16);
  v6 = *(v1 + 48);
  *(v0 + 496) = *(v1 + 32);
  *(v0 + 512) = v6;
  *(v0 + 480) = v5;
  v7 = *(v1 + 64);
  v8 = *(v1 + 80);
  v9 = *(v1 + 112);
  *(v0 + 560) = *(v1 + 96);
  *(v0 + 576) = v9;
  *(v0 + 528) = v7;
  *(v0 + 544) = v8;
  v10 = *(v1 + 128);
  v11 = *(v1 + 144);
  v12 = *(v1 + 176);
  *(v0 + 624) = *(v1 + 160);
  *(v0 + 640) = v12;
  *(v0 + 592) = v10;
  *(v0 + 608) = v11;
  v13 = *(v1 + 192);
  v14 = *(v1 + 208);
  v15 = *(v1 + 224);
  *(v0 + 704) = *(v1 + 240);
  *(v0 + 672) = v14;
  *(v0 + 688) = v15;
  *(v0 + 656) = v13;
  sub_2629ADF2C(v0 + 480, &unk_27FF3C1F0, &unk_262A2B560);
  swift_unknownObjectRelease();
  sub_2629ADDA8(v1 + OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_logger, type metadata accessor for PersistentLogger);

  swift_deallocClassInstance();
  swift_setDeallocating();
  swift_deallocClassInstance();

  sub_2629ADDA8(v4, type metadata accessor for FitnessPlanUser);
  sub_2629ADDA8(v3, type metadata accessor for RequestPreProcessor);
  sub_2629ADDA8(v2, type metadata accessor for PlanGenerationContext);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 712));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2629A7B34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2629A7C68()
{
  v1 = v0[115];
  v2 = v0[113];

  sub_2629ADDA8(v2, type metadata accessor for RequestPreProcessor);
  sub_2629ADDA8(v1, type metadata accessor for PlanGenerationContext);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2629A7DE8()
{
  v1 = v0[115];
  v2 = v0[113];
  v3 = v0[107];

  sub_2629ADDA8(v3, type metadata accessor for FitnessPlanUser);
  sub_2629ADDA8(v2, type metadata accessor for RequestPreProcessor);
  sub_2629ADDA8(v1, type metadata accessor for PlanGenerationContext);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 89);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2629A7F90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2 + *(type metadata accessor for SIDPersonalizedPlanRequest(0) + 20);
  v4 = *(v3 + *(type metadata accessor for SIDPersonalizedPlanDataProvider(0) + 36));

  v5 = MEMORY[0x277D84F90];
  v97 = sub_2629AD7C4(MEMORY[0x277D84F90], &qword_27FF3CDD0, &qword_262A2B3B0, sub_2629CB1E4);
  v96 = sub_2629AD7C4(v5, &qword_27FF3CDD0, &qword_262A2B3B0, sub_2629CB1E4);
  v6 = sub_2629ACABC(v5, &qword_27FF3C010, &unk_262A2E720);
  v7 = 0;
  v99 = v4;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v4 + 64;
  v11 = v9 & *(v4 + 64);
  v12 = (v8 + 63) >> 6;
  v98 = v12;
  while (2)
  {
    v13 = v7;
    if (!v11)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v7 = v13;
LABEL_9:
      v14 = __clz(__rbit64(v11)) | (v7 << 6);
      v15 = *(*(v99 + 48) + v14);
      v101 = *(*(v99 + 56) + 8 * v14);
      swift_bridgeObjectRetain_n();
      sub_2629A9EB4(&v101);
      v100 = 0;

      v16 = v101;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v6;
      v18 = v15;
      v21 = sub_2629CB1E4(v15, v19);
      v23 = *(v6 + 2);
      v24 = (v20 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_47;
      }

      v26 = v20;
      if (*(v6 + 3) >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v6 = v101;
          if (v20)
          {
            goto LABEL_16;
          }
        }

        else
        {
          sub_2629CDF28(v22);
          v6 = v101;
          if (v26)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        sub_2629CFB88(v25, isUniquelyReferenced_nonNull_native);
        v28 = sub_2629CB1E4(v18, v27);
        if ((v26 & 1) != (v29 & 1))
        {
          goto LABEL_53;
        }

        v21 = v28;
        v6 = v101;
        if (v26)
        {
LABEL_16:
          *(*(v6 + 7) + 8 * v21) = v16;

          goto LABEL_20;
        }
      }

      *&v6[8 * (v21 >> 6) + 64] |= 1 << v21;
      *(*(v6 + 6) + v21) = v18;
      *(*(v6 + 7) + 8 * v21) = v16;
      v30 = *(v6 + 2);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_48;
      }

      *(v6 + 2) = v32;
LABEL_20:
      v11 &= v11 - 1;
      v33 = *(v16 + 2);
      if (v33)
      {
        break;
      }

      v13 = v7;
      v12 = v98;
      if (!v11)
      {
LABEL_6:
        while (1)
        {
          v7 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v7 >= v12)
          {

            v64 = *a1;
            v65 = a1[1];
            v66 = a1[2];
            v67 = type metadata accessor for PlanGenerationContext(0);

            sub_262A2A008();
            v68 = a1[3];
            v69 = a1[4];
            v70 = a1[5];
            v71 = *(a1 + 48);
            v72 = a1[7];
            v73 = a1[8];
            v74 = a1[9];
            v75 = a1[10];
            v76 = a1[11];
            v77 = a1[12];
            v79 = a1[13];
            result = a1[14];
            v80 = a1[15];
            v81 = a1[16];
            v82 = a1[17];
            v83 = a1[18];
            v84 = a1[19];
            v85 = a1[20];
            v86 = a1[21];
            v87 = a1[22];
            v88 = a1[23];
            v89 = a1[24];
            v90 = a1[25];
            v91 = *(a1 + 208);
            v92 = a1[27];
            *a3 = v64;
            a3[1] = v65;
            a3[2] = v66;
            *(a3 + v67[7]) = v68;
            *(a3 + v67[8]) = v69;
            *(a3 + v67[9]) = v70;
            *(a3 + v67[10]) = v71;
            *(a3 + v67[11]) = v72;
            *(a3 + v67[12]) = v73;
            *(a3 + v67[13]) = v74;
            *(a3 + v67[14]) = v75;
            *(a3 + v67[15]) = v76;
            *(a3 + v67[16]) = v77;
            *(a3 + v67[17]) = v79;
            *(a3 + v67[18]) = result;
            *(a3 + v67[19]) = v80;
            *(a3 + v67[20]) = v81;
            *(a3 + v67[21]) = v82;
            *(a3 + v67[22]) = v83;
            *(a3 + v67[23]) = v6;
            *(a3 + v67[24]) = v96;
            *(a3 + v67[25]) = v97;
            *(a3 + v67[26]) = v84;
            *(a3 + v67[27]) = v85;
            *(a3 + v67[28]) = v86;
            *(a3 + v67[29]) = v87;
            *(a3 + v67[30]) = v88;
            *(a3 + v67[31]) = v89;
            *(a3 + v67[32]) = v90;
            *(a3 + v67[33]) = v91;
            *(a3 + v67[34]) = v92;
            return result;
          }

          v11 = *(v10 + 8 * v7);
          ++v13;
          if (v11)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    v34 = *(v16 + 4);
    v93 = *&v16[8 * v33 + 24];

    v35 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v97;
    v37 = sub_2629CB1E4(v18, v36);
    v39 = *(v97 + 2);
    v40 = (v38 & 1) == 0;
    v31 = __OFADD__(v39, v40);
    v41 = v39 + v40;
    if (v31)
    {
      goto LABEL_49;
    }

    v42 = v38;
    if (*(v97 + 3) >= v41)
    {
      if ((v35 & 1) == 0)
      {
        v62 = v37;
        sub_2629CDF14();
        v37 = v62;
      }

      v43 = v18;
    }

    else
    {
      sub_2629CF7F0(v41, v35);
      v43 = v18;
      v37 = sub_2629CB1E4(v18, v44);
      if ((v42 & 1) != (v45 & 1))
      {
        goto LABEL_53;
      }
    }

    v46 = v101;
    v97 = v101;
    if (v42)
    {
      *(*(v101 + 7) + 8 * v37) = v34;
    }

    else
    {
      *&v101[8 * (v37 >> 6) + 64] |= 1 << v37;
      *(*(v46 + 6) + v37) = v43;
      *(*(v46 + 7) + 8 * v37) = v34;
      v47 = *(v46 + 2);
      v31 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v31)
      {
        goto LABEL_51;
      }

      *(v46 + 2) = v48;
    }

    v49 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v96;
    v51 = sub_2629CB1E4(v18, v50);
    v53 = *(v96 + 2);
    v54 = (v52 & 1) == 0;
    v31 = __OFADD__(v53, v54);
    v55 = v53 + v54;
    if (!v31)
    {
      v56 = v52;
      if (*(v96 + 3) >= v55)
      {
        if ((v49 & 1) == 0)
        {
          v63 = v51;
          sub_2629CDF14();
          v51 = v63;
        }
      }

      else
      {
        sub_2629CF7F0(v55, v49);
        v51 = sub_2629CB1E4(v18, v57);
        if ((v56 & 1) != (v58 & 1))
        {
          goto LABEL_53;
        }
      }

      v59 = v101;
      v96 = v101;
      if (v56)
      {
        *(*(v101 + 7) + 8 * v51) = v93;
      }

      else
      {
        *&v101[8 * (v51 >> 6) + 64] |= 1 << v51;
        *(*(v59 + 6) + v51) = v18;
        *(*(v59 + 7) + 8 * v51) = v93;
        v60 = *(v59 + 2);
        v31 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v31)
        {
          goto LABEL_52;
        }

        *(v59 + 2) = v61;
      }

      v12 = v98;
      continue;
    }

    break;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  MEMORY[0x26672F6A0](v100);

  __break(1u);
LABEL_53:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

uint64_t sub_2629A85EC()
{
  v1 = sub_262A2A278();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2629ACFF8(*(v0 + 16));
  sub_262A2A268();
  v6 = 0;
  v7 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000012, 0x8000000262A31D90);
  sub_262A2A738();
  sub_2629EA8C8(v6, v7);

  sub_262A2A1E8();
  sub_262A2A1C8();
  sub_262A2A1B8();

  return (*(v2 + 8))(v4, v1);
}

void *SIDFitnessClient.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t SIDFitnessClient.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2629A8808(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2629A88B4;

  return sub_2629A4B9C(a1, a2);
}

uint64_t sub_2629A88B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2629A89D0(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C088, &qword_262A2B530);
  v9 = *(v8 - 1);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *(a1 + 32);
  if (__OFADD__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 32) = v15 + 1;
    sub_262A29FC8();
    v14[v8[13]] = a3;
    *&v14[v8[11]] = a4;
    *&v14[v8[12]] = a2;
    *&v14[v8[14]] = v15;
    sub_2629ADF8C(v14, v12, &qword_27FF3C088, &qword_262A2B530);
    swift_beginAccess();
    a3 = *(a1 + 24);
    MEMORY[0x26672F6B0](a2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 24) = a3;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  a3 = sub_2629A9828(0, a3[2] + 1, 1, a3, &qword_27FF3C0A0, &qword_262A2B548, &qword_27FF3C088, &qword_262A2B530);
  *(a1 + 24) = a3;
LABEL_3:
  v18 = a3[2];
  v17 = a3[3];
  if (v18 >= v17 >> 1)
  {
    a3 = sub_2629A9828((v17 > 1), v18 + 1, 1, a3, &qword_27FF3C0A0, &qword_262A2B548, &qword_27FF3C088, &qword_262A2B530);
  }

  a3[2] = v18 + 1;
  sub_2629ADA40(v12, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18);
  *(a1 + 24) = a3;
  swift_endAccess();
  return sub_2629ADF2C(v14, &qword_27FF3C088, &qword_262A2B530);
}

void *sub_2629A8C64(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BE98, &qword_262A2B2D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEA0, &qword_262A2B2D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2629A8DAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEE8, &qword_262A2B390);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2629A8EB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BED8, &qword_262A2B380);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2629A9020(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF28, &qword_262A2B3D0);
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

char *sub_2629A9140(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF18, &unk_262A2B3C0);
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

char *sub_2629A9244(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEE0, &qword_262A2B388);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2629A9364(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEF0, &qword_262A2B398);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEF8, &qword_262A2B3A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2629A94F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_2629A96E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFE0, &qword_262A2B488);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_2629A9828(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v19 = MEMORY[0x277D84F90];
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

char *sub_2629A9A74(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v12 = MEMORY[0x277D84F90];
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

char *sub_2629A9B60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF60, &qword_262A2B408);
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

void *sub_2629A9C68(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF18, &unk_262A2B3C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_2629A9D00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_2629A9D7C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF48, &unk_262A2B3F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_2629A9E00(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C088, &qword_262A2B530) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_262A1F254(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2629A9FE8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2629A9EB4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_262A1F29C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_262A2A858();
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
      v7 = sub_262A2A548();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2629AAC90(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2629A9FE8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_262A2A858();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C088, &qword_262A2B530);
        v6 = sub_262A2A548();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C088, &qword_262A2B530) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2629AA388(v8, v9, a1, v4);
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
    return sub_2629AA12C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2629AA12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C088, &qword_262A2B530);
  v9 = MEMORY[0x28223BE20](v8);
  v38 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v41 = &v29 - v12;
  result = MEMORY[0x28223BE20](v11);
  v40 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v36 = -v17;
    v37 = v16;
    v19 = a1 - a3;
    v30 = v17;
    v20 = v16 + v17 * a3;
    v39 = v8;
LABEL_5:
    v34 = v18;
    v35 = a3;
    v32 = v20;
    v33 = v19;
    while (1)
    {
      v21 = v40;
      sub_2629ADF8C(v20, v40, &qword_27FF3C088, &qword_262A2B530);
      v22 = v41;
      sub_2629ADF8C(v18, v41, &qword_27FF3C088, &qword_262A2B530);
      v23 = *(v8 + 56);
      v24 = *(v21 + v23);
      v25 = *(v22 + v23);
      sub_2629ADF2C(v22, &qword_27FF3C088, &qword_262A2B530);
      result = sub_2629ADF2C(v21, &qword_27FF3C088, &qword_262A2B530);
      v26 = v24 < v25;
      v8 = v39;
      if (!v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v18 = v34 + v30;
        v19 = v33 - 1;
        v20 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v27 = v38;
      sub_2629ADA40(v20, v38);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2629ADA40(v27, v18);
      v18 += v36;
      v20 += v36;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2629AA388(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v110 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C088, &qword_262A2B530);
  v118 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v113 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v123 = &v106 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v125 = &v106 - v14;
  result = MEMORY[0x28223BE20](v13);
  v124 = &v106 - v16;
  v119 = a3;
  v17 = *(a3 + 8);
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_95:
    a3 = *v110;
    if (!*v110)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_97:
      v127 = v19;
      v102 = *(v19 + 2);
      if (v102 >= 2)
      {
        while (*v119)
        {
          v103 = *&v19[16 * v102];
          v104 = *&v19[16 * v102 + 24];
          sub_2629AB1DC(*v119 + *(v118 + 72) * v103, *v119 + *(v118 + 72) * *&v19[16 * v102 + 16], *v119 + *(v118 + 72) * v104, a3);
          if (v5)
          {
          }

          if (v104 < v103)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_262A1F22C(v19);
          }

          if (v102 - 2 >= *(v19 + 2))
          {
            goto LABEL_121;
          }

          v105 = &v19[16 * v102];
          *v105 = v103;
          *(v105 + 1) = v104;
          v127 = v19;
          result = sub_262A1F1A0(v102 - 1);
          v19 = v127;
          v102 = *(v127 + 2);
          if (v102 <= 1)
          {
          }
        }

        goto LABEL_131;
      }
    }

LABEL_127:
    result = sub_262A1F22C(v19);
    v19 = result;
    goto LABEL_97;
  }

  v107 = a4;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v126 = v8;
  while (1)
  {
    v20 = v18;
    if (v18 + 1 >= v17)
    {
      v31 = v18 + 1;
    }

    else
    {
      v120 = v17;
      v109 = v5;
      v21 = v18;
      v22 = *v119;
      v122 = v22;
      v23 = *(v118 + 72);
      a3 = v22 + v23 * (v18 + 1);
      v24 = v124;
      sub_2629ADF8C(a3, v124, &qword_27FF3C088, &qword_262A2B530);
      v25 = v22 + v23 * v21;
      v26 = v125;
      sub_2629ADF8C(v25, v125, &qword_27FF3C088, &qword_262A2B530);
      v27 = *(v8 + 56);
      v28 = *(v24 + v27);
      v116 = *(v26 + v27);
      v117 = v28;
      sub_2629ADF2C(v26, &qword_27FF3C088, &qword_262A2B530);
      result = sub_2629ADF2C(v24, &qword_27FF3C088, &qword_262A2B530);
      v108 = v21;
      v29 = v21 + 2;
      v121 = v23;
      v30 = v122 + v23 * v29;
      v115 = v19;
      while (1)
      {
        v31 = v120;
        if (v120 == v29)
        {
          break;
        }

        LODWORD(v122) = v117 < v116;
        v32 = v124;
        sub_2629ADF8C(v30, v124, &qword_27FF3C088, &qword_262A2B530);
        v33 = v125;
        sub_2629ADF8C(a3, v125, &qword_27FF3C088, &qword_262A2B530);
        v34 = *(v126 + 56);
        v35 = *(v32 + v34);
        v36 = *(v33 + v34);
        sub_2629ADF2C(v33, &qword_27FF3C088, &qword_262A2B530);
        result = sub_2629ADF2C(v32, &qword_27FF3C088, &qword_262A2B530);
        v19 = v115;
        ++v29;
        v30 += v121;
        a3 += v121;
        if (((v122 ^ (v35 >= v36)) & 1) == 0)
        {
          v31 = v29 - 1;
          break;
        }
      }

      v8 = v126;
      v20 = v108;
      v5 = v109;
      if (v117 < v116)
      {
        if (v31 < v108)
        {
          goto LABEL_124;
        }

        if (v108 < v31)
        {
          v37 = v121 * (v31 - 1);
          v38 = v31 * v121;
          v39 = v31;
          v40 = v108;
          v41 = v108 * v121;
          do
          {
            if (v40 != --v39)
            {
              v42 = *v119;
              if (!*v119)
              {
                goto LABEL_130;
              }

              a3 = v42 + v41;
              sub_2629ADA40(v42 + v41, v113);
              if (v41 < v37 || a3 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2629ADA40(v113, v42 + v37);
              v8 = v126;
            }

            ++v40;
            v37 -= v121;
            v38 -= v121;
            v41 += v121;
          }

          while (v40 < v39);
          v20 = v108;
          v5 = v109;
          v19 = v115;
        }
      }
    }

    v43 = v119[1];
    if (v31 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v31, v20))
    {
      goto LABEL_123;
    }

    if (v31 - v20 >= v107)
    {
LABEL_32:
      v18 = v31;
      if (v31 < v20)
      {
        goto LABEL_122;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v20, v107))
    {
      goto LABEL_125;
    }

    if (v20 + v107 >= v43)
    {
      v44 = v119[1];
    }

    else
    {
      v44 = v20 + v107;
    }

    if (v44 < v20)
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v31 == v44)
    {
      goto LABEL_32;
    }

    v115 = v19;
    v108 = v20;
    v109 = v5;
    v90 = *v119;
    v91 = *(v118 + 72);
    v92 = *v119 + v91 * (v31 - 1);
    v121 = -v91;
    v122 = v90;
    v93 = v20 - v31;
    v111 = v91;
    v112 = v44;
    a3 = v90 + v31 * v91;
LABEL_86:
    v120 = v31;
    v114 = a3;
    v116 = v93;
    v117 = v92;
    v94 = v92;
LABEL_87:
    v95 = v124;
    sub_2629ADF8C(a3, v124, &qword_27FF3C088, &qword_262A2B530);
    v96 = v125;
    sub_2629ADF8C(v94, v125, &qword_27FF3C088, &qword_262A2B530);
    v97 = *(v8 + 56);
    v98 = *(v95 + v97);
    v99 = *(v96 + v97);
    sub_2629ADF2C(v96, &qword_27FF3C088, &qword_262A2B530);
    result = sub_2629ADF2C(v95, &qword_27FF3C088, &qword_262A2B530);
    if (v98 < v99)
    {
      break;
    }

    v8 = v126;
LABEL_85:
    v31 = v120 + 1;
    v18 = v112;
    v92 = v117 + v111;
    v93 = v116 - 1;
    a3 = v114 + v111;
    if (v120 + 1 != v112)
    {
      goto LABEL_86;
    }

    v20 = v108;
    v5 = v109;
    v19 = v115;
    if (v112 < v108)
    {
      goto LABEL_122;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2629A8DAC(0, *(v19 + 2) + 1, 1, v19);
      v19 = result;
    }

    v46 = *(v19 + 2);
    v45 = *(v19 + 3);
    a3 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_2629A8DAC((v45 > 1), v46 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = a3;
    v47 = &v19[16 * v46];
    *(v47 + 4) = v20;
    *(v47 + 5) = v18;
    v48 = *v110;
    if (!*v110)
    {
      goto LABEL_132;
    }

    if (v46)
    {
      while (2)
      {
        v49 = a3 - 1;
        if (a3 >= 4)
        {
          v54 = &v19[16 * a3 + 32];
          v55 = *(v54 - 64);
          v56 = *(v54 - 56);
          v60 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          if (v60)
          {
            goto LABEL_109;
          }

          v59 = *(v54 - 48);
          v58 = *(v54 - 40);
          v60 = __OFSUB__(v58, v59);
          v52 = v58 - v59;
          v53 = v60;
          if (v60)
          {
            goto LABEL_110;
          }

          v61 = &v19[16 * a3];
          v63 = *v61;
          v62 = *(v61 + 1);
          v60 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v60)
          {
            goto LABEL_112;
          }

          v60 = __OFADD__(v52, v64);
          v65 = v52 + v64;
          if (v60)
          {
            goto LABEL_115;
          }

          if (v65 >= v57)
          {
            v83 = &v19[16 * v49 + 32];
            v85 = *v83;
            v84 = *(v83 + 1);
            v60 = __OFSUB__(v84, v85);
            v86 = v84 - v85;
            if (v60)
            {
              goto LABEL_119;
            }

            if (v52 < v86)
            {
              v49 = a3 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v53)
            {
              goto LABEL_111;
            }

            v66 = &v19[16 * a3];
            v68 = *v66;
            v67 = *(v66 + 1);
            v69 = __OFSUB__(v67, v68);
            v70 = v67 - v68;
            v71 = v69;
            if (v69)
            {
              goto LABEL_114;
            }

            v72 = &v19[16 * v49 + 32];
            v74 = *v72;
            v73 = *(v72 + 1);
            v60 = __OFSUB__(v73, v74);
            v75 = v73 - v74;
            if (v60)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v70, v75))
            {
              goto LABEL_118;
            }

            if (v70 + v75 < v52)
            {
              goto LABEL_66;
            }

            if (v52 < v75)
            {
              v49 = a3 - 2;
            }
          }
        }

        else
        {
          if (a3 == 3)
          {
            v50 = *(v19 + 4);
            v51 = *(v19 + 5);
            v60 = __OFSUB__(v51, v50);
            v52 = v51 - v50;
            v53 = v60;
            goto LABEL_52;
          }

          v76 = &v19[16 * a3];
          v78 = *v76;
          v77 = *(v76 + 1);
          v60 = __OFSUB__(v77, v78);
          v70 = v77 - v78;
          v71 = v60;
LABEL_66:
          if (v71)
          {
            goto LABEL_113;
          }

          v79 = &v19[16 * v49];
          v81 = *(v79 + 4);
          v80 = *(v79 + 5);
          v60 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v60)
          {
            goto LABEL_116;
          }

          if (v82 < v70)
          {
            break;
          }
        }

        v87 = v49 - 1;
        if (v49 - 1 >= a3)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*v119)
        {
          goto LABEL_129;
        }

        a3 = *&v19[16 * v87 + 32];
        v88 = *&v19[16 * v49 + 40];
        sub_2629AB1DC(*v119 + *(v118 + 72) * a3, *v119 + *(v118 + 72) * *&v19[16 * v49 + 32], *v119 + *(v118 + 72) * v88, v48);
        if (v5)
        {
        }

        if (v88 < a3)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_262A1F22C(v19);
        }

        if (v87 >= *(v19 + 2))
        {
          goto LABEL_108;
        }

        v89 = &v19[16 * v87];
        *(v89 + 4) = a3;
        *(v89 + 5) = v88;
        v127 = v19;
        result = sub_262A1F1A0(v49);
        v19 = v127;
        a3 = *(v127 + 2);
        if (a3 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v17 = v119[1];
    if (v18 >= v17)
    {
      goto LABEL_95;
    }
  }

  if (v122)
  {
    v100 = v123;
    sub_2629ADA40(a3, v123);
    v8 = v126;
    swift_arrayInitWithTakeFrontToBack();
    sub_2629ADA40(v100, v94);
    v94 += v121;
    a3 += v121;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
  return result;
}

uint64_t sub_2629AAC90(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
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
      result = sub_262A1F22C(v8);
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
        sub_2629AB700((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
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
  v8 = MEMORY[0x277D84F90];
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
      result = sub_2629A8DAC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_2629A8DAC((v29 > 1), v5 + 1, 1, v8);
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
        sub_2629AB700((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
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

uint64_t sub_2629AB1DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C088, &qword_262A2B530);
  v8 = MEMORY[0x28223BE20](v47);
  v46 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v45 = &v37 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
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
  v50 = a1;
  v49 = a4;
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

    if (v17 < 1)
    {
      v29 = a4 + v17;
    }

    else
    {
      v27 = -v13;
      v28 = a4 + v17;
      v29 = a4 + v17;
      v40 = a1;
      v41 = a4;
      v39 = v27;
      do
      {
        v37 = v29;
        v30 = a2 + v27;
        v42 = a2;
        v43 = a2 + v27;
        while (1)
        {
          if (a2 <= a1)
          {
            v50 = a2;
            v48 = v37;
            goto LABEL_58;
          }

          v31 = a3;
          v38 = v29;
          a3 += v27;
          v32 = v28 + v27;
          v33 = v45;
          sub_2629ADF8C(v28 + v27, v45, &qword_27FF3C088, &qword_262A2B530);
          v34 = v46;
          sub_2629ADF8C(v30, v46, &qword_27FF3C088, &qword_262A2B530);
          v35 = *(v47 + 56);
          v44 = *(v33 + v35);
          v36 = *(v34 + v35);
          sub_2629ADF2C(v34, &qword_27FF3C088, &qword_262A2B530);
          sub_2629ADF2C(v33, &qword_27FF3C088, &qword_262A2B530);
          if (v44 < v36)
          {
            break;
          }

          v29 = v32;
          if (v31 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v43;
            v27 = v39;
            a1 = v40;
          }

          else
          {
            v30 = v43;
            v27 = v39;
            a1 = v40;
            if (v31 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v32;
          a2 = v42;
          if (v32 <= v41)
          {
            goto LABEL_56;
          }
        }

        if (v31 < v42 || a3 >= v42)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v39;
          a1 = v40;
          v29 = v38;
        }

        else
        {
          a2 = v43;
          v27 = v39;
          a1 = v40;
          v29 = v38;
          if (v31 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v41);
    }

LABEL_56:
    v50 = a2;
    v48 = v29;
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

    v43 = a3;
    v44 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v42 = v13;
      do
      {
        v19 = v45;
        v20 = a2;
        sub_2629ADF8C(a2, v45, &qword_27FF3C088, &qword_262A2B530);
        v21 = v46;
        sub_2629ADF8C(a4, v46, &qword_27FF3C088, &qword_262A2B530);
        v22 = *(v47 + 56);
        v23 = *(v19 + v22);
        v24 = *(v21 + v22);
        sub_2629ADF2C(v21, &qword_27FF3C088, &qword_262A2B530);
        sub_2629ADF2C(v19, &qword_27FF3C088, &qword_262A2B530);
        if (v23 >= v24)
        {
          v25 = v42;
          v26 = a4 + v42;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = v26;
          a4 += v25;
        }

        else
        {
          v25 = v42;
          a2 += v42;
          if (a1 < v20 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += v25;
        v50 = a1;
      }

      while (a4 < v44 && a2 < v43);
    }
  }

LABEL_58:
  sub_262A1A510(&v50, &v49, &v48);
  return 1;
}

uint64_t sub_2629AB700(char *__dst, char *__src, char *a3, char *a4)
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

uint64_t sub_2629AB8F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2629ADE10((a1 + 1), (a2 + 1));
  *a2 = v3;
  return result;
}

_OWORD *sub_2629AB924@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_2629ADE10(*(v3 + 56) + 32 * v13, v18);
    *&v20 = v14;
    result = sub_2629AD99C(v18, (&v20 + 8));
    v16 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18[0] = v20;
      v18[1] = v21;
      v19 = v16;
      v17(v18);
      return sub_2629ADF2C(v18, &qword_27FF3C0D8, &qword_262A2B570);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_2629ABA88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0E0, &qword_262A2B578);
    v3 = sub_262A2A778();
    for (i = a1 + 32; ; i += 40)
    {
      sub_2629ADF8C(i, &v11, &qword_27FF3BEB8, &qword_262A2B2F0);
      v5 = v11;
      result = sub_2629CB210(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2629AD99C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

uint64_t sub_2629ABBA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = -1 << *(a1 + 32);
  v12 = ~v11;
  v13 = *(a1 + 64);
  v14 = -v11;
  v45 = a1;
  v46 = a1 + 64;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v47 = v12;
  v48 = 0;
  v49 = v15 & v13;
  v50 = a2;
  v51 = a3;

  sub_2629AB924(&v42);
  if (!v44)
  {
LABEL_20:
    sub_2629ADE08(v45);
  }

  while (1)
  {
    v21 = v42;
    sub_2629AD99C(&v43, v41);
    v22 = *a5;
    v23 = sub_2629CB210(v21);
    v25 = *(v22 + 16);
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (*(v22 + 24) < v28)
    {
      sub_2629CF564(v28, a4 & 1);
      v23 = sub_2629CB210(v21);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_23;
      }

LABEL_14:
      if (v29)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (a4)
    {
      goto LABEL_14;
    }

    v34 = v23;
    sub_2629CDD84();
    v23 = v34;
    if (v29)
    {
LABEL_15:
      v31 = *a5;
      v32 = v23;
      sub_2629ADE10(*(*a5 + 56) + 32 * v23, v39);
      if (a6)
      {
        v33 = swift_allocObject();
        *(v33 + 16) = a6;
        *(v33 + 24) = a7;
        v17 = sub_2629ADEF4;
      }

      else
      {
        sub_2629ADE10(v39, v40);
        v16 = swift_allocObject();
        sub_2629AD99C(v40, (v16 + 16));
        v17 = sub_2629ADEA4;
      }

      v18 = v17;
      v19 = sub_2629ADEAC(a6, a7);
      v18(v19);

      sub_2629ADE10(v41, v40);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      v20 = (*(v31 + 56) + 32 * v32);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      sub_2629AD99C(v40, v20);
      goto LABEL_8;
    }

LABEL_18:
    v35 = *a5;
    *(*a5 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    *(v35[6] + 8 * v23) = v21;
    sub_2629AD99C(v41, (v35[7] + 32 * v23));
    v36 = v35[2];
    v27 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v27)
    {
      goto LABEL_22;
    }

    v35[2] = v37;
LABEL_8:
    sub_2629AB924(&v42);
    a4 = 1;
    if (!v44)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_2629ADF1C(a6, a7);
  result = sub_262A2A938();
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t dispatch thunk of SIDFitnessClient.generatePersonalizedWorkoutPlan(request:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 112) + **(*v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2629A88B4;

  return v8(a1, a2);
}

unint64_t sub_2629AC0A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C058, &qword_262A2B500);
    v3 = sub_262A2A778();
    v4 = a1 + 32;

    while (1)
    {
      sub_2629ADF8C(v4, v12, &qword_27FF3C060, &qword_262A2B508);
      v5 = v12[0];
      result = sub_2629CB338(v12[0], v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_2629AD99C(&v13, (v3[7] + 32 * result));
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      v4 += 40;
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

void *sub_2629AC204(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF58, &qword_262A2B400);
  v3 = sub_262A2A778();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = sub_2629CB134(v4, v5, v6, v7);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = v9;
  result = v8;
  v13 = a1 + 13;
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v14 = (v3[6] + 32 * v11);
    *v14 = v4;
    v14[1] = v5;
    v14[2] = v6;
    v14[3] = v7;
    *(v3[7] + 8 * v11) = result;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 5;
    v4 = *(v13 - 4);
    v5 = *(v13 - 3);
    v6 = *(v13 - 2);
    v7 = *(v13 - 1);
    v19 = *v13;

    v11 = sub_2629CB134(v4, v5, v6, v7);
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2629AC344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C078, &unk_262A2B520);
    v3 = sub_262A2A778();
    v4 = a1 + 32;

    while (1)
    {
      sub_2629ADF8C(v4, &v16, &qword_27FF3C080, &qword_262A2E490);
      v5 = v16;
      v6 = v17;
      result = sub_2629CB0BC(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

unint64_t sub_2629AC47C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C068, &qword_262A2B510);
    v3 = sub_262A2A778();
    v4 = a1 + 32;

    while (1)
    {
      sub_2629ADF8C(v4, v13, &qword_27FF3C070, &qword_262A2B518);
      result = sub_2629CB400(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2629AD99C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void *sub_2629AC5CC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF20, &qword_262A2E6D0);
  v3 = sub_262A2A778();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_2629CB210(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_2629CB210(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_2629AC6D4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C038, &unk_262A2B4E0);
  v3 = sub_262A2A778();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_2629CB2B8(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_2629CB2B8(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2629AC7F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C030, &unk_262A2E730);
    v3 = sub_262A2A778();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2629CB0BC(v5, v6);
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

unint64_t sub_2629AC8EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C028, &unk_262A2B4D0);
    v3 = sub_262A2A778();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_2629CB210(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_2629AC9C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C018, &unk_262A2B4C0);
    v3 = sub_262A2A778();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_2629CB210(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_2629ACABC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_262A2A778();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 8);
      v8 = *i;

      result = sub_2629CB1E4(v7, v9);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + result) = v7;
      *(v5[7] + 8 * result) = v8;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_2629ACBD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFD8, &qword_262A2B480);
    v3 = sub_262A2A778();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v12 = *i;

      result = sub_2629CB1E4(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_2629ACCD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFA8, &qword_262A2B450);
    v3 = sub_262A2A778();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2629CB0BC(v5, v6);
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

unint64_t sub_2629ACDDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFA0, &unk_262A2E6F0);
    v3 = sub_262A2A778();

    for (i = (a1 + 40); ; i = (i + 40))
    {
      v5 = *(i - 8);
      v13 = *i;
      v14 = i[1];

      result = sub_2629CB1E4(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v9 = (v3[7] + 32 * result);
      *v9 = v13;
      v9[1] = v14;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_2629ACF00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF50, &unk_262A2E6E0);
    v3 = sub_262A2A778();
    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *i;
      v12 = *(i - 1);
      v13 = *(i - 2);
      result = sub_2629CB134(*(i - 4), *(i - 3), *(i - 2), *(i - 1));
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = (v3[6] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void *sub_2629ACFF8(uint64_t a1)
{
  v2 = sub_262A2A218();
  v39 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C088, &qword_262A2B530);
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  v41 = sub_2629AD9AC;
  v42 = a1;

  os_unfair_lock_lock(v11 + 4);
  sub_2629AD9FC(v43);
  os_unfair_lock_unlock(v11 + 4);
  v12 = v43[0];

  v43[0] = v12;

  sub_2629A9E00(v43);

  v13 = v43[0];
  v36 = *(v43[0] + 16);
  if (v36)
  {
    v14 = 0;
    v34 = v43[0] + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v32 = 0x8000000262A31BD0;
    v33 = 0x8000000262A31BF0;
    v30 = 0x8000000262A31B70;
    v31 = 0x8000000262A31BB0;
    v28 = 0x8000000262A31B10;
    v29 = 0x8000000262A31B40;
    v27 = (v39 + 16);
    v26 = v39 + 8;
    v25 = v39 + 32;
    v15 = MEMORY[0x277D84F90];
    v24 = xmmword_262A2B290;
    v35 = v43[0];
    while (v14 < *(v13 + 16))
    {
      v16 = v14 + 1;
      sub_2629ADF8C(v34 + *(v38 + 72) * v14, v10, &qword_27FF3C088, &qword_262A2B530);
      v17 = *&v10[*(v37 + 48)];
      if (v17)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C090, &qword_262A2B538);
        v18 = swift_allocObject();
        *(v18 + 16) = v24;
        *(v18 + 32) = v17;
      }

      MEMORY[0x26672F6B0](v17);
      v19 = v40;
      sub_262A2A208();
      (*v27)(v5, v19, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2629A94F8(0, v15[2] + 1, 1, v15, &qword_27FF3C098, &qword_262A2B540, MEMORY[0x277D4D3D8]);
      }

      v13 = v35;
      v21 = v15[2];
      v20 = v15[3];
      if (v21 >= v20 >> 1)
      {
        v15 = sub_2629A94F8((v20 > 1), v21 + 1, 1, v15, &qword_27FF3C098, &qword_262A2B540, MEMORY[0x277D4D3D8]);
      }

      v22 = v39;
      (*(v39 + 8))(v40, v2);
      sub_2629ADF2C(v10, &qword_27FF3C088, &qword_262A2B530);
      v15[2] = v21 + 1;
      (*(v22 + 32))(v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v21, v5, v2);
      v14 = v16;
      if (v36 == v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    MEMORY[0x26672F6A0](v15);

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_13:

    return v15;
  }

  return result;
}

unint64_t sub_2629AD61C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_262A2A778();
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {
        return v7;
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

unint64_t sub_2629AD7C4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_262A2A778();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_2629AD8B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF68, &qword_262A2B410);
    v3 = sub_262A2A778();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_2629CB708(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

_OWORD *sub_2629AD99C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2629AD9AC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 24);
}

void *sub_2629AD9FC@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_2629ADA40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C088, &qword_262A2B530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2629ADAB0(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2629ADB70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2629ADBD8()
{
  result = qword_27FF3C200;
  if (!qword_27FF3C200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF3C0C0, &unk_262A2BA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C200);
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

uint64_t sub_2629ADC84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_2629ADD40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2629ADDA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2629ADE10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2629ADE6C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2629ADEAC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2629ADEBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2629ADF1C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2629ADF2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2629ADF8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2629AE03C()
{
  v1 = *v0;
  sub_262A2A998();
  MEMORY[0x26672F240](v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629AE0B0(uint64_t a1)
{
  v2 = *v1;
  sub_262A2A998();
  MEMORY[0x26672F240](v2);
  return sub_262A2A9D8();
}

uint64_t sub_2629AE0F4()
{
  if (*v0)
  {
    return 0x6E656D7461657274;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_2629AE134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v6 || (sub_262A2A878() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656D7461657274 && a2 == 0xEA00000000007374)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262A2A878();

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

uint64_t sub_2629AE230(uint64_t a1)
{
  v2 = sub_2629AE9F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629AE26C(uint64_t a1)
{
  v2 = sub_2629AE9F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2629AE2A8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C130, &qword_262A2B698);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629AE9F8();
  sub_262A2AA28();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C108, &qword_262A2B688);
  sub_2629AEB5C(&qword_27FF3C138, sub_2629AEBE0, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_262A2A848();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C120, &qword_262A2B690);
    sub_2629AEC34();
    sub_262A2A818();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2629AE4A0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2629AE7B0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_2629AE4E8()
{
  v2 = *v0;
  v1 = v0[1];
  sub_262A2A998();
  sub_2629C0DC4(v4, v2);
  sub_262A2A9B8();
  if (v1)
  {
    sub_2629C0AA4(v4, v1);
  }

  return sub_262A2A9D8();
}

void sub_2629AE560(__int128 *a1)
{
  v3 = v1[1];
  sub_2629C0DC4(a1, *v1);
  if (v3)
  {
    sub_262A2A9B8();

    sub_2629C0AA4(a1, v3);
  }

  else
  {
    sub_262A2A9B8();
  }
}

uint64_t sub_2629AE5D4(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  sub_262A2A998();
  sub_2629C0DC4(v5, v3);
  sub_262A2A9B8();
  if (v2)
  {
    sub_2629C0AA4(v5, v2);
  }

  return sub_262A2A9D8();
}

uint64_t sub_2629AE648(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_2629CA084(*a1, *a2))
  {
    if (v2)
    {
      if (v3)
      {

        v4 = sub_2629CA2B0(v2, v3);

        if (v4)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_2629AE6BC()
{
  result = qword_27FF3C0F0;
  if (!qword_27FF3C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C0F0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2629AE71C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2629AE764(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2629AE7B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C0F8, &qword_262A2B680);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629AE9F8();
  sub_262A2AA08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C108, &qword_262A2B688);
  HIBYTE(v8) = 0;
  sub_2629AEB5C(&qword_27FF3C110, sub_2629AEA4C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_262A2A7E8();
  v7 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C120, &qword_262A2B690);
  HIBYTE(v8) = 1;
  sub_2629AEAA0();
  sub_262A2A7B8();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_2629AE9F8()
{
  result = qword_27FF3C100;
  if (!qword_27FF3C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C100);
  }

  return result;
}

unint64_t sub_2629AEA4C()
{
  result = qword_27FF3C118;
  if (!qword_27FF3C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C118);
  }

  return result;
}

unint64_t sub_2629AEAA0()
{
  result = qword_27FF3C128;
  if (!qword_27FF3C128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C120, &qword_262A2B690);
    sub_2629AEB5C(&qword_27FF3C110, sub_2629AEA4C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C128);
  }

  return result;
}

uint64_t sub_2629AEB5C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C108, &qword_262A2B688);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2629AEBE0()
{
  result = qword_27FF3C140;
  if (!qword_27FF3C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C140);
  }

  return result;
}

unint64_t sub_2629AEC34()
{
  result = qword_27FF3C148;
  if (!qword_27FF3C148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C120, &qword_262A2B690);
    sub_2629AEB5C(&qword_27FF3C138, sub_2629AEBE0, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C148);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AMSBagResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AMSBagResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2629AEE68()
{
  result = qword_27FF3C150;
  if (!qword_27FF3C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C150);
  }

  return result;
}

unint64_t sub_2629AEEC0()
{
  result = qword_27FF3C158;
  if (!qword_27FF3C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C158);
  }

  return result;
}

unint64_t sub_2629AEF18()
{
  result = qword_27FF3C160;
  if (!qword_27FF3C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C160);
  }

  return result;
}

uint64_t sub_2629AEF6C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  sub_2629C00C4(v4, v1);
  sub_2629C074C(v4, v2);
  return sub_262A2A9D8();
}

uint64_t sub_2629AEFC0(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_2629C00C4(a1, v3);

  return sub_2629C074C(a1, v4);
}

uint64_t sub_2629AF000(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_262A2A998();
  sub_2629C00C4(v5, v2);
  sub_2629C074C(v5, v3);
  return sub_262A2A9D8();
}

void sub_2629AF050(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v3 = a1[1];
  v4 = a2[1];
  if (sub_2629C99E4(*a1, *a2, a3))
  {

    sub_2629C9CC0(v3, v4);
  }
}

unint64_t sub_2629AF0B0()
{
  result = qword_27FF3C168;
  if (!qword_27FF3C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C168);
  }

  return result;
}

unint64_t sub_2629AF118()
{
  result = qword_27FF3C170;
  if (!qword_27FF3C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C170);
  }

  return result;
}

unint64_t sub_2629AF16C(char a1)
{
  result = 0x456C65646F4D7369;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      return result;
    case 7:
      result = 0x6B6361426B6F6F6CLL;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD000000000000039;
      break;
    case 11:
    case 12:
    case 20:
      result = 0xD000000000000026;
      break;
    case 13:
    case 17:
      result = 0xD000000000000028;
      break;
    case 14:
      result = 0xD000000000000027;
      break;
    case 15:
    case 19:
    case 22:
      result = 0xD000000000000022;
      break;
    case 16:
      result = 0xD000000000000024;
      break;
    case 18:
      result = 0xD000000000000014;
      break;
    case 21:
      result = 0xD000000000000012;
      break;
    case 23:
    case 25:
      v3 = 9;
      goto LABEL_20;
    case 24:
      v3 = 11;
LABEL_20:
      result = v3 | 0xD000000000000014;
      break;
    case 26:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000021;
      break;
  }

  return result;
}

uint64_t sub_2629AF494(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2629AF16C(*a1);
  v5 = v4;
  if (v3 == sub_2629AF16C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_262A2A878();
  }

  return v8 & 1;
}

unint64_t sub_2629AF51C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2629AF690(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2629AF54C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2629AF16C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2629AF578()
{
  v1 = *v0;
  sub_262A2A998();
  sub_2629AF16C(v1);
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629AF5DC(uint64_t a1)
{
  sub_2629AF16C(*v1);
  sub_262A2A448();
}

uint64_t sub_2629AF630(uint64_t a1)
{
  v2 = *v1;
  sub_262A2A998();
  sub_2629AF16C(v2);
  sub_262A2A448();

  return sub_262A2A9D8();
}

unint64_t sub_2629AF690(uint64_t a1, uint64_t a2)
{
  v2 = sub_262A2A918();

  if (v2 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for PlanDynamicConfigConstant(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlanDynamicConfigConstant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_2629AF888(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_2629AF8D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2629AF958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);

  if (!v4)
  {
    v7 = 0x3FECCCCCCCCCCCCDLL;
    goto LABEL_11;
  }

  v6 = sub_2629CB338(0, v5);
  v7 = 0x3FECCCCCCCCCCCCDLL;
  if (v8)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v6, v104);
    if (swift_dynamicCast())
    {
      v7 = *&v102;
    }
  }

  if (!*(a1 + 16) || (v9 = sub_2629CB338(1, v5), (v10 & 1) == 0) || (sub_2629ADE10(*(a1 + 56) + 32 * v9, v104), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    v100 = 3157553;
    v101 = 0xE300000000000000;
    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v100 = *&v102;
  v101 = v103;
  if (!*(a1 + 16))
  {
LABEL_9:
    v11 = 0x3FECCCCCCCCCCCCDLL;
    goto LABEL_19;
  }

LABEL_12:
  v12 = sub_2629CB338(2, v5);
  v11 = 0x3FECCCCCCCCCCCCDLL;
  if (v13)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v12, v104);
    if (swift_dynamicCast())
    {
      v11 = *&v102;
    }
  }

  if (*(a1 + 16))
  {
    v14 = sub_2629CB338(3, v5);
    if ((v15 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v14, v104), swift_dynamicCast()))
    {
      v16 = *&v102;
    }

    else
    {
      v16 = 180;
    }

    v99 = v16;
    if (!*(a1 + 16))
    {
      v97 = 0;
      v98 = 365;
      goto LABEL_38;
    }

    v19 = sub_2629CB338(4, v5);
    if ((v20 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v19, v104), swift_dynamicCast()))
    {
      v21 = *&v102;
    }

    else
    {
      v21 = 365;
    }

    v98 = v21;
    if (*(a1 + 16))
    {
      goto LABEL_20;
    }

LABEL_33:
    v97 = 0;
    goto LABEL_38;
  }

LABEL_19:
  v98 = 365;
  v99 = 180;
  if (!*(a1 + 16))
  {
    goto LABEL_33;
  }

LABEL_20:
  v17 = sub_2629CB338(5, v5);
  if ((v18 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v17, v104), swift_dynamicCast()))
  {
    v97 = LOBYTE(v102);
    if (!*(a1 + 16))
    {
      goto LABEL_38;
    }
  }

  else
  {
    v97 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_38;
    }
  }

  v22 = sub_2629CB338(6, v5);
  if (v23)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v22, v104);
    if (swift_dynamicCast())
    {
      v24 = *&v102;
      goto LABEL_39;
    }
  }

LABEL_38:
  v24 = 4;
LABEL_39:
  v96 = v24;
  if (!*(a1 + 16))
  {
    v95 = 90;
    goto LABEL_49;
  }

  v25 = sub_2629CB338(7, v5);
  if ((v26 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v25, v104), swift_dynamicCast()))
  {
    v27 = *&v102;
  }

  else
  {
    v27 = 90;
  }

  v95 = v27;
  if (!*(a1 + 16))
  {
LABEL_49:
    v93 = 100;
    v94 = 90;
    if (!*(a1 + 16))
    {
      goto LABEL_63;
    }

    goto LABEL_50;
  }

  v28 = sub_2629CB338(8, v5);
  if ((v29 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v28, v104), swift_dynamicCast()))
  {
    v30 = *&v102;
  }

  else
  {
    v30 = 90;
  }

  v94 = v30;
  if (!*(a1 + 16))
  {
    v92 = 2;
    v93 = 100;
    goto LABEL_69;
  }

  v34 = sub_2629CB338(9, v5);
  if ((v35 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v34, v104), swift_dynamicCast()))
  {
    v36 = *&v102;
  }

  else
  {
    v36 = 100;
  }

  v93 = v36;
  if (*(a1 + 16))
  {
LABEL_50:
    v31 = sub_2629CB338(10, v5);
    if ((v32 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v31, v104), swift_dynamicCast()))
    {
      v33 = *&v102;
    }

    else
    {
      v33 = 2;
    }

    v92 = v33;
    if (*(a1 + 16))
    {
      v38 = sub_2629CB338(11, v5);
      if (v39)
      {
        sub_2629ADE10(*(a1 + 56) + 32 * v38, v104);
        if (swift_dynamicCast())
        {
          v40 = *&v102;
          goto LABEL_70;
        }
      }
    }

LABEL_69:
    v40 = 3;
LABEL_70:
    v91 = v40;
    if (!*(a1 + 16))
    {
      goto LABEL_64;
    }

    goto LABEL_71;
  }

LABEL_63:
  v91 = 3;
  v92 = 2;
  if (!*(a1 + 16))
  {
LABEL_64:
    v37 = 3;
LABEL_74:
    v43 = 3;
    v44 = 1;
    goto LABEL_85;
  }

LABEL_71:
  v41 = sub_2629CB338(12, v5);
  if ((v42 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v41, v104), swift_dynamicCast()))
  {
    v37 = *&v102;
    if (!*(a1 + 16))
    {
      goto LABEL_74;
    }
  }

  else
  {
    v37 = 3;
    if (!*(a1 + 16))
    {
      goto LABEL_74;
    }
  }

  v45 = sub_2629CB338(13, v5);
  if ((v46 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v45, v104), swift_dynamicCast()))
  {
    v44 = *&v102;
    if (!*(a1 + 16))
    {
LABEL_79:
      v43 = 3;
      goto LABEL_90;
    }
  }

  else
  {
    v44 = 1;
    if (!*(a1 + 16))
    {
      goto LABEL_79;
    }
  }

  v47 = sub_2629CB338(14, v5);
  if ((v48 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v47, v104), swift_dynamicCast()))
  {
    v43 = *&v102;
  }

  else
  {
    v43 = 3;
  }

LABEL_85:
  if (!*(a1 + 16))
  {
    v54 = 1;
    v51 = 3;
    goto LABEL_108;
  }

  v49 = sub_2629CB338(15, v5);
  if ((v50 & 1) == 0 || (sub_2629ADE10(*(a1 + 56) + 32 * v49, v104), !swift_dynamicCast()))
  {
LABEL_90:
    v51 = 3;
    if (!*(a1 + 16))
    {
      goto LABEL_95;
    }

    goto LABEL_91;
  }

  v51 = *&v102;
  if (!*(a1 + 16))
  {
    goto LABEL_95;
  }

LABEL_91:
  v52 = sub_2629CB338(16, v5);
  if ((v53 & 1) == 0 || (sub_2629ADE10(*(a1 + 56) + 32 * v52, v104), !swift_dynamicCast()))
  {
LABEL_95:
    v54 = 1;
    if (*(a1 + 16))
    {
      goto LABEL_96;
    }

LABEL_108:
    v56 = 0x3FECCCCCCCCCCCCDLL;
LABEL_109:
    v59 = 1.0;
    v62 = 0x3FECCCCCCCCCCCCDLL;
    goto LABEL_110;
  }

  v54 = *&v102;
  if (!*(a1 + 16))
  {
    goto LABEL_108;
  }

LABEL_96:
  v55 = sub_2629CB338(17, v5);
  v56 = 0x3FECCCCCCCCCCCCDLL;
  if (v57)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v55, v104);
    if (swift_dynamicCast())
    {
      v56 = *&v102;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_109;
  }

  v58 = sub_2629CB338(18, v5);
  v59 = 1.0;
  if (v60)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v58, v104);
    if (swift_dynamicCast())
    {
      v59 = v102;
    }
  }

  if (!*(a1 + 16))
  {
    v90 = 0x3FE3333333333333;
    v62 = 0x3FECCCCCCCCCCCCDLL;
    goto LABEL_122;
  }

  v61 = sub_2629CB338(19, v5);
  v62 = 0x3FECCCCCCCCCCCCDLL;
  if (v63)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v61, v104);
    if (swift_dynamicCast())
    {
      v62 = *&v102;
    }
  }

LABEL_110:
  if (!*(a1 + 16))
  {
    v66 = 4;
    v90 = 0x3FE3333333333333;
    goto LABEL_123;
  }

  v64 = sub_2629CB338(20, v5);
  if ((v65 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v64, v104), swift_dynamicCast()))
  {
    v5.n128_f64[0] = v102;
    v90 = *&v102;
    if (!*(a1 + 16))
    {
      goto LABEL_122;
    }
  }

  else
  {
    v90 = 0x3FE3333333333333;
    if (!*(a1 + 16))
    {
      goto LABEL_122;
    }
  }

  v67 = sub_2629CB338(21, v5);
  if (v68)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v67, v104);
    if (swift_dynamicCast())
    {
      v66 = *&v102;
      goto LABEL_123;
    }
  }

LABEL_122:
  v66 = 4;
LABEL_123:
  if (!*(a1 + 16))
  {
    v75 = v56;
    v77 = v11;
    v78 = v7;
    v70 = 0x3FECCCCCCCCCCCCDLL;
LABEL_133:
    v74 = 0x3FECCCCCCCCCCCCDLL;
    v79 = 0x3FECCCCCCCCCCCCDLL;
    goto LABEL_134;
  }

  v69 = sub_2629CB338(22, v5);
  v70 = 0x3FECCCCCCCCCCCCDLL;
  if (v71)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v69, v104);
    if (swift_dynamicCast())
    {
      v70 = *&v102;
    }
  }

  if (!*(a1 + 16))
  {
    v75 = v56;
    v77 = v11;
    v78 = v7;
    goto LABEL_133;
  }

  v72 = sub_2629CB338(23, v5);
  v74 = 0x3FECCCCCCCCCCCCDLL;
  v75 = v56;
  if (v76)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v72, v104);
    v77 = v11;
    if (swift_dynamicCast())
    {
      v74 = *&v102;
    }
  }

  else
  {
    v77 = v11;
  }

  v78 = v7;
  if (!*(a1 + 16))
  {
    v83 = 0;
    v79 = 0x3FECCCCCCCCCCCCDLL;
    goto LABEL_151;
  }

  v84 = sub_2629CB338(24, v73);
  v79 = 0x3FECCCCCCCCCCCCDLL;
  if (v85)
  {
    sub_2629ADE10(*(a1 + 56) + 32 * v84, v104);
    if (swift_dynamicCast())
    {
      v79 = *&v102;
    }
  }

LABEL_134:
  if (!*(a1 + 16))
  {
    v83 = 0;
    goto LABEL_151;
  }

  v80 = sub_2629CB338(25, v5);
  if ((v82 & 1) != 0 && (sub_2629ADE10(*(a1 + 56) + 32 * v80, v104), swift_dynamicCast()))
  {
    v83 = LOBYTE(v102);
    if (!*(a1 + 16))
    {
      goto LABEL_151;
    }
  }

  else
  {
    v83 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_151;
    }
  }

  v86 = sub_2629CB338(26, v81);
  if ((v87 & 1) == 0)
  {
LABEL_151:

    goto LABEL_152;
  }

  sub_2629ADE10(*(a1 + 56) + 32 * v86, v104);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_152:
    v89 = 0x3FECCCCCCCCCCCCDLL;
    goto LABEL_153;
  }

  v89 = *&v102;
LABEL_153:
  *a2 = v78;
  *(a2 + 8) = v100;
  *(a2 + 16) = v101;
  *(a2 + 24) = v77;
  *(a2 + 32) = v99;
  *(a2 + 40) = v98;
  *(a2 + 48) = v97;
  *(a2 + 56) = v96;
  *(a2 + 64) = v95;
  *(a2 + 72) = v94;
  *(a2 + 80) = v93;
  *(a2 + 88) = v92;
  *(a2 + 96) = v91;
  *(a2 + 104) = v37;
  *(a2 + 112) = v44;
  *(a2 + 120) = v43;
  *(a2 + 128) = v51;
  *(a2 + 136) = v54;
  *(a2 + 144) = v75;
  *(a2 + 152) = v59;
  *(a2 + 160) = v62;
  *(a2 + 168) = v90;
  *(a2 + 176) = v66;
  *(a2 + 184) = v70;
  *(a2 + 192) = v74;
  *(a2 + 200) = v79;
  *(a2 + 208) = v83;
  *(a2 + 216) = v89;
  *(a2 + 224) = a1;
  return result;
}

_OWORD *sub_2629B0540(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_2629AD99C(a1, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_262A11E30(v16, a2, isUniquelyReferenced_nonNull_native, v6);
    *v2 = v14;
  }

  else
  {
    sub_2629B18D8(a1);
    v9 = sub_2629CB338(a2, v8);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v15 = *v3;
      if (!v12)
      {
        sub_2629CEC70();
        v13 = v15;
      }

      sub_2629AD99C((*(v13 + 56) + 32 * v11), v16);
      sub_262A11250(v11, v13);
      *v3 = v13;
    }

    else
    {
      memset(v16, 0, sizeof(v16));
    }

    return sub_2629B18D8(v16);
  }

  return result;
}

double sub_2629B0624@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 16) || (v7 = sub_2629CB0BC(0x746C7561666564, 0xE700000000000000), (v8 & 1) == 0) || (sub_2629ADE10(*(a1 + 56) + 32 * v7, v28), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C178, "Щ"), (swift_dynamicCast() & 1) == 0))
  {
    sub_2629EA8B0(0xD00000000000002ALL, 0x8000000262A31EC0);
    v14 = sub_2629AC0A0(MEMORY[0x277D84F90]);
    goto LABEL_10;
  }

  v9 = sub_2629B091C(v27);

  if (!*(a2 + 16))
  {
    sub_2629EA8C8(0xD000000000000037, 0x8000000262A31F40);
    goto LABEL_13;
  }

  if (!*(a1 + 16) || (v10 = sub_2629CB0BC(0x6E656D7461657274, 0xEA00000000007374), (v11 & 1) == 0) || (sub_2629ADE10(*(a1 + 56) + 32 * v10, v28), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C180, "ҩ"), v12 = swift_dynamicCast(), (v12 & 1) == 0))
  {
    sub_2629EAAEC(0xD00000000000004ALL, 0x8000000262A31EF0);
LABEL_13:
    v14 = v9;
    goto LABEL_10;
  }

  MEMORY[0x28223BE20](v12);
  v26[2] = v27;
  v26[3] = v3;
  v13 = sub_2629EB0A0(v9, sub_2629B17A4, v26, a2);

  v14 = v13;
LABEL_10:
  sub_2629AF958(v14, v28);
  v15 = v44;
  result = v43;
  v17 = v42;
  v18 = v41;
  v19 = v39;
  v20 = v36;
  v21 = v30;
  v22 = v28[3];
  v23 = v28[1];
  v24 = v28[2];
  *a3 = v28[0];
  *(a3 + 8) = v23;
  *(a3 + 16) = v24;
  *(a3 + 24) = v22;
  *(a3 + 32) = v29;
  *(a3 + 48) = v21;
  *(a3 + 56) = v31;
  *(a3 + 72) = v32;
  *(a3 + 88) = v33;
  *(a3 + 104) = v34;
  *(a3 + 120) = v35;
  *(a3 + 136) = v20;
  v25 = v38;
  *(a3 + 144) = v37;
  *(a3 + 160) = v25;
  *(a3 + 176) = v19;
  *(a3 + 184) = v40;
  *(a3 + 200) = v18;
  *(a3 + 208) = v17;
  *(a3 + 216) = result;
  *(a3 + 224) = v15;
  return result;
}

void *sub_2629B091C(uint64_t a1)
{
  v51 = type metadata accessor for PersistentLogger(0);
  MEMORY[0x28223BE20](v51);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_2629AC0A0(MEMORY[0x277D84F90]);
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v55 = 0x8000000262A32070;

  v8 = 0;
  *&v9 = 136446210;
  v50 = v9;
  v57 = v3;
  while (v6)
  {
    v10 = v8;
LABEL_16:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = v13 | (v10 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_2629ADE10(*(a1 + 56) + 32 * v14, v60);
    *&v61 = v17;
    *(&v61 + 1) = v16;
    sub_2629AD99C(v60, &v62);

LABEL_17:
    v64 = v61;
    v65[0] = v62;
    v65[1] = v63;
    v18 = *(&v61 + 1);
    if (!*(&v61 + 1))
    {

      return v58;
    }

    v19 = v64;
    sub_2629AD99C(v65, &v61);

    v20 = sub_2629AF690(v19, v18);
    if (v20 == 27)
    {
      *&v60[0] = 0;
      *(&v60[0] + 1) = 0xE000000000000000;
      sub_262A2A6F8();

      *&v60[0] = 0xD000000000000020;
      *(&v60[0] + 1) = v55;
      MEMORY[0x26672ECF0](v19, v18);

      MEMORY[0x26672ECF0](0x697070696B73202CLL, 0xEA0000000000676ELL);
      v21 = v60[0];
      v22 = v57;
      sub_2629B17C0(v56, v57);

      v23 = sub_262A2A2D8();
      v24 = sub_262A2A5E8();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v52 = v21;
        v26 = v25;
        v27 = swift_slowAlloc();
        v54 = v27;
        *v26 = v50;
        v59 = v27;
        *&v60[0] = 91;
        *(&v60[0] + 1) = 0xE100000000000000;
        v53 = v24;
        sub_262A2A018();
        sub_2629B1880();
        v28 = sub_262A2A868();
        MEMORY[0x26672ECF0](v28);

        MEMORY[0x26672ECF0](8285, 0xE200000000000000);
        MEMORY[0x26672ECF0](v52, *(&v21 + 1));
        v29 = v60[0];
        sub_2629B1824(v57);
        v30 = sub_262A1D0CC(v29, *(&v29 + 1), &v59);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_2629A3000, v23, v53, "%{public}s", v26, 0xCu);
        v31 = v54;
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x26672F820](v31, -1, -1);
        MEMORY[0x26672F820](v26, -1, -1);
      }

      else
      {

        sub_2629B1824(v22);
      }
    }

    else
    {
      v32 = v20;

      sub_2629ADE10(&v61, v60);
      v33 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v33;
      v36 = sub_2629CB338(v32, v35);
      v38 = *(v33 + 16);
      v39 = (v37 & 1) == 0;
      v40 = __OFADD__(v38, v39);
      v41 = v38 + v39;
      if (v40)
      {
        goto LABEL_34;
      }

      v42 = v37;
      if (*(v33 + 24) >= v41)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = v36;
          sub_2629CEC70();
          v36 = v48;
        }
      }

      else
      {
        sub_2629D1630(v41, isUniquelyReferenced_nonNull_native);
        v36 = sub_2629CB338(v32, v43);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_36;
        }
      }

      v58 = v59;
      if (v42)
      {
        v45 = (v59[7] + 32 * v36);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        sub_2629AD99C(v60, v45);
      }

      else
      {
        v59[(v36 >> 6) + 8] |= 1 << v36;
        *(v58[6] + v36) = v32;
        sub_2629AD99C(v60, (v58[7] + 32 * v36));
        v46 = v58[2];
        v40 = __OFADD__(v46, 1);
        v47 = v46 + 1;
        if (v40)
        {
          goto LABEL_35;
        }

        v58[2] = v47;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v61);
  }

  if (v7 <= v8 + 1)
  {
    v11 = v8 + 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v6 = 0;
      v62 = 0u;
      v63 = 0u;
      v8 = v12;
      v61 = 0u;
      goto LABEL_17;
    }

    v6 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

double sub_2629B0E7C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = a2[1];
  if (*(a3 + 16) && (v9 = sub_2629CB0BC(*a2, a2[1]), (v10 & 1) != 0))
  {
    v11 = *(*(a3 + 56) + 8 * v9);

    sub_262A2A6F8();

    MEMORY[0x26672ECF0](v6, v7);
    sub_2629EA8C8(0xD000000000000014, 0x8000000262A31FB0);

    sub_2629B1014(v11, v5);
    v13 = v12;

    *a4 = v13;
  }

  else
  {
    sub_262A2A6F8();

    strcpy(v15, "Treatment ID ");
    HIWORD(v15[1]) = -4864;
    MEMORY[0x26672ECF0](v6, v7);
    MEMORY[0x26672ECF0](0xD000000000000023, 0x8000000262A31F80);
    sub_2629EA8C8(v15[0], v15[1]);

    *a4 = v5;
  }

  return result;
}

void sub_2629B1014(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = type metadata accessor for PersistentLogger(0);
  v6 = MEMORY[0x28223BE20](v66);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v62 = &v58 - v10;
  MEMORY[0x28223BE20](v9);
  v59 = &v58 - v11;
  v13 = a1 + 64;
  v12 = *(a1 + 64);
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  v79 = a2;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v58 = 0x8000000262A32040;
  v61 = "atment configuration key: ";
  v65 = "Applying treatment: ";

  v69 = a1;

  v18 = 0;
  *&v19 = 136446210;
  v64 = v19;
  v67 = v2;
  v68 = a2;
  v70 = v13;
  v71 = v8;
  if (!v16)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v20 = v18;
LABEL_16:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v20 << 6);
      v25 = (*(v69 + 48) + 16 * v24);
      v27 = *v25;
      v26 = v25[1];
      sub_2629ADE10(*(v69 + 56) + 32 * v24, v73);
      *&v74 = v27;
      *(&v74 + 1) = v26;
      sub_2629AD99C(v73, &v75);

LABEL_17:
      v77 = v74;
      v78[0] = v75;
      v78[1] = v76;
      v28 = *(&v74 + 1);
      if (!*(&v74 + 1))
      {

        return;
      }

      v29 = v77;
      sub_2629AD99C(v78, &v74);

      v30 = sub_2629AF690(v29, v28);
      if (v30 != 27)
      {
        break;
      }

      *&v73[0] = 0;
      *(&v73[0] + 1) = 0xE000000000000000;
      sub_262A2A6F8();
      MEMORY[0x26672ECF0](0xD00000000000002ALL, v65 | 0x8000000000000000);
      MEMORY[0x26672ECF0](v29, v28);

      MEMORY[0x26672ECF0](0x697070696B73202CLL, 0xEA0000000000676ELL);
      v32 = v73[0];
      sub_2629B17C0(v3, v8);

      v33 = sub_262A2A2D8();
      v34 = sub_262A2A5E8();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v63 = v32;
        v36 = v35;
        v37 = swift_slowAlloc();
        *v36 = v64;
        v72 = v37;
        *&v73[0] = 91;
        *(&v73[0] + 1) = 0xE100000000000000;
        sub_262A2A018();
        sub_2629B1880();
        v38 = sub_262A2A868();
        MEMORY[0x26672ECF0](v38);

        MEMORY[0x26672ECF0](8285, 0xE200000000000000);
        MEMORY[0x26672ECF0](v63, *(&v32 + 1));
        v40 = *(&v73[0] + 1);
        v39 = *&v73[0];
        sub_2629B1824(v71);
        v41 = sub_262A1D0CC(v39, v40, &v72);
        v3 = v67;

        *(v36 + 4) = v41;
        _os_log_impl(&dword_2629A3000, v33, v34, "%{public}s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        v42 = v37;
        v8 = v71;
        MEMORY[0x26672F820](v42, -1, -1);
        MEMORY[0x26672F820](v36, -1, -1);
      }

      else
      {

        sub_2629B1824(v8);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v74);
      a2 = v68;
      v13 = v70;
      if (!v16)
      {
        goto LABEL_8;
      }
    }

    if (*(a2 + 16) && (v43 = v30, sub_2629CB338(v30, v31), (v44 & 1) != 0))
    {
      sub_2629ADE10(&v74, v73);
      sub_2629B0540(v73, v43);
      *&v73[0] = 0;
      *(&v73[0] + 1) = 0xE000000000000000;
      sub_262A2A6F8();

      *&v73[0] = 0xD000000000000024;
      *(&v73[0] + 1) = v58;
      MEMORY[0x26672ECF0](v29, v28);

      v46 = *(&v73[0] + 1);
      v45 = *&v73[0];
      v47 = v59;
      sub_2629B17C0(v3, v59);

      v48 = sub_262A2A2D8();
      v49 = sub_262A2A5D8();
    }

    else
    {
      *&v73[0] = 0;
      *(&v73[0] + 1) = 0xE000000000000000;
      sub_262A2A6F8();
      MEMORY[0x26672ECF0](0x6E656D7461657254, 0xEE002079656B2074);
      MEMORY[0x26672ECF0](v29, v28);

      MEMORY[0x26672ECF0](0xD000000000000036, v61 | 0x8000000000000000);
      v46 = *(&v73[0] + 1);
      v45 = *&v73[0];
      v47 = v62;
      sub_2629B17C0(v3, v62);

      v48 = sub_262A2A2D8();
      v49 = sub_262A2A5F8();
    }

    v50 = v49;

    if (os_log_type_enabled(v48, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v63 = v52;
      *v51 = v64;
      v72 = v52;
      *&v73[0] = 91;
      *(&v73[0] + 1) = 0xE100000000000000;
      v60 = v50;
      sub_262A2A018();
      sub_2629B1880();
      v53 = sub_262A2A868();
      MEMORY[0x26672ECF0](v53);
      v3 = v67;

      MEMORY[0x26672ECF0](8285, 0xE200000000000000);
      MEMORY[0x26672ECF0](v45, v46);
      v54 = v73[0];
      sub_2629B1824(v47);
      v55 = sub_262A1D0CC(v54, *(&v54 + 1), &v72);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_2629A3000, v48, v60, "%{public}s", v51, 0xCu);
      v56 = v63;
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x26672F820](v56, -1, -1);
      v57 = v51;
      a2 = v68;
      MEMORY[0x26672F820](v57, -1, -1);
    }

    else
    {

      sub_2629B1824(v47);
    }

    v8 = v71;
    __swift_destroy_boxed_opaque_existential_1Tm(&v74);
    v13 = v70;
  }

  while (v16);
LABEL_8:
  if (v17 <= v18 + 1)
  {
    v21 = v18 + 1;
  }

  else
  {
    v21 = v17;
  }

  v22 = v21 - 1;
  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      v16 = 0;
      v75 = 0u;
      v76 = 0u;
      v18 = v22;
      v74 = 0u;
      goto LABEL_17;
    }

    v16 = *(v13 + 8 * v20);
    ++v18;
    if (v16)
    {
      v18 = v20;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_2629B17C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistentLogger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629B1824(uint64_t a1)
{
  v2 = type metadata accessor for PersistentLogger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2629B1880()
{
  result = qword_27FF3C0D0;
  if (!qword_27FF3C0D0)
  {
    sub_262A2A018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C0D0);
  }

  return result;
}

uint64_t sub_2629B18D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CCF0, &unk_262A2B9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2629B1954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PersistentLogger(0);
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

uint64_t sub_2629B1A24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PersistentLogger(0);
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

uint64_t type metadata accessor for PlanDynamicConfigurationLoader(uint64_t a1)
{
  result = qword_27FF3C188;
  if (!qword_27FF3C188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2629B1B28(uint64_t a1)
{
  type metadata accessor for PersistentLogger(319);
  if (v1 <= 0x3F)
  {
    sub_2629B1BAC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2629B1BAC(uint64_t a1)
{
  if (!qword_27FF3C198)
  {
    v2 = sub_2629B1C14();
    v3 = sub_2629B1C68();
    v4 = type metadata accessor for OperationTracker(a1, &type metadata for PlanGeneration, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_27FF3C198);
    }
  }
}

unint64_t sub_2629B1C14()
{
  result = qword_27FF3C1A0;
  if (!qword_27FF3C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C1A0);
  }

  return result;
}

unint64_t sub_2629B1C68()
{
  result = qword_27FF3C1A8;
  if (!qword_27FF3C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C1A8);
  }

  return result;
}

uint64_t sub_2629B1CBC(uint64_t a1, uint64_t a2)
{
  v3[150] = v2;
  v3[149] = a2;
  v3[148] = a1;
  v4 = sub_262A2A328();
  v3[151] = v4;
  v3[152] = *(v4 - 8);
  v3[153] = swift_task_alloc();
  v3[154] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2629B1D90, 0, 0);
}

uint64_t sub_2629B1D90()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  *(v0 + 1240) = OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_logger;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000048, 0x8000000262A32210);
  *(v0 + 1176) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0C0, &unk_262A2BA70);
  sub_2629ADBD8();
  v3 = sub_262A2A398();
  MEMORY[0x26672ECF0](v3);

  sub_2629EA8C8(0, 0xE000000000000000);

  sub_262A2A318();
  v4 = *(v1 + 16);
  v5 = *(v1 + 48);
  *(v0 + 264) = *(v1 + 32);
  *(v0 + 280) = v5;
  *(v0 + 248) = v4;
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 112);
  *(v0 + 328) = *(v1 + 96);
  *(v0 + 344) = v8;
  *(v0 + 296) = v6;
  *(v0 + 312) = v7;
  v9 = *(v1 + 128);
  v10 = *(v1 + 144);
  v11 = *(v1 + 176);
  *(v0 + 392) = *(v1 + 160);
  *(v0 + 408) = v11;
  *(v0 + 360) = v9;
  *(v0 + 376) = v10;
  v12 = *(v1 + 192);
  v13 = *(v1 + 208);
  v14 = *(v1 + 224);
  *(v0 + 472) = *(v1 + 240);
  *(v0 + 440) = v13;
  *(v0 + 456) = v14;
  *(v0 + 424) = v12;
  v15 = *(v1 + 16);
  v16 = *(v1 + 48);
  *(v0 + 32) = *(v1 + 32);
  *(v0 + 48) = v16;
  *(v0 + 16) = v15;
  v17 = *(v1 + 64);
  v18 = *(v1 + 80);
  v19 = *(v1 + 112);
  *(v0 + 96) = *(v1 + 96);
  *(v0 + 112) = v19;
  *(v0 + 64) = v17;
  *(v0 + 80) = v18;
  v20 = *(v1 + 128);
  v21 = *(v1 + 144);
  v22 = *(v1 + 176);
  *(v0 + 160) = *(v1 + 160);
  *(v0 + 176) = v22;
  *(v0 + 128) = v20;
  *(v0 + 144) = v21;
  v23 = *(v1 + 192);
  v24 = *(v1 + 208);
  v25 = *(v1 + 224);
  *(v0 + 240) = *(v1 + 240);
  *(v0 + 208) = v24;
  *(v0 + 224) = v25;
  *(v0 + 192) = v23;
  if (sub_2629B3B20(v0 + 16) == 1)
  {
    sub_2629EA8C8(0xD00000000000004ALL, 0x8000000262A32260);
    v26 = swift_task_alloc();
    *(v0 + 1248) = v26;
    *v26 = v0;
    v26[1] = sub_2629B2108;
    v27 = *(v0 + 1192);

    return sub_2629B2658(v0 + 480, v27);
  }

  else
  {
    v29 = *(v0 + 456);
    *(v0 + 904) = *(v0 + 440);
    *(v0 + 920) = v29;
    *(v0 + 936) = *(v0 + 472);
    v30 = *(v0 + 392);
    *(v0 + 840) = *(v0 + 376);
    *(v0 + 856) = v30;
    v31 = *(v0 + 424);
    *(v0 + 872) = *(v0 + 408);
    *(v0 + 888) = v31;
    v32 = *(v0 + 328);
    *(v0 + 776) = *(v0 + 312);
    *(v0 + 792) = v32;
    v33 = *(v0 + 360);
    *(v0 + 808) = *(v0 + 344);
    *(v0 + 824) = v33;
    v34 = *(v0 + 264);
    *(v0 + 712) = *(v0 + 248);
    *(v0 + 728) = v34;
    v35 = *(v0 + 296);
    *(v0 + 744) = *(v0 + 280);
    *(v0 + 760) = v35;
    sub_2629B3B38(v0 + 712, v0 + 944);
    sub_2629EA8C8(0xD00000000000003BLL, 0x8000000262A32300);
    v36 = *(v0 + 232);
    v37 = *(v0 + 224);
    v38 = *(v0 + 216);
    v39 = *(v0 + 192);
    v40 = *(v0 + 152);
    v41 = *(v0 + 64);
    v42 = *(v0 + 40);
    v43 = *(v0 + 24);
    v44 = *(v0 + 32);
    v45 = *(v0 + 16);
    *(v0 + 1464) = *(v0 + 240);
    *(v0 + 1456) = v36;
    *(v0 + 1488) = v37;
    *(v0 + 1448) = v38;
    *(v0 + 1432) = *(v0 + 200);
    *(v0 + 1424) = v39;
    v46 = *(v0 + 160);
    *(v0 + 1408) = *(v0 + 176);
    *(v0 + 1392) = v46;
    *(v0 + 1384) = v40;
    v47 = *(v0 + 136);
    *(v0 + 1352) = *(v0 + 120);
    *(v0 + 1368) = v47;
    v48 = *(v0 + 104);
    *(v0 + 1320) = *(v0 + 88);
    *(v0 + 1336) = v48;
    v49 = *(v0 + 72);
    *(v0 + 1487) = v41;
    *(v0 + 1288) = *(v0 + 48);
    *(v0 + 1304) = v49;
    *(v0 + 1280) = v42;
    *(v0 + 1272) = v44;
    *(v0 + 1264) = v43;
    *(v0 + 1256) = v45;

    return MEMORY[0x2822009F8](sub_2629B22F4, 0, 0);
  }
}

uint64_t sub_2629B2108()
{
  v1 = *v0;

  v2 = *(v1 + 696);
  v3 = *(v1 + 688);
  v4 = *(v1 + 664);
  v5 = *(v1 + 656);
  v6 = *(v1 + 536);
  v7 = *(v1 + 528);
  v8 = *(v1 + 504);
  v9 = *(v1 + 488);
  v10 = *(v1 + 496);
  v11 = *(v1 + 480);
  *(v1 + 1464) = *(v1 + 704);
  *(v1 + 1456) = v2;
  *(v1 + 1488) = v3;
  *(v1 + 1440) = *(v1 + 672);
  *(v1 + 1432) = v4;
  *(v1 + 1424) = v5;
  v12 = *(v1 + 624);
  *(v1 + 1408) = *(v1 + 640);
  v13 = *(v1 + 608);
  *(v1 + 1392) = v12;
  *(v1 + 1376) = v13;
  v14 = *(v1 + 576);
  *(v1 + 1360) = *(v1 + 592);
  *(v1 + 1344) = v14;
  v15 = *(v1 + 544);
  *(v1 + 1328) = *(v1 + 560);
  *(v1 + 1312) = v15;
  *(v1 + 1304) = v6;
  *(v1 + 1487) = v7;
  *(v1 + 1288) = *(v1 + 512);
  *(v1 + 1280) = v8;
  *(v1 + 1272) = v10;
  *(v1 + 1264) = v9;
  *(v1 + 1256) = v11;

  return MEMORY[0x2822009F8](sub_2629B22F4, 0, 0);
}

uint64_t sub_2629B22F4(uint64_t a1)
{
  v2 = *(v1 + 1232);
  v3 = *(v1 + 1224);
  v4 = *(v1 + 1216);
  v5 = *(v1 + 1208);
  sub_262A2A318();
  v6 = sub_262A2A308();
  v7 = sub_262A2A308();
  v8 = *(v4 + 8);
  v8(v3, v5);
  result = (v8)(v2, v5);
  if (v6 < v7)
  {
    __break(1u);
  }

  else
  {
    v10 = *(*(v1 + 1200) + OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_operationTracker);
    *(v1 + 1486) = 0;
    v11 = *(v10 + 16);
    v12 = swift_task_alloc();
    *(v12 + 16) = v10;
    *(v12 + 24) = (v6 - v7) / 1000000.0;
    *(v12 + 32) = 0;
    *(v12 + 40) = v1 + 1486;
    v13 = swift_task_alloc();
    *(v13 + 16) = sub_2629B3BF4;
    *(v13 + 24) = v12;

    os_unfair_lock_lock(v11 + 4);
    sub_2629B3C0C(v14);
    v39 = *(v1 + 1464);
    v15 = *(v1 + 1456);
    v38 = *(v1 + 1488);
    v16 = *(v1 + 1448);
    v37 = *(v1 + 1432);
    v35 = *(v1 + 1384);
    v34 = *(v1 + 1368);
    v33 = *(v1 + 1487);
    v32 = *(v1 + 1296);
    v30 = *(v1 + 1288);
    v17 = *(v1 + 1280);
    v18 = *(v1 + 1272);
    v19 = *(v1 + 1264);
    v20 = *(v1 + 1256);
    v36 = *(v1 + 1424);
    v21 = *(v1 + 1184);
    v31 = *(v1 + 1392);
    v28 = *(v1 + 1304);
    v29 = *(v1 + 1408);
    v26 = *(v1 + 1320);
    v27 = *(v1 + 1336);
    v25 = *(v1 + 1352);
    os_unfair_lock_unlock(v11 + 4);

    sub_2629EA8C8(0xD000000000000042, 0x8000000262A322B0);
    *v21 = v20;
    *(v21 + 8) = v19;
    *(v21 + 16) = v18;
    *(v21 + 24) = v17;
    *(v21 + 32) = v30;
    *(v21 + 40) = v32;
    *(v21 + 48) = v33;
    v22 = *(v1 + 1472);
    *(v21 + 52) = *(v1 + 1475);
    *(v21 + 49) = v22;
    *(v21 + 72) = v26;
    *(v21 + 56) = v28;
    *(v21 + 104) = v25;
    *(v21 + 88) = v27;
    *(v21 + 120) = v34;
    *(v21 + 136) = v35;
    *(v21 + 144) = v31;
    *(v21 + 160) = v29;
    *(v21 + 176) = v36;
    *(v21 + 184) = v37;
    *(v21 + 200) = v16;
    *(v21 + 208) = v38;
    v23 = *(v1 + 1479);
    *(v21 + 212) = *(v1 + 1482);
    *(v21 + 209) = v23;
    *(v21 + 216) = v15;
    *(v21 + 224) = v39;

    v24 = *(v1 + 8);

    return v24();
  }

  return result;
}

uint64_t sub_2629B2658(uint64_t a1, uint64_t a2)
{
  v3[286] = v2;
  v3[285] = a2;
  v3[284] = a1;
  v3[287] = type metadata accessor for PlanDynamicConfigurationLoader(0);
  v3[288] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2629B26F4, 0, 0);
}

uint64_t sub_2629B26F4()
{
  v1 = v0[288];
  v2 = v0[287];
  v3 = v0[286];
  v4 = OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_logger;
  v0[289] = OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_logger;
  sub_2629B17C0(v3 + v4, v1);
  v5 = *(v3 + OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_operationTracker);
  v0[290] = v5;
  *(v1 + *(v2 + 20)) = v5;
  v6 = *(v3 + 248);

  v7 = sub_262A2A3E8();
  v8 = [v6 dictionaryForKey_];
  v0[291] = v8;

  v0[2] = v0;
  v0[7] = v0 + 281;
  v0[3] = sub_2629B28A4;
  v9 = swift_continuation_init();
  v0[278] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C1D8, &qword_262A2BA58);
  v0[275] = v9;
  v0[271] = MEMORY[0x277D85DD0];
  v0[272] = 1107296256;
  v0[273] = sub_2629B374C;
  v0[274] = &block_descriptor;
  [v8 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2629B28A4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 2336) = v1;
  if (v1)
  {
    v2 = sub_2629B3218;
  }

  else
  {
    v2 = sub_2629B29B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2629B29B4()
{
  v1 = *(v0 + 2248);

  sub_262A2A6F8();

  v2 = [v1 description];
  v3 = sub_262A2A3F8();
  v5 = v4;

  MEMORY[0x26672ECF0](v3, v5);

  sub_2629EA8C8(0xD00000000000002BLL, 0x8000000262A321C0);

  sub_262A2A338();
  sub_2629EA8B0(0xD000000000000016, 0x8000000262A321F0);
  sub_2629B3A24();
  v9 = swift_allocError();
  *v10 = 1;
  swift_willThrow();

  v11 = *(v0 + 2320);
  v12 = swift_allocError();
  *v13 = 1;
  *(v0 + 2257) = 0;
  v14 = *(v11 + 16);
  v15 = swift_task_alloc();
  v15[2] = v11;
  v15[3] = 0;
  v15[4] = v12;
  v15[5] = v0 + 2257;
  v16 = swift_task_alloc();
  *(v16 + 16) = sub_2629B3A78;
  *(v16 + 24) = v15;

  os_unfair_lock_lock(v14 + 4);
  sub_2629B3A9C(v17);
  v18 = *(v0 + 2288);
  os_unfair_lock_unlock(v14 + 4);

  MEMORY[0x26672F6A0](v12);
  sub_262A2A6F8();
  *(v0 + 2232) = 0;
  *(v0 + 2240) = 0xE000000000000000;
  MEMORY[0x26672ECF0](0xD00000000000003DLL, 0x8000000262A32150);
  *(v0 + 2264) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  sub_262A2A738();
  sub_2629EA8B0(*(v0 + 2232), *(v0 + 2240));

  MEMORY[0x26672F6A0](v9);
  sub_2629EA8C8(0xD000000000000021, 0x8000000262A32190);
  v19 = sub_2629AC0A0(MEMORY[0x277D84F90]);
  sub_2629AF958(v19, v0 + 776);
  nullsub_1();
  v20 = *(v18 + 16);
  v21 = *(v18 + 48);
  *(v0 + 560) = *(v18 + 32);
  *(v0 + 576) = v21;
  *(v0 + 544) = v20;
  v22 = *(v18 + 64);
  v23 = *(v18 + 80);
  v24 = *(v18 + 112);
  *(v0 + 624) = *(v18 + 96);
  *(v0 + 640) = v24;
  *(v0 + 592) = v22;
  *(v0 + 608) = v23;
  v25 = *(v18 + 128);
  v26 = *(v18 + 144);
  v27 = *(v18 + 176);
  *(v0 + 688) = *(v18 + 160);
  *(v0 + 704) = v27;
  *(v0 + 656) = v25;
  *(v0 + 672) = v26;
  v28 = *(v18 + 192);
  v29 = *(v18 + 208);
  v30 = *(v18 + 224);
  *(v0 + 768) = *(v18 + 240);
  *(v0 + 736) = v29;
  *(v0 + 752) = v30;
  *(v0 + 720) = v28;
  v31 = *(v0 + 776);
  v32 = *(v0 + 808);
  *(v18 + 32) = *(v0 + 792);
  *(v18 + 48) = v32;
  *(v18 + 16) = v31;
  v33 = *(v0 + 824);
  v34 = *(v0 + 840);
  v35 = *(v0 + 872);
  *(v18 + 96) = *(v0 + 856);
  *(v18 + 112) = v35;
  *(v18 + 64) = v33;
  *(v18 + 80) = v34;
  v36 = *(v0 + 888);
  v37 = *(v0 + 904);
  v38 = *(v0 + 936);
  *(v18 + 160) = *(v0 + 920);
  *(v18 + 176) = v38;
  *(v18 + 128) = v36;
  *(v18 + 144) = v37;
  v39 = *(v0 + 952);
  v40 = *(v0 + 968);
  v41 = *(v0 + 984);
  *(v18 + 240) = *(v0 + 1000);
  *(v18 + 208) = v40;
  *(v18 + 224) = v41;
  *(v18 + 192) = v39;
  sub_2629B3AB8(v0 + 544);
  v86 = *(v18 + 208);
  v87 = *(v18 + 224);
  v88 = *(v18 + 240);
  v82 = *(v18 + 144);
  v83 = *(v18 + 160);
  v84 = *(v18 + 176);
  v85 = *(v18 + 192);
  v78 = *(v18 + 80);
  v79 = *(v18 + 96);
  v80 = *(v18 + 112);
  v81 = *(v18 + 128);
  v74 = *(v18 + 16);
  v75 = *(v18 + 32);
  v76 = *(v18 + 48);
  v77 = *(v18 + 64);
  *(v0 + 328) = v75;
  *(v0 + 344) = v76;
  *(v0 + 312) = v74;
  v42 = *(v18 + 64);
  v43 = *(v18 + 80);
  v44 = *(v18 + 112);
  *(v0 + 392) = *(v18 + 96);
  *(v0 + 408) = v44;
  *(v0 + 360) = v42;
  *(v0 + 376) = v43;
  v45 = *(v18 + 128);
  v46 = *(v18 + 144);
  v47 = *(v18 + 176);
  *(v0 + 456) = *(v18 + 160);
  *(v0 + 472) = v47;
  *(v0 + 424) = v45;
  *(v0 + 440) = v46;
  v48 = *(v18 + 192);
  v49 = *(v18 + 208);
  v50 = *(v18 + 224);
  *(v0 + 536) = *(v18 + 240);
  *(v0 + 504) = v49;
  *(v0 + 520) = v50;
  *(v0 + 488) = v48;
  result = sub_2629B3B20(v0 + 312);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v73 = *(v0 + 536);
    v51 = *(v0 + 528);
    v72 = *(v0 + 520);
    v53 = *(v0 + 504);
    v52 = *(v0 + 512);
    v54 = *(v0 + 496);
    v71 = *(v0 + 488);
    v69 = *(v0 + 456);
    v70 = *(v0 + 472);
    v55 = *(v0 + 440);
    v68 = *(v0 + 448);
    v56 = *(v0 + 432);
    v66 = *(v0 + 400);
    v67 = *(v0 + 416);
    v64 = *(v0 + 368);
    v65 = *(v0 + 384);
    v57 = *(v0 + 360);
    v59 = *(v0 + 344);
    v58 = *(v0 + 352);
    v60 = *(v0 + 336);
    v61 = *(v0 + 320);
    v62 = *(v0 + 328);
    v63 = *(v0 + 312);
    *(v0 + 1200) = v86;
    *(v0 + 1216) = v87;
    *(v0 + 1232) = v88;
    *(v0 + 1136) = v82;
    *(v0 + 1152) = v83;
    *(v0 + 1168) = v84;
    *(v0 + 1184) = v85;
    *(v0 + 1072) = v78;
    *(v0 + 1088) = v79;
    *(v0 + 1104) = v80;
    *(v0 + 1120) = v81;
    *(v0 + 1008) = v74;
    *(v0 + 1024) = v75;
    *(v0 + 1040) = v76;
    *(v0 + 1056) = v77;
    sub_2629B3B38(v0 + 1008, v0 + 1240);

    v6 = *(v0 + 2272);
    sub_2629B3B94(*(v0 + 2304), type metadata accessor for PlanDynamicConfigurationLoader);
    *v6 = v63;
    *(v6 + 8) = v61;
    *(v6 + 16) = v62;
    *(v6 + 24) = v60;
    *(v6 + 32) = v59;
    *(v6 + 40) = v58;
    *(v6 + 48) = v57;
    *(v6 + 72) = v65;
    *(v6 + 56) = v64;
    *(v6 + 104) = v67;
    *(v6 + 88) = v66;
    *(v6 + 120) = v56;
    *(v6 + 128) = v55;
    *(v6 + 136) = v68;
    *(v6 + 144) = v69;
    *(v6 + 160) = v70;
    *(v6 + 176) = v71;
    *(v6 + 184) = v54;
    *(v6 + 192) = v53;
    *(v6 + 200) = v52;
    *(v6 + 208) = v72;
    *(v6 + 216) = v51;
    *(v6 + 224) = v73;

    v7 = *(v0 + 8);

    return v7();
  }

  return result;
}

uint64_t sub_2629B3218()
{
  v1 = *(v0 + 2328);
  swift_willThrow();

  v2 = *(v0 + 2336);
  v3 = *(v0 + 2320);
  sub_2629B3A24();
  v4 = swift_allocError();
  *v5 = 1;
  *(v0 + 2257) = 0;
  v6 = *(v3 + 16);
  v7 = swift_task_alloc();
  v7[2] = v3;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v0 + 2257;
  v8 = swift_task_alloc();
  *(v8 + 16) = sub_2629B3A78;
  *(v8 + 24) = v7;

  os_unfair_lock_lock(v6 + 4);
  sub_2629B3A9C(v9);
  v10 = *(v0 + 2288);
  os_unfair_lock_unlock(v6 + 4);

  MEMORY[0x26672F6A0](v4);
  sub_262A2A6F8();
  *(v0 + 2232) = 0;
  *(v0 + 2240) = 0xE000000000000000;
  MEMORY[0x26672ECF0](0xD00000000000003DLL, 0x8000000262A32150);
  *(v0 + 2264) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  sub_262A2A738();
  sub_2629EA8B0(*(v0 + 2232), *(v0 + 2240));

  MEMORY[0x26672F6A0](v2);
  sub_2629EA8C8(0xD000000000000021, 0x8000000262A32190);
  v11 = sub_2629AC0A0(MEMORY[0x277D84F90]);
  sub_2629AF958(v11, v0 + 776);
  nullsub_1();
  v12 = *(v10 + 16);
  v13 = *(v10 + 48);
  *(v0 + 560) = *(v10 + 32);
  *(v0 + 576) = v13;
  *(v0 + 544) = v12;
  v14 = *(v10 + 64);
  v15 = *(v10 + 80);
  v16 = *(v10 + 112);
  *(v0 + 624) = *(v10 + 96);
  *(v0 + 640) = v16;
  *(v0 + 592) = v14;
  *(v0 + 608) = v15;
  v17 = *(v10 + 128);
  v18 = *(v10 + 144);
  v19 = *(v10 + 176);
  *(v0 + 688) = *(v10 + 160);
  *(v0 + 704) = v19;
  *(v0 + 656) = v17;
  *(v0 + 672) = v18;
  v20 = *(v10 + 192);
  v21 = *(v10 + 208);
  v22 = *(v10 + 224);
  *(v0 + 768) = *(v10 + 240);
  *(v0 + 736) = v21;
  *(v0 + 752) = v22;
  *(v0 + 720) = v20;
  v23 = *(v0 + 776);
  v24 = *(v0 + 808);
  *(v10 + 32) = *(v0 + 792);
  *(v10 + 48) = v24;
  *(v10 + 16) = v23;
  v25 = *(v0 + 824);
  v26 = *(v0 + 840);
  v27 = *(v0 + 872);
  *(v10 + 96) = *(v0 + 856);
  *(v10 + 112) = v27;
  *(v10 + 64) = v25;
  *(v10 + 80) = v26;
  v28 = *(v0 + 888);
  v29 = *(v0 + 904);
  v30 = *(v0 + 936);
  *(v10 + 160) = *(v0 + 920);
  *(v10 + 176) = v30;
  *(v10 + 128) = v28;
  *(v10 + 144) = v29;
  v31 = *(v0 + 952);
  v32 = *(v0 + 968);
  v33 = *(v0 + 984);
  *(v10 + 240) = *(v0 + 1000);
  *(v10 + 208) = v32;
  *(v10 + 224) = v33;
  *(v10 + 192) = v31;
  sub_2629B3AB8(v0 + 544);
  v79 = *(v10 + 208);
  v80 = *(v10 + 224);
  v81 = *(v10 + 240);
  v75 = *(v10 + 144);
  v76 = *(v10 + 160);
  v77 = *(v10 + 176);
  v78 = *(v10 + 192);
  v71 = *(v10 + 80);
  v72 = *(v10 + 96);
  v73 = *(v10 + 112);
  v74 = *(v10 + 128);
  v67 = *(v10 + 16);
  v68 = *(v10 + 32);
  v69 = *(v10 + 48);
  v70 = *(v10 + 64);
  *(v0 + 328) = v68;
  *(v0 + 344) = v69;
  *(v0 + 312) = v67;
  v34 = *(v10 + 64);
  v35 = *(v10 + 80);
  v36 = *(v10 + 112);
  *(v0 + 392) = *(v10 + 96);
  *(v0 + 408) = v36;
  *(v0 + 360) = v34;
  *(v0 + 376) = v35;
  v37 = *(v10 + 128);
  v38 = *(v10 + 144);
  v39 = *(v10 + 176);
  *(v0 + 456) = *(v10 + 160);
  *(v0 + 472) = v39;
  *(v0 + 424) = v37;
  *(v0 + 440) = v38;
  v40 = *(v10 + 192);
  v41 = *(v10 + 208);
  v42 = *(v10 + 224);
  *(v0 + 536) = *(v10 + 240);
  *(v0 + 504) = v41;
  *(v0 + 520) = v42;
  *(v0 + 488) = v40;
  result = sub_2629B3B20(v0 + 312);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v66 = *(v0 + 536);
    v44 = *(v0 + 528);
    v65 = *(v0 + 520);
    v45 = *(v0 + 512);
    v64 = *(v0 + 496);
    v63 = *(v0 + 488);
    v46 = *(v0 + 448);
    v62 = *(v0 + 432);
    v47 = *(v0 + 360);
    v48 = *(v0 + 344);
    v49 = *(v0 + 352);
    v50 = *(v0 + 336);
    v51 = *(v0 + 320);
    v52 = *(v0 + 328);
    v53 = *(v0 + 312);
    *(v0 + 1040) = v69;
    *(v0 + 1008) = v67;
    *(v0 + 1024) = v68;
    *(v0 + 1104) = v73;
    *(v0 + 1088) = v72;
    *(v0 + 1072) = v71;
    *(v0 + 1056) = v70;
    *(v0 + 1168) = v77;
    *(v0 + 1152) = v76;
    *(v0 + 1136) = v75;
    *(v0 + 1120) = v74;
    *(v0 + 1232) = v81;
    *(v0 + 1216) = v80;
    *(v0 + 1200) = v79;
    *(v0 + 1184) = v78;
    v60 = *(v0 + 472);
    v61 = *(v0 + 456);
    v58 = *(v0 + 400);
    v59 = *(v0 + 368);
    v56 = *(v0 + 416);
    v57 = *(v0 + 384);
    sub_2629B3B38(v0 + 1008, v0 + 1240);

    v54 = *(v0 + 2272);
    sub_2629B3B94(*(v0 + 2304), type metadata accessor for PlanDynamicConfigurationLoader);
    *v54 = v53;
    *(v54 + 8) = v51;
    *(v54 + 16) = v52;
    *(v54 + 24) = v50;
    *(v54 + 32) = v48;
    *(v54 + 40) = v49;
    *(v54 + 48) = v47;
    *(v54 + 72) = v57;
    *(v54 + 56) = v59;
    *(v54 + 104) = v56;
    *(v54 + 88) = v58;
    *(v54 + 120) = v62;
    *(v54 + 136) = v46;
    *(v54 + 144) = v61;
    *(v54 + 160) = v60;
    *(v54 + 176) = v63;
    *(v54 + 184) = v64;
    *(v54 + 200) = v45;
    *(v54 + 208) = v65;
    *(v54 + 216) = v44;
    *(v54 + 224) = v66;

    v55 = *(v0 + 8);

    return v55();
  }

  return result;
}

uint64_t sub_2629B374C(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_2629B382C()
{
  v1 = *(v0 + 224);
  v9[12] = *(v0 + 208);
  v9[13] = v1;
  v10 = *(v0 + 240);
  v2 = *(v0 + 160);
  v9[8] = *(v0 + 144);
  v9[9] = v2;
  v3 = *(v0 + 192);
  v9[10] = *(v0 + 176);
  v9[11] = v3;
  v4 = *(v0 + 96);
  v9[4] = *(v0 + 80);
  v9[5] = v4;
  v5 = *(v0 + 128);
  v9[6] = *(v0 + 112);
  v9[7] = v5;
  v6 = *(v0 + 32);
  v9[0] = *(v0 + 16);
  v9[1] = v6;
  v7 = *(v0 + 64);
  v9[2] = *(v0 + 48);
  v9[3] = v7;
  sub_2629B3AB8(v9);
  swift_unknownObjectRelease();
  sub_2629B3B94(v0 + OBJC_IVAR____TtC10SIDFitness31PlanDynamicConfigurationManager_logger, type metadata accessor for PersistentLogger);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlanDynamicConfigurationManager(uint64_t a1)
{
  result = qword_27FF3C1C8;
  if (!qword_27FF3C1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629B395C(uint64_t a1)
{
  result = type metadata accessor for PersistentLogger(319);
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

unint64_t sub_2629B3A24()
{
  result = qword_27FF3C1E0;
  if (!qword_27FF3C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C1E0);
  }

  return result;
}

uint64_t sub_2629B3AB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C1F0, &unk_262A2B560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2629B3B20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2629B3B94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2629B3C24(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262A2AA18();
  if (a4 > 1u)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    if (a4 == 2)
    {
      sub_262A2A8F8();
    }

    else
    {
      sub_262A2A8C8();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    if (a4)
    {
      sub_262A2A8D8();
    }

    else
    {
      sub_262A2A8E8();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_2629B3D74(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      MEMORY[0x26672F240](2, a2, a3);
      return MEMORY[0x26672F240](a2);
    }

    else
    {
      MEMORY[0x26672F240](3);

      return sub_262A2A448();
    }
  }

  else if (a4)
  {
    MEMORY[0x26672F240](1, a2, a3);
    return sub_262A2A9B8();
  }

  else
  {
    MEMORY[0x26672F240](0, a2, a3);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = 0;
    }

    return MEMORY[0x26672F260](v5);
  }
}

void *sub_2629B3E2C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2629B4120(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_2629B3E7C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_262A2A998();
  sub_2629B3D74(v5, v1, v2, v3);
  return sub_262A2A9D8();
}

uint64_t sub_2629B3EE4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_262A2A998();
  sub_2629B3D74(v6, v2, v3, v4);
  return sub_262A2A9D8();
}

unint64_t sub_2629B3F5C()
{
  result = qword_27FF3C210;
  if (!qword_27FF3C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C210);
  }

  return result;
}

uint64_t sub_2629B3FB0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      return a6 == 2 && a1 == a4;
    }

    else if (a6 == 3)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      else
      {
        return sub_262A2A878();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *&a1 == *&a4;
    if (a6)
    {
      v6 = 0;
    }

    v7 = a4 ^ a1 ^ 1;
    if (a6 != 1)
    {
      v7 = 0;
    }

    if (a3)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2629B407C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2629B40C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

void *sub_2629B4120(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262A2A9F8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_262A2A8B8();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_2629B43FC()
{
  result = qword_27FF3C220;
  if (!qword_27FF3C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C220);
  }

  return result;
}

uint64_t sub_2629B4474@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2629B458C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2629B44B8()
{
  v1 = *v0;
  sub_262A2A998();
  MEMORY[0x26672F240](qword_262A2BC98[v1]);
  return sub_262A2A9D8();
}

uint64_t sub_2629B4540(uint64_t a1)
{
  v2 = *v1;
  sub_262A2A998();
  MEMORY[0x26672F240](qword_262A2BC98[v2]);
  return sub_262A2A9D8();
}

uint64_t sub_2629B458C(uint64_t result)
{
  if (result <= 19)
  {
    switch(result)
    {
      case 0:
        return result;
      case 5:
        return 1;
      case 10:
        return 2;
    }
  }

  else if (result > 44)
  {
    if (result == 45)
    {
      return 5;
    }

    if (result == 60)
    {
      return 6;
    }
  }

  else
  {
    if (result == 20)
    {
      return 3;
    }

    if (result == 30)
    {
      return 4;
    }
  }

  return 7;
}

uint64_t sub_2629B4608(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v1 = a1;
  if (a1 < 0xB5)
  {
    return 0;
  }

  if ((v1 - 421) > 0xFFFFFFFFFFFFFF0ELL)
  {
    return 1;
  }

  if ((v1 - 751) > 0xFFFFFFFFFFFFFEF0)
  {
    return 2;
  }

  if ((v1 - 1351) > 0xFFFFFFFFFFFFFEF0)
  {
    return 3;
  }

  if ((v1 - 1951) > 0xFFFFFFFFFFFFFEF0)
  {
    return 4;
  }

  if ((v1 - 2851) > 0xFFFFFFFFFFFFFEF0)
  {
    return 5;
  }

  if (v1 >= 2850)
  {
    return 6;
  }

  return 7;
}