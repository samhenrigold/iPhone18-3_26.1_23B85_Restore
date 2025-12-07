void sub_269307B68(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_26932DB10();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

void sub_269307CA8()
{
  v1 = v0;
  v2 = sub_26932BFA0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308438, &unk_269330760);
  v6 = *v0;
  v7 = sub_26932DB10();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
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
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
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
}

void sub_269307EE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_26932DB20();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v19 = sub_26932D9E0();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }
}

void sub_2693080EC(uint64_t a1)
{
  v2 = v1;
  v34 = sub_26932BFA0();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308438, &unk_269330760);
  v7 = sub_26932DB20();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_269308954(&qword_2814B2658, MEMORY[0x277CC9600]);
      v21 = sub_26932D740();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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

        v2 = v29;
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
}

void *sub_269308434(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t dispatch thunk of DeviceContextProviding.fetchAlarmContexts()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2693066A8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of DeviceContextProviding.fetchTimerContexts()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269308D28;

  return v7(a1, a2);
}

uint64_t dispatch thunk of DeviceContextProviding.isNothingPlaying.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2693066A8;

  return v7(a1, a2);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2693087E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26930882C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2693088D8(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308620, "<i");

  sub_269306044(a1);
}

uint64_t sub_269308954(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_26932BFA0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2693089B8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_269308AA4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269308AA4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_269308AEC(uint64_t a1)
{
  v2 = sub_26932BFA0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_269308954(&qword_2814B2658, MEMORY[0x277CC9600]);
  result = MEMORY[0x26D638600](v9, v2, v10);
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
      sub_269306F34(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t SiriTimeDeviceResolutionService.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26932D5C0();
  result = sub_26932D5A0();
  v4 = MEMORY[0x277D61F10];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t SiriTimeDeviceResolutionService.resolveDevicesAsync(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_269308D9C, 0, 0);
}

uint64_t sub_269308D9C()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v2 = v0[4];
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = swift_task_alloc();
    v0[6] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308610, &qword_269330668);
    *v4 = v0;
    v4[1] = sub_269308EF0;

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000017, 0x8000000269336660, sub_269306A60, v3, v5);
  }

  else
  {
    v6 = sub_2692ED6A8(MEMORY[0x277D84F90]);
    v7 = v0[1];

    return v7(v6);
  }
}

uint64_t sub_269308EF0()
{

  return MEMORY[0x2822009F8](sub_269309008, 0, 0);
}

uint64_t sub_269309040()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308618, &qword_269330670);
  *v3 = v0;
  v3[1] = sub_269309148;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD00000000000001ELL, 0x8000000269336680, sub_269306ABC, v2, v4);
}

uint64_t sub_269309148()
{

  return MEMORY[0x2822009F8](sub_26930AF38, 0, 0);
}

uint64_t sub_269309260()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2814B2458);
  v1 = __swift_project_value_buffer(v0, qword_2814B2458);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_269309328(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308678, &qword_269330820);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  v10 = a2[3];
  v15[1] = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);

  sub_269308AEC(v11);

  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  (*(v7 + 32))(v13 + v12, v9, v6);

  sub_26932D5D0();
}

uint64_t sub_2693094D4(unint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (qword_2814B2450 != -1)
    {
      swift_once();
    }

    v3 = sub_26932D6B0();
    __swift_project_value_buffer(v3, qword_2814B2458);

    v4 = sub_26932D690();
    v5 = sub_26932D9B0();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136315138;
      sub_26932BFA0();
      sub_26932D580();
      sub_26930AEF0(&qword_2814B2658, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v8 = sub_26932D730();
      v10 = sub_2692DD5A8(v8, v9, &v22);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_2692D8000, v4, v5, "Find candidate devices: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x26D639280](v7, -1, -1);
      MEMORY[0x26D639280](v6, -1, -1);
    }

    v22 = a1;
  }

  else
  {
    if (qword_2814B2450 != -1)
    {
      swift_once();
    }

    v12 = sub_26932D6B0();
    __swift_project_value_buffer(v12, qword_2814B2458);

    v13 = sub_26932D690();
    v14 = sub_26932D9A0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      v17 = sub_26932BFA0();
      v18 = MEMORY[0x26D638530](a2, v17);
      v20 = sub_2692DD5A8(v18, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_2692D8000, v13, v14, "SiriTimeDeviceResolutionService.resolveDevice() found no device with ids %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x26D639280](v16, -1, -1);
      MEMORY[0x26D639280](v15, -1, -1);
    }

    v22 = sub_2692ED6A8(MEMORY[0x277D84F90]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308678, &qword_269330820);
  return sub_26932D8E0();
}

uint64_t SiriTimeDeviceResolutionService.targetingDevices()()
{
  v1[5] = v0;
  v2 = sub_26932D500();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_26932D530();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269309918, 0, 0);
}

uint64_t sub_269309918()
{
  sub_26932D520();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308648, &qword_269330798);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26932EEA0;
  sub_26932D4F0();
  v0[2] = v1;
  sub_26930AEF0(&qword_280308650, MEMORY[0x277D61ED8], MEMORY[0x277D61EE0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308658, &qword_2693307A0);
  sub_26930AD78();
  sub_26932DAB0();
  sub_26932D510();
  if (qword_2814B2450 != -1)
  {
    swift_once();
  }

  v2 = sub_26932D6B0();
  v0[12] = __swift_project_value_buffer(v2, qword_2814B2458);
  v3 = sub_26932D690();
  v4 = sub_26932D9B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2692D8000, v3, v4, "targetingDevices() Begin resolving targetable devices", v5, 2u);
    MEMORY[0x26D639280](v5, -1, -1);
  }

  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v9 = v0[5];

  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308668, &unk_2693307A8);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  v0[13] = v13;
  *(v13 + 16) = xmmword_26932EEA0;
  (*(v7 + 16))(v13 + v12, v6, v8);
  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = sub_269309BF0;

  return MEMORY[0x2821C8A78](v13, 0, v10, v11);
}

uint64_t sub_269309BF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_269309F04;
  }

  else
  {

    v4 = sub_269309D0C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_269309D0C()
{
  v20 = v0;

  v1 = sub_26932D690();
  v2 = sub_26932D9B0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    if (v3 >> 62)
    {
      v6 = sub_26932DAE0();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];
    v0[4] = v6;
    v10 = sub_26932DDD0();
    v12 = sub_2692DD5A8(v10, v11, &v19);

    *(v4 + 4) = v12;
    _os_log_impl(&dword_2692D8000, v1, v2, "targetingDevices() found targetable device count: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D639280](v5, -1, -1);
    MEMORY[0x26D639280](v4, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v14 = v0[10];
    v13 = v0[11];
    v15 = v0[9];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[15];

  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_269309F04()
{
  v16 = v0;
  v1 = v0[16];

  v2 = v1;
  v3 = sub_26932D690();
  v4 = sub_26932D9A0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v0[3] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
    v9 = sub_26932D790();
    v11 = sub_2692DD5A8(v9, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2692D8000, v3, v4, "Error fetching targeting accessories from #hal: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D639280](v7, -1, -1);
    MEMORY[0x26D639280](v6, -1, -1);
  }

  else
  {
    v5 = v0[16];
  }

  (*(v0[10] + 8))(v0[11], v0[9]);

  v12 = v0[1];
  v13 = MEMORY[0x277D84F90];

  return v12(v13);
}

uint64_t sub_26930A0E4()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_26930A1A0;

  return MEMORY[0x2821C8A70](4000, 4000, v2, v3);
}

uint64_t sub_26930A1A0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = sub_26930A3F8;
  }

  else
  {
    v4 = sub_26930A2B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26930A2B4()
{
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = *(v0 + 40); v2; i = *(v0 + 40))
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v7 = i + 32;
    while (1)
    {
      if (v5)
      {
        v8 = MEMORY[0x26D638850](v4, *(v0 + 40));
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_18;
        }

        v8 = *(v7 + 8 * v4);
      }

      v1 = v8;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_26932D570();
      v10 = sub_26932D680();
      if (v10 == sub_26932D680())
      {

        goto LABEL_14;
      }

      ++v4;
      if (v9 == v2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v2 = sub_26932DAE0();
  }

LABEL_13:

  v1 = 0;
LABEL_14:
  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_26930A3F8()
{
  v17 = v0;
  if (qword_2814B2450 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_26932D6B0();
  __swift_project_value_buffer(v2, qword_2814B2458);
  v3 = v1;
  v4 = sub_26932D690();
  v5 = sub_26932D9A0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
    v11 = sub_26932D790();
    v13 = sub_2692DD5A8(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2692D8000, v4, v5, "Unable to get devicesWithProximity: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D639280](v9, -1, -1);
    MEMORY[0x26D639280](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0);
}

void sub_26930A5CC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308670, &unk_269330810);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - v6;
  sub_26932D670();
  v8 = sub_26932D660();
  if (qword_2814B2450 != -1)
  {
    swift_once();
  }

  v9 = sub_26932D6B0();
  __swift_project_value_buffer(v9, qword_2814B2458);
  v10 = sub_26932D690();
  v11 = sub_26932D9B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2692D8000, v10, v11, "Fetching deviceCapabilities.", v12, 2u);
    MEMORY[0x26D639280](v12, -1, -1);
  }

  v13 = a2[3];
  v19[1] = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26932EA80;
  *(v14 + 32) = v8;
  (*(v5 + 16))(v7, a1, v4);
  v15 = v8;
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = v15;
  sub_26932D5E0();
}

uint64_t sub_26930A85C(uint64_t a1)
{
  if (qword_2814B2450 != -1)
  {
    swift_once();
  }

  v1 = sub_26932D6B0();
  __swift_project_value_buffer(v1, qword_2814B2458);

  v2 = sub_26932D690();
  v3 = sub_26932D9B0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    sub_26932D580();
    sub_26932D610();
    sub_26930AEF0(&qword_2814B2330, MEMORY[0x277D61F00], MEMORY[0x277D85378]);
    v6 = sub_26932D730();
    v8 = sub_2692DD5A8(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2692D8000, v2, v3, "Got capabilitesMap: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D639280](v5, -1, -1);
    MEMORY[0x26D639280](v4, -1, -1);
  }

  v10 = sub_26930AADC(v9);

  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308670, &unk_269330810);
  return sub_26932D8E0();
}

void *sub_26930AA54(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
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
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_26930AADC(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_26932DAE0();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_26930AA54(v2, 0);

    v1 = sub_26930AB8C(&v5, v3 + 4, v2, v1);
    sub_26930AE68();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_26930AB8C(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_26932DBE0();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_26932DC00())
      {
        goto LABEL_31;
      }

      sub_26932D580();
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

unint64_t sub_26930AD78()
{
  result = qword_280308660;
  if (!qword_280308660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280308658, &qword_2693307A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308660);
  }

  return result;
}

uint64_t sub_26930ADEC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308670, &unk_269330810);

  return sub_26930A85C(a1);
}

uint64_t sub_26930AE70(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308678, &qword_269330820);
  v3 = *(v1 + 16);

  return sub_2693094D4(a1, v3);
}

uint64_t sub_26930AEF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id INIntent.withEndpointId.getter()
{
  v8 = v0;
  v1 = [v0 _metadata];
  if (!v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CD4350]) init];
    [v0 _setMetadata_];
    v1 = v2;
  }

  v3 = [v0 _metadata];
  if (v3)
  {
    v4 = v3;
    sub_26932C2F0();
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_26932C560();
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_26932C550();
    if (v5)
    {
      v6 = sub_26932D760();
    }

    else
    {
      v6 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    [v4 setEndpointId_];
  }

  return v8;
}

id INIntent.withIntentId.getter()
{
  v9 = v0;
  v1 = [v0 _metadata];
  if (!v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CD4350]) init];
    [v0 _setMetadata_];
    v1 = v2;
  }

  v3 = [v0 _metadata];
  if (v3)
  {
    v4 = v3;
    sub_26932D320();
    v5 = sub_26932D310();
    if (v5)
    {
      sub_26932D300();

      sub_26932C230();
      v7 = v6;

      if (v7)
      {
        v5 = sub_26932D760();
      }

      else
      {
        v5 = 0;
      }
    }

    [v4 setIntentId_];
  }

  return v9;
}

id SASTButtonItem.init(label:commands:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setCentered_];
  v4 = [objc_allocWithZone(MEMORY[0x277D47770]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280308680, qword_269330830);
  v5 = sub_26932D850();

  [v4 setCommands_];

  [v3 setAction_];
  v6 = [objc_allocWithZone(MEMORY[0x277D47A40]) init];
  v7 = sub_26932D760();

  [v6 setText_];

  v8 = v6;
  [v3 setDecoratedLabel_];

  return v3;
}

uint64_t sub_26930B350()
{
  sub_26932C420();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26930B3B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NoOpFlow();
  sub_26930B430();
  return sub_26932C1F0();
}

unint64_t sub_26930B430()
{
  result = qword_280308690;
  if (!qword_280308690)
  {
    type metadata accessor for NoOpFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308690);
  }

  return result;
}

uint64_t sub_26930B49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2693066A8;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_26930B5A8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NoOpFlow();

  return sub_26932C220();
}

uint64_t dispatch thunk of NoOpFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2692DDD10;

  return v6(a1);
}

uint64_t sub_26930B77C()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2814B2350);
  v1 = __swift_project_value_buffer(v0, qword_2814B2350);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AppInstallUtil.Domain.appTypeToInstall.getter()
{
  if (*v0 >= 3u)
  {
    return 0x68746C616568;
  }

  else
  {
    return 0x6B636F6C63;
  }
}

SiriTimeInternal::AppInstallUtil::Domain_optional __swiftcall AppInstallUtil.Domain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DC60();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26930B8F8()
{
  sub_26932DF50();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_26930B954(uint64_t a1)
{
  sub_26932D7D0();
}

uint64_t sub_26930B994(uint64_t a1)
{
  sub_26932DF50();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t AppInstallUtil.installOrOpenURL(installOnly:)(char a1)
{
  v2 = *v1;
  if (a1)
  {
    if (v2 >= 3)
    {
      v3 = 5;
    }

    else
    {
      v3 = 0;
    }

    v6[1] = *v1;
    v6[0] = v3;
    v4 = v6;
    return sub_26930BABC(v4);
  }

  if (v2 < 3)
  {
    v7[1] = *v1;
    v7[0] = 0;
    v4 = v7;
    return sub_26930BABC(v4);
  }

  return sub_26932BEC0();
}

uint64_t sub_26930BABC(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_26932DB80();

  if (v1 <= 3)
  {
    v2 = 0xEF6B636F6C632E65;
    v3 = 0x6C7070612E6D6F63;
    if (v1 != 2)
    {
      v3 = 0xD00000000000001BLL;
      v2 = 0x8000000269335220;
    }

    v5 = 0x80000002693351D0;
    v6 = 0xD000000000000015;
    if (v1)
    {
      v6 = 0xD000000000000018;
      v5 = 0x80000002693351F0;
    }

    v7 = v1 <= 1;
  }

  else
  {
    v2 = 0x8000000269335280;
    v3 = 0xD00000000000001FLL;
    v4 = 0x80000002693352A0;
    if (v1 != 7)
    {
      v4 = 0x80000002693352E0;
    }

    if (v1 != 6)
    {
      v3 = 0xD000000000000035;
      v2 = v4;
    }

    v5 = 0x8000000269335240;
    v6 = 0xD000000000000013;
    if (v1 != 4)
    {
      v6 = 0xD000000000000010;
      v5 = 0x8000000269335260;
    }

    v7 = v1 <= 5;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x26D6384C0](v8, v9);

  sub_26932BEC0();
}

id AppInstallUtil.isAppInstalled.getter()
{
  v1 = *v0;
  if (v1 >= 3)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (v1 >= 3)
  {
    v3 = "com.apple.NanoAlarm";
  }

  else
  {
    v3 = "gerWithEndpointUUIDString:]";
  }

  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v5 = sub_26930DFAC(v2, v3 | 0x8000000000000000, 1);
  v6 = [v5 applicationState];
  v7 = [v6 isInstalled];

  if (qword_2814B2348 != -1)
  {
    swift_once();
  }

  v8 = sub_26932D6B0();
  __swift_project_value_buffer(v8, qword_2814B2350);
  v9 = sub_26932D690();
  v10 = sub_26932D980();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315394;
    v13 = sub_2692DD5A8(v2, v3 | 0x8000000000000000, v18);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    if (v7)
    {
      v14 = 0x454C4C4154534E49;
    }

    else
    {
      v14 = 0x54534E4920544F4ELL;
    }

    if (v7)
    {
      v15 = 0xE900000000000044;
    }

    else
    {
      v15 = 0xED000044454C4C41;
    }

    v16 = sub_2692DD5A8(v14, v15, v18);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_2692D8000, v9, v10, "ClockTimerAppUtil: LSApplicationRecord: %s – %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v12, -1, -1);
    MEMORY[0x26D639280](v11, -1, -1);
  }

  return v7;
}

uint64_t AppInstallUtil.appStorePunchout(installOnly:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v5 = sub_26932BFA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_26932BED0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v2;
  if (a1)
  {
    if (v16 >= 3)
    {
      v17 = 5;
    }

    else
    {
      v17 = 0;
    }

    LOBYTE(v52[0]) = *v2;
    v51[0] = v17;
    goto LABEL_8;
  }

  if (v16 < 3)
  {
    LOBYTE(v52[0]) = *v2;
    v51[0] = 0;
LABEL_8:
    sub_26930BABC(v51);
    goto LABEL_10;
  }

  sub_26932BEC0();
LABEL_10:
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2692EB48C(v11, &qword_2803086A0, &unk_26932FB40);
LABEL_22:
    v30 = 1;
    goto LABEL_23;
  }

  (*(v13 + 32))(v15, v11, v12);
  v18 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v19 = sub_26932BEA0();
  [v18 setPunchOutUri_];

  v20 = v18;
  sub_26932BF90();
  sub_26932BF60();
  (*(v6 + 8))(v8, v5);
  v21 = sub_26932D760();

  [v20 setAceId_];

  v22 = [v20 dictionary];
  if (!v22)
  {
    (*(v13 + 8))(v15, v12);

    goto LABEL_22;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v52[0] = 0;
  v25 = [v24 dataWithPropertyList:v23 format:200 options:0 error:v52];
  v26 = v52[0];
  if (!v25)
  {
    v31 = v26;
    v32 = sub_26932BE90();

    swift_willThrow();
    if (qword_2814B2348 != -1)
    {
      swift_once();
    }

    v33 = sub_26932D6B0();
    __swift_project_value_buffer(v33, qword_2814B2350);
    v34 = v32;
    v35 = sub_26932D690();
    v36 = sub_26932D9A0();

    v50 = v35;
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v49 = v36;
      v38 = v37;
      v48 = swift_slowAlloc();
      v52[0] = v48;
      *v38 = 136315138;
      *v51 = v32;
      v39 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
      v40 = sub_26932D790();
      v42 = sub_2692DD5A8(v40, v41, v52);

      *(v38 + 4) = v42;
      v43 = v50;
      _os_log_impl(&dword_2692D8000, v50, v49, "Error generating ACE punch out command: %s", v38, 0xCu);
      v44 = v48;
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x26D639280](v44, -1, -1);
      MEMORY[0x26D639280](v38, -1, -1);
    }

    else
    {
    }

    (*(v13 + 8))(v15, v12);
    goto LABEL_22;
  }

  v27 = sub_26932BF00();
  v29 = v28;

  sub_26932BEF0();
  sub_26932D3D0();
  sub_2692F5A5C(v27, v29);

  (*(v13 + 8))(v15, v12);
  v30 = 0;
LABEL_23:
  v45 = sub_26932D3E0();
  return (*(*(v45 - 8) + 56))(a2, v30, 1, v45);
}

uint64_t AppInstallDialogOutputUtil.init(domain:fallbackCAT:)@<X0>(char *a1@<X0>, __int128 *a2@<X1>, char *a3@<X8>)
{
  v4 = *a1;
  *a3 = *a1;
  result = sub_2692DB324(a2, (a3 + 8));
  a3[48] = v4;
  return result;
}

uint64_t AppInstallDialogOutputUtil.makeLaunchAppView()()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  v1[3] = swift_task_alloc();
  v2 = sub_26932BED0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26930C794, 0, 0);
}

uint64_t sub_26930C794()
{
  if (**(v0 + 16) >= 3u)
  {
    sub_26932BEC0();
  }

  else
  {
    sub_26932DB80();

    MEMORY[0x26D6384C0](0xD000000000000015, 0x80000002693351D0);
    sub_26932BEC0();
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2692EB48C(v3, &qword_2803086A0, &unk_26932FB40);
    if (qword_2814B2348 != -1)
    {
      swift_once();
    }

    v4 = sub_26932D6B0();
    __swift_project_value_buffer(v4, qword_2814B2350);
    v5 = sub_26932D690();
    v6 = sub_26932D9A0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2692D8000, v5, v6, "AlarmButtonFactory.makeLaunchAppView returned invalid URL for sleep punchout URL", v7, 2u);
      MEMORY[0x26D639280](v7, -1, -1);
    }

    v8 = *(v0 + 8);
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }

  else
  {
    (*(v2 + 32))(*(v0 + 48), v3, v1);
    v11 = swift_task_alloc();
    *(v0 + 56) = v11;
    *v11 = v0;
    v11[1] = sub_26930CA4C;
    v12 = *(v0 + 48);
    v13 = MEMORY[0x277D84F90];

    return sub_26930CC8C(v13, v12);
  }
}

uint64_t sub_26930CA4C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_26930CC04;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_26930CB74;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26930CB74()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[9];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_26930CC04()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26930CC8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_26932C400();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_26932C520();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A8, &qword_2693308F0);
  v3[11] = swift_task_alloc();
  v6 = sub_26932C500();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26930CE40, 0, 0);
}

uint64_t sub_26930CE40()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = v2[4];
  v4 = v2[5];
  __swift_project_boxed_opaque_existential_1(v2 + 1, v3);
  v5 = AppInstallUtil.isAppInstalled.getter();
  sub_26932D7B0();

  v6 = sub_26932D3E0();
  (*(*(v6 - 8) + 56))(v1, 0, 1, v6);
  v11 = (*(v4 + 8) + **(v4 + 8));
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_26930D02C;
  v8 = v0[14];
  v9 = v0[11];

  return v11(v8, (v5 & 1) == 0, v9, v3, v4);
}

uint64_t sub_26930D02C()
{
  v2 = *(*v1 + 88);
  *(*v1 + 128) = v0;

  sub_2692EB48C(v2, &qword_2803086A8, &qword_2693308F0);
  if (v0)
  {
    v3 = sub_26930D500;
  }

  else
  {
    v3 = sub_26930D16C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26930D16C()
{
  v1 = sub_26932C4F0();
  if (*(v1 + 16))
  {
    v3 = v0[9];
    v2 = v0[10];
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[2];
    (*(v3 + 16))(v2, v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v4);

    sub_26932C510();
    (*(v3 + 8))(v2, v4);
    v9 = sub_26932C3F0();
    v11 = v10;
    (*(v7 + 8))(v5, v6);
    v12 = sub_26930D58C(v9, v11);

    if (v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    if (v13 >> 62)
    {
      sub_26930E4A0();

      v14 = sub_26932DC10();
    }

    else
    {

      sub_26932DF10();
      sub_26930E4A0();
      v14 = v13;
    }

    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[12];

    sub_26930E4EC(v12);
    (*(v16 + 8))(v15, v17);
  }

  else
  {

    if (qword_2814B2348 != -1)
    {
      swift_once();
    }

    v18 = sub_26932D6B0();
    __swift_project_value_buffer(v18, qword_2814B2350);
    v19 = sub_26932D690();
    v20 = sub_26932D9A0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2692D8000, v19, v20, "AppInstallDialogOutputUtil.makeOpenAppButtonViews failed to get button text from template", v21, 2u);
      MEMORY[0x26D639280](v21, -1, -1);
    }

    v22 = v0[2];

    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    if (v23 >> 62)
    {
      sub_26930E4A0();

      v14 = sub_26932DC10();
    }

    else
    {

      sub_26932DF10();
      sub_26930E4A0();
      v14 = v23;
    }

    v25 = v0[13];
    v24 = v0[14];
    v26 = v0[12];

    (*(v25 + 8))(v24, v26);
  }

  v27 = v0[1];

  return v27(v14);
}

uint64_t sub_26930D500()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26930D58C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D47A18]) init];
  v3 = sub_26932D760();
  [v2 setText_];

  v4 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v5 = sub_26932BEA0();
  [v4 setPunchOutUri_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26932EA80;
  *(v6 + 32) = v4;
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280308680, qword_269330830);
  v8 = sub_26932D850();

  [v2 setCommands_];

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26932EA80;
  *(v9 + 32) = v2;

  return v9;
}

uint64_t SirikitApp.init(app:)(int64_t i)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A8, &qword_2693308F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v53 - v5;
  v7 = sub_26932BFF0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B2520)
  {
    v11 = qword_2814B2520;
  }

  else
  {
    type metadata accessor for ApplicationContext();
    v11 = swift_allocObject();
    sub_26932C6E0();
    qword_2814B2520 = v11;
  }

  sub_2692EB3E4(v11 + 16, v60);

  __swift_project_boxed_opaque_existential_1(v60, v61);
  if (sub_26932C350() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v60, v61), (sub_26932C300()) || (__swift_project_boxed_opaque_existential_1(v60, v61), v17 = sub_26932C340(), v18 = MEMORY[0x277D84F90], (v17))
  {
LABEL_6:
    sub_26932D3B0();
    swift_allocObject();
    sub_26932D3A0();
    sub_26932D460();
    if (v12)
    {
      sub_26932D7B0();

      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = sub_26932D3E0();
    (*(*(v14 - 8) + 56))(v6, v13, 1, v14);
    sub_26932D390();

    sub_2692EB48C(v6, &qword_2803086A8, &qword_2693308F0);
    sub_26932D380();

    v15 = sub_26932D3C0();

    goto LABEL_10;
  }

  v19 = sub_26932C4E0();
  if (v19)
  {
    v20 = v19;
    v21 = [v19 appNameMap];

    if (v21)
    {
      v55 = v8;
      v53[0] = v7;
      v53[1] = v2;
      v53[2] = i;
      v22 = sub_26932D720();

      __swift_project_boxed_opaque_existential_1(v60, v61);
      sub_26932C310();
      v23 = objc_opt_self();
      v54 = v10;
      sub_26932BFB0();
      v24 = sub_26932D760();

      v25 = [v23 getFallbackLocales:v24 includingNonSiriLocales:1];

      v56 = sub_26932D860();
      v59 = v18;
      v26 = v22 + 64;
      v27 = 1 << *(v22 + 32);
      v28 = -1;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      v29 = v28 & *(v22 + 64);
      v30 = (v27 + 63) >> 6;
      v57 = v22;

      i = 0;
      while (v29)
      {
LABEL_17:
        while (1)
        {
          v31 = __clz(__rbit64(v29));
          v29 &= v29 - 1;
          v32 = (i << 10) | (16 * v31);
          v33 = (*(v57 + 48) + v32);
          v34 = *v33;
          v35 = v33[1];
          v36 = (*(v57 + 56) + v32);
          v38 = *v36;
          v37 = v36[1];

          v39 = sub_26930DDB8(v34, v35, v38, v37, v56);

          if (v39)
          {
            break;
          }

          if (!v29)
          {
            goto LABEL_19;
          }
        }

        MEMORY[0x26D638500](v40);
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26932D880();
        }

        sub_26932D8A0();
      }

LABEL_19:
      v42 = v54;
      v41 = v55;
      while (1)
      {
        v43 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v43 >= v30)
        {

          (*(v41 + 8))(v42, v53[0]);

          goto LABEL_6;
        }

        v29 = *(v26 + 8 * v43);
        ++i;
        if (v29)
        {
          i = v43;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_35;
    }
  }

  if (qword_2814B2348 != -1)
  {
LABEL_35:
    swift_once();
  }

  v44 = sub_26932D6B0();
  __swift_project_value_buffer(v44, qword_2814B2350);

  v45 = sub_26932D690();
  v46 = sub_26932D9A0();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = i;
    v49 = swift_slowAlloc();
    v58 = v48;
    v59 = v49;
    *v47 = 136315138;
    sub_26932D470();
    sub_26930E088();
    v50 = sub_26932DDD0();
    v52 = sub_2692DD5A8(v50, v51, &v59);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_2692D8000, v45, v46, "Could not get app info from App object: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x26D639280](v49, -1, -1);
    MEMORY[0x26D639280](v47, -1, -1);
  }

  else
  {
  }

  v15 = 0;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  return v15;
}

uint64_t sub_26930DDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A8, &qword_2693308F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = *(a5 + 16);
  v12 = (a5 + 40);
  v13 = v11 + 1;
  while (--v13)
  {
    if (*(v12 - 1) != a1 || *v12 != a2)
    {
      v12 += 2;
      if ((sub_26932DF00() & 1) == 0)
      {
        continue;
      }
    }

    sub_26932D450();
    swift_allocObject();
    sub_26932D440();
    sub_26932D7B0();
    v15 = sub_26932D3E0();
    v16 = *(*(v15 - 8) + 56);
    v16(v10, 0, 1, v15);
    sub_26932D420();

    sub_2692EB48C(v10, &qword_2803086A8, &qword_2693308F0);
    sub_26932D7B0();
    v16(v10, 0, 1, v15);
    sub_26932D410();

    sub_2692EB48C(v10, &qword_2803086A8, &qword_2693308F0);
    v17 = sub_26932D430();

    return v17;
  }

  return 0;
}

id sub_26930DFAC(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_26932D760();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_26932BE90();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_26930E088()
{
  result = qword_2803086B0;
  if (!qword_2803086B0)
  {
    sub_26932D470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803086B0);
  }

  return result;
}

unint64_t sub_26930E0E4()
{
  result = qword_2803086B8;
  if (!qword_2803086B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803086B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimerConfirmationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TimerConfirmationModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of AppInstallCAT.redirectToApp(isInstall:appType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2692DDD10;

  return v13(a1, a2, a3, a4, a5);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26930E3F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26930E440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26930E4A0()
{
  result = qword_2803086C0;
  if (!qword_2803086C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803086C0);
  }

  return result;
}

uint64_t sub_26930E4EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_26932DAE0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_26932DAE0();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_26930E5DC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26930E704(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26930E5DC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_26932DAE0();
LABEL_9:
  result = sub_26932DBA0();
  *v2 = result;
  return result;
}

void (*sub_26930E67C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D638850](a2, a3);
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
    return sub_26930E6FC;
  }

  __break(1u);
  return result;
}

uint64_t sub_26930E704(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26932DAE0();
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
      result = sub_26932DAE0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26930E884();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086C8, "hg");
            v9 = sub_26930E67C(v13, i, a3);
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
        sub_26930E4A0();
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

unint64_t sub_26930E884()
{
  result = qword_2803086D0;
  if (!qword_2803086D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803086C8, "hg");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803086D0);
  }

  return result;
}

uint64_t sub_26930E8F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000002ALL;
  v3 = "nsion";
  v4 = a1;
  v5 = 0xD000000000000036;
  if (a1 == 4)
  {
    v5 = 0xD00000000000002ALL;
    v6 = "irectInvocation.Timer.Stop";
  }

  else
  {
    v6 = "irectInvocation.Timer.Undo";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000002ALL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "armIntentFromTimer";
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xD000000000000034;
  if (v4 == 1)
  {
    v10 = "Timer.ButtonPress";
  }

  else
  {
    v9 = 0xD000000000000042;
    v10 = "Timer.Disambiguation";
  }

  if (!v4)
  {
    v9 = 0xD000000000000031;
    v10 = "nsion";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v3 = "armIntentFromTimer";
    }

    else if (a2 == 4)
    {
      v3 = "irectInvocation.Timer.Stop";
    }

    else
    {
      v2 = 0xD000000000000036;
      v3 = "irectInvocation.Timer.Undo";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000034;
      v3 = "Timer.ButtonPress";
    }

    else
    {
      v2 = 0xD000000000000042;
      v3 = "Timer.Disambiguation";
    }
  }

  else
  {
    v2 = 0xD000000000000031;
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_26932DF00();
  }

  return v12 & 1;
}

uint64_t sub_26930EA5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0x72506E6F74747562;
    v13 = 0xED00006465737365;
    if (a1 != 2)
    {
      v12 = 1920298856;
      v13 = 0xE400000000000000;
    }

    v14 = 0x644972656D6974;
    if (a1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v14 = 1651664246;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x646573756170;
    v5 = 0xE800000000000000;
    v6 = 0x6E6F697461727564;
    if (a1 != 7)
    {
      v6 = 0x6C6562616CLL;
      v5 = 0xE500000000000000;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE600000000000000;
    v8 = 0x6574756E696DLL;
    if (a1 != 4)
    {
      v8 = 0x7469746E456F7375;
      v7 = 0xE900000000000079;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xED00006465737365;
        if (v9 != 0x72506E6F74747562)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE400000000000000;
        if (v9 != 1920298856)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x644972656D6974)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v9 != 1651664246)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x6574756E696DLL)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE900000000000079;
      if (v9 != 0x7469746E456F7375)
      {
LABEL_52:
        v16 = sub_26932DF00();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE600000000000000;
    if (v9 != 0x646573756170)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x6E6F697461727564)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE500000000000000;
    if (v9 != 0x6C6562616CLL)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_26930ED0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000002ALL;
  v3 = "oEntity";
  v4 = a1;
  v5 = 0xD000000000000036;
  if (a1 == 4)
  {
    v6 = "irectInvocation.Alarm.Undo";
  }

  else
  {
    v5 = 0xD000000000000042;
    v6 = "Timer.Disambiguation";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000002ALL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "irectInvocation.Alarm.Stop";
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xD000000000000034;
  if (v4 == 1)
  {
    v10 = "Alarm.ButtonPress";
  }

  else
  {
    v9 = 0xD00000000000002ALL;
    v10 = "Alarm.Disambiguation";
  }

  if (!v4)
  {
    v9 = 0xD000000000000031;
    v10 = "oEntity";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v3 = "irectInvocation.Alarm.Stop";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000036;
      v3 = "irectInvocation.Alarm.Undo";
    }

    else
    {
      v2 = 0xD000000000000042;
      v3 = "Timer.Disambiguation";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000034;
      v3 = "Alarm.ButtonPress";
    }

    else
    {
      v3 = "Alarm.Disambiguation";
    }
  }

  else
  {
    v2 = 0xD000000000000031;
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_26932DF00();
  }

  return v12 & 1;
}

uint64_t sub_26930EE78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0xE700000000000000;
    v13 = 0x64496D72616C61;
    if (a1 != 2)
    {
      v13 = 0xD000000000000012;
      v12 = 0x8000000269335600;
    }

    v14 = 0x72506E6F74747562;
    if (a1)
    {
      v11 = 0xED00006465737365;
    }

    else
    {
      v14 = 1651664246;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x706D6F4365746164;
    v4 = 0xEE0073746E656E6FLL;
    v5 = 0xE400000000000000;
    v6 = 1920298856;
    if (a1 != 7)
    {
      v6 = 0x6574756E696DLL;
      v5 = 0xE600000000000000;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x6953656C646E6168;
    v8 = 0xEE00796C746E656CLL;
    if (a1 != 4)
    {
      v7 = 0x6C6562616CLL;
      v8 = 0xE500000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x64496D72616C61)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0x8000000269335600;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xED00006465737365;
      if (v9 != 0x72506E6F74747562)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v9 != 1651664246)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_50;
  }

  if (a2 > 5u)
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v15 = 0xE400000000000000;
        if (v9 != 1920298856)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x6574756E696DLL)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    v16 = 0x706D6F4365746164;
    v17 = 0x73746E656E6FLL;
LABEL_41:
    v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v9 != v16)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v16 = 0x6953656C646E6168;
    v17 = 0x796C746E656CLL;
    goto LABEL_41;
  }

  v15 = 0xE500000000000000;
  if (v9 != 0x6C6562616CLL)
  {
LABEL_52:
    v18 = sub_26932DF00();
    goto LABEL_53;
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v18 = 1;
LABEL_53:

  return v18 & 1;
}

uint64_t sub_26930F154(char a1, char a2)
{
  if (*&aClock_3[8 * a1] == *&aClock_3[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_26932DF00();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_26930F1BC(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x6B636F6C63;
    }

    else
    {
      v2 = 0x7065656C73;
    }

    v3 = 0xE500000000000000;
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v2 = 0x6D72616C61;
  }

  else if (a1 == 3)
  {
    v2 = 0x616C417065656C73;
    v3 = 0xEA00000000006D72;
  }

  else
  {
    v3 = 0xE500000000000000;
    v2 = 0x72656D6974;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x6B636F6C63;
    }

    else
    {
      v8 = 0x7065656C73;
    }

    v7 = 0xE500000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x616C417065656C73;
    v5 = 0xEA00000000006D72;
    if (a2 != 3)
    {
      v4 = 0x72656D6974;
      v5 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v6 = 0x6D72616C61;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = sub_26932DF00();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_26930F334(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006B7361;
  v3 = 0x54746E6572727543;
  v4 = 0x656C65446F646E55;
  if (a1 <= 3u)
  {
    v5 = 0xEF72656D69546574;
    if (a1 != 2)
    {
      v4 = 0xD000000000000014;
      v5 = 0x8000000269335680;
    }

    v8 = 0x616572436F646E55;
    v9 = 0xEF72656D69546574;
    if (!a1)
    {
      v8 = 0x54746E6572727543;
      v9 = 0xEB000000006B7361;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v5 = 0xEF6D72616C416574;
    v6 = 0xD000000000000013;
    v7 = 0x80000002693356E0;
    if (a1 != 7)
    {
      v6 = 0xD000000000000015;
      v7 = 0x8000000269335700;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0xD000000000000013;
    v9 = 0x80000002693356A0;
    if (a1 != 4)
    {
      v8 = 0x616572436F646E55;
      v9 = 0xEF6D72616C416574;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v13 = "INCreateTimerIntent";
LABEL_34:
        v2 = (v13 - 32) | 0x8000000000000000;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      }

      v15 = 0x616572436F646E55;
    }

    else
    {
      if (a2 != 6)
      {
        if (a2 == 7)
        {
          v13 = "INCreateAlarmIntent";
          goto LABEL_34;
        }

        v2 = 0x8000000269335700;
        v3 = 0xD000000000000015;
        goto LABEL_40;
      }

      v15 = 0x656C65446F646E55;
    }

    v2 = 0xEF6D72616C416574;
    if (v11 != v15)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v2 = 0x8000000269335680;
      if (v11 != 0xD000000000000014)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }

    v14 = 0x656C65446F646E55;
    goto LABEL_30;
  }

  if (a2)
  {
    v14 = 0x616572436F646E55;
LABEL_30:
    v2 = 0xEF72656D69546574;
    if (v11 != v14)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_40:
  if (v11 != v3)
  {
LABEL_45:
    v16 = sub_26932DF00();
    goto LABEL_46;
  }

LABEL_41:
  if (v12 != v2)
  {
    goto LABEL_45;
  }

  v16 = 1;
LABEL_46:

  return v16 & 1;
}

uint64_t sub_26930F614(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF6B636F6C632E65;
  if (a1 <= 3u)
  {
    v3 = 0x8000000269335220;
    v4 = 0xD00000000000001BLL;
    if (a1 == 2)
    {
      v4 = 0x6C7070612E6D6F63;
      v3 = 0xEF6B636F6C632E65;
    }

    v6 = 0x80000002693351D0;
    v7 = 0xD000000000000015;
    if (a1)
    {
      v7 = 0xD000000000000018;
      v6 = 0x80000002693351F0;
    }

    v8 = a1 <= 1u;
  }

  else
  {
    v3 = 0x8000000269335280;
    v4 = 0xD00000000000001FLL;
    v5 = 0x80000002693352A0;
    if (a1 != 7)
    {
      v5 = 0x80000002693352E0;
    }

    if (a1 != 6)
    {
      v4 = 0xD000000000000035;
      v3 = v5;
    }

    v6 = 0x8000000269335240;
    v7 = 0xD000000000000013;
    if (a1 != 4)
    {
      v7 = 0xD000000000000010;
      v6 = 0x8000000269335260;
    }

    v8 = a1 <= 5u;
  }

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = v3;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        if (v9 != 0x6C7070612E6D6F63)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = 0x8000000269335220;
        if (v9 != 0xD00000000000001BLL)
        {
          goto LABEL_47;
        }
      }
    }

    else if (a2)
    {
      v2 = 0x80000002693351F0;
      if (v9 != 0xD000000000000018)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v2 = 0x80000002693351D0;
      if (v9 != 0xD000000000000015)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v2 = 0x8000000269335240;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v2 = 0x8000000269335260;
      if (v9 != 0xD000000000000010)
      {
LABEL_47:
        v12 = sub_26932DF00();
        goto LABEL_48;
      }
    }
  }

  else if (a2 == 6)
  {
    v2 = 0x8000000269335280;
    if (v9 != 0xD00000000000001FLL)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (a2 == 7)
    {
      v11 = "com.apple.siri.SiriTimeInternal.TimerIntentsExtension";
    }

    else
    {
      v11 = "com.apple.siri.SiriTimeInternal.AlarmIntentsExtension";
    }

    v2 = (v11 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000035)
    {
      goto LABEL_47;
    }
  }

  if (v10 != v2)
  {
    goto LABEL_47;
  }

  v12 = 1;
LABEL_48:

  return v12 & 1;
}

uint64_t sub_26930F8BC(uint64_t a1, unsigned __int8 a2)
{
  sub_26932D7D0();
}

uint64_t sub_26930FA00(uint64_t a1, unsigned __int8 a2)
{
  sub_26932D7D0();
}

uint64_t sub_26930FB60(uint64_t a1, unsigned __int8 a2)
{
  sub_26932D7D0();
}

uint64_t sub_26930FCF4(uint64_t a1, unsigned __int8 a2)
{
  sub_26932D7D0();
}

SiriTimeInternal::SiriTimeEventSender::TaskType_optional __swiftcall SiriTimeEventSender.TaskType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DC60();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SiriTimeEventSender.TaskType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x54746E6572727543;
    v7 = 0x656C65446F646E55;
    if (v1 != 2)
    {
      v7 = 0xD000000000000014;
    }

    if (*v0)
    {
      v6 = 0x616572436F646E55;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x656C65446F646E55;
    v3 = 0xD000000000000013;
    if (v1 != 7)
    {
      v3 = 0xD000000000000015;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000013;
    if (v1 != 4)
    {
      v4 = 0x616572436F646E55;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_269310030()
{
  v1 = *v0;
  sub_26932DF50();
  sub_26930FB60(v3, v1);
  return sub_26932DF70();
}

uint64_t sub_269310080(uint64_t a1)
{
  v2 = *v1;
  sub_26932DF50();
  sub_26930FB60(v4, v2);
  return sub_26932DF70();
}

unint64_t sub_2693100D0@<X0>(unint64_t *a1@<X8>)
{
  result = SiriTimeEventSender.TaskType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriTimeInternal::SiriTimeEventSender::ReasonDescription_optional __swiftcall SiriTimeEventSender.ReasonDescription.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DF20();

  v5 = 0;
  v6 = 8;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
LABEL_23:
      v6 = v5;
      break;
    case 8:
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    default:
      v6 = 26;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t SiriTimeEventSender.ReasonDescription.rawValue.getter()
{
  result = 0x6E6F697461727544;
  switch(*v0)
  {
    case 1:
    case 0x10:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
    case 0xB:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      return result;
    case 6:
    case 8:
    case 0xC:
    case 0x13:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 0xA:
      result = 0xD000000000000014;
      break;
    case 0xD:
      result = 0xD000000000000014;
      break;
    case 0xE:
      result = 0xD000000000000014;
      break;
    case 0xF:
      result = 0xD00000000000001ALL;
      break;
    case 0x12:
    case 0x19:
      result = 0xD00000000000001DLL;
      break;
    case 0x14:
    case 0x16:
    case 0x17:
      result = 0xD000000000000012;
      break;
    case 0x15:
      result = 0xD000000000000014;
      break;
    case 0x18:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000020;
      break;
  }

  return result;
}

uint64_t sub_2693104CC()
{
  v0 = SiriTimeEventSender.ReasonDescription.rawValue.getter();
  v2 = v1;
  if (v0 == SiriTimeEventSender.ReasonDescription.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_26932DF00();
  }

  return v5 & 1;
}

uint64_t sub_269310568()
{
  sub_26932DF50();
  SiriTimeEventSender.ReasonDescription.rawValue.getter();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_2693105D0(uint64_t a1)
{
  SiriTimeEventSender.ReasonDescription.rawValue.getter();
  sub_26932D7D0();
}

uint64_t sub_269310634(uint64_t a1)
{
  sub_26932DF50();
  SiriTimeEventSender.ReasonDescription.rawValue.getter();
  sub_26932D7D0();

  return sub_26932DF70();
}

unint64_t sub_2693106A4@<X0>(unint64_t *a1@<X8>)
{
  result = SiriTimeEventSender.ReasonDescription.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SiriTimeEventSender.Attribute.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26932DC60();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_269310748()
{
  sub_26932DF50();
  sub_26932D7D0();
  return sub_26932DF70();
}

uint64_t sub_2693107CC(uint64_t a1)
{
  sub_26932DF50();
  sub_26932D7D0();
  return sub_26932DF70();
}

uint64_t sub_269310828@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_26932DC60();

  *a2 = v3 != 0;
  return result;
}

uint64_t static SiriTimeEventSender.sendEvent(activityType:taskType:reason:attribute:description:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, char *a4, char *a5)
{
  v19 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086D8, ":g");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = sub_26932C3A0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a4;
  LOBYTE(a4) = *a5;
  sub_26932C240();
  v18[1] = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  (*(v12 + 16))(v14, a1, v11);
  sub_26932C2E0();
  sub_269310BE8(v19, v10);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 17) = a4;
  sub_26932C2C0();
  sub_26932C250();

  return __swift_destroy_boxed_opaque_existential_1Tm(v20);
}

uint64_t sub_269310BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086D8, ":g");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269310C58(uint64_t a1, char a2, char a3)
{
  if ((a2 & 1) == 0)
  {
    result = sub_26932C2B0();
  }

  if (a3 != 26)
  {
    SiriTimeEventSender.ReasonDescription.rawValue.getter();
    return sub_26932C2A0();
  }

  return result;
}

unint64_t sub_269310CEC()
{
  result = qword_2803086E0;
  if (!qword_2803086E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803086E0);
  }

  return result;
}

unint64_t sub_269310D44()
{
  result = qword_2803086E8;
  if (!qword_2803086E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803086E8);
  }

  return result;
}

unint64_t sub_269310D9C()
{
  result = qword_2803086F0;
  if (!qword_2803086F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803086F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriTimeEventSender.ReasonDescription(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriTimeEventSender.ReasonDescription(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_269310F70()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2814B23E8);
  v1 = __swift_project_value_buffer(v0, qword_2814B23E8);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t UsoTask.alarmEntity.getter()
{
  sub_26932CB20();
  sub_269311394(v11, v9);
  if (v10)
  {
    sub_269311394(v9, v8);
    sub_26932CC80();
    if (swift_dynamicCast())
    {

      sub_26932C950();
      goto LABEL_8;
    }

    sub_26932CC50();
    if (swift_dynamicCast())
    {

      sub_26932CAB0();
      goto LABEL_8;
    }

    sub_26932CC60();
    if (swift_dynamicCast())
    {
      goto LABEL_7;
    }

    sub_26932CD20();
    if (swift_dynamicCast())
    {

      sub_26932CEE0();
      v0 = v6;
      if (v6)
      {

        sub_269311404(v11);
        goto LABEL_9;
      }

      sub_26932CED0();
LABEL_8:

      sub_269311404(v11);
      v0 = v7;
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      goto LABEL_27;
    }

    sub_26932CE00();
    if (swift_dynamicCast())
    {
      goto LABEL_7;
    }

    sub_26932CFB0();
    if (swift_dynamicCast())
    {
      goto LABEL_7;
    }

    sub_26932CCA0();
    if (swift_dynamicCast())
    {

      sub_26932CEF0();
      goto LABEL_8;
    }

    sub_26932CD10();
    if (swift_dynamicCast() || (sub_26932CC70(), swift_dynamicCast()) || (sub_26932CC90(), swift_dynamicCast()))
    {
LABEL_7:

      sub_26932CC40();
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  if (qword_2814B23E0 != -1)
  {
    swift_once();
  }

  v1 = sub_26932D6B0();
  __swift_project_value_buffer(v1, qword_2814B23E8);
  v2 = sub_26932D690();
  v3 = sub_26932D9A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2692D8000, v2, v3, "Parse entity: failed to parse task with unknown task. Returning nil entity", v4, 2u);
    MEMORY[0x26D639280](v4, -1, -1);
  }

  sub_269311404(v11);
  v0 = 0;
LABEL_27:
  sub_269311404(v9);
  return v0;
}

uint64_t sub_269311394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086F8, &qword_269331FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269311404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086F8, &qword_269331FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26931146C()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308700);
  v1 = __swift_project_value_buffer(v0, qword_280308700);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double UsoEntity_common_Duration.valueInSeconds.getter()
{
  v0 = sub_26932CBC0();
  if (!v0)
  {
    goto LABEL_34;
  }

  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
    goto LABEL_32;
  }

  v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_33:

LABEL_34:
    if (qword_280307C98 != -1)
    {
      swift_once();
    }

    v12 = sub_26932D6B0();
    __swift_project_value_buffer(v12, qword_280308700);
    v13 = sub_26932D690();
    v14 = sub_26932D9B0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2692D8000, v13, v14, "DurationComponents is nil or empty!", v15, 2u);
      MEMORY[0x26D639280](v15, -1, -1);
    }

    v16 = objc_opt_self();

    [v16 defaultDuration];
    return result;
  }

LABEL_4:
  swift_getKeyPath();
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D638850](v6, v1);
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v3 = sub_26932DAE0();
          if (!v3)
          {
            goto LABEL_33;
          }

          goto LABEL_4;
        }
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_30;
        }

        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_29;
        }
      }

      swift_getAtKeyPath();

      if (v18)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_18;
      }
    }

    MEMORY[0x26D638500](v7);
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26932D880();
    }

    sub_26932D8A0();
    v5 = v19;
  }

  while (v4 != v3);
LABEL_18:

  if (v5 >> 62)
  {
    v1 = sub_26932DAE0();
    if (v1)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v1 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
LABEL_20:
      v8 = 0;
      v9 = 0.0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D638850](v8, v5);
          v2 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v2 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }
        }

        UsoEntity_common_DurationComponent.valueInSeconds.getter();
        v11 = v10;

        v9 = v9 + v11;
        ++v8;
        if (v2 == v1)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v9 = 0.0;
LABEL_43:

  return v9;
}

void UsoEntity_common_DurationComponent.valueInSeconds.getter()
{
  if (sub_26932CF40())
  {
    v0 = sub_26932C960();

    if ((sub_2692F5B80(v0, 0.0, 1.0, 0.1, 0.3) & 0x100000000) != 0)
    {
      if (qword_280307C98 != -1)
      {
        swift_once();
      }

      v6 = sub_26932D6B0();
      __swift_project_value_buffer(v6, qword_280308700);
      v7 = sub_26932D690();
      v8 = sub_26932D9B0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_2692D8000, v7, v8, "Failed to resolve parse to quantity value, use SiriTimeTimerConstants.minimumDuration as the default value", v9, 2u);
        MEMORY[0x26D639280](v9, -1, -1);
      }

      [objc_opt_self() minimumDuration];
    }

    else
    {
      sub_26931459C();
    }
  }

  else
  {
    if (qword_280307C98 != -1)
    {
      swift_once();
    }

    v1 = sub_26932D6B0();
    __swift_project_value_buffer(v1, qword_280308700);
    v2 = sub_26932D690();
    v3 = sub_26932D9B0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2692D8000, v2, v3, "Value is nil in the DurationComponent, use SiriTimeTimerConstants.minimumDuration as the default value", v4, 2u);
      MEMORY[0x26D639280](v4, -1, -1);
    }

    v5 = objc_opt_self();

    [v5 minimumDuration];
  }
}

uint64_t UsoEntity_common_Duration.dateComponents(direction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a1;
  v3 = sub_26932C0A0();
  v82 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v86 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v88 = &v64 - v6;
  v7 = sub_26932CEC0();
  v87 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308718, &qword_269330DA8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v96 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v64 - v13;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
  v89 = *(v99 - 8);
  v15 = MEMORY[0x28223BE20](v99);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v95 = (&v64 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308220, &unk_26932EED0);
  MEMORY[0x28223BE20](v19 - 8);
  KeyPath = &v64 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308218, &qword_26932EEC8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v64 - v23;
  v84 = sub_26932BE70();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v98 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_26932CBC0();
  if (v26)
  {
    v27 = v26;
    v93 = v9;
    v94 = v17;
    v81 = a2;
    v28 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26932DAE0())
    {
      v92 = v7;
      v78 = v3;
      v30 = sub_26932C0B0();
      (*(*(v30 - 8) + 56))(v24, 1, 1, v30);
      v31 = sub_26932C0D0();
      (*(*(v31 - 8) + 56))(KeyPath, 1, 1, v31);
      sub_26932BE60();
      KeyPath = swift_getKeyPath();
      v7 = 0;
      v24 = MEMORY[0x277D84F90];
      v102 = MEMORY[0x277D84F90];
      while (1)
      {
        v32 = v7;
LABEL_6:
        if ((v27 & 0xC000000000000001) == 0)
        {
          break;
        }

        v3 = MEMORY[0x26D638850](v32, v27);
        v7 = (v32 + 1);
        if (__OFADD__(v32, 1))
        {
          goto LABEL_35;
        }

LABEL_9:
        v104 = v3;

        swift_getAtKeyPath();

        v3 = v100;
        if (!v100)
        {
          v32 = (v32 + 1);
          if (v7 == i)
          {
            goto LABEL_18;
          }

          goto LABEL_6;
        }

        MEMORY[0x26D638500](v33);
        if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26932D880();
        }

        sub_26932D8A0();
        v24 = v102;
        if (v7 == i)
        {
LABEL_18:

          if (v24 >> 62)
          {
            v34 = sub_26932DAE0();
            if (v34)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v34 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v34)
            {
LABEL_20:
              KeyPath = 0;
              v90 = v24 & 0xFFFFFFFFFFFFFF8;
              v91 = (v24 & 0xC000000000000001);
              v35 = (v89 + 48);
              v27 = MEMORY[0x277D84F90];
              v7 = &qword_269330DA8;
              while (1)
              {
                if (v91)
                {
                  MEMORY[0x26D638850](KeyPath, v24);
                  v3 = (KeyPath + 1);
                  if (__OFADD__(KeyPath, 1))
                  {
                    goto LABEL_37;
                  }
                }

                else
                {
                  if (KeyPath >= *(v90 + 16))
                  {
                    goto LABEL_38;
                  }

                  v3 = (KeyPath + 1);
                  if (__OFADD__(KeyPath, 1))
                  {
                    goto LABEL_37;
                  }
                }

                v28 = v24;

                v36 = v96;
                UsoEntity_common_DurationComponent.componentValue.getter(v96);
                sub_269314864(v36, v14, &qword_280308718, &qword_269330DA8);

                if ((*v35)(v14, 1, v99) == 1)
                {
                  sub_2692EB48C(v14, &qword_280308718, &qword_269330DA8);
                  v24 = v28;
                }

                else
                {
                  sub_269314864(v14, v95, &qword_2803081C0, &qword_26932EE78);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v27 = sub_2692E33D4(0, *(v27 + 16) + 1, 1, v27);
                  }

                  v24 = v28;
                  v37 = v27;
                  v38 = *(v27 + 16);
                  v39 = v37;
                  v40 = v37[3];
                  if (v38 >= v40 >> 1)
                  {
                    v39 = sub_2692E33D4((v40 > 1), v38 + 1, 1, v39);
                  }

                  v39[2] = v38 + 1;
                  v41 = v39 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v38;
                  v27 = v39;
                  sub_269314864(v95, v41, &qword_2803081C0, &qword_26932EE78);
                }

                ++KeyPath;
                if (v3 == v34)
                {
                  goto LABEL_48;
                }
              }
            }
          }

          v27 = MEMORY[0x277D84F90];
LABEL_48:

          v49 = *(v27 + 16);
          if (!v49)
          {
LABEL_108:

            return (*(v83 + 32))(v81, v98, v84);
          }

          v50 = (*(v89 + 80) + 32) & ~*(v89 + 80);
          v77 = v27;
          v51 = v27 + v50;
          v90 = *(v89 + 72);
          LODWORD(v96) = *MEMORY[0x277D5F020];
          v95 = (v87 + 104);
          v91 = (v87 + 8);
          v52 = (v82 + 16);
          v53 = (v82 + 88);
          LODWORD(v89) = *MEMORY[0x277CC9978];
          LODWORD(v87) = *MEMORY[0x277CC9988];
          v85 = *MEMORY[0x277CC9998];
          v80 = *MEMORY[0x277CC9968];
          v79 = *MEMORY[0x277CC9980];
          v76 = *MEMORY[0x277CC99A0];
          v75 = *MEMORY[0x277CC99A8];
          v74 = *MEMORY[0x277CC99B8];
          v73 = *MEMORY[0x277CC9958];
          v72 = *MEMORY[0x277CC99B0];
          v71 = *MEMORY[0x277CC9950];
          v70 = *MEMORY[0x277CC9940];
          v69 = *MEMORY[0x277CC9960];
          v68 = *MEMORY[0x277CC9930];
          v65 = (v82 + 8);
          LODWORD(v82) = *MEMORY[0x277CC99C0];
          v67 = *MEMORY[0x277CC99C8];
          v66 = *MEMORY[0x277CC9948];
          v54 = v78;
          v56 = v93;
          v55 = v94;
          while (2)
          {
            sub_2693148CC(v51, v55);
            v57 = v92;
            (*v95)(v56, v96, v92);
            sub_269314C5C(&qword_280308720, MEMORY[0x277D5F028], MEMORY[0x277D5F038]);
            sub_26932D830();
            sub_26932D830();
            if (v102 == v100 && v103 == v101)
            {
              (*v91)(v56, v57);
            }

            else
            {
              v59 = sub_26932DF00();
              (*v91)(v56, v57);

              if ((v59 & 1) == 0)
              {
                v55 = v94;
                v60 = v86;
                (*v52)(v86, v94, v54);
                v61 = (*v53)(v60, v54);
                if (v61 != v89)
                {
                  if (v61 != v87)
                  {
                    if (v61 != v85)
                    {
                      if (v61 != v80)
                      {
                        if (v61 != v79)
                        {
                          if (v61 != v76)
                          {
                            if (v61 != v75)
                            {
                              if (v61 != v74)
                              {
                                if (v61 != v73)
                                {
                                  if (v61 != v72)
                                  {
                                    if (v61 != v71)
                                    {
                                      if (v61 != v70)
                                      {
                                        if (v61 != v69)
                                        {
                                          if (v61 != v68)
                                          {
                                            if (v61 != v82 && v61 != v67 && v61 != v66)
                                            {
                                              (*v65)(v86, v54);
                                            }

                                            goto LABEL_51;
                                          }

                                          goto LABEL_103;
                                        }

                                        goto LABEL_101;
                                      }

                                      goto LABEL_99;
                                    }

                                    goto LABEL_97;
                                  }

                                  goto LABEL_95;
                                }

                                goto LABEL_93;
                              }

                              goto LABEL_91;
                            }

                            goto LABEL_89;
                          }

                          goto LABEL_87;
                        }

                        goto LABEL_85;
                      }

                      goto LABEL_83;
                    }

                    goto LABEL_81;
                  }

                  goto LABEL_79;
                }

                break;
              }
            }

            v55 = v94;
            if (__OFSUB__(0, *&v94[*(v99 + 48)]))
            {
              __break(1u);
              return result;
            }

            v62 = v88;
            (*v52)(v88, v94, v54);
            v63 = (*v53)(v62, v54);
            if (v63 != v89)
            {
              if (v63 != v87)
              {
                if (v63 != v85)
                {
                  if (v63 != v80)
                  {
                    if (v63 != v79)
                    {
                      if (v63 != v76)
                      {
                        if (v63 != v75)
                        {
                          if (v63 != v74)
                          {
                            if (v63 != v73)
                            {
                              if (v63 != v72)
                              {
                                if (v63 != v71)
                                {
                                  if (v63 != v70)
                                  {
                                    if (v63 != v69)
                                    {
                                      if (v63 != v68)
                                      {
                                        if (v63 != v82 && v63 != v67 && v63 != v66)
                                        {
                                          (*v65)(v88, v54);
                                        }

LABEL_51:
                                        sub_2692EB48C(v55, &qword_2803081C0, &qword_26932EE78);
                                        v51 += v90;
                                        if (!--v49)
                                        {
                                          goto LABEL_108;
                                        }

                                        continue;
                                      }

LABEL_103:
                                      sub_26932BD10();
                                      goto LABEL_51;
                                    }

LABEL_101:
                                    sub_26932BD50();
                                    goto LABEL_51;
                                  }

LABEL_99:
                                  sub_26932BD20();
                                  goto LABEL_51;
                                }

LABEL_97:
                                sub_26932BD30();
                                goto LABEL_51;
                              }

LABEL_95:
                              sub_26932BE40();
                              goto LABEL_51;
                            }

LABEL_93:
                            sub_26932BD40();
                            goto LABEL_51;
                          }

LABEL_91:
                          sub_26932BE50();
                          goto LABEL_51;
                        }

LABEL_89:
                        sub_26932BE30();
                        goto LABEL_51;
                      }

LABEL_87:
                      sub_26932BE10();
                      goto LABEL_51;
                    }

LABEL_85:
                    sub_26932BDC0();
                    goto LABEL_51;
                  }

LABEL_83:
                  sub_26932BD90();
                  goto LABEL_51;
                }

LABEL_81:
                sub_26932BE00();
                goto LABEL_51;
              }

LABEL_79:
              sub_26932BDE0();
              goto LABEL_51;
            }

            break;
          }

          sub_26932BDA0();
          goto LABEL_51;
        }
      }

      if (v32 >= *(v28 + 16))
      {
        goto LABEL_36;
      }

      v3 = *(v27 + 8 * v32 + 32);

      v7 = (v32 + 1);
      if (!__OFADD__(v32, 1))
      {
        goto LABEL_9;
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }
  }

  if (qword_280307C98 != -1)
  {
    swift_once();
  }

  v42 = sub_26932D6B0();
  __swift_project_value_buffer(v42, qword_280308700);
  v43 = sub_26932D690();
  v44 = sub_26932D9B0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2692D8000, v43, v44, "DurationComponents is nil or empty!", v45, 2u);
    MEMORY[0x26D639280](v45, -1, -1);
  }

  v46 = sub_26932C0B0();
  (*(*(v46 - 8) + 56))(v24, 1, 1, v46);
  v47 = sub_26932C0D0();
  (*(*(v47 - 8) + 56))(KeyPath, 1, 1, v47);
  return sub_26932BE60();
}

uint64_t UsoEntity_common_DurationComponent.componentValue.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308718, &qword_269330DA8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308728, &qword_269330DB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_26932CBF0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_26932CF30())
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_6;
  }

  sub_26932CBE0();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_6:
    v17 = &qword_280308728;
    v18 = &qword_269330DB0;
    v19 = v12;
    goto LABEL_7;
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_269313F28(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    (*(v14 + 8))(v16, v13);
    v17 = &qword_280308718;
    v18 = &qword_269330DA8;
    v19 = v3;
LABEL_7:
    sub_2692EB48C(v19, v17, v18);
    v20 = 1;
    v21 = v31;
    return (*(v5 + 56))(v21, v20, 1, v4);
  }

  sub_269314864(v3, v9, &qword_2803081C0, &qword_26932EE78);
  if (!sub_26932CF40())
  {
    (*(v14 + 8))(v16, v13);
    goto LABEL_16;
  }

  v23 = sub_26932C960();

  v24 = sub_2692F5B80(v23, 0.0, 1.0, 0.1, 0.3);

  result = (*(v14 + 8))(v16, v13);
  if ((v24 & 0x100000000) != 0)
  {
LABEL_16:
    v25 = 1;
    goto LABEL_17;
  }

  if ((~v24 & 0x7F800000) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*&v24 <= -9.2234e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (*&v24 < 9.2234e18)
  {
    v25 = *&v24;
LABEL_17:
    v26 = *(v4 + 48);
    v27 = v30;
    sub_269314864(v9, v30, &qword_2803081C0, &qword_26932EE78);
    v28 = sub_26932C0A0();
    v29 = v31;
    (*(*(v28 - 8) + 32))(v31, v27, v28);
    v21 = v29;
    v20 = 0;
    *(v29 + v26) = v25;
    return (*(v5 + 56))(v21, v20, 1, v4);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t DateComponents.update(with:value:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_26932C0A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  result = (*(v4 + 88))(v6, v3);
  if (result == *MEMORY[0x277CC9978])
  {
    return sub_26932BDA0();
  }

  if (result == *MEMORY[0x277CC9988])
  {
    return sub_26932BDE0();
  }

  if (result == *MEMORY[0x277CC9998])
  {
    return sub_26932BE00();
  }

  if (result == *MEMORY[0x277CC9968])
  {
    return sub_26932BD90();
  }

  if (result == *MEMORY[0x277CC9980])
  {
    return sub_26932BDC0();
  }

  if (result == *MEMORY[0x277CC99A0])
  {
    return sub_26932BE10();
  }

  if (result == *MEMORY[0x277CC99A8])
  {
    return sub_26932BE30();
  }

  if (result == *MEMORY[0x277CC99B8])
  {
    return sub_26932BE50();
  }

  if (result == *MEMORY[0x277CC9958])
  {
    return sub_26932BD40();
  }

  if (result == *MEMORY[0x277CC99B0])
  {
    return sub_26932BE40();
  }

  if (result == *MEMORY[0x277CC9950])
  {
    return sub_26932BD30();
  }

  if (result == *MEMORY[0x277CC9940])
  {
    return sub_26932BD20();
  }

  if (result == *MEMORY[0x277CC9960])
  {
    return sub_26932BD50();
  }

  if (result == *MEMORY[0x277CC9930])
  {
    return sub_26932BD10();
  }

  if (result != *MEMORY[0x277CC99C0] && result != *MEMORY[0x277CC99C8] && result != *MEMORY[0x277CC9948])
  {
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_2693133D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308210, &qword_26932EEC0);
  MEMORY[0x28223BE20](v1 - 8);
  v82 = &v73 - v2;
  v3 = sub_26932BE70();
  v85 = *(v3 - 8);
  v86 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v76 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v83 = &v73 - v6;
  v87 = sub_26932BF40();
  v84 = *(v87 - 8);
  v7 = MEMORY[0x28223BE20](v87);
  v75 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v91 = &v73 - v9;
  v10 = sub_26932BFF0();
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x28223BE20](v10);
  *&v77 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26932C0B0();
  v80 = *(v12 - 8);
  v81 = v12;
  MEMORY[0x28223BE20](v12);
  v90 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308718, &qword_269330DA8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v73 - v15;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
  v88 = *(v92 - 8);
  v17 = MEMORY[0x28223BE20](v92);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v89 = &v73 - v20;
  v21 = sub_26932CBF0();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v73 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v73 - v29;
  v31 = *(v22 + 16);
  v31(&v73 - v29, v0, v21);
  v32 = (*(v22 + 88))(v30, v21);
  if (v32 != *MEMORY[0x277D5E978] && v32 != *MEMORY[0x277D5E970] && v32 != *MEMORY[0x277D5E940] && v32 != *MEMORY[0x277D5E948])
  {
    v74 = *(v22 + 8);
    v74(v30, v21, 1.0);
    sub_269313F28(v16);
    if ((*(v88 + 48))(v16, 1, v92) == 1)
    {
      sub_2692EB48C(v16, &qword_280308718, &qword_269330DA8);
      if (qword_280307C98 != -1)
      {
        swift_once();
      }

      v33 = sub_26932D6B0();
      __swift_project_value_buffer(v33, qword_280308700);
      v31(v28, v0, v21);
      v34 = sub_26932D690();
      v35 = sub_26932D9A0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v93 = v37;
        *v36 = 136315138;
        v31(v25, v28, v21);
        v38 = sub_26932D790();
        v40 = v39;
        (v74)(v28, v21);
        v41 = sub_2692DD5A8(v38, v40, &v93);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_2692D8000, v34, v35, "Unexpected duration unit %s. Using zero for this component.", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x26D639280](v37, -1, -1);
        MEMORY[0x26D639280](v36, -1, -1);
      }

      else
      {

        (v74)(v28, v21);
      }
    }

    else
    {
      v42 = v89;
      sub_269314864(v16, v89, &qword_2803081C0, &qword_26932EE78);
      v43 = v77;
      sub_26932BFC0();
      sub_26932BFD0();
      (*(v78 + 8))(v43, v79);
      sub_26932BF20();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308558, &unk_2693304A0);
      v45 = sub_26932C0A0();
      v46 = *(v45 - 8);
      v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v78 = *(v46 + 72);
      v79 = v44;
      v48 = swift_allocObject();
      v77 = xmmword_26932EEA0;
      *(v48 + 16) = xmmword_26932EEA0;
      sub_2693148CC(v42, v19);
      (*(v46 + 32))(v48 + v47, v19, v45);
      sub_26931493C(v48);
      swift_setDeallocating();
      v49 = *(v46 + 8);
      v88 = v45;
      v74 = v49;
      (v49)(v48 + v47, v45);
      swift_deallocClassInstance();
      v50 = v83;
      sub_26932C020();
      v51 = v50;

      v52 = v82;
      sub_26932C070();
      v53 = v84;
      v54 = v87;
      if ((*(v84 + 48))(v52, 1, v87) == 1)
      {
        (*(v85 + 8))(v51, v86);
        (*(v53 + 8))(v91, v54);
        (*(v80 + 8))(v90, v81);
        sub_2692EB48C(v89, &qword_2803081C0, &qword_26932EE78);
        v55 = &qword_280308210;
        v56 = &qword_26932EEC0;
        v57 = v52;
      }

      else
      {
        v58 = v75;
        (*(v53 + 32))(v75, v52, v54);
        v59 = swift_allocObject();
        *(v59 + 16) = v77;
        v60 = v88;
        (*(v46 + 104))(v59 + v47, *MEMORY[0x277CC99A8], v88);
        sub_26931493C(v59);
        swift_setDeallocating();
        (v74)(v59 + v47, v60);
        swift_deallocClassInstance();
        v61 = v76;
        v62 = v91;
        v63 = v58;
        v64 = v53;
        v65 = v90;
        sub_26932C010();

        v88 = sub_26932BE20();
        v67 = v66;
        v68 = v86;
        v69 = *(v85 + 8);
        v69(v61, v86);
        v70 = *(v64 + 8);
        v71 = v63;
        v72 = v87;
        v70(v71, v87);
        v69(v51, v68);
        v70(v62, v72);
        (*(v80 + 8))(v65, v81);
        if ((v67 & 1) == 0)
        {
          sub_2692EB48C(v89, &qword_2803081C0, &qword_26932EE78);
          return;
        }

        v55 = &qword_2803081C0;
        v56 = &qword_26932EE78;
        v57 = v89;
      }

      sub_2692EB48C(v57, v55, v56);
    }
  }
}

uint64_t sub_269313F28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26932CBF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D5E930])
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  if (v8 == *MEMORY[0x277D5E920])
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v12 = *(v11 + 48);
    v13 = *MEMORY[0x277CC9940];
    v14 = sub_26932C0A0();
    (*(*(v14 - 8) + 104))(a1, v13, v14);
    v15 = 2;
LABEL_10:
    *(a1 + v12) = v15;
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  if (v8 == *MEMORY[0x277D5E958])
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v12 = *(v11 + 48);
    v16 = MEMORY[0x277CC9988];
LABEL_7:
    v17 = *v16;
    v18 = sub_26932C0A0();
    (*(*(v18 - 8) + 104))(a1, v17, v18);
    v15 = 1;
    goto LABEL_10;
  }

  if (v8 == *MEMORY[0x277D5E980])
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v12 = *(v11 + 48);
    v19 = *MEMORY[0x277CC9988];
    v20 = sub_26932C0A0();
    (*(*(v20 - 8) + 104))(a1, v19, v20);
    v15 = 100;
    goto LABEL_10;
  }

  if (v8 == *MEMORY[0x277D5E978])
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v12 = *(v11 + 48);
    v16 = MEMORY[0x277CC99A8];
    goto LABEL_7;
  }

  if (v8 == *MEMORY[0x277D5E938])
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v12 = *(v11 + 48);
    v16 = MEMORY[0x277CC99B0];
    goto LABEL_7;
  }

  if (v8 == *MEMORY[0x277D5E970])
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v12 = *(v11 + 48);
    v16 = MEMORY[0x277CC99A0];
    goto LABEL_7;
  }

  if (v8 == *MEMORY[0x277D5E940])
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v12 = *(v11 + 48);
    v16 = MEMORY[0x277CC9968];
    goto LABEL_7;
  }

  if (v8 == *MEMORY[0x277D5E948])
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v12 = *(v11 + 48);
    v16 = MEMORY[0x277CC9980];
    goto LABEL_7;
  }

  if (v8 == *MEMORY[0x277D5E928])
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v12 = *(v11 + 48);
    v21 = *MEMORY[0x277CC9930];
    v22 = sub_26932C0A0();
    (*(*(v22 - 8) + 104))(a1, v21, v22);
    v15 = 1000000;
    goto LABEL_10;
  }

  if (v8 == *MEMORY[0x277D5E960])
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v12 = *(v11 + 48);
    v16 = MEMORY[0x277CC9998];
    goto LABEL_7;
  }

  if (v8 == *MEMORY[0x277D5E968])
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
    v12 = *(v11 + 48);
    v23 = *MEMORY[0x277CC9988];
    v24 = sub_26932C0A0();
    (*(*(v24 - 8) + 104))(a1, v23, v24);
    v15 = 10;
    goto LABEL_10;
  }

  v25 = *MEMORY[0x277D5E950];
  v26 = v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
  if (v26 == v25)
  {
    v28 = *(v27 + 48);
    v29 = *MEMORY[0x277CC9940];
    v30 = v27;
    v31 = sub_26932C0A0();
    (*(*(v31 - 8) + 104))(a1, v29, v31);
    *(a1 + v28) = 1;
    return (*(*(v30 - 8) + 56))(a1, 0, 1, v30);
  }

  else
  {
    (*(*(v27 - 8) + 56))(a1, 1, 1);
    return (*(v5 + 8))(v7, v4);
  }
}

double sub_26931459C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308728, &qword_269330DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_26932CBF0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  if (sub_26932CF30())
  {
    sub_26932CBE0();

    if ((*(v4 + 48))(v2, 1, v3) != 1)
    {
      (*(v4 + 32))(v9, v2, v3);
      v7 = v9;
      goto LABEL_10;
    }
  }

  else
  {
    (*(v4 + 56))(v2, 1, 1, v3);
  }

  sub_2692EB48C(v2, &qword_280308728, &qword_269330DB0);
  if (qword_280307C98 != -1)
  {
    swift_once();
  }

  v10 = sub_26932D6B0();
  __swift_project_value_buffer(v10, qword_280308700);
  v11 = sub_26932D690();
  v12 = sub_26932D9A0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2692D8000, v11, v12, "DurationComponent is underspecified and is missing a Unit, using Minute as default unit", v13, 2u);
    MEMORY[0x26D639280](v13, -1, -1);
  }

  (*(v4 + 104))(v7, *MEMORY[0x277D5E970], v3);
LABEL_10:
  sub_2693133D8();
  v15 = v14;
  (*(v4 + 8))(v7, v3);
  return v15;
}

uint64_t sub_269314864(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2693148CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26931493C(uint64_t a1)
{
  v2 = sub_26932C0A0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308730, &qword_269330DC0);
    v9 = sub_26932DB40();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_269314C5C(&qword_280308738, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_26932D740();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_269314C5C(&qword_280308740, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_26932D750();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_269314C5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269314CA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308748, &qword_269330DC8);
    v3 = sub_26932DB40();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_26932DF50();

      sub_26932D7D0();
      result = sub_26932DF70();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_26932DF00();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_269314E0C()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308750);
  v1 = __swift_project_value_buffer(v0, qword_280308750);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_269314ED4()
{
  v0 = sub_26932D4A0();
  result = sub_26932D490();
  qword_2814B2638 = v0;
  unk_2814B2640 = MEMORY[0x277D5FDD8];
  qword_2814B2620 = result;
  return result;
}

uint64_t static SiriReferenceResolutionResolver.shared.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_2814B2618 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_269314F88(&qword_2814B2620, v2);
}

uint64_t SiriReferenceResolutionResolver.resolveReferenceEntity(referenceEntity:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308768, &qword_269330DD0);
  MEMORY[0x28223BE20](v3 - 8);
  v88 = &v84 - v4;
  v87 = sub_26932D6D0();
  v86 = *(v87 - 8);
  v5 = MEMORY[0x28223BE20](v87);
  v85 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v84 - v7;
  v94 = sub_26932D710();
  v96 = *(v94 - 8);
  v8 = MEMORY[0x28223BE20](v94);
  v89 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v108 = &v84 - v10;
  v11 = sub_26932D6E0();
  v104 = *(v11 - 8);
  v105 = v11;
  MEMORY[0x28223BE20](v11);
  v101 = (&v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308770, &unk_269330DD8);
  v13 = MEMORY[0x28223BE20](v103);
  v102 = (&v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v109 = &v84 - v15;
  v16 = sub_26932BFA0();
  v99 = *(v16 - 8);
  v100 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26932D6B0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SiriTimeMeasurement(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_26932D700();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v95 = a2;
  v92 = v26;
  v91 = v28;
  v90 = v27 + 56;
  (v28)(a2, 1, 1);
  if (qword_280307CA0 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v19, qword_280308750);
  v30 = *(v20 + 16);
  v98 = v29;
  v30(v22);
  v97 = mach_absolute_time();
  *&v25[v23[7]] = xmmword_26932EEB0;
  *&v25[v23[8]] = 0x7FEFFFFFFFFFFFFFLL;
  v31 = v23[9];
  sub_26932BF90();
  v32 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v33 = sub_26932BF70();
  v110 = v25;
  v34 = v33;
  v35 = [v32 initWithNSUUID_];

  v36 = v110;
  (*(v99 + 8))(v18, v100);
  *(v36 + v31) = v35;
  *(v36 + 8) = 31;
  (v30)(v36 + v23[6], v22, v19);
  *v36 = v97;
  sub_26931A2C8();
  (*(v20 + 8))(v22, v19);
  __swift_project_boxed_opaque_existential_1(v106, v106[3]);
  v37 = v101;
  *v101 = v107;
  v39 = v104;
  v38 = v105;
  (*(v104 + 104))(v37, *MEMORY[0x277D5FEA8], v105);

  v40 = v109;
  sub_26932D4C0();
  (*(v39 + 8))(v37, v38);
  SiriTimeMeasurement.logDelta()();
  v41 = v102;
  sub_2692E3B90(v40, v102, &qword_280308770, &unk_269330DD8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v43 = v40;
  v44 = v41;
  if (EnumCaseMultiPayload == 1)
  {
    v45 = *v41;
    v46 = *v44;
    v47 = sub_26932D690();
    v48 = sub_26932D9A0();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v111 = v45;
      v112[0] = v50;
      *v49 = 136315138;
      v51 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
      v52 = sub_26932D790();
      v54 = sub_2692DD5A8(v52, v53, v112);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_2692D8000, v47, v48, "Resolve reference from SRR was unsuccessful: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      v55 = v50;
      v36 = v110;
      MEMORY[0x26D639280](v55, -1, -1);
      MEMORY[0x26D639280](v49, -1, -1);
    }

    v56 = sub_26932BE80();
    sub_26931B26C(v56, 1, 0, 144);

    sub_2692EB48C(v43, &qword_280308770, &unk_269330DD8);
    return sub_2692EB4EC(v36);
  }

  else
  {
    v58 = v96;
    v59 = v108;
    v60 = v94;
    (*(v96 + 32))(v108, v44, v94);
    v61 = v89;
    (*(v58 + 16))(v89, v59, v60);
    if ((*(v58 + 88))(v61, v60) == *MEMORY[0x277D5FEC0])
    {
      (*(v58 + 96))(v61, v60);
      v62 = v86;
      v63 = v93;
      v64 = v87;
      (*(v86 + 32))(v93, v61, v87);
      v65 = v85;
      (*(v62 + 16))(v85, v63, v64);
      v66 = sub_26932D690();
      v67 = sub_26932D9B0();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = v65;
        v69 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v112[0] = v107;
        *v69 = 136315138;
        sub_269316308();
        v70 = sub_26932DDD0();
        v72 = v71;
        v73 = *(v62 + 8);
        v73(v68, v64);
        v74 = sub_2692DD5A8(v70, v72, v112);
        v58 = v96;

        *(v69 + 4) = v74;
        _os_log_impl(&dword_2692D8000, v66, v67, "Resolve reference from SRR was successful with resolved entity match: %s", v69, 0xCu);
        v75 = v107;
        __swift_destroy_boxed_opaque_existential_1Tm(v107);
        v36 = v110;
        MEMORY[0x26D639280](v75, -1, -1);
        MEMORY[0x26D639280](v69, -1, -1);
      }

      else
      {

        v73 = *(v62 + 8);
        v73(v65, v64);
      }

      v81 = v88;
      v82 = v93;
      sub_26932D6C0();
      v73(v82, v64);
      (*(v58 + 8))(v108, v60);
      sub_2692EB48C(v109, &qword_280308770, &unk_269330DD8);
      sub_2692EB4EC(v36);
      v83 = v95;
      sub_2692EB48C(v95, &qword_280308768, &qword_269330DD0);
      v91(v81, 0, 1, v92);
      return sub_269316298(v81, v83);
    }

    else
    {
      v76 = sub_26932D690();
      v77 = sub_26932D9B0();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_2692D8000, v76, v77, "Resolve reference from SRR was successful but returned ambiguous or empty matches", v78, 2u);
        MEMORY[0x26D639280](v78, -1, -1);
      }

      v79 = *(v58 + 8);
      v79(v108, v60);
      sub_2692EB48C(v43, &qword_280308770, &unk_269330DD8);
      sub_2692EB4EC(v36);
      v80 = v95;
      sub_2692EB48C(v95, &qword_280308768, &qword_269330DD0);
      v91(v80, 1, 1, v92);
      return (v79)(v61, v60);
    }
  }
}

uint64_t SiriReferenceResolutionResolver.hasReference(usoEntity:)(uint64_t result)
{
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);

    v2 = sub_26932D4B0();

    return v2 & 1;
  }

  return result;
}

uint64_t SiriReferenceResolutionResolver.getAlarmEntityFromDateTime()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308768, &qword_269330DD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_26932CDF0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26932D000();
  swift_allocObject();
  sub_26932CFF0();
  (*(v4 + 104))(v6, *MEMORY[0x277D5EE50], v3);
  sub_26932CFE0();
  (*(v4 + 8))(v6, v3);
  sub_26932CFD0();
  swift_allocObject();
  v7 = sub_26932CFC0();

  sub_26932CC10();

  v8 = MEMORY[0x26D6377F0](v7);
  if (!v8)
  {
    if (qword_280307CA0 != -1)
    {
      swift_once();
    }

    v11 = sub_26932D6B0();
    __swift_project_value_buffer(v11, qword_280308750);
    v12 = sub_26932D690();
    v13 = sub_26932D9B0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2692D8000, v12, v13, "Creation of was common_DateTime entity was unsuccessful", v14, 2u);
      MEMORY[0x26D639280](v14, -1, -1);
    }

    return 0;
  }

  SiriReferenceResolutionResolver.resolveReferenceEntity(referenceEntity:)(v8, v2);
  v9 = sub_26932D700();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v2, 1, v9) == 1)
  {

    sub_2692EB48C(v2, &qword_280308768, &qword_269330DD0);
    return 0;
  }

  v16 = RREntity.alarmEntity()();

  (*(v10 + 8))(v2, v9);
  return v16;
}

uint64_t RREntity.alarmEntity()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308780, &qword_269330DE8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22 - v1;
  sub_26932D6F0();
  sub_26932CDA0();
  sub_26932CC20();

  if (!v23)
  {
    return 0;
  }

  if (!sub_26932CD60() || (v3 = sub_26932D280(), , !v3) || (v4 = sub_26932D2E0(), , !v4))
  {
LABEL_8:

    return 0;
  }

  v5 = sub_26932D210();
  if (v6 & 1) != 0 || (v7 = v5, v8 = sub_26932D220(), (v9))
  {

    goto LABEL_8;
  }

  v11 = v8;
  if (qword_280307CA0 != -1)
  {
    swift_once();
  }

  v12 = sub_26932D6B0();
  __swift_project_value_buffer(v12, qword_280308750);
  v13 = sub_26932D690();
  v14 = sub_26932D9B0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2692D8000, v13, v14, "Creating a UsoEntity_common_Alarm instance from returned SRR result", v15, 2u);
    MEMORY[0x26D639280](v15, -1, -1);
  }

  sub_26932CD50();
  swift_allocObject();
  v16 = sub_26932CD40();
  v17 = MEMORY[0x277D5E900];
  if (v7 >= 12)
  {
    v17 = MEMORY[0x277D5E908];
  }

  v18 = *v17;
  v19 = sub_26932CBD0();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v2, v18, v19);
  (*(v20 + 56))(v2, 0, 1, v19);
  if (sub_26932CD90())
  {
    v21 = sub_26932CBA0();
  }

  else
  {
    v21 = 0;
  }

  sub_269316360(v7, v11, v2, v21);

  sub_2692EB48C(v2, &qword_280308780, &qword_269330DE8);
  sub_26932CD30();

  MEMORY[0x26D6377F0](v16);
  sub_26932CA70();
  sub_26932CC20();

  return v23;
}

uint64_t sub_269316298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308768, &qword_269330DD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_269316308()
{
  result = qword_280308778;
  if (!qword_280308778)
  {
    sub_26932D6D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308778);
  }

  return result;
}

uint64_t sub_269316360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v22 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308780, &qword_269330DE8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_26932CBD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26932CE30();
  swift_allocObject();
  v11 = sub_26932CE20();
  sub_26932CE10();
  swift_allocObject();
  sub_26932CE20();
  sub_26932CE10();
  sub_26932D050();
  swift_allocObject();
  sub_26932D040();

  sub_26932D010();
  v23 = v11;

  sub_26932D030();

  sub_2692E3B90(v22, v6, &qword_280308780, &qword_269330DE8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2692EB48C(v6, &qword_280308780, &qword_269330DE8);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_26932CEA0();
    swift_allocObject();
    sub_26932CE90();
    sub_26932CE80();

    sub_26932D020();

    (*(v8 + 8))(v10, v7);
  }

  sub_26932CE70();
  swift_allocObject();
  v12 = sub_26932CE60();

  sub_26932CE50();

  if (v24)
  {
    sub_26932CCF0();
    swift_allocObject();

    sub_26932CCE0();
    if (sub_26932CA10())
    {
      sub_26932CB00();
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        swift_allocObject();
        sub_26932CE20();
        sub_26932CE10();

        sub_26932CCB0();
      }
    }

    if (sub_26932CA20())
    {
      v15 = sub_26932CD00();

      if (v15)
      {
        sub_26932CB00();
        v17 = v16;

        if ((v17 & 1) == 0)
        {
          swift_allocObject();
          sub_26932CE20();
          sub_26932CE10();
          sub_26932CFA0();
          swift_allocObject();
          sub_26932CF90();

          sub_26932CF80();

          sub_26932CCC0();
        }
      }
    }

    if (sub_26932CA30())
    {
      sub_26932CB00();
      v19 = v18;

      if ((v19 & 1) == 0)
      {
        swift_allocObject();
        sub_26932CE20();
        sub_26932CE10();

        sub_26932CCD0();
      }
    }

    sub_26932CE40();
  }

  return v12;
}

uint64_t DeviceUnit.isRemote.getter()
{
  v0 = sub_26932D570();
  result = 1;
  if (v0 <= 1999)
  {
    if (v0)
    {
      if (v0 == 1000)
      {
        return result;
      }

      return 0;
    }

    if (qword_280307CB0 != -1)
    {
      swift_once();
    }

    v2 = sub_26932D6B0();
    __swift_project_value_buffer(v2, qword_280308788);
    v3 = sub_26932D690();
    v4 = sub_26932D9B0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2692D8000, v3, v4, "Device proximity is 'unknown'. Assuming device is remote for indeterminate proximity state. This needs to be fixed by an upstream component from Time Domains.", v5, 2u);
      MEMORY[0x26D639280](v5, -1, -1);
    }

    return 1;
  }

  else if (v0 != 2000 && v0 != 3000)
  {
    return 0;
  }

  return result;
}

uint64_t DeviceUnit.shouldDismissSilently.getter()
{
  v0 = sub_26932D570();
  if (v0 <= 1999)
  {
    if (v0 && v0 != 1000)
    {
      goto LABEL_26;
    }

    if (qword_280307CB0 != -1)
    {
      swift_once();
    }

    v6 = sub_26932D6B0();
    __swift_project_value_buffer(v6, qword_280308788);
    v2 = sub_26932D690();
    v7 = sub_26932D9B0();
    if (!os_log_type_enabled(v2, v7))
    {
      goto LABEL_32;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v8 = "Firing alarm/timer is on far/unknown device: will dismiss with dialog.";
LABEL_30:
    _os_log_impl(&dword_2692D8000, v2, v7, v8, v4, 2u);
    v11 = 0;
    goto LABEL_31;
  }

  if (v0 != 2000 && v0 != 3000)
  {
    if (v0 == 4000)
    {
      if (qword_280307CB0 != -1)
      {
        swift_once();
      }

      v1 = sub_26932D6B0();
      __swift_project_value_buffer(v1, qword_280308788);
      v2 = sub_26932D690();
      v3 = sub_26932D9B0();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        v5 = "Firing alarm/timer is on local device: will dismiss them silently with no dialog.";
LABEL_24:
        _os_log_impl(&dword_2692D8000, v2, v3, v5, v4, 2u);
        v11 = 1;
LABEL_31:
        MEMORY[0x26D639280](v4, -1, -1);
        goto LABEL_33;
      }

      goto LABEL_25;
    }

LABEL_26:
    if (qword_280307CB0 != -1)
    {
      swift_once();
    }

    v12 = sub_26932D6B0();
    __swift_project_value_buffer(v12, qword_280308788);
    v2 = sub_26932D690();
    v7 = sub_26932D9A0();
    if (os_log_type_enabled(v2, v7))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v8 = "Firing alarm/timer is on unhandled proximity device. This is a programming error and needs to be handled. Defaulting to non-silent dismissal.";
      goto LABEL_30;
    }

LABEL_32:
    v11 = 0;
    goto LABEL_33;
  }

  if (_s27SiriVirtualDeviceResolution0C4UnitC0A12TimeInternalE10isCommunalSbvg_0())
  {
    if (qword_280307CB0 != -1)
    {
      swift_once();
    }

    v9 = sub_26932D6B0();
    __swift_project_value_buffer(v9, qword_280308788);
    v2 = sub_26932D690();
    v7 = sub_26932D9B0();
    if (!os_log_type_enabled(v2, v7))
    {
      goto LABEL_32;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v8 = "Firing alarm/timer is on nearby communal device: will dismiss with dialog.";
    goto LABEL_30;
  }

  if (qword_280307CB0 != -1)
  {
    swift_once();
  }

  v10 = sub_26932D6B0();
  __swift_project_value_buffer(v10, qword_280308788);
  v2 = sub_26932D690();
  v3 = sub_26932D9B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Firing alarm/timer is on nearby device: will dismiss silently with no dialog.";
    goto LABEL_24;
  }

LABEL_25:
  v11 = 1;
LABEL_33:

  return v11;
}

uint64_t DeviceUnit.shouldPromptForConfirmation.getter()
{
  v0 = sub_26932D570();
  if (v0 <= 1999)
  {
    if (!v0 || v0 == 1000)
    {
      if (qword_280307CB0 != -1)
      {
        swift_once();
      }

      v6 = sub_26932D6B0();
      __swift_project_value_buffer(v6, qword_280308788);
      v2 = sub_26932D690();
      v7 = sub_26932D9B0();
      if (os_log_type_enabled(v2, v7))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        v8 = "Firing alarm/timer is not near local device: will require confirmation";
LABEL_25:
        _os_log_impl(&dword_2692D8000, v2, v7, v8, v4, 2u);
        v10 = 1;
        goto LABEL_26;
      }

LABEL_27:
      v10 = 1;
      goto LABEL_28;
    }

LABEL_21:
    if (qword_280307CB0 != -1)
    {
      swift_once();
    }

    v11 = sub_26932D6B0();
    __swift_project_value_buffer(v11, qword_280308788);
    v2 = sub_26932D690();
    v7 = sub_26932D9A0();
    if (os_log_type_enabled(v2, v7))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v8 = "Firing alarm/timer reported unhandled proximity: will require confirmation – This is an error for an unhandled proximity case";
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  if (v0 != 2000 && v0 != 3000)
  {
    if (v0 == 4000)
    {
      if (qword_280307CB0 != -1)
      {
        swift_once();
      }

      v1 = sub_26932D6B0();
      __swift_project_value_buffer(v1, qword_280308788);
      v2 = sub_26932D690();
      v3 = sub_26932D9B0();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        v5 = "Firing alarm/timer is on local device: will skip confirmation";
LABEL_19:
        _os_log_impl(&dword_2692D8000, v2, v3, v5, v4, 2u);
        v10 = 0;
LABEL_26:
        MEMORY[0x26D639280](v4, -1, -1);
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (qword_280307CB0 != -1)
  {
    swift_once();
  }

  v9 = sub_26932D6B0();
  __swift_project_value_buffer(v9, qword_280308788);
  v2 = sub_26932D690();
  v3 = sub_26932D9B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Firing alarm/timer is on nearby device: will skip confirmation";
    goto LABEL_19;
  }

LABEL_20:
  v10 = 0;
LABEL_28:

  return v10;
}

BOOL DeviceUnit.isLocal.getter()
{
  sub_26932D570();
  v0 = sub_26932D680();
  return v0 == sub_26932D680();
}

uint64_t sub_269317050()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308788);
  v1 = __swift_project_value_buffer(v0, qword_280308788);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_269317190()
{
  sub_26932D570();
  v0 = sub_26932D680();
  return v0 == sub_26932D680();
}

uint64_t TipKitSiriTimeSource.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26932DC60();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2693172CC()
{
  sub_26932DF50();
  sub_26932D7D0();
  return sub_26932DF70();
}

uint64_t sub_269317340(uint64_t a1)
{
  sub_26932DF50();
  sub_26932D7D0();
  return sub_26932DF70();
}

uint64_t TipKitSiriTimeContext.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26932DC60();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_269317434()
{
  sub_26932DF50();
  sub_26932D7D0();
  return sub_26932DF70();
}

uint64_t sub_2693174A8(uint64_t a1)
{
  sub_26932DF50();
  sub_26932D7D0();
  return sub_26932DF70();
}

uint64_t sub_269317508@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26932DC60();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_269317580()
{
  result = qword_2803087A0;
  if (!qword_2803087A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803087A0);
  }

  return result;
}

unint64_t sub_2693175D8()
{
  result = qword_2803087A8;
  if (!qword_2803087A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803087A8);
  }

  return result;
}

uint64_t sub_26931765C()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2814B2370);
  v1 = __swift_project_value_buffer(v0, qword_2814B2370);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t UsoEntity_common_Alarm.relativeOffsetInMinutes.getter()
{
  v0 = sub_26932CEC0();
  v67 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v63 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803087B0, &qword_269331018);
  MEMORY[0x28223BE20](v66);
  v3 = &v58 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803087B8, &qword_269331020);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v65 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v68 = &v58 - v8;
  MEMORY[0x28223BE20](v7);
  v69 = &v58 - v9;
  v10 = sub_26932CB80();
  v70 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v64 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803087C0, &qword_269331028);
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803087C8, &qword_269331030);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v58 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v58 - v22;
  result = sub_26932CA50();
  if (!result)
  {
    return result;
  }

  v25 = result;
  if (!sub_26932CA50() || (v60 = v3, v26 = v0, v27 = sub_26932CB60(), , (v62 = v27) == 0))
  {
LABEL_35:

    return 0;
  }

  v28 = sub_26932CB90();
  v29 = v26;
  v61 = v25;
  if (v28)
  {

    v30 = sub_26932CB90();
    v59 = v26;
    if (v30)
    {
      sub_26932CB70();

      v31 = v70;
    }

    else
    {
      v31 = v70;
      (*(v70 + 56))(v23, 1, 1, v10);
    }

    (*(v31 + 104))(v21, *MEMORY[0x277D5E8C8], v10);
    (*(v31 + 56))(v21, 0, 1, v10);
    v32 = *(v12 + 48);
    sub_2692E3B90(v23, v14, &qword_2803087C8, &qword_269331030);
    sub_2692E3B90(v21, &v14[v32], &qword_2803087C8, &qword_269331030);
    v33 = *(v31 + 48);
    if (v33(v14, 1, v10) == 1)
    {
      sub_2692EB48C(v21, &qword_2803087C8, &qword_269331030);
      sub_2692EB48C(v23, &qword_2803087C8, &qword_269331030);
      if (v33(&v14[v32], 1, v10) == 1)
      {
        sub_2692EB48C(v14, &qword_2803087C8, &qword_269331030);
        v29 = v59;
        goto LABEL_16;
      }

LABEL_13:
      sub_2692EB48C(v14, &qword_2803087C0, &qword_269331028);
      goto LABEL_34;
    }

    sub_2692E3B90(v14, v18, &qword_2803087C8, &qword_269331030);
    if (v33(&v14[v32], 1, v10) == 1)
    {
      sub_2692EB48C(v21, &qword_2803087C8, &qword_269331030);
      sub_2692EB48C(v23, &qword_2803087C8, &qword_269331030);
      (*(v31 + 8))(v18, v10);
      goto LABEL_13;
    }

    v34 = v64;
    (*(v31 + 32))(v64, &v14[v32], v10);
    sub_269319470(&qword_2803087D8, MEMORY[0x277D5E8D0], MEMORY[0x277D5E8D8]);
    LODWORD(v70) = sub_26932D750();
    v35 = *(v31 + 8);
    v35(v34, v10);
    sub_2692EB48C(v21, &qword_2803087C8, &qword_269331030);
    sub_2692EB48C(v23, &qword_2803087C8, &qword_269331030);
    v35(v18, v10);
    sub_2692EB48C(v14, &qword_2803087C8, &qword_269331030);
    v29 = v59;
    if ((v70 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_16:
  if (!sub_26932CBB0())
  {
    goto LABEL_28;
  }

  if (sub_26932CBB0())
  {
    v36 = v69;
    sub_26932CEB0();

    v37 = v60;
    v38 = v67;
  }

  else
  {
    v38 = v67;
    v36 = v69;
    (*(v67 + 56))(v69, 1, 1, v29);
    v37 = v60;
  }

  v39 = v68;
  (*(v38 + 104))(v68, *MEMORY[0x277D5F018], v29);
  (*(v38 + 56))(v39, 0, 1, v29);
  v40 = *(v66 + 48);
  sub_2692E3B90(v36, v37, &qword_2803087B8, &qword_269331020);
  sub_2692E3B90(v39, v37 + v40, &qword_2803087B8, &qword_269331020);
  v41 = *(v38 + 48);
  if (v41(v37, 1, v29) == 1)
  {
    sub_2692EB48C(v39, &qword_2803087B8, &qword_269331020);
    sub_2692EB48C(v36, &qword_2803087B8, &qword_269331020);
    if (v41(v37 + v40, 1, v29) == 1)
    {
      sub_2692EB48C(v37, &qword_2803087B8, &qword_269331020);
      goto LABEL_28;
    }

LABEL_25:
    sub_2692EB48C(v37, &qword_2803087B0, &qword_269331018);
    goto LABEL_34;
  }

  v42 = v65;
  sub_2692E3B90(v37, v65, &qword_2803087B8, &qword_269331020);
  if (v41(v37 + v40, 1, v29) == 1)
  {
    sub_2692EB48C(v68, &qword_2803087B8, &qword_269331020);
    sub_2692EB48C(v69, &qword_2803087B8, &qword_269331020);
    (*(v38 + 8))(v42, v29);
    goto LABEL_25;
  }

  v43 = v37 + v40;
  v44 = v63;
  (*(v38 + 32))(v63, v43, v29);
  sub_269319470(&qword_2803087D0, MEMORY[0x277D5F028], MEMORY[0x277D5F030]);
  v45 = sub_26932D750();
  v46 = *(v38 + 8);
  v46(v44, v29);
  sub_2692EB48C(v68, &qword_2803087B8, &qword_269331020);
  sub_2692EB48C(v69, &qword_2803087B8, &qword_269331020);
  v46(v42, v29);
  sub_2692EB48C(v37, &qword_2803087B8, &qword_269331020);
  if ((v45 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_28:
  v47 = UsoEntity_common_Duration.valueInSeconds.getter();
  [objc_opt_self() minimumDuration];
  if (v48 >= v47)
  {
LABEL_34:

    goto LABEL_35;
  }

  if (qword_2814B2368 != -1)
  {
    v70 = 0x404E000000000000;
    swift_once();
  }

  v49 = sub_26932D6B0();
  __swift_project_value_buffer(v49, qword_2814B2370);
  v50 = sub_26932D690();
  v51 = sub_26932D9B0();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v71 = v53;
    *v52 = 136315138;
    v54 = sub_26932D920();
    v56 = sub_2692DD5A8(v54, v55, &v71);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_2692D8000, v50, v51, "Got UsoEntity_common_Alarm relativeOffsetInMinutes (from now): %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x26D639280](v53, -1, -1);
    MEMORY[0x26D639280](v52, -1, -1);
  }

  v57 = sub_26932D910();

  return v57;
}

uint64_t UsoEntity_common_Alarm.eligibleForTimerReformation.getter()
{
  v0 = UsoEntity_common_Alarm.relativeOffsetInMinutes.getter();
  if (!v0 || (v1 = v0, [v0 doubleValue], v3 = v2, v1, v4 = objc_opt_self(), objc_msgSend(v4, sel_minimumDuration), v5 >= v3))
  {
    if (qword_2814B2368 != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_9;
  }

  [v4 maxReformationDuration];
  if (v6 < v3)
  {
    if (qword_2814B2368 != -1)
    {
      swift_once();
    }

    v7 = sub_26932D6B0();
    __swift_project_value_buffer(v7, qword_2814B2370);
    v8 = sub_26932D690();
    v9 = sub_26932D9B0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "UsoEntity_common_Alarm.eligibleForTimerReformation = false (maxReformationDuration)";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!sub_26932CA60())
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v14 = sub_26932CF50();

  if (!v14)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_40:
    if (qword_2814B2368 != -1)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v22 = sub_26932D6B0();
      __swift_project_value_buffer(v22, qword_2814B2370);

      v23 = sub_26932D690();
      v24 = sub_26932D990();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v44[0] = v26;
        *v25 = 136315138;
        v27 = MEMORY[0x26D638530](v17, MEMORY[0x277D84F70] + 8);
        v29 = sub_2692DD5A8(v27, v28, v44);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_2692D8000, v23, v24, "UsoEntity_common_Alarm.eligibleForTimerReformation – recurrenceDateTimes: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x26D639280](v26, -1, -1);
        MEMORY[0x26D639280](v25, -1, -1);
      }

      v30 = *(v17 + 16);

      if (v30)
      {
        v8 = sub_26932D690();
        v9 = sub_26932D9B0();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_12;
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "UsoEntity_common_Alarm.eligibleForTimerReformation = false (day recurrences found)";
        goto LABEL_11;
      }

      if (!sub_26932CA60() || (v31 = sub_26932CF70(), , !v31) || (v32 = sub_26932CBC0(), , !v32))
      {
        v34 = MEMORY[0x277D84F90];
        goto LABEL_73;
      }

      if (v32 >> 62)
      {
        v17 = sub_26932DAE0();
        if (!v17)
        {
LABEL_71:
          v34 = MEMORY[0x277D84F90];
LABEL_72:

LABEL_73:
          v39 = *(v34 + 2);

          v8 = sub_26932D690();
          v9 = sub_26932D9B0();
          v40 = os_log_type_enabled(v8, v9);
          if (!v39)
          {
            if (v40)
            {
              v41 = swift_slowAlloc();
              *v41 = 0;
              _os_log_impl(&dword_2692D8000, v8, v9, "UsoEntity_common_Alarm.eligibleForTimerReformation = true", v41, 2u);
              MEMORY[0x26D639280](v41, -1, -1);
            }

            return 1;
          }

          if (!v40)
          {
            goto LABEL_12;
          }

          v10 = swift_slowAlloc();
          *v10 = 0;
          v11 = "UsoEntity_common_Alarm.eligibleForTimerReformation = false (period recurrences found)";
LABEL_11:
          _os_log_impl(&dword_2692D8000, v8, v9, v11, v10, 2u);
          MEMORY[0x26D639280](v10, -1, -1);
          goto LABEL_12;
        }
      }

      else
      {
        v17 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v17)
        {
          goto LABEL_71;
        }
      }

      v33 = 0;
      v34 = MEMORY[0x277D84F90];
      while ((v32 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x26D638850](v33, v32);
        v36 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_67;
        }

LABEL_57:
        v45 = v35;
        sub_269318F68(&v42);

        if (v43)
        {
          sub_2692ED64C(&v42, v44);
          sub_2692ED64C(v44, &v42);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_2692E35C4(0, *(v34 + 2) + 1, 1, v34);
          }

          v38 = *(v34 + 2);
          v37 = *(v34 + 3);
          if (v38 >= v37 >> 1)
          {
            v34 = sub_2692E35C4((v37 > 1), v38 + 1, 1, v34);
          }

          *(v34 + 2) = v38 + 1;
          sub_2692ED64C(&v42, &v34[32 * v38 + 32]);
        }

        else
        {
          sub_2692EB48C(&v42, &qword_2803086F8, &qword_269331FB0);
        }

        ++v33;
        if (v36 == v17)
        {
          goto LABEL_72;
        }
      }

      if (v33 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      v35 = *(v32 + 8 * v33 + 32);

      v36 = v33 + 1;
      if (!__OFADD__(v33, 1))
      {
        goto LABEL_57;
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      swift_once();
    }
  }

  if (v14 >> 62)
  {
    v15 = sub_26932DAE0();
    if (v15)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_38:
    v17 = MEMORY[0x277D84F90];
LABEL_39:

    goto LABEL_40;
  }

LABEL_17:
  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x26D638850](v16, v14);
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      goto LABEL_23;
    }

    if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

    v18 = *(v14 + 8 * v16 + 32);

    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

LABEL_23:
    v45 = v18;
    sub_2693189E0(&v42);

    if (v43)
    {
      sub_2692ED64C(&v42, v44);
      sub_2692ED64C(v44, &v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_2692E35C4(0, *(v17 + 16) + 1, 1, v17);
      }

      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        v17 = sub_2692E35C4((v20 > 1), v21 + 1, 1, v17);
      }

      *(v17 + 16) = v21 + 1;
      sub_2692ED64C(&v42, (v17 + 32 * v21 + 32));
    }

    else
    {
      sub_2692EB48C(&v42, &qword_2803086F8, &qword_269331FB0);
    }

    ++v16;
    if (v19 == v15)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  swift_once();
LABEL_9:
  v12 = sub_26932D6B0();
  __swift_project_value_buffer(v12, qword_2814B2370);
  v8 = sub_26932D690();
  v9 = sub_26932D9B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "UsoEntity_common_Alarm.eligibleForTimerReformation = false (no valid relative duration)";
    goto LABEL_11;
  }

LABEL_12:

  return 0;
}

void sub_2693189E0(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803087E0, &qword_269331040);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_26932CD80();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  MEMORY[0x28223BE20](v13);
  v41 = &v29 - v16;
  sub_26932C9C0();
  if (!v39)
  {
    goto LABEL_11;
  }

  v35 = a1;
  v36 = v1;
  if (sub_26932CBA0())
  {
    v17 = sub_26932CA40();

    if (v17)
    {
      v18 = sub_26932CC30();
      v19 = v35;
      v35[3] = v18;

      *v19 = v17;
      return;
    }
  }

  if (!sub_26932CB50())
  {

    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_9;
  }

  sub_26932CD70();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

LABEL_9:
    sub_2692EB48C(v5, &qword_2803087E0, &qword_269331040);
LABEL_10:
    a1 = v35;
LABEL_11:
    *a1 = 0u;
    *(a1 + 1) = 0u;
    return;
  }

  v31 = *(v7 + 32);
  v32 = v7 + 32;
  v31(v41, v5, v6);
  v20 = *MEMORY[0x277D5ED08];
  v30 = *(v7 + 104);
  v30(v15, v20, v6);
  v21 = sub_269319470(&qword_2803087E8, MEMORY[0x277D5ED18], MEMORY[0x277D5ED20]);
  sub_26932D830();
  v29 = v21;
  sub_26932D830();
  if (v39 == v37 && v40 == v38)
  {
    v33 = 1;
  }

  else
  {
    v33 = sub_26932DF00();
  }

  v22 = *(v7 + 8);
  v22(v15, v6);

  if ((v33 & 1) == 0)
  {
    v30(v12, *MEMORY[0x277D5ED00], v6);
    sub_26932D830();
    sub_26932D830();
    if (v39 == v37 && v40 == v38)
    {
      v22(v12, v6);
LABEL_20:

      goto LABEL_22;
    }

    v23 = sub_26932DF00();
    v22(v12, v6);

    if (v23)
    {
      goto LABEL_22;
    }

    v26 = v22;
    v27 = v34;
    v30(v34, *MEMORY[0x277D5ED10], v6);
    sub_26932D830();
    sub_26932D830();
    if (v39 == v37 && v40 == v38)
    {
      v26(v27, v6);
      goto LABEL_20;
    }

    v28 = sub_26932DF00();
    v26(v27, v6);

    if ((v28 & 1) == 0)
    {
      v26(v41, v6);

      goto LABEL_10;
    }
  }

LABEL_22:
  v24 = v35;
  v35[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  v31(boxed_opaque_existential_1, v41, v6);
}

void sub_269318F68(void *a1@<X8>)
{
  v34 = a1;
  v2 = sub_26932CBF0();
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803087F0, &qword_269331048);
  MEMORY[0x28223BE20](v5);
  v7 = &v27[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308728, &qword_269330DB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v32 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v27[-v14];
  sub_26932C9C0();
  if (!v35)
  {
    goto LABEL_15;
  }

  v16 = sub_26932CF30();
  if (!v16)
  {
LABEL_14:

LABEL_15:
    v24 = v34;
    *v34 = 0u;
    *(v24 + 1) = 0u;
    return;
  }

  v29 = v4;
  v30 = v16;
  v31 = v1;
  sub_26932CBE0();
  v17 = v33;
  (*(v33 + 104))(v13, *MEMORY[0x277D5E940], v2);
  (*(v17 + 56))(v13, 0, 1, v2);
  v18 = *(v5 + 48);
  sub_2692E3B90(v15, v7, &qword_280308728, &qword_269330DB0);
  sub_2692E3B90(v13, &v7[v18], &qword_280308728, &qword_269330DB0);
  v19 = *(v17 + 48);
  if (v19(v7, 1, v2) == 1)
  {
    sub_2692EB48C(v13, &qword_280308728, &qword_269330DB0);
    sub_2692EB48C(v15, &qword_280308728, &qword_269330DB0);
    if (v19(&v7[v18], 1, v2) == 1)
    {
      sub_2692EB48C(v7, &qword_280308728, &qword_269330DB0);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v20 = v32;
  sub_2692E3B90(v7, v32, &qword_280308728, &qword_269330DB0);
  if (v19(&v7[v18], 1, v2) == 1)
  {
    sub_2692EB48C(v13, &qword_280308728, &qword_269330DB0);
    sub_2692EB48C(v15, &qword_280308728, &qword_269330DB0);
    (*(v33 + 8))(v20, v2);
LABEL_9:
    sub_2692EB48C(v7, &qword_2803087F0, &qword_269331048);
LABEL_10:

    goto LABEL_14;
  }

  v21 = v33;
  v22 = v29;
  (*(v33 + 32))(v29, &v7[v18], v2);
  sub_269319470(&qword_2803087F8, MEMORY[0x277D5E988], MEMORY[0x277D5E990]);
  v28 = sub_26932D750();
  v23 = *(v21 + 8);
  v23(v22, v2);
  sub_2692EB48C(v13, &qword_280308728, &qword_269330DB0);
  sub_2692EB48C(v15, &qword_280308728, &qword_269330DB0);
  v23(v32, v2);
  sub_2692EB48C(v7, &qword_280308728, &qword_269330DB0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (sub_26932CF40())
  {

    goto LABEL_14;
  }

  v25 = sub_26932CC00();
  v26 = v34;
  v34[3] = v25;

  *v26 = v30;
}

uint64_t sub_269319470(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall SiriTimeMeasurement.logDelta()()
{
  v1 = type metadata accessor for SiriTimeMeasurement(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = mach_absolute_time();
  if (qword_2814B2600 != -1)
  {
    v23 = v4;
    swift_once();
    v4 = v23;
  }

  if (v4 < *v0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!HIDWORD(qword_2814B2608))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v5 = (v4 - *v0) * (qword_2814B2608 / HIDWORD(qword_2814B2608)) / 1000000.0;
  sub_26931AAE8();
  v6 = v0 + *(v1 + 28);
  v7 = *(v6 + 1);
  if (v7 != 2 && *(v0 + *(v1 + 32)) < v5)
  {
    v8 = *v6;
    sub_26931B5F8(*v6, *(v6 + 1));
    sub_26931B26C(v8, v7, 0, 0);
    sub_26931B60C(v8, v7);
  }

  sub_26931ADD8(v0, v3);
  v9 = sub_26932D690();
  v10 = sub_26932D9B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315394;
    v24[7] = v3[8];
    v13 = SiriTimeMeasurement.LogDescription.rawValue.getter();
    v15 = v14;
    sub_2692EB4EC(v3);
    v16 = sub_2692DD5A8(v13, v15, &v25);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308800, &qword_269331050);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D839F8];
    *(v17 + 16) = xmmword_26932EEA0;
    v19 = MEMORY[0x277D83A80];
    *(v17 + 56) = v18;
    *(v17 + 64) = v19;
    *(v17 + 32) = v5;
    v20 = sub_26932D780();
    v22 = sub_2692DD5A8(v20, v21, &v25);

    *(v11 + 14) = v22;
    _os_log_impl(&dword_2692D8000, v9, v10, "SiriTime external dependency %s: %s ms", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v12, -1, -1);
    MEMORY[0x26D639280](v11, -1, -1);
  }

  else
  {

    sub_2692EB4EC(v3);
  }
}

uint64_t type metadata accessor for SiriTimeMeasurement(uint64_t a1)
{
  result = qword_2814B25F0;
  if (!qword_2814B25F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriTimeMeasurement.init(_:log:startTime:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v7 = sub_26932BFA0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = type metadata accessor for SiriTimeMeasurement(0);
  *(a4 + v12[7]) = xmmword_26932EEB0;
  *(a4 + v12[8]) = 0x7FEFFFFFFFFFFFFFLL;
  v13 = v12[9];
  sub_26932BF90();
  v14 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v15 = sub_26932BF70();
  v16 = [v14 initWithNSUUID_];

  (*(v8 + 8))(v10, v7);
  *(a4 + v13) = v16;
  *(a4 + 8) = v11;
  v17 = v12[6];
  v18 = sub_26932D6B0();
  v19 = *(v18 - 8);
  (*(v19 + 16))(a4 + v17, a2, v18);
  *a4 = v22;
  sub_26931A2C8();
  return (*(v19 + 8))(a2, v18);
}

uint64_t sub_2693199E4()
{
  result = 0;
  switch(*v0)
  {
    case 1:
    case 0xE:
      return 0x6C654472656D6954;
    case 2:
    case 0xF:
      v2 = 0x4472656D6954;
      goto LABEL_7;
    case 3:
    case 0x10:
      v3 = 0x5572656D6954;
      goto LABEL_9;
    case 4:
    case 0x11:
      return 0xD000000000000010;
    case 5:
    case 0x12:
      return 0xD000000000000010;
    case 6:
    case 0x13:
      return 0xD000000000000015;
    case 7:
    case 0x15:
      return 0x7465466D72616C41;
    case 8:
    case 0x16:
      return 0x6464416D72616C41;
    case 9:
    case 0x17:
      v3 = 0x556D72616C41;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6470000000000000;
      break;
    case 0xA:
    case 0x18:
      result = 0x6D65526D72616C41;
      break;
    case 0xB:
    case 0x19:
      v2 = 0x446D72616C41;
LABEL_7:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7369000000000000;
      break;
    case 0xC:
    case 0x1A:
      result = 0x6F6E536D72616C41;
      break;
    case 0x14:
      result = 0xD000000000000013;
      break;
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x23:
      return result;
    case 0x21:
      result = 0xD000000000000010;
      break;
    case 0x22:
      result = 0x737365536576694CLL;
      break;
    default:
      result = 0x64644172656D6954;
      break;
  }

  return result;
}

SiriTimeInternal::SiriTimeMeasurement::LogDescription_optional __swiftcall SiriTimeMeasurement.LogDescription.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DF20();

  v5 = 0;
  v6 = 18;
  switch(v3)
  {
    case 0:
      goto LABEL_28;
    case 1:
      v5 = 1;
      goto LABEL_28;
    case 2:
      v5 = 2;
      goto LABEL_28;
    case 3:
      v5 = 3;
      goto LABEL_28;
    case 4:
      v5 = 4;
      goto LABEL_28;
    case 5:
      v5 = 5;
      goto LABEL_28;
    case 6:
      v5 = 6;
      goto LABEL_28;
    case 7:
      v5 = 7;
      goto LABEL_28;
    case 8:
      v5 = 8;
      goto LABEL_28;
    case 9:
      v5 = 9;
      goto LABEL_28;
    case 10:
      v5 = 10;
      goto LABEL_28;
    case 11:
      v5 = 11;
      goto LABEL_28;
    case 12:
      v5 = 12;
      goto LABEL_28;
    case 13:
      v5 = 13;
      goto LABEL_28;
    case 14:
      v5 = 14;
      goto LABEL_28;
    case 15:
      v5 = 15;
      goto LABEL_28;
    case 16:
      v5 = 16;
      goto LABEL_28;
    case 17:
      v5 = 17;
LABEL_28:
      v6 = v5;
      break;
    case 18:
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    default:
      v6 = 36;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t SiriTimeMeasurement.LogDescription.rawValue.getter()
{
  result = 0x203A746163626F42;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
    case 0xB:
    case 0xE:
    case 0x10:
    case 0x15:
    case 0x17:
    case 0x18:
    case 0x1A:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
    case 5:
    case 0x1D:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 0xA:
      result = 0xD000000000000018;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    case 0xD:
    case 0x16:
      result = 0xD000000000000016;
      break;
    case 0xF:
    case 0x19:
      result = 0xD00000000000001ALL;
      break;
    case 0x11:
    case 0x12:
    case 0x14:
    case 0x1F:
      result = 0xD00000000000001FLL;
      break;
    case 0x13:
    case 0x1C:
      result = 0xD000000000000025;
      break;
    case 0x1B:
    case 0x21:
      result = 0xD00000000000001CLL;
      break;
    case 0x1E:
      result = 0xD000000000000026;
      break;
    case 0x20:
      result = 0xD000000000000018;
      break;
    case 0x23:
      return result;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_26931A064()
{
  v0 = SiriTimeMeasurement.LogDescription.rawValue.getter();
  v2 = v1;
  if (v0 == SiriTimeMeasurement.LogDescription.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_26932DF00();
  }

  return v5 & 1;
}

uint64_t sub_26931A100()
{
  sub_26932DF50();
  SiriTimeMeasurement.LogDescription.rawValue.getter();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_26931A168(uint64_t a1)
{
  SiriTimeMeasurement.LogDescription.rawValue.getter();
  sub_26932D7D0();
}

uint64_t sub_26931A1CC(uint64_t a1)
{
  sub_26932DF50();
  SiriTimeMeasurement.LogDescription.rawValue.getter();
  sub_26932D7D0();

  return sub_26932DF70();
}

unint64_t sub_26931A23C@<X0>(unint64_t *a1@<X8>)
{
  result = SiriTimeMeasurement.LogDescription.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_26931A264()
{
  v1[1] = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  mach_timebase_info(v1);
  result = *v1;
  qword_2814B2608 = v1[0];
  return result;
}

void sub_26931A2C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308810, &qword_2693311B8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = *(v0 + 8);
  if (v4 > 0x23)
  {
    goto LABEL_7;
  }

  if (((1 << v4) & 0x7FFE000) != 0)
  {
    v5 = 1028;
    goto LABEL_8;
  }

  if (((1 << v4) & 0x9F8000000) != 0)
  {
    return;
  }

  if (((1 << v4) & 0x600000000) != 0)
  {
    v5 = 1026;
  }

  else
  {
LABEL_7:
    v5 = 1027;
  }

LABEL_8:
  v19 = *(v0 + 8);
  sub_2693199E4();
  if (!v6)
  {
    return;
  }

  v7 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
  if (v7)
  {
    v18 = v7;
    v8 = [objc_allocWithZone(MEMORY[0x277D57548]) init];
    if (v8)
    {
      v17 = v8;
      v9 = [objc_allocWithZone(MEMORY[0x277D57500]) init];
      if (v9)
      {
        v10 = v9;
        [v17 setDomainExecutionType_];
        [v18 setStartedOrChanged_];
        [v18 setContextId_];
        [v10 setFlowDomainExecutionContext_];
        sub_26932C2E0();
        v11 = v10;
        v12 = sub_26932C2D0();
        v13 = sub_26932D900();
        (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
        v14 = swift_allocObject();
        v14[2] = 0;
        v14[3] = 0;
        v14[4] = v12;

        sub_26931A848(0, 0, v3, &unk_2693311C8, v14);

        sub_26931BA0C(v3);
        return;
      }

      v15 = v17;
    }

    else
    {

      v15 = v18;
    }
  }

  else
  {
  }
}

uint64_t SiriTimeMeasurement.setBreachThreshold(_:logSubtype:)(uint64_t *a1, double a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for SiriTimeMeasurement(0);
  v7 = (v2 + *(v6 + 28));
  v8 = *v7;
  v9 = v7[1];
  sub_26931B5F8(v4, v5);
  result = sub_26931B60C(v8, v9);
  *v7 = v4;
  v7[1] = v5;
  *(v2 + *(v6 + 32)) = a2;
  return result;
}

uint64_t sub_26931A688(uint64_t a1)
{
  sub_26932C240();
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v1[8] = v4;
  *v4 = v1;
  v4[1] = sub_26931A74C;
  v5 = v1[7];

  return MEMORY[0x2821BA730](v5, v2, v3);
}

uint64_t sub_26931A74C()
{

  return MEMORY[0x2822009F8](sub_26931BED0, 0, 0);
}

uint64_t sub_26931A848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308810, &qword_2693311B8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26931BA74(a3, v25 - v10);
  v12 = sub_26932D900();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26931BA0C(v11);
  }

  else
  {
    sub_26932D8F0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26932D8D0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26932D7A0() + 32;
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

void sub_26931AAE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308810, &qword_2693311B8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = *(v0 + 8);
  if (v4 < 0x1B || ((1 << v4) & 0x9F8000000) == 0)
  {
    v18 = *(v0 + 8);
    sub_2693199E4();
    if (v5)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
      if (v6)
      {
        v17 = v6;
        v7 = [objc_allocWithZone(MEMORY[0x277D57530]) init];
        if (v7)
        {
          v16 = v7;
          v8 = [objc_allocWithZone(MEMORY[0x277D57500]) init];
          if (v8)
          {
            v9 = v8;
            [v16 setExists_];
            [v17 setEnded_];
            [v17 setContextId_];
            [v9 setFlowDomainExecutionContext_];
            sub_26932C2E0();
            v10 = v9;
            v11 = sub_26932C2D0();
            v12 = sub_26932D900();
            (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
            v13 = swift_allocObject();
            v13[2] = 0;
            v13[3] = 0;
            v13[4] = v11;

            sub_26931A848(0, 0, v3, &unk_2693311F0, v13);

            sub_26931BA0C(v3);
            return;
          }

          v14 = v16;
        }

        else
        {

          v14 = v17;
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_26931ADD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriTimeMeasurement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26931AE5C(uint64_t a1)
{
  sub_26932C240();
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v1[8] = v4;
  *v4 = v1;
  v4[1] = sub_26931AF20;
  v5 = v1[7];

  return MEMORY[0x2821BA730](v5, v2, v3);
}

uint64_t sub_26931AF20()
{

  return MEMORY[0x2822009F8](sub_26931B01C, 0, 0);
}

uint64_t sub_26931B01C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26931B07C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26931B174;

  return v6(a1);
}

uint64_t sub_26931B174()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_26931B26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v27 = a4;
  sub_26931BCC4(a1, a2, a3, a4, sub_26931B5F8, sub_2692F8BB4, sub_26931BC54, sub_2692F8BB4);
  if (qword_280307C78 != -1)
  {
    swift_once();
  }

  if (byte_28030CD90 == 1)
  {
    if (qword_280307C70 != -1)
    {
      swift_once();
    }

    v8 = sub_26932D6B0();
    __swift_project_value_buffer(v8, qword_2803084F0);
    v9 = sub_26932D690();
    v10 = sub_26932D9A0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2692D8000, v9, v10, "SiriTime initiating AutoBugCapture report...", v11, 2u);
      MEMORY[0x26D639280](v11, -1, -1);
    }

    v12 = ABCReport.type.getter();
    v14 = v13;
    v15 = ABCReport.subType.getter();
    v17 = v16;
    v20 = ABCReport.context.getter(v15, v16, v18, v19);
    v22 = v21;
    sub_26931BCC4(a1, a2, a3, v27, sub_26931B61C, sub_2692F8BB8, sub_26931BD6C, sub_2692F8BB8);
    sub_26932D370();
    swift_allocObject();
    sub_26932D360();
    v23 = swift_allocObject();
    v23[2] = v12;
    v23[3] = v14;
    v23[4] = v15;
    v23[5] = v17;
    v23[6] = v20;
    v23[7] = v22;

    sub_26932D350();
  }

  else
  {
    sub_26931BCC4(a1, a2, a3, v4, sub_26931B61C, sub_2692F8BB8, sub_26931BD6C, sub_2692F8BB8);
  }
}

uint64_t sub_26931B5F8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_26931B60C(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_26931B61C(a1, a2);
  }

  return a1;
}

uint64_t sub_26931B61C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_26931B634()
{
  result = qword_280308808;
  if (!qword_280308808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308808);
  }

  return result;
}

void sub_26931B6B0(uint64_t a1)
{
  sub_26932D6B0();
  if (v1 <= 0x3F)
  {
    sub_26931B76C();
    if (v2 <= 0x3F)
    {
      sub_26931B7BC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26931B76C()
{
  if (!qword_2814B2470)
  {
    v0 = sub_26932DA40();
    if (!v1)
    {
      atomic_store(v0, &qword_2814B2470);
    }
  }
}

unint64_t sub_26931B7BC()
{
  result = qword_2814B2318;
  if (!qword_2814B2318)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814B2318);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriTimeMeasurement.LogDescription(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriTimeMeasurement.LogDescription(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26931B958(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_269300268;

  return sub_26931A668(a1, v4, v5, v6);
}

uint64_t sub_26931BA0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308810, &qword_2693311B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26931BA74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308810, &qword_2693311B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26931BAE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269300268;

  return sub_26931B07C(a1, v4);
}

uint64_t sub_26931BB9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2692DDD10;

  return sub_26931B07C(a1, v4);
}

void sub_26931BC54(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4 == 3)
  {

    v5 = a3;
  }

  else if (a4 == 2 || a4 == 1)
  {
  }
}

uint64_t sub_26931BCC4(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, void), uint64_t (*a8)(uint64_t, uint64_t, uint64_t))
{
  v8 = a4 >> 4;
  if (v8 > 4)
  {
    if ((a4 >> 4) <= 6u)
    {
      if (v8 == 5 || v8 == 6)
      {
        return a6(result, a2, a3);
      }
    }

    else
    {
      switch(v8)
      {
        case 7u:
          return (a7)(result, a2, a3, a4 & 0xF, a5, a6);
        case 8u:
          return a8(result, a2, a3);
        case 9u:
          return a6(result, a2, a3);
        default:
          return result;
      }
    }
  }

  else if ((a4 >> 4) <= 1u)
  {
    if (a4 >> 4)
    {
      return a6(result, a2, a3);
    }

    return a5(result, a2, a3);
  }

  else if (v8 == 2 || v8 == 3 || v8 == 4)
  {
    return a6(result, a2, a3);
  }

  return result;
}

void sub_26931BD6C(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4 == 3)
  {
  }

  else if (a4 == 2 || a4 == 1)
  {
  }
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26931BE1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2692DDD10;

  return sub_26931AE3C(a1, v4, v5, v6);
}

uint64_t SiriTimePluginModel.snippetHidden(for:idiom:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_26932D340();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SiriTimePluginModel(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26931EBDC(v2, v9, type metadata accessor for SiriTimePluginModel);
  (*(v4 + 104))(v6, *MEMORY[0x277D61BE8], v3);
  v10 = sub_26932D330();
  (*(v4 + 8))(v6, v3);
  sub_26931CA7C(v9, type metadata accessor for SiriTimePluginModel);
  return v10 & 1;
}

unint64_t sub_26931C0D0()
{
  v1 = 0x6C655372656D6974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C754D72656D6974;
  }
}

uint64_t sub_26931C140@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_269324B00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26931C174(uint64_t a1)
{
  v2 = sub_26931C9D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26931C1B0(uint64_t a1)
{
  v2 = sub_26931C9D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26931C1EC(uint64_t a1)
{
  v2 = sub_26931CA28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26931C228(uint64_t a1)
{
  v2 = sub_26931CA28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26931C264(uint64_t a1)
{
  v2 = sub_26931CBE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26931C2A0(uint64_t a1)
{
  v2 = sub_26931CBE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26931C2DC(uint64_t a1)
{
  v2 = sub_26931CB44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26931C318(uint64_t a1)
{
  v2 = sub_26931CB44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriTimePluginModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308818, &qword_269331200);
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v30 - v3;
  v36 = type metadata accessor for TimerConfirmationModel(0);
  MEMORY[0x28223BE20](v36);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308820, &qword_269331208);
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = &v30 - v6;
  v32 = type metadata accessor for TimerSelectorModel(0);
  MEMORY[0x28223BE20](v32);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308828, &qword_269331210);
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for SiriTimePluginModel(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308830, &qword_269331218);
  v42 = *(v15 - 8);
  v43 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26931C9D4();
  sub_26932DF90();
  sub_26931EBDC(v41, v14, type metadata accessor for SiriTimePluginModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_26931CADC(v14, v8, type metadata accessor for TimerSelectorModel);
      v46 = 1;
      sub_26931CB44();
      v19 = v33;
      v20 = v43;
      sub_26932DD40();
      sub_26931CB98(&qword_280308858, type metadata accessor for TimerSelectorModel, &protocol conformance descriptor for TimerSelectorModel);
      v21 = v35;
      sub_26932DDA0();
      (*(v34 + 8))(v19, v21);
      v22 = type metadata accessor for TimerSelectorModel;
      v23 = v8;
    }

    else
    {
      v27 = v37;
      sub_26931CADC(v14, v37, type metadata accessor for TimerConfirmationModel);
      v47 = 2;
      sub_26931CA28();
      v28 = v38;
      v20 = v43;
      sub_26932DD40();
      sub_26931CB98(&qword_280308848, type metadata accessor for TimerConfirmationModel, &protocol conformance descriptor for TimerConfirmationModel);
      v29 = v40;
      sub_26932DDA0();
      (*(v39 + 8))(v28, v29);
      v22 = type metadata accessor for TimerConfirmationModel;
      v23 = v27;
    }

    sub_26931CA7C(v23, v22);
    return (*(v42 + 8))(v17, v20);
  }

  else
  {
    v24 = *v14;
    v45 = 0;
    sub_26931CBE0();
    v25 = v43;
    sub_26932DD40();
    v44 = v24;
    sub_26931CC34();
    sub_26932DDA0();
    (*(v31 + 8))(v11, v9);
    (*(v42 + 8))(v17, v25);
  }
}

unint64_t sub_26931C9D4()
{
  result = qword_280308838;
  if (!qword_280308838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308838);
  }

  return result;
}

unint64_t sub_26931CA28()
{
  result = qword_280308840;
  if (!qword_280308840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308840);
  }

  return result;
}

uint64_t sub_26931CA7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26931CADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_26931CB44()
{
  result = qword_280308850;
  if (!qword_280308850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308850);
  }

  return result;
}

uint64_t sub_26931CB98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26931CBE0()
{
  result = qword_280308860;
  if (!qword_280308860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308860);
  }

  return result;
}

unint64_t sub_26931CC34()
{
  result = qword_280308868;
  if (!qword_280308868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308868);
  }

  return result;
}

uint64_t SiriTimePluginModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308870, &qword_269331220);
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v65 = &v51 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308878, &qword_269331228);
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v64 = &v51 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308880, &qword_269331230);
  v56 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v51 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308888, &unk_269331238);
  v67 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v7 = &v51 - v6;
  v8 = type metadata accessor for SiriTimePluginModel(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v51 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v51 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v20 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_26931C9D4();
  v21 = v68;
  sub_26932DF80();
  if (!v21)
  {
    v51 = v17;
    v52 = v14;
    v22 = v61;
    v23 = v62;
    v53 = v11;
    v54 = v19;
    v24 = v64;
    v25 = v65;
    v55 = 0;
    v68 = v8;
    v26 = v66;
    v27 = v63;
    v28 = sub_26932DD10();
    v29 = (2 * *(v28 + 16)) | 1;
    v70 = v28;
    v71 = v28 + 32;
    v72 = 0;
    v73 = v29;
    v30 = sub_2692EEAB4();
    v31 = v27;
    if (v30 == 3 || v72 != v73 >> 1)
    {
      v38 = sub_26932DBC0();
      swift_allocError();
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308318, &unk_26932F3C0);
      *v40 = v68;
      v33 = v31;
      sub_26932DC90();
      sub_26932DBB0();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
      swift_willThrow();
    }

    else
    {
      if (!v30)
      {
        LOBYTE(v74) = 0;
        sub_26931CBE0();
        v42 = v55;
        sub_26932DC80();
        if (!v42)
        {
          sub_26931D52C();
          sub_26932DD00();
          (*(v56 + 8))(v22, v23);
          (*(v67 + 8))(v7, v27);
          swift_unknownObjectRelease();
          v48 = v51;
          *v51 = v74;
          swift_storeEnumTagMultiPayload();
          v49 = v54;
          sub_26931CADC(v48, v54, type metadata accessor for SiriTimePluginModel);
          v35 = v26;
LABEL_18:
          sub_26931CADC(v49, v35, type metadata accessor for SiriTimePluginModel);
          return __swift_destroy_boxed_opaque_existential_1Tm(v69);
        }

        (*(v67 + 8))(v7, v27);
        goto LABEL_10;
      }

      if (v30 == 1)
      {
        LOBYTE(v74) = 1;
        sub_26931CB44();
        v32 = v24;
        v33 = v31;
        v34 = v55;
        sub_26932DC80();
        if (!v34)
        {
          v35 = v26;
          type metadata accessor for TimerSelectorModel(0);
          sub_26931CB98(&qword_280308898, type metadata accessor for TimerSelectorModel, &protocol conformance descriptor for TimerSelectorModel);
          v36 = v52;
          v37 = v57;
          sub_26932DD00();
          (*(v59 + 8))(v32, v37);
          (*(v67 + 8))(v7, v31);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v50 = v36;
LABEL_17:
          v49 = v54;
          sub_26931CADC(v50, v54, type metadata accessor for SiriTimePluginModel);
          goto LABEL_18;
        }
      }

      else
      {
        LOBYTE(v74) = 2;
        sub_26931CA28();
        v43 = v25;
        v33 = v27;
        v44 = v55;
        sub_26932DC80();
        if (!v44)
        {
          v35 = v26;
          type metadata accessor for TimerConfirmationModel(0);
          sub_26931CB98(&qword_280308890, type metadata accessor for TimerConfirmationModel, &protocol conformance descriptor for TimerConfirmationModel);
          v45 = v53;
          v46 = v58;
          sub_26932DD00();
          v47 = v67;
          (*(v60 + 8))(v43, v46);
          (*(v47 + 8))(v7, v33);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v50 = v45;
          goto LABEL_17;
        }
      }
    }

    (*(v67 + 8))(v7, v33);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v69);
}