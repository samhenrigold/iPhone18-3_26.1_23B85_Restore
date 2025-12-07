uint64_t sub_21DDD4660()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A80, &qword_21DDF3030) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_21DDF27CC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_21DDD47B8()
{
  v1 = sub_21DDF1F6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_21DDF222C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_21DDD4968()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21DDD49B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21DDD49F8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21DDD4A38()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21DDD4AA0()
{
  v1 = sub_21DDF1E3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_21DDD4B7C()
{
  v1 = sub_21DDF1F6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_21DDF222C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_21DDD4CE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A90, &qword_21DDF2F00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21DDD4D90()
{
  v22 = sub_21DDF1E3C();
  v1 = *(v22 - 8);
  v2 = *(v1 + 80);
  v20 = (v2 + 24) & ~v2;
  v18 = (*(v1 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = sub_21DDF184C();
  v3 = *(v21 - 8);
  v4 = *(v3 + 80);
  v16 = (v18 + v4 + 16) & ~v4;
  v5 = *(v3 + 64);
  v19 = sub_21DDF1F6C();
  v6 = *(v19 - 8);
  v7 = *(v6 + 80);
  v8 = (v16 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v17 = sub_21DDF222C();
  v10 = *(v17 - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v4 | v7 | v11;

  (*(v1 + 8))(v0 + v20, v22);

  (*(v3 + 8))(v0 + v16, v21);
  (*(v6 + 8))(v0 + v8, v19);
  (*(v10 + 8))(v0 + v12, v17);

  return MEMORY[0x2821FE8E8](v0, v12 + v15, v13 | 7);
}

uint64_t sub_21DDD5030()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t VisualActionPredictionService.prewarm()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21DDD50C4, 0, 0);
}

uint64_t sub_21DDD50C4()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_21DDD51B8;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0x286D726177657270, 0xE900000000000029, sub_21DDD54AC, v2, v4);
}

uint64_t sub_21DDD51B8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_21DDD52D4;
  }

  else
  {

    v2 = sub_21DDDA378;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DDD52D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DDD5338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AE8, &qword_21DDF2F68);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  (*(a4 + 8))(0, sub_21DDDA37C, v12, a3, a4);
}

uint64_t VisualActionPredictionService.predictActions(for:with:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = sub_21DDF1F6C();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = sub_21DDF1E3C();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v10 = sub_21DDF26DC();
  v7[21] = v10;
  v7[22] = *(v10 - 8);
  v7[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DDD5654, 0, 0);
}

uint64_t sub_21DDD5654()
{
  sub_21DDF26BC();
  v1 = sub_21DDF26CC();
  v2 = sub_21DDF27FC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21DDD3000, v1, v2, "VisualActionPredictionClient.predictActions(for:with:options:) is soft deprecated. Use predictActions(for:options:) instead, the 'eligibleCustomActionIdentities' parameter is migrated to the 'builtInActionIdentities' property of the 'visualContext' parameter.", v3, 2u);
    MEMORY[0x223D49D80](v3, -1, -1);
  }

  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = v0[8];

  (*(v5 + 8))(v4, v6);
  v42 = *(v7 + 16);
  if (v42)
  {
    v8 = v0[17];
    v9 = v0[8];
    v10 = sub_21DDF1F2C();
    v11 = sub_21DDD98EC(v10);

    v12 = 0;
    v13 = *(v8 + 16);
    v8 += 16;
    v40 = (*(v8 + 64) + 32) & ~*(v8 + 64);
    v41 = v9 + v40;
    v14 = *(v8 + 56);
    v46 = v11 + 56;
    v47 = v13;
    v15 = (v8 - 8);
    v16 = MEMORY[0x277D84F90];
    v43 = (v8 + 16);
    do
    {
      v44 = v16;
      v45 = v12;
      v47(v0[20], v41 + v12 * v14, v0[16]);
      if (*(v11 + 16) && (sub_21DDD9A74(&qword_27CE90A70, MEMORY[0x277D78640]), v17 = sub_21DDF272C(), v18 = -1 << *(v11 + 32), v19 = v17 & ~v18, ((*(v46 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = v0[19];
          v22 = v0[16];
          v47(v21, *(v11 + 48) + v19 * v14, v22);
          sub_21DDD9A74(&qword_27CE90A78, MEMORY[0x277D78648]);
          v23 = sub_21DDF273C();
          v24 = *v15;
          (*v15)(v21, v22);
          if (v23)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v46 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v24(v0[20], v0[16]);
        v16 = v44;
      }

      else
      {
LABEL_12:
        v25 = *v43;
        (*v43)(v0[18], v0[20], v0[16]);
        v16 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21DDD880C(0, *(v44 + 16) + 1, 1);
          v16 = v44;
        }

        v27 = *(v16 + 16);
        v26 = *(v16 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_21DDD880C((v26 > 1), v27 + 1, 1);
          v16 = v44;
        }

        v28 = v0[18];
        v29 = v0[16];
        *(v16 + 16) = v27 + 1;
        v25(v16 + v40 + v27 * v14, v28, v29);
      }

      v12 = v45 + 1;
    }

    while (v45 + 1 != v42);

    if (*(v16 + 16))
    {
      (*(v0[14] + 16))(v0[15], v0[7], v0[13]);
      v30 = sub_21DDF1F1C();
      sub_21DDD63A0(v16);
      v30(v0 + 2, 0);
      v31 = swift_task_alloc();
      v0[24] = v31;
      *v31 = v0;
      v31[1] = sub_21DDD5B30;
      v32 = v0[15];
      v33 = v0[11];
      v34 = v0[9];
      v35 = v0[10];
      goto LABEL_22;
    }

    v36 = swift_task_alloc();
    v0[26] = v36;
    *v36 = v0;
    v37 = sub_21DDD5CF4;
  }

  else
  {
    v36 = swift_task_alloc();
    v0[27] = v36;
    *v36 = v0;
    v37 = sub_21DDD5E84;
  }

  v36[1] = v37;
  v33 = v0[11];
  v34 = v0[9];
  v35 = v0[10];
  v32 = v0[7];
LABEL_22:
  v38 = v0[6];

  return VisualActionPredictionService.predictActions(for:options:)(v38, v32, v34, v35, v33);
}

uint64_t sub_21DDD5B30()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_21DDD6014;
  }

  else
  {
    v2 = sub_21DDD5C44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DDD5C44()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21DDD5CF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21DDD5E84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21DDD6014()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t VisualActionPredictionService.predictActions(for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_21DDD60F4, 0, 0);
}

uint64_t sub_21DDD60F4()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = sub_21DDF1F7C();
  *v4 = v0;
  v4[1] = sub_21DDD6200;
  v6 = *(v0 + 16);

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000001CLL, 0x800000021DDF3B30, sub_21DDD9AB8, v2, v5);
}

uint64_t sub_21DDD6200()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21DDD633C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21DDD633C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DDD63A0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_21DDDB20C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_21DDF1E3C();
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21DDD64CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B00, &unk_21DDF2F80);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  (*(v11 + 16))(&v17 - v12, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  (*(v11 + 32))(v15 + v14, v13, v10);
  (*(a6 + 16))(a3, a4, 0, sub_21DDDA264, v15, v18, a6);
}

uint64_t sub_21DDD6654(uint64_t a1)
{
  v2 = sub_21DDF1F7C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B08, &qword_21DDF31E0);
  MEMORY[0x28223BE20](v6);
  v8 = (v10 - v7);
  sub_21DDDA28C(a1, v10 - v7, &qword_27CE90B08, &qword_21DDF31E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10[1] = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B00, &unk_21DDF2F80);
    return sub_21DDF279C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B00, &unk_21DDF2F80);
    return sub_21DDF27AC();
  }
}

uint64_t VisualActionPredictionService.executeAction(_:for:with:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_21DDD6830, 0, 0);
}

uint64_t sub_21DDD6830()
{
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v2 + 16) = *(v0 + 56);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 56) = v4;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  v6 = sub_21DDF240C();
  *v5 = v0;
  v5[1] = sub_21DDD6944;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000022, 0x800000021DDF3B50, sub_21DDD9AC8, v2, v6);
}

uint64_t sub_21DDD6944()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21DDD6A80, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21DDD6A80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DDD6AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a2;
  v23 = a7;
  v21 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AF0, &unk_21DDF2F70);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  (*(v14 + 16))(&v20 - v15, a1, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = swift_allocObject();
  (*(v14 + 32))(v18 + v17, v16, v13);
  (*(a8 + 24))(a3, a4, a5, v21, 0, sub_21DDDA1B4, v18, v23, a8);
}

uint64_t sub_21DDD6C7C(uint64_t a1)
{
  v2 = sub_21DDF240C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AF8, &qword_21DDF31D0);
  MEMORY[0x28223BE20](v6);
  v8 = (v10 - v7);
  sub_21DDDA28C(a1, v10 - v7, &qword_27CE90AF8, &qword_21DDF31D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10[1] = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AF0, &unk_21DDF2F70);
    return sub_21DDF279C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AF0, &unk_21DDF2F70);
    return sub_21DDF27AC();
  }
}

uint64_t VisualActionPredictionService.sendFeedback(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21DDD6E50, 0, 0);
}

uint64_t sub_21DDD6E50()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_21DDD6F50;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000010, 0x800000021DDF3B80, sub_21DDD9ADC, v3, v5);
}

uint64_t sub_21DDD6F50()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_21DDD7084;
  }

  else
  {

    v2 = sub_21DDD706C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DDD7084()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DDD70E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AE8, &qword_21DDF2F68);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  (*(a5 + 32))(a3, 0, sub_21DDDA130, v14, a4, a5);
}

uint64_t sub_21DDD7264(uint64_t a1, char a2)
{
  if (a2)
  {
    MEMORY[0x223D49C80]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AE8, &qword_21DDF2F68);
    return sub_21DDF279C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AE8, &qword_21DDF2F68);
    return sub_21DDF27AC();
  }
}

uint64_t VisualActionPredictionService.registerAsyncCustomActionHandler(for:at:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A80, &qword_21DDF3030);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v15 = &v22 - v14;
  sub_21DDDA28C(a2, &v22 - v14, &qword_27CE90A80, &qword_21DDF3030);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_21DDD9B30(v15, v18 + v16);
  v19 = (v18 + v17);
  *v19 = a3;
  v19[1] = a4;
  v20 = *(a6 + 40);

  v20(a1, 0, sub_21DDD9BA0, v18, v22, a6);
}

uint64_t sub_21DDD745C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v28 = a5;
  v29 = a1;
  v33 = a3;
  v34 = a4;
  v30 = a2;
  v7 = sub_21DDF222C();
  v26 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v27 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DDF1F6C();
  v25 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A80, &qword_21DDF3030);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  sub_21DDDA28C(v28, &v25 - v15, &qword_27CE90A80, &qword_21DDF3030);
  (*(v11 + 16))(v13, v29, v10);
  v17 = v27;
  (*(v8 + 16))(v27, v30, v7);
  v18 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v19 = (v12 + *(v8 + 80) + v18) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v21 = v32;
  *(v20 + 4) = v31;
  *(v20 + 5) = v21;
  (*(v11 + 32))(&v20[v18], v13, v25);
  (*(v8 + 32))(&v20[v19], v17, v26);
  v22 = &v20[(v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8];
  v23 = v34;
  *v22 = v33;
  v22[1] = v23;

  sub_21DDDDB64(0, 0, v16, &unk_21DDF2F60, v20);
}

uint64_t sub_21DDD7728(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v15;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_21DDD7838;

  return v13(a6, a7);
}

uint64_t sub_21DDD7838()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_21DDD79B8;
  }

  else
  {
    v2 = sub_21DDD794C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DDD794C()
{
  (*(v0 + 16))(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DDD79B8()
{
  v1 = v0[5];
  v2 = v0[2];
  MEMORY[0x223D49C80](v1);
  v2(v1, 1);
  MEMORY[0x223D49C70](v1);
  MEMORY[0x223D49C70](v1);
  v3 = v0[1];

  return v3();
}

uint64_t VisualActionPredictionService.isBundleEligibleForAcceleratedAction(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21DDD7A6C, 0, 0);
}

uint64_t sub_21DDD7A6C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_21DDD7B70;
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD00000000000002ALL, 0x800000021DDF3BA0, sub_21DDD9C74, v3, v5);
}

uint64_t sub_21DDD7B70()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_21DDD7CA8;
  }

  else
  {

    v2 = sub_21DDD7C8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DDD7CA8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_21DDD7D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AE0, &qword_21DDF2F50);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  (*(a5 + 56))(a3, sub_21DDD9E08, v14, a4, a5);
}

uint64_t sub_21DDD7E88(uint64_t a1, char a2)
{
  if (a2)
  {
    MEMORY[0x223D49C80]();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AE0, &qword_21DDF2F50);
    return sub_21DDF279C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AE0, &qword_21DDF2F50);
    return sub_21DDF27AC();
  }
}

uint64_t VisualActionPredictionService.rankBundles(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21DDD7F30, 0, 0);
}

uint64_t sub_21DDD7F30()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = sub_21DDF254C();
  *v4 = v0;
  v4[1] = sub_21DDD8040;
  v6 = *(v0 + 16);

  return MEMORY[0x2822008A0](v6, 0, 0, 0x646E75426B6E6172, 0xEF293A5F2873656CLL, sub_21DDD9C80, v3, v5);
}

uint64_t sub_21DDD8040()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21DDD817C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21DDD817C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DDD81E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A90, &qword_21DDF2F00);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  (*(a5 + 64))(a3, sub_21DDD9DE0, v14, a4, a5);
}

uint64_t sub_21DDD8358(uint64_t a1)
{
  v2 = sub_21DDF254C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A88, &qword_21DDF2EF8);
  MEMORY[0x28223BE20](v6);
  v8 = (v10 - v7);
  sub_21DDDA28C(a1, v10 - v7, &qword_27CE90A88, &qword_21DDF2EF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10[1] = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A90, &qword_21DDF2F00);
    return sub_21DDF279C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A90, &qword_21DDF2F00);
    return sub_21DDF27AC();
  }
}

uint64_t sub_21DDD8508(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_21DDD8554(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21DDF1E3C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_21DDD9A74(&qword_27CE90A70, MEMORY[0x277D78640]);
  v33 = a2;
  v11 = sub_21DDF272C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_21DDD9A74(&qword_27CE90A78, MEMORY[0x277D78648]);
      v21 = sub_21DDF273C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_21DDD9130(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void *sub_21DDD880C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DDD8C0C(a1, a2, a3, *v3, &qword_27CE90B10, &qword_21DDF2F90, MEMORY[0x277D78638]);
  *v3 = result;
  return result;
}

void *sub_21DDD8850(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DDD8C0C(a1, a2, a3, *v3, &qword_27CE90AD8, &qword_21DDF2F48, MEMORY[0x277D78BF8]);
  *v3 = result;
  return result;
}

void *sub_21DDD8894(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DDD8A24(a1, a2, a3, *v3, &qword_27CE90AB8, &qword_21DDF2F28, &qword_27CE90AC0, &qword_21DDF2F30);
  *v3 = result;
  return result;
}

void *sub_21DDD88D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DDD8A24(a1, a2, a3, *v3, &qword_27CE90AA8, &qword_21DDF2F18, &qword_27CE90AB0, &qword_21DDF2F20);
  *v3 = result;
  return result;
}

void *sub_21DDD8914(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DDD8C0C(a1, a2, a3, *v3, &qword_27CE90AC8, &qword_21DDF2F38, MEMORY[0x277D788B8]);
  *v3 = result;
  return result;
}

void *sub_21DDD8958(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DDD8C0C(a1, a2, a3, *v3, &qword_27CE90AD0, &qword_21DDF2F40, MEMORY[0x277D78C48]);
  *v3 = result;
  return result;
}

void *sub_21DDD899C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DDD8C0C(a1, a2, a3, *v3, &qword_27CE90AA0, &qword_21DDF2F10, MEMORY[0x277D78760]);
  *v3 = result;
  return result;
}

void *sub_21DDD89E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DDD8C0C(a1, a2, a3, *v3, &qword_27CE90A98, &qword_21DDF2F08, MEMORY[0x277D78768]);
  *v3 = result;
  return result;
}

void *sub_21DDD8A24(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void *sub_21DDD8C0C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_21DDD8DE8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_21DDF1E3C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B18, &qword_21DDF2F98);
  result = sub_21DDF288C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_21DDD9A74(&qword_27CE90A70, MEMORY[0x277D78640]);
      result = sub_21DDF272C();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_21DDD9130(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_21DDF1E3C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21DDD8DE8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_21DDD93AC();
      goto LABEL_12;
    }

    sub_21DDD95E4(v10 + 1);
  }

  v12 = *v3;
  sub_21DDD9A74(&qword_27CE90A70, MEMORY[0x277D78640]);
  v13 = sub_21DDF272C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_21DDD9A74(&qword_27CE90A78, MEMORY[0x277D78648]);
      v21 = sub_21DDF273C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21DDF292C();
  __break(1u);
  return result;
}

void *sub_21DDD93AC()
{
  v1 = v0;
  v2 = sub_21DDF1E3C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B18, &qword_21DDF2F98);
  v6 = *v0;
  v7 = sub_21DDF287C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

uint64_t sub_21DDD95E4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_21DDF1E3C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B18, &qword_21DDF2F98);
  v7 = sub_21DDF288C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_21DDD9A74(&qword_27CE90A70, MEMORY[0x277D78640]);
      result = sub_21DDF272C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_21DDD98EC(uint64_t a1)
{
  v2 = sub_21DDF1E3C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_21DDD9A74(&qword_27CE90A70, MEMORY[0x277D78640]);
  result = MEMORY[0x223D49840](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_21DDD8554(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_21DDD9A74(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21DDF1E3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

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

uint64_t sub_21DDD9B30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A80, &qword_21DDF3030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DDD9BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A80, &qword_21DDF3030) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_21DDD745C(a1, a2, a3, a4, v4 + v10, v12, v13);
}

uint64_t sub_21DDD9D44(uint64_t a1, int a2)
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

uint64_t sub_21DDD9D64(uint64_t result, int a2, int a3)
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
  if (!qword_281222828)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_281222828);
    }
  }
}

uint64_t sub_21DDD9E08(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AE0, &qword_21DDF2F50);

  return sub_21DDD7E88(a1, a2 & 1);
}

uint64_t sub_21DDD9E94(uint64_t a1)
{
  v3 = *(sub_21DDF1F6C() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_21DDF222C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_21DDDA03C;

  return sub_21DDD7728(a1, v8, v9, v10, v11, v1 + v4, v1 + v7, v12);
}

uint64_t sub_21DDDA03C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21DDDA1DC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_21DDDA28C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_22Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t StructuredExtraction.init(from:)(uint64_t a1)
{
  sub_21DDF258C();
  v2 = sub_21DDF1BFC();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void *StructuredExtraction.init(from:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v43 = sub_21DDF1A5C();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DDF255C();
  MEMORY[0x28223BE20](v6 - 8);
  v41 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B20, &qword_21DDF2FA8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v31 - v9;
  v11 = sub_21DDF237C();
  v49 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v53 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21DDF257C();
  v44 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v14 = (v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_21DDF1A7C();
  v16 = v15;
  if (v15 >> 62)
  {
    goto LABEL_36;
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
LABEL_37:

    sub_21DDF1A8C();
    sub_21DDF258C();
  }

LABEL_3:
  v54 = MEMORY[0x277D84F90];
  result = sub_21DDD8850(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v37 = v17;
    v31[0] = a2;
    v31[1] = a1;
    v19 = 0;
    v39 = v16 & 0xC000000000000001;
    v33 = v16 & 0xFFFFFFFFFFFFFF8;
    v34 = v16;
    v32 = v16 + 32;
    v51 = (v49 + 32);
    v52 = (v49 + 48);
    v35 = v44 + 32;
    v36 = (v4 + 8);
    v48 = v11;
    v38 = v14;
    v14 = v54;
    while (1)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_34;
      }

      v47 = v19 + 1;
      if (v39)
      {
        v20 = MEMORY[0x223D49920](v19);
      }

      else
      {
        if (v19 >= *(v33 + 16))
        {
          goto LABEL_35;
        }

        v20 = *(v32 + 8 * v19);
      }

      v21 = sub_21DDF1A4C();
      v50 = v21;
      if (v21 >> 62)
      {
        v22 = sub_21DDF28DC();
        v45 = v20;
        v46 = v14;
        if (v22)
        {
LABEL_12:
          a1 = 0;
          v23 = v50;
          v4 = v50 & 0xC000000000000001;
          v16 = v50 & 0xFFFFFFFFFFFFFF8;
          v14 = MEMORY[0x277D84F90];
          do
          {
            if (v4)
            {
              a2 = MEMORY[0x223D49920](a1, v23);
              v24 = a1 + 1;
              if (__OFADD__(a1, 1))
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (a1 >= *(v16 + 16))
              {
                goto LABEL_33;
              }

              a2 = *(v23 + 8 * a1 + 32);

              v24 = a1 + 1;
              if (__OFADD__(a1, 1))
              {
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
LABEL_34:
                __break(1u);
LABEL_35:
                __break(1u);
LABEL_36:
                v17 = sub_21DDF28DC();
                if (!v17)
                {
                  goto LABEL_37;
                }

                goto LABEL_3;
              }
            }

            static DetectedEntity.detectedEntity(for:)(v10);

            if ((*v52)(v10, 1, v11) == 1)
            {
              sub_21DDDB6A0(v10);
            }

            else
            {
              v25 = *v51;
              (*v51)(v53, v10, v11);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v14 = sub_21DDDB4C4(0, v14[2] + 1, 1, v14, &qword_27CE90B50, &qword_21DDF2FD8, MEMORY[0x277D78A20]);
              }

              v27 = v14[2];
              v26 = v14[3];
              a2 = v27 + 1;
              if (v27 >= v26 >> 1)
              {
                v14 = sub_21DDDB4C4((v26 > 1), v27 + 1, 1, v14, &qword_27CE90B50, &qword_21DDF2FD8, MEMORY[0x277D78A20]);
              }

              v14[2] = a2;
              v28 = v14 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v27;
              v11 = v48;
              v25(v28, v53, v48);
              v23 = v50;
            }

            ++a1;
          }

          while (v24 != v22);
        }
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v45 = v20;
        v46 = v14;
        if (v22)
        {
          goto LABEL_12;
        }
      }

      v29 = v42;
      sub_21DDF1A6C();
      sub_21DDDAF00(v29, v41);
      (*v36)(v29, v43);
      v4 = v38;
      sub_21DDF256C();

      v14 = v46;
      v54 = v46;
      a2 = v46[2];
      v30 = v46[3];
      a1 = a2 + 1;
      if (a2 >= v30 >> 1)
      {
        sub_21DDD8850((v30 > 1), a2 + 1, 1);
        v14 = v54;
      }

      v14[2] = a1;
      (*(v44 + 32))(v14 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * a2, v4, v40);
      v19 = v47;
      if (v47 == v37)
      {
        goto LABEL_37;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t StructuredExtraction.Object.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_21DDF1A5C();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DDF255C();
  MEMORY[0x28223BE20](v5 - 8);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B20, &qword_21DDF2FA8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_21DDF237C();
  v35 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v13 = sub_21DDF1A4C();
  v14 = v13;
  if (v13 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DDF28DC())
  {
    v16 = 0;
    v37 = v14 & 0xFFFFFFFFFFFFFF8;
    v38 = v14 & 0xC000000000000001;
    v17 = (v35 + 48);
    v36 = (v35 + 32);
    v18 = MEMORY[0x277D84F90];
    v33 = i;
    v34 = v12;
    while (v38)
    {
      MEMORY[0x223D49920](v16, v14);
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      static DetectedEntity.detectedEntity(for:)(v9);

      if ((*v17)(v9, 1, v10) == 1)
      {
        sub_21DDDB6A0(v9);
      }

      else
      {
        v20 = v14;
        v21 = *v36;
        (*v36)(v12, v9, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_21DDDB4C4(0, v18[2] + 1, 1, v18, &qword_27CE90B50, &qword_21DDF2FD8, MEMORY[0x277D78A20]);
        }

        v23 = v18[2];
        v22 = v18[3];
        if (v23 >= v22 >> 1)
        {
          v18 = sub_21DDDB4C4((v22 > 1), v23 + 1, 1, v18, &qword_27CE90B50, &qword_21DDF2FD8, MEMORY[0x277D78A20]);
        }

        v18[2] = v23 + 1;
        v24 = v18 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v23;
        v12 = v34;
        v21(v24, v34, v10);
        v14 = v20;
        i = v33;
      }

      ++v16;
      if (v19 == i)
      {
        goto LABEL_20;
      }
    }

    if (v16 >= *(v37 + 16))
    {
      goto LABEL_18;
    }

    v19 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:

  v25 = v28;
  sub_21DDF1A6C();
  sub_21DDDAF00(v25, v27);
  (*(v29 + 8))(v25, v30);
  sub_21DDF256C();
}

uint64_t sub_21DDDAF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DDF1A5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D4B4A0])
  {
    v9 = MEMORY[0x277D78BB0];
LABEL_23:
    v10 = *v9;
    v11 = sub_21DDF255C();
    return (*(*(v11 - 8) + 104))(a2, v10, v11);
  }

  if (v8 == *MEMORY[0x277D4B488])
  {
    v9 = MEMORY[0x277D78BA0];
    goto LABEL_23;
  }

  if (v8 == *MEMORY[0x277D4B4B0])
  {
    v9 = MEMORY[0x277D78BC0];
    goto LABEL_23;
  }

  if (v8 == *MEMORY[0x277D4B4D0])
  {
    v9 = MEMORY[0x277D78BE8];
    goto LABEL_23;
  }

  if (v8 == *MEMORY[0x277D4B480])
  {
    v9 = MEMORY[0x277D78B98];
    goto LABEL_23;
  }

  if (v8 == *MEMORY[0x277D4B490])
  {
    v9 = MEMORY[0x277D78BA8];
    goto LABEL_23;
  }

  if (v8 == *MEMORY[0x277D4B4D8])
  {
    v9 = MEMORY[0x277D78BF0];
    goto LABEL_23;
  }

  if (v8 == *MEMORY[0x277D4B4B8])
  {
    v9 = MEMORY[0x277D78BD0];
    goto LABEL_23;
  }

  if (v8 == *MEMORY[0x277D4B498])
  {
    v9 = MEMORY[0x277D78BC8];
    goto LABEL_23;
  }

  if (v8 == *MEMORY[0x277D4B4C8])
  {
    v9 = MEMORY[0x277D78BE0];
    goto LABEL_23;
  }

  if (v8 == *MEMORY[0x277D4B4A8])
  {
    v9 = MEMORY[0x277D78BB8];
    goto LABEL_23;
  }

  v13 = *MEMORY[0x277D4B4C0];
  v14 = *MEMORY[0x277D78BD8];
  v15 = v8;
  v16 = sub_21DDF255C();
  result = (*(*(v16 - 8) + 104))(a2, v14, v16);
  if (v15 != v13)
  {
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void *sub_21DDDB234(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B38, &qword_21DDF2FC0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B40, &qword_21DDF2FC8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B40, &qword_21DDF2FC8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_21DDDB4C4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_21DDDB6A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B20, &qword_21DDF2FA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VisualLookupResult.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B58, &qword_21DDF2FF0);
  MEMORY[0x28223BE20](v3 - 8);
  v145 = &v115 - v4;
  v142 = sub_21DDF188C();
  v116 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v141 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_21DDF191C();
  v119 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v153 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_21DDF1EFC();
  v144 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v140 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_21DDF1A2C();
  v8 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v175 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_21DDF1A0C();
  v10 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v168 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_21DDF19CC();
  v12 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v151 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B60, &qword_21DDF2FF8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v115 - v15;
  v192 = sub_21DDF1E5C();
  v177 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v188 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DDF1A3C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v181 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v191 = &v115 - v22;
  v132 = sub_21DDF18AC();
  v23 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v147 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_21DDF194C();
  v25 = *(v129 - 8);
  v26 = MEMORY[0x28223BE20](v129);
  v120 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v128 = &v115 - v28;
  v118 = a1;
  result = sub_21DDF185C();
  v30 = *(result + 16);
  v127 = v25;
  v125 = v30;
  if (v30)
  {
    v31 = 0;
    v124 = result + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v123 = v25 + 16;
    v134 = v23 + 16;
    v186 = (v19 + 88);
    v187 = (v19 + 16);
    LODWORD(v185) = *MEMORY[0x277D79750];
    v174 = *MEMORY[0x277D79748];
    v167 = *MEMORY[0x277D79740];
    v183 = (v177 + 56);
    v184 = (v19 + 8);
    v180 = (v19 + 96);
    v150 = (v12 + 32);
    v149 = (v12 + 8);
    v148 = *MEMORY[0x277D78698];
    v179 = (v177 + 104);
    v166 = (v10 + 32);
    v165 = (v10 + 8);
    v164 = *MEMORY[0x277D786A0];
    v173 = (v8 + 32);
    v172 = (v8 + 8);
    v171 = *MEMORY[0x277D786A8];
    v32 = (v177 + 48);
    v182 = (v177 + 32);
    v133 = (v23 + 8);
    v33 = MEMORY[0x277D84F90];
    v122 = (v25 + 8);
    v178 = v16;
    v34 = v191;
    v35 = v132;
    v170 = (v177 + 48);
    v131 = v19;
    v135 = v23;
    v121 = result;
    while (v31 < *(result + 16))
    {
      v130 = v33;
      v38 = *(v127 + 72);
      v126 = v31;
      (*(v127 + 16))(v128, v124 + v38 * v31, v129);
      result = sub_21DDF193C();
      v138 = *(result + 16);
      if (v138)
      {
        v39 = 0;
        v137 = result + ((*(v23 + 80) + 32) & ~*(v23 + 80));
        v40 = MEMORY[0x277D84F90];
        v41 = v181;
        v136 = result;
        while (v39 < *(result + 16))
        {
          v155 = v40;
          v42 = *(v23 + 72);
          v146 = v39;
          (*(v23 + 16))(v147, v137 + v42 * v39, v35);
          v43 = sub_21DDF189C();
          v44 = *(v43 + 16);
          if (v44)
          {
            v45 = (*(v131 + 80) + 32) & ~*(v131 + 80);
            v139 = v43;
            v46 = v43 + v45;
            v47 = *(v131 + 72);
            v189 = *(v131 + 16);
            v190 = v47;
            v48 = MEMORY[0x277D84F90];
            do
            {
              v49 = v32;
              v50 = v189;
              v189(v34, v46, v18);
              v50(v41, v34, v18);
              v51 = (*v186)(v41, v18);
              if (v51 == v185)
              {
                (*v180)(v41, v18);
                v52 = v175;
                v53 = v176;
                (*v173)(v175, v41, v176);
                sub_21DDF1A1C();
                sub_21DDF22AC();
                v54 = v53;
                v34 = v191;
                (*v172)(v52, v54);
                (*v184)(v34, v18);
                v55 = v192;
                (*v179)(v16, v171, v192);
                (*v183)(v16, 0, 1, v55);
                v32 = v49;
              }

              else if (v51 == v174)
              {
                (*v180)(v41, v18);
                v56 = v168;
                v57 = v169;
                (*v166)(v168, v41, v169);
                sub_21DDF19EC();
                sub_21DDF19DC();
                sub_21DDF19FC();
                v34 = v191;
                v41 = v181;
                v16 = v178;
                v32 = v170;
                sub_21DDF262C();
                v58 = v56;
                v59 = v192;
                (*v165)(v58, v57);
                (*v184)(v34, v18);
                (*v179)(v16, v164, v59);
                (*v183)(v16, 0, 1, v59);
              }

              else
              {
                if (v51 == v167)
                {
                  (*v180)(v41, v18);
                  v60 = v151;
                  v61 = v152;
                  (*v150)(v151, v41, v152);
                  v163 = sub_21DDF199C();
                  v162 = v62;
                  v161 = sub_21DDF195C();
                  v160 = v63;
                  v159 = sub_21DDF19BC();
                  v158 = v64;
                  v157 = sub_21DDF198C();
                  v156 = v65;
                  sub_21DDF197C();
                  sub_21DDF19AC();
                  sub_21DDF196C();
                  v41 = v181;
                  v34 = v191;
                  v16 = v178;
                  sub_21DDF25DC();
                  v66 = v60;
                  v67 = v192;
                  (*v149)(v66, v61);
                  (*v184)(v34, v18);
                  (*v179)(v16, v148, v67);
                  (*v183)(v16, 0, 1, v67);
                }

                else
                {
                  v68 = *v184;
                  (*v184)(v34, v18);
                  (*v183)(v16, 1, 1, v192);
                  v68(v41, v18);
                }

                v32 = v170;
              }

              if ((*v32)(v16, 1, v192) == 1)
              {
                sub_21DDDDB04(v16, &qword_27CE90B60, &qword_21DDF2FF8);
              }

              else
              {
                v69 = *v182;
                (*v182)(v188, v16, v192);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v48 = sub_21DDDB474(0, *(v48 + 2) + 1, 1, v48);
                }

                v71 = *(v48 + 2);
                v70 = *(v48 + 3);
                if (v71 >= v70 >> 1)
                {
                  v48 = sub_21DDDB474((v70 > 1), v71 + 1, 1, v48);
                }

                *(v48 + 2) = v71 + 1;
                v69(&v48[((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v71], v188, v192);
                v41 = v181;
                v34 = v191;
              }

              v46 += v190;
              --v44;
            }

            while (v44);

            v35 = v132;
          }

          else
          {

            v48 = MEMORY[0x277D84F90];
          }

          (*v133)(v147, v35);
          v72 = *(v48 + 2);
          result = v155;
          v73 = v155[2];
          v74 = v73 + v72;
          v23 = v135;
          if (__OFADD__(v73, v72))
          {
            goto LABEL_88;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          v40 = v155;
          if ((result & 1) == 0 || v74 > v155[3] >> 1)
          {
            if (v73 <= v74)
            {
              v75 = v73 + v72;
            }

            else
            {
              v75 = v73;
            }

            result = sub_21DDDB474(result, v75, 1, v155);
            v40 = result;
          }

          v41 = v181;
          v34 = v191;
          if (*(v48 + 2))
          {
            if ((v40[3] >> 1) - v40[2] < v72)
            {
              goto LABEL_90;
            }

            swift_arrayInitWithCopy();

            if (v72)
            {
              v76 = v40[2];
              v77 = __OFADD__(v76, v72);
              v78 = v76 + v72;
              if (v77)
              {
                goto LABEL_91;
              }

              v40[2] = v78;
            }
          }

          else
          {

            if (v72)
            {
              goto LABEL_89;
            }
          }

          v39 = v146 + 1;
          result = v136;
          if (v146 + 1 == v138)
          {
            v79 = v40;

            goto LABEL_45;
          }
        }

        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v79 = MEMORY[0x277D84F90];
LABEL_45:
      (*v122)(v128, v129);
      v80 = v79[2];
      result = v130;
      v81 = v130[2];
      v82 = v81 + v80;
      if (__OFADD__(v81, v80))
      {
        goto LABEL_96;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v83 = v130;
      if (!result || v82 > v130[3] >> 1)
      {
        if (v81 <= v82)
        {
          v84 = v81 + v80;
        }

        else
        {
          v84 = v81;
        }

        result = sub_21DDDB474(result, v84, 1, v130);
        v83 = result;
      }

      v34 = v191;
      if (v79[2])
      {
        if ((v83[3] >> 1) - v83[2] < v80)
        {
          goto LABEL_99;
        }

        v85 = v83;
        swift_arrayInitWithCopy();

        v33 = v85;
        result = v121;
        v37 = v126;
        if (v80)
        {
          v86 = v85[2];
          v77 = __OFADD__(v86, v80);
          v87 = v86 + v80;
          if (v77)
          {
            goto LABEL_101;
          }

          v85[2] = v87;
        }
      }

      else
      {
        v36 = v83;

        v33 = v36;
        result = v121;
        v37 = v126;
        if (v80)
        {
          goto LABEL_97;
        }
      }

      v31 = v37 + 1;
      if (v31 == v125)
      {
        v130 = v33;

        goto LABEL_59;
      }
    }
  }

  else
  {

    v130 = MEMORY[0x277D84F90];
LABEL_59:
    result = sub_21DDF185C();
    v88 = result;
    v89 = v145;
    v90 = v129;
    v91 = v127;
    v92 = v120;
    v182 = *(result + 16);
    if (!v182)
    {
LABEL_86:

      sub_21DDF1E6C();
      v114 = sub_21DDF186C();
      return (*(*(v114 - 8) + 8))(v118, v114);
    }

    v93 = 0;
    v94 = MEMORY[0x277D84F90];
    v181 = (result + ((*(v127 + 80) + 32) & ~*(v127 + 80)));
    v180 = (v127 + 16);
    v189 = (v119 + 16);
    v187 = (v119 + 8);
    v188 = (v116 + 8);
    v186 = (v144 + 32);
    v178 = result;
    v179 = (v127 + 8);
    while (v93 < *(v88 + 16))
    {
      v185 = v94;
      (*(v91 + 16))(v92, &v181[*(v91 + 72) * v93], v90);
      v95 = sub_21DDF192C();
      v96 = *(v95 + 16);
      if (v96)
      {
        v184 = v93;
        v193 = MEMORY[0x277D84F90];
        sub_21DDD899C(0, v96, 0);
        v97 = v193;
        v98 = (*(v119 + 80) + 32) & ~*(v119 + 80);
        v183 = v95;
        v99 = v95 + v98;
        v100 = *(v119 + 72);
        v190 = *(v119 + 16);
        v191 = v100;
        do
        {
          v190(v153, v99, v154);
          v101 = v141;
          sub_21DDF18EC();
          sub_21DDF187C();
          v192 = v102;
          (*v188)(v101, v142);
          sub_21DDF18FC();
          sub_21DDF18DC();
          sub_21DDF190C();
          v103 = sub_21DDF18CC();
          v104 = *(v103 - 8);
          if ((*(v104 + 48))(v89, 1, v103) == 1)
          {
            sub_21DDDDB04(v89, &qword_27CE90B58, &qword_21DDF2FF0);
          }

          else
          {
            sub_21DDF18BC();
            (*(v104 + 8))(v89, v103);
          }

          v105 = v140;
          sub_21DDF1EEC();
          (*v187)(v153, v154);
          v193 = v97;
          v107 = *(v97 + 16);
          v106 = *(v97 + 24);
          if (v107 >= v106 >> 1)
          {
            sub_21DDD899C((v106 > 1), v107 + 1, 1);
            v97 = v193;
          }

          *(v97 + 16) = v107 + 1;
          (*(v144 + 32))(v97 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v107, v105, v143);
          v99 += v191;
          --v96;
          v89 = v145;
        }

        while (v96);
        v92 = v120;
        v90 = v129;
        (*v179)(v120, v129);

        v91 = v127;
        v88 = v178;
        v93 = v184;
      }

      else
      {

        result = (*v179)(v92, v90);
        v97 = MEMORY[0x277D84F90];
      }

      v108 = *(v97 + 16);
      v94 = v185;
      v109 = v185[2];
      v110 = v109 + v108;
      if (__OFADD__(v109, v108))
      {
        goto LABEL_93;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v110 > v94[3] >> 1)
      {
        if (v109 <= v110)
        {
          v111 = v109 + v108;
        }

        else
        {
          v111 = v109;
        }

        result = sub_21DDDB44C(result, v111, 1, v94);
        v94 = result;
      }

      v89 = v145;
      if (*(v97 + 16))
      {
        if ((v94[3] >> 1) - v94[2] < v108)
        {
          goto LABEL_98;
        }

        swift_arrayInitWithCopy();

        if (v108)
        {
          v112 = v94[2];
          v77 = __OFADD__(v112, v108);
          v113 = v112 + v108;
          if (v77)
          {
            goto LABEL_100;
          }

          v94[2] = v113;
        }
      }

      else
      {

        if (v108)
        {
          goto LABEL_94;
        }
      }

      v93 = (v93 + 1);
      if (v93 == v182)
      {
        goto LABEL_86;
      }
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
  }

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
  return result;
}

{
  v16[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B58, &qword_21DDF2FF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v16 - v4;
  v6 = sub_21DDF188C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AA0, &qword_21DDF2F10);
  sub_21DDF1EFC();
  *(swift_allocObject() + 16) = xmmword_21DDF2FE0;
  sub_21DDF18EC();
  v10 = sub_21DDF187C();
  v16[1] = v11;
  v16[2] = v10;
  (*(v7 + 8))(v9, v6);
  sub_21DDF18FC();
  sub_21DDF18DC();
  sub_21DDF190C();
  v12 = sub_21DDF18CC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    sub_21DDDDB04(v5, &qword_27CE90B58, &qword_21DDF2FF0);
  }

  else
  {
    sub_21DDF18BC();
    (*(v13 + 8))(v5, v12);
  }

  sub_21DDF1EEC();
  sub_21DDF1E6C();
  v14 = sub_21DDF191C();
  return (*(*(v14 - 8) + 8))(a1, v14);
}

{
  v80 = sub_21DDF1A2C();
  v4 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_21DDF1A0C();
  v6 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_21DDF19CC();
  v8 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B60, &qword_21DDF2FF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v53 - v11;
  v13 = sub_21DDF1E5C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v93 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_21DDF1A3C();
  v16 = *(v83 - 8);
  v17 = MEMORY[0x28223BE20](v83);
  v94 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v95 = v53 - v19;
  v20 = sub_21DDF189C();
  v21 = *(v20 + 16);
  if (!v21)
  {

    goto LABEL_21;
  }

  v53[1] = a2;
  v54 = a1;
  v23 = *(v16 + 16);
  v22 = v16 + 16;
  v91 = v23;
  v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
  v25 = v22;
  v53[0] = v20;
  v26 = v20 + v24;
  v27 = *(v25 + 56);
  v89 = (v25 + 72);
  v90 = v27;
  v88 = *MEMORY[0x277D79750];
  v78 = *MEMORY[0x277D79748];
  v70 = *MEMORY[0x277D79740];
  v86 = (v14 + 56);
  v87 = (v25 - 8);
  v92 = v25;
  v82 = (v25 + 80);
  v57 = (v8 + 32);
  v56 = (v8 + 8);
  v55 = *MEMORY[0x277D78698];
  v81 = (v14 + 104);
  v69 = (v6 + 32);
  v68 = (v6 + 8);
  v67 = *MEMORY[0x277D786A0];
  v76 = (v4 + 8);
  v77 = (v4 + 32);
  v75 = *MEMORY[0x277D786A8];
  v84 = (v14 + 32);
  v85 = (v14 + 48);
  v28 = MEMORY[0x277D84F90];
  v74 = v13;
  v73 = v14;
  v29 = v83;
  v30 = v94;
  do
  {
    v96 = v28;
    v31 = v95;
    v32 = v91;
    v91(v95, v26, v29);
    v32(v30, v31, v29);
    v33 = (*v89)(v30, v29);
    if (v33 == v88)
    {
      (*v82)(v30, v29);
      v35 = v79;
      v34 = v80;
      (*v77)(v79, v30, v80);
      sub_21DDF1A1C();
      sub_21DDF22AC();
      (*v76)(v35, v34);
      (*v87)(v31, v29);
      (*v81)(v12, v75, v13);
LABEL_11:
      (*v86)(v12, 0, 1, v13);
      goto LABEL_12;
    }

    if (v33 == v78)
    {
      (*v82)(v30, v29);
      v36 = v30;
      v37 = v71;
      v38 = v72;
      (*v69)(v71, v36, v72);
      sub_21DDF19EC();
      sub_21DDF19DC();
      sub_21DDF19FC();
      v29 = v83;
      v14 = v73;
      sub_21DDF262C();
      v39 = v38;
      v13 = v74;
      (*v68)(v37, v39);
      (*v87)(v95, v29);
      (*v81)(v12, v67, v13);
      goto LABEL_11;
    }

    if (v33 == v70)
    {
      (*v82)(v30, v29);
      v40 = v30;
      v41 = v58;
      v42 = v59;
      (*v57)(v58, v40, v59);
      sub_21DDF199C();
      v66 = sub_21DDF195C();
      v65 = v43;
      v64 = sub_21DDF19BC();
      v63 = v44;
      v62 = sub_21DDF198C();
      v61 = v45;
      v60 = sub_21DDF197C();
      sub_21DDF19AC();
      sub_21DDF196C();
      v29 = v83;
      v14 = v73;
      sub_21DDF25DC();
      v46 = v42;
      v13 = v74;
      (*v56)(v41, v46);
      (*v87)(v95, v29);
      (*v81)(v12, v55, v13);
      goto LABEL_11;
    }

    v50 = *v87;
    (*v87)(v95, v29);
    (*v86)(v12, 1, 1, v13);
    v50(v30, v29);
LABEL_12:
    v28 = v96;
    if ((*v85)(v12, 1, v13) == 1)
    {
      sub_21DDDDB04(v12, &qword_27CE90B60, &qword_21DDF2FF8);
    }

    else
    {
      v47 = *v84;
      (*v84)(v93, v12, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_21DDDB474(0, v28[2] + 1, 1, v28);
      }

      v49 = v28[2];
      v48 = v28[3];
      if (v49 >= v48 >> 1)
      {
        v28 = sub_21DDDB474((v48 > 1), v49 + 1, 1, v28);
      }

      v28[2] = v49 + 1;
      v47(v28 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v49, v93, v13);
      v29 = v83;
    }

    v30 = v94;
    v26 += v90;
    --v21;
  }

  while (v21);

  a1 = v54;
LABEL_21:
  sub_21DDF1E6C();
  v51 = sub_21DDF18AC();
  return (*(*(v51 - 8) + 8))(a1, v51);
}

uint64_t sub_21DDDDB04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21DDDDB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A80, &qword_21DDF3030);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21DDDA28C(a3, v25 - v10, &qword_27CE90A80, &qword_21DDF3030);
  v12 = sub_21DDF27CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21DDDDB04(v11, &qword_27CE90A80, &qword_21DDF3030);
  }

  else
  {
    sub_21DDF27BC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21DDF278C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21DDF275C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_21DDDDB04(a3, &qword_27CE90A80, &qword_21DDF3030);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21DDDDB04(a3, &qword_27CE90A80, &qword_21DDF3030);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t VisualActionPredictionClient.__allocating_init()()
{
  v0 = sub_21DDF26AC();
  MEMORY[0x28223BE20](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v2, *MEMORY[0x277D78CE8]);
  v4 = swift_allocObject();
  VisualActionPredictionClient.init(workflow:)(v2);
  return v4;
}

uint64_t VisualActionPredictionClient.__allocating_init(workflow:)(uint64_t a1)
{
  v2 = swift_allocObject();
  VisualActionPredictionClient.init(workflow:)(a1);
  return v2;
}

char *VisualActionPredictionClient.init(workflow:)(uint64_t a1)
{
  v62 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A80, &qword_21DDF3030);
  MEMORY[0x28223BE20](v1 - 8);
  v55 = &v50 - v2;
  v57 = sub_21DDF184C();
  v61 = *(v57 - 8);
  v3 = MEMORY[0x28223BE20](v57);
  v53 = v4;
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v60 = &v50 - v5;
  v6 = sub_21DDF26DC();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v56 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = &v50 - v9;
  v10 = sub_21DDF281C();
  MEMORY[0x28223BE20](v10);
  v11 = sub_21DDF282C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DDF271C();
  MEMORY[0x28223BE20](v15 - 8);
  sub_21DDDE898();
  sub_21DDF270C();
  (*(v12 + 104))(v14, *MEMORY[0x277D85268], v11);
  v63 = MEMORY[0x277D84F90];
  sub_21DDED4F0(&qword_281222820, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B68, &qword_21DDF3038);
  sub_21DDECB8C(&qword_281222830, &qword_27CE90B68, &qword_21DDF3038);
  v16 = v50;
  sub_21DDF285C();
  *(v16 + 16) = sub_21DDF284C();
  v17 = MEMORY[0x277D84F98];
  *(v16 + OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_customActionHandlerMap) = MEMORY[0x277D84F98];
  v18 = OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_lockedBundleRankingMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B70, &qword_21DDF3040);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v16 + v18) = v19;
  *(v19 + 16) = v17;
  v20 = v52;
  *(v16 + OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_fastBundleRankingThreshold) = 0x3FD0000000000000;
  sub_21DDF26BC();

  v21 = sub_21DDF26CC();
  v22 = sub_21DDF27EC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v63 = v24;
    *v23 = 136315394;
    v25 = sub_21DDF295C();
    v27 = sub_21DDEA3EC(v25, v26, &v63);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_21DDEA3EC(0x726F772874696E69, 0xEF293A776F6C666BLL, &v63);
    _os_log_impl(&dword_21DDD3000, v21, v22, "%s.%s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D49D80](v24, -1, -1);
    MEMORY[0x223D49D80](v23, -1, -1);
  }

  v52 = *(v58 + 8);
  (v52)(v20, v59);
  v28 = OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_workflow;
  v29 = sub_21DDF26AC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 16);
  v51 = v29;
  v31(v16 + v28, v62);
  sub_21DDF21EC();
  v32 = *(v16 + 16);
  sub_21DDED4F0(&qword_281222840, MEMORY[0x277D78888], MEMORY[0x277D78880]);
  v33 = v32;
  v34 = sub_21DDF24DC();

  *(v16 + 24) = v34;

  v35 = v60;
  sub_21DDF23DC();
  sub_21DDF201C();
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = v61;
  v38 = v54;
  v39 = v57;
  (*(v61 + 16))(v54, v35, v57);
  v40 = (*(v37 + 80) + 24) & ~*(v37 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v36;
  (*(v37 + 32))(v41 + v40, v38, v39);
  sub_21DDED4F0(&qword_281222860, MEMORY[0x277D78798], MEMORY[0x277D78790]);
  sub_21DDF23CC();

  sub_21DDF23FC();
  v42 = sub_21DDF27CC();
  v43 = v55;
  (*(*(v42 - 8) + 56))(v55, 1, 1, v42);
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = v16;

  sub_21DDDDB64(0, 0, v43, &unk_21DDF3050, v44);

  v45 = v56;
  sub_21DDF26BC();
  v46 = sub_21DDF26CC();
  v47 = sub_21DDF280C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_21DDD3000, v46, v47, "Client initialized", v48, 2u);
    MEMORY[0x223D49D80](v48, -1, -1);
  }

  (*(v30 + 8))(v62, v51);
  (v52)(v45, v59);
  (*(v61 + 8))(v60, v39);
  return v16;
}

unint64_t sub_21DDDE898()
{
  result = qword_281222818;
  if (!qword_281222818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281222818);
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

uint64_t sub_21DDDE92C(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v85 = a5;
  v94 = a3;
  v93 = a2;
  v84 = a1;
  v86 = sub_21DDF26EC();
  v91 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v89 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_21DDF271C();
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v87 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_21DDF184C();
  v105 = *(v110 - 8);
  v7 = *(v105 + 64);
  v8 = MEMORY[0x28223BE20](v110);
  v98 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v104 = &v74 - v10;
  MEMORY[0x28223BE20](v9);
  v82 = &v74 - v11;
  v81 = sub_21DDF201C();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = v12;
  v79 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DDF222C();
  v102 = *(v13 - 8);
  v103 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v97 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v15;
  MEMORY[0x28223BE20](v14);
  v108 = &v74 - v16;
  v109 = sub_21DDF1F6C();
  v101 = *(v109 - 8);
  v17 = *(v101 + 64);
  v18 = MEMORY[0x28223BE20](v109);
  v96 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v107 = &v74 - v19;
  v100 = sub_21DDF1E3C();
  v99 = *(v100 - 8);
  v20 = MEMORY[0x28223BE20](v100);
  v95 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v74 - v22;
  v24 = sub_21DDF240C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_21DDF203C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v92 = v23;
    v76 = v7;
    v33 = v84;
    v106 = Strong;
    sub_21DDF1FEC();
    sub_21DDF200C();
    sub_21DDF1FFC();
    v34 = v80;
    v35 = v79;
    v36 = v81;
    (*(v80 + 16))(v79, v33, v81);
    v37 = v105;
    v75 = *(v105 + 16);
    v38 = v82;
    v39 = v85;
    v85 = v17;
    v75(v82, v39, v110);
    v40 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v41 = *(v37 + 80);
    v42 = (v78 + v41 + v40) & ~v41;
    v43 = swift_allocObject();
    v44 = v94;
    *(v43 + 16) = v93;
    *(v43 + 24) = v44;
    v45 = *(v34 + 32);
    v46 = v43 + v40;
    v47 = v43;
    v78 = v43;
    v45(v46, v35, v36);
    v48 = *(v37 + 32);
    v84 = v37 + 32;
    v93 = v48;
    v49 = v110;
    v48(v47 + v42, v38, v110);
    v50 = v106;

    v51 = v104;
    sub_21DDF23DC();
    v94 = *(v50 + 16);
    v52 = v99;
    v53 = v100;
    (*(v99 + 16))(v95, v92, v100);
    v75(v98, v51, v49);
    v54 = v101;
    (*(v101 + 16))(v96, v107, v109);
    v55 = v102;
    (*(v102 + 16))(v97, v108, v103);
    v56 = (*(v52 + 80) + 24) & ~*(v52 + 80);
    v57 = (v77 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v41 + v57 + 16) & ~v41;
    v59 = (v76 + *(v54 + 80) + v58) & ~*(v54 + 80);
    v60 = (v85 + *(v55 + 80) + v59) & ~*(v55 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v106;
    (*(v52 + 32))(v61 + v56, v95, v53);
    v62 = (v61 + v57);
    v63 = v78;
    *v62 = sub_21DDED000;
    v62[1] = v63;
    v93(v61 + v58, v98, v110);
    (*(v54 + 32))(v61 + v59, v96, v109);
    v64 = v102;
    v65 = v61 + v60;
    v66 = v103;
    (*(v102 + 32))(v65, v97, v103);
    aBlock[4] = sub_21DDED0D8;
    aBlock[5] = v61;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21DDE49E4;
    aBlock[3] = &block_descriptor_103;
    v67 = _Block_copy(aBlock);

    v68 = v87;
    sub_21DDF26FC();
    v111 = MEMORY[0x277D84F90];
    sub_21DDED4F0(&qword_27CE90C40, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C48, &qword_21DDF31B8);
    sub_21DDECB8C(&qword_27CE90C50, &qword_27CE90C48, &qword_21DDF31B8);
    v69 = v89;
    v70 = v86;
    sub_21DDF285C();
    MEMORY[0x223D498A0](0, v68, v69, v67);
    _Block_release(v67);

    (*(v91 + 8))(v69, v70);
    (*(v88 + 8))(v68, v90);
    (*(v105 + 8))(v104, v110);
    (*(v64 + 8))(v108, v66);
    (*(v101 + 8))(v107, v109);
    (*(v99 + 8))(v92, v100);
  }

  else
  {
    v72 = *MEMORY[0x277D78AD0];
    v73 = sub_21DDF24AC();
    (*(*(v73 - 8) + 104))(v27, v72, v73);
    (*(v25 + 104))(v27, *MEMORY[0x277D78A40], v24);
    sub_21DDF202C();
    (v93)(v31);
    return (*(v29 + 8))(v31, v28);
  }
}

uint64_t sub_21DDDF544(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t), uint64_t a3)
{
  v7 = *(sub_21DDF184C() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_21DDDE92C(a1, a2, a3, v8, v9);
}

uint64_t sub_21DDDF5D0(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v32 = a3;
  v33 = a2;
  v6 = sub_21DDF24AC();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v31 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21DDF240C();
  v8 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_21DDF203C();
  v11 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C98, &qword_21DDF3228);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  sub_21DDDA28C(a1, &v26 - v15, &qword_27CE90C98, &qword_21DDF3228);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v28;
    (*(v28 + 32))(v31, v16, v6);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CA8, &qword_21DDF3238);
    v19 = v18[12];
    v20 = v18[16];
    v21 = &v10[v18[20]];
    sub_21DDF1FEC();
    v22 = sub_21DDF184C();
    (*(*(v22 - 8) + 16))(&v10[v19], v27, v22);
    v10[v20] = 1;
    sub_21DDED4F0(&qword_27CE90CB0, MEMORY[0x277D78B00], MEMORY[0x277D78B08]);
    v23 = v31;
    *v21 = sub_21DDF294C();
    v21[1] = v24;
    (*(v17 + 104))(v10, *MEMORY[0x277D78AB0], v6);
    (*(v8 + 104))(v10, *MEMORY[0x277D78A40], v29);
    sub_21DDF202C();
    v33(v13);
    (*(v11 + 8))(v13, v30);
    return (*(v17 + 8))(v23, v6);
  }

  else
  {
    (*(v8 + 104))(v10, *MEMORY[0x277D78A48], v29);
    sub_21DDF202C();
    v33(v13);
    return (*(v11 + 8))(v13, v30);
  }
}

uint64_t sub_21DDDF9E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21DDDA03C;

  return VisualActionPredictionClient.loadBundleRankingMap()();
}

uint64_t sub_21DDDFA78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21DDDA03C;

  return sub_21DDDF9E8();
}

uint64_t VisualActionPredictionClient.loadBundleRankingMap()()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B78, &qword_21DDF3060);
  v1[4] = swift_task_alloc();
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B80, &qword_21DDF3068);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B88, &qword_21DDF3070);
  v1[7] = swift_task_alloc();
  v2 = sub_21DDF251C();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_21DDF184C();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  sub_21DDF242C();
  v1[14] = swift_task_alloc();
  v4 = sub_21DDF1E8C();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B90, &qword_21DDF3078);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v5 = sub_21DDF1EDC();
  v1[22] = v5;
  v1[23] = *(v5 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v6 = sub_21DDF1F6C();
  v1[26] = v6;
  v1[27] = *(v6 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v7 = sub_21DDF254C();
  v1[31] = v7;
  v1[32] = *(v7 - 8);
  v1[33] = swift_task_alloc();
  v8 = sub_21DDF26DC();
  v1[34] = v8;
  v1[35] = *(v8 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DDDFF84, 0, 0);
}

uint64_t sub_21DDDFF84(uint64_t a1)
{
  sub_21DDF26BC();
  v2 = sub_21DDF26CC();
  v3 = sub_21DDF280C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21DDD3000, v2, v3, "Starting to load bundle ranking map...", v4, 2u);
    MEMORY[0x223D49D80](v4, -1, -1);
  }

  v5 = v1[38];
  v6 = v1[34];
  v7 = v1[35];

  v8 = *(v7 + 8);
  v1[39] = v8;
  v8(v5, v6);
  v9 = sub_21DDF1EAC();
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v1[27];
    v12 = v1[23];
    v13 = v1[16];
    v14 = v1[12];
    v43 = MEMORY[0x277D84F90];
    sub_21DDD89E0(0, v10, 0);
    v16 = *(v12 + 16);
    v15 = v12 + 16;
    v17 = v43;
    v18 = v9 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v36 = *(v15 + 56);
    v37 = v16;
    v35 = (v14 + 56);
    v34 = *MEMORY[0x277D786B8];
    v38 = v11;
    do
    {
      v41 = v17;
      v42 = v10;
      v19 = v1[25];
      v20 = v1[21];
      v40 = v1[22];
      v21 = v1[17];
      v39 = v1[15];
      v22 = v1[11];
      v37(v19, v18);
      sub_21DDF183C();
      (*v35)(v20, 0, 1, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B98, &qword_21DDF3080);
      sub_21DDF1E9C();
      *(swift_allocObject() + 16) = xmmword_21DDF2FE0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90BA0, &qword_21DDF3088);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_21DDF2FE0;
      *(v23 + 32) = sub_21DDF1ECC();
      *(v23 + 40) = v24;
      sub_21DDF241C();
      sub_21DDF22CC();
      (*(v13 + 104))(v21, v34, v39);
      sub_21DDF183C();
      sub_21DDF1E7C();
      sub_21DDF183C();
      v17 = v41;
      sub_21DDF1F4C();
      (*(v15 - 8))(v19, v40);
      v26 = *(v41 + 16);
      v25 = *(v41 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_21DDD89E0((v25 > 1), v26 + 1, 1);
        v17 = v41;
      }

      v27 = v1[30];
      v28 = v1[26];
      *(v17 + 16) = v26 + 1;
      (*(v38 + 32))(v17 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v26, v27, v28);
      v18 += v36;
      v10 = v42 - 1;
    }

    while (v42 != 1);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v1[40] = v17;
  v1[2] = v1[3];
  v29 = swift_task_alloc();
  v1[41] = v29;
  *(v29 + 16) = v1 + 2;
  *(v29 + 24) = v17;
  v30 = swift_task_alloc();
  v1[42] = v30;
  *v30 = v1;
  v30[1] = sub_21DDE0478;
  v31 = v1[33];
  v32 = v1[31];

  return MEMORY[0x2822008A0](v31, 0, 0, 0x646E75426B6E6172, 0xEF293A5F2873656CLL, sub_21DDEC2D8, v29, v32);
}

uint64_t sub_21DDE0478()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_21DDE0EBC;
  }

  else
  {

    v2 = sub_21DDE0594;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_21DDE0594()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = sub_21DDF253C();
  (*(v2 + 8))(v1, v3);
  v68 = *(v4 + 16);
  v62 = v0;
  if (!v68)
  {

    v12 = MEMORY[0x277D84F98];
    v13 = v0;
    goto LABEL_27;
  }

  v5 = 0;
  v6 = v0[9];
  v7 = *(v6 + 16);
  v6 += 16;
  v66 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v67 = v7;
  v8 = v0[27];
  v9 = v0[12];
  v79 = (v9 + 56);
  v10 = (v9 + 48);
  v71 = (v9 + 32);
  v75 = (v9 + 8);
  v77 = (v8 + 8);
  v60 = (v8 + 32);
  v61 = v8;
  v11 = v0[23];
  v58 = (v11 + 32);
  v59 = (v11 + 48);
  v57 = (v11 + 8);
  v12 = MEMORY[0x277D84F98];
  v76 = v0[5];
  v64 = (v6 - 8);
  v65 = v0[40];
  v63 = *(v6 + 56);
  v13 = v0;
  v78 = v10;
  v7(v13[10], v66, v13[8]);
  while (2)
  {
    v14 = *(v65 + 16);
    if (!v14)
    {
      goto LABEL_4;
    }

    v69 = v5;
    v70 = v12;
    v15 = v13[40] + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v80 = *(v61 + 72);
    v81 = *(v61 + 16);
    while (1)
    {
      v82 = v14;
      v19 = v13[19];
      v18 = v13[20];
      v20 = v13[11];
      v21 = v13[6];
      v81(v13[28], v15, v13[26]);
      sub_21DDF1F0C();
      sub_21DDF24EC();
      (*v79)(v19, 0, 1, v20);
      v22 = *(v76 + 48);
      sub_21DDDA28C(v18, v21, &qword_27CE90B90, &qword_21DDF3078);
      sub_21DDDA28C(v19, v21 + v22, &qword_27CE90B90, &qword_21DDF3078);
      v23 = *v78;
      if ((*v78)(v21, 1, v20) == 1)
      {
        break;
      }

      v24 = v13[11];
      sub_21DDDA28C(v13[6], v13[18], &qword_27CE90B90, &qword_21DDF3078);
      v25 = v23(v21 + v22, 1, v24);
      v26 = v13[19];
      v27 = v13[20];
      v28 = v13[18];
      if (v25 == 1)
      {
        v29 = v13[11];
        sub_21DDDDB04(v13[19], &qword_27CE90B90, &qword_21DDF3078);
        sub_21DDDDB04(v27, &qword_27CE90B90, &qword_21DDF3078);
        (*v75)(v28, v29);
        goto LABEL_9;
      }

      v73 = v13[20];
      v30 = v13[13];
      v31 = v13[11];
      v74 = v13[6];
      (*v71)(v30, v21 + v22, v31);
      sub_21DDED4F0(&qword_281222970, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v72 = sub_21DDF273C();
      v32 = *v75;
      (*v75)(v30, v31);
      sub_21DDDDB04(v26, &qword_27CE90B90, &qword_21DDF3078);
      sub_21DDDDB04(v73, &qword_27CE90B90, &qword_21DDF3078);
      v32(v28, v31);
      sub_21DDDDB04(v74, &qword_27CE90B90, &qword_21DDF3078);
      if (v72)
      {
        goto LABEL_17;
      }

LABEL_10:
      (*v77)(v13[28], v13[26]);
      v15 += v80;
      v14 = v82 - 1;
      if (v82 == 1)
      {
        v5 = v69;
        v12 = v70;
        goto LABEL_4;
      }
    }

    v16 = v13[20];
    v17 = v13[11];
    sub_21DDDDB04(v13[19], &qword_27CE90B90, &qword_21DDF3078);
    sub_21DDDDB04(v16, &qword_27CE90B90, &qword_21DDF3078);
    if (v23(v21 + v22, 1, v17) != 1)
    {
LABEL_9:
      sub_21DDDDB04(v13[6], &qword_27CE90B80, &qword_21DDF3068);
      goto LABEL_10;
    }

    sub_21DDDDB04(v13[6], &qword_27CE90B90, &qword_21DDF3078);
LABEL_17:
    v33 = v13[28];
    v34 = v13[29];
    v35 = v13[26];
    v36 = v62[7];
    (*v60)(v34, v33, v35);
    sub_21DDF1F3C();
    (*v77)(v34, v35);
    v37 = sub_21DDF22DC();
    v38 = *(v37 - 8);
    v39 = v36;
    v13 = v62;
    v12 = v70;
    if ((*(v38 + 48))(v39, 1, v37) == 1)
    {
      sub_21DDDDB04(v62[7], &qword_27CE90B88, &qword_21DDF3070);
      v5 = v69;
    }

    else
    {
      v40 = v62[7];
      v41 = sub_21DDF22BC();
      (*(v38 + 8))(v40, v37);
      if (*(v41 + 16))
      {
        v42 = v62[22];
        v43 = v62[4];

        sub_21DDF1EBC();
        if ((*v59)(v43, 1, v42) == 1)
        {
          sub_21DDDDB04(v62[4], &qword_27CE90B78, &qword_21DDF3060);
        }

        else
        {
          v44 = v62[24];
          v45 = v62[22];
          (*v58)(v44, v62[4], v45);
          sub_21DDF250C();
          v47 = v46;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_21DDEB5F8(v44, isUniquelyReferenced_nonNull_native, v47);
          (*v57)(v44, v45);
        }

        v5 = v69;
        v13 = v62;
      }

      else
      {

        v5 = v69;
        v13 = v62;
      }
    }

LABEL_4:
    ++v5;
    (*v64)(v13[10], v13[8]);
    if (v5 != v68)
    {
      v67(v13[10], v66 + v5 * v63, v13[8]);
      continue;
    }

    break;
  }

LABEL_27:
  v49 = v13;
  v50 = v13[43];
  v51 = v49[3];

  v52 = *(v51 + OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_lockedBundleRankingMap);
  *(swift_task_alloc() + 16) = v12;

  os_unfair_lock_lock((v52 + 24));
  sub_21DDEC2E0((v52 + 16));
  os_unfair_lock_unlock((v52 + 24));
  if (!v50)
  {

    sub_21DDF26BC();
    v53 = sub_21DDF26CC();
    v54 = sub_21DDF280C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_21DDD3000, v53, v54, "Bundle ranking map loaded successfully", v55, 2u);
      MEMORY[0x223D49D80](v55, -1, -1);
    }

    (v62[39])(v62[36], v62[34]);

    v56 = v62[1];

    v56();
  }
}

uint64_t sub_21DDE0EBC()
{
  v1 = *(v0 + 344);

  sub_21DDF26BC();
  MEMORY[0x223D49C80](v1);
  v2 = sub_21DDF26CC();
  v3 = sub_21DDF27FC();
  MEMORY[0x223D49C70](v1);
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 344);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x223D49C80](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_21DDD3000, v2, v3, "Error loading bundle ranking map: %@", v6, 0xCu);
    sub_21DDDDB04(v7, &qword_27CE90BA8, &unk_21DDF3090);
    MEMORY[0x223D49D80](v7, -1, -1);
    MEMORY[0x223D49D80](v6, -1, -1);

    MEMORY[0x223D49C70](v5);
  }

  else
  {
    MEMORY[0x223D49C70](*(v0 + 344));
  }

  (*(v0 + 312))(*(v0 + 296), *(v0 + 272));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t *VisualActionPredictionClient.deinit()
{
  v1 = v0;
  v2 = sub_21DDF26DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  sub_21DDF26BC();

  v9 = sub_21DDF26CC();
  v10 = sub_21DDF27EC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v29 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v30[0] = v13;
    *v12 = 136315394;
    v14 = sub_21DDF295C();
    v16 = sub_21DDEA3EC(v14, v15, v30);
    v28 = v6;
    v17 = v3;
    v18 = v16;

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_21DDEA3EC(0x74696E696564, 0xE600000000000000, v30);
    _os_log_impl(&dword_21DDD3000, v9, v10, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D49D80](v13, -1, -1);
    v19 = v12;
    v2 = v29;
    MEMORY[0x223D49D80](v19, -1, -1);

    v20 = *(v17 + 8);
    v20(v8, v2);
    v6 = v28;
  }

  else
  {

    v20 = *(v3 + 8);
    v20(v8, v2);
  }

  v30[0] = sub_21DDF295C();
  v30[1] = v21;
  MEMORY[0x223D497D0](46, 0xE100000000000000);
  MEMORY[0x223D497D0](0x74696E696564, 0xE600000000000000);
  sub_21DDF23EC();

  sub_21DDF26BC();
  v22 = sub_21DDF26CC();
  v23 = sub_21DDF280C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_21DDD3000, v22, v23, "Client deinitialized", v24, 2u);
    MEMORY[0x223D49D80](v24, -1, -1);
  }

  v20(v6, v2);

  v25 = OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_workflow;
  v26 = sub_21DDF26AC();
  (*(*(v26 - 8) + 8))(v1 + v25, v26);

  return v1;
}

uint64_t VisualActionPredictionClient.__deallocating_deinit()
{
  VisualActionPredictionClient.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21DDE15BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_21DDEB79C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = sub_21DDF1E3C();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v22;
  }

  else
  {
    v11 = sub_21DDEAA68(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        sub_21DDEBF04();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = sub_21DDF1E3C();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);

      sub_21DDEB2D8(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = sub_21DDF1E3C();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

uint64_t VisualActionPredictionClient.prewarm(callbackQueue:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a1;
  v4 = sub_21DDF26DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DDF20BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DDF20AC();
  Current = CFAbsoluteTimeGetCurrent();
  sub_21DDF26BC();
  v13 = sub_21DDF26CC();
  v14 = sub_21DDF280C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v20 = v8;
    v16 = v15;
    *v15 = 0;
    _os_log_impl(&dword_21DDD3000, v13, v14, "Sending prewarm request...", v15, 2u);
    v8 = v20;
    MEMORY[0x223D49D80](v16, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v17 = swift_allocObject();
  v17[2] = Current;
  *(v17 + 3) = v21;
  *(v17 + 4) = a3;
  sub_21DDED4F0(&qword_281222850, MEMORY[0x277D787C8], MEMORY[0x277D787C0]);

  sub_21DDF23BC();

  return (*(v9 + 8))(v11, v8);
}

uint64_t VisualActionPredictionClient.predictActions(for:options:callbackQueue:_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a5;
  v69 = a3;
  v72 = a4;
  v73 = a1;
  v61 = a2;
  v67 = sub_21DDF26DC();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_21DDF233C();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_21DDF221C();
  v75 = *(v71 - 8);
  v8 = MEMORY[0x28223BE20](v71);
  v56 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v63 = v12;
  v64 = &v56 - v11;
  MEMORY[0x28223BE20](v10);
  v70 = &v56 - v13;
  v57 = sub_21DDF1F9C();
  v14 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DDF26AC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21DDF1F6C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_21DDF207C();
  v66 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v21;
  v28 = v58;
  (*(v22 + 16))(v24, v73, v27);
  (*(v18 + 16))(v20, v59 + OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_workflow, v17);
  (*(v14 + 16))(v16, v61, v57);
  v29 = v70;
  v73 = v26;
  sub_21DDF206C();
  Current = CFAbsoluteTimeGetCurrent();
  sub_21DDF220C();
  sub_21DDF1F8C();
  v61 = sub_21DDF232C();
  v60[1](v7, v62);
  sub_21DDF26BC();
  v31 = sub_21DDF26CC();
  v32 = sub_21DDF280C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_21DDD3000, v31, v32, "Sending prediction request...", v33, 2u);
    MEMORY[0x223D49D80](v33, -1, -1);
  }

  (*(v65 + 8))(v28, v67);
  v34 = v75;
  v35 = *(v75 + 16);
  v36 = v64;
  v37 = v71;
  v62 = v75 + 16;
  v60 = v35;
  (v35)(v64, v29, v71);
  v38 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v39 = (v63 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = v29;
  v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v59 = *(v34 + 80);
  v43 = swift_allocObject();
  v44 = *(v34 + 32);
  v63 = v38;
  v45 = v43 + v38;
  v46 = v44;
  v44(v45, v36, v37);
  v67 = v39;
  *(v43 + v39) = Current;
  v65 = v41;
  v47 = (v43 + v41);
  v48 = v40;
  v49 = v68;
  *v47 = v72;
  v47[1] = v49;
  v50 = v61;
  *(v43 + v42) = v61;
  sub_21DDED4F0(&qword_281222858, MEMORY[0x277D787B8], MEMORY[0x277D787B0]);

  sub_21DDF23BC();

  if (v50)
  {
    v51 = v56;
    (v60)(v56, v40, v37);
    v52 = v65;
    v53 = swift_allocObject();
    v46(v53 + v63, v51, v37);
    *(v53 + v67) = Current;
    v54 = (v53 + v52);
    *v54 = v72;
    v54[1] = v49;

    sub_21DDF236C();

    v48 = v70;
    v37 = v71;
  }

  (*(v75 + 8))(v48, v37);
  return (*(v66 + 8))(v73, v74);
}

uint64_t sub_21DDE220C(uint64_t a1, double a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v46 = a5;
  v47 = a4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B08, &qword_21DDF31E0);
  MEMORY[0x28223BE20](v44);
  v45 = (&v41 - v9);
  v10 = sub_21DDF26DC();
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = sub_21DDF209C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C78, &qword_21DDF31E8);
  MEMORY[0x28223BE20](v20);
  v22 = (&v41 - v21);
  result = sub_21DDF21FC();
  if (result)
  {
    return result;
  }

  v24 = CFAbsoluteTimeGetCurrent() - a2;
  sub_21DDDA28C(a1, v22, &qword_27CE90C78, &qword_21DDF31E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v22;
    sub_21DDF26BC();
    MEMORY[0x223D49C80](v25);
    v26 = sub_21DDF26CC();
    v27 = sub_21DDF27FC();
    MEMORY[0x223D49C70](v25);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48 = v29;
      *v28 = 136315394;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v32 + 16))(&v41 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
      v33 = sub_21DDF274C();
      v35 = sub_21DDEA3EC(v33, v34, &v48);

      *(v28 + 4) = v35;
      *(v28 + 12) = 2050;
      *(v28 + 14) = v24;
      _os_log_impl(&dword_21DDD3000, v26, v27, "Received prediction failure %s. (latency = %{public}f)", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x223D49D80](v29, -1, -1);
      MEMORY[0x223D49D80](v28, -1, -1);
    }

    (*(v42 + 8))(v13, v43);
    v36 = v45;
    *v45 = v25;
    swift_storeEnumTagMultiPayload();
    MEMORY[0x223D49C80](v25);
    v47(v36);
    MEMORY[0x223D49C70](v25);
    result = sub_21DDDDB04(v36, &qword_27CE90B08, &qword_21DDF31E0);
    if (!a6)
    {
      return result;
    }

LABEL_10:

    sub_21DDF235C();
  }

  (*(v17 + 32))(v19, v22, v16);
  sub_21DDF26BC();
  v37 = sub_21DDF26CC();
  v38 = sub_21DDF280C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134349056;
    *(v39 + 4) = v24;
    _os_log_impl(&dword_21DDD3000, v37, v38, "Received prediction response. (latency = %{public}f)", v39, 0xCu);
    MEMORY[0x223D49D80](v39, -1, -1);
  }

  (*(v42 + 8))(v15, v43);
  v40 = v45;
  sub_21DDF208C();
  swift_storeEnumTagMultiPayload();
  v47(v40);
  sub_21DDDDB04(v40, &qword_27CE90B08, &qword_21DDF31E0);
  result = (*(v17 + 8))(v19, v16);
  if (a6)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t VisualActionPredictionClient.executeAction(_:for:with:options:callbackQueue:_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v81 = a7;
  v82 = a5;
  v85 = a6;
  v86 = a3;
  v73 = a4;
  v70 = a2;
  v68 = a1;
  v7 = sub_21DDF26DC();
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x28223BE20](v7);
  v72 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DDF233C();
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x28223BE20](v9);
  v69 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_21DDF221C();
  v88 = *(v84 - 8);
  v11 = MEMORY[0x28223BE20](v84);
  v61 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v77 = v15;
  v78 = &v61 - v14;
  MEMORY[0x28223BE20](v13);
  v83 = &v61 - v16;
  v67 = sub_21DDF24CC();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_21DDF26AC();
  v18 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_21DDF222C();
  v20 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21DDF1F6C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_21DDF1E4C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_21DDF20FC();
  v76 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v32 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v30, v68, v27);
  v33 = v71;
  (*(v24 + 16))(v26, v70, v23);
  (*(v20 + 16))(v22, v86, v62);
  (*(v18 + 16))(v63, v33 + OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_workflow, v64);
  (*(v66 + 16))(v65, v73, v67);
  v86 = v32;
  v34 = v72;
  v35 = v83;
  sub_21DDF20EC();
  Current = CFAbsoluteTimeGetCurrent();
  sub_21DDF220C();
  v37 = v69;
  sub_21DDF24BC();
  v73 = sub_21DDF232C();
  (*(v74 + 8))(v37, v75);
  sub_21DDF26BC();
  v38 = sub_21DDF26CC();
  v39 = sub_21DDF280C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_21DDD3000, v38, v39, "Sending execution request...", v40, 2u);
    MEMORY[0x223D49D80](v40, -1, -1);
  }

  (*(v79 + 8))(v34, v80);
  v41 = v88;
  v42 = v78;
  v43 = v84;
  v74 = *(v88 + 16);
  v75 = v88 + 16;
  (v74)(v78, v35, v84);
  v44 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v45 = (v77 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 23) & 0xFFFFFFFFFFFFFFF8;
  v72 = *(v41 + 80);
  v48 = swift_allocObject();
  v49 = *(v41 + 32);
  v77 = v44;
  v50 = v48 + v44;
  v51 = v49;
  v49(v50, v42, v43);
  v79 = v46;
  v80 = v45;
  *(v48 + v45) = Current;
  v52 = (v48 + v46);
  v53 = v35;
  v54 = v81;
  *v52 = v85;
  v52[1] = v54;
  v55 = v73;
  *(v48 + v47) = v73;
  sub_21DDED4F0(&qword_27CE90BB0, MEMORY[0x277D787E8], MEMORY[0x277D787E0]);

  sub_21DDF23BC();

  if (v55)
  {
    v56 = v61;
    (v74)(v61, v35, v43);
    v57 = v79;
    v58 = swift_allocObject();
    v51(v58 + v77, v56, v43);
    *(v58 + v80) = Current;
    v59 = (v58 + v57);
    *v59 = v85;
    v59[1] = v54;

    sub_21DDF236C();

    v53 = v83;
    v43 = v84;
  }

  (*(v88 + 8))(v53, v43);
  return (*(v76 + 8))(v86, v87);
}

uint64_t sub_21DDE30D8(uint64_t a1, double a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v46 = a5;
  v47 = a4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AF8, &qword_21DDF31D0);
  MEMORY[0x28223BE20](v44);
  v45 = (&v41 - v9);
  v10 = sub_21DDF26DC();
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = sub_21DDF211C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C70, &qword_21DDF31D8);
  MEMORY[0x28223BE20](v20);
  v22 = (&v41 - v21);
  result = sub_21DDF21FC();
  if (result)
  {
    return result;
  }

  v24 = CFAbsoluteTimeGetCurrent() - a2;
  sub_21DDDA28C(a1, v22, &qword_27CE90C70, &qword_21DDF31D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v22;
    sub_21DDF26BC();
    MEMORY[0x223D49C80](v25);
    v26 = sub_21DDF26CC();
    v27 = sub_21DDF27FC();
    MEMORY[0x223D49C70](v25);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48 = v29;
      *v28 = 136315394;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v32 + 16))(&v41 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
      v33 = sub_21DDF274C();
      v35 = sub_21DDEA3EC(v33, v34, &v48);

      *(v28 + 4) = v35;
      *(v28 + 12) = 2050;
      *(v28 + 14) = v24;
      _os_log_impl(&dword_21DDD3000, v26, v27, "Received execution failure: %s. (latency = %{public}f)", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x223D49D80](v29, -1, -1);
      MEMORY[0x223D49D80](v28, -1, -1);
    }

    (*(v42 + 8))(v13, v43);
    v36 = v45;
    *v45 = v25;
    swift_storeEnumTagMultiPayload();
    MEMORY[0x223D49C80](v25);
    v47(v36);
    MEMORY[0x223D49C70](v25);
    result = sub_21DDDDB04(v36, &qword_27CE90AF8, &qword_21DDF31D0);
    if (!a6)
    {
      return result;
    }

LABEL_10:

    sub_21DDF235C();
  }

  (*(v17 + 32))(v19, v22, v16);
  sub_21DDF26BC();
  v37 = sub_21DDF26CC();
  v38 = sub_21DDF280C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134349056;
    *(v39 + 4) = v24;
    _os_log_impl(&dword_21DDD3000, v37, v38, "Received execution response. (latency = %{public}f)", v39, 0xCu);
    MEMORY[0x223D49D80](v39, -1, -1);
  }

  (*(v42 + 8))(v15, v43);
  v40 = v45;
  sub_21DDF210C();
  swift_storeEnumTagMultiPayload();
  v47(v40);
  sub_21DDDDB04(v40, &qword_27CE90AF8, &qword_21DDF31D0);
  result = (*(v17 + 8))(v19, v16);
  if (a6)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_21DDE3668(uint64_t a1, double a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t *a6, uint64_t *a7, const char *a8)
{
  v26 = a8;
  v28 = a5;
  v29 = a4;
  v30 = a6;
  v31 = a7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  MEMORY[0x28223BE20](v27);
  v11 = (&v26 - v10);
  v12 = sub_21DDF26DC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DDF234C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a1, v16);
  LODWORD(a1) = (*(v17 + 88))(v19, v16);
  v20 = *MEMORY[0x277D789A0];
  result = (*(v17 + 8))(v19, v16);
  if (a1 == v20)
  {
    result = sub_21DDF21FC();
    if ((result & 1) == 0)
    {
      sub_21DDF26BC();
      v22 = sub_21DDF26CC();
      v23 = sub_21DDF27FC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134349056;
        *(v24 + 4) = CFAbsoluteTimeGetCurrent() - a2;
        _os_log_impl(&dword_21DDD3000, v22, v23, v26, v24, 0xCu);
        MEMORY[0x223D49D80](v24, -1, -1);
      }

      (*(v13 + 8))(v15, v12);
      sub_21DDF228C();
      sub_21DDED4F0(&qword_281222838, MEMORY[0x277D78990], MEMORY[0x277D78998]);
      v25 = swift_allocError();
      sub_21DDF227C();
      *v11 = v25;
      swift_storeEnumTagMultiPayload();
      v29(v11);
      return sub_21DDDDB04(v11, v30, v31);
    }
  }

  return result;
}

uint64_t VisualActionPredictionClient.sendFeedback(_:callbackQueue:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v4 = sub_21DDF26DC();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DDF26AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DDF269C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DDF20DC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v11;
  v20 = v30;
  (*(v12 + 16))(v14, v29, v19);
  (*(v8 + 16))(v10, v20 + OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_workflow, v7);
  sub_21DDF20CC();
  Current = CFAbsoluteTimeGetCurrent();
  sub_21DDF26BC();
  v22 = sub_21DDF26CC();
  v23 = sub_21DDF280C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_21DDD3000, v22, v23, "Sending feedback request...", v24, 2u);
    MEMORY[0x223D49D80](v24, -1, -1);
  }

  (*(v31 + 8))(v6, v32);
  v25 = swift_allocObject();
  v25[2] = Current;
  v26 = v34;
  *(v25 + 3) = v33;
  *(v25 + 4) = v26;
  sub_21DDED4F0(&qword_27CE90BB8, MEMORY[0x277D787D8], MEMORY[0x277D787D0]);

  sub_21DDF23BC();

  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_21DDE3D90(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5, const char *a6, const char *a7, double a8)
{
  v40 = a7;
  v41 = a3;
  v42 = a2;
  v13 = sub_21DDF26DC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  MEMORY[0x28223BE20](v20);
  v22 = (v39 - v21);
  v23 = CFAbsoluteTimeGetCurrent() - a8;
  sub_21DDDA28C(a1, v22, a4, a5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v22;
    sub_21DDF26BC();
    MEMORY[0x223D49C80](v24);
    v25 = sub_21DDF26CC();
    v26 = sub_21DDF27FC();
    MEMORY[0x223D49C70](v24);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43 = v28;
      *v27 = 136315394;
      ErrorValue = swift_getErrorValue();
      v39[1] = v39;
      MEMORY[0x28223BE20](ErrorValue);
      (*(v31 + 16))(v39 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
      v32 = sub_21DDF274C();
      v34 = sub_21DDEA3EC(v32, v33, &v43);

      *(v27 + 4) = v34;
      *(v27 + 12) = 2050;
      *(v27 + 14) = v23;
      _os_log_impl(&dword_21DDD3000, v25, v26, v40, v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x223D49D80](v28, -1, -1);
      MEMORY[0x223D49D80](v27, -1, -1);
    }

    (*(v14 + 8))(v17, v13);
    MEMORY[0x223D49C80](v24);
    v42(v24, 1);
    MEMORY[0x223D49C70](v24);
    return MEMORY[0x223D49C70](v24);
  }

  else
  {
    sub_21DDF26BC();
    v36 = sub_21DDF26CC();
    v37 = sub_21DDF280C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134349056;
      *(v38 + 4) = v23;
      _os_log_impl(&dword_21DDD3000, v36, v37, a6, v38, 0xCu);
      MEMORY[0x223D49D80](v38, -1, -1);
    }

    (*(v14 + 8))(v19, v13);
    v42(0, 0);
    return sub_21DDDDB04(v22, a4, a5);
  }
}

uint64_t VisualActionPredictionClient.registerCustomActionHandler(for:on:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a1;
  v6 = sub_21DDF26DC();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DDF1E3C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DDF205C();
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = *(v4 + 16);
  }

  v17 = swift_allocObject();
  v18 = v30;
  v19 = v31;
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v19;
  v20 = a2;
  v21 = v16;

  v22 = v32;
  sub_21DDE4A28(v32, sub_21DDEC704, v17);
  (*(v10 + 16))(v12, v22, v9);
  sub_21DDF204C();
  Current = CFAbsoluteTimeGetCurrent();
  sub_21DDF26BC();
  v24 = sub_21DDF26CC();
  v25 = sub_21DDF280C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_21DDD3000, v24, v25, "Sending custom action registration request (register)...", v26, 2u);
    MEMORY[0x223D49D80](v26, -1, -1);
  }

  (*(v33 + 8))(v8, v34);
  *(swift_allocObject() + 16) = Current;
  sub_21DDED4F0(&qword_27CE90BC0, MEMORY[0x277D787A8], MEMORY[0x277D787A0]);
  v27 = v36;
  sub_21DDF23BC();

  return (*(v35 + 8))(v15, v27);
}

uint64_t sub_21DDE4550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a7;
  v33 = a6;
  v42 = a5;
  v35 = a3;
  v36 = a4;
  v39 = sub_21DDF26EC();
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21DDF271C();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DDF222C();
  v31 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DDF1F6C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a1, v15);
  (*(v12 + 16))(v14, a2, v11);
  v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v20 = (v17 + *(v12 + 80) + v19) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v32;
  *(v22 + 16) = v33;
  *(v22 + 24) = v23;
  (*(v16 + 32))(v22 + v19, v18, v15);
  (*(v12 + 32))(v22 + v20, v14, v31);
  v24 = (v22 + v21);
  v25 = v36;
  *v24 = v35;
  v24[1] = v25;
  aBlock[4] = sub_21DDECCBC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21DDE49E4;
  aBlock[3] = &block_descriptor_80;
  v26 = _Block_copy(aBlock);

  v27 = v34;
  sub_21DDF26FC();
  v43 = MEMORY[0x277D84F90];
  sub_21DDED4F0(&qword_27CE90C40, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C48, &qword_21DDF31B8);
  sub_21DDECB8C(&qword_27CE90C50, &qword_27CE90C48, &qword_21DDF31B8);
  v28 = v37;
  v29 = v39;
  sub_21DDF285C();
  MEMORY[0x223D498A0](0, v27, v28, v26);
  _Block_release(v26);
  (*(v41 + 8))(v28, v29);
  (*(v38 + 8))(v27, v40);
}

uint64_t sub_21DDE49E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_21DDE4A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v46 = a2;
  v4 = sub_21DDF26EC();
  v53 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DDF271C();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DDF1E3C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v44 = v11;
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = sub_21DDF26DC();
  v42 = *(v14 - 8);
  v43 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DDF26BC();
  v41 = *(v9 + 16);
  v41(v13, a1, v8);
  v17 = sub_21DDF26CC();
  v18 = sub_21DDF27EC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = a1;
    v20 = v19;
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v20 = 136315138;
    sub_21DDED4F0(&qword_27CE90C58, MEMORY[0x277D78638], MEMORY[0x277D78650]);
    v21 = sub_21DDF290C();
    v40 = v4;
    v23 = v22;
    (*(v9 + 8))(v13, v8);
    v24 = sub_21DDEA3EC(v21, v23, aBlock);
    v4 = v40;

    *(v20 + 4) = v24;
    _os_log_impl(&dword_21DDD3000, v17, v18, "Adding custom action handler for %s...", v20, 0xCu);
    v25 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x223D49D80](v25, -1, -1);
    v26 = v20;
    a1 = v39;
    MEMORY[0x223D49D80](v26, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  (*(v42 + 8))(v16, v43);
  v27 = v47;
  v28 = v45;
  v41(v45, a1, v8);
  v29 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v30 = (v44 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v27;
  (*(v9 + 32))(v31 + v29, v28, v8);
  v32 = (v31 + v30);
  v33 = v48;
  *v32 = v46;
  v32[1] = v33;
  aBlock[4] = sub_21DDECBE0;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21DDE49E4;
  aBlock[3] = &block_descriptor_68;
  v34 = _Block_copy(aBlock);

  v35 = v49;
  sub_21DDF26FC();
  v54 = MEMORY[0x277D84F90];
  sub_21DDED4F0(&qword_27CE90C40, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C48, &qword_21DDF31B8);
  sub_21DDECB8C(&qword_27CE90C50, &qword_27CE90C48, &qword_21DDF31B8);
  v36 = v52;
  sub_21DDF285C();
  MEMORY[0x223D498A0](0, v35, v36, v34);
  _Block_release(v34);
  (*(v53 + 8))(v36, v4);
  (*(v50 + 8))(v35, v51);
}

uint64_t VisualActionPredictionClient.unregisterCustomActionHandler(for:)(uint64_t a1)
{
  v19 = sub_21DDF26DC();
  v3 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DDF1E3C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DDF205C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1;
  sub_21DDE5364(a1);
  (*(v7 + 16))(v9, a1, v6);
  sub_21DDF204C();
  Current = CFAbsoluteTimeGetCurrent();
  sub_21DDF26BC();
  v15 = sub_21DDF26CC();
  v16 = sub_21DDF280C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21DDD3000, v15, v16, "Sending custom action registration request (unregister)...", v17, 2u);
    MEMORY[0x223D49D80](v17, -1, -1);
  }

  (*(v3 + 8))(v5, v19);
  *(swift_allocObject() + 16) = Current;
  sub_21DDED4F0(&qword_27CE90BC0, MEMORY[0x277D787A8], MEMORY[0x277D787A0]);
  sub_21DDF23BC();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_21DDE5364(uint64_t a1)
{
  v2 = sub_21DDF26EC();
  v46 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v45 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DDF271C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v42 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DDF1E3C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v39 = v9;
  v40 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = sub_21DDF26DC();
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DDF26BC();
  v36 = *(v7 + 16);
  v36(v11, a1, v6);
  v15 = sub_21DDF26CC();
  v16 = sub_21DDF27EC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = a1;
    v18 = v17;
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v18 = 136315138;
    sub_21DDED4F0(&qword_27CE90C58, MEMORY[0x277D78638], MEMORY[0x277D78650]);
    v19 = sub_21DDF290C();
    v35 = v2;
    v21 = v20;
    (*(v7 + 8))(v11, v6);
    v22 = sub_21DDEA3EC(v19, v21, aBlock);
    v2 = v35;

    *(v18 + 4) = v22;
    _os_log_impl(&dword_21DDD3000, v15, v16, "Removing custom action handler for %s...", v18, 0xCu);
    v23 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x223D49D80](v23, -1, -1);
    v24 = v18;
    a1 = v34;
    MEMORY[0x223D49D80](v24, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  (*(v37 + 8))(v14, v38);
  v26 = v40;
  v25 = v41;
  v36(v40, a1, v6);
  v27 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  (*(v7 + 32))(v28 + v27, v26, v6);
  aBlock[4] = sub_21DDECB10;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21DDE49E4;
  aBlock[3] = &block_descriptor;
  v29 = _Block_copy(aBlock);

  v30 = v42;
  sub_21DDF26FC();
  v47 = MEMORY[0x277D84F90];
  sub_21DDED4F0(&qword_27CE90C40, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C48, &qword_21DDF31B8);
  sub_21DDECB8C(&qword_27CE90C50, &qword_27CE90C48, &qword_21DDF31B8);
  v31 = v45;
  sub_21DDF285C();
  MEMORY[0x223D498A0](0, v30, v31, v29);
  _Block_release(v29);
  (*(v46 + 8))(v31, v2);
  (*(v43 + 8))(v30, v44);
}

uint64_t sub_21DDE5938(uint64_t a1, double a2)
{
  v4 = sub_21DDF26DC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C38, &qword_21DDF31B0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v30 - v12);
  v14 = CFAbsoluteTimeGetCurrent() - a2;
  sub_21DDDA28C(a1, v13, &qword_27CE90C38, &qword_21DDF31B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v13;
    sub_21DDF26BC();
    MEMORY[0x223D49C80](v15);
    v16 = sub_21DDF26CC();
    v17 = sub_21DDF27FC();
    MEMORY[0x223D49C70](v15);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136315394;
      ErrorValue = swift_getErrorValue();
      v30 = &v30;
      MEMORY[0x28223BE20](ErrorValue);
      (*(v22 + 16))(&v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      v23 = sub_21DDF274C();
      v25 = sub_21DDEA3EC(v23, v24, &v31);

      *(v18 + 4) = v25;
      *(v18 + 12) = 2050;
      *(v18 + 14) = v14;
      _os_log_impl(&dword_21DDD3000, v16, v17, "Received custom action registration failure: %s. (latency = %{public}f)", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x223D49D80](v19, -1, -1);
      MEMORY[0x223D49D80](v18, -1, -1);

      MEMORY[0x223D49C70](v15);
    }

    else
    {
      MEMORY[0x223D49C70](v15);
    }

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_21DDF26BC();
    v26 = sub_21DDF26CC();
    v27 = sub_21DDF280C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134349056;
      *(v28 + 4) = v14;
      _os_log_impl(&dword_21DDD3000, v26, v27, "Received custom action registration response. (latency = %{public}f)", v28, 0xCu);
      MEMORY[0x223D49D80](v28, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    return sub_21DDDDB04(v13, &qword_27CE90C38, &qword_21DDF31B0);
  }
}

uint64_t VisualActionPredictionClient.isBundleEligibleForAcceleratedAction(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[0] = a1;
  v30 = a2;
  v31 = a3;
  v3 = sub_21DDF26DC();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DDF26AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DDF1F6C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DDF1FBC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v10;
  v19 = v27[1];
  (*(v11 + 16))(v13, v27[0], v18);
  (*(v7 + 16))(v9, v19 + OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_workflow, v6);
  sub_21DDF1FAC();
  Current = CFAbsoluteTimeGetCurrent();
  sub_21DDF26BC();
  v21 = sub_21DDF26CC();
  v22 = sub_21DDF280C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_21DDD3000, v21, v22, "Sending accelerated action eligibility request...", v23, 2u);
    MEMORY[0x223D49D80](v23, -1, -1);
  }

  (*(v28 + 8))(v5, v29);
  v24 = swift_allocObject();
  v24[2] = Current;
  v25 = v31;
  *(v24 + 3) = v30;
  *(v24 + 4) = v25;
  sub_21DDED4F0(&qword_27CE90BC8, MEMORY[0x277D78788], MEMORY[0x277D78780]);

  sub_21DDF23BC();

  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_21DDE60F8(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, double a4)
{
  v39 = a3;
  v40 = a2;
  v6 = sub_21DDF26DC();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = sub_21DDF1FDC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C30, &qword_21DDF31A8);
  MEMORY[0x28223BE20](v16);
  v18 = (&v36 - v17);
  v19 = CFAbsoluteTimeGetCurrent() - a4;
  sub_21DDDA28C(a1, v18, &qword_27CE90C30, &qword_21DDF31A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v18;
    sub_21DDF26BC();
    MEMORY[0x223D49C80](v20);
    v21 = sub_21DDF26CC();
    v22 = sub_21DDF27FC();
    MEMORY[0x223D49C70](v20);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41 = v24;
      *v23 = 136315394;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v27 + 16))(&v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
      v28 = sub_21DDF274C();
      v30 = sub_21DDEA3EC(v28, v29, &v41);

      *(v23 + 4) = v30;
      *(v23 + 12) = 2050;
      *(v23 + 14) = v19;
      _os_log_impl(&dword_21DDD3000, v21, v22, "Received accelerated action eligibility failure: %s. (latency = %{public}f)", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223D49D80](v24, -1, -1);
      MEMORY[0x223D49D80](v23, -1, -1);
    }

    (*(v37 + 8))(v9, v38);
    MEMORY[0x223D49C80](v20);
    v40(v20, 1);
    MEMORY[0x223D49C70](v20);
    return MEMORY[0x223D49C70](v20);
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    sub_21DDF26BC();
    v32 = sub_21DDF26CC();
    v33 = sub_21DDF280C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134349056;
      *(v34 + 4) = v19;
      _os_log_impl(&dword_21DDD3000, v32, v33, "Received accelerated action eligibility response. (latency = %{public}f)", v34, 0xCu);
      MEMORY[0x223D49D80](v34, -1, -1);
    }

    (*(v37 + 8))(v11, v38);
    v35 = sub_21DDF1FCC();
    v40(v35 & 1, 0);
    return (*(v13 + 8))(v15, v12);
  }
}

BOOL VisualActionPredictionClient.fastIsBundleEligibleForAcceleratedAction(for:)(uint64_t a1)
{
  v18 = sub_21DDF254C();
  v2 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DDF251C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A98, &qword_21DDF2F08);
  v9 = sub_21DDF1F6C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DDF2FE0;
  (*(v10 + 16))(v12 + v11, a1, v9);
  VisualActionPredictionClient.fastRankBundles(_:)(v12, v4);
  swift_setDeallocating();
  (*(v10 + 8))(v12 + v11, v9);
  swift_deallocClassInstance();
  v13 = sub_21DDF253C();
  (*(v2 + 8))(v4, v18);
  if (*(v13 + 16))
  {
    (*(v6 + 16))(v8, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

    sub_21DDF250C();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    return v15 > 0.25;
  }

  else
  {

    return 0;
  }
}

uint64_t VisualActionPredictionClient.fastRankBundles(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a1;
  v60 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B78, &qword_21DDF3060);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v55 - v3;
  v5 = sub_21DDF1EDC();
  v82 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v68 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B90, &qword_21DDF3078);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v55 - v8;
  v10 = sub_21DDF184C();
  v77 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v67 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90BD0, &qword_21DDF30A0);
  MEMORY[0x28223BE20](v14 - 8);
  v88 = &v55 - v15;
  v90 = sub_21DDF251C();
  v70 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v78 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_21DDF1F6C();
  v89 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21DDF26DC();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v57 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v55 - v23;
  Current = CFAbsoluteTimeGetCurrent();
  sub_21DDF26BC();
  v26 = sub_21DDF26CC();
  v27 = sub_21DDF280C();
  v28 = os_log_type_enabled(v26, v27);
  v79 = v5;
  if (v28)
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_21DDD3000, v26, v27, "Starting bundle ranking request...", v29, 2u);
    v30 = v29;
    v5 = v79;
    MEMORY[0x223D49D80](v30, -1, -1);
  }

  v31 = *(v20 + 8);
  v59 = v19;
  v58 = v20 + 8;
  v56 = v31;
  v31(v24, v19);
  v32 = *(v86 + 2);
  if (v32)
  {
    v76 = 0;
    v87 = *(v89 + 16);
    v33 = &v86[(*(v89 + 80) + 32) & ~*(v89 + 80)];
    v64 = OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_lockedBundleRankingMap;
    v75 = (v77 + 32);
    v85 = *(v89 + 72);
    v86 = v77 + 48;
    v74 = (v82 + 6);
    v63 = (v82 + 4);
    v89 += 16;
    v84 = (v89 - 8);
    v83 = (v70 + 56);
    v62 = (v82 + 1);
    v61 = (v77 + 16);
    v73 = (v77 + 8);
    v72 = (v70 + 48);
    v71 = (v70 + 32);
    v82 = MEMORY[0x277D84F90];
    v77 = v4;
    v35 = v80;
    v34 = v81;
    v66 = v9;
    v65 = v10;
    v87(v18, v33, v80);
    while (1)
    {
      sub_21DDF1F0C();
      if ((*v86)(v9, 1, v10) == 1)
      {
        break;
      }

      (*v75)(v34, v9, v10);
      sub_21DDF1F5C();
      if ((*v74)(v4, 1, v5) == 1)
      {
        sub_21DDDDB04(v4, &qword_27CE90B78, &qword_21DDF3060);
        (*v61)(v67, v34, v10);
        v36 = v88;
        sub_21DDF24FC();
        (*v84)(v18, v35);
        v37 = v90;
        (*v83)(v36, 0, 1, v90);
      }

      else
      {
        v38 = v68;
        v39 = (*v63)(v68, v4, v5);
        v40 = *(v69 + v64);
        MEMORY[0x28223BE20](v39);
        *(&v55 - 2) = v81;
        *(&v55 - 1) = v38;

        os_unfair_lock_lock((v40 + 24));
        v41 = v88;
        v42 = v76;
        sub_21DDEC738((v40 + 16));
        v36 = v41;
        v76 = v42;
        os_unfair_lock_unlock((v40 + 24));
        (*v84)(v18, v35);
        v4 = v77;
        v5 = v79;

        v37 = v90;
        (*v83)(v41, 0, 1, v90);
        v43 = v38;
        v9 = v66;
        v10 = v65;
        v34 = v81;
        (*v62)(v43, v5);
      }

      (*v73)(v34, v10);
      if ((*v72)(v36, 1, v37) == 1)
      {
        v35 = v80;
        goto LABEL_6;
      }

      v44 = *v71;
      (*v71)(v78, v36, v37);
      v45 = v82;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_21DDDB49C(0, v45[2] + 1, 1, v45);
      }

      v47 = v45[2];
      v46 = v45[3];
      if (v47 >= v46 >> 1)
      {
        v45 = sub_21DDDB49C((v46 > 1), v47 + 1, 1, v45);
      }

      v45[2] = v47 + 1;
      v48 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v82 = v45;
      v44(v45 + v48 + *(v70 + 72) * v47, v78, v90);
      v4 = v77;
      v5 = v79;
      v35 = v80;
LABEL_7:
      v33 += v85;
      if (!--v32)
      {
        goto LABEL_21;
      }

      v87(v18, v33, v35);
    }

    (*v84)(v18, v35);
    sub_21DDDDB04(v9, &qword_27CE90B90, &qword_21DDF3078);
    v36 = v88;
    (*v83)(v88, 1, 1, v90);
LABEL_6:
    sub_21DDDDB04(v36, &qword_27CE90BD0, &qword_21DDF30A0);
    goto LABEL_7;
  }

  v82 = MEMORY[0x277D84F90];
LABEL_21:
  v49 = CFAbsoluteTimeGetCurrent();
  v50 = v57;
  sub_21DDF26BC();
  v51 = sub_21DDF26CC();
  v52 = sub_21DDF280C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 134349056;
    *(v53 + 4) = v49 - Current;
    _os_log_impl(&dword_21DDD3000, v51, v52, "Finished bundle ranking request. (latency = %{public}f)", v53, 0xCu);
    MEMORY[0x223D49D80](v53, -1, -1);
  }

  v56(v50, v59);
  return sub_21DDF252C();
}

uint64_t VisualActionPredictionClient.rankBundles(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a2;
  v26 = a3;
  v24[0] = sub_21DDF26DC();
  v5 = *(v24[0] - 8);
  MEMORY[0x28223BE20](v24[0]);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DDF26AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DDF213C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v9 + 16);
  v24[1] = v4;
  v16(v11, v4 + OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_workflow, v8);

  sub_21DDF212C();
  Current = CFAbsoluteTimeGetCurrent();
  sub_21DDF26BC();
  v18 = sub_21DDF26CC();
  v19 = sub_21DDF280C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_21DDD3000, v18, v19, "Sending bundle ranking request...", v20, 2u);
    MEMORY[0x223D49D80](v20, -1, -1);
  }

  (*(v5 + 8))(v7, v24[0]);
  v21 = swift_allocObject();
  v21[2] = Current;
  v22 = v26;
  *(v21 + 3) = v25;
  *(v21 + 4) = v22;
  sub_21DDED4F0(&qword_281222848, MEMORY[0x277D787F8], MEMORY[0x277D787F0]);

  sub_21DDF23BC();

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_21DDE7668(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, double a4)
{
  v43 = a3;
  v44 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A88, &qword_21DDF2EF8);
  MEMORY[0x28223BE20](v41);
  v42 = (&v38 - v6);
  v7 = sub_21DDF26DC();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = sub_21DDF217C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C28, &qword_21DDF31A0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v38 - v18);
  v20 = CFAbsoluteTimeGetCurrent() - a4;
  sub_21DDDA28C(a1, v19, &qword_27CE90C28, &qword_21DDF31A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v19;
    sub_21DDF26BC();
    MEMORY[0x223D49C80](v21);
    v22 = sub_21DDF26CC();
    v23 = sub_21DDF27FC();
    MEMORY[0x223D49C70](v21);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45 = v25;
      *v24 = 136315394;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v28 + 16))(&v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      v29 = sub_21DDF274C();
      v31 = sub_21DDEA3EC(v29, v30, &v45);

      *(v24 + 4) = v31;
      *(v24 + 12) = 2050;
      *(v24 + 14) = v20;
      _os_log_impl(&dword_21DDD3000, v22, v23, "Received bundle ranking failure: %s. (latency = %{public}f)", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x223D49D80](v25, -1, -1);
      MEMORY[0x223D49D80](v24, -1, -1);
    }

    (*(v39 + 8))(v10, v40);
    v32 = v42;
    *v42 = v21;
    swift_storeEnumTagMultiPayload();
    MEMORY[0x223D49C80](v21);
    v44(v32);
    MEMORY[0x223D49C70](v21);
    return sub_21DDDDB04(v32, &qword_27CE90A88, &qword_21DDF2EF8);
  }

  else
  {
    (*(v14 + 32))(v16, v19, v13);
    sub_21DDF26BC();
    v34 = sub_21DDF26CC();
    v35 = sub_21DDF280C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134349056;
      *(v36 + 4) = v20;
      _os_log_impl(&dword_21DDD3000, v34, v35, "Received bundle ranking response. (latency = %{public}f)", v36, 0xCu);
      MEMORY[0x223D49D80](v36, -1, -1);
    }

    (*(v39 + 8))(v12, v40);
    v37 = v42;
    sub_21DDF216C();
    swift_storeEnumTagMultiPayload();
    v44(v37);
    sub_21DDDDB04(v37, &qword_27CE90A88, &qword_21DDF2EF8);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_21DDE7BC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DDF184C();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  if (*(*a1 + 16))
  {
    sub_21DDEA994(a3);
  }

  return sub_21DDF24FC();
}

uint64_t sub_21DDE7CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21DDF1E3C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DDF26DC();
  v28 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_customActionHandlerMap;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(a1 + v16);
  *(a1 + v16) = 0x8000000000000000;
  sub_21DDEB79C(sub_21DDECC74, v15, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + v16) = v29;
  swift_endAccess();
  sub_21DDF26BC();
  (*(v9 + 16))(v11, a2, v8);
  v18 = sub_21DDF26CC();
  v19 = sub_21DDF27EC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30[0] = v21;
    *v20 = 136315138;
    sub_21DDED4F0(&qword_27CE90C58, MEMORY[0x277D78638], MEMORY[0x277D78650]);
    v22 = sub_21DDF290C();
    v27 = v12;
    v24 = v23;
    (*(v9 + 8))(v11, v8);
    v25 = sub_21DDEA3EC(v22, v24, v30);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_21DDD3000, v18, v19, "Added custom action handler for %s.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x223D49D80](v21, -1, -1);
    MEMORY[0x223D49D80](v20, -1, -1);

    return (*(v28 + 8))(v14, v27);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    return (*(v28 + 8))(v14, v12);
  }
}

uint64_t sub_21DDE8048(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)(), uint64_t))
{
  v8 = *a3;
  v7 = a3[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  a4(a1, a2, sub_21DDECC7C, v9);
}

uint64_t sub_21DDE80F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DDF26DC();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DDF1E3C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(v7 + 16);
  v13(&v23 - v11, a2, v6);
  swift_beginAccess();
  sub_21DDE15BC(0, 0, v12);
  swift_endAccess();
  sub_21DDF26BC();
  v13(v10, a2, v6);
  v14 = sub_21DDF26CC();
  v15 = sub_21DDF27EC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26[0] = v17;
    *v16 = 136315138;
    sub_21DDED4F0(&qword_27CE90C58, MEMORY[0x277D78638], MEMORY[0x277D78650]);
    v18 = sub_21DDF290C();
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v21 = sub_21DDEA3EC(v18, v20, v26);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_21DDD3000, v14, v15, "Removed custom action handler for %s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x223D49D80](v17, -1, -1);
    MEMORY[0x223D49D80](v16, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  return (*(v24 + 8))(v5, v25);
}

uint64_t sub_21DDE8420(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a6;
  v41 = a7;
  v42 = a2;
  v43 = a5;
  v45 = a3;
  v46 = a4;
  v44 = sub_21DDF184C();
  v8 = *(v44 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v44);
  v39 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DDF1E3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C98, &qword_21DDF3228);
  MEMORY[0x28223BE20](v14);
  v16 = v37 - v15;
  v17 = OBJC_IVAR____TtC22VisualActionPrediction28VisualActionPredictionClient_customActionHandlerMap;
  swift_beginAccess();
  v18 = *(a1 + v17);
  v19 = v42;
  if (*(v18 + 16) && (v20 = sub_21DDEAA68(v42), (v21 & 1) != 0))
  {
    v22 = (*(v18 + 56) + 16 * v20);
    v23 = *v22;
    v37[1] = v22[1];
    v38 = v23;
    swift_endAccess();
    (*(v11 + 16))(v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v10);
    v24 = v39;
    v25 = v44;
    (*(v8 + 16))(v39, v43, v44);
    v26 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v27 = (v12 + *(v8 + 80) + v26) & ~*(v8 + 80);
    v28 = swift_allocObject();
    v29 = v46;
    *(v28 + 16) = v45;
    *(v28 + 24) = v29;
    (*(v11 + 32))(v28 + v26, v13, v10);
    (*(v8 + 32))(v28 + v27, v24, v25);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_21DDED3D4;
    *(v30 + 24) = v28;
    v47[0] = sub_21DDED4BC;
    v47[1] = v30;

    v38(v40, v41, v47);
  }

  else
  {
    swift_endAccess();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CA0, &qword_21DDF3230);
    v33 = *(v32 + 48);
    v34 = *(v32 + 64);
    (*(v11 + 16))(v16, v19, v10);
    (*(v8 + 16))(&v16[v33], v43, v44);
    v16[v34] = 1;
    v35 = *MEMORY[0x277D78AA8];
    v36 = sub_21DDF24AC();
    (*(*(v36 - 8) + 104))(v16, v35, v36);
    swift_storeEnumTagMultiPayload();
    v45(v16);
    return sub_21DDDDB04(v16, &qword_27CE90C98, &qword_21DDF3228);
  }
}

uint64_t sub_21DDE8834(uint64_t a1, char a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C98, &qword_21DDF3228);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  if (a2)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CA8, &qword_21DDF3238);
    v14 = v13[12];
    v15 = v13[16];
    v16 = &v12[v13[20]];
    v17 = sub_21DDF1E3C();
    (*(*(v17 - 8) + 16))(v12, a5, v17);
    v18 = sub_21DDF184C();
    (*(*(v18 - 8) + 16))(&v12[v14], a6, v18);
    v12[v15] = 1;
    swift_getErrorValue();
    *v16 = sub_21DDF294C();
    v16[1] = v19;
    v20 = *MEMORY[0x277D78AB0];
    v21 = sub_21DDF24AC();
    (*(*(v21 - 8) + 104))(v12, v20, v21);
  }

  swift_storeEnumTagMultiPayload();
  a3(v12);
  return sub_21DDDDB04(v12, &qword_27CE90C98, &qword_21DDF3228);
}

uint64_t VisualActionPredictionClient.clearDatabase(bundleId:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_21DDF215C();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DDE8C18, 0, 0);
}

uint64_t sub_21DDE8C18()
{

  sub_21DDF214C();

  return MEMORY[0x2822009F8](sub_21DDE8CA0, 0, 0);
}

uint64_t sub_21DDE8CA0()
{
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_21DDE8DDC;
  v1 = swift_continuation_init();
  *(swift_allocObject() + 16) = v1;
  sub_21DDED4F0(&qword_27CE90BD8, MEMORY[0x277D78808], MEMORY[0x277D78800]);
  sub_21DDF23BC();

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21DDE8DDC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 144) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_21DDE8F84;
  }

  else
  {
    v4 = v1[11];
    v1[19] = v1[10];
    v1[20] = v4;
    v3 = sub_21DDE8F00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21DDE8F00()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];
  v2 = v0[19];
  v3 = v0[20];

  return v1(v2, v3);
}

uint64_t sub_21DDE8F84()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t VisualActionPredictionClient.clearEngagementStream()()
{
  v1[12] = v0;
  v2 = sub_21DDF21DC();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DDE90C4, 0, 0);
}

uint64_t sub_21DDE90C4()
{
  sub_21DDF21CC();

  return MEMORY[0x2822009F8](sub_21DDE912C, 0, 0);
}

uint64_t sub_21DDE912C()
{
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_21DDE9268;
  v1 = swift_continuation_init();
  *(swift_allocObject() + 16) = v1;
  sub_21DDED4F0(&qword_27CE90BE0, MEMORY[0x277D78868], MEMORY[0x277D78860]);
  sub_21DDF23BC();

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21DDE9268()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 128) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_21DDE9410;
  }

  else
  {
    v4 = v1[11];
    v1[17] = v1[10];
    v1[18] = v4;
    v3 = sub_21DDE938C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21DDE938C()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];
  v2 = v0[17];
  v3 = v0[18];

  return v1(v2, v3);
}

uint64_t sub_21DDE9410()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21DDE9490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v11 = a3(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  MEMORY[0x28223BE20](v15);
  v17 = (&v25 - v16);
  sub_21DDDA28C(a1, &v25 - v16, a4, a5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C08, &qword_21DDF3178);
    swift_allocError();
    *v19 = v18;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    v21 = (*(v12 + 32))(v14, v17, v11);
    v22 = a6(v21);
    v23 = *(*(a2 + 64) + 40);
    *v23 = v22;
    v23[1] = v24;
    swift_continuation_throwingResume();
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t VisualActionPredictionClient.setDeviceState(appPopularityMap:timestamp:appCategoryMap:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 176) = a3;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  v6 = sub_21DDF219C();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DDE9740, 0, 0);
}

uint64_t sub_21DDE9740()
{

  sub_21DDF218C();

  return MEMORY[0x2822009F8](sub_21DDE97E8, 0, 0);
}

uint64_t sub_21DDE97E8()
{
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_21DDE9924;
  v1 = swift_continuation_init();
  *(swift_allocObject() + 16) = v1;
  sub_21DDED4F0(&qword_27CE90BE8, MEMORY[0x277D78828], MEMORY[0x277D78820]);
  sub_21DDF23BC();

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21DDE9924()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_21DDE9ACC;
  }

  else
  {
    v4 = v1[11];
    v1[20] = v1[10];
    v1[21] = v4;
    v3 = sub_21DDE9A48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21DDE9A48()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];
  v2 = v0[20];
  v3 = v0[21];

  return v1(v2, v3);
}

uint64_t sub_21DDE9ACC()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t VisualActionPredictionClient.populateDatabase(vectors:bundleIds:majorLabels:minorLabels:dates:actionIds:appsInFocus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[18] = a7;
  v8[19] = v7;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  v9 = sub_21DDF21BC();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21DDE9C18, 0, 0);
}

uint64_t sub_21DDE9C18()
{

  sub_21DDF21AC();

  return MEMORY[0x2822009F8](sub_21DDE9D00, 0, 0);
}

uint64_t sub_21DDE9D00()
{
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_21DDE9E3C;
  v1 = swift_continuation_init();
  *(swift_allocObject() + 16) = v1;
  sub_21DDED4F0(&qword_27CE90BF0, MEMORY[0x277D78848], MEMORY[0x277D78840]);
  sub_21DDF23BC();

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21DDE9E3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_21DDE9FE4;
  }

  else
  {
    v4 = v1[11];
    v1[24] = v1[10];
    v1[25] = v4;
    v3 = sub_21DDE9F60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21DDE9F60()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];
  v2 = v0[24];
  v3 = v0[25];

  return v1(v2, v3);
}

uint64_t sub_21DDE9FE4()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

unint64_t VisualActionPredictionClient.description.getter()
{
  v0 = sub_21DDF184C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = 0xE000000000000000;
  sub_21DDF28AC();

  v6 = 0xD000000000000024;
  v7 = 0x800000021DDF3C80;
  sub_21DDF23DC();
  sub_21DDED4F0(&qword_27CE90BF8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v4 = sub_21DDF290C();
  MEMORY[0x223D497D0](v4);

  (*(v1 + 8))(v3, v0);
  MEMORY[0x223D497D0](32032, 0xE200000000000000);
  return v6;
}

uint64_t sub_21DDEA1FC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21DDEA2F4;

  return v6(a1);
}

uint64_t sub_21DDEA2F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_21DDEA3EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21DDEA4B8(v11, 0, 0, 1, a1, a2);
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
    sub_21DDECE34(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21DDEA4B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21DDEA5C4(a5, a6);
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
    result = sub_21DDF28CC();
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

void *sub_21DDEA5C4(uint64_t a1, unint64_t a2)
{
  v3 = sub_21DDEA610(a1, a2);
  sub_21DDEA740(&unk_282F22068);
  return v3;
}

void *sub_21DDEA610(uint64_t a1, unint64_t a2)
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

  v6 = sub_21DDEA82C(v5, 0);
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

  result = sub_21DDF28CC();
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
        v10 = sub_21DDF277C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21DDEA82C(v10, 0);
        result = sub_21DDF289C();
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

uint64_t sub_21DDEA740(uint64_t result)
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

  result = sub_21DDEA8A0(result, v11, 1, v3);
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

void *sub_21DDEA82C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C90, &qword_21DDF3208);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21DDEA8A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C90, &qword_21DDF3208);
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

unint64_t sub_21DDEA994(uint64_t a1)
{
  sub_21DDF1EDC();
  v2 = MEMORY[0x277D78738];
  sub_21DDED4F0(qword_281222870, MEMORY[0x277D78738], MEMORY[0x277D78748]);
  v3 = sub_21DDF272C();
  return sub_21DDEBAF0(a1, v3, MEMORY[0x277D78738], &qword_281222868, v2, MEMORY[0x277D78750]);
}

unint64_t sub_21DDEAA68(uint64_t a1)
{
  sub_21DDF1E3C();
  v2 = MEMORY[0x277D78638];
  sub_21DDED4F0(&qword_27CE90A70, MEMORY[0x277D78638], MEMORY[0x277D78640]);
  v3 = sub_21DDF272C();
  return sub_21DDEBAF0(a1, v3, MEMORY[0x277D78638], &qword_27CE90A78, v2, MEMORY[0x277D78648]);
}

uint64_t sub_21DDEAB3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_21DDF1EDC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C88, &unk_21DDF31F8);
  v39 = v4;
  result = sub_21DDF28FC();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v19 = v6;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v41 = *(v19 + 72);
      v26 = v25 + v41 * v24;
      if (v39)
      {
        (*v40)(v42, v26, v43);
      }

      else
      {
        (*v37)(v42, v26, v43);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_21DDED4F0(qword_281222870, MEMORY[0x277D78738], MEMORY[0x277D78748]);
      result = sub_21DDF272C();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v40)(*(v11 + 48) + v41 * v20, v42, v43);
      *(*(v11 + 56) + 8 * v20) = v27;
      ++*(v11 + 16);
      v19 = v38;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_21DDEAF00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_21DDF1E3C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C60, &qword_21DDF31C0);
  v38 = v4;
  result = sub_21DDF28FC();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v38)
      {
        (*v39)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v35)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      sub_21DDED4F0(&qword_27CE90A70, MEMORY[0x277D78638], MEMORY[0x277D78640]);
      result = sub_21DDF272C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v39)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_21DDEB2D8(int64_t a1, uint64_t a2)
{
  v40 = sub_21DDF1E3C();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_21DDF286C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_21DDED4F0(&qword_27CE90A70, MEMORY[0x277D78638], MEMORY[0x277D78640]);
      v23 = sub_21DDF272C();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_21DDEB5F8(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_21DDF1EDC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_21DDEA994(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = v13;
    v19 = v12[3];
    if (v19 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v20 = *v4;
      if (v18)
      {
LABEL_8:
        *(v20[7] + 8 * v14) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v19 >= result && (a2 & 1) == 0)
    {
      result = sub_21DDEBC90();
      goto LABEL_7;
    }

    sub_21DDEAB3C(result, a2 & 1);
    result = sub_21DDEA994(a1);
    if ((v18 & 1) == (v21 & 1))
    {
      v14 = result;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v11, a1, v8);
      return sub_21DDEB978(v14, v11, v20, a3);
    }
  }

  result = sub_21DDF293C();
  __break(1u);
  return result;
}

uint64_t sub_21DDEB79C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_21DDF1E3C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_21DDEAA68(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_21DDEBF04();
      goto LABEL_9;
    }

    sub_21DDEAF00(v18, a4 & 1);
    v21 = sub_21DDEAA68(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_21DDF293C();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_21DDEBA30(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_21DDEB978(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_21DDF1EDC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_21DDEBA30(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_21DDF1E3C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_21DDEBAF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_21DDED4F0(v23, v24, v25);
      v19 = sub_21DDF273C();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

void *sub_21DDEBC90()
{
  v1 = v0;
  v29 = sub_21DDF1EDC();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C88, &unk_21DDF31F8);
  v3 = *v0;
  v4 = sub_21DDF28EC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; *(*(v23 + 56) + 8 * v17) = v22)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v31;
      v19 = *(v31 + 72) * v17;
      v20 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 48) + v19, v29);
      v22 = *(*(v3 + 56) + 8 * v17);
      v23 = v30;
      result = (*(v18 + 32))(*(v30 + 48) + v19, v20, v21);
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_21DDEBF04()
{
  v1 = v0;
  v30 = sub_21DDF1E3C();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90C60, &qword_21DDF31C0);
  v3 = *v0;
  v4 = sub_21DDF28EC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; result = )
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
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

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_21DDEC184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A90, &qword_21DDF2F00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  VisualActionPredictionClient.rankBundles(_:_:)(a3, sub_21DDECDB8, v10);
}

uint64_t sub_21DDEC2E0(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

uint64_t objectdestroy_13Tm()
{
  v1 = sub_21DDF221C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_21DDEC46C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  v4 = *(sub_21DDF221C() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8.n128_u64[0] = *(v2 + v6);
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v2 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + v9);

  return a2(a1, v2 + v5, v11, v12, v13, v8);
}

uint64_t objectdestroy_16Tm()
{
  v1 = sub_21DDF221C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_21DDEC5FC(uint64_t a1, uint64_t *a2, uint64_t *a3, const char *a4, ...)
{
  v9 = *(sub_21DDF221C() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_21DDE3668(a1, *(v4 + v11), v4 + v10, *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), a2, a3, a4);
}

uint64_t type metadata accessor for VisualActionPredictionClient(uint64_t a1)
{
  result = qword_281222940;
  if (!qword_281222940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DDEC904(uint64_t a1)
{
  result = sub_21DDF26AC();
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

uint64_t objectdestroy_2Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_21DDECB10()
{
  v1 = *(sub_21DDF1E3C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_21DDE80F0(v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21DDECB8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21DDECBE0()
{
  v1 = *(sub_21DDF1E3C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_21DDE7CD8(v3, v0 + v2, v5, v6);
}

uint64_t sub_21DDECC7C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_21DDECCBC()
{
  v1 = *(sub_21DDF1F6C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_21DDF222C() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(v0 + 16))(v0 + v2, v0 + v5, *v6, v6[1]);
}

uint64_t sub_21DDECDB8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90A90, &qword_21DDF2F00);

  return sub_21DDD8358(a1);
}

uint64_t sub_21DDECE34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21DDECE90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DDED544;

  return sub_21DDEA1FC(a1, v4);
}

uint64_t sub_21DDECF48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21DDDA03C;

  return sub_21DDEA1FC(a1, v4);
}

uint64_t sub_21DDED000(uint64_t a1)
{
  v3 = *(sub_21DDF201C() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_21DDF184C() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21DDDF5D0(a1, v7, v8, v1 + v4, v9);
}

uint64_t sub_21DDED0D8()
{
  v1 = *(sub_21DDF1E3C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_21DDF184C() - 8);
  v5 = (v3 + *(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_21DDF1F6C() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_21DDF222C() - 8);
  v11 = *(v0 + 16);
  v12 = *(v0 + v3);
  v13 = *(v0 + v3 + 8);
  v14 = v0 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_21DDE8420(v11, v0 + v2, v12, v13, v0 + v5, v0 + v8, v14);
}

uint64_t objectdestroy_96Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = sub_21DDF184C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v6 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v4 | v9;

  (*(v3 + 8))(v1 + v5, v2);
  (*(v8 + 8))(v1 + v10, v7);

  return MEMORY[0x2821FE8E8](v1, v10 + v11, v12 | 7);
}

uint64_t sub_21DDED3D4(uint64_t a1, char a2)
{
  v5 = *(sub_21DDF1E3C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_21DDF184C() - 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_21DDE8834(a1, a2 & 1, v9, v10, v2 + v6, v11);
}

uint64_t sub_21DDED4F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t VerticalIntegrationContentClassification.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CB8, &qword_21DDF3240);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B78, &qword_21DDF3060);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  if (sub_21DDF1B7C())
  {
    sub_21DDF1BAC();
    sub_21DDED7F4(v6, v12);
    sub_21DDDDB04(v6, &qword_27CE90CB8, &qword_21DDF3240);
    sub_21DDF1B8C();
    sub_21DDDA28C(v12, v10, &qword_27CE90B78, &qword_21DDF3060);
    sub_21DDF25BC();
    v13 = sub_21DDF1BBC();
    (*(*(v13 - 8) + 8))(a1, v13);
    sub_21DDDDB04(v12, &qword_27CE90B78, &qword_21DDF3060);
    v14 = sub_21DDF25CC();
    return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
  }

  else
  {
    v16 = sub_21DDF1BBC();
    (*(*(v16 - 8) + 8))(a1, v16);
    v17 = sub_21DDF25CC();
    v18 = *(*(v17 - 8) + 56);

    return v18(a2, 1, 1, v17);
  }
}

uint64_t sub_21DDED7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CB8, &qword_21DDF3240);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  sub_21DDDA28C(a1, &v19 - v8, &qword_27CE90CB8, &qword_21DDF3240);
  v10 = sub_21DDF1B9C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_2;
  }

  sub_21DDDA28C(v9, v7, &qword_27CE90CB8, &qword_21DDF3240);
  v13 = (*(v11 + 88))(v7, v10);
  if (v13 == *MEMORY[0x277D4B610])
  {
    v14 = MEMORY[0x277D786F0];
LABEL_31:
    v15 = *v14;
    v16 = sub_21DDF1EDC();
    v17 = *(v16 - 8);
    (*(v17 + 104))(a2, v15, v16);
    (*(v17 + 56))(a2, 0, 1, v16);
    return sub_21DDDDB04(v9, &qword_27CE90CB8, &qword_21DDF3240);
  }

  if (v13 == *MEMORY[0x277D4B630])
  {
    v14 = MEMORY[0x277D78710];
    goto LABEL_31;
  }

  if (v13 == *MEMORY[0x277D4B628])
  {
    v14 = MEMORY[0x277D78708];
    goto LABEL_31;
  }

  if (v13 == *MEMORY[0x277D4B5E8])
  {
    v14 = MEMORY[0x277D786C8];
    goto LABEL_31;
  }

  if (v13 == *MEMORY[0x277D4B620])
  {
    v14 = MEMORY[0x277D78700];
    goto LABEL_31;
  }

  if (v13 == *MEMORY[0x277D4B5F8])
  {
    v14 = MEMORY[0x277D786D8];
    goto LABEL_31;
  }

  if (v13 == *MEMORY[0x277D4B650])
  {
    v14 = MEMORY[0x277D78730];
    goto LABEL_31;
  }

  if (v13 == *MEMORY[0x277D4B618])
  {
    v14 = MEMORY[0x277D786F8];
    goto LABEL_31;
  }

  if (v13 == *MEMORY[0x277D4B648])
  {
    v14 = MEMORY[0x277D78728];
    goto LABEL_31;
  }

  if (v13 == *MEMORY[0x277D4B608])
  {
    v14 = MEMORY[0x277D786E0];
    goto LABEL_31;
  }

  if (v13 == *MEMORY[0x277D4B640])
  {
    v14 = MEMORY[0x277D78720];
    goto LABEL_31;
  }

  if (v13 == *MEMORY[0x277D4B638])
  {
    v14 = MEMORY[0x277D78718];
    goto LABEL_31;
  }

  if (v13 == *MEMORY[0x277D4B5F0])
  {
    v14 = MEMORY[0x277D786D0];
    goto LABEL_31;
  }

  if (v13 == *MEMORY[0x277D4B600])
  {
    v14 = MEMORY[0x277D786E8];
    goto LABEL_31;
  }

  (*(v11 + 8))(v7, v10);
LABEL_2:
  v12 = sub_21DDF1EDC();
  (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  return sub_21DDDDB04(v9, &qword_27CE90CB8, &qword_21DDF3240);
}

uint64_t static DetectedEntity.detectedEntity(for:)@<X0>(uint64_t a1@<X8>)
{
  v141 = a1;
  v120 = sub_21DDF1D4C();
  v118 = *(v120 - 8);
  v1 = MEMORY[0x28223BE20](v120);
  v117 = v111 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v116 = v111 - v3;
  v122 = sub_21DDF260C();
  v121 = *(v122 - 8);
  v4 = MEMORY[0x28223BE20](v122);
  v119 = v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v123 = v111 - v6;
  v125 = sub_21DDF238C();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v126 = v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_21DDF1B1C();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v112 = v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CC0, &qword_21DDF3248);
  MEMORY[0x28223BE20](v9 - 8);
  v113 = v111 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CC8, &qword_21DDF3250);
  MEMORY[0x28223BE20](v11 - 8);
  v135 = v111 - v12;
  v140 = sub_21DDF182C();
  v143 = *(v140 - 8);
  v13 = MEMORY[0x28223BE20](v140);
  v134 = v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v133 = v111 - v15;
  v138 = sub_21DDF1B6C();
  v142 = *(v138 - 8);
  v16 = MEMORY[0x28223BE20](v138);
  v136 = v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v132 = v111 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CD0, &qword_21DDF3258);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v139 = v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v137 = v111 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CD8, &qword_21DDF3260);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v111 - v24;
  v130 = sub_21DDF22FC();
  MEMORY[0x28223BE20](v130);
  v129 = v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CE0, &qword_21DDF3268);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = v111 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CE8, &qword_21DDF3270);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = (v111 - v31);
  v33 = sub_21DDF267C();
  v127 = *(v33 - 8);
  v128 = v33;
  MEMORY[0x28223BE20](v33);
  v131 = v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_21DDF1C0C();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = v111 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_21DDF1ABC();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = (v111 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DDF1ACC();
  v43 = (*(v40 + 88))(v42, v39);
  if (v43 == *MEMORY[0x277D4B4F8])
  {
    (*(v40 + 96))(v42, v39);
    v44 = *v42;
    sub_21DDF1BEC();
    v45 = sub_21DDF1E1C();
    v129 = v46;
    v130 = v45;

    sub_21DDF1BEC();
    v47 = sub_21DDF1E2C();
    v127 = v48;
    v128 = v47;

    sub_21DDF1BEC();
    v126 = sub_21DDF1E0C();
    v125 = v49;

    sub_21DDF1BEC();
    sub_21DDF1DFC();

    sub_21DDF17FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CF0, &qword_21DDF3278);
    v50 = *(sub_21DDF249C() - 8);
    v123 = ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_21DDF2FE0;
    v131 = v44;
    sub_21DDF1BEC();
    sub_21DDF1DEC();

    v51 = v132;
    sub_21DDF1D8C();

    v52 = v133;
    sub_21DDF181C();
    v53 = v137;
    sub_21DDF1B5C();
    v111[1] = v25;
    v69 = v143;
    v70 = *(v143 + 8);
    v71 = v140;
    v70(v52, v140);
    v72 = v142[1];
    ++v142;
    v72(v51, v138);
    v73 = *(v69 + 56);
    v143 = v69 + 56;
    v73(v53, 0, 1, v71);
    sub_21DDF1BEC();
    sub_21DDF1DEC();

    sub_21DDF1D7C();

    v74 = v134;
    sub_21DDF181C();
    sub_21DDF1B5C();
    v75 = v140;
    v70(v74, v140);
    v72(v136, v138);
    v73(v139, 0, 1, v75);
    sub_21DDF1BEC();
    sub_21DDF1DEC();

    sub_21DDF1DDC();

    sub_21DDEF360(v135);

    sub_21DDF244C();
    v76 = v141;
    sub_21DDF229C();

    v77 = MEMORY[0x277D789C8];
LABEL_8:
    v78 = *v77;
    v79 = sub_21DDF237C();
    v80 = *(v79 - 8);
    (*(v80 + 104))(v76, v78, v79);
    return (*(v80 + 56))(v76, 0, 1, v79);
  }

  if (v43 != *MEMORY[0x277D4B500])
  {
    if (v43 == *MEMORY[0x277D4B4F0])
    {
      (*(v40 + 96))(v42, v39);
      (*(v124 + 104))(v126, *MEMORY[0x277D78A28], v125);
      sub_21DDF1BCC();
      sub_21DDF1BDC();
      v76 = v141;
      sub_21DDF239C();

      v77 = MEMORY[0x277D789E8];
      goto LABEL_8;
    }

    if (v43 == *MEMORY[0x277D4B4E8])
    {
      (*(v40 + 96))(v42, v39);
      sub_21DDF1A9C();
      sub_21DDF1AAC();
      v76 = v141;
      sub_21DDF243C();

      v77 = MEMORY[0x277D789F0];
      goto LABEL_8;
    }

    if (v43 != *MEMORY[0x277D4B510])
    {
      if (v43 == *MEMORY[0x277D4B4E0])
      {
        (*(v40 + 96))(v42, v39);
        sub_21DDF1B4C();
        v100 = sub_21DDF1B2C();
        sub_21DDF0D80(v100);

        sub_21DDF1B3C();
        v101 = v112;
        sub_21DDF1B0C();
        v102 = v113;
        sub_21DDEF63C(v101, v113);
        (*(v114 + 8))(v101, v115);
        v103 = sub_21DDF225C();
        (*(*(v103 - 8) + 56))(v102, 0, 1, v103);
        v76 = v141;
        sub_21DDF226C();

        v77 = MEMORY[0x277D789B0];
        goto LABEL_8;
      }

      v105 = *MEMORY[0x277D4B508];
      v106 = v43;
      v107 = sub_21DDF237C();
      result = (*(*(v107 - 8) + 56))(v141, 1, 1, v107);
      if (v106 != v105)
      {
        return (*(v40 + 8))(v42, v39);
      }

      return result;
    }

    (*(v40 + 96))(v42, v39);
    v92 = v116;
    sub_21DDF1D5C();
    v93 = v118;
    v94 = v117;
    v95 = v120;
    (*(v118 + 32))(v117, v92, v120);
    v96 = (*(v93 + 88))(v94, v95);
    if (v96 == *MEMORY[0x277D4B680])
    {
      v97 = v121;
      v98 = v119;
      v99 = v122;
      (*(v121 + 104))(v119, *MEMORY[0x277D78C50], v122);
    }

    else
    {
      v99 = v122;
      v97 = v121;
      v98 = v119;
      if (v96 == *MEMORY[0x277D4B688])
      {
        v104 = MEMORY[0x277D78C58];
      }

      else
      {
        if (v96 != *MEMORY[0x277D4B690])
        {
          v109 = *MEMORY[0x277D4B698];
          v110 = v96;
          (*(v121 + 104))(v119, *MEMORY[0x277D78C68], v122);
          if (v110 != v109)
          {
            (*(v93 + 8))(v94, v95);
          }

          goto LABEL_28;
        }

        v104 = MEMORY[0x277D78C60];
      }

      (*(v121 + 104))(v119, *v104, v122);
    }

LABEL_28:
    (*(v97 + 32))(v123, v98, v99);
    sub_21DDF1D3C();
    v108 = sub_21DDF1D6C();
    sub_21DDF0F98(v108);

    v76 = v141;
    sub_21DDF261C();

    v77 = MEMORY[0x277D78A10];
    goto LABEL_8;
  }

  (*(v40 + 96))(v42, v39);
  v54 = *v42;
  sub_21DDF1C5C();
  v55 = (*(v36 + 88))(v38, v35);
  if (v55 == *MEMORY[0x277D4B678])
  {
    *v32 = sub_21DDF1C8C();
    v32[1] = v56;
    v57 = *MEMORY[0x277D78C88];
    v58 = sub_21DDF265C();
    v59 = v54;
    v60 = *(v58 - 8);
    (*(v60 + 104))(v32, v57, v58);
    (*(v60 + 56))(v32, 0, 1, v58);
    sub_21DDF1D1C();
    sub_21DDF1D2C();
    sub_21DDF263C();
    v61 = sub_21DDF264C();
    (*(*(v61 - 8) + 56))(v29, 0, 1, v61);
    v62 = v131;
    sub_21DDF266C();
    (*(v127 + 104))(v62, *MEMORY[0x277D78C90], v128);
    v63 = sub_21DDF1CAC();
    v143 = sub_21DDEFD54(v63);

    v140 = v59;
    v64 = sub_21DDF1C7C();
    v142 = sub_21DDEFEF8(v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CF8, &qword_21DDF3280);
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90D00, &qword_21DDF3288) - 8);
    v139 = ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_21DDF2FE0;
    sub_21DDF1D0C();
    sub_21DDF1CEC();
    sub_21DDF1CCC();
    sub_21DDF1CDC();
    sub_21DDF1CBC();
    sub_21DDF1CFC();
    sub_21DDF22EC();
    sub_21DDF23AC();

    v66 = sub_21DDF1C6C();
    sub_21DDF0110(v66);

    v67 = sub_21DDF1C9C();
    sub_21DDF0388(v67);

    v68 = v141;
    sub_21DDF268C();
  }

  else
  {
    if (v55 != *MEMORY[0x277D4B670])
    {

      v91 = sub_21DDF237C();
      (*(*(v91 - 8) + 56))(v141, 1, 1, v91);
      return (*(v36 + 8))(v38, v35);
    }

    sub_21DDF1C8C();
    v82 = v131;
    sub_21DDF263C();
    (*(v127 + 104))(v82, *MEMORY[0x277D78C80], v128);
    v83 = sub_21DDF1CAC();
    v143 = sub_21DDEFD54(v83);

    v84 = sub_21DDF1C7C();
    v142 = sub_21DDEFEF8(v84);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CF8, &qword_21DDF3280);
    v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90D00, &qword_21DDF3288) - 8);
    v139 = ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_21DDF2FE0;
    sub_21DDF1D0C();
    v137 = sub_21DDF1CEC();
    sub_21DDF1CCC();
    sub_21DDF1CDC();
    sub_21DDF1CBC();
    sub_21DDF1CFC();
    sub_21DDF22EC();
    sub_21DDF23AC();

    v86 = sub_21DDF1C6C();
    sub_21DDF0110(v86);

    v87 = sub_21DDF1C9C();
    sub_21DDF0388(v87);

    v68 = v141;
    sub_21DDF268C();
  }

  v88 = *MEMORY[0x277D78A18];
  v89 = sub_21DDF237C();
  v90 = *(v89 - 8);
  (*(v90 + 104))(v68, v88, v89);
  return (*(v90 + 56))(v68, 0, 1, v89);
}

uint64_t sub_21DDEF360@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21DDF1DBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90D08, &qword_21DDF3290);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_21DDF246C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  sub_21DDF1DCC();
  sub_21DDEFB08(v5, v8);
  (*(v3 + 8))(v5, v2);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21DDDDB04(v8, &qword_27CE90D08, &qword_21DDF3290);
    v16 = 1;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v13, v15, v9);
    v17 = sub_21DDF1D9C();
    sub_21DDF0754(v17);

    sub_21DDF247C();
    (*(v10 + 8))(v15, v9);
    v16 = 0;
  }

  v18 = sub_21DDF248C();
  return (*(*(v18 - 8) + 56))(a1, v16, 1, v18);
}

uint64_t sub_21DDEF63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DDF1B1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D4B590])
  {
    v9 = MEMORY[0x277D78938];
LABEL_51:
    v11 = *v9;
    v12 = sub_21DDF225C();
    return (*(*(v12 - 8) + 104))(a2, v11, v12);
  }

  if (v8 == *MEMORY[0x277D4B530])
  {
    v9 = MEMORY[0x277D788D8];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B5C8])
  {
    v9 = MEMORY[0x277D78970];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B5B0])
  {
    v9 = MEMORY[0x277D78958];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B540])
  {
    v9 = MEMORY[0x277D788E8];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B5E0])
  {
    v9 = MEMORY[0x277D78988];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B5D0])
  {
    v9 = MEMORY[0x277D78978];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B588])
  {
    v9 = MEMORY[0x277D78930];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B5A8])
  {
    v9 = MEMORY[0x277D78950];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B570])
  {
    v9 = MEMORY[0x277D78918];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B518])
  {
    v9 = MEMORY[0x277D788C0];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B520])
  {
    v9 = MEMORY[0x277D788C8];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B538])
  {
    v9 = MEMORY[0x277D788E0];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B598])
  {
    v9 = MEMORY[0x277D78940];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B550])
  {
    v9 = MEMORY[0x277D788F8];
    goto LABEL_51;
  }

  v10 = v8;
  if (v8 == *MEMORY[0x277D4B560])
  {
    v9 = MEMORY[0x277D78908];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B568])
  {
    v9 = MEMORY[0x277D78910];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B5C0])
  {
    v9 = MEMORY[0x277D78968];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B5A0])
  {
    v9 = MEMORY[0x277D78948];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B5D8])
  {
    v9 = MEMORY[0x277D78980];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B558])
  {
    v9 = MEMORY[0x277D78900];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B528])
  {
    v9 = MEMORY[0x277D788D0];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B578])
  {
    v9 = MEMORY[0x277D78920];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B5B8])
  {
    v9 = MEMORY[0x277D78960];
    goto LABEL_51;
  }

  if (v8 == *MEMORY[0x277D4B548])
  {
    v9 = MEMORY[0x277D788F0];
    goto LABEL_51;
  }

  v14 = *MEMORY[0x277D4B580];
  v15 = *MEMORY[0x277D78928];
  v16 = sub_21DDF225C();
  result = (*(*(v16 - 8) + 104))(a2, v15, v16);
  if (v10 != v14)
  {
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_21DDEFB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DDF1DBC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D4B6E0])
  {
    v9 = MEMORY[0x277D78A90];
LABEL_7:
    v10 = *v9;
    v11 = sub_21DDF246C();
    v12 = *(v11 - 8);
    (*(v12 + 104))(a2, v10, v11);
    return (*(v12 + 56))(a2, 0, 1, v11);
  }

  if (v8 == *MEMORY[0x277D4B6E8])
  {
    v9 = MEMORY[0x277D78A98];
    goto LABEL_7;
  }

  if (v8 == *MEMORY[0x277D4B6F0])
  {
    v9 = MEMORY[0x277D78AA0];
    goto LABEL_7;
  }

  v14 = *MEMORY[0x277D4B6D8];
  v15 = v8;
  v16 = sub_21DDF246C();
  result = (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  if (v15 != v14)
  {
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_21DDEFD54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AC0, &qword_21DDF2F30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - v4;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v14 = MEMORY[0x277D84F90];
    sub_21DDD8894(0, v6, 0);
    v7 = v14;
    v8 = (a1 + 40);
    do
    {
      v9 = *v8;
      v13[1] = *(v8 - 1);
      v13[2] = v9;

      sub_21DDF23AC();
      v14 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21DDD8894((v10 > 1), v11 + 1, 1);
        v7 = v14;
      }

      *(v7 + 16) = v11 + 1;
      (*(v3 + 32))(v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v5, v2);
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_21DDEFEF8(unint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AC0, &qword_21DDF2F30);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v14 - v3;
  if (a1 >> 62)
  {
    v5 = sub_21DDF28DC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x277D84F90];
  result = sub_21DDD8894(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v19;
    v9 = a1;
    v15 = a1 & 0xC000000000000001;
    v10 = a1;
    do
    {
      if (v15)
      {
        MEMORY[0x223D49920](v8, v9);
      }

      else
      {
      }

      v17 = sub_21DDF1C2C();
      v18 = v11;
      sub_21DDF1C1C();
      sub_21DDF23AC();

      v19 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21DDD8894((v12 > 1), v13 + 1, 1);
        v6 = v19;
      }

      ++v8;
      *(v6 + 16) = v13 + 1;
      (*(v2 + 32))(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13, v4, v16);
      v9 = v10;
    }

    while (v5 != v8);
    return v6;
  }

  __break(1u);
  return result;
}

void *sub_21DDF0110(unint64_t a1)
{
  v16 = sub_21DDF231C();
  MEMORY[0x28223BE20](v16);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90AB0, &qword_21DDF2F20);
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = v13 - v3;
  if (a1 >> 62)
  {
    v5 = sub_21DDF28DC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_21DDD88D4(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v17;
    v9 = a1;
    v13[1] = v2 + 32;
    v14 = a1 & 0xC000000000000001;
    v10 = a1;
    do
    {
      if (v14)
      {
        MEMORY[0x223D49920](v8, v9);
      }

      else
      {
      }

      sub_21DDF1C3C();
      sub_21DDF1C4C();
      sub_21DDF230C();
      sub_21DDF23AC();

      v17 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_21DDD88D4((v11 > 1), v12 + 1, 1);
        v6 = v17;
      }

      ++v8;
      *(v6 + 16) = v12 + 1;
      (*(v2 + 32))(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12, v4, v15);
      v9 = v10;
    }

    while (v5 != v8);
    return v6;
  }

  __break(1u);
  return result;
}

char *sub_21DDF0388(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90CD8, &qword_21DDF3260);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_21DDF180C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v28 = &v23 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90B40, &qword_21DDF2FC8);
  v10 = MEMORY[0x28223BE20](v32);
  v27 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v31 = &v23 - v13;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v24 = (v6 + 16);
  v25 = (v6 + 32);
  v23 = (v6 + 8);
  v26 = v12;
  v30 = (v12 + 32);
  v15 = a1 + 40;
  v16 = MEMORY[0x277D84F90];
  v17 = v27;
  do
  {

    sub_21DDF17FC();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      sub_21DDDDB04(v4, &qword_27CE90CD8, &qword_21DDF3260);
    }

    else
    {
      v18 = v28;
      (*v25)(v28, v4, v5);
      (*v24)(v29, v18, v5);
      sub_21DDF23AC();

      (*v23)(v18, v5);
      v19 = *v30;
      (*v30)(v31, v17, v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_21DDDB234(0, *(v16 + 2) + 1, 1, v16);
      }

      v21 = *(v16 + 2);
      v20 = *(v16 + 3);
      if (v21 >= v20 >> 1)
      {
        v16 = sub_21DDDB234((v20 > 1), v21 + 1, 1, v16);
      }

      *(v16 + 2) = v21 + 1;
      v19(&v16[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21], v31, v32);
    }

    v15 += 16;
    --v14;
  }

  while (v14);
  return v16;
}

void *sub_21DDF0754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90D10, &qword_21DDF3298);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v52 = &v34[-v6];
  v7 = sub_21DDF245C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_21DDF1DAC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v34[-v16];
  v18 = *(a1 + 16);
  if (v18)
  {
    v20 = *(v12 + 16);
    v19 = v12 + 16;
    v21 = a1 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v60 = *(v19 + 56);
    v61 = v20;
    v58 = (v19 + 72);
    v59 = (v19 + 16);
    v57 = *MEMORY[0x277D4B6A8];
    v48 = *MEMORY[0x277D4B6B8];
    v46 = *MEMORY[0x277D4B6D0];
    v44 = *MEMORY[0x277D4B6C8];
    v42 = *MEMORY[0x277D4B6A0];
    v40 = *MEMORY[0x277D4B6C0];
    v38 = *MEMORY[0x277D4B6B0];
    v56 = (v8 + 56);
    v36 = (v19 - 8);
    v35 = *MEMORY[0x277D78A60];
    v53 = (v8 + 104);
    v37 = *MEMORY[0x277D78A70];
    v39 = *MEMORY[0x277D78A50];
    v41 = *MEMORY[0x277D78A78];
    v43 = *MEMORY[0x277D78A80];
    v55 = (v8 + 48);
    v45 = *MEMORY[0x277D78A68];
    v54 = (v8 + 32);
    v47 = *MEMORY[0x277D78A58];
    v62 = MEMORY[0x277D84F90];
    v50 = v10;
    v51 = v8;
    v22 = v52;
    v49 = &v34[-v16];
    v20(v17, v21, v11);
    while (1)
    {
      (*v59)(v15, v17, v11);
      v23 = (*v58)(v15, v11);
      if (v23 == v57)
      {
        break;
      }

      if (v23 == v48)
      {
        (*v53)(v5, v45, v7);
        goto LABEL_20;
      }

      if (v23 == v46)
      {
        (*v53)(v5, v43, v7);
        goto LABEL_20;
      }

      if (v23 == v44)
      {
        (*v53)(v5, v41, v7);
        goto LABEL_20;
      }

      if (v23 == v42)
      {
        (*v53)(v5, v39, v7);
        goto LABEL_20;
      }

      if (v23 == v40)
      {
        (*v53)(v5, v37, v7);
        goto LABEL_20;
      }

      if (v23 == v38)
      {
        (*v53)(v5, v35, v7);
        goto LABEL_20;
      }

      (*v56)(v5, 1, 1, v7);
      (*v36)(v15, v11);
LABEL_21:
      sub_21DDF1124(v5, v22);
      if ((*v55)(v22, 1, v7) == 1)
      {
        sub_21DDDDB04(v22, &qword_27CE90D10, &qword_21DDF3298);
      }

      else
      {
        v24 = v11;
        v25 = v15;
        v26 = v5;
        v27 = v19;
        v28 = *v54;
        (*v54)(v10, v22, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_21DDDB424(0, v62[2] + 1, 1, v62);
        }

        v30 = v62[2];
        v29 = v62[3];
        if (v30 >= v29 >> 1)
        {
          v62 = sub_21DDDB424((v29 > 1), v30 + 1, 1, v62);
        }

        v31 = v62;
        v62[2] = v30 + 1;
        v32 = v31 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v30;
        v10 = v50;
        v28(v32, v50, v7);
        v19 = v27;
        v5 = v26;
        v22 = v52;
        v15 = v25;
        v11 = v24;
        v17 = v49;
      }

      v21 += v60;
      if (!--v18)
      {
        return v62;
      }

      v61(v17, v21, v11);
    }

    (*v53)(v5, v47, v7);
LABEL_20:
    (*v56)(v5, 0, 1, v7);
    goto LABEL_21;
  }

  return MEMORY[0x277D84F90];
}

void *sub_21DDF0D80(unint64_t a1)
{
  v13 = sub_21DDF224C();
  v2 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v5 = sub_21DDF28DC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v14 = MEMORY[0x277D84F90];
  result = sub_21DDD8914(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v14;
    v12 = a1 & 0xC000000000000001;
    do
    {
      if (v12)
      {
        MEMORY[0x223D49920](v8);
      }

      else
      {
      }

      sub_21DDF1AEC();
      sub_21DDF1ADC();
      sub_21DDF1AFC();
      sub_21DDF223C();

      v14 = v6;
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_21DDD8914((v9 > 1), v10 + 1, 1);
        v6 = v14;
      }

      ++v8;
      *(v6 + 16) = v10 + 1;
      (*(v2 + 32))(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v10, v4, v13);
    }

    while (v5 != v8);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DDF0F98(uint64_t a1)
{
  v2 = sub_21DDF25FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v13 = MEMORY[0x277D84F90];
    sub_21DDD8958(0, v6, 0);
    v7 = v13;
    v8 = a1 + 40;
    do
    {

      sub_21DDF25EC();
      v13 = v7;
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_21DDD8958((v9 > 1), v10 + 1, 1);
        v7 = v13;
      }

      *(v7 + 16) = v10 + 1;
      (*(v3 + 32))(v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v5, v2);
      v8 += 16;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_21DDF1124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90D10, &qword_21DDF3298);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AppleFoundationModelResult.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90D18, &unk_21DDF32A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_21DDF25CC();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DDF1BBC();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = sub_21DDF259C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_21DDF1BFC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v21, a1, v18);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == *MEMORY[0x277D4B658])
  {
    (*(v19 + 96))(v21, v18);

    StructuredExtraction.init(from:)(v23, v17);
    (*(v15 + 104))(v17, *MEMORY[0x277D78C10], v14);
    sub_21DDF25AC();

    return (*(v19 + 8))(a1, v18);
  }

  else
  {
    v34 = a1;
    if (v22 == *MEMORY[0x277D4B660])
    {
      (*(v19 + 96))(v21, v18);
      v25 = v38;
      v26 = v21;
      v27 = v39;
      (*(v38 + 32))(v13, v26, v39);
      (*(v25 + 16))(v11, v13, v27);
      VerticalIntegrationContentClassification.init(from:)(v11, v5);
      v28 = v36;
      v29 = v37;
      if ((*(v36 + 48))(v5, 1, v37) == 1)
      {
        sub_21DDF1794(v5);
        (*(v15 + 104))(v17, *MEMORY[0x277D78C18], v14);
        sub_21DDF25AC();
        (*(v19 + 8))(v34, v18);
      }

      else
      {
        (*(v28 + 32))(v35, v5, v29);
        v31 = v35;
        (*(v28 + 16))(v17, v35, v29);
        (*(v15 + 104))(v17, *MEMORY[0x277D78C08], v14);
        sub_21DDF25AC();
        (*(v19 + 8))(v34, v18);
        (*(v28 + 8))(v31, v29);
      }

      return (*(v25 + 8))(v13, v39);
    }

    else if (v22 == *MEMORY[0x277D4B668])
    {
      (*(v19 + 96))(v21, v18);
      v30 = v21[1];
      *v17 = *v21;
      v17[1] = v30;
      (*(v15 + 104))(v17, *MEMORY[0x277D78C20], v14);
      sub_21DDF25AC();
      return (*(v19 + 8))(v34, v18);
    }

    else
    {
      (*(v15 + 104))(v17, *MEMORY[0x277D78C18], v14);
      sub_21DDF25AC();
      v32 = *(v19 + 8);
      v32(v34, v18);
      return (v32)(v21, v18);
    }
  }
}

uint64_t sub_21DDF1794(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE90D18, &unk_21DDF32A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}