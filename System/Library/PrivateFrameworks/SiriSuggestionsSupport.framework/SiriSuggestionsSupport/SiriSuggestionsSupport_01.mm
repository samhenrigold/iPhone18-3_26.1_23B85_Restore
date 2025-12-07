uint64_t sub_2315CCD7C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2315CCED0(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2315CCE60(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603E0, &qword_231608AB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2315CCED0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603E0, &qword_231608AB0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **sub_2315CCFC4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_2315CCFD4()
{
  OUTLINED_FUNCTION_19_1();
  sub_231605888();
  v1 = MEMORY[0x277D60508];
  sub_2315CD5A8(&qword_27DD601F8, 255, MEMORY[0x277D60508], MEMORY[0x277D60510]);
  v2 = sub_231606758();
  return sub_2315CD414(v0, v2, MEMORY[0x277D60508], &qword_27DD603D8, v1, MEMORY[0x277D60518]);
}

unint64_t sub_2315CD0A0(uint64_t a1, uint64_t a2)
{
  sub_231606C68();
  sub_2316067E8();
  v4 = sub_231606C88();

  return sub_2315CD360(a1, a2, v4);
}

unint64_t sub_2315CD118()
{
  OUTLINED_FUNCTION_19_1();
  sub_2316061C8();
  v1 = MEMORY[0x277D60C18];
  sub_2315CD5A8(&qword_280FE95C8, 255, MEMORY[0x277D60C18], MEMORY[0x277D60C20]);
  v2 = sub_231606758();
  return sub_2315CD414(v0, v2, MEMORY[0x277D60C18], &qword_280FE95C0, v1, MEMORY[0x277D60C28]);
}

unint64_t sub_2315CD1E4(uint64_t a1)
{
  sub_231606158();
  v2 = MEMORY[0x277D60BA8];
  sub_2315CD5A8(&qword_280FE95D8, 255, MEMORY[0x277D60BA8], MEMORY[0x277D60BB8]);
  v3 = sub_231606758();
  return sub_2315CD414(a1, v3, MEMORY[0x277D60BA8], &qword_27DD603E8, v2, MEMORY[0x277D60BC0]);
}

uint64_t sub_2315CD2BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603B0, &qword_231608A08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2315CD360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_231606BD8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2315CD414(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v20 = a4;
  v18 = a1;
  v8 = a3(0);
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v23 = v6 + 64;
  v19 = v6;
  v14 = ~(-1 << *(v6 + 32));
  for (i = a2 & v14; ((1 << i) & *(v23 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v10 + 16))(v13, *(v19 + 48) + *(v10 + 72) * i, v8);
    sub_2315CD5A8(v20, 255, v21, v22);
    v16 = sub_231606778();
    (*(v10 + 8))(v13, v8);
    if (v16)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2315CD5A8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_16_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_23_1()
{

  return sub_2315CD2BC(v0);
}

uint64_t sub_2315CD6C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2316066E8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2316066D8();
}

uint64_t sub_2315CD75C()
{
  v0 = sub_2316066E8();
  __swift_allocate_value_buffer(v0, qword_280FE9558);
  __swift_project_value_buffer(v0, qword_280FE9558);
  return sub_2316066D8();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_2315CD864(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60578, &qword_231609038);
    v2 = sub_231606B38();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + 16 * (v10 | (v9 << 6)));
    v13 = *v11;
    v12 = v11[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601B8, &unk_231607A80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D8, &qword_231608E50);
    swift_dynamicCast();
    sub_2315B55D4(v22, v24);
    sub_2315B55D4(v24, v25);
    sub_2315B55D4(v25, &v23);
    result = sub_2315CD0A0(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      result = sub_2315B55D4(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_2315B55D4(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
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

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_2315CDAD0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60578, &qword_231609038);
    v2 = sub_231606B38();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_2315B2BB4(*(a1 + 56) + 32 * v11, v29);
    v28.n128_u64[0] = v13;
    v28.n128_u64[1] = v14;
    v26[2] = v28;
    v27[0] = v29[0];
    v27[1] = v29[1];
    v15 = v28;
    sub_2315B55D4(v27, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D8, &qword_231608E50);
    swift_dynamicCast();
    sub_2315B55D4(v23, v25);
    sub_2315B55D4(v25, v26);
    sub_2315B55D4(v26, &v24);
    result = sub_2315CD0A0(v15.n128_i64[0], v15.n128_i64[1]);
    v16 = result;
    if (v17)
    {
      *(v2[6] + 16 * result) = v15;

      v18 = (v2[7] + 32 * v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      result = sub_2315B55D4(&v24, v18);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v15;
      result = sub_2315B55D4(&v24, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
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

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_2315CDD50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60518, &qword_231608FD8);
    v2 = sub_231606B38();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_2315DC54C(*(a1 + 56) + 40 * v11, v30);
    v29.n128_u64[0] = v13;
    v29.n128_u64[1] = v14;
    v26[2] = v29;
    v27[0] = v30[0];
    v27[1] = v30[1];
    v28 = v31;
    v15 = v29;
    sub_2315B540C(v27, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60520, &qword_231608FE0);
    swift_dynamicCast();
    sub_2315B55D4(v23, v25);
    sub_2315B55D4(v25, v26);
    sub_2315B55D4(v26, &v24);
    result = sub_2315CD0A0(v15.n128_i64[0], v15.n128_i64[1]);
    v16 = result;
    if (v17)
    {
      *(v2[6] + 16 * result) = v15;

      v18 = (v2[7] + 32 * v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      result = sub_2315B55D4(&v24, v18);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v15;
      result = sub_2315B55D4(&v24, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
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

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

__n128 *OfflineGenerationInteractionBuilder.__allocating_init(intentQueries:executionParameters:deviceState:)(unint64_t a1, unint64_t a2, __n128 *a3)
{
  v6 = swift_allocObject();
  v6[1].n128_u64[0] = a1;
  v6[1].n128_u64[1] = a2;
  sub_2315B540C(a3, v6 + 2);
  return v6;
}

__n128 *OfflineGenerationInteractionBuilder.init(intentQueries:executionParameters:deviceState:)(unint64_t a1, unint64_t a2, __n128 *a3)
{
  v3[1].n128_u64[0] = a1;
  v3[1].n128_u64[1] = a2;
  sub_2315B540C(a3, v3 + 2);
  return v3;
}

uint64_t OfflineGenerationInteractionBuilder.build(requestId:)()
{
  OUTLINED_FUNCTION_8();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60410, &qword_231608AE8);
  OUTLINED_FUNCTION_24(v5);
  v1[11] = OUTLINED_FUNCTION_23_0();
  v6 = sub_231606128();
  v1[12] = v6;
  OUTLINED_FUNCTION_4(v6);
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_23_0();
  v8 = sub_231605098();
  OUTLINED_FUNCTION_24(v8);
  v1[15] = OUTLINED_FUNCTION_23_0();
  v9 = sub_2316050C8();
  v1[16] = v9;
  OUTLINED_FUNCTION_4(v9);
  v1[17] = v10;
  v1[18] = OUTLINED_FUNCTION_23_0();
  v11 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2315CE1A4()
{
  v1 = v0[10];
  __swift_project_boxed_opaque_existential_1((v1 + 32), *(v1 + 56));
  OUTLINED_FUNCTION_53();
  sub_231605F48();
  sub_2316050A8();
  v2 = OUTLINED_FUNCTION_56();
  v3(v2);
  sub_231605648();
  sub_231605628();
  v4 = sub_231605638();

  v27 = sub_231605618();

  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v5 = sub_2316066E8();
  v6 = __swift_project_value_buffer(v5, qword_280FE9630);

  v7 = sub_2316066C8();
  v8 = sub_231606968();
  v9 = OUTLINED_FUNCTION_51(v8);
  v10 = v0[10];
  if (v9)
  {
    v11 = OUTLINED_FUNCTION_60();
    *v11 = 134217984;
    *(v11 + 4) = *(*(v10 + 16) + 16);

    _os_log_impl(&dword_2315AF000, v7, v6, "Building Interaction for OfflineGeneration with intentQuery: %ld", v11, 0xCu);
    OUTLINED_FUNCTION_29();
  }

  else
  {
  }

  v12 = v0[14];
  v13 = v0[13];
  v26 = v0[12];
  v15 = v0[10];
  v14 = v0[11];

  sub_231605088();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
  sub_231606728();

  sub_2315CDAD0(v27);

  sub_2315DC54C(v1 + 32, (v0 + 2));
  sub_231606518();
  sub_231606058();
  OUTLINED_FUNCTION_5_5();
  sub_2315DC670(v16, v17, MEMORY[0x277D60A58]);
  (*(v13 + 104))(v12, *MEMORY[0x277D60AC8], v26);
  *v14 = *(v15 + 16);
  v18 = *MEMORY[0x277D60DF8];
  v19 = sub_231606268();
  OUTLINED_FUNCTION_5_1();
  (*(v20 + 104))(v14, v18, v19);
  v21 = OUTLINED_FUNCTION_67();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v19);

  sub_231605DF8();

  OUTLINED_FUNCTION_13();

  return v24();
}

void *OfflineGenerationInteractionBuilder.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  return v0;
}

uint64_t OfflineGenerationInteractionBuilder.__deallocating_deinit()
{
  OfflineGenerationInteractionBuilder.deinit();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_2315CE58C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4740;

  return OfflineGenerationInteractionBuilder.build(requestId:)();
}

uint64_t EventDrivenInteractionBuilder.__allocating_init(event:inAppIdentifier:deviceState:)(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_83();
  EventDrivenInteractionBuilder.init(event:inAppIdentifier:deviceState:)(v5, v6, a3);
  return v4;
}

__n128 *EventDrivenInteractionBuilder.init(event:inAppIdentifier:deviceState:)(__n128 *a1, uint64_t a2, __n128 *a3)
{
  sub_2315B540C(a1, v3 + 1);
  v6 = OBJC_IVAR____TtC22SiriSuggestionsSupport29EventDrivenInteractionBuilder_inAppIdentifier;
  sub_2316061C8();
  OUTLINED_FUNCTION_5_1();
  (*(v7 + 32))(v3 + v6, a2);
  sub_2315B540C(a3, (v3 + OBJC_IVAR____TtC22SiriSuggestionsSupport29EventDrivenInteractionBuilder_deviceState));
  return v3;
}

uint64_t EventDrivenInteractionBuilder.build(requestId:)()
{
  OUTLINED_FUNCTION_8();
  v1[26] = v2;
  v1[27] = v0;
  v1[24] = v3;
  v1[25] = v4;
  v5 = sub_231606128();
  v1[28] = v5;
  OUTLINED_FUNCTION_4(v5);
  v1[29] = v6;
  v1[30] = OUTLINED_FUNCTION_23_0();
  v7 = sub_231606238();
  v1[31] = v7;
  OUTLINED_FUNCTION_4(v7);
  v1[32] = v8;
  v1[33] = OUTLINED_FUNCTION_23_0();
  v9 = sub_231605098();
  OUTLINED_FUNCTION_24(v9);
  v1[34] = OUTLINED_FUNCTION_23_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60410, &qword_231608AE8);
  OUTLINED_FUNCTION_24(v10);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v11 = sub_2316060C8();
  v1[37] = v11;
  OUTLINED_FUNCTION_4(v11);
  v1[38] = v12;
  v1[39] = OUTLINED_FUNCTION_23_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60418, &unk_231608B00);
  OUTLINED_FUNCTION_24(v13);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v14 = sub_2316050C8();
  v1[44] = v14;
  OUTLINED_FUNCTION_4(v14);
  v1[45] = v15;
  v1[46] = OUTLINED_FUNCTION_23_0();
  v16 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v16);
}

uint64_t sub_2315CE960()
{
  v77 = v0;
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[43];
  v4 = v0[44];
  v5 = v0[27];
  v72 = v5 + OBJC_IVAR____TtC22SiriSuggestionsSupport29EventDrivenInteractionBuilder_deviceState;
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC22SiriSuggestionsSupport29EventDrivenInteractionBuilder_deviceState), *(v5 + OBJC_IVAR____TtC22SiriSuggestionsSupport29EventDrivenInteractionBuilder_deviceState + 24));
  sub_231605F48();
  sub_2315CF1B0(v1);
  (*(v2 + 8))(v1, v4);
  v71 = v5;
  sub_2315DC54C(v5 + 16, (v0 + 14));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60420, &qword_2316096F0);
  OUTLINED_FUNCTION_28();
  v6 = sub_231606348();
  v7 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v3, v7 ^ 1u, 1, v6);
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v8 = sub_2316066E8();
  __swift_project_value_buffer(v8, qword_280FE9630);
  v9 = OUTLINED_FUNCTION_36();
  sub_2315DC458(v9, v10, v11, v12);
  v13 = sub_2316066C8();
  v14 = sub_231606968();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[42];
  if (v15)
  {
    v17 = v0[41];
    v18 = OUTLINED_FUNCTION_60();
    v19 = OUTLINED_FUNCTION_63();
    v73[0] = v19;
    *v18 = 136315138;
    sub_2315DC458(v16, v17, &qword_27DD60418, &unk_231608B00);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v6);
    v21 = v0[41];
    if (EnumTagSinglePayload == 1)
    {
      sub_2315B2F7C(v0[41], &qword_27DD60418, &unk_231608B00);
      v22 = 0xE300000000000000;
      v23 = 7104878;
    }

    else
    {
      v25 = v0[38];
      v24 = v0[39];
      v70 = v0[37];
      sub_231606328();
      OUTLINED_FUNCTION_23();
      (*(v26 + 8))(v21, v6);
      v23 = sub_231606088();
      v22 = v27;
      (*(v25 + 8))(v24, v70);
    }

    sub_2315B2F7C(v0[42], &qword_27DD60418, &unk_231608B00);
    v28 = sub_2315B1574(v23, v22, v73);

    *(v18 + 4) = v28;
    _os_log_impl(&dword_2315AF000, v13, v14, "Building Interaction for OnInAppConnectionEvent with InAppDetails: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {

    sub_2315B2F7C(v16, &qword_27DD60418, &unk_231608B00);
  }

  v29 = v0[40];
  v30 = sub_231606268();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  v34 = OUTLINED_FUNCTION_72();
  sub_2315DC458(v34, v35, v36, v37);
  v38 = __swift_getEnumTagSinglePayload(v29, 1, v6);
  v39 = v0[40];
  if (v38 == 1)
  {
    sub_2315B2F7C(v0[40], &qword_27DD60418, &unk_231608B00);
  }

  else
  {
    v41 = v0[38];
    v40 = v0[39];
    v42 = v0[37];
    sub_231606328();
    OUTLINED_FUNCTION_23();
    (*(v43 + 8))(v39, v6);
    v44 = sub_231606098();
    (*(v41 + 8))(v40, v42);
    if (v44)
    {
      v45 = v0[36];
      sub_2315B2F7C(v45, &qword_27DD60410, &qword_231608AE8);
      *v45 = v44;
      OUTLINED_FUNCTION_23();
      (*(v46 + 104))(v45);
      __swift_storeEnumTagSinglePayload(v45, 0, 1, v30);
    }
  }

  v69 = v0[43];
  v68 = v0[36];
  v47 = v0[32];
  v64 = v0[33];
  v65 = v0[31];
  v48 = v0[29];
  v66 = v0[30];
  v49 = v0[27];
  v67 = v0[28];

  sub_231605088();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
  OUTLINED_FUNCTION_80();
  sub_231606728();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60428, &qword_231608B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231608640;
  *(inited + 32) = 0x746E657665;
  *(inited + 40) = 0xE500000000000000;
  v52 = *(v49 + 40);
  v51 = *(v49 + 48);
  __swift_project_boxed_opaque_existential_1((v71 + 16), v52);
  *(inited + 72) = v52;
  *(inited + 80) = *(v51 + 8);
  *(inited + 88) = *(v51 + 16);
  __swift_allocate_boxed_opaque_existential_1((inited + 48));
  OUTLINED_FUNCTION_23();
  (*(v53 + 16))();
  v54 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_80();
  sub_231606728();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60430, &qword_231608B18);
  OUTLINED_FUNCTION_28();
  v55 = sub_2316060E8();
  OUTLINED_FUNCTION_4(v55);
  *(swift_allocObject() + 16) = xmmword_231608640;
  v56 = sub_2316061A8();
  v74 = v54;
  v75 = MEMORY[0x277D83808];
  v76 = MEMORY[0x277D837D8];
  v73[0] = v56;
  v73[1] = v57;
  (*(v47 + 104))(v64, *MEMORY[0x277D60DB0], v65);
  sub_2316060D8();
  sub_2315DC54C(v72, (v0 + 19));
  sub_2316061A8();
  v58 = sub_231606588();
  swift_allocObject();
  OUTLINED_FUNCTION_72();
  v59 = sub_231606578();
  v74 = v58;
  v75 = sub_2315DC670(&qword_280FE9548, MEMORY[0x277D61360], MEMORY[0x277D61358]);
  v73[0] = v59;
  (*(v48 + 104))(v66, *MEMORY[0x277D60AD0], v67);
  v60 = OUTLINED_FUNCTION_84();
  sub_2315DC458(v60, v61, &qword_27DD60410, &qword_231608AE8);
  sub_231605E08();
  sub_2315B2F7C(v68, &qword_27DD60410, &qword_231608AE8);
  sub_2315B2F7C(v69, &qword_27DD60418, &unk_231608B00);

  OUTLINED_FUNCTION_13();

  return v62();
}

unint64_t sub_2315CF1B0(uint64_t a1)
{
  sub_2316050A8();
  sub_231605648();
  sub_231605628();
  v1 = sub_231605638();

  v2 = sub_231605618();

  v3 = sub_2315CDAD0(v2);

  return v3;
}

uint64_t EventDrivenInteractionBuilder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC22SiriSuggestionsSupport29EventDrivenInteractionBuilder_inAppIdentifier;
  sub_2316061C8();
  OUTLINED_FUNCTION_5_1();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC22SiriSuggestionsSupport29EventDrivenInteractionBuilder_deviceState));
  return v0;
}

uint64_t EventDrivenInteractionBuilder.__deallocating_deinit()
{
  EventDrivenInteractionBuilder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2315CF2FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4740;

  return EventDrivenInteractionBuilder.build(requestId:)();
}

SiriSuggestionsSupport::CatPropertyKeys_optional __swiftcall CatPropertyKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x69747265706F7270 && stringValue._object == 0xEA00000000007365;
  if (v5 || (sub_231606BD8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x614E656369766564 && object == 0xEA0000000000656DLL)
  {

    v7 = 1;
  }

  else
  {
    v9 = sub_231606BD8();

    if (v9)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t CatPropertyKeys.hashValue.getter()
{
  v1 = *v0;
  sub_231606C68();
  MEMORY[0x231933130](v1);
  return sub_231606C88();
}

uint64_t CatPropertyKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x614E656369766564;
  }

  else
  {
    return 0x69747265706F7270;
  }
}

uint64_t sub_2315CF588(uint64_t a1)
{
  v2 = sub_2315DC61C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2315CF5C4(uint64_t a1)
{
  v2 = sub_2315DC61C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2315CF600@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v161 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60478, &qword_231609E40);
  MEMORY[0x28223BE20](v5 - 8);
  v148 = &v136[-v6];
  v154 = sub_231606278();
  v156 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v155 = &v136[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v159 = sub_231606248();
  v8 = *(v159 - 8);
  v9 = MEMORY[0x28223BE20](v159);
  v11 = &v136[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v145 = &v136[-v13];
  MEMORY[0x28223BE20](v12);
  v157 = &v136[-v14];
  v15 = sub_2316054A8();
  v16 = *(v15 - 8);
  v163 = v15;
  v164 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v144 = &v136[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v150 = &v136[-v19];
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604B8, &qword_231608F60);
  v20 = MEMORY[0x28223BE20](v162);
  v153 = &v136[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v23 = &v136[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604C0, &qword_231608F68);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v149 = &v136[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v146 = &v136[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v152 = &v136[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v151 = &v136[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v136[-v34];
  MEMORY[0x28223BE20](v33);
  v37 = &v136[-v36];
  v38 = sub_231606128();
  v39 = *(v38 - 8);
  v40 = MEMORY[0x28223BE20](v38);
  v147 = &v136[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v40);
  v43 = &v136[-v42];
  sub_2315DC458(a2, &v166, &qword_27DD60350, &qword_231608800);
  v160 = v43;
  v158 = v8;
  v143 = v11;
  if (v167)
  {
    v142 = v37;
    v44 = v39;
    v45 = v38;
    v46 = a3;
    sub_2315B540C(&v166, &v168);
    v47 = v169;
    v48 = v170;
    __swift_project_boxed_opaque_existential_1(&v168, v169);
    v49 = MEMORY[0x2319328F0](v47, v48);
    v51 = v50;
    sub_231606508();
    v52 = MEMORY[0x231932160]();
    v54 = v53;

    if (v49 == v52 && v51 == v54)
    {
    }

    else
    {
      v56 = sub_231606BD8();

      if ((v56 & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v168);
        a3 = v46;
        v38 = v45;
        v39 = v44;
        v43 = v160;
        v37 = v142;
        goto LABEL_9;
      }
    }

    (*(v44 + 104))(v46, *MEMORY[0x277D60AE0], v45);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v168);
  }

  sub_2315B2F7C(&v166, &qword_27DD60350, &qword_231608800);
LABEL_9:
  v57 = *(v39 + 104);
  v57(v43, *MEMORY[0x277D60AD8], v38);
  sub_2315DC458(v161, &v166, &qword_27DD60468, &qword_231609E50);
  if (v167)
  {
    v139 = v57;
    v140 = v39 + 104;
    v142 = v38;
    v161 = a3;
    sub_2315B540C(&v166, &v168);
    __swift_project_boxed_opaque_existential_1(&v168, v169);
    sub_231605D18();
    v58 = v163;
    v59 = *(v164 + 104);
    v59(v35, *MEMORY[0x277D61C80], v163);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v58);
    v60 = *(v162 + 48);
    sub_2315DC458(v37, v23, &qword_27DD604C0, &qword_231608F68);
    sub_2315DC458(v35, &v23[v60], &qword_27DD604C0, &qword_231608F68);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v58);
    v141 = v39;
    if (EnumTagSinglePayload == 1)
    {
      sub_2315B2F7C(v35, &qword_27DD604C0, &qword_231608F68);
      v62 = v58;
      if (__swift_getEnumTagSinglePayload(&v23[v60], 1, v58) == 1)
      {
        sub_2315B2F7C(v23, &qword_27DD604C0, &qword_231608F68);
LABEL_32:
        v89 = v147;
        sub_231606118();
        v43 = v160;
        v38 = v142;
        (*(v39 + 40))(v160, v89, v142);
LABEL_50:
        v127 = v37;
        if (qword_280FE9628 != -1)
        {
          swift_once();
        }

        v128 = sub_2316066E8();
        __swift_project_value_buffer(v128, qword_280FE9630);
        v129 = sub_2316066C8();
        v130 = sub_231606958();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v165 = v132;
          *v131 = 136315138;
          swift_beginAccess();
          sub_2315DC670(&qword_280FE95E0, MEMORY[0x277D60AE8], MEMORY[0x277D60B08]);
          v133 = sub_231606BC8();
          v135 = sub_2315B1574(v133, v134, &v165);

          *(v131 + 4) = v135;
          _os_log_impl(&dword_2315AF000, v129, v130, "Inferred invocationType as: %s", v131, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v132);
          MEMORY[0x231933730](v132, -1, -1);
          MEMORY[0x231933730](v131, -1, -1);
        }

        sub_2315B2F7C(v127, &qword_27DD604C0, &qword_231608F68);
        a3 = v161;
        __swift_destroy_boxed_opaque_existential_1Tm(&v168);
        v39 = v141;
        goto LABEL_55;
      }
    }

    else
    {
      v64 = v151;
      sub_2315DC458(v23, v151, &qword_27DD604C0, &qword_231608F68);
      if (__swift_getEnumTagSinglePayload(&v23[v60], 1, v58) != 1)
      {
        v85 = v164;
        v86 = &v23[v60];
        v87 = v150;
        (*(v164 + 32))(v150, v86, v58);
        sub_2315DC670(&qword_280FE9620, MEMORY[0x277D61CA8], MEMORY[0x277D61CB0]);
        v137 = sub_231606778();
        v138 = v59;
        v88 = *(v85 + 8);
        v88(v87, v58);
        sub_2315B2F7C(v35, &qword_27DD604C0, &qword_231608F68);
        v59 = v138;
        v88(v64, v58);
        sub_2315B2F7C(v23, &qword_27DD604C0, &qword_231608F68);
        v62 = v58;
        if (v137)
        {
          goto LABEL_32;
        }

LABEL_19:
        v65 = v152;
        v59(v152, *MEMORY[0x277D61C78], v62);
        __swift_storeEnumTagSinglePayload(v65, 0, 1, v62);
        v66 = *(v162 + 48);
        v67 = v153;
        sub_2315DC458(v37, v153, &qword_27DD604C0, &qword_231608F68);
        v68 = v67;
        sub_2315DC458(v65, &v67[v66], &qword_27DD604C0, &qword_231608F68);
        if (__swift_getEnumTagSinglePayload(v67, 1, v62) == 1)
        {
          sub_2315B2F7C(v65, &qword_27DD604C0, &qword_231608F68);
          v69 = __swift_getEnumTagSinglePayload(&v67[v66], 1, v62);
          v38 = v142;
          v43 = v160;
          v70 = v155;
          v71 = v156;
          v72 = v158;
          if (v69 == 1)
          {
            sub_2315B2F7C(v68, &qword_27DD604C0, &qword_231608F68);
LABEL_38:
            v111 = *MEMORY[0x277D60E68];
            v112 = sub_231606288();
            v113 = v157;
            (*(*(v112 - 8) + 104))(v157, v111, v112);
            v114 = v159;
            (*(v72 + 104))(v113, *MEMORY[0x277D60DC0], v159);
            v115 = v154;
            (*(v71 + 104))(v70, *MEMORY[0x277D60E18], v154);
LABEL_49:
            (*(v141 + 8))(v43, v38);
            v126 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604C8, &qword_231608F70) + 48);
            (*(v72 + 32))(v43, v113, v114);
            (*(v71 + 32))(&v43[v126], v70, v115);
            v139(v43, *MEMORY[0x277D60AC0], v38);
            goto LABEL_50;
          }
        }

        else
        {
          v73 = v146;
          sub_2315DC458(v67, v146, &qword_27DD604C0, &qword_231608F68);
          if (__swift_getEnumTagSinglePayload(&v67[v66], 1, v62) != 1)
          {
            v105 = v164;
            v106 = v68 + v66;
            v107 = v150;
            (*(v164 + 32))(v150, v106, v62);
            sub_2315DC670(&qword_280FE9620, MEMORY[0x277D61CA8], MEMORY[0x277D61CB0]);
            v108 = v68;
            LODWORD(v162) = sub_231606778();
            v109 = v37;
            v110 = *(v105 + 8);
            v110(v107, v163);
            sub_2315B2F7C(v65, &qword_27DD604C0, &qword_231608F68);
            v110(v73, v163);
            v37 = v109;
            v62 = v163;
            sub_2315B2F7C(v108, &qword_27DD604C0, &qword_231608F68);
            v38 = v142;
            v43 = v160;
            v70 = v155;
            v71 = v156;
            v72 = v158;
            if (v162)
            {
              goto LABEL_38;
            }

LABEL_25:
            __swift_project_boxed_opaque_existential_1(&v168, v169);
            v74 = v148;
            sub_231605D08();
            v75 = v159;
            if (__swift_getEnumTagSinglePayload(v74, 1, v159) == 1)
            {
              sub_2315B2F7C(v74, &qword_27DD60478, &qword_231609E40);
              if (qword_280FE9628 != -1)
              {
                swift_once();
              }

              v76 = sub_2316066E8();
              __swift_project_value_buffer(v76, qword_280FE9630);
              v77 = sub_2316066C8();
              v78 = sub_231606958();
              if (os_log_type_enabled(v77, v78))
              {
                v79 = swift_slowAlloc();
                *v79 = 0;
                _os_log_impl(&dword_2315AF000, v77, v78, "[warning] No explicit turnState is provided. Assuming taskComplete initated from the user", v79, 2u);
                v80 = v79;
                v75 = v159;
                MEMORY[0x231933730](v80, -1, -1);
              }

              v81 = *MEMORY[0x277D60E60];
              v82 = sub_231606288();
              v83 = v157;
              (*(*(v82 - 8) + 104))(v157, v81, v82);
              (*(v72 + 104))(v83, *MEMORY[0x277D60DC0], v75);
              v84 = v154;
            }

            else
            {
              v142 = v37;
              v90 = (v72 + 32);
              v91 = v145;
              v162 = *(v72 + 32);
              (v162)(v145, v74, v75);
              if (qword_280FE9628 != -1)
              {
                swift_once();
              }

              v92 = sub_2316066E8();
              __swift_project_value_buffer(v92, qword_280FE9630);
              v93 = v143;
              (*(v72 + 16))(v143, v91, v75);
              v94 = sub_2316066C8();
              v95 = sub_231606968();
              if (os_log_type_enabled(v94, v95))
              {
                v96 = v72;
                v97 = swift_slowAlloc();
                v98 = swift_slowAlloc();
                v153 = v90;
                v99 = v98;
                v166.n128_u64[0] = v98;
                *v97 = 136315138;
                sub_2315DC670(&qword_280FE95A8, MEMORY[0x277D60DC8], MEMORY[0x277D60DD0]);
                v100 = v95;
                v101 = sub_231606BC8();
                v103 = v102;
                (*(v96 + 8))(v93, v75);
                v104 = sub_2315B1574(v101, v103, &v166);
                v43 = v160;

                *(v97 + 4) = v104;
                _os_log_impl(&dword_2315AF000, v94, v100, "Using explicit turnState from requestState: %s", v97, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v99);
                v91 = v145;
                MEMORY[0x231933730](v99, -1, -1);
                MEMORY[0x231933730](v97, -1, -1);
              }

              else
              {

                (*(v72 + 8))(v93, v75);
              }

              v37 = v142;
              v84 = v154;
              (v162)(v157, v91, v75);
              v62 = v163;
            }

            v116 = v149;
            sub_2315DC458(v37, v149, &qword_27DD604C0, &qword_231608F68);
            if (__swift_getEnumTagSinglePayload(v116, 1, v62) == 1)
            {
              sub_2315B2F7C(v116, &qword_27DD604C0, &qword_231608F68);
              if (qword_280FE9628 != -1)
              {
                swift_once();
              }

              v117 = sub_2316066E8();
              __swift_project_value_buffer(v117, qword_280FE9630);
              v118 = sub_2316066C8();
              v119 = sub_231606958();
              if (os_log_type_enabled(v118, v119))
              {
                v120 = swift_slowAlloc();
                *v120 = 0;
                _os_log_impl(&dword_2315AF000, v118, v119, "[warning] No explicit requestInputOrigin is provided. Assuming modality is voice", v120, 2u);
                v84 = v154;
                MEMORY[0x231933730](v120, -1, -1);
              }

              v70 = v155;
              v71 = v156;
              (*(v156 + 104))(v155, *MEMORY[0x277D60E18], v84);
              v114 = v159;
              v113 = v157;
            }

            else
            {
              v121 = v116;
              v122 = v164;
              v123 = v144;
              v124 = (*(v164 + 32))(v144, v121, v62);
              v70 = v155;
              sub_2315D0AB4(v124, v125);
              (*(v122 + 8))(v123, v62);
              v114 = v159;
              v71 = v156;
              v113 = v157;
            }

            v115 = v84;
            v72 = v158;
            goto LABEL_49;
          }

          sub_2315B2F7C(v65, &qword_27DD604C0, &qword_231608F68);
          (*(v164 + 8))(v73, v62);
          v38 = v142;
          v43 = v160;
          v72 = v158;
        }

        sub_2315B2F7C(v68, &qword_27DD604B8, &qword_231608F60);
        goto LABEL_25;
      }

      sub_2315B2F7C(v35, &qword_27DD604C0, &qword_231608F68);
      (*(v164 + 8))(v64, v58);
      v62 = v58;
    }

    sub_2315B2F7C(v23, &qword_27DD604B8, &qword_231608F60);
    goto LABEL_19;
  }

  sub_2315B2F7C(&v166, &qword_27DD60468, &qword_231609E50);
LABEL_55:
  swift_beginAccess();
  (*(v39 + 16))(a3, v43, v38);
  return (*(v39 + 8))(v43, v38);
}

void sub_2315D0AB4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v5 = sub_2316054A8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = *(v7 + 16);
  v12(&v38 - v13, v2, v5);
  v14 = OUTLINED_FUNCTION_83();
  v16 = v15(v14);
  if (v16 == *MEMORY[0x277D61C98])
  {
    goto LABEL_2;
  }

  if (v16 == *MEMORY[0x277D61C48])
  {
    v17 = MEMORY[0x277D60E10];
    goto LABEL_5;
  }

  v20 = v16 == *MEMORY[0x277D61C50] || v16 == *MEMORY[0x277D61C60];
  if (v20 || v16 == *MEMORY[0x277D61C70])
  {
LABEL_2:
    v17 = MEMORY[0x277D60E18];
LABEL_5:
    v18 = *v17;
    sub_231606278();
    OUTLINED_FUNCTION_5_1();
    (*(v19 + 104))(v4, v18);
    goto LABEL_6;
  }

  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v22 = sub_2316066E8();
  __swift_project_value_buffer(v22, qword_280FE9630);
  v12(v11, v2, v5);
  v23 = sub_2316066C8();
  v24 = sub_231606978();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_60();
    v39 = v25;
    v40 = OUTLINED_FUNCTION_63();
    v41 = v40;
    *v25 = 136315138;
    v26 = sub_231605498();
    v28 = v27;
    v29 = OUTLINED_FUNCTION_62();
    v30(v29);
    v31 = sub_2315B1574(v26, v28, &v41);

    v32 = v39;
    *(v39 + 1) = v31;
    _os_log_impl(&dword_2315AF000, v23, v24, "Unknown input origin of %s. Defaulting to voiced input", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();
  }

  else
  {

    v33 = OUTLINED_FUNCTION_62();
    v34(v33);
  }

  v35 = *MEMORY[0x277D60E18];
  sub_231606278();
  OUTLINED_FUNCTION_5_1();
  (*(v36 + 104))(v4, v35);
  v37 = OUTLINED_FUNCTION_83();
  v11(v37);
LABEL_6:
  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315D0DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](sub_2315D0DFC, 0, 0);
}

uint64_t sub_2315D0DFC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_3_3();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 96) = v1;
  *v1 = v2;
  v1[1] = sub_2315D0F10;
  v3 = OUTLINED_FUNCTION_10_1();

  return v4(v3);
}

uint64_t sub_2315D0F10()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315D0FF4()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 64);
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    v2 = sub_231605FC8();
    v3 = swift_dynamicCast() ^ 1;
    v4 = v1;
    v5 = 1;
    v6 = v2;
  }

  else
  {
    sub_2315B2F7C(v0 + 16, &qword_27DD60390, &qword_231608910);
    sub_231605FC8();
    OUTLINED_FUNCTION_38();
  }

  __swift_storeEnumTagSinglePayload(v4, v3, v5, v6);
  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t sub_2315D10D8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_2315D10FC, 0, 0);
}

uint64_t sub_2315D10FC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_3_3();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 96) = v1;
  *v1 = v2;
  v1[1] = sub_2315D1210;
  v3 = OUTLINED_FUNCTION_10_1();

  return v4(v3);
}

uint64_t sub_2315D1210()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315D12F4()
{
  OUTLINED_FUNCTION_8();
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60500, &qword_231608FB8);
    OUTLINED_FUNCTION_45();
    swift_dynamicCast();
  }

  else
  {
    sub_2315B2F7C(v0 + 16, &qword_27DD60390, &qword_231608910);
  }

  OUTLINED_FUNCTION_48();

  return v1();
}

uint64_t sub_2315D13B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[37] = a4;
  v5[38] = v4;
  v5[35] = a2;
  v5[36] = a3;
  v5[34] = a1;
  v6 = sub_231605F68();
  v5[39] = v6;
  v5[40] = *(v6 - 8);
  v5[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60470, &unk_231608E80);
  v5[42] = swift_task_alloc();
  v7 = sub_231605FC8();
  v5[43] = v7;
  v5[44] = *(v7 - 8);
  v5[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D1510, 0, 0);
}

uint64_t sub_2315D1510()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_6_2();
  v9 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v2[46] = v4;
  *v4 = v5;
  v4[1] = sub_2315D162C;
  v6 = v2[35];
  v7 = v2[36];

  return (v9)(v2 + 2, v6, v7, 0x72656E776FLL, 0xE500000000000000, v1, v0);
}

uint64_t sub_2315D162C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315D1710()
{
  OUTLINED_FUNCTION_15();
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604F8, &qword_231608FB0);
    if (OUTLINED_FUNCTION_77(v1))
    {
      if (*(v0 + 128))
      {
        v2 = *(v0 + 272);
        sub_2315B540C((v0 + 104), (v0 + 64));
        sub_2315B540C((v0 + 64), v2);
LABEL_10:

        OUTLINED_FUNCTION_13();

        return v10();
      }
    }

    else
    {
      OUTLINED_FUNCTION_89();
    }
  }

  else
  {
    sub_2315B2F7C(v0 + 16, &qword_27DD60390, &qword_231608910);
    OUTLINED_FUNCTION_46();
    *(v0 + 136) = 0;
  }

  v3 = *(v0 + 336);
  v4 = *(v0 + 344);
  v5 = *(v0 + 296);
  sub_2315B2F7C(v0 + 104, &qword_27DD60350, &qword_231608800);
  sub_2315DC458(v5, v3, &qword_27DD60470, &unk_231608E80);
  OUTLINED_FUNCTION_40();
  if (v6)
  {
    v7 = *(v0 + 272);
    sub_2315B2F7C(*(v0 + 336), &qword_27DD60470, &unk_231608E80);
    sub_231606528();
    OUTLINED_FUNCTION_28();
    v7[3] = sub_231606058();
    OUTLINED_FUNCTION_5_5();
    v7[4] = sub_2315DC670(v8, v9, MEMORY[0x277D60A58]);
    *v7 = v4;
    goto LABEL_10;
  }

  v12 = *(v0 + 304);
  (*(*(v0 + 352) + 32))(*(v0 + 360), *(v0 + 336), *(v0 + 344));
  v13 = *(v12 + 152);
  swift_getObjectType();
  *(v0 + 264) = v13;
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 376) = v14;
  *v14 = v15;
  v14[1] = sub_2315D1958;
  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821C5CD8](v16);
}

uint64_t sub_2315D1958()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315D1A3C()
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_21();
  __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
  sub_231605FB8();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[48] = v1;
  *v1 = v2;
  v1[1] = sub_2315D1B08;
  OUTLINED_FUNCTION_96();

  return MEMORY[0x2821C5CB0](v3);
}

uint64_t sub_2315D1B08()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_36();
  v4(v3);
  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315D1C44()
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[11].n128_u64[1]);
  sub_2315DC458(&v0[9], &v0[14], &qword_27DD60350, &qword_231608800);
  v1 = v0[17].n128_u64[0];
  if (v0[15].n128_u64[1])
  {
    sub_2315B2F7C(&v0[9], &qword_27DD60350, &qword_231608800);
    v2 = OUTLINED_FUNCTION_36();
    v3(v2);
    sub_2315B540C(v0 + 14, v1);
  }

  else
  {
    v4 = sub_231606528();
    v1[1].n128_u64[1] = sub_231606058();
    OUTLINED_FUNCTION_5_5();
    v1[2].n128_u64[0] = sub_2315DC670(v5, v6, MEMORY[0x277D60A58]);
    v1->n128_u64[0] = v4;
    sub_2315B2F7C(&v0[9], &qword_27DD60350, &qword_231608800);
    v7 = OUTLINED_FUNCTION_36();
    v8(v7);
    if (v0[15].n128_u64[1])
    {
      sub_2315B2F7C(&v0[14], &qword_27DD60350, &qword_231608800);
    }
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_96();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_2315D1DB8(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604D0, &qword_231608F78);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D1E58, 0, 0);
}

uint64_t sub_2315D1E58()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_64();
  sub_231605AF8();
  *(v1 + 176) = v2;
  v6 = (*(v0 + 32) + **(v0 + 32));
  v3 = swift_task_alloc();
  *(v1 + 184) = v3;
  *v3 = v1;
  v3[1] = sub_2315D1F8C;
  v4 = OUTLINED_FUNCTION_53();

  return v6(v4);
}

uint64_t sub_2315D1F8C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 192) = v5;

  v7 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2315D2090()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604D8, &qword_231608F80);
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = swift_allocObject();
  v0[25] = v8;
  v8[2] = v1;
  v8[3] = v3;
  v8[4] = v2;

  v9 = swift_task_alloc();
  v0[26] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604A0, &unk_231608F00);
  OUTLINED_FUNCTION_79();
  *v9 = v10;
  v9[1] = sub_2315D21C8;
  v11 = v0[24];
  v12 = v0[21];
  v13 = MEMORY[0x277D837D0];

  return MEMORY[0x2821C6B08](v11, v12, &unk_231608F90, v8, v13);
}

void sub_2315D21C8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  *v4 = v3;
  *v4 = *v1;
  v3[27] = v5;
  v3[28] = v0;

  if (v0)
  {
  }

  else
  {
    sub_2315B2F7C(v3[21], &qword_27DD604D0, &qword_231608F78);

    v6 = OUTLINED_FUNCTION_6();

    MEMORY[0x2822009F8](v6);
  }
}

uint64_t sub_2315D2310()
{
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      sub_2315DC458(v3, v0 + 16, &qword_27DD604A0, &unk_231608F00);
      v5 = *(v0 + 64);
      *(v0 + 112) = *(v0 + 48);
      *(v0 + 128) = v5;
      v6 = *(v0 + 32);
      *(v0 + 80) = *(v0 + 16);
      *(v0 + 96) = v6;
      if (*(v0 + 88))
      {
        v13 = *(v0 + 16);
        v14 = *(v0 + 32);
        v15 = *(v0 + 48);
        v16 = *(v0 + 64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = OUTLINED_FUNCTION_76();
        }

        v8 = v4[2];
        v7 = v4[3];
        if (v8 >= v7 >> 1)
        {
          v4 = sub_2315DA474((v7 > 1), v8 + 1, 1, v4);
        }

        v4[2] = v8 + 1;
        v9 = &v4[8 * v8];
        v9[4] = v15;
        v9[5] = v16;
        v9[2] = v13;
        v9[3] = v14;
      }

      else
      {
        sub_2315B2F7C(v0 + 80, &qword_27DD604A0, &unk_231608F00);
      }

      v3 += 64;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v10 = sub_2315D28D8(v4);

  OUTLINED_FUNCTION_48();

  return v11(v10);
}

uint64_t sub_2315D249C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a2;
  v4[23] = a3;
  v5 = *a1;
  v6 = a1[1];
  v4[24] = a4;
  v4[25] = v5;
  v4[26] = v6;
  return MEMORY[0x2822009F8](sub_2315D24C8, 0, 0);
}

uint64_t sub_2315D24C8()
{
  OUTLINED_FUNCTION_4_0();
  v1 = v0[25];
  v2 = v0[26];
  v3 = sub_231605AF8();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3;
  }

  v7 = 7;
  if (((v5 >> 60) & ((v3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = sub_2315D288C(v7 | (v6 << 16), v1, v2);
  v9 = MEMORY[0x231932C90](v8);
  v11 = v10;
  v0[20] = v9;
  v0[21] = v10;

  v0[27] = v11;
  swift_getObjectType();
  OUTLINED_FUNCTION_6_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[28] = v12;
  *v12 = v13;
  v12[1] = sub_2315D2644;
  v14 = OUTLINED_FUNCTION_31_0();

  return v15(v14);
}

uint64_t sub_2315D2644()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315D2728()
{
  OUTLINED_FUNCTION_15();
  sub_2315DC458(v0 + 16, v0 + 112, &qword_27DD60390, &qword_231608910);
  v1 = *(v0 + 216);
  if (*(v0 + 136))
  {
    v2 = *(v0 + 160);
    sub_2315CAB60((v0 + 112), (v0 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604F0, &qword_231608FA8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_231608640;
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
    sub_2315B2D08(v0 + 64, v3 + 48);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
    v4 = &qword_27DD60390;
    v5 = &qword_231608910;
    v6 = v0 + 16;
  }

  else
  {

    OUTLINED_FUNCTION_18_1();
    sub_2315B2F7C(v7, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604F0, &qword_231608FA8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_231608640;
    *(v3 + 32) = 0u;
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
    *(v3 + 80) = 0u;
    OUTLINED_FUNCTION_18_1();
  }

  sub_2315B2F7C(v6, v4, v5);
  OUTLINED_FUNCTION_48();

  return v10(v3);
}

uint64_t sub_2315D288C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_2315D28D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604E0, &unk_231609B40);
    v3 = sub_231606B38();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2315DC224(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_2315D2970(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_2315D2994, 0, 0);
}

uint64_t sub_2315D2994()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_6_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 96) = v1;
  *v1 = v2;
  v1[1] = sub_2315D2AB0;
  v3 = OUTLINED_FUNCTION_31_0();

  return v4(v3);
}

uint64_t sub_2315D2AB0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315D2B94()
{
  OUTLINED_FUNCTION_15();
  if (v0[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60528, &qword_231608FE8);
    OUTLINED_FUNCTION_45();
    if (swift_dynamicCast())
    {
      v1 = v0[8];
      if (qword_280FE9628 != -1)
      {
        OUTLINED_FUNCTION_4_1(&qword_280FE9628);
      }

      v2 = sub_2316066E8();
      OUTLINED_FUNCTION_47(v2, qword_280FE9630);
      v3 = sub_2316066C8();
      v4 = sub_231606958();
      if (OUTLINED_FUNCTION_51(v4))
      {
        *OUTLINED_FUNCTION_33() = 0;
        OUTLINED_FUNCTION_17_3();
        _os_log_impl(v5, v6, v7, v8, v9, 2u);
        OUTLINED_FUNCTION_7_1();
      }

      OUTLINED_FUNCTION_48();

      return v10(v1);
    }
  }

  else
  {
    sub_2315B2F7C((v0 + 2), &qword_27DD60390, &qword_231608910);
  }

  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v12 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v12, qword_280FE9630);
  v13 = sub_2316066C8();
  v14 = sub_231606958();
  if (OUTLINED_FUNCTION_18_0(v14))
  {
    v15 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_27(v15);
    OUTLINED_FUNCTION_18();
    _os_log_impl(v16, v17, v18, v19, v20, 2u);
    OUTLINED_FUNCTION_17();
  }

  v21 = v0[11];

  __swift_project_boxed_opaque_existential_1((v21 + 32), *(v21 + 56));
  v22 = swift_task_alloc();
  v0[13] = v22;
  *v22 = v0;
  v23 = OUTLINED_FUNCTION_2_2(v22);

  return MEMORY[0x2821C61D0](v23);
}

uint64_t sub_2315D2DC0()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_10();
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_48();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_2315D2EAC(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_231605BE8();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D2F70, 0, 0);
}

uint64_t sub_2315D2F70()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_3_3();
  v9 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v1[28] = v4;
  *v4 = v5;
  v4[1] = sub_2315D30A0;
  v6 = v1[22];
  v7 = v1[23];

  return (v9)(v1 + 2, v6, v7, 0xD000000000000013, 0x800000023160A160, v2, v0);
}

uint64_t sub_2315D30A0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315D3184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_78();
  a20 = v22;
  if (*(v22 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    if (swift_dynamicCast())
    {
      sub_231604F38();
      swift_allocObject();
      sub_231604F28();
      sub_2315DC670(&qword_280FE9618, MEMORY[0x277D60660], MEMORY[0x277D60668]);
      sub_231604F18();
      v35 = sub_231605BD8();
      v36 = sub_2315CDD50(v35);

      v37 = sub_231605BC8();
      if (v38)
      {
        v39 = v37;
        v40 = v38;
        if (qword_280FE9628 != -1)
        {
          OUTLINED_FUNCTION_4_1(&qword_280FE9628);
        }

        v41 = sub_2316066E8();
        OUTLINED_FUNCTION_47(v41, qword_280FE9630);

        v42 = sub_2316066C8();
        v43 = sub_231606958();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = OUTLINED_FUNCTION_60();
          a9 = v36;
          a10 = OUTLINED_FUNCTION_63();
          v45 = v39;
          v46 = a10;
          *v44 = 136315138;
          *(v44 + 4) = sub_2315B1574(v45, v40, &a10);
          _os_log_impl(&dword_2315AF000, v42, v43, "Assigning deviceName: %s to GlobalProperties", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v46);
          v36 = a9;
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_20();
        }

        v47 = sub_2316067C8();

        v48 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithUTF8String_];

        if (v48)
        {
          *(v22 + 88) = sub_2315DC508();
          *(v22 + 64) = v48;
          sub_2315B55D4((v22 + 64), (v22 + 128));
          swift_isUniquelyReferenced_nonNull_native();
          a10 = v36;
          sub_2315DBD48((v22 + 128), 0x614E656369766564, 0xEA0000000000656DLL);

          OUTLINED_FUNCTION_95();
        }

        else
        {
          v49 = sub_2315CD0A0(0x614E656369766564, 0xEA0000000000656DLL);
          if (v50)
          {
            v51 = v49;
            swift_isUniquelyReferenced_nonNull_native();
            a10 = v36;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601C0, &qword_231608FD0);
            sub_231606AC8();
            v52 = a10;

            sub_2315B55D4((*(v52 + 56) + 32 * v51), (v22 + 96));
            sub_231606AE8();
          }

          else
          {
            *(v22 + 96) = 0u;
            *(v22 + 112) = 0u;
          }

          sub_2315B2F7C(v22 + 96, &unk_27DD605F0, qword_231609310);

          OUTLINED_FUNCTION_95();
        }

        (*(*(v22 + 208) + 8))(*(v22 + 216), *(v22 + 200));
      }

      else
      {
        (*(*(v22 + 208) + 8))(*(v22 + 216), *(v22 + 200));

        OUTLINED_FUNCTION_95();
      }

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_31();

      return v55(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
    }
  }

  else
  {
    sub_2315B2F7C(v22 + 16, &qword_27DD60390, &qword_231608910);
  }

  sub_2315DC4B4();
  swift_allocError();
  *v25 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_31();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2315D3610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x2822009F8](sub_2315D3634, 0, 0);
}

uint64_t sub_2315D3634()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_6_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 176) = v1;
  *v1 = v2;
  v1[1] = sub_2315D374C;
  v3 = OUTLINED_FUNCTION_31_0();

  return v4(v3);
}

uint64_t sub_2315D374C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315D3830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_78();
  a20 = v23;
  if (!*(v23 + 40))
  {
    sub_2315B2F7C(v23 + 16, &qword_27DD60390, &qword_231608910);
    *(v23 + 64) = 0u;
    *(v23 + 80) = 0u;
    *(v23 + 96) = 0;
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60510, &unk_231608FC0);
  OUTLINED_FUNCTION_45();
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v23 + 96) = 0;
    *(v23 + 64) = 0u;
    *(v23 + 80) = 0u;
    goto LABEL_10;
  }

  if (!*(v23 + 88))
  {
LABEL_10:
    sub_2315B2F7C(v23 + 64, &qword_27DD60460, &qword_231608E68);
    sub_2315DC4B4();
    swift_allocError();
    *v40 = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_14();
    goto LABEL_11;
  }

  sub_2315B540C((v23 + 64), *(v23 + 144));
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v26 = *(v23 + 144);
  v27 = sub_2316066E8();
  __swift_project_value_buffer(v27, qword_280FE9630);
  sub_2315DC54C(v26, v23 + 104);
  v28 = sub_2316066C8();
  v29 = sub_231606958();
  if (OUTLINED_FUNCTION_51(v29))
  {
    v30 = OUTLINED_FUNCTION_60();
    v31 = OUTLINED_FUNCTION_63();
    a10 = v31;
    *v30 = 136315138;
    v32 = *(v23 + 128);
    v33 = __swift_project_boxed_opaque_existential_1((v23 + 104), v32);
    v34 = *(v32 - 8);
    v35 = OUTLINED_FUNCTION_23_0();
    (*(v34 + 16))(v35, v33, v32);
    v36 = sub_2316067B8();
    v38 = v37;

    __swift_destroy_boxed_opaque_existential_1Tm((v23 + 104));
    v39 = sub_2315B1574(v36, v38, &a10);

    *(v30 + 4) = v39;
    _os_log_impl(&dword_2315AF000, v28, v22, "Got deviceState as:\n%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_20();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v23 + 104));
  }

  OUTLINED_FUNCTION_13();
LABEL_11:
  OUTLINED_FUNCTION_31();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2315D3AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v5 = sub_231605B38();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D3BB4, 0, 0);
}

uint64_t sub_2315D3BB4()
{
  OUTLINED_FUNCTION_49();
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = *(v0[26] + 24);
  ObjectType = swift_getObjectType();
  (*(v2 + 104))(v1, *MEMORY[0x277D605B0], v3);
  v6 = sub_231605B28();
  v8 = v7;
  v0[30] = v7;
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_3_3();
  v15 = (v9 + *v9);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[31] = v10;
  *v10 = v11;
  v10[1] = sub_2315D3D44;
  v12 = v0[24];
  v13 = v0[25];

  return (v15)(v0 + 2, v12, v13, v6, v8, ObjectType, v4);
}

uint64_t sub_2315D3D44()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315D3E44()
{
  OUTLINED_FUNCTION_4_0();
  v24 = v0;
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60530, &unk_231608FF0);
    if (OUTLINED_FUNCTION_77(v1))
    {
      if (*(v0 + 128))
      {
        sub_2315B540C((v0 + 104), (v0 + 64));
        if (qword_280FE9628 != -1)
        {
          OUTLINED_FUNCTION_4_1(&qword_280FE9628);
        }

        v2 = sub_2316066E8();
        OUTLINED_FUNCTION_47(v2, qword_280FE9630);
        sub_2315DC54C(v0 + 64, v0 + 144);
        v3 = sub_2316066C8();
        v4 = sub_231606958();
        if (os_log_type_enabled(v3, v4))
        {
          v5 = OUTLINED_FUNCTION_60();
          v6 = OUTLINED_FUNCTION_63();
          v23 = v6;
          *v5 = 136315138;
          __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
          v7 = sub_231606BC8();
          v9 = v8;
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
          v10 = sub_2315B1574(v7, v9, &v23);

          *(v5 + 4) = v10;
          _os_log_impl(&dword_2315AF000, v3, v4, "Got siriRequestState as:\n%s", v5, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v6);
          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_17();
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
        }

        sub_2315B540C((v0 + 64), *(v0 + 184));
        goto LABEL_15;
      }
    }

    else
    {
      OUTLINED_FUNCTION_89();
    }
  }

  else
  {
    sub_2315B2F7C(v0 + 16, &qword_27DD60390, &qword_231608910);
    OUTLINED_FUNCTION_46();
    *(v0 + 136) = 0;
  }

  sub_2315B2F7C(v0 + 104, &qword_27DD60468, &qword_231609E50);
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v11 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v11, qword_280FE9630);
  v12 = sub_2316066C8();
  v13 = sub_231606978();
  if (OUTLINED_FUNCTION_18_0(v13))
  {
    v14 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_27(v14);
    OUTLINED_FUNCTION_18();
    _os_log_impl(v15, v16, v17, v18, v19, 2u);
    OUTLINED_FUNCTION_17();
  }

  v20 = *(v0 + 184);

  *(v20 + 32) = 0;
  *v20 = 0u;
  *(v20 + 16) = 0u;
LABEL_15:

  OUTLINED_FUNCTION_14();

  return v21();
}

uint64_t sub_2315D40F0()
{
  OUTLINED_FUNCTION_8();
  v1[37] = v2;
  v1[38] = v0;
  v1[35] = v3;
  v1[36] = v4;
  v5 = sub_2316050C8();
  OUTLINED_FUNCTION_24(v5);
  v1[39] = OUTLINED_FUNCTION_23_0();
  v6 = sub_2316062E8();
  OUTLINED_FUNCTION_24(v6);
  v1[40] = OUTLINED_FUNCTION_23_0();
  v7 = sub_231606168();
  v1[41] = v7;
  OUTLINED_FUNCTION_4(v7);
  v1[42] = v8;
  v1[43] = OUTLINED_FUNCTION_23_0();
  v9 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2315D41D8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_3_3();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 352) = v1;
  *v1 = v2;
  v1[1] = sub_2315D42EC;
  v3 = OUTLINED_FUNCTION_10_1();

  return v4(v3);
}

uint64_t sub_2315D42EC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315D43D0()
{
  OUTLINED_FUNCTION_8();
  if (v0[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601B8, &unk_231607A80);
    if (swift_dynamicCast())
    {
      v1 = v0[34];
      goto LABEL_6;
    }
  }

  else
  {
    sub_2315B2F7C((v0 + 2), &qword_27DD60390, &qword_231608910);
  }

  v1 = MEMORY[0x277D84F90];
LABEL_6:
  v0[45] = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[46] = v2;
  *v2 = v3;
  v2[1] = sub_2315D44E0;
  v4 = v0[37];
  v5 = v0[36];

  return sub_2315D3AF0((v0 + 8), v5, v4);
}

uint64_t sub_2315D44E0()
{
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  *(v2 + 376) = v5;
  *v5 = v4;
  v5[1] = sub_2315D463C;
  v6 = OUTLINED_FUNCTION_29_0(*(v1 + 288));

  return sub_2315D2970(v6, v7);
}

uint64_t sub_2315D463C()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_10();
  v5 = v4;
  OUTLINED_FUNCTION_9_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    *(v5 + 384) = v3;
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315D474C()
{
  OUTLINED_FUNCTION_8();
  v0[49] = v0[48];
  v0[50] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D8, &qword_231608E50);
  v0[51] = sub_231606728();
  v1 = swift_task_alloc();
  v0[52] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_28_0(v1);

  return sub_2315D2EAC(v2, v3);
}

uint64_t sub_2315D47FC()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_10();
  v5 = v4;
  OUTLINED_FUNCTION_9_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v5 + 424) = v0;

  if (!v0)
  {
    *(v5 + 432) = v3;
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315D4908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_92();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_4_0();
  a16 = v18;
  v21 = sub_2315CDAD0(v18[54]);

  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v22 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v22, qword_280FE9630);
  v23 = sub_2316066C8();
  v24 = sub_231606968();
  if (OUTLINED_FUNCTION_51(v24))
  {
    v25 = OUTLINED_FUNCTION_60();
    v26 = OUTLINED_FUNCTION_63();
    a9 = v26;
    *v25 = 136315138;

    v27 = sub_231606718();
    v29 = v28;

    v30 = sub_2315B1574(v27, v29, &a9);

    *(v25 + 4) = v30;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  v18[55] = v21;
  OUTLINED_FUNCTION_46();
  v18[17] = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v18[56] = v36;
  *v36 = v37;
  OUTLINED_FUNCTION_27_0(v36);
  OUTLINED_FUNCTION_94();

  return sub_2315D3610(v38, v39, v40);
}

uint64_t sub_2315D4A98()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 456) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315D4B94()
{
  OUTLINED_FUNCTION_8();
  sub_2315B2F7C(v0 + 104, &qword_27DD60460, &qword_231608E68);
  v1 = *(v0 + 160);
  *(v0 + 104) = *(v0 + 144);
  *(v0 + 120) = v1;
  *(v0 + 136) = *(v0 + 176);
  OUTLINED_FUNCTION_80();
  result = sub_2315DC458(v2, v3, v4, v5);
  if (*(v0 + 248))
  {

    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    *(v0 + 464) = v7;
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_22_1(v7);

    return sub_2315D5394(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2315D4C5C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 472) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 224));
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315D4DC4()
{
  OUTLINED_FUNCTION_15();
  sub_2315B2F7C(v0 + 104, &qword_27DD60460, &qword_231608E68);
  sub_2315B2F7C(v0 + 64, &qword_27DD60468, &qword_231609E50);

  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_2315D4E78()
{
  OUTLINED_FUNCTION_8();
  v0[49] = 0;
  v0[50] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD602D8, &qword_231608E50);
  v0[51] = sub_231606728();
  v1 = swift_task_alloc();
  v0[52] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_28_0(v1);

  return sub_2315D2EAC(v2, v3);
}

uint64_t sub_2315D4F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_92();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_4_0();
  a16 = v18;
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v21 = v18[53];
  v22 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v22, qword_280FE9630);
  v23 = v21;
  v24 = sub_2316066C8();
  v25 = sub_231606958();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v18[53];
  if (v26)
  {
    v28 = OUTLINED_FUNCTION_60();
    v29 = OUTLINED_FUNCTION_63();
    a9 = v29;
    *v28 = 136315138;
    v18[33] = v27;
    v30 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60340, &unk_2316087E0);
    v31 = sub_2316067A8();
    v33 = sub_2315B1574(v31, v32, &a9);

    *(v28 + 4) = v33;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {
  }

  v18[55] = v18[51];
  OUTLINED_FUNCTION_46();
  v18[17] = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v18[56] = v39;
  *v39 = v40;
  OUTLINED_FUNCTION_27_0(v39);
  OUTLINED_FUNCTION_94();

  return sub_2315D3610(v41, v42, v43);
}

uint64_t sub_2315D50C4()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_4_0();
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v2 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v2, qword_280FE9630);
  v3 = sub_2316066C8();
  v4 = sub_231606978();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_27(v5);
    _os_log_impl(&dword_2315AF000, v3, v4, "Unable to obtain DeviceState from state store. Assuming restrictive state", v0, 2u);
    OUTLINED_FUNCTION_17();
  }

  v6 = *(v1 + 456);
  v8 = *(v1 + 336);
  v7 = *(v1 + 344);
  v9 = *(v1 + 328);

  (*(v8 + 104))(v7, *MEMORY[0x277D60BE0], v9);
  sub_2316062D8();
  sub_2316050B8();
  *(v1 + 208) = sub_231605D48();
  *(v1 + 216) = sub_2315DC670(&qword_27DD60458, MEMORY[0x277D60858], MEMORY[0x277D60850]);
  __swift_allocate_boxed_opaque_existential_1((v1 + 184));
  sub_231605D38();

  sub_2315B2F7C(v1 + 104, &qword_27DD60460, &qword_231608E68);
  *(v1 + 104) = *(v1 + 184);
  *(v1 + 120) = *(v1 + 200);
  *(v1 + 136) = *(v1 + 216);
  OUTLINED_FUNCTION_80();
  result = sub_2315DC458(v10, v11, v12, v13);
  if (*(v1 + 248))
  {

    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    *(v1 + 464) = v15;
    *v15 = v16;
    OUTLINED_FUNCTION_22_1(v15);
    OUTLINED_FUNCTION_94();

    return sub_2315D5394(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2315D52D4()
{
  OUTLINED_FUNCTION_15();
  sub_2315B2F7C(v0 + 104, &qword_27DD60460, &qword_231608E68);
  sub_2315B2F7C(v0 + 64, &qword_27DD60468, &qword_231609E50);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 224));

  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_2315D5394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[47] = a8;
  v9[48] = v8;
  v9[45] = a6;
  v9[46] = a7;
  v9[43] = a4;
  v9[44] = a5;
  v9[41] = a2;
  v9[42] = a3;
  v9[40] = a1;
  sub_231605098();
  v9[49] = swift_task_alloc();
  v10 = sub_231606268();
  v9[50] = v10;
  v9[51] = *(v10 - 8);
  v9[52] = swift_task_alloc();
  v11 = sub_231606128();
  v9[53] = v11;
  v9[54] = *(v11 - 8);
  v9[55] = swift_task_alloc();
  v9[56] = swift_task_alloc();
  v12 = sub_231605FC8();
  v9[57] = v12;
  v9[58] = *(v12 - 8);
  v9[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60410, &qword_231608AE8);
  v9[60] = swift_task_alloc();
  v9[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60470, &unk_231608E80);
  v9[62] = swift_task_alloc();
  v9[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60478, &qword_231609E40);
  v9[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D5614, 0, 0);
}

uint64_t sub_2315D5614()
{
  OUTLINED_FUNCTION_15();
  sub_2315DC458(v0[47], (v0 + 2), &qword_27DD60468, &qword_231609E50);
  if (!v0[5])
  {
    sub_2315B2F7C((v0 + 2), &qword_27DD60468, &qword_231609E50);
    sub_231606248();
    OUTLINED_FUNCTION_38();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_231605D08();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = sub_231606248();
  OUTLINED_FUNCTION_40();
  if (v2)
  {
LABEL_9:
    sub_2315B2F7C(v0[64], &qword_27DD60478, &qword_231609E40);
    goto LABEL_10;
  }

  v3 = (*(*(v1 - 8) + 88))(v0[64], v1);
  v4 = v0[64];
  if (v3 == *MEMORY[0x277D60DC0])
  {
    v5 = v0[48];
    v6 = OUTLINED_FUNCTION_85();
    v7(v6);
    sub_231606288();
    OUTLINED_FUNCTION_5_1();
    (*(v8 + 8))(v4);
    __swift_project_boxed_opaque_existential_1((v5 + 112), *(v5 + 136));
    OUTLINED_FUNCTION_56();
    if (sub_2316062B8())
    {
      v9 = swift_task_alloc();
      v0[65] = v9;
      *v9 = v0;
      v9[1] = sub_2315D590C;

      return sub_2315D6CB0();
    }
  }

  else
  {
    v29 = OUTLINED_FUNCTION_85();
    v30(v29);
  }

LABEL_10:
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v15 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v15, qword_280FE9630);
  v16 = sub_2316066C8();
  v17 = sub_231606968();
  if (OUTLINED_FUNCTION_18_0(v17))
  {
    v18 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_27(v18);
    OUTLINED_FUNCTION_18();
    _os_log_impl(v19, v20, v21, v22, v23, 2u);
    OUTLINED_FUNCTION_17();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[67] = v24;
  *v24 = v25;
  v26 = OUTLINED_FUNCTION_26_0(v24);

  return sub_2315D0DD8(v26, v27, v28);
}

uint64_t sub_2315D590C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 528) = v3;

  v4 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2315D59F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_92();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_4_0();
  a16 = v18;
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v21 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v21, qword_280FE9630);

  v22 = sub_2316066C8();
  v23 = sub_231606958();

  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v18 + 528);
  if (v24)
  {
    v26 = OUTLINED_FUNCTION_60();
    v27 = OUTLINED_FUNCTION_63();
    a9 = v27;
    *v26 = 136315138;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60488, &qword_231608EC8);
    v29 = MEMORY[0x231932D20](v25, v28);
    v31 = v30;

    v32 = sub_2315B1574(v29, v31, &a9);

    *(v26 + 4) = v32;
    OUTLINED_FUNCTION_18();
    _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_17();
  }

  else
  {
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v18 + 536) = v38;
  *v38 = v39;
  OUTLINED_FUNCTION_26_0(v38);
  OUTLINED_FUNCTION_94();

  return sub_2315D0DD8(v40, v41, v42);
}

uint64_t sub_2315D5B88()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[68] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8]();
  }

  else
  {
    v7 = swift_task_alloc();
    v3[69] = v7;
    *v7 = v5;
    v7[1] = sub_2315D5CDC;
    v8 = OUTLINED_FUNCTION_29_0(v3[41]);

    return sub_2315D10D8(v8, v9);
  }
}

uint64_t sub_2315D5CDC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  *v4 = v3;
  *v4 = *v1;
  v3[70] = v5;
  v3[71] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8]();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    v3[72] = v6;
    *v6 = v7;
    v6[1] = sub_2315D5E44;
    v8 = v3[63];
    v9 = v3[41];
    v10 = v3[42];

    return sub_2315D13B4((v3 + 7), v9, v10, v8);
  }
}

uint64_t sub_2315D5E44()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 584) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315D5F44()
{
  OUTLINED_FUNCTION_8();
  v0[38] = sub_2315D7CA4(v0 + 7, v0[63]);
  v0[39] = v1;
  v2 = swift_task_alloc();
  v0[74] = v2;
  *v2 = v0;
  v2[1] = sub_2315D5FE8;
  v3 = OUTLINED_FUNCTION_29_0(v0[41]);

  return sub_2315D1DB8(v3, v4);
}

uint64_t sub_2315D5FE8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 600) = v3;

  v4 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2315D60D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_90();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_78();
  a20 = v22;
  v25 = v22[62];
  v26 = v22[57];
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = OUTLINED_FUNCTION_36();
  sub_2315DC458(v31, v32, v33, v34);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v26);
  v36 = v22[70];
  if (EnumTagSinglePayload != 1)
  {
    v45 = v22[61];
    v46 = v22[50];
    v47 = v22[51];
    v48 = *(v22[58] + 32);
    v48(v22[59], v22[62], v22[57]);
    sub_2315B2F7C(v45, &qword_27DD60410, &qword_231608AE8);
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60480, &qword_231608EB8) + 48);
    v50 = OUTLINED_FUNCTION_36();
    (v48)(v50);
    *(v45 + v49) = v36;
    (*(v47 + 104))(v45, *MEMORY[0x277D60DF0], v46);
    v41 = OUTLINED_FUNCTION_67();
    v44 = v46;
    goto LABEL_6;
  }

  sub_2315B2F7C(v22[62], &qword_27DD60470, &unk_231608E80);
  if (!v36)
  {
    goto LABEL_7;
  }

  v37 = v22[70];
  if (*(v37 + 16))
  {
    v38 = v22[61];
    v39 = v22[50];
    v40 = v22[51];
    sub_2315B2F7C(v38, &qword_27DD60410, &qword_231608AE8);
    *v38 = v37;
    (*(v40 + 104))(v38, *MEMORY[0x277D60DF8], v39);
    v41 = v38;
    v42 = 0;
    v43 = 1;
    v44 = v39;
LABEL_6:
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    goto LABEL_7;
  }

LABEL_7:
  v51 = v22[56];
  v52 = v22[47];
  sub_2315DC54C((v22 + 7), (v22 + 12));
  sub_2315CF600(v52, (v22 + 12), v51);
  sub_2315B2F7C((v22 + 12), &qword_27DD60350, &qword_231608800);
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v53 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v53, qword_280FE9630);

  v54 = sub_2316066C8();
  v55 = sub_231606968();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = v22[61];
    v57 = v22[50];
    v59 = v22[42];
    v58 = v22[43];
    v60 = v22[41];
    v61 = swift_slowAlloc();
    a11 = swift_slowAlloc();
    *v61 = 136315906;
    *(v61 + 4) = sub_2315B1574(v60, v59, &a11);
    *(v61 + 12) = 2080;
    v62 = MEMORY[0x231932D20](v58, MEMORY[0x277D837D0]);
    v64 = sub_2315B1574(v62, v63, &a11);

    *(v61 + 14) = v64;
    *(v61 + 22) = 2080;
    swift_beginAccess();
    if (__swift_getEnumTagSinglePayload(v56, 1, v57))
    {
      v65 = 0xE300000000000000;
      v66 = 4271950;
    }

    else
    {
      v68 = v22[51];
      v67 = v22[52];
      v69 = v22[50];
      (*(v68 + 16))(v67, v22[61], v69);
      v66 = sub_231606258();
      v65 = v70;
      (*(v68 + 8))(v67, v69);
    }

    v71 = sub_2315B1574(v66, v65, &a11);

    *(v61 + 24) = v71;
    *(v61 + 32) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
    v72 = sub_231606718();
    v74 = sub_2315B1574(v72, v73, &a11);

    *(v61 + 34) = v74;
    _os_log_impl(&dword_2315AF000, v54, v55, "Creating suggestions interaction for requestId: %s with dialogId: %s, intent: %s, executionParameters %s", v61, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  OUTLINED_FUNCTION_64();
  v85 = v54[3].isa + *v54[3].isa;
  v75 = swift_task_alloc();
  v22[76] = v75;
  *v75 = v22;
  v75[1] = sub_2315D661C;
  OUTLINED_FUNCTION_29_0(v22[41]);
  OUTLINED_FUNCTION_31();

  return v80(v76, v77, v78, v79, v80, v81, v82, v83, v54 + 3, v85, a11, a12, a13, a14);
}

uint64_t sub_2315D661C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315D6700()
{
  v1 = v0[61];
  v17 = v0[60];
  v14 = v0[55];
  v16 = v0[56];
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[48];
  v5 = v0[46];
  v18 = v0[47];
  v7 = v4[24];
  v6 = v4[25];
  __swift_project_boxed_opaque_existential_1(v4 + 21, v7);
  (*(v6 + 8))(v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD603A8, &qword_231608AF0);
  sub_231606728();
  sub_2315DC54C(v5, (v0 + 17));
  sub_2315DC54C((v0 + 7), (v0 + 22));
  (*(v2 + 16))(v14, v16, v3);
  swift_beginAccess();
  sub_2315DC458(v1, v17, &qword_27DD60410, &qword_231608AE8);
  sub_2315DC458(v18, (v0 + 27), &qword_27DD60468, &qword_231609E50);
  if (v0[30])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 27, v0[30]);

    OUTLINED_FUNCTION_56();
    sub_231605D28();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  }

  else
  {

    sub_2315B2F7C((v0 + 27), &qword_27DD60468, &qword_231609E50);
  }

  v13 = v0[63];
  v15 = v0[61];
  v8 = v0[54];
  v11 = v0[53];
  v12 = v0[56];

  sub_231605DF8();
  (*(v8 + 8))(v12, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  sub_2315B2F7C(v13, &qword_27DD60470, &unk_231608E80);
  sub_2315B2F7C(v15, &qword_27DD60410, &qword_231608AE8);

  OUTLINED_FUNCTION_13();

  return v9();
}

uint64_t sub_2315D6A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_24_2();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_58();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_2315D6B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_49();
  sub_2315B2F7C(*(v12 + 504), &qword_27DD60470, &unk_231608E80);
  OUTLINED_FUNCTION_24_2();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_58();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_2315D6BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_49();
  sub_2315B2F7C(*(v12 + 504), &qword_27DD60470, &unk_231608E80);
  OUTLINED_FUNCTION_24_2();

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_58();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_2315D6CB0()
{
  v1[3] = v0;
  v2 = sub_2316066B8();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D6D70, 0, 0);
}

uint64_t sub_2315D6D70()
{
  OUTLINED_FUNCTION_21();
  v1 = sub_2316064E8();
  sub_2316064C8();

  sub_231605FE8();
  v2 = sub_2316064E8();
  OUTLINED_FUNCTION_36();
  sub_2316064F8();

  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v3 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v3, qword_280FE9630);
  v4 = sub_2316066C8();
  v5 = sub_231606958();
  if (OUTLINED_FUNCTION_18_0(v5))
  {
    v6 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_27(v6);
    OUTLINED_FUNCTION_18();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_17();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60488, &qword_231608EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60490, &qword_231608ED0);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 56) = v12;
  *v12 = v13;
  v12[1] = sub_2315D6F30;
  OUTLINED_FUNCTION_96();

  return MEMORY[0x282200740](v14);
}

void sub_2315D6F30()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_9();

    MEMORY[0x2822009F8]();
  }
}

uint64_t sub_2315D7040()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 16);
  sub_231605FE8();
  v2 = sub_2316064E8();
  sub_2316064D8();

  v3 = OUTLINED_FUNCTION_36();
  v4(v3);

  OUTLINED_FUNCTION_48();

  return v5(v1);
}

uint64_t sub_2315D710C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[43] = a2;
  v3[44] = a3;
  v3[42] = a1;
  v5 = swift_task_alloc();
  v3[45] = v5;
  *v5 = v3;
  v5[1] = sub_2315D71CC;

  return sub_2315D7B0C(0xD000000000000010, 0x800000023160A120, a2);
}

uint64_t sub_2315D71CC()
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 368) = v4;
  *v4 = v3;
  v4[1] = sub_2315D732C;
  OUTLINED_FUNCTION_96();

  return sub_2315D7B0C(v5, v6, v7);
}

uint64_t sub_2315D732C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315D7410()
{
  OUTLINED_FUNCTION_15();
  v1 = sub_231605AF8();
  v3 = v2;
  v0[47] = v2;
  v4 = swift_task_alloc();
  v0[48] = v4;
  *v4 = v0;
  v4[1] = sub_2315D74BC;
  v5 = v0[43];

  return sub_2315D7B0C(v1, v3, v5);
}

uint64_t sub_2315D74BC()
{
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  *(v1 + 392) = MEMORY[0x277D84F90];
  v4 = swift_task_alloc();
  *(v1 + 400) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60498, &unk_231608EF0);
  *v4 = v3;
  v4[1] = sub_2315D7640;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822004D0](v5);
}

uint64_t sub_2315D7640()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 408) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315D773C()
{
  OUTLINED_FUNCTION_15();
  sub_2315DC458(v0 + 16, v0 + 144, &qword_27DD604A0, &unk_231608F00);
  v1 = *(v0 + 392);
  if (*(v0 + 152))
  {
    v2 = *(v0 + 160);
    *(v0 + 80) = *(v0 + 144);
    *(v0 + 96) = v2;
    v3 = *(v0 + 192);
    *(v0 + 112) = *(v0 + 176);
    *(v0 + 128) = v3;
    sub_2315DC458(v0 + 80, v0 + 208, &qword_27DD60488, &qword_231608EC8);
    v4 = *(v0 + 216);
    *(v0 + 272) = *(v0 + 208);
    *(v0 + 280) = v4;
    sub_2315CAB60((v0 + 224), (v0 + 288));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 392);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = OUTLINED_FUNCTION_76();
    }

    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      v6 = sub_2315DA474((v7 > 1), v8 + 1, 1, v6);
    }

    sub_2315B2F7C(v0 + 80, &qword_27DD60488, &qword_231608EC8);
    sub_2315B2F7C(v0 + 16, &qword_27DD604A0, &unk_231608F00);
    v6[2] = v8 + 1;
    v9 = &v6[8 * v8];
    v10 = *(v0 + 320);
    v12 = *(v0 + 272);
    v11 = *(v0 + 288);
    v9[4] = *(v0 + 304);
    v9[5] = v10;
    v9[2] = v12;
    v9[3] = v11;
    *(v0 + 392) = v6;
    v13 = swift_task_alloc();
    *(v0 + 400) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60498, &unk_231608EF0);
    OUTLINED_FUNCTION_79();
    *v13 = v14;
    v13[1] = sub_2315D7640;
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822004D0](v15);
  }

  else
  {
    v16 = *(v0 + 336);
    OUTLINED_FUNCTION_18_1();
    sub_2315B2F7C(v17, v18, v19);
    OUTLINED_FUNCTION_18_1();
    sub_2315B2F7C(v20, v21, v22);
    *v16 = v1;
    OUTLINED_FUNCTION_13();

    return v23();
  }
}

uint64_t sub_2315D7954()
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_21();
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v1 = *(v0 + 408);
  v2 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v2, qword_280FE9630);
  v3 = v1;
  v4 = sub_2316066C8();
  v5 = sub_231606978();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 408);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_60();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_2315B2F7C(v9, &qword_27DD60278, &unk_231608238);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {
  }

  v17 = swift_task_alloc();
  *(v0 + 400) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60498, &unk_231608EF0);
  OUTLINED_FUNCTION_79();
  *v17 = v18;
  v17[1] = sub_2315D7640;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_96();

  return MEMORY[0x2822004D0](v19);
}

uint64_t sub_2315D7B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D7BAC, 0, 0);
}

uint64_t sub_2315D7BAC()
{
  OUTLINED_FUNCTION_21();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  sub_2316068E8();
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v4;
  v9[6] = v3;

  sub_2315D9C80(v1, &unk_231608F18, v9);
  sub_2315B2F7C(v1, &qword_27DD60398, &qword_231609BD0);

  OUTLINED_FUNCTION_14();

  return v10();
}

uint64_t sub_2315D7CA4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60470, &unk_231608E80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_231606478();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  if (MEMORY[0x2319328F0](v11, v12) == 0x6F747541656D6F48 && v13 == 0xEE006E6F6974616DLL)
  {
  }

  else
  {
    v15 = sub_231606BD8();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2315DC458(a2, v6, &qword_27DD60470, &unk_231608E80);
  v16 = sub_231605FC8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v16) == 1)
  {
    sub_2315B2F7C(v6, &qword_27DD60470, &unk_231608E80);
    return 0;
  }

  v17 = *(v16 - 8);
  if ((*(v17 + 88))(v6, v16) != *MEMORY[0x277D60928])
  {
    (*(v17 + 8))(v6, v16);
    return 0;
  }

  (*(v17 + 96))(v6, v16);
  (*(v8 + 32))(v10, v6, v7);
  v18 = sub_231606448();
  v19 = sub_2315DCC78(1651664246, 0xE400000000000000, v18);

  (*(v8 + 8))(v10, v7);
  return v19;
}

uint64_t sub_2315D7FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a1;
  v6[28] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604A8, &qword_231608F20);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v7 = sub_231605508();
  v6[34] = v7;
  v6[35] = *(v7 - 8);
  v6[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D80BC, 0, 0);
}

uint64_t sub_2315D80BC()
{
  OUTLINED_FUNCTION_78();
  v1 = v0[28];
  type metadata accessor for StateStoreInteractionBuilder.ContinuationCapture(0);
  v2 = swift_allocObject();
  v0[37] = v2;
  swift_defaultActor_initialize();
  v0[38] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60450, qword_231608DE8);
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  __swift_project_boxed_opaque_existential_1((v1 + 72), *(v1 + 96));
  OUTLINED_FUNCTION_53();
  v7 = sub_2316054E8();
  v8 = MEMORY[0x2319319B0](v7);
  v9 = OUTLINED_FUNCTION_72();
  v10(v9);
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v11 = sub_2316066E8();
  v0[39] = __swift_project_value_buffer(v11, qword_280FE9630);
  v12 = sub_2316066C8();
  v13 = sub_231606968();
  if (OUTLINED_FUNCTION_51(v13))
  {
    v14 = OUTLINED_FUNCTION_60();
    *v14 = 134217984;
    *(v14 + 4) = v8;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    OUTLINED_FUNCTION_7_1();
  }

  v21 = v0[29];
  v20 = v0[30];
  v22 = v0[28];

  v23 = swift_allocObject();
  v0[40] = v23;
  v23[2] = v2;
  v23[3] = v21;
  v23[4] = v20;
  v23[5] = v22;

  v24 = swift_task_alloc();
  v0[41] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60488, &qword_231608EC8);
  v0[42] = v25;
  *v24 = v0;
  v24[1] = sub_2315D84CC;
  v26 = v0[27];
  v27.n128_f64[0] = v8;

  return MEMORY[0x2821C8618](v26, &unk_231608F30, v23, v25, v27);
}

uint64_t sub_2315D84CC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315D85CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_57();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_49();
  a18 = v20;
  sub_2315DC458(*(v20 + 216), v20 + 16, &qword_27DD60488, &qword_231608EC8);

  v23 = sub_2316066C8();
  v24 = sub_231606968();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_75();
    a9 = swift_slowAlloc();
    *v25 = 136315394;
    v26 = OUTLINED_FUNCTION_84();
    *(v25 + 4) = sub_2315B1574(v26, v27, v28);
    *(v25 + 12) = 2080;
    sub_2315DC458(v20 + 16, v20 + 80, &qword_27DD60488, &qword_231608EC8);
    *(v20 + 144) = *(v20 + 80);
    *(v20 + 152) = *(v20 + 88);
    sub_2315CAB60((v20 + 96), (v20 + 160));
    v29 = sub_2316067A8();
    v31 = v30;
    sub_2315B2F7C(v20 + 16, &qword_27DD60488, &qword_231608EC8);
    v32 = sub_2315B1574(v29, v31, &a9);

    *(v25 + 14) = v32;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_7_1();
  }

  else
  {

    sub_2315B2F7C(v20 + 16, &qword_27DD60488, &qword_231608EC8);
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_58();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_2315D87E0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 256);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  sub_2315B2F7C(v2, &qword_27DD604A8, &qword_231608F20);
  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315D88F0()
{
  OUTLINED_FUNCTION_4_0();
  sub_2315DC458(v0[33], v0[31], &qword_27DD604A8, &qword_231608F20);
  OUTLINED_FUNCTION_40();
  if (v1)
  {
    sub_2315B2F7C(v0[31], &qword_27DD604A8, &qword_231608F20);
  }

  else
  {
    v2 = v0[44];
    v0[26] = v2;
    v3 = v0[38];
    v4 = v0[31];
    v5 = v2;
    OUTLINED_FUNCTION_36();
    sub_2316068B8();
    OUTLINED_FUNCTION_23();
    (*(v6 + 8))(v4, v3);
  }

  v7 = v0[33];
  swift_willThrow();

  sub_2315B2F7C(v7, &qword_27DD604A8, &qword_231608F20);

  OUTLINED_FUNCTION_14();

  return v8();
}

uint64_t sub_2315D8A48()
{
  OUTLINED_FUNCTION_49();

  v1 = v0[43];
  v0[44] = v1;
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  v2 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v2, qword_280FE9630);

  v3 = v1;
  v4 = sub_2316066C8();
  v5 = sub_231606978();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_75();
    v7 = swift_slowAlloc();
    v22 = OUTLINED_FUNCTION_63();
    *v6 = 136315394;
    v8 = OUTLINED_FUNCTION_84();
    *(v6 + 4) = sub_2315B1574(v8, v9, v10);
    *(v6 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&dword_2315AF000, v4, v5, "Error waiting for: %s. %@", v6, 0x16u);
    sub_2315B2F7C(v7, &qword_27DD60278, &unk_231608238);
    OUTLINED_FUNCTION_20();
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_17();
  }

  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[45] = v17;
  *v17 = v18;
  v19 = OUTLINED_FUNCTION_32_0(v17);

  return sub_2315D9E58(v19, v20);
}

uint64_t sub_2315D8C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2315D8C4C, 0, 0);
}

uint64_t sub_2315D8C4C()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60488, &qword_231608EC8);
  OUTLINED_FUNCTION_79();
  *v5 = v6;
  v5[1] = sub_2315D8D50;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2315D8D50()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {

    OUTLINED_FUNCTION_14();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315D8E6C()
{
  OUTLINED_FUNCTION_8();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_2315D8EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a3;
  v24 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60450, qword_231608DE8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v16 = sub_2316068E8();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a2;
  (*(v9 + 32))(&v19[v17], v12, v8);
  v20 = &v19[v18];
  v21 = v24;
  *v20 = v23;
  v20[1] = a4;
  *&v19[(v18 + 23) & 0xFFFFFFFFFFFFFFF8] = v21;

  sub_2315FD77C(0, 0, v15, &unk_231608F40, v19);
}

uint64_t sub_2315D90D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604A8, &qword_231608F20);
  v8[7] = swift_task_alloc();
  v8[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D9188, 0, 0);
}

uint64_t sub_2315D9188()
{
  OUTLINED_FUNCTION_15();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60450, qword_231608DE8);
  OUTLINED_FUNCTION_5_1();
  v2 = OUTLINED_FUNCTION_36();
  v3(v2);
  v4 = OUTLINED_FUNCTION_67();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[9] = v7;
  *v7 = v8;
  v7[1] = sub_2315D9274;
  v10 = v0[7];
  v9 = v0[8];

  return sub_2315D9E58(v9, v10);
}

uint64_t sub_2315D9274()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_56();
  sub_2315B2F7C(v3, v4, &qword_231608F20);
  v5 = OUTLINED_FUNCTION_72();
  sub_2315B2F7C(v5, v6, &qword_231608F20);
  v7 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2315D93B0()
{
  OUTLINED_FUNCTION_49();
  v18 = v0;
  if (qword_280FE9550 != -1)
  {
    swift_once();
  }

  v1 = sub_2316066E8();
  v0[10] = v1;
  OUTLINED_FUNCTION_47(v1, qword_280FE9558);

  v2 = sub_2316066C8();
  v3 = sub_231606968();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = OUTLINED_FUNCTION_60();
    v7 = OUTLINED_FUNCTION_63();
    v17 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2315B1574(v5, v4, &v17);
    _os_log_impl(&dword_2315AF000, v2, v3, "Starting listener task for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_29();
  }

  v8 = v0[5];
  v9 = v0[4];
  v10 = v0[2];
  OUTLINED_FUNCTION_64();
  v11 = swift_allocObject();
  v0[11] = v11;
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v12 = *(v3 + 40);

  v16 = (v12 + *v12);
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_2315D9624;
  v14 = OUTLINED_FUNCTION_29_0(v0[4]);

  return v16(v14);
}

uint64_t sub_2315D9624()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2315D9724()
{
  OUTLINED_FUNCTION_15();
  if (qword_280FE9628 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_280FE9628);
  }

  OUTLINED_FUNCTION_47(*(v0 + 80), qword_280FE9630);
  v1 = sub_2316066C8();
  v2 = sub_231606968();
  if (OUTLINED_FUNCTION_18_0(v2))
  {
    v3 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_27(v3);
    OUTLINED_FUNCTION_18();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_17();
  }

  OUTLINED_FUNCTION_14();

  return v9();
}

uint64_t sub_2315D9800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604A8, &qword_231608F20);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315D98B8, 0, 0);
}

uint64_t sub_2315D98B8()
{
  OUTLINED_FUNCTION_8();
  v0[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60450, qword_231608DE8);
  OUTLINED_FUNCTION_38();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[19] = v5;
  *v5 = v6;
  v5[1] = sub_2315D9974;
  v8 = v0[16];
  v7 = v0[17];

  return sub_2315D9E58(v7, v8);
}

uint64_t sub_2315D9974()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  sub_2315B2F7C(v2, &qword_27DD604A8, &qword_231608F20);
  v5 = OUTLINED_FUNCTION_6();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2315D9A84()
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_21();
  sub_2315DC458(*(v0 + 136), *(v0 + 120), &qword_27DD604A8, &qword_231608F20);
  OUTLINED_FUNCTION_40();
  if (v1)
  {
    OUTLINED_FUNCTION_18_1();
    sub_2315B2F7C(v2, v3, v4);
    v5 = OUTLINED_FUNCTION_36();
    sub_2315B2F7C(v5, v6, &qword_231608F20);
  }

  else
  {
    *(v0 + 16) = *(v0 + 104);
    v7 = *(v0 + 136);
    v8 = *(v0 + 88);
    *(v0 + 24) = *(v0 + 112);
    sub_2315B2D08(v8, v0 + 32);
    *(v0 + 80) = 0;

    sub_2315D9BE0(v0 + 16);
    sub_2315B2F7C(v0 + 16, &qword_27DD604B0, &qword_231608F58);
    sub_2315B2F7C(v7, &qword_27DD604A8, &qword_231608F20);
    OUTLINED_FUNCTION_23();
    v9 = OUTLINED_FUNCTION_72();
    v10(v9);
  }

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_96();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_2315D9BE0(uint64_t a1)
{
  sub_2315DC458(a1, &v2, &qword_27DD604B0, &qword_231608F58);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60450, qword_231608DE8);
    return sub_2316068B8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60450, qword_231608DE8);
    return sub_2316068C8();
  }
}

uint64_t sub_2315D9C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  sub_2315DC458(a1, v17 - v8, &qword_27DD60398, &qword_231609BD0);
  v10 = sub_2316068E8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2315B2F7C(v9, &qword_27DD60398, &qword_231609BD0);
  }

  else
  {
    sub_2316068D8();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = sub_2316068A8();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60488, &qword_231608EC8);
  v15 = (v13 | v11);
  if (v13 | v11)
  {
    v18[0] = 0;
    v18[1] = 0;
    v15 = v18;
    v18[2] = v11;
    v18[3] = v13;
  }

  v17[1] = 1;
  v17[2] = v15;
  v17[3] = v14;
  swift_task_create();
}

uint64_t sub_2315D9E58(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_2315D9E7C, v2, 0);
}

uint64_t sub_2315D9E7C()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtCC22SiriSuggestionsSupport28StateStoreInteractionBuilder19ContinuationCapture_continuation;
  swift_beginAccess();
  sub_2315DC458(v2 + v4, v3, &qword_27DD604A8, &qword_231608F20);
  swift_beginAccess();
  sub_2315DC5AC(v1, v2 + v4);
  swift_endAccess();
  OUTLINED_FUNCTION_14();

  return v5();
}

uint64_t sub_2315D9F3C()
{
  sub_2315B2F7C(v0 + OBJC_IVAR____TtCC22SiriSuggestionsSupport28StateStoreInteractionBuilder19ContinuationCapture_continuation, &qword_27DD604A8, &qword_231608F20);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_2315D9F9C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 21);
  return v0;
}

uint64_t sub_2315D9FE4()
{
  sub_2315D9F9C();

  return MEMORY[0x2821FE8D8](v0, 208, 7);
}

uint64_t sub_2315DA018()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2315B4660;

  return sub_2315D40F0();
}

void sub_2315DA0CC()
{
  OUTLINED_FUNCTION_71();
  if (v3)
  {
    OUTLINED_FUNCTION_34();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_70();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_33_0();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_2315E70B8(v7, v4);
  v9 = *(sub_231605DD8() - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_2315DA87C(v0 + v10, v7, v8 + v10, MEMORY[0x277D606E0]);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2315DA1B4()
{
  OUTLINED_FUNCTION_71();
  if (v3)
  {
    OUTLINED_FUNCTION_34();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_70();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_33_0();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60538, &unk_2316095A0);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_82();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_2315DA290()
{
  OUTLINED_FUNCTION_71();
  if (v4)
  {
    OUTLINED_FUNCTION_34();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_70();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_33_0();
    }
  }

  OUTLINED_FUNCTION_66();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60558, &qword_231609018);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 32);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[4 * v2 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_53();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60560, &unk_231609020);
    OUTLINED_FUNCTION_53();
    swift_arrayInitWithCopy();
  }
}

void sub_2315DA398()
{
  OUTLINED_FUNCTION_71();
  if (v4)
  {
    OUTLINED_FUNCTION_34();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_70();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_33_0();
    }
  }

  OUTLINED_FUNCTION_66();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60588, &qword_231609048);
    v7 = swift_allocObject();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_82();
    *(v7 + 2) = v2;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_2315DA474(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60428, &qword_231608B10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[8 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60488, &qword_231608EC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2315DA5A4()
{
  OUTLINED_FUNCTION_71();
  if (v4)
  {
    OUTLINED_FUNCTION_34();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_70();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_33_0();
    }
  }

  OUTLINED_FUNCTION_66();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60548, &qword_2316098E0);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 40);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[5 * v2 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_53();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60420, &qword_2316096F0);
    OUTLINED_FUNCTION_53();
    swift_arrayInitWithCopy();
  }
}

char *sub_2315DA728(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_37(a3, result);
  }

  return result;
}

char *sub_2315DA760(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_37(a3, result);
  }

  return result;
}

void sub_2315DA79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_81();
  if (v10 && (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_5_1(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_21_1();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_21_1();

    swift_arrayInitWithTakeFrontToBack();
  }
}

void sub_2315DA87C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_81();
  if (v8 && (a4(0), OUTLINED_FUNCTION_5_1(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_21_1();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_21_1();

    swift_arrayInitWithTakeFrontToBack();
  }
}

void *sub_2315DA930(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2315DA954@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_2315DA988()
{
  result = qword_27DD60438;
  if (!qword_27DD60438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60438);
  }

  return result;
}

unint64_t sub_2315DA9E0()
{
  result = qword_27DD60440;
  if (!qword_27DD60440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60440);
  }

  return result;
}

unint64_t sub_2315DAA38()
{
  result = qword_27DD60448;
  if (!qword_27DD60448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60448);
  }

  return result;
}

uint64_t dispatch thunk of InteractionBuilder.build(requestId:)()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v14 = (*(v1 + 8) + **(v1 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_2315B4660;

  return v14(v10, v8, v6, v4, v2);
}

uint64_t sub_2315DAC40(uint64_t a1)
{
  result = sub_2316061C8();
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

uint64_t getEnumTagSinglePayload for CatPropertyKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CatPropertyKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_2315DAEC4(uint64_t a1)
{
  sub_2315DAF60(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2315DAF60(uint64_t a1)
{
  if (!qword_280FE85C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD60450, qword_231608DE8);
    v1 = sub_2316069A8();
    if (!v2)
    {
      atomic_store(v1, &qword_280FE85C0);
    }
  }
}

uint64_t sub_2315DAFC4()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_2315B4740;

  return sub_2315D710C(v5, v3, v0);
}

uint64_t sub_2315DB068()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_88();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2315B4740;
  OUTLINED_FUNCTION_42();

  return sub_2315D7FA8(v6, v7, v8, v9, v2, v3);
}

uint64_t sub_2315DB118(uint64_t a1)
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_88();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v1 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_2315B4740;
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_96();

  return sub_2315D8C24(v4, v5, v6, v7, v8);
}

uint64_t sub_2315DB1C4()
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_49();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60450, qword_231608DE8);
  OUTLINED_FUNCTION_4(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_2315B4660;
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_58();

  return sub_2315D90D8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2315DB2F4()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_88();
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_2_2(v4);

  return sub_2315D9800(v5, v6, v2, v3);
}

uint64_t objectdestroy_63Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2315DB3D0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_88();
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_2_2(v4);

  return sub_2315D249C(v5, v6, v2, v3);
}

uint64_t sub_2315DB46C()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_48();

  return v5(v2);
}

void sub_2315DB554(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_28();
  v6 = sub_231606158();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60580, &qword_231609040);
  v14 = sub_231606B28();
  v15 = v14;
  if (!*(v13 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v15;
    OUTLINED_FUNCTION_69();
    return;
  }

  v45 = v12;
  v39 = v2;
  v16 = 0;
  v17 = (v13 + 64);
  v18 = 1 << *(v13 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(v13 + 64);
  v21 = (v18 + 63) >> 6;
  v40 = v13;
  v41 = v8;
  v42 = (v8 + 32);
  v22 = v14 + 64;
  if (!v20)
  {
LABEL_7:
    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v16 >= v21)
      {
        break;
      }

      v25 = v17[v16];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v20 = (v25 - 1) & v25;
        goto LABEL_12;
      }
    }

    if ((v5 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_32;
    }

    v38 = 1 << *(v13 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      sub_2315DC1C0(0, (v38 + 63) >> 6, v17);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
LABEL_12:
    v26 = v23 | (v16 << 6);
    v44 = *(v41 + 72);
    v27 = OUTLINED_FUNCTION_86();
    v28(v27);
    v43 = *(*(v13 + 56) + 8 * v26);
    if ((v5 & 1) == 0)
    {
    }

    sub_2315DC670(&qword_280FE95D8, MEMORY[0x277D60BA8], MEMORY[0x277D60BB8]);
    v29 = sub_231606758();
    v30 = -1 << *(v15 + 32);
    v31 = v29 & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
    {
      break;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v22 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    (*v42)(*(v15 + 48) + v44 * v33, v45, v6);
    *(*(v15 + 56) + 8 * v33) = v43;
    ++*(v15 + 16);
    v13 = v40;
    if (!v20)
    {
      goto LABEL_7;
    }
  }

  v34 = 0;
  v35 = (63 - v30) >> 6;
  while (++v32 != v35 || (v34 & 1) == 0)
  {
    v36 = v32 == v35;
    if (v32 == v35)
    {
      v32 = 0;
    }

    v34 |= v36;
    v37 = *(v22 + 8 * v32);
    if (v37 != -1)
    {
      v33 = __clz(__rbit64(~v37)) + (v32 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_2315DB8EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604E0, &unk_231609B40);
  v33 = v4;
  result = sub_231606B28();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
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
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_2315DC1C0(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 48 * v18);
    if (v33)
    {
      sub_2315CAB60(v22, v34);
    }

    else
    {
      sub_2315B2D08(v22, v34);
    }

    sub_231606C68();
    sub_2316067E8();
    result = sub_231606C88();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_2315CAB60(v34, (*(v7 + 56) + 48 * v26));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_2315DBBAC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v25 = v5;
  v7 = v6;
  v8 = sub_231605888();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  sub_2315CCFD4();
  OUTLINED_FUNCTION_44();
  if (v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60200, &qword_231607AB0);
  if ((sub_231606AC8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v20 = sub_2315CCFD4();
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_11:
    sub_231606C08();
    __break(1u);
    return;
  }

  v18 = v20;
LABEL_5:
  v22 = *v2;
  if (v19)
  {
    v23 = (v22[7] + 16 * v18);
    *v23 = v7;
    v23[1] = v25;
    OUTLINED_FUNCTION_69();
  }

  else
  {
    (*(v10 + 16))(v14, v4, v8);
    sub_2315DBFE4(v18, v14, v7, v25, v22);
    OUTLINED_FUNCTION_69();
  }
}

__n128 *sub_2315DBD48(__n128 *a1, uint64_t a2, uint64_t a3)
{
  sub_2315CD0A0(a2, a3);
  OUTLINED_FUNCTION_44();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601C0, &qword_231608FD0);
  if ((OUTLINED_FUNCTION_91(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = OUTLINED_FUNCTION_83();
  v15 = sub_2315CD0A0(v13, v14);
  if ((v11 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_231606C08();
    __break(1u);
    return result;
  }

  v10 = v15;
LABEL_5:
  v17 = *v3;
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v17[7] + 32 * v10));
    v18 = OUTLINED_FUNCTION_85();

    return sub_2315B55D4(v18, v19);
  }

  else
  {
    sub_2315DC09C(v10, a2, a3, a1, v17);
  }
}

void sub_2315DBE6C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v6 = v5;
  v7 = sub_2316061C8();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  sub_2315CD118();
  OUTLINED_FUNCTION_44();
  if (v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v14;
  v18 = v15;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60570, &qword_231609030);
  if ((OUTLINED_FUNCTION_91(v19) & 1) == 0)
  {
    goto LABEL_5;
  }

  v20 = sub_2315CD118();
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_11:
    sub_231606C08();
    __break(1u);
    return;
  }

  v17 = v20;
LABEL_5:
  v22 = *v2;
  if (v18)
  {
    *(v22[7] + 8 * v17) = v6;
    OUTLINED_FUNCTION_69();
  }

  else
  {
    (*(v9 + 16))(v13, v4, v7);
    sub_2315DC108(v17, v13, v6, v22);
    OUTLINED_FUNCTION_69();
  }
}

uint64_t sub_2315DBFE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  sub_231605888();
  OUTLINED_FUNCTION_5_1();
  result = (*(v11 + 32))(v10 + *(v11 + 72) * a1, a2);
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

__n128 *sub_2315DC09C(unint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2315B55D4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2315DC108(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2316061C8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2315DC1C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_231608AD0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2315DC224(uint64_t a1, char a2, uint64_t *a3)
{
  v31 = a3;
  v26 = *(a1 + 16);
  if (!v26)
  {
  }

  v5 = 0;
  v6 = a1 + 32;
  while (v5 < *(a1 + 16))
  {
    sub_2315DC458(v6, v29, &qword_27DD60488, &qword_231608EC8);
    v8 = v29[0];
    v7 = v29[1];
    sub_2315CAB60(v30, v28);
    v9 = *v31;
    v11 = sub_2315CD0A0(v8, v7);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a2)
      {
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604E8, &qword_231608FA0);
        sub_231606AD8();
        if (v15)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_2315DB8EC(v14, a2 & 1);
      v16 = sub_2315CD0A0(v8, v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_22;
      }

      v11 = v16;
      if (v15)
      {
LABEL_11:
        v18 = *v31;
        sub_2315B2D08(*(*v31 + 56) + 48 * v11, v27);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);

        v19 = (*(v18 + 56) + 48 * v11);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        sub_2315CAB60(v27, v19);
        goto LABEL_15;
      }
    }

    v20 = *v31;
    v20[(v11 >> 6) + 8] |= 1 << v11;
    v21 = (v20[6] + 16 * v11);
    *v21 = v8;
    v21[1] = v7;
    sub_2315CAB60(v28, (v20[7] + 48 * v11));
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_21;
    }

    v20[2] = v24;
LABEL_15:
    ++v5;
    v6 += 64;
    a2 = 1;
    if (v26 == v5)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_231606C08();
  __break(1u);
  return result;
}

uint64_t sub_2315DC458(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5_1();
  v5 = OUTLINED_FUNCTION_85();
  v6(v5);
  return a2;
}

unint64_t sub_2315DC4B4()
{
  result = qword_27DD60508;
  if (!qword_27DD60508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60508);
  }

  return result;
}

unint64_t sub_2315DC508()
{
  result = qword_280FE85B0;
  if (!qword_280FE85B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FE85B0);
  }

  return result;
}

uint64_t sub_2315DC54C(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_23();
  (*v3)(a2);
  return a2;
}

uint64_t sub_2315DC5AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604A8, &qword_231608F20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_2315DC61C()
{
  result = qword_27DD60568;
  if (!qword_27DD60568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60568);
  }

  return result;
}

uint64_t sub_2315DC670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for StateStoreInteractionBuilder.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2315DC798()
{
  result = qword_27DD60590;
  if (!qword_27DD60590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD60590);
  }

  return result;
}

double OUTLINED_FUNCTION_46()
{
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  return result;
}

BOOL OUTLINED_FUNCTION_51(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_64()
{

  return swift_getObjectType();
}

__n128 *OUTLINED_FUNCTION_74(__n128 a1, __n128 a2, uint64_t a3, __n128 *a4)
{
  *a4 = a1;
  a4[1] = a2;
  return a4;
}

uint64_t OUTLINED_FUNCTION_75()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_77(uint64_t a1)
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_89()
{
  *(v0 + 136) = 0;
  result = 0.0;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_91(uint64_t a1)
{

  return sub_231606AC8();
}

uint64_t OUTLINED_FUNCTION_95()
{

  return sub_2315B300C(v1, v0);
}

uint64_t sub_2315DCB10(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_2315CCFD4();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_1(v3);
  return v2;
}

double sub_2315DCB58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2315CD0A0(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_2315B2BB4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_2315DCBBC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_2315CD118();
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

double sub_2315DCC0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2315CD0A0(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 48 * v6;

    sub_2315B2D08(v8, a4);
  }

  else
  {
    result = 0.0;
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
  }

  return result;
}

uint64_t sub_2315DCC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2315CD0A0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_1(v4);
  return v3;
}

uint64_t sub_2315DCCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2315CD0A0(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void DirectInvocationUserDataKey.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_2_5();
      break;
    default:
      return;
  }
}

SiriSuggestionsSupport::DirectInvocationAction_optional __swiftcall DirectInvocationAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231606B48();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void DirectInvocationAction.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
      return;
    default:
      OUTLINED_FUNCTION_2_5();
      break;
  }
}

SiriSuggestionsSupport::DirectInvocationUserDataKey_optional __swiftcall DirectInvocationUserDataKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231606B48();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_2315DCF58(void *a1@<X8>)
{
  DirectInvocationUserDataKey.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

void sub_2315DCFB0(void *a1@<X8>)
{
  DirectInvocationAction.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

id static DirectInvocationFactory.createExecute(suggestion:)(uint64_t a1)
{
  sub_231605DB8();
  v1 = v20;
  sub_2315C3400(&v18);
  if (v1)
  {
    sub_231604F78();
    swift_allocObject();
    sub_231604F68();
    sub_231605DD8();
    sub_2315DDB8C(&qword_27DD60598, MEMORY[0x277D606E0], MEMORY[0x277D606E8]);
    v2 = sub_231604F58();
    v4 = v3;
    sub_2315B2F24(v2, v3);
    v5 = sub_231605028();
    v7 = v6;
    sub_2315B300C(v2, v4);

    sub_2315B300C(v2, v4);
    sub_2315DDAC8();
    v8 = sub_2315DD304(0xD00000000000002FLL, 0x800000023160A920);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD605A8, &unk_231609108);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_1_5(inited, xmmword_2316084E0);
    v18 = v10;
    v19 = v11;
    v12 = MEMORY[0x277D837D0];
    sub_231606A08();
    inited[6].n128_u64[0] = v12;
    OUTLINED_FUNCTION_6_3();
    inited[4].n128_u64[1] = 0xD000000000000011;
    inited[5].n128_u64[0] = v13;
    v18 = 0x6974736567677573;
    v19 = 0xEA00000000006E6FLL;
    sub_231606A08();
    inited[10].n128_u64[1] = v12;
    inited[9].n128_u64[0] = v5;
    inited[9].n128_u64[1] = v7;
    v14 = sub_231606728();
    sub_2315DDB0C(v14, v8);
    v15 = objc_opt_self();
    v16 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
    v1 = [v15 runSiriKitExecutorCommandWithContext:v16 payload:v8];
  }

  return v1;
}

id sub_2315DD304(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_231606788();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

id static DirectInvocationFactory.createShowMore(suggestions:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60268, &qword_231608230);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v38 - v2;
  v4 = sub_231606128();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231605C58();
  OUTLINED_FUNCTION_1_0();
  v40 = v10;
  MEMORY[0x28223BE20](v11);
  (*(v6 + 104))(v9, *MEMORY[0x277D60AE0], v4);
  v12 = sub_231605098();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v12);
  sub_231605C18();
  sub_231604F78();
  swift_allocObject();
  sub_231604F68();
  sub_2315DDB8C(&qword_27DD605B0, MEMORY[0x277D60680], MEMORY[0x277D60688]);
  v13 = sub_231604F58();
  v15 = v14;
  sub_2315B2F24(v13, v14);
  v39 = sub_231605028();
  v17 = v16;
  sub_2315B300C(v13, v15);

  sub_2315B300C(v13, v15);
  swift_allocObject();
  sub_231604F68();
  sub_231605E98();
  sub_2315DDB8C(&qword_280FE9610, MEMORY[0x277D60708], MEMORY[0x277D60710]);
  v19 = sub_231604F58();
  v21 = v20;
  sub_2315B2F24(v19, v20);
  v38 = sub_231605028();
  v23 = v22;
  sub_2315B300C(v19, v21);

  sub_2315B300C(v19, v21);
  sub_2315DDAC8();
  v24 = sub_2315DD304(0xD00000000000002FLL, 0x800000023160A920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD605A8, &unk_231609108);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_5(inited, xmmword_2316089F0);
  v41 = v26;
  v42 = v27;
  v28 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_6_3();
  inited[6].n128_u64[0] = v28;
  inited[4].n128_u64[1] = 0xD000000000000013;
  inited[5].n128_u64[0] = v29;
  OUTLINED_FUNCTION_6_3();
  v41 = 0xD000000000000013;
  v42 = v30;
  OUTLINED_FUNCTION_3_4();
  inited[10].n128_u64[1] = v28;
  inited[9].n128_u64[0] = v39;
  inited[9].n128_u64[1] = v17;
  OUTLINED_FUNCTION_6_3();
  v41 = 0xD000000000000016;
  v42 = v31;
  OUTLINED_FUNCTION_3_4();
  inited[15].n128_u64[0] = v28;
  inited[13].n128_u64[1] = v38;
  inited[14].n128_u64[0] = v23;
  v32 = sub_231606728();
  sub_2315DDB0C(v32, v24);
  v33 = objc_opt_self();
  v34 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  v35 = [v33 runSiriKitExecutorCommandWithContext:v34 payload:v24];

  v36 = OUTLINED_FUNCTION_5_6();
  v37(v36);
  return v35;
}

uint64_t Parse.DirectInvocation.getUserData(for:)@<X0>(unsigned __int8 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  result = sub_2316052F8();
  if (result)
  {
    v5 = result;
    v6 = 0xE600000000000000;
    v7 = 0x6E6F69746361;
    switch(v3)
    {
      case 1:
        v7 = 0xD000000000000013;
        v6 = 0x800000023160A0B0;
        break;
      case 2:
        v6 = 0x800000023160A0D0;
        v7 = 0xD000000000000016;
        break;
      case 3:
        v6 = 0xEE00657079546E6FLL;
        v8 = 0x61636F766E69;
        goto LABEL_9;
      case 4:
        v6 = 0xEF6449747865746ELL;
        v7 = 0x6F43676F6C616964;
        break;
      case 5:
        v6 = 0xEA00000000006E6FLL;
        v8 = 0x736567677573;
LABEL_9:
        v7 = v8 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
        break;
      default:
        break;
    }

    sub_2315DCB58(v7, v6, v5, a2);
  }

  else
  {
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_2315DDAC8()
{
  result = qword_27DD605A0;
  if (!qword_27DD605A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD605A0);
  }

  return result;
}

void sub_2315DDB0C(uint64_t a1, void *a2)
{
  v3 = sub_231606708();

  [a2 setUserData_];
}

uint64_t sub_2315DDB8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2315DDBD8()
{
  result = qword_27DD605B8;
  if (!qword_27DD605B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD605B8);
  }

  return result;
}

unint64_t sub_2315DDC30()
{
  result = qword_27DD605C0;
  if (!qword_27DD605C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD605C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DirectInvocationUserDataKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DirectInvocationUserDataKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DirectInvocationAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DirectInvocationAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DirectInvocationFactory(_BYTE *result, int a2, int a3)
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

id SiriSuggestionsServiceDelegate.init(with:eventDrivenClient:autocompleteService:offlineGenerationClient:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC22SiriSuggestionsSupport30SiriSuggestionsServiceDelegate_client] = a1;
  sub_2315B4568(a2, &v4[OBJC_IVAR____TtC22SiriSuggestionsSupport30SiriSuggestionsServiceDelegate_eventDrivenClient]);
  sub_2315B4568(a3, &v4[OBJC_IVAR____TtC22SiriSuggestionsSupport30SiriSuggestionsServiceDelegate_autocompleteService]);
  sub_2315B4568(a4, &v4[OBJC_IVAR____TtC22SiriSuggestionsSupport30SiriSuggestionsServiceDelegate_offlineGenerationClient]);
  v10.receiver = v4;
  v10.super_class = type metadata accessor for SiriSuggestionsServiceDelegate();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

id SiriSuggestionsServiceDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriSuggestionsServiceDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSuggestionsServiceDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2315DE240@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2315DE2D0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = sub_2315E91C4(0, result, v2);
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = result;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = sub_2315F162C(0);

      return v5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2315DE364(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = sub_231606B08();

    return v10;
  }

  v4 = sub_2315E7094(a2);
  v5 = sub_2315E91C4(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_2315E9210(0, a2);
  sub_2315E9210(v7, a2);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    sub_2315E9290(0, &qword_27DD60738, 0x277D052C8);

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_231606A38();
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

void sub_2315DE4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_93();
  v82 = v21;
  v84 = v22;
  v24 = v23;
  v73 = v23;
  v76 = v25;
  v75 = v26;
  v79 = v27;
  v80 = v28;
  v85 = v29;
  v81 = a21;
  v30 = sub_231604FF8();
  v83 = *(v30 - 8);
  v31 = v83;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_4();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v70 - v36;
  v77 = sub_231606308();
  v78 = sub_2316062F8();
  sub_2315DEFAC();
  v38 = type metadata accessor for SiriHelpResponseFramework2Invoker(0);
  v39 = *(v31 + 16);
  v40 = OUTLINED_FUNCTION_59();
  v71 = v30;
  v39(v40);
  sub_2315DC54C(v24, v88);
  v41 = v85;
  v42 = OUTLINED_FUNCTION_36_0();
  v74 = sub_2315B9858(v42, v43, v44);
  v45 = OUTLINED_FUNCTION_59();
  v86 = v37;
  v39(v45);
  v72 = v39;
  sub_2315DC54C(v79, v88);
  v46 = type metadata accessor for SiriHelpResponseFramework1Invoker(0);
  swift_allocObject();
  v79 = v41;
  v47 = v75;
  v48 = v76;
  sub_2315E9460(v75, v76);
  v49 = OUTLINED_FUNCTION_36_0();
  v76 = SiriHelpResponseFramework1Invoker.init(templatesUrl:catGlobals:patternFlowProvider:patternExecutor:)(v49, v50, v51, v47, v48);
  v52 = OUTLINED_FUNCTION_59();
  v53 = v71;
  v39(v52);
  sub_2315DC54C(v73, v88);
  swift_allocObject();
  v54 = OUTLINED_FUNCTION_36_0();
  v57 = sub_2315B9780(v54, v55, v56, 1);
  v58 = type metadata accessor for SiriHelpResponseVersionInvoker();
  v59 = swift_allocObject();
  v60 = MEMORY[0x277D60FF0];
  v62 = v77;
  v61 = v78;
  v59[5] = v77;
  v59[6] = v60;
  v59[2] = v61;
  v59[10] = v46;
  v59[11] = &off_2846234B0;
  v59[7] = v76;
  v59[15] = v38;
  v59[16] = &off_2846234C0;
  v59[12] = v74;
  v59[20] = v38;
  v59[21] = &off_2846234C0;
  v59[17] = v57;
  sub_2315DC54C(v80, v88);
  v63 = v72;
  (v72)(v34, v86, v53);
  sub_2315DC54C(v81, v87);
  v64 = swift_allocObject();
  v65 = (v64 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_responseFrameworkInvoker);
  v65[3] = v58;
  v65[4] = &off_2846234D0;
  *v65 = v59;
  v66 = (v64 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_featureFlagProvider);
  v66[3] = v62;
  v66[4] = MEMORY[0x277D60FF0];
  *v66 = v61;
  *(v64 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_staticSuggestionsCount) = 3;
  *(v64 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_catGlobals) = v85;
  sub_2315DC54C(v88, v64 + 16);
  *(v64 + 56) = v84;
  v63(v64 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_templatesUrl, v34, v53);
  sub_2315DC54C(v87, v64 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_appUtils);
  sub_2316059F8();
  v67 = v79;

  v68 = sub_2316059E8();
  __swift_destroy_boxed_opaque_existential_1Tm_0(v87);
  v69 = *(v83 + 8);
  v69(v34, v53);
  __swift_destroy_boxed_opaque_existential_1Tm_0(v88);
  v69(v86, v53);
  *(v64 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_siriFeatureSupportPolicyProvider) = v68;
  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315DE8E0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    OUTLINED_FUNCTION_23();
    (*(v7 + 16))(a3, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v6);
}

void *sub_2315DE988(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v32 = a5;
  v31 = sub_231605868();
  v34 = *(v31 - 8);
  result = MEMORY[0x28223BE20](v31);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a3;
  v33 = a4 >> 1;
  v12 = __OFSUB__(a4 >> 1, a3);
  v13 = (a4 >> 1) - a3;
  if (v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  v36 = MEMORY[0x277D84F90];
  result = sub_231604060(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v26 = v5;
    v14 = v36;
    result = objc_opt_self();
    v15 = 0;
    v28 = v34 + 32;
    v29 = result;
    v27 = a2 + 8 * v35;
    v30 = v13;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ((v35 + v15) >= v33 || v15 >= v13)
      {
        goto LABEL_17;
      }

      v18 = *(v27 + 8 * v15);
      v19 = [v18 fullPrint];
      sub_231606798();

      sub_2316057D8();
      v20 = [v18 fullPrint];
      if (!v20)
      {
        sub_231606798();
        v20 = sub_231606788();
      }

      v21 = sub_231606788();

      v22 = [v29 quote:v20 forLocale:v21];

      sub_231606798();
      sub_231605838();
      v23 = [v18 dialogId];
      sub_231606798();

      sub_2316057E8();
      v36 = v14;
      v25 = *(v14 + 16);
      v24 = *(v14 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_231604060((v24 > 1), v25 + 1, 1);
        v14 = v36;
      }

      *(v14 + 16) = v25 + 1;
      result = (*(v34 + 32))(v14 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v25, v11, v31);
      ++v15;
      v13 = v30;
      if (v16 == v30)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_2315DECBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = sub_231605868();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v24 = MEMORY[0x277D84F90];
  sub_231604060(0, v12, 0);
  v13 = v24;
  v14 = sub_231605DD8();
  OUTLINED_FUNCTION_4(v14);
  v16 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = *(v17 + 72);
  while (1)
  {
    sub_2315E3BF4(v16, a2);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v20 = *(v24 + 16);
    v19 = *(v24 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_231604060((v19 > 1), v20 + 1, 1);
    }

    *(v24 + 16) = v20 + 1;
    (*(v7 + 32))(v24 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, v11, v22);
    v16 += v18;
    if (!--v12)
    {
      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2315DEE98(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  result = sub_2315E7094(a3);
  v7 = result;
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x231932F00](i, a3);
      v9 = result;
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v9 = *(a3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = v9;
    v10 = a1(&v11);
    if (v3)
    {

      return v9;
    }

    if (v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_2315DEFAC()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v3 = sub_231604FF8();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_4();
  v9 = v7 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  sub_231604FD8();
  sub_231604F98();

  v35 = v5;
  v17 = *(v5 + 16);
  v17(v0, v16, v3);
  sub_231604FC8();
  sub_2315E9290(0, &qword_27DD60758, 0x277CCA8D8);
  v37 = v0;
  v17(v13, v0, v3);
  v18 = sub_2315DF394(v13);
  v19 = objc_opt_self();
  v36 = v18;
  v20 = [v19 bundleTemplateDir_];
  if (v20)
  {
    v21 = v20;
    sub_231606798();
    v13 = v2;

    v22 = v2;
    sub_231604FA8();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v22 = v2;
    v17(v2, v16, v3);
  }

  if (qword_280FE9550 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280FE9550);
  }

  v23 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v23, qword_280FE9558);
  v17(v9, v22, v3);
  v24 = sub_2316066C8();
  v25 = sub_231606958();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v9;
    v27 = OUTLINED_FUNCTION_60();
    v28 = OUTLINED_FUNCTION_63();
    v38 = v28;
    *v27 = 136315138;
    sub_2315E9418(&qword_27DD601D8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    sub_231606BC8();
    OUTLINED_FUNCTION_64_0();
    v34 = v16;
    v29 = *(v35 + 8);
    v29(v26, v3);
    v30 = sub_2315B1574(v26, v13, &v38);

    *(v27 + 4) = v30;
    _os_log_impl(&dword_2315AF000, v24, v25, "Creating platform safe URL: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_0(v28);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20();

    v29(v37, v3);
    v29(v34, v3);
  }

  else
  {

    v31 = *(v35 + 8);
    v31(v9, v3);
    v31(v37, v3);
    v32 = OUTLINED_FUNCTION_41();
    (v31)(v32);
  }

  OUTLINED_FUNCTION_69();
}

id sub_2315DF394(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_231604FB8();
  v4 = [v2 initWithURL_];

  v5 = sub_231604FF8();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_2315DF430()
{
  OUTLINED_FUNCTION_15();
  v1[121] = v0;
  v1[120] = v2;
  v1[119] = v3;
  v1[122] = *v0;
  v4 = sub_231605E98();
  v1[123] = v4;
  OUTLINED_FUNCTION_4(v4);
  v1[124] = v5;
  v1[125] = *(v6 + 64);
  v1[126] = OUTLINED_FUNCTION_23_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60398, &qword_231609BD0);
  OUTLINED_FUNCTION_24(v7);
  v1[127] = OUTLINED_FUNCTION_23_0();
  v8 = sub_2316052D8();
  v1[128] = v8;
  OUTLINED_FUNCTION_4(v8);
  v1[129] = v9;
  v1[130] = OUTLINED_FUNCTION_23_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD601C8, &qword_231607A90);
  OUTLINED_FUNCTION_24(v10);
  v1[131] = OUTLINED_FUNCTION_23_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60710, &qword_231609508);
  OUTLINED_FUNCTION_24(v11);
  v1[132] = OUTLINED_FUNCTION_52();
  v1[133] = swift_task_alloc();
  v12 = sub_231605EF8();
  v1[134] = v12;
  OUTLINED_FUNCTION_4(v12);
  v1[135] = v13;
  v1[136] = OUTLINED_FUNCTION_23_0();
  v14 = sub_231605F08();
  v1[137] = v14;
  OUTLINED_FUNCTION_4(v14);
  v1[138] = v15;
  v1[139] = OUTLINED_FUNCTION_52();
  v1[140] = swift_task_alloc();
  v16 = sub_231605F28();
  v1[141] = v16;
  OUTLINED_FUNCTION_4(v16);
  v1[142] = v17;
  v1[143] = OUTLINED_FUNCTION_23_0();
  v18 = sub_231605DD8();
  v1[144] = v18;
  OUTLINED_FUNCTION_4(v18);
  v1[145] = v19;
  v1[146] = OUTLINED_FUNCTION_52();
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v1[150] = swift_task_alloc();
  v1[151] = swift_task_alloc();
  v1[152] = swift_task_alloc();
  v20 = sub_2316056F8();
  v1[153] = v20;
  OUTLINED_FUNCTION_4(v20);
  v1[154] = v21;
  v1[155] = OUTLINED_FUNCTION_23_0();
  v22 = sub_231604FF8();
  v1[156] = v22;
  OUTLINED_FUNCTION_4(v22);
  v1[157] = v23;
  v1[158] = OUTLINED_FUNCTION_52();
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();
  v24 = sub_2316059C8();
  v1[161] = v24;
  OUTLINED_FUNCTION_4(v24);
  v1[162] = v25;
  v1[163] = OUTLINED_FUNCTION_52();
  v1[164] = swift_task_alloc();
  v26 = swift_task_alloc();
  v1[165] = v26;
  *v26 = v1;
  v26[1] = sub_2315DF8BC;
  v27 = OUTLINED_FUNCTION_41();

  return sub_2315E236C(v27, v28);
}

uint64_t sub_2315DF8BC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  *v2 = v1;
  v1[67] = v0;
  v1[68] = v3;
  v1[69] = v4;
  v1[70] = v5;
  v1[71] = v6;
  *v2 = *v0;
  v1[166] = v3;
  v1[167] = v4;
  v1[168] = v6;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315DF9C8()
{
  v1 = *(v0 + 968);

  sub_2316059B8();
  v2 = *(v1 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_catGlobals);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_catGlobals);
  }

  else
  {
    sub_231605668();
    v3 = sub_231605658();
    v2 = 0;
  }

  *(v0 + 1352) = v3;
  *(v0 + 920) = 0;
  *(v0 + 928) = 0xE000000000000000;
  v4 = v2;
  v5 = sub_231605618();
  sub_2315DCB58(0x656C61636F6CLL, 0xE600000000000000, v5, (v0 + 576));

  p_superclass = _TtC22SiriSuggestionsSupport10Connection.superclass;
  v152 = v0;
  if (*(v0 + 600))
  {
    if (swift_dynamicCast())
    {
      v7 = *(v0 + 944);
      *(v0 + 920) = *(v0 + 936);
      *(v0 + 928) = v7;
      goto LABEL_12;
    }
  }

  else
  {
    sub_2315B2F7C(v0 + 576, &unk_27DD605F0, qword_231609310);
  }

  if (qword_280FE9550 != -1)
  {
LABEL_81:
    OUTLINED_FUNCTION_0(&qword_280FE9550);
  }

  v8 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v8, qword_280FE9558);
  v9 = v3;
  v10 = sub_2316066C8();
  v11 = sub_231606978();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = p_superclass;
    v13 = OUTLINED_FUNCTION_60();
    v153 = OUTLINED_FUNCTION_63();
    *v13 = 136315138;
    sub_231605618();
    sub_231606718();

    v14 = OUTLINED_FUNCTION_13_2();
    v17 = sub_2315B1574(v14, v15, v16);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2315AF000, v10, v11, "Missing locale in %s, setting to empty", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_0(v153);
    OUTLINED_FUNCTION_20();
    p_superclass = v12;
    v0 = v152;
    OUTLINED_FUNCTION_20();
  }

  v7 = 0xE000000000000000;
LABEL_12:
  *(v0 + 1360) = v7;
  v18 = *(v0 + 1328);
  v19 = *(v18 + 16);
  if (!v19)
  {

    if (*(p_superclass + 1360) == -1)
    {
LABEL_19:
      v28 = sub_2316066E8();
      OUTLINED_FUNCTION_47(v28, qword_280FE9558);
      v29 = sub_2316066C8();
      v30 = sub_231606958();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_33();
        *v31 = 0;
        _os_log_impl(&dword_2315AF000, v29, v30, "[warning] Not enough suggestions returned, falling back to static suggestions", v31, 2u);
        OUTLINED_FUNCTION_20();
      }

      sub_2316056B8();
      sub_2315DEFAC();
      *(v0 + 1368) = sub_231606728();
      *(v0 + 496) = 0u;
      *(v0 + 512) = 0u;
      *(v0 + 528) = 0;
      sub_2316056E8();
      v32 = swift_task_alloc();
      *(v0 + 1376) = v32;
      *v32 = v0;
      v32[1] = sub_2315E0968;
      OUTLINED_FUNCTION_68();

      return MEMORY[0x2821B7E50](v33);
    }

LABEL_83:
    OUTLINED_FUNCTION_0(&qword_280FE9550);
    goto LABEL_19;
  }

  sub_231605E48();
  sub_2315E30B0();
  v21 = v20;
  p_superclass = v22;
  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 56));
  sub_231605E48();
  sub_2315E30B0();
  v24 = v23;
  v26 = v25;
  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 96));
  v27 = v21 == v24 && p_superclass == v26;
  v148 = v21;
  v132 = v26;
  v133 = v24;
  if (v27)
  {
    v144 = 1;
  }

  else
  {
    v144 = sub_231606BD8();
  }

  v35 = *(v0 + 1160);
  v137 = sub_231605C28();
  sub_231605E48();
  sub_2315E345C(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 136));
  v3 = 0;
  v151 = (v35 + 8);
  v149 = v35;
  v136 = (v35 + 32);
  v138 = MEMORY[0x277D84F90];
  v135 = p_superclass;
  while (v19 != v3)
  {
    if (v3 >= *(v18 + 16))
    {
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v36 = *(v0 + 1216);
    OUTLINED_FUNCTION_43();
    v39 = v38 & ~v37;
    v41 = *(v40 + 72);
    (*(v40 + 16))(v36, v42 + v39 + v41 * v3);
    v43 = sub_2315E35A0(v36, v148, p_superclass);
    v44 = *(v0 + 1216);
    if (v43)
    {
      v47 = *v136;
      (*v136)(*(v0 + 1208), v44, *(v0 + 1152));
      v48 = v138;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_15_2();
        v48 = v138;
      }

      v50 = *(v48 + 16);
      v49 = *(v48 + 24);
      if (v50 >= v49 >> 1)
      {
        v53 = OUTLINED_FUNCTION_12_3(v49);
        OUTLINED_FUNCTION_50(v53);
        v48 = v138;
      }

      ++v3;
      v0 = v152;
      v51 = *(v152 + 1208);
      v52 = *(v152 + 1152);
      *(v48 + 16) = v50 + 1;
      v138 = v48;
      v47(v48 + v39 + v50 * v41, v51, v52);
      p_superclass = v135;
    }

    else
    {
      v45 = OUTLINED_FUNCTION_16_2(v44);
      v46(v45);
      ++v3;
    }
  }

  v54 = *(v138 + 16);
  v3 = (v54 != 0) & v144;
  sub_2316058E8();
  if (qword_280FE9550 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280FE9550);
  }

  v55 = sub_2316066E8();
  OUTLINED_FUNCTION_47(v55, qword_280FE9558);
  v56 = sub_2316066C8();
  v57 = sub_231606968();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 67109120;
    swift_beginAccess();
    v59 = sub_2316058D8();
    swift_endAccess();
    *(v58 + 4) = v59 & 1;
    _os_log_impl(&dword_2315AF000, v56, v57, "Return fallback suggestions? %{BOOL}d", v58, 8u);
    OUTLINED_FUNCTION_20();
  }

  v60 = v148 == 0x6C7070612E6D6F63 && p_superclass == 0xEE00697269732E65;
  if (!v60 && (sub_231606BD8() & 1) == 0 && ((v54 != 0) & v144) == 0 && v54)
  {
    v3 = 0;
    v61 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v19 == v3)
      {

        v81 = v138;
        goto LABEL_57;
      }

      if (v3 >= *(v18 + 16))
      {
        break;
      }

      v62 = *(v0 + 1200);
      OUTLINED_FUNCTION_43();
      v65 = v64 & ~v63;
      p_superclass = *(v66 + 72);
      (*(v66 + 16))(v62, v67 + v65 + p_superclass * v3);
      v68 = sub_2315E3694();
      v69 = *(v0 + 1200);
      if (v68)
      {
        v72 = *(v0 + 1192);
        v73 = *(v0 + 1152);
        v74 = *v136;
        (*v136)(v72, v69, v73);
        v75 = v61;
        v145 = v74;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_15_2();
          v75 = v61;
        }

        v77 = *(v75 + 16);
        v76 = *(v75 + 24);
        if (v77 >= v76 >> 1)
        {
          v80 = OUTLINED_FUNCTION_12_3(v76);
          OUTLINED_FUNCTION_50(v80);
          v75 = v61;
        }

        ++v3;
        v0 = v152;
        v78 = *(v152 + 1192);
        v79 = *(v152 + 1152);
        *(v75 + 16) = v77 + 1;
        v61 = v75;
        v145(v75 + v65 + v77 * p_superclass, v78, v79);
      }

      else
      {
        v70 = OUTLINED_FUNCTION_16_2(v69);
        v71(v70);
        ++v3;
      }
    }

    __break(1u);
    goto LABEL_83;
  }

  v81 = *(v0 + 1328);
  v61 = MEMORY[0x277D84F90];
LABEL_57:
  v154 = v81;
  v139 = v81;

  v131 = v61;
  sub_2315E5ACC(v82);
  v83 = v154;
  if (v137)
  {
    v84 = 0;
    v85 = *(v0 + 1104);
    v146 = *(v154 + 16);
    v143 = (*(v0 + 1136) + 8);
    v142 = *MEMORY[0x277D60720];
    v140 = (v85 + 8);
    v141 = (v85 + 104);
    v134 = MEMORY[0x277D84F90];
    while (v146 != v84)
    {
      if (v84 >= *(v83 + 16))
      {
        goto LABEL_80;
      }

      v86 = *(v0 + 1144);
      v87 = *(v152 + 1128);
      v88 = *(v152 + 1120);
      v89 = *(v152 + 1112);
      v90 = *(v152 + 1096);
      v91 = (*(v149 + 80) + 32) & ~*(v149 + 80);
      v92 = *(v149 + 72);
      (*(v149 + 16))(*(v0 + 1184), v83 + v91 + v92 * v84, *(v0 + 1152));
      sub_231605DC8();
      sub_231605F18();
      v0 = v152;
      (*v143)(v86, v87);
      (*v141)(v89, v142, v90);
      OUTLINED_FUNCTION_2_7();
      sub_2315E9418(&qword_27DD60730, v93, MEMORY[0x277D60740]);
      v94 = sub_231606778();
      p_superclass = v140;
      v3 = *v140;
      v95 = OUTLINED_FUNCTION_58_0();
      (v3)(v95);
      (v3)(v88, v90);
      if (v94)
      {
        v96 = OUTLINED_FUNCTION_16_2(*(v152 + 1184));
        v97(v96);
        ++v84;
        v83 = v154;
      }

      else
      {
        v3 = *v136;
        (*v136)(*(v152 + 1176), *(v152 + 1184), *(v152 + 1152));
        v98 = v134;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_15_2();
          v98 = v134;
        }

        v99 = v84;
        p_superclass = *(v98 + 16);
        v100 = *(v98 + 24);
        if (p_superclass >= v100 >> 1)
        {
          v103 = OUTLINED_FUNCTION_12_3(v100);
          OUTLINED_FUNCTION_50(v103);
          v99 = v84;
          v98 = v134;
        }

        v84 = v99 + 1;
        v0 = v152;
        v101 = *(v152 + 1176);
        v102 = *(v152 + 1152);
        *(v98 + 16) = p_superclass + 1;
        v134 = v98;
        (v3)(v98 + v91 + p_superclass * v92, v101, v102);
        v83 = v154;
      }
    }

    v104 = v134;
  }

  else
  {
    v104 = v154;
  }

  OUTLINED_FUNCTION_27_1(*(v0 + 1312), v0 + 824);
  sub_231605898();
  swift_endAccess();
  v105 = *(v104 + 16);
  if (v105)
  {
    v155 = MEMORY[0x277D84F90];
    sub_2316040B8(0, v105, 0);
    v106 = v104 + ((*(v149 + 80) + 32) & ~*(v149 + 80));
    v147 = *(v149 + 72);
    v150 = *(v149 + 16);
    do
    {
      v107 = *(v152 + 1168);
      v108 = *(v152 + 1152);
      v109 = *(v152 + 1072);
      v150(v107, v106, v108);
      sub_231605D68();
      v110 = sub_231605EA8();
      v112 = v111;
      v113 = OUTLINED_FUNCTION_66_0();
      v114(v113, v109);
      (*v151)(v107, v108);
      v116 = *(v155 + 16);
      v115 = *(v155 + 24);
      if (v116 >= v115 >> 1)
      {
        v118 = OUTLINED_FUNCTION_12_3(v115);
        sub_2316040B8(v118, v116 + 1, 1);
      }

      *(v155 + 16) = v116 + 1;
      v117 = v155 + 16 * v116;
      *(v117 + 32) = v110;
      *(v117 + 40) = v112;
      v106 += v147;
      --v105;
    }

    while (v105);
  }

  v119 = *(v152 + 1312);
  v120 = *(v152 + 976);
  OUTLINED_FUNCTION_27_1(v119, v152 + 728);
  sub_2316058C8();
  swift_endAccess();
  sub_2315DECBC(v139, v152 + 920, v120);

  OUTLINED_FUNCTION_27_1(v119, v152 + 608);
  sub_231605918();
  swift_endAccess();
  sub_2315DECBC(v131, v152 + 920, v120);

  OUTLINED_FUNCTION_27_1(v119, v152 + 680);
  sub_2316058B8();
  sub_231605998();
  swift_endAccess();
  *(v152 + 1424) = v135;
  *(v152 + 1416) = v148;
  *(v152 + 1408) = v132;
  *(v152 + 1400) = v133;
  *(v152 + 1528) = v137 & 1;
  v121 = *(v152 + 1312);
  v122 = *(v152 + 968);
  v123 = OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_appUtils;
  *(v152 + 1432) = OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_appUtils;
  v124 = (v122 + v123);
  v125 = OUTLINED_FUNCTION_56();
  __swift_project_boxed_opaque_existential_1(v125, v126);
  OUTLINED_FUNCTION_46_0();
  sub_231606598();
  OUTLINED_FUNCTION_27_1(v121, v152 + 632);
  sub_231605978();
  swift_endAccess();
  OUTLINED_FUNCTION_51_0(v124, v124[3]);
  sub_2316065A8();
  OUTLINED_FUNCTION_51_0((v152 + 256), *(v152 + 280));
  v127 = swift_task_alloc();
  *(v152 + 1440) = v127;
  *v127 = v152;
  v127[1] = sub_2315E0EC4;
  OUTLINED_FUNCTION_68();

  return MEMORY[0x2821C6CC0](v128);
}

uint64_t sub_2315E0968()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v5 = v4;
  v2[173] = v6;
  v2[174] = v0;

  if (v0)
  {
    v19 = v2[160];
    v7 = v2[157];
    v8 = v2[156];

    v9 = OUTLINED_FUNCTION_13_2();
    v10(v9);
    sub_2315B2F7C((v2 + 62), &qword_27DD601D0, &qword_231607A98);
    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v11 = v2[160];
    v12 = v2[157];
    v13 = v2[156];
    v14 = v2[155];
    v15 = v2[154];
    v16 = v2[153];

    (*(v15 + 8))(v14, v16);
    sub_2315B2F7C((v2 + 62), &qword_27DD601D0, &qword_231607A98);
    (*(v12 + 8))(v11, v13);
  }

  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315E0B8C()
{
  v1 = [*(v0 + 1384) dialog];
  sub_2315E9290(0, &qword_27DD60738, 0x277D052C8);
  v2 = sub_231606858();

  v34 = sub_2315E8E84(v2);
  sub_2315E72BC();
  v3 = sub_2315DE364(3, v34);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_231605898();
  v32 = v9;
  v33 = v7;
  v11 = v9 >> 1;
  v12 = __OFSUB__(v11, v7);
  v13 = v11 - v7;
  if (v12)
  {
    goto LABEL_13;
  }

  v31 = v0;
  if (v13)
  {
    v35 = MEMORY[0x277D84F90];
    v10 = sub_2316040B8(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
LABEL_14:
      __break(1u);
      return MEMORY[0x2821C6CC0](v10);
    }

    v14 = v33;
    while (v14 < v11)
    {
      v15 = *(v5 + 8 * v14);
      v16 = [v15 fullSpeak];
      v17 = sub_231606798();
      v19 = v18;

      v21 = *(v35 + 16);
      v20 = *(v35 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = OUTLINED_FUNCTION_12_3(v20);
        v10 = sub_2316040B8(v23, v21 + 1, 1);
      }

      *(v35 + 16) = v21 + 1;
      v22 = v35 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      if (v11 == ++v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v24 = *(v0 + 1384);
  sub_2316058C8();
  sub_2315DE988(v3, v5, v33, v32, (v31 + 920));
  sub_231605918();
  sub_2316058B8();
  swift_unknownObjectRelease();

  *(v31 + 1431) = -18;
  strcpy((v31 + 1416), "com.apple.siri");
  *(v31 + 1415) = -18;
  strcpy((v31 + 1400), "com.apple.siri");
  *(v31 + 1528) = 1;
  v25 = *(v31 + 1312);
  v26 = *(v31 + 968);
  v27 = OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_appUtils;
  *(v31 + 1432) = OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_appUtils;
  v28 = (v26 + v27);
  __swift_project_boxed_opaque_existential_1((v26 + v27), *(v26 + v27 + 24));
  OUTLINED_FUNCTION_46_0();
  sub_231606598();
  OUTLINED_FUNCTION_27_1(v25, v31 + 632);
  sub_231605978();
  swift_endAccess();
  OUTLINED_FUNCTION_51_0(v28, v28[3]);
  OUTLINED_FUNCTION_41();
  sub_2316065A8();
  OUTLINED_FUNCTION_51_0((v31 + 256), *(v31 + 280));
  v29 = swift_task_alloc();
  *(v31 + 1440) = v29;
  *v29 = v31;
  v29[1] = sub_2315E0EC4;
  v10 = v31 + 216;

  return MEMORY[0x2821C6CC0](v10);
}

uint64_t sub_2315E0EC4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315E0FAC()
{
  OUTLINED_FUNCTION_15();
  if (*(v0 + 240))
  {
    __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
    OUTLINED_FUNCTION_56();
    sub_231606008();
    __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 216));
    __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 256));
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 256));
    sub_2315B2F7C(v0 + 216, &qword_27DD60718, &qword_231609520);
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0;
  }

  v1 = (*(v0 + 968) + *(v0 + 1432));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_2316065A8();

  OUTLINED_FUNCTION_51_0((v0 + 376), *(v0 + 400));
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 1448) = v2;
  *v2 = v3;
  v2[1] = sub_2315E110C;

  return MEMORY[0x2821C6CC0](v0 + 336);
}

uint64_t sub_2315E110C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315E11F4()
{
  if (*(v0 + 360))
  {
    __swift_project_boxed_opaque_existential_1((v0 + 336), *(v0 + 360));
    OUTLINED_FUNCTION_26();
    sub_231606008();
    __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 336));
    __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 376));
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 376));
    sub_2315B2F7C(v0 + 336, &qword_27DD60718, &qword_231609520);
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0;
  }

  OUTLINED_FUNCTION_27_1(*(v0 + 1312), v0 + 656);
  sub_231605908();
  swift_endAccess();
  sub_2315DC458(v0 + 176, v0 + 16, &qword_27DD60720, &qword_231609528);
  v1 = *(v0 + 1064);
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60728, &unk_231609540);
    v2 = sub_231605568();
    v3 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v1, v3 ^ 1u, 1, v2);
    if (__swift_getEnumTagSinglePayload(v1, 1, v2) != 1)
    {
      v4 = *(v0 + 1064);
      sub_231605558();
      OUTLINED_FUNCTION_23();
      (*(v5 + 8))(v4, v2);
      goto LABEL_9;
    }
  }

  else
  {
    sub_2315B2F7C(v0 + 16, &qword_27DD60720, &qword_231609528);
    sub_231605568();
    v6 = OUTLINED_FUNCTION_37_0();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  sub_2315B2F7C(*(v0 + 1064), &qword_27DD60710, &qword_231609508);
LABEL_9:
  OUTLINED_FUNCTION_27_1(*(v0 + 1312), v0 + 704);
  sub_2316059A8();
  swift_endAccess();
  sub_2315DC458(v0 + 296, v0 + 456, &qword_27DD60720, &qword_231609528);
  v10 = *(v0 + 1056);
  if (*(v0 + 480))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD60728, &unk_231609540);
    v11 = sub_231605568();
    v12 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v10, v12 ^ 1u, 1, v11);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      sub_231605558();
      OUTLINED_FUNCTION_23();
      v13 = OUTLINED_FUNCTION_41();
      v14(v13);
      goto LABEL_14;
    }
  }

  else
  {
    sub_2315B2F7C(v0 + 456, &qword_27DD60720, &qword_231609528);
    sub_231605568();
    v15 = OUTLINED_FUNCTION_37_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }

  sub_2315B2F7C(*(v0 + 1056), &qword_27DD60710, &qword_231609508);
LABEL_14:
  v19 = *(v0 + 1528);
  v20 = *(v0 + 1312);
  OUTLINED_FUNCTION_27_1(v20, v0 + 752);
  sub_231605958();
  swift_endAccess();
  sub_231605C38();
  OUTLINED_FUNCTION_27_1(v20, v0 + 776);
  sub_231605988();
  swift_endAccess();
  if (v19)
  {
    v21 = *(v0 + 1256);
    v22 = *(v0 + 1248);
    v23 = *(v0 + 1048);
    v24 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
    sub_2315DEFAC();
    sub_2315E3C58();
    v25 = *(v21 + 8);
    v26 = OUTLINED_FUNCTION_26();
    v25(v26);
    if (__swift_getEnumTagSinglePayload(v23, 1, v22) == 1)
    {
      v27 = *(v0 + 1048);

      sub_2315B2F7C(v27, &qword_27DD601C8, &qword_231607A90);
    }

    else
    {
      v31 = *(v0 + 1312);
      (*(*(v0 + 1256) + 32))(*(v0 + 1272), *(v0 + 1048), *(v0 + 1248));
      v32 = sub_231604FB8();
      [v24 setPunchOutUri_];

      sub_231606988();
      OUTLINED_FUNCTION_27_1(v31, v0 + 872);
      sub_231605968();
      swift_endAccess();

      v33 = OUTLINED_FUNCTION_26();
      v25(v33);
    }
  }

  else
  {
    v28 = static DirectInvocationFactory.createShowMore(suggestions:)(*(v0 + 952));
    if (v28)
    {
      v29 = v28;
      v30 = *(v0 + 1312);
      sub_231606988();
      OUTLINED_FUNCTION_27_1(v30, v0 + 848);
      sub_2316058A8();
      swift_endAccess();
    }
  }

  v34 = *(v0 + 1312);
  v45 = *(v0 + 1304);
  v35 = *(v0 + 1296);
  v36 = *(v0 + 1288);
  v37 = *(v0 + 968);
  sub_2316059D8();
  OUTLINED_FUNCTION_51_0((v37 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_featureFlagProvider), *(v37 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_featureFlagProvider + 24));
  OUTLINED_FUNCTION_13_2();
  sub_231606298();
  swift_beginAccess();
  sub_2316058D8();
  swift_endAccess();
  sub_2315E43E0();
  v38 = *(v37 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_responseFrameworkInvoker + 24);
  v39 = *(v37 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_responseFrameworkInvoker + 32);
  OUTLINED_FUNCTION_51_0((v37 + OBJC_IVAR____TtC22SiriSuggestionsSupport18SiriHelpDispatcher_responseFrameworkInvoker), v38);
  (*(v35 + 16))(v45, v34, v36);
  v46 = (*(v39 + 8) + **(v39 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 1456) = v40;
  *v40 = v41;
  v40[1] = sub_2315E18D8;
  v42 = *(v0 + 1304);
  v43 = *(v0 + 1040);

  return v46(v0 + 416, 0, v42, v43, v38, v39);
}

uint64_t sub_2315E18D8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[183] = v0;

  v7 = OUTLINED_FUNCTION_67_0();
  if (v0)
  {
    v3[189] = v9;
    v3[190] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v7);
  }

  else
  {
    v3[184] = v9;
    v3[185] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v7);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315E1A40()
{
  OUTLINED_FUNCTION_8();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 1488) = v1;
  *v1 = v2;
  v1[1] = sub_2315E1AD8;

  return MEMORY[0x2821C61E8](v0 + 416);
}

uint64_t sub_2315E1AD8()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[187] = v0;

  if (v0)
  {
  }

  else
  {
    v3[188] = v3[70];
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_2315E1C04()
{
  v22 = *(v0 + 1472);
  v15 = *(v0 + 1344);
  v16 = *(v0 + 1504);
  v21 = *(v0 + 1312);
  v19 = *(v0 + 1352);
  v20 = *(v0 + 1288);
  v1 = *(v0 + 1032);
  v17 = *(v0 + 1024);
  v18 = *(v0 + 1040);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 992);
  v5 = *(v0 + 984);
  v6 = *(v0 + 968);
  v7 = *(v0 + 952);
  v8 = sub_2316068E8();
  v14 = *(v0 + 1328);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v8);
  v9 = v3;
  (*(v4 + 16))(v3, v7, v5);
  v10 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v6;
  *(v11 + 40) = v14;
  *(v11 + 56) = v16;
  *(v11 + 64) = v15;
  (*(v4 + 32))(v11 + v10, v9, v5);

  sub_2315FD77C(0, 0, v2, &unk_231609538, v11);

  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 416));
  (*(v1 + 8))(v18, v17);
  sub_2315B2F7C(v0 + 296, &qword_27DD60720, &qword_231609528);
  sub_2315B2F7C(v0 + 176, &qword_27DD60720, &qword_231609528);

  v22(v21, v20);

  OUTLINED_FUNCTION_14();

  return v12();
}

uint64_t sub_2315E1F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_55();

  v27 = OUTLINED_FUNCTION_56();
  v28(v27);
  OUTLINED_FUNCTION_3_5(*(v26 + 1392));

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_9_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2315E2094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_55();
  v27 = *(v26 + 1512);
  OUTLINED_FUNCTION_30_0();
  v28 = OUTLINED_FUNCTION_35();
  v29(v28);
  OUTLINED_FUNCTION_42_0();
  sub_2315B2F7C(v30, v31, v32);
  OUTLINED_FUNCTION_42_0();
  sub_2315B2F7C(v33, v34, v35);

  v36 = OUTLINED_FUNCTION_56();
  v27(v36);
  OUTLINED_FUNCTION_3_5(*(v26 + 1464));

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_9_2();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2315E21FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_55();
  v27 = v26[184];
  OUTLINED_FUNCTION_30_0();
  __swift_destroy_boxed_opaque_existential_1Tm_0(v26 + 52);
  v28 = OUTLINED_FUNCTION_35();
  v29(v28);
  OUTLINED_FUNCTION_42_0();
  sub_2315B2F7C(v30, v31, v32);
  OUTLINED_FUNCTION_42_0();
  sub_2315B2F7C(v33, v34, v35);

  v36 = OUTLINED_FUNCTION_56();
  v27(v36);
  OUTLINED_FUNCTION_3_5(v26[187]);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_9_2();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2315E236C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_231605EF8();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = sub_231605098();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_231605F08();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v6 = sub_231605F28();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v7 = sub_231605DD8();
  v2[25] = v7;
  v2[26] = *(v7 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2315E262C, 0, 0);
}

uint64_t sub_2315E262C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_55();
  v28 = v26[26];
  v29 = v26[22];
  v30 = v26[16];
  result = sub_231605E68();
  v159 = *(result + 16);
  v171 = (v29 + 8);
  v169 = *MEMORY[0x277D60720];
  v32 = (v30 + 104);
  v33 = (v30 + 8);
  v34 = 0;
  v165 = v33;
  v167 = v32;
  v174 = (v28 + 8);
  v149 = (v28 + 32);
  v163 = MEMORY[0x277D84F90];
  v151 = result;
  while (v159 != v34)
  {
    if (v34 >= *(result + 16))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return result;
    }

    v35 = v26[24];
    v36 = v26[21];
    v37 = v26[19];
    v38 = v26[15];
    OUTLINED_FUNCTION_18_2();
    v156 = v40 & ~v39;
    v153 = *(v41 + 72);
    v42 = OUTLINED_FUNCTION_17_4();
    v43(v42);
    sub_231605DC8();
    sub_231605F18();
    (*v171)(v35, v36);
    (*v167)(v37, v169, v38);
    OUTLINED_FUNCTION_2_7();
    sub_2315E9418(&qword_27DD607B8, v44, MEMORY[0x277D60748]);
    OUTLINED_FUNCTION_13_2();
    sub_231606828();
    OUTLINED_FUNCTION_13_2();
    sub_231606828();
    if (v26[2] == v26[4] && v26[3] == v26[5])
    {
      v48 = OUTLINED_FUNCTION_54();
      v28(v48);
      v49 = OUTLINED_FUNCTION_13_2();
      v28(v49);

LABEL_11:
      v27 = *v149;
      (*v149)(v26[33], v26[34], v26[25]);
      v50 = v163;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_8_2();
        v50 = v163;
      }

      v28 = v153;
      v52 = *(v50 + 16);
      v51 = *(v50 + 24);
      if (v52 >= v51 >> 1)
      {
        v55 = OUTLINED_FUNCTION_12_3(v51);
        sub_231604008(v55, v52 + 1, 1);
        v50 = v163;
      }

      ++v34;
      v53 = v26[33];
      v54 = v26[25];
      *(v50 + 16) = v52 + 1;
      v163 = v50;
      (v27)(v50 + v156 + v52 * v153, v53, v54);
      result = v151;
    }

    else
    {
      v27 = sub_231606BD8();
      v46 = OUTLINED_FUNCTION_54();
      v28(v46);
      v47 = OUTLINED_FUNCTION_13_2();
      v28(v47);

      if (v27)
      {
        goto LABEL_11;
      }

      (*v174)(v26[34], v26[25]);
      ++v34;
      result = v151;
    }
  }

  if (sub_231605C28())
  {
    result = sub_231605E68();
    v56 = 0;
    v160 = *(result + 16);
    v154 = MEMORY[0x277D84F90];
    v157 = result;
    while (v160 != v56)
    {
      if (v56 >= *(result + 16))
      {
        goto LABEL_55;
      }

      v57 = v26[23];
      v58 = v26[21];
      v59 = v26[17];
      v60 = v26[15];
      OUTLINED_FUNCTION_18_2();
      v63 = v62 & ~v61;
      v65 = *(v64 + 72);
      v66 = OUTLINED_FUNCTION_17_4();
      v67(v66);
      sub_231605DC8();
      sub_231605F18();
      (*v171)(v57, v58);
      v68 = OUTLINED_FUNCTION_66_0();
      v69(v68, v169, v60);
      OUTLINED_FUNCTION_2_7();
      sub_2315E9418(&qword_27DD60730, v70, MEMORY[0x277D60740]);
      v71 = sub_231606778();
      v72 = *v165;
      (*v165)(v59, v60);
      v73 = OUTLINED_FUNCTION_13_2();
      (v72)(v73);
      if (v71)
      {
        v74 = OUTLINED_FUNCTION_63_0(v26[32]);
        v75(v74);
        ++v56;
        result = v157;
      }

      else
      {
        v76 = *v149;
        (*v149)(v26[31], v26[32], v26[25]);
        v77 = v154;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_8_2();
          v77 = v154;
        }

        v79 = *(v77 + 16);
        v78 = *(v77 + 24);
        if (v79 >= v78 >> 1)
        {
          v82 = OUTLINED_FUNCTION_12_3(v78);
          sub_231604008(v82, v79 + 1, 1);
          v77 = v154;
        }

        ++v56;
        v80 = v26[31];
        v81 = v26[25];
        *(v77 + 16) = v79 + 1;
        v154 = v77;
        v76(v77 + v63 + v79 * v65, v80, v81);
        result = v157;
      }
    }

    result = sub_2315E5ACC(v154);
    v86 = 0;
    v87 = v163;
    v161 = *(v163 + 16);
    v158 = MEMORY[0x277D84F90];
    while (v161 != v86)
    {
      if (v86 >= *(v87 + 16))
      {
        goto LABEL_56;
      }

      v88 = v26[21];
      v89 = v26[17];
      v90 = v26[15];
      OUTLINED_FUNCTION_18_2();
      v93 = v92 & ~v91;
      v95 = *(v94 + 72);
      v96 = OUTLINED_FUNCTION_17_4();
      v97(v96);
      sub_231605DC8();
      sub_231605F18();
      v98 = OUTLINED_FUNCTION_66_0();
      v99(v98, v88);
      (*v167)(v89, v169, v90);
      OUTLINED_FUNCTION_2_7();
      sub_2315E9418(&qword_27DD60730, v100, MEMORY[0x277D60740]);
      v101 = sub_231606778();
      v102 = *v165;
      (*v165)(v89, v90);
      v103 = OUTLINED_FUNCTION_31_1();
      v102(v103);
      if (v101)
      {
        v104 = OUTLINED_FUNCTION_63_0(v26[30]);
        result = v105(v104);
        ++v86;
        v87 = v163;
      }

      else
      {
        v106 = *v149;
        (*v149)(v26[29], v26[30], v26[25]);
        v107 = v158;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_8_2();
          v107 = v158;
        }

        v109 = *(v107 + 16);
        v108 = *(v107 + 24);
        if (v109 >= v108 >> 1)
        {
          v112 = OUTLINED_FUNCTION_12_3(v108);
          sub_231604008(v112, v109 + 1, 1);
          v107 = v158;
        }

        ++v86;
        v110 = v26[29];
        v111 = v26[25];
        *(v107 + 16) = v109 + 1;
        v158 = v107;
        result = v106(v107 + v93 + v109 * v95, v110, v111);
        v87 = v163;
      }
    }

    v113 = v26[13];
    v114 = v26[14];
    v115 = v26[12];
    v116 = v87;
    sub_231605E78();
    v117 = sub_231605068();
    v119 = v118;
    (*(v113 + 8))(v114, v115);
    v178 = v117;
    v179 = v119;
    MEMORY[0x231932CB0](0x726F4D776F68532DLL, 0xE900000000000065);
    result = v116;
    v166 = v119;
    v168 = v117;
  }

  else
  {
    v83 = v26[14];

    sub_231605E78();
    sub_231605068();
    OUTLINED_FUNCTION_64_0();
    v84 = OUTLINED_FUNCTION_26();
    v85(v84);
    v178 = v83;
    v179 = v27;
    MEMORY[0x231932CB0](0x4E706F542DLL, 0xE500000000000000);
    result = v163;
    v166 = v27;
    v168 = v83;
    v158 = v163;
  }

  v120 = 0;
  v172 = *(result + 16);
  v121 = (v26[9] + 8);
  v170 = MEMORY[0x277D84F90];
  v164 = result;
  while (v172 != v120)
  {
    if (v120 >= *(result + 16))
    {
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_18_2();
    v124 = v123 & ~v122;
    v126 = *(v125 + 72);
    v127 = OUTLINED_FUNCTION_17_4();
    v128(v127);
    sub_231605D68();
    sub_231605EC8();
    OUTLINED_FUNCTION_64_0();
    v129 = *v121;
    v130 = OUTLINED_FUNCTION_26();
    v129(v130);

    OUTLINED_FUNCTION_56_0();
    if (v131 && (sub_231605D68(), sub_231605EA8(), OUTLINED_FUNCTION_64_0(), v132 = OUTLINED_FUNCTION_26(), v129(v132), , OUTLINED_FUNCTION_56_0(), v133))
    {
      v134 = *v149;
      (*v149)(v26[27], v26[28], v26[25]);
      v135 = v170;
      v178 = v170;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_8_2();
        v135 = v170;
      }

      v137 = *(v135 + 16);
      v136 = *(v135 + 24);
      if (v137 >= v136 >> 1)
      {
        v140 = OUTLINED_FUNCTION_12_3(v136);
        sub_231604008(v140, v137 + 1, 1);
        v135 = v170;
      }

      ++v120;
      v138 = v26[27];
      v139 = v26[25];
      *(v135 + 16) = v137 + 1;
      v170 = v135;
      v134(v135 + v124 + v137 * v126, v138, v139);
      result = v164;
    }

    else
    {
      (*v174)(v26[28], v26[25]);
      ++v120;
      result = v164;
    }
  }

  v150 = v26[24];
  v152 = v26[23];
  v155 = v26[20];
  v162 = v26[19];
  v173 = v26[18];
  v175 = v26[17];
  v176 = v26[14];
  v177 = v26[11];

  OUTLINED_FUNCTION_9_2();

  return v146(v141, v142, v143, v144, v145, v146, v147, v148, v150, v152, v155, v158, v162, v164, v166, v168, v170, v173, v175, v176, v177, v178, v179, a24, a25, a26);
}

void sub_2315E30B0()
{
  OUTLINED_FUNCTION_93();
  v37 = v0;
  v38 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607A8, &qword_2316095B8);
  v3 = OUTLINED_FUNCTION_24(v2);
  MEMORY[0x28223BE20](v3);
  v35 = &v32 - v4;
  OUTLINED_FUNCTION_19();
  v36 = sub_2316061C8();
  OUTLINED_FUNCTION_1_0();
  v34 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v33 = v8 - v7;
  OUTLINED_FUNCTION_19();
  v9 = sub_231606108();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = sub_231606148();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v22 = v21 - v20;
  (*(v18 + 104))(v21 - v20, *MEMORY[0x277D60B50], v16);
  sub_2315E5078();
  v24 = v23;
  (*(v18 + 8))(v22, v16);
  if (!v24)
  {
    goto LABEL_7;
  }

  sub_231606538();
  sub_2316060F8();
  (*(v11 + 8))(v15, v9);
  sub_2315E93B4(v40, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD607B0, qword_2316095C0);
  if (!swift_dynamicCast())
  {
    sub_2315E93B4(v40, v39);
    v25 = v35;
    v26 = v36;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
      v27 = v34;
      v28 = v33;
      (*(v34 + 32))(v33, v25, v26);
      sub_2316061A8();

      (*(v27 + 8))(v28, v26);
      __swift_destroy_boxed_opaque_existential_1Tm_0(v40);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm_0(v40);

    v29 = OUTLINED_FUNCTION_37_0();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v26);
    sub_2315B2F7C(v25, &qword_27DD607A8, &qword_2316095B8);
LABEL_7:

    goto LABEL_8;
  }

  __swift_destroy_boxed_opaque_existential_1Tm_0(v40);

LABEL_8:
  OUTLINED_FUNCTION_69();
}

uint64_t sub_2315E345C(uint64_t a1)
{
  sub_2315DC54C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD604F8, &qword_231608FB0);
  sub_231605BB8();
  if (swift_dynamicCast())
  {
    v1 = sub_231605BA8();
  }

  else
  {
    if (qword_280FE9550 != -1)
    {
      swift_once();
    }

    v2 = sub_2316066E8();
    __swift_project_value_buffer(v2, qword_280FE9558);
    v3 = sub_2316066C8();
    v4 = sub_231606958();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2315AF000, v3, v4, "[warning] Owner is not a signalled siri help owner! Cant determine if this is a conversational continuer so assuming not", v5, 2u);
      MEMORY[0x231933730](v5, -1, -1);
    }

    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_2315E35A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_231605D58();
  sub_2315E30B0();
  v6 = v5;
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm_0(v12);
  if (v6 == a2 && v8 == a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_231606BD8();
  }

  return v10 & 1;
}

uint64_t sub_2315E3694()
{
  sub_231605D58();
  sub_2315E30B0();
  v1 = v0;
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1Tm_0(v7);
  if (v1 == 0x6C7070612E6D6F63 && v3 == 0xEE00697269732E65)
  {

    v5 = 1;
  }

  else
  {
    v5 = sub_231606BD8();
  }

  return v5 & 1;
}

uint64_t sub_2315E3790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v39 = a2;
  v5 = sub_231606478();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231604EF8();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_231605EF8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  sub_231605D68();
  sub_231605EC8();
  v16 = *(v10 + 8);
  v16(v15, v9);
  sub_2316057D8();
  v17 = objc_opt_self();
  sub_231605D68();
  sub_231605EC8();
  v16(v15, v9);
  v18 = sub_231606788();

  v19 = sub_231606788();
  v20 = [v17 quote:v18 forLocale:v19];

  sub_231606798();
  sub_231605838();
  sub_231605D68();
  v21 = sub_231605EB8();
  v23 = v22;
  v16(v13, v9);
  if (!v23)
  {
    goto LABEL_6;
  }

  v44 = v21;
  v45 = v23;
  v24 = v36;
  sub_231604EE8();
  sub_2315BC8D0();
  v25 = sub_2316069C8();
  v27 = v26;
  (*(v37 + 8))(v24, v38);

  if (!v25 && v27 == 0xE000000000000000)
  {

    goto LABEL_8;
  }

  v28 = sub_231606BD8();

  if ((v28 & 1) == 0)
  {
LABEL_6:
    sub_231605D68();
    sub_231605EB8();
    v30 = v29;
    v16(v15, v9);
    if (v30)
    {
      sub_2316057C8();
    }
  }

LABEL_8:
  sub_2315E5BCC();
  v31 = static DirectInvocationFactory.createExecute(suggestion:)(a1);
  if (v31)
  {
    v32 = v31;
    sub_231606988();
    sub_231605808();
  }

  v33 = v41;
  sub_231605D78();
  sub_231606468();
  (*(v42 + 8))(v33, v43);
  return sub_2316057E8();
}