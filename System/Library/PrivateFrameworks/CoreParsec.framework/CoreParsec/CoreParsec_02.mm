uint64_t sub_1B1097920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A100, &unk_1B1134340);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1B1099E30(a3, v22 - v10, &qword_1EB73A100, &unk_1B1134340);
  v12 = sub_1B1122C5C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1B1067964(v11, &qword_1EB73A100, &unk_1B1134340);
  }

  else
  {
    sub_1B1122C4C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_1B1122C0C();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1B1122A9C() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_1B1067964(a3, &qword_1EB73A100, &unk_1B1134340);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B1067964(a3, &qword_1EB73A100, &unk_1B1134340);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1B1097BFC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B1097CF4;

  return v6(a1);
}

uint64_t sub_1B1097CF4()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_6();
  *v2 = v1;

  OUTLINED_FUNCTION_13_0();

  return v3();
}

uint64_t sub_1B1097DD8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1B112306C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_1B1097E08(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1097E2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1B11345D0;
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

uint64_t sub_1B1097E90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A138, &qword_1B11348A8);
  result = sub_1B1122F7C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1B1097E2C(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1B112314C();
    sub_1B1122ACC();
    result = sub_1B112316C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void *sub_1B10980EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A138, &qword_1B11348A8);
  v2 = *v0;
  v3 = sub_1B1122F6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1B1098244(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A138, &qword_1B11348A8);
  result = sub_1B1122F7C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1B112314C();

        sub_1B1122ACC();
        result = sub_1B112316C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B1098478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B11230AC() & 1;
  }
}

BOOL sub_1B10984BC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1B1098588(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1B1122B8C();

  return v4;
}

void sub_1B10985DC(uint64_t a1, void *a2)
{
  sub_1B1066864(0, &qword_1EB739628, 0x1E69C9F08);
  v3 = sub_1B1122B7C();

  [a2 setCardSections_];
}

id sub_1B1098660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_1B1122A4C();

  v11 = [a6 ticketForSearchQuery:v10 completionItem:a3 maxResults:a4 traits:a5];

  return v11;
}

uint64_t sub_1B10986E4(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1B1122A5C();

  return v4;
}

uint64_t sub_1B1098750(void *a1)
{
  v2 = [a1 results];

  if (!v2)
  {
    return 0;
  }

  sub_1B1066864(0, &qword_1EDAD5528, 0x1E69CA3E8);
  OUTLINED_FUNCTION_16_0();
  v3 = sub_1B1122B8C();

  return v3;
}

void sub_1B10987C4(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1B11218AC();
  sub_1B106C204(a1, a2);
  [a3 setUuidBytes_];
}

uint64_t sub_1B1098838(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B11218CC();

  return v3;
}

uint64_t sub_1B10988A8(void *a1, SEL *a2)
{
  v3 = [a1 *a2];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1B1122A5C();
  OUTLINED_FUNCTION_52();

  return v2;
}

uint64_t sub_1B1098904(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1B1097DFC(a3);
  sub_1B1097E08(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1B272DFA0](a2, a3);
  }

  *a1 = v7;
  return OUTLINED_FUNCTION_51_0();
}

void sub_1B10989C0()
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v4 = v3;
  sub_1B11228AC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v6 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable_];
  if (v6)
  {
    v7 = v6;
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
    }

    v8 = sub_1B112296C();
    __swift_project_value_buffer(v8, qword_1EDAD60D0);
    v42 = v7;
    v9 = sub_1B112293C();
    v10 = sub_1B1122DCC();

    if (os_log_type_enabled(v9, v10))
    {
      v41 = v4;
      v11 = swift_slowAlloc();
      v12 = OUTLINED_FUNCTION_55();
      v44 = v12;
      *v11 = 136315394;
      v13 = [v42 debugDescription];
      v40 = v0;
      v14 = sub_1B1122A5C();
      v16 = v15;

      v17 = sub_1B10784E0(v14, v16, &v44);

      *(v11 + 4) = v17;
      v0 = v40;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v40;
      _os_log_impl(&dword_1B1064000, v9, v10, "reportFeedback(%s, %llu)", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_2_0();
      v4 = v41;
      OUTLINED_FUNCTION_2_0();
    }

    v18 = sub_1B106AE3C();
    if (v18)
    {
      v19 = v18;
      sub_1B1122E6C();
      if (qword_1EDAD5DF0 != -1)
      {
        OUTLINED_FUNCTION_5_0(&qword_1EDAD5DF0);
      }

      sub_1B112289C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1B1133CF0;
      v21 = [v42 type];
      v22 = MEMORY[0x1E69E7358];
      *(v20 + 56) = MEMORY[0x1E69E72F0];
      *(v20 + 64) = v22;
      v23 = MEMORY[0x1E69E76D8];
      *(v20 + 32) = v21;
      v24 = MEMORY[0x1E69E7738];
      *(v20 + 96) = v23;
      *(v20 + 104) = v24;
      *(v20 + 72) = v0;
      sub_1B112284C();

      v25 = OUTLINED_FUNCTION_23_0();
      v26(v25);
      v27 = v42;
      sub_1B106B080(v27, &selRef_data);
      OUTLINED_FUNCTION_34_0();
      if (!v31 & v30)
      {
        __break(1u);
      }

      else
      {
        v32 = v28;
        v33 = v29;

        v34 = sub_1B11218AC();
        sub_1B106C1F0(v32, v33);
        [v19 reportFeedback:v4 payloadData:v34 queryId:v0];

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_4_2();
      }

      return;
    }
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
    }

    v35 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v35, qword_1EDAD60D0);
    v43 = sub_1B112293C();
    v36 = sub_1B1122DDC();
    if (os_log_type_enabled(v43, v36))
    {
      v37 = OUTLINED_FUNCTION_37();
      *v37 = 0;
      _os_log_impl(&dword_1B1064000, v43, v36, "nil feedback payload", v37, 2u);
      OUTLINED_FUNCTION_2_0();
    }
  }

  OUTLINED_FUNCTION_4_2();
}

unint64_t sub_1B1098E34()
{
  result = qword_1EB739E48;
  if (!qword_1EB739E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB739E48);
  }

  return result;
}

unint64_t sub_1B1098E88()
{
  result = qword_1EB739E50;
  if (!qword_1EB739E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB739E50);
  }

  return result;
}

uint64_t sub_1B1098EF0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1B1098F10()
{
  result = qword_1EDAD5580;
  if (!qword_1EDAD5580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD5580);
  }

  return result;
}

unint64_t sub_1B1098F64()
{
  result = qword_1EDAD5598;
  if (!qword_1EDAD5598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB739C38, &qword_1B1133EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD5598);
  }

  return result;
}

unint64_t sub_1B1098FF8()
{
  result = qword_1EB739F60;
  if (!qword_1EB739F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB739F60);
  }

  return result;
}

unint64_t sub_1B1099050()
{
  result = qword_1EB739F68;
  if (!qword_1EB739F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB739F68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SafariHistoryClearError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SafariHistoryClearError(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PARSessionSwiftInternal.ImageLoadError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PARSessionSwiftInternal.ImageLoadError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t objectdestroy_13Tm()
{

  OUTLINED_FUNCTION_54_0();

  return MEMORY[0x1EEE6BDD0](v1);
}

void sub_1B1099858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v32 = sub_1B11228AC();
  OUTLINED_FUNCTION_7(v32);
  v37 = v36;
  v39 = v38;
  v40 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v41 = (*(v39 + 64) + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v30 + v41);
  v44 = *(v30 + v42);
  v45 = *v43;
  v46 = v43[1];

  sub_1B109E624(a1, v30 + v40, v45, v46, v44, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t objectdestroy_28Tm()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B109995C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_18_1(v1);

  return v3(v2);
}

uint64_t sub_1B1099A00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_18_1(v1);

  return v3(v2);
}

uint64_t sub_1B1099AA4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_28_0(v6);
  *v7 = v8;
  v7[1] = sub_1B108C2DC;

  return sub_1B1097838(a1, v3, v4, v5);
}

uint64_t sub_1B1099B68()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_28_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_20_0(v1);

  return v4(v3);
}

uint64_t sub_1B1099C00()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_28_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_20_0(v1);

  return v4(v3);
}

unint64_t sub_1B1099CA0()
{
  result = qword_1EB73A108;
  if (!qword_1EB73A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB73A108);
  }

  return result;
}

unint64_t sub_1B1099CFC()
{
  result = qword_1EDAD55A0;
  if (!qword_1EDAD55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAD55A0);
  }

  return result;
}

uint64_t sub_1B1099D50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739BB8, &qword_1B1133E38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1099DC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1099E30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_11();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_58()
{

  return swift_dynamicCast();
}

uint64_t *sub_1B109A15C()
{
  if (qword_1EDAD60E8 != -1)
  {
    OUTLINED_FUNCTION_10_2(&qword_1EDAD60E8);
  }

  return &qword_1EDAD60F8;
}

void sub_1B109A19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B11229DC();
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a3)
  {
LABEL_3:
    sub_1B11217EC();
  }

LABEL_5:
  v6 = OUTLINED_FUNCTION_44_1();
  v9 = v7;
  v8(v6, a1, v5);
}

void sub_1B109A250(uint64_t a1)
{
  if (a1)
  {
    sub_1B11217EC();
  }

  v1 = OUTLINED_FUNCTION_44_1();
  v4 = v2;
  v3(v1);
}

void sub_1B109A2AC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
  v3 = sub_1B1122B7C();
  (*(a2 + 16))(a2, v3);
}

void sub_1B109A324(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t aBlock, uint64_t a12, uint64_t a13, void *a14, uint64_t (*a15)(void *a1, void *a2), void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_85();
  a27 = v31;
  a28 = v32;
  OUTLINED_FUNCTION_43_1();
  if (qword_1EDAD60C0 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
  }

  v33 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v33, qword_1EDAD60D0);
  v34 = sub_1B112293C();
  v35 = sub_1B1122DCC();
  if (OUTLINED_FUNCTION_60(v35))
  {
    *OUTLINED_FUNCTION_37() = 0;
    OUTLINED_FUNCTION_42_0();
    _os_log_impl(v36, v37, v38, v39, v40, 2u);
    OUTLINED_FUNCTION_2_0();
  }

  v41 = *&v29[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection];
  a15 = sub_1B10A368C;
  a16 = 0;
  OUTLINED_FUNCTION_9_1();
  a12 = 1107296256;
  OUTLINED_FUNCTION_3();
  a13 = v42;
  a14 = &block_descriptor_230;
  v43 = _Block_copy(&aBlock);
  [v41 remoteObjectProxyWithErrorHandler_];
  _Block_release(v43);
  OUTLINED_FUNCTION_72(v44, v45);
  swift_unknownObjectRelease();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_34_1(v46))
  {
    OUTLINED_FUNCTION_51_1();
    v47 = swift_allocObject();
    v47[2] = v29;
    v47[3] = v30;
    v47[4] = v28;
    a15 = sub_1B10A343C;
    a16 = v47;
    aBlock = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_15_1();
    a13 = v48;
    a14 = &block_descriptor_236;
    v49 = _Block_copy(&aBlock);
    v50 = v29;

    OUTLINED_FUNCTION_74(v51, sel_subscribeToChannel_reply_);
    _Block_release(v49);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_84();
}

void sub_1B109A514(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t aBlock, uint64_t a12, uint64_t a13, void *a14, uint64_t (*a15)(void *a1, void *a2), void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_85();
  a27 = v31;
  a28 = v32;
  OUTLINED_FUNCTION_43_1();
  if (qword_1EDAD60C0 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
  }

  v33 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v33, qword_1EDAD60D0);
  v34 = sub_1B112293C();
  v35 = sub_1B1122DCC();
  if (OUTLINED_FUNCTION_60(v35))
  {
    *OUTLINED_FUNCTION_37() = 0;
    OUTLINED_FUNCTION_42_0();
    _os_log_impl(v36, v37, v38, v39, v40, 2u);
    OUTLINED_FUNCTION_2_0();
  }

  v41 = *&v29[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection];
  a15 = sub_1B10A368C;
  a16 = 0;
  OUTLINED_FUNCTION_9_1();
  a12 = 1107296256;
  OUTLINED_FUNCTION_3();
  a13 = v42;
  a14 = &block_descriptor_221;
  v43 = _Block_copy(&aBlock);
  [v41 remoteObjectProxyWithErrorHandler_];
  _Block_release(v43);
  OUTLINED_FUNCTION_72(v44, v45);
  swift_unknownObjectRelease();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_34_1(v46))
  {
    OUTLINED_FUNCTION_51_1();
    v47 = swift_allocObject();
    v47[2] = v29;
    v47[3] = v30;
    v47[4] = v28;
    a15 = sub_1B10A33C8;
    a16 = v47;
    aBlock = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_15_1();
    a13 = v48;
    a14 = &block_descriptor_227;
    v49 = _Block_copy(&aBlock);
    v50 = v29;

    OUTLINED_FUNCTION_74(v51, sel_unsubscribeFromChannel_reply_);
    _Block_release(v49);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_84();
}

void sub_1B109A704(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t aBlock, uint64_t a12, uint64_t a13, void *a14, uint64_t (*a15)(void *a1, void *a2), void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_85();
  a27 = v31;
  a28 = v32;
  OUTLINED_FUNCTION_43_1();
  if (qword_1EDAD60C0 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
  }

  v33 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v33, qword_1EDAD60D0);
  v34 = sub_1B112293C();
  v35 = sub_1B1122DCC();
  if (OUTLINED_FUNCTION_60(v35))
  {
    *OUTLINED_FUNCTION_37() = 0;
    OUTLINED_FUNCTION_42_0();
    _os_log_impl(v36, v37, v38, v39, v40, 2u);
    OUTLINED_FUNCTION_2_0();
  }

  v41 = *&v29[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection];
  a15 = sub_1B10A368C;
  a16 = 0;
  OUTLINED_FUNCTION_9_1();
  a12 = 1107296256;
  OUTLINED_FUNCTION_3();
  a13 = v42;
  a14 = &block_descriptor_212;
  v43 = _Block_copy(&aBlock);
  [v41 remoteObjectProxyWithErrorHandler_];
  _Block_release(v43);
  OUTLINED_FUNCTION_72(v44, v45);
  swift_unknownObjectRelease();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_34_1(v46))
  {
    OUTLINED_FUNCTION_51_1();
    v47 = swift_allocObject();
    v47[2] = v29;
    v47[3] = v30;
    v47[4] = v28;
    a15 = sub_1B10A33A0;
    a16 = v47;
    aBlock = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_15_1();
    a13 = v48;
    a14 = &block_descriptor_218;
    v49 = _Block_copy(&aBlock);
    v50 = v29;

    OUTLINED_FUNCTION_74(v51, sel_subscriptionStatusForChannel_reply_);
    _Block_release(v49);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_84();
}

uint64_t sub_1B109A8F4()
{
  v1 = OUTLINED_FUNCTION_83();
  v5 = type metadata accessor for WeakBox(v1, v2, v3, v4);

  return MEMORY[0x1EEE693F8](v0, v5);
}

uint64_t sub_1B109A930()
{
  v1 = OUTLINED_FUNCTION_83();
  v5 = type metadata accessor for WeakBox(v1, v2, v3, v4);

  return MEMORY[0x1EEE694E0](v0, v5);
}

uint64_t sub_1B109A96C()
{
  OUTLINED_FUNCTION_79();
  v2 = type metadata accessor for WeakBox(0, v0, v0, v1);
  OUTLINED_FUNCTION_19_0();
  sub_1B1122BFC();
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(*(v2 - 8) + 8))(v5, v2);
  return Strong;
}

uint64_t sub_1B109A9FC()
{
  OUTLINED_FUNCTION_79();
  type metadata accessor for WeakBox(0, v0, v0, v1);
  v2 = OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE694B0](v2);
}

uint64_t sub_1B109AA40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B109A8F4();
  *a1 = result;
  return result;
}

uint64_t sub_1B109AA74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B109A930();
  *a1 = result;
  return result;
}

uint64_t (*sub_1B109AAA8(uint64_t **a1))()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  v3 = sub_1B109AB6C(v2);
  v2[4] = v4;
  v2[5] = v3;
  return sub_1B109AB24;
}

void sub_1B109AB24(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t sub_1B109ABEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B109A9FC();
  *a1 = result;
  return result;
}

uint64_t sub_1B109AC24(uint64_t *a1)
{
  result = sub_1B109A9FC();
  *a1 = result;
  return result;
}

uint64_t sub_1B109AC5C@<X0>(void *a1@<X8>)
{
  *a1 = *v1;

  v3 = sub_1B109A8F4();

  a1[1] = v3;
  return result;
}

uint64_t sub_1B109ACB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1B109AD0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_1B109ADB0()
{
  sub_1B112314C();
  MEMORY[0x1B272E140](0);
  return sub_1B112316C();
}

id PARSearchClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static PARSearchClient.shared.getter()
{
  if (qword_1EDAD60E8 != -1)
  {
    OUTLINED_FUNCTION_10_2(&qword_1EDAD60E8);
  }

  OUTLINED_FUNCTION_50_1();
  swift_beginAccess();
  v0 = qword_1EDAD60F8;

  return v0;
}

void static PARSearchClient.shared.setter(uint64_t a1)
{
  v1 = a1;
  if (qword_1EDAD60E8 != -1)
  {
    a1 = OUTLINED_FUNCTION_10_2(&qword_1EDAD60E8);
  }

  OUTLINED_FUNCTION_86(a1);
  v2 = qword_1EDAD60F8;
  qword_1EDAD60F8 = v1;
}

uint64_t (*static PARSearchClient.shared.modify())(uint64_t a1)
{
  if (qword_1EDAD60E8 != -1)
  {
    OUTLINED_FUNCTION_10_2(&qword_1EDAD60E8);
  }

  OUTLINED_FUNCTION_19_0();
  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1B109AF78@<X0>(void *a1@<X8>)
{
  sub_1B109A15C();
  swift_beginAccess();
  v2 = qword_1EDAD60F8;
  *a1 = qword_1EDAD60F8;

  return v2;
}

void sub_1B109AFD8(id *a1)
{
  v1 = *a1;
  sub_1B109A15C();
  swift_beginAccess();
  v2 = qword_1EDAD60F8;
  qword_1EDAD60F8 = v1;
}

uint64_t sub_1B109B070()
{
  OUTLINED_FUNCTION_50_1();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1B109B0BC()
{
  OUTLINED_FUNCTION_68();
  v2 = v1 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_receivingStreamDelegate;
  OUTLINED_FUNCTION_86(v3);
  *(v2 + 8) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B109B114(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC10CoreParsec15PARSearchClient_receivingStreamDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1B109B1A0;
}

void sub_1B109B1A0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

id PARSearchClient.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PARSearchClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B109B390(uint64_t a1, uint64_t a2, const void *a3)
{
  v44 = a1;
  v5 = sub_1B11228AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - v10;
  v49 = swift_allocObject();
  *(v49 + 16) = a3;
  _Block_copy(a3);
  if (qword_1EDAD60C0 != -1)
  {
    swift_once();
  }

  v12 = sub_1B112296C();
  __swift_project_value_buffer(v12, qword_1EDAD60D0);
  v13 = sub_1B112293C();
  v14 = sub_1B1122DFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1B1064000, v13, v14, "requesting bag", v15, 2u);
    v16 = v15;
    v9 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1B272EDD0](v16, -1, -1);
  }

  v47 = a3;

  if (qword_1EDAD5DF0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  v43 = v17;
  sub_1B112285C();
  v18 = *(a2 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v19 = *(v6 + 16);
  v48 = v11;
  v42 = v19;
  v19(v9, v11, v5);
  v20 = *(v6 + 80);
  v21 = swift_allocObject();
  v41 = v7;
  v22 = v9;
  v23 = v21;
  v24 = v49;
  *(v21 + 16) = sub_1B10A3690;
  *(v21 + 24) = v24;
  v45 = v5;
  v46 = v6;
  v25 = *(v6 + 32);
  v25(v21 + ((v20 + 32) & ~v20), v22, v5);
  v55 = sub_1B10A3734;
  v56 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1B108FBF8;
  v54 = &block_descriptor_149;
  v26 = _Block_copy(&aBlock);

  v27 = [v18 remoteObjectProxyWithErrorHandler_];
  _Block_release(v26);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (swift_dynamicCast())
  {
    v28 = v50;
    v29 = v45;
    v42(v22, v48, v45);
    v30 = (v20 + 16) & ~v20;
    v31 = (v41 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v25(v32 + v30, v22, v29);
    v33 = (v32 + v31);
    v34 = v49;
    *v33 = sub_1B10A3690;
    v33[1] = v34;
    v55 = sub_1B106E8B4;
    v56 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1B106E750;
    v54 = &block_descriptor_156;
    v35 = _Block_copy(&aBlock);

    [v28 bag:v44 reply:v35];
    _Block_release(v35);
    swift_unknownObjectRelease();
    v37 = v47;
    v36 = v48;
    v38 = v29;
  }

  else
  {
    sub_1B1122E4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1B1133BA0;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = sub_1B106EAF4();
    strcpy((v39 + 32), "casting_failed");
    *(v39 + 47) = -18;
    v40 = v48;
    sub_1B112284C();

    v37 = v47;
    (*(v47 + 2))(v47, 0, 0);
    v38 = v45;
    v36 = v40;
  }

  (*(v46 + 8))(v36, v38);

  _Block_release(v37);
}

void sub_1B109B9AC()
{
  OUTLINED_FUNCTION_41_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v42 = v7;
  v8 = sub_1B11228AC();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_38_1();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_39_0();
  if (qword_1EDAD60C0 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
  }

  v45 = v6;
  v18 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v18, qword_1EDAD60D0);
  v19 = sub_1B112293C();
  v20 = sub_1B1122DFC();
  if (OUTLINED_FUNCTION_60(v20))
  {
    *OUTLINED_FUNCTION_37() = 0;
    OUTLINED_FUNCTION_87(&dword_1B1064000, v21, v22, "requesting bag");
    OUTLINED_FUNCTION_2_0();
  }

  if (qword_1EDAD5DF0 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1EDAD5DF0);
  }

  qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  OUTLINED_FUNCTION_75();
  sub_1B112285C();
  v23 = *(v2 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v41 = *(v10 + 16);
  v41(v16);
  v24 = *(v10 + 80);
  v40 = v12;
  v25 = swift_allocObject();
  *(v25 + 16) = v45;
  *(v25 + 24) = v4;
  v44 = v10;
  v26 = *(v10 + 32);
  v43 = v8;
  v27 = v8;
  v28 = v4;
  v26(v25 + ((v24 + 32) & ~v24), v16, v27);
  v50 = sub_1B10A29EC;
  v51 = v25;
  OUTLINED_FUNCTION_3_6();
  v47[1] = 1107296256;
  OUTLINED_FUNCTION_3();
  v48 = v29;
  v49 = &block_descriptor_0;
  v30 = _Block_copy(v47);

  [v23 remoteObjectProxyWithErrorHandler_];
  _Block_release(v30);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_53_1())
  {
    (v41)(v16, v1, v43);
    v31 = (v24 + 16) & ~v24;
    v32 = swift_allocObject();
    v26(v32 + v31, v16, v43);
    v33 = (v32 + ((v40 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = v45;
    v33[1] = v28;
    v50 = sub_1B106E89C;
    v51 = v32;
    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_12_2();
    v48 = v34;
    v49 = &block_descriptor_6_0;
    v35 = _Block_copy(v47);

    [v46 bag:v42 reply:v35];
    _Block_release(v35);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B1122E4C();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v37 = OUTLINED_FUNCTION_62(v36);
    *(v37 + 16) = xmmword_1B1133BA0;
    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = sub_1B106EAF4();
    OUTLINED_FUNCTION_4_4();
    *(v37 + 32) = v38;
    *(v37 + 40) = v39;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_75();
    sub_1B112284C();

    v45(0, 0);
  }

  (*(v44 + 8))(v1, v43);
  OUTLINED_FUNCTION_30();
}

void sub_1B109BE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B11217EC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1B109BEE8(uint64_t a1, uint64_t a2, const void *a3)
{
  v44 = a1;
  v5 = sub_1B11228AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - v10;
  v49 = swift_allocObject();
  *(v49 + 16) = a3;
  _Block_copy(a3);
  if (qword_1EDAD60C0 != -1)
  {
    swift_once();
  }

  v12 = sub_1B112296C();
  __swift_project_value_buffer(v12, qword_1EDAD60D0);
  v13 = sub_1B112293C();
  v14 = sub_1B1122DFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1B1064000, v13, v14, "force fetch bag", v15, 2u);
    v16 = v15;
    v9 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1B272EDD0](v16, -1, -1);
  }

  v47 = a3;

  if (qword_1EDAD5DF0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  v43 = v17;
  sub_1B112285C();
  v18 = *(a2 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v19 = *(v6 + 16);
  v48 = v11;
  v42 = v19;
  v19(v9, v11, v5);
  v20 = *(v6 + 80);
  v21 = swift_allocObject();
  v41 = v7;
  v22 = v9;
  v23 = v21;
  v24 = v49;
  *(v21 + 16) = sub_1B10A312C;
  *(v21 + 24) = v24;
  v45 = v5;
  v46 = v6;
  v25 = *(v6 + 32);
  v25(v21 + ((v20 + 32) & ~v20), v22, v5);
  v55 = sub_1B10A3730;
  v56 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1B108FBF8;
  v54 = &block_descriptor_131_0;
  v26 = _Block_copy(&aBlock);

  v27 = [v18 remoteObjectProxyWithErrorHandler_];
  _Block_release(v26);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (swift_dynamicCast())
  {
    v28 = v50;
    v29 = v45;
    v42(v22, v48, v45);
    v30 = (v20 + 16) & ~v20;
    v31 = (v41 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v25(v32 + v30, v22, v29);
    v33 = (v32 + v31);
    v34 = v49;
    *v33 = sub_1B10A312C;
    v33[1] = v34;
    v55 = sub_1B10A3738;
    v56 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1B106E750;
    v54 = &block_descriptor_138_0;
    v35 = _Block_copy(&aBlock);

    [v28 forceFetchBag:v44 reply:v35];
    _Block_release(v35);
    swift_unknownObjectRelease();
    v37 = v47;
    v36 = v48;
    v38 = v29;
  }

  else
  {
    v37 = v47;
    (*(v47 + 2))(v47, 0, 0);
    sub_1B1122E4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1B1133BA0;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = sub_1B106EAF4();
    strcpy((v39 + 32), "casting_failed");
    *(v39 + 47) = -18;
    v40 = v48;
    sub_1B112284C();

    v38 = v45;
    v36 = v40;
  }

  (*(v46 + 8))(v36, v38);

  _Block_release(v37);
}

void sub_1B109C504()
{
  OUTLINED_FUNCTION_41_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v54 = v6;
  v7 = sub_1B11228AC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - v15;
  if (qword_1EDAD60C0 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
  }

  v56 = v5;
  v17 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v17, qword_1EDAD60D0);
  v18 = sub_1B112293C();
  v19 = sub_1B1122DFC();
  if (OUTLINED_FUNCTION_60(v19))
  {
    v20 = OUTLINED_FUNCTION_37();
    *v20 = 0;
    _os_log_impl(&dword_1B1064000, v18, v19, "force fetch bag", v20, 2u);
    OUTLINED_FUNCTION_2_0();
  }

  v21 = v3;

  if (qword_1EDAD5DF0 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1EDAD5DF0);
  }

  v22 = qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  v53 = v22;
  sub_1B112285C();
  v23 = *(v1 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v24 = *(v9 + 16);
  v58 = v16;
  v52 = v24;
  (v24)(v14);
  v25 = *(v9 + 80);
  v26 = swift_allocObject();
  v50 = v11;
  v27 = v26;
  v28 = v14;
  v29 = v56;
  *(v26 + 16) = v56;
  *(v26 + 24) = v21;
  v57 = v9;
  v30 = *(v9 + 32);
  v51 = v28;
  v55 = v7;
  v30(v26 + ((v25 + 32) & ~v25));
  v63 = sub_1B10A29FC;
  v64 = v27;
  OUTLINED_FUNCTION_3_6();
  v60[1] = 1107296256;
  OUTLINED_FUNCTION_3();
  v61 = v31;
  v62 = &block_descriptor_12;
  v32 = _Block_copy(v60);

  v33 = [v23 remoteObjectProxyWithErrorHandler_];
  _Block_release(v32);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_53_1())
  {
    v53 = v59;
    v34 = v51;
    v35 = v55;
    v52(v51, v58, v55);
    v36 = v29;
    v37 = (v25 + 16) & ~v25;
    v38 = (v50 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    (v30)(v39 + v37, v34, v35);
    v40 = (v39 + v38);
    *v40 = v36;
    v40[1] = v21;
    v63 = sub_1B10A2A0C;
    v64 = v39;
    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_12_2();
    v61 = v41;
    v62 = &block_descriptor_18;
    v42 = _Block_copy(v60);

    [v53 forceFetchBag:v54 reply:v42];
    _Block_release(v42);
    swift_unknownObjectRelease();
    v43 = v58;
    v44 = v35;
  }

  else
  {
    v29(0, 0);
    sub_1B1122E4C();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v46 = OUTLINED_FUNCTION_62(v45);
    *(v46 + 16) = xmmword_1B1133BA0;
    *(v46 + 56) = MEMORY[0x1E69E6158];
    *(v46 + 64) = sub_1B106EAF4();
    OUTLINED_FUNCTION_4_4();
    *(v46 + 32) = v47;
    *(v46 + 40) = v48;
    OUTLINED_FUNCTION_9_2();
    v49 = v58;
    sub_1B112284C();

    v43 = v49;
    v44 = v55;
  }

  (*(v57 + 8))(v43, v44);
  OUTLINED_FUNCTION_30();
}

void sub_1B109C9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_66();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  if (qword_1EDAD60C0 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
  }

  v36 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v36, qword_1EDAD60D0);
  v37 = v35;
  v38 = sub_1B112293C();
  v39 = sub_1B1122DDC();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_40_0();
    v41 = OUTLINED_FUNCTION_55();
    a18 = v41;
    *v40 = 136315138;
    swift_getErrorValue();
    v42 = sub_1B11230FC();
    v44 = sub_1B10784E0(v42, v43, &a18);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1B1064000, v38, v39, "%s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  v33(0, v35);
  sub_1B1122E4C();
  if (qword_1EDAD5DF0 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1EDAD5DF0);
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
  v46 = OUTLINED_FUNCTION_64(v45);
  *(v46 + 16) = xmmword_1B1133CF0;
  v47 = MEMORY[0x1E69E6158];
  *(v46 + 56) = MEMORY[0x1E69E6158];
  v48 = sub_1B106EAF4();
  *(v46 + 64) = v48;
  *(v46 + 32) = 0xD000000000000011;
  *(v46 + 40) = 0x80000001B1136570;
  a18 = v35;
  v49 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
  v50 = sub_1B1122A7C();
  *(v46 + 96) = v47;
  *(v46 + 104) = v48;
  *(v46 + 72) = v50;
  *(v46 + 80) = v51;
  OUTLINED_FUNCTION_23_1();
  sub_1B112284C();

  OUTLINED_FUNCTION_48_1();
}

uint64_t sub_1B109CC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1B1122E4C();
  if (qword_1EDAD5DF0 != -1)
  {
    swift_once();
  }

  sub_1B112285C();
  return a4(a1, a2);
}

void sub_1B109CD0C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_1B109CD98()
{
  OUTLINED_FUNCTION_41_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v60 = v11;
  v62 = sub_1B11228AC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_37_1(&v54);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_45();
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  v19 = swift_allocObject();
  v19[2] = sub_1B10A314C;
  v19[3] = v18;
  v19[4] = v6;
  v19[5] = v4;
  v68 = v2;
  _Block_copy(v2);
  v66 = v18;

  v69 = v6;

  v65 = v4;
  v70 = [v10 queryId];
  if (qword_1EDAD5DF0 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1EDAD5DF0);
  }

  v20 = qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
  v21 = OUTLINED_FUNCTION_64(v58);
  *(v21 + 16) = xmmword_1B1133CF0;
  v22 = [v10 triggerEvent];
  v23 = MEMORY[0x1E69E6870];
  *(v21 + 56) = MEMORY[0x1E69E6810];
  *(v21 + 64) = v23;
  *(v21 + 32) = v22;
  v24 = [v10 queryId];
  v25 = MEMORY[0x1E69E7738];
  *(v21 + 96) = MEMORY[0x1E69E76D8];
  *(v21 + 104) = v25;
  *(v21 + 72) = v24;
  OUTLINED_FUNCTION_22_1();
  v59 = v20;
  OUTLINED_FUNCTION_32_1();
  sub_1B112284C();

  v63 = sub_1B10700E0();
  v61 = *(v8 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v26 = *(v13 + 16);
  v27 = v71;
  v64 = v0;
  v28 = v62;
  v56 = v26;
  (v26)(v71);
  v29 = *(v13 + 80);
  v30 = (v29 + 16) & ~v29;
  v54 = v15 + 7;
  v31 = (v15 + 7 + v30) & 0xFFFFFFFFFFFFFFF8;
  v57 = v10;
  v32 = swift_allocObject();
  v67 = v13;
  v55 = *(v13 + 32);
  v55(v32 + v30, v27, v28);
  OUTLINED_FUNCTION_29_0((v32 + v31));
  *(v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8)) = v70;
  v77 = sub_1B10A372C;
  v78 = v32;
  OUTLINED_FUNCTION_2_5();
  v74 = 1107296256;
  OUTLINED_FUNCTION_3();
  v75 = v33;
  v76 = &block_descriptor_188;
  v34 = _Block_copy(&v73);

  v35 = [v61 remoteObjectProxyWithErrorHandler_];
  _Block_release(v34);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_35_1())
  {
    v61 = v72;
    v36 = v71;
    v37 = v64;
    v56(v71, v64, v28);
    OUTLINED_FUNCTION_55_1();
    v38 = v28;
    v39 = swift_allocObject();
    *(v39 + 16) = v63;
    v55(v39 + ~v29, v36, v38);
    OUTLINED_FUNCTION_29_0((v39 + v13 + 16));
    v77 = sub_1B1070650;
    v78 = v39;
    v73 = MEMORY[0x1E69E9820];
    v74 = 1107296256;
    v75 = sub_1B1070468;
    v76 = &block_descriptor_195;
    v40 = _Block_copy(&v73);

    swift_unknownObjectRetain();

    [v61 request:v60 request:v57 reply:v40];
    _Block_release(v40);
    swift_unknownObjectRelease();
    v41 = v68;
    v42 = v38;
    v43 = v67;
    v44 = v37;
  }

  else
  {
    v42 = v28;
    sub_1B1122E4C();
    v45 = OUTLINED_FUNCTION_62(v58);
    *(v45 + 16) = xmmword_1B1133BA0;
    *(v45 + 56) = MEMORY[0x1E69E6158];
    *(v45 + 64) = sub_1B106EAF4();
    OUTLINED_FUNCTION_4_4();
    *(v45 + 32) = v46;
    *(v45 + 40) = v47;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_32_1();
    v44 = v64;
    sub_1B112284C();

    OUTLINED_FUNCTION_50_1();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v49 = Strong;
      v41 = v68;
      _Block_copy(v68);

      v50 = OUTLINED_FUNCTION_67();
      v51(v50);
      _Block_release(v41);
    }

    else
    {
      v41 = v68;
      v52 = OUTLINED_FUNCTION_67();
      v53(v52);
    }

    v43 = v67;
  }

  swift_unknownObjectRelease();
  (*(v43 + 8))(v44, v42);

  _Block_release(v41);

  OUTLINED_FUNCTION_30();
}

void sub_1B109D408()
{
  OUTLINED_FUNCTION_41_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v69 = v8;
  v10 = v9;
  v60 = v11;
  v12 = sub_1B11228AC();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_37_1(&v53);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  v21 = swift_allocObject();
  v59 = v7;
  *(v21 + 2) = v7;
  *(v21 + 3) = v5;
  *(v21 + 4) = v3;
  *(v21 + 5) = v1;
  v62 = v21;
  v68 = v5;

  v67 = v3;

  v65 = v1;
  v61 = [v10 queryId];
  if (qword_1EDAD5DF0 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1EDAD5DF0);
  }

  v22 = qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
  v23 = OUTLINED_FUNCTION_64(v57);
  *(v23 + 16) = xmmword_1B1133CF0;
  v24 = [v10 triggerEvent];
  v25 = MEMORY[0x1E69E6870];
  *(v23 + 56) = MEMORY[0x1E69E6810];
  *(v23 + 64) = v25;
  *(v23 + 32) = v24;
  v26 = [v10 queryId];
  v27 = MEMORY[0x1E69E7738];
  *(v23 + 96) = MEMORY[0x1E69E76D8];
  *(v23 + 104) = v27;
  *(v23 + 72) = v26;
  OUTLINED_FUNCTION_22_1();
  v58 = v22;
  OUTLINED_FUNCTION_32_1();
  sub_1B112284C();

  v64 = sub_1B10700E0();
  v28 = *&v69[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection];
  v56 = v10;
  v29 = v70;
  v55 = *(v14 + 16);
  v55(v70, v20, v12);
  v30 = *(v14 + 80);
  v31 = (v30 + 16) & ~v30;
  v69 = v20;
  v53 = v16 + 7;
  v32 = (v16 + 7 + v31) & 0xFFFFFFFFFFFFFFF8;
  v33 = v12;
  v34 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v66 = v14;
  v36 = *(v14 + 32);
  v63 = v33;
  v54 = v36;
  v36(v35 + v31, v29, v33);
  v37 = (v35 + v32);
  v38 = v61;
  v39 = v62;
  *v37 = sub_1B10A3694;
  v37[1] = v39;
  *(v35 + v34) = v38;
  v76 = sub_1B10A372C;
  v77 = v35;
  OUTLINED_FUNCTION_2_5();
  v73 = 1107296256;
  OUTLINED_FUNCTION_3();
  v74 = v40;
  v75 = &block_descriptor_264;
  v41 = _Block_copy(&v72);

  v42 = [v28 remoteObjectProxyWithErrorHandler_];
  _Block_release(v41);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_35_1())
  {
    v59 = v71;
    v43 = v39;
    v44 = v70;
    v45 = v63;
    v55(v70, v69, v63);
    OUTLINED_FUNCTION_55_1();
    v46 = swift_allocObject();
    *(v46 + 16) = v64;
    v54(v46 + ~v30, v44, v45);
    v47 = (v46 + v14 + 16);
    *v47 = sub_1B10A3694;
    v47[1] = v43;
    v76 = sub_1B1070650;
    v77 = v46;
    v72 = MEMORY[0x1E69E9820];
    v73 = 1107296256;
    v74 = sub_1B1070468;
    v75 = &block_descriptor_271;
    v48 = _Block_copy(&v72);

    swift_unknownObjectRetain();

    [v59 request:v60 request:v56 reply:v48];
    _Block_release(v48);
    swift_unknownObjectRelease();
    v49 = v69;
  }

  else
  {
    sub_1B1122E4C();
    v50 = OUTLINED_FUNCTION_62(v57);
    *(v50 + 16) = xmmword_1B1133BA0;
    *(v50 + 56) = MEMORY[0x1E69E6158];
    *(v50 + 64) = sub_1B106EAF4();
    OUTLINED_FUNCTION_4_4();
    *(v50 + 32) = v51;
    *(v50 + 40) = v52;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_32_1();
    v49 = v69;
    sub_1B112284C();

    OUTLINED_FUNCTION_50_1();
    swift_beginAccess();

    (v59)(0, 0);
    v45 = v63;
  }

  swift_unknownObjectRelease();
  (*(v66 + 8))(v49, v45);

  OUTLINED_FUNCTION_30();
}

id sub_1B109DA3C(uint64_t a1, void *a2, char *a3, const void *a4)
{
  v57 = a3;
  v54 = a1;
  v6 = sub_1B11228AC();
  v60 = *(v6 - 8);
  v7 = *(v60 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v59 = a4;
  _Block_copy(a4);
  v55 = [a2 queryId];
  if (qword_1EDAD5DF0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B1133CF0;
  v15 = [a2 triggerEvent];
  v16 = MEMORY[0x1E69E6870];
  *(v14 + 56) = MEMORY[0x1E69E6810];
  *(v14 + 64) = v16;
  *(v14 + 32) = v15;
  v17 = [a2 queryId];
  v18 = MEMORY[0x1E69E7738];
  *(v14 + 96) = MEMORY[0x1E69E76D8];
  *(v14 + 104) = v18;
  *(v14 + 72) = v17;
  v53 = v13;
  sub_1B112284C();

  v58 = sub_1B10700E0();
  v19 = *&v57[OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection];
  v20 = v60;
  v48 = *(v60 + 16);
  v48(v9, v11, v6);
  v21 = *(v20 + 80);
  v51 = a2;
  v22 = (v21 + 16) & ~v21;
  v46 = v7 + 7;
  v57 = v11;
  v23 = (v7 + 7 + v22) & 0xFFFFFFFFFFFFFFF8;
  v49 = v21;
  v24 = swift_allocObject();
  v25 = *(v20 + 32);
  v50 = v9;
  v56 = v6;
  v47 = v25;
  v25(v24 + v22, v9, v6);
  v26 = (v24 + v23);
  *v26 = sub_1B10728B8;
  v26[1] = v12;
  v27 = v55;
  *(v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8)) = v55;
  v66 = sub_1B10A372C;
  v67 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v63 = 1107296256;
  v64 = sub_1B108FBF8;
  v65 = &block_descriptor_114;
  v28 = _Block_copy(&aBlock);

  v29 = [v19 remoteObjectProxyWithErrorHandler_];
  _Block_release(v28);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  v30 = v12;
  v31 = v27;
  if (swift_dynamicCast())
  {
    v33 = v49;
    v32 = v50;
    v53 = v61;
    v34 = v56;
    v35 = v57;
    v48(v50, v57, v56);
    v36 = (v33 + 24) & ~v33;
    v37 = v31;
    v38 = (v46 + v36) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v39 + 16) = v58;
    v47(v39 + v36, v32, v34);
    v40 = (v39 + v38);
    v31 = v37;
    *v40 = sub_1B10728B8;
    v40[1] = v30;
    v66 = sub_1B1070650;
    v67 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v63 = 1107296256;
    v64 = sub_1B1070468;
    v65 = &block_descriptor_121;
    v41 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();

    [v53 request:v54 request:v51 reply:v41];
    _Block_release(v41);
    swift_unknownObjectRelease();
    v42 = v59;
  }

  else
  {
    sub_1B1122E4C();
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1B1133BA0;
    *(v43 + 56) = MEMORY[0x1E69E6158];
    *(v43 + 64) = sub_1B106EAF4();
    strcpy((v43 + 32), "casting_failed");
    *(v43 + 47) = -18;
    v35 = v57;
    sub_1B112284C();

    v42 = v59;
    (*(v59 + 2))(v59, v27, 0, 0);
    v34 = v56;
  }

  swift_unknownObjectRelease();
  (*(v60 + 8))(v35, v34);

  _Block_release(v42);
  return v31;
}

void sub_1B109E0D8()
{
  OUTLINED_FUNCTION_41_1();
  v1 = v0;
  v61 = v2;
  v62 = v3;
  v5 = v4;
  v58 = v6;
  v7 = sub_1B11228AC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_37_1(&v51);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v64 = [v5 queryId];
  if (qword_1EDAD5DF0 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1EDAD5DF0);
  }

  v16 = qword_1EDAD64F0;
  sub_1B112287C();
  sub_1B1122E5C();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
  v17 = OUTLINED_FUNCTION_64(v55);
  *(v17 + 16) = xmmword_1B1133CF0;
  v18 = [v5 triggerEvent];
  v19 = MEMORY[0x1E69E6870];
  *(v17 + 56) = MEMORY[0x1E69E6810];
  *(v17 + 64) = v19;
  *(v17 + 32) = v18;
  v20 = [v5 queryId];
  v21 = MEMORY[0x1E69E7738];
  *(v17 + 96) = MEMORY[0x1E69E76D8];
  *(v17 + 104) = v21;
  *(v17 + 72) = v20;
  OUTLINED_FUNCTION_22_1();
  v57 = v16;
  OUTLINED_FUNCTION_32_1();
  sub_1B112284C();

  v56 = v5;
  v60 = sub_1B10700E0();
  v22 = *(v1 + OBJC_IVAR____TtC10CoreParsec15PARSearchClient_connection);
  v23 = v9;
  v24 = v66;
  v54 = *(v9 + 16);
  v54(v66, v15, v7);
  v65 = v15;
  v25 = *(v9 + 80);
  v26 = (v25 + 16) & ~v25;
  v52 = v11 + 7;
  v27 = (v11 + 7 + v26) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v63 = v23;
  v30 = *(v23 + 32);
  v59 = v7;
  v53 = v30;
  v30(v29 + v26, v24, v7);
  v31 = (v29 + v27);
  v33 = v61;
  v32 = v62;
  *v31 = v61;
  v31[1] = v32;
  v34 = v64;
  *(v29 + v28) = v64;
  v72 = sub_1B10A2A24;
  v73 = v29;
  OUTLINED_FUNCTION_2_5();
  v69 = 1107296256;
  OUTLINED_FUNCTION_3();
  v70 = v35;
  v71 = &block_descriptor_24;
  v36 = _Block_copy(&v68);

  v37 = [v22 remoteObjectProxyWithErrorHandler_];
  _Block_release(v36);
  sub_1B1122F4C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739E40, &qword_1B11345E0);
  if (OUTLINED_FUNCTION_35_1())
  {
    v38 = v33;
    v39 = v66;
    v57 = v67;
    v40 = v59;
    v54(v66, v65, v59);
    v41 = (v25 + 24) & ~v25;
    v42 = (v52 + v41) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    *(v43 + 16) = v60;
    v53(v43 + v41, v39, v40);
    v44 = (v43 + v42);
    *v44 = v38;
    v44[1] = v32;
    v72 = sub_1B1070658;
    v73 = v43;
    OUTLINED_FUNCTION_2_5();
    v69 = 1107296256;
    v70 = sub_1B1070468;
    v71 = &block_descriptor_30;
    v45 = _Block_copy(&v68);

    swift_unknownObjectRetain();

    [v57 request:v58 request:v56 reply:v45];
    _Block_release(v45);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B1122E4C();
    v46 = OUTLINED_FUNCTION_62(v55);
    *(v46 + 16) = xmmword_1B1133BA0;
    *(v46 + 56) = MEMORY[0x1E69E6158];
    *(v46 + 64) = sub_1B106EAF4();
    OUTLINED_FUNCTION_4_4();
    *(v46 + 32) = v47;
    *(v46 + 40) = v48;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_32_1();
    sub_1B112284C();

    v33(v34, 0, 0);
  }

  swift_unknownObjectRelease();
  v49 = OUTLINED_FUNCTION_23_0();
  v50(v49);
  OUTLINED_FUNCTION_30();
}

void sub_1B109E624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_66();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v53 = v34;
  v36 = v35;
  if (qword_1EDAD60C0 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
  }

  v37 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v37, qword_1EDAD60D0);
  v38 = v36;
  v39 = sub_1B112293C();
  v40 = sub_1B1122DDC();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_40_0();
    v42 = OUTLINED_FUNCTION_55();
    a18 = v42;
    *v41 = 136315138;
    swift_getErrorValue();
    v43 = sub_1B11230FC();
    v45 = sub_1B10784E0(v43, v44, &a18);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_1B1064000, v39, v40, "%s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  sub_1B1122E4C();
  if (qword_1EDAD5DF0 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1EDAD5DF0);
  }

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
  v47 = OUTLINED_FUNCTION_64(v46);
  *(v47 + 16) = xmmword_1B1133CF0;
  v48 = MEMORY[0x1E69E6158];
  *(v47 + 56) = MEMORY[0x1E69E6158];
  v49 = sub_1B106EAF4();
  *(v47 + 64) = v49;
  *(v47 + 32) = 0xD000000000000011;
  *(v47 + 40) = 0x80000001B1136570;
  a18 = v36;
  v50 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
  v51 = sub_1B1122A7C();
  *(v47 + 96) = v48;
  *(v47 + 104) = v49;
  *(v47 + 72) = v51;
  *(v47 + 80) = v52;
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_32_1();
  sub_1B112284C();

  v53(v33, 0, v36);
  OUTLINED_FUNCTION_48_1();
}

uint64_t sub_1B109E998(uint64_t a1, uint64_t a2)
{
  result = sub_1B106AE3C();
  if (result)
  {
    v8[4] = a1;
    v8[5] = a2;
    OUTLINED_FUNCTION_14_1();
    v8[1] = 1107296256;
    v8[2] = sub_1B109EA48;
    v8[3] = &block_descriptor_33;
    v5 = _Block_copy(v8);

    v6 = OUTLINED_FUNCTION_1();
    [v6 v7];
    _Block_release(v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B109EA48(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CE8, &qword_1B1134318);
    v2 = sub_1B1122B8C();
  }

  v3(v2);
}

void sub_1B109EB58(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CE8, &qword_1B1134318);
    v3 = sub_1B1122B7C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_1B109EBDC()
{
  OUTLINED_FUNCTION_57();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1B11228AC();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_39_0();
  v16 = sub_1B106AE3C();
  if (v16)
  {
    v28 = v16;
    v29 = v4;
    v30 = v2;
    if (qword_1EDAD5DF0 != -1)
    {
      OUTLINED_FUNCTION_5_0(&qword_1EDAD5DF0);
    }

    qword_1EDAD64F0;
    sub_1B112287C();
    sub_1B1122E5C();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v18 = OUTLINED_FUNCTION_62(v17);
    *(v18 + 16) = xmmword_1B1133BA0;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1B106EAF4();
    *(v18 + 32) = v8;
    *(v18 + 40) = v6;

    OUTLINED_FUNCTION_23_1();
    sub_1B112284C();

    v19 = sub_1B1122A4C();
    (*(v11 + 16))(&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v9);
    v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v21 = swift_allocObject();
    (*(v11 + 32))(v21 + v20, &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    v22 = (v21 + ((v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    v23 = v30;
    *v22 = v29;
    v22[1] = v23;
    v31[4] = sub_1B10A2A28;
    v31[5] = v21;
    OUTLINED_FUNCTION_5_5();
    v31[1] = 1107296256;
    v31[2] = sub_1B109EF84;
    v31[3] = &block_descriptor_39_0;
    v24 = _Block_copy(v31);

    [v28 fileHandleAndAttributesForResource:v19 completion:v24];
    _Block_release(v24);
    swift_unknownObjectRelease();

    v25 = OUTLINED_FUNCTION_0_5();
    v26(v25);
  }

  OUTLINED_FUNCTION_4_2();
}

uint64_t sub_1B109EEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B1122E4C();
  if (qword_1EDAD5DF0 != -1)
  {
    swift_once();
  }

  sub_1B112285C();
  return a5(a1, a2, a3);
}

uint64_t sub_1B109EF84(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_1B11229EC();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a4;
  v6(a2, v7, a4);
}

void sub_1B109F104(uint64_t a1, void (**a2)(void, void))
{
  v3 = sub_1B11228AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  _Block_copy(a2);
  v11 = sub_1B106AE3C();
  if (v11)
  {
    v12 = v11;
    if (qword_1EDAD5DF0 != -1)
    {
      swift_once();
    }

    v13 = qword_1EDAD64F0;
    sub_1B112287C();
    sub_1B1122E5C();
    sub_1B112285C();
    (*(v4 + 16))(v7, v9, v3);
    v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v15 = (v5 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    (*(v4 + 32))(v16 + v14, v7, v3);
    v17 = (v16 + v15);
    *v17 = sub_1B10A3090;
    v17[1] = v10;
    aBlock[4] = sub_1B10A3728;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B109F844;
    aBlock[3] = &block_descriptor_98;
    v18 = _Block_copy(aBlock);

    [v12 getImageMap_];
    _Block_release(v18);
    swift_unknownObjectRelease();
    (*(v4 + 8))(v9, v3);

    _Block_release(a2);
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      swift_once();
    }

    v19 = sub_1B112296C();
    __swift_project_value_buffer(v19, qword_1EDAD60D0);
    v20 = sub_1B112293C();
    v21 = sub_1B1122DEC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B1064000, v20, v21, "at getImageMap: remoteObjectProxyWithErrorHandler does not implement PARDaemonXPC", v22, 2u);
      MEMORY[0x1B272EDD0](v22, -1, -1);
    }

    a2[2](a2, 0);

    _Block_release(a2);
  }
}

void sub_1B109F4D8()
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_68();
  v2 = sub_1B11228AC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - v10;
  v12 = sub_1B106AE3C();
  if (v12)
  {
    v13 = v12;
    if (qword_1EDAD5DF0 != -1)
    {
      OUTLINED_FUNCTION_5_0(&qword_1EDAD5DF0);
    }

    v14 = qword_1EDAD64F0;
    sub_1B112287C();
    sub_1B1122E5C();
    sub_1B112285C();
    (*(v4 + 16))(v9, v11, v2);
    v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    (*(v4 + 32))(v17 + v15, v9, v2);
    v18 = (v17 + v16);
    *v18 = v1;
    v18[1] = v0;
    v28[4] = sub_1B10A2AC4;
    v28[5] = v17;
    OUTLINED_FUNCTION_5_5();
    v28[1] = 1107296256;
    v28[2] = sub_1B109F844;
    v28[3] = &block_descriptor_45_0;
    v19 = _Block_copy(v28);

    [v13 getImageMap_];
    _Block_release(v19);
    swift_unknownObjectRelease();
    v20 = OUTLINED_FUNCTION_23_0();
    v21(v20);
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
    }

    v22 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v22, qword_1EDAD60D0);
    v23 = sub_1B112293C();
    v24 = sub_1B1122DEC();
    if (OUTLINED_FUNCTION_54_1(v24))
    {
      v25 = OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_78(v25);
      OUTLINED_FUNCTION_33_1(&dword_1B1064000, v26, v27, "at getImageMap: remoteObjectProxyWithErrorHandler does not implement PARDaemonXPC");
      OUTLINED_FUNCTION_40_1();
    }

    v1(0);
  }

  OUTLINED_FUNCTION_4_2();
}

uint64_t sub_1B109F798(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1B1122E4C();
  if (qword_1EDAD5DF0 != -1)
  {
    swift_once();
  }

  sub_1B112285C();
  return a3(a1);
}

uint64_t sub_1B109F844(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1B11229EC();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

void sub_1B109F92C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B11229DC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_1B109F9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t aBlock, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_66();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  if (sub_1B106AE3C())
  {
    v56 = v35;
    v38 = sub_1B1099EF8(v37);
    v39 = 0;
    v40 = MEMORY[0x1E69E7CC0];
    while (v38 != v39)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1B272DFA0](v39, v37);
      }

      else
      {
        if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v41 = *(v37 + 8 * v39 + 32);
      }

      v42 = v41;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      v43 = PAREngagedResult.encoded()();
      v45 = v44;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1B10A24E8(0, *(v40 + 2) + 1, 1, v40);
      }

      v47 = *(v40 + 2);
      v46 = *(v40 + 3);
      if (v47 >= v46 >> 1)
      {
        v40 = sub_1B10A24E8((v46 > 1), v47 + 1, 1, v40);
      }

      *(v40 + 2) = v47 + 1;
      v48 = &v40[16 * v47];
      *(v48 + 4) = v43;
      *(v48 + 5) = v45;
      ++v39;
    }

    v49 = sub_1B1122B7C();

    if (v56)
    {
      a17 = v56;
      a18 = v33;
      OUTLINED_FUNCTION_27_1();
      OUTLINED_FUNCTION_28_1();
      a15 = v50;
      a16 = &block_descriptor_253;
      v51 = _Block_copy(&aBlock);
    }

    else
    {
      v51 = 0;
    }

    v54 = OUTLINED_FUNCTION_1();
    [v54 v55];
    _Block_release(v51);
    swift_unknownObjectRelease();

    goto LABEL_22;
  }

  if (!v35)
  {
LABEL_22:
    OUTLINED_FUNCTION_48_1();
    return;
  }

  sub_1B10A2AC8();
  swift_allocError();
  v35();
  OUTLINED_FUNCTION_48_1();
}

void sub_1B109FBD4()
{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_45();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  _Block_copy(v0);
  if (sub_1B106AE3C())
  {
    v2 = sub_1B1122A4C();
    OUTLINED_FUNCTION_50_0();
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1B10A3744;
    *(v3 + 24) = v1;
    v19[4] = sub_1B10A3144;
    v19[5] = v3;
    OUTLINED_FUNCTION_14_1();
    v19[1] = 1107296256;
    OUTLINED_FUNCTION_16_2();
    v19[2] = v4;
    v19[3] = &block_descriptor_175;
    v5 = _Block_copy(v19);

    v6 = OUTLINED_FUNCTION_45_1();
    [v6 v7];
    _Block_release(v5);

    swift_unknownObjectRelease();

    _Block_release(v0);
    OUTLINED_FUNCTION_88();
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
    }

    v8 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v8, qword_1EDAD60D0);
    v9 = sub_1B112293C();
    v10 = sub_1B1122DDC();
    if (OUTLINED_FUNCTION_54_1(v10))
    {
      v11 = OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_78(v11);
      OUTLINED_FUNCTION_33_1(&dword_1B1064000, v12, v13, "Invalid XPC remote instance");
      OUTLINED_FUNCTION_40_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
    v14 = sub_1B1122B7C();
    v15 = OUTLINED_FUNCTION_44_1();
    v16(v15, v14);

    OUTLINED_FUNCTION_88();

    _Block_release(v17);
  }
}

uint64_t sub_1B109FE1C(void *a1, char *a2)
{
  if (a1)
  {
    v3 = a1;
    if (qword_1EDAD60C0 != -1)
    {
LABEL_30:
      swift_once();
    }

    v4 = sub_1B112296C();
    __swift_project_value_buffer(v4, qword_1EDAD60D0);

    v5 = sub_1B112293C();
    v6 = sub_1B1122DCC();
    v25 = a2;
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3[2];

      _os_log_impl(&dword_1B1064000, v5, v6, "Received %ld recent results", v7, 0xCu);
      MEMORY[0x1B272EDD0](v7, -1, -1);
    }

    else
    {
    }

    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CC0];
    v15 = v3[2];
    v16 = v3 + 5;
    v3 = &unk_1EDAD5570;
    v24 = v16;
LABEL_12:
    a2 = &v16[2 * v13];
    while (v15 != v13)
    {
      if (v13 >= v15)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_29;
      }

      v19 = *(a2 - 1);
      v18 = *a2;
      sub_1B1066864(0, &unk_1EDAD5570, off_1E7AC5108);
      sub_1B1070FD4(v19, v18);
      ++v13;
      a2 += 16;
      if (PAREngagedResult.init(encoded:)())
      {
        MEMORY[0x1B272DB50]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B1122BAC();
        }

        sub_1B1122BCC();
        v14 = v26;
        v13 = v17;
        v16 = v24;
        goto LABEL_12;
      }
    }

    v20 = sub_1B112293C();
    v21 = sub_1B1122DCC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = sub_1B1099EF8(v14);

      _os_log_impl(&dword_1B1064000, v20, v21, "%ld recent results deserialized", v22, 0xCu);
      MEMORY[0x1B272EDD0](v22, -1, -1);
    }

    else
    {
    }

    if (v14 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
      v23 = sub_1B112305C();
    }

    else
    {
      sub_1B11230BC();
      v23 = v14;
    }

    (v25)(v23);
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      swift_once();
    }

    v8 = sub_1B112296C();
    __swift_project_value_buffer(v8, qword_1EDAD60D0);
    v9 = sub_1B112293C();
    v10 = sub_1B1122DDC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B1064000, v9, v10, "Received nil for topEngagedResults", v11, 2u);
      MEMORY[0x1B272EDD0](v11, -1, -1);
    }

    return (a2)(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1B10A0268(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1B1122B8C();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

void sub_1B10A02E4()
{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_45();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  _Block_copy(v0);
  if (sub_1B106AE3C())
  {
    v2 = sub_1B1122A4C();
    OUTLINED_FUNCTION_50_0();
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1B10A3134;
    *(v3 + 24) = v1;
    v19[4] = sub_1B10A313C;
    v19[5] = v3;
    OUTLINED_FUNCTION_14_1();
    v19[1] = 1107296256;
    OUTLINED_FUNCTION_16_2();
    v19[2] = v4;
    v19[3] = &block_descriptor_165;
    v5 = _Block_copy(v19);

    v6 = OUTLINED_FUNCTION_45_1();
    [v6 v7];
    _Block_release(v5);

    swift_unknownObjectRelease();

    _Block_release(v0);
    OUTLINED_FUNCTION_88();
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
    }

    v8 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v8, qword_1EDAD60D0);
    v9 = sub_1B112293C();
    v10 = sub_1B1122DDC();
    if (OUTLINED_FUNCTION_54_1(v10))
    {
      v11 = OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_78(v11);
      OUTLINED_FUNCTION_33_1(&dword_1B1064000, v12, v13, "Invalid XPC remote instance");
      OUTLINED_FUNCTION_40_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
    v14 = sub_1B1122B7C();
    v15 = OUTLINED_FUNCTION_44_1();
    v16(v15, v14);

    OUTLINED_FUNCTION_88();

    _Block_release(v17);
  }
}

void sub_1B10A052C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (sub_1B106AE3C())
  {
    v13 = sub_1B1122A4C();
    OUTLINED_FUNCTION_50_0();
    v14 = swift_allocObject();
    *(v14 + 16) = a5;
    *(v14 + 24) = a6;
    v29 = a8;
    v30 = v14;
    OUTLINED_FUNCTION_9_1();
    v26 = 1107296256;
    OUTLINED_FUNCTION_16_2();
    v27 = v15;
    v28 = a9;
    v16 = _Block_copy(aBlock);

    v17 = OUTLINED_FUNCTION_45_1();
    [v17 v18];
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
    }

    v19 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v19, qword_1EDAD60D0);
    v20 = sub_1B112293C();
    v21 = sub_1B1122DDC();
    if (OUTLINED_FUNCTION_54_1(v21))
    {
      v22 = OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_78(v22);
      OUTLINED_FUNCTION_33_1(&dword_1B1064000, v23, v24, "Invalid XPC remote instance");
      OUTLINED_FUNCTION_40_1();
    }

    a5(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1B10A06B0(uint64_t a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v19 = MEMORY[0x1E69E7CC0];
    v5 = *(a1 + 16);
    v6 = a1 + 40;
    v17 = a1 + 40;
LABEL_3:
    v7 = (v6 + 16 * v3);
    while (v5 != v3)
    {
      if (v3 >= v5)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_22;
      }

      v10 = *(v7 - 1);
      v9 = *v7;
      sub_1B1066864(0, &unk_1EDAD5570, off_1E7AC5108);
      sub_1B1070FD4(v10, v9);
      ++v3;
      v7 += 2;
      if (PAREngagedResult.init(encoded:)())
      {
        MEMORY[0x1B272DB50]();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B1122BAC();
        }

        sub_1B1122BCC();
        v4 = v19;
        v3 = v8;
        v6 = v17;
        goto LABEL_3;
      }
    }

    if (!(v4 >> 62))
    {

      sub_1B11230BC();
      v11 = v4;
      goto LABEL_13;
    }

LABEL_23:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739F50, &qword_1B1134630);
    v11 = sub_1B112305C();

LABEL_13:

    a2(v11);
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B112296C();
    __swift_project_value_buffer(v13, qword_1EDAD60D0);
    v14 = sub_1B112293C();
    v15 = sub_1B1122DDC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B1064000, v14, v15, "Received nil for allEngagedResults", v16, 2u);
      MEMORY[0x1B272EDD0](v16, -1, -1);
    }

    return (a2)(MEMORY[0x1E69E7CC0]);
  }
}

void sub_1B10A0964()
{
  v0 = sub_1B106AE3C();
  if (v0)
  {
    v1 = v0;
    v2 = sub_1B11218EC();
    v3 = sub_1B11218EC();
    [v1 clearEngagementsFromDate:v2 toDate:v3];
    swift_unknownObjectRelease();
  }
}

void sub_1B10A0B40()
{
  OUTLINED_FUNCTION_25_1();
  v1 = sub_1B106AE3C();
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_69();
    v3 = sub_1B1122A4C();
    [v2 clearEngagementsWithTitle:v3 type:v0];
    swift_unknownObjectRelease();
  }
}

void sub_1B10A0C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t aBlock, uint64_t a14, uint64_t a15, void *a16, uint64_t (*a17)(uint64_t a1), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_66();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  if (sub_1B106AE3C())
  {
    v38 = sub_1B1099EF8(v37);
    v39 = 0;
    v40 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v38 == v39)
      {
        v49 = sub_1B1122B7C();

        OUTLINED_FUNCTION_50_0();
        v50 = swift_allocObject();
        *(v50 + 16) = v35;
        *(v50 + 24) = v33;
        a17 = sub_1B10A2B1C;
        a18 = v50;
        OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_28_1();
        a15 = v51;
        a16 = &block_descriptor_51;
        v52 = _Block_copy(&aBlock);
        sub_1B1098EF0(v35, v33);

        v53 = OUTLINED_FUNCTION_1();
        [v53 v54];
        _Block_release(v52);
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      if ((v37 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1B272DFA0](v39, v37);
      }

      else
      {
        if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v41 = *(v37 + 8 * v39 + 32);
      }

      v42 = v41;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      v43 = PAREngagedResult.encoded()();
      v45 = v44;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1B10A24E8(0, *(v40 + 2) + 1, 1, v40);
      }

      v47 = *(v40 + 2);
      v46 = *(v40 + 3);
      if (v47 >= v46 >> 1)
      {
        v40 = sub_1B10A24E8((v46 > 1), v47 + 1, 1, v40);
      }

      *(v40 + 2) = v47 + 1;
      v48 = &v40[16 * v47];
      *(v48 + 4) = v43;
      *(v48 + 5) = v45;
      ++v39;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else if (v35)
  {
    sub_1B10A2AC8();
    swift_allocError();
    v35();
    OUTLINED_FUNCTION_48_1();
  }

  else
  {
LABEL_15:
    OUTLINED_FUNCTION_48_1();
  }
}

uint64_t sub_1B10A0E94(uint64_t result, void (*a2)(uint64_t), uint64_t a3)
{
  if (a2)
  {
    v5 = result;

    a2(v5);

    return sub_1B1099F00(a2, a3);
  }

  return result;
}

void *sub_1B10A0FEC()
{
  OUTLINED_FUNCTION_68();
  result = sub_1B106AE3C();
  if (result)
  {
    [result updateParametersForSmartSearchV1:v1 smartSearchV2:v0];

    return swift_unknownObjectRelease();
  }

  return result;
}

void PARSearchClient.bagDidLoad(_:error:)()
{
  OUTLINED_FUNCTION_57();
  v3 = v2;
  v5 = v4;
  sub_1B112298C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_11_1();
  if (!v3)
  {
    if (v5)
    {
      v54 = v9;
      v20 = v5;
      v21 = sub_1B10A2988(v20);
      v23 = 0x69737265766F6E5BLL;
      if (v22)
      {
        v23 = v21;
      }

      v53 = v23;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = 0xEB000000005D6E6FLL;
      }

      if (qword_1EDAD60C0 != -1)
      {
        OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
      }

      v25 = sub_1B112296C();
      __swift_project_value_buffer(v25, qword_1EDAD60D0);
      v26 = v20;
      v27 = v0;

      v28 = sub_1B112293C();
      v29 = sub_1B1122DFC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v51 = v29;
        v50 = swift_slowAlloc();
        v52 = OUTLINED_FUNCTION_55();
        v56[0] = v52;
        *v30 = 138412802;
        *(v30 + 4) = v27;
        *v50 = v27;
        *(v30 + 12) = 2080;
        v31 = v27;
        v32 = v28;
        v33 = sub_1B10784E0(v53, v24, v56);

        *(v30 + 14) = v33;
        *(v30 + 22) = 1024;
        LODWORD(v33) = [v26 isEnabled];

        *(v30 + 24) = v33;
        _os_log_impl(&dword_1B1064000, v32, v51, "%@ got bag %s enabled %{BOOL}d", v30, 0x1Cu);
        sub_1B1067964(v50, &qword_1EB739E58, qword_1B11345F0);
        OUTLINED_FUNCTION_2_0();
        __swift_destroy_boxed_opaque_existential_1(v52);
        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_2_0();
      }

      else
      {
      }

      OUTLINED_FUNCTION_50_0();
      v40 = swift_allocObject();
      *(v40 + 16) = v27;
      *(v40 + 24) = v26;
      v56[4] = sub_1B10A2B24;
      v56[5] = v40;
      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_13_2(COERCE_DOUBLE(1107296256));
      v56[2] = v41;
      v56[3] = &block_descriptor_57;
      v42 = _Block_copy(v56);
      v43 = v26;
      v44 = v27;
      sub_1B112299C();
      OUTLINED_FUNCTION_17_1();
      sub_1B1067610(v45, v46, MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB73A1E8, &unk_1B11348D0);
      sub_1B1067F54();
      OUTLINED_FUNCTION_20_1();
      sub_1B1122F5C();
      v47 = OUTLINED_FUNCTION_60_0();
      MEMORY[0x1B272DE10](v47);
      _Block_release(v42);

      v48 = OUTLINED_FUNCTION_0_5();
      v49(v48);
      (*(v54 + 8))(v1, v7);

      goto LABEL_28;
    }

    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
    }

    v36 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v36, qword_1EDAD60D0);
    v55 = sub_1B112293C();
    v37 = sub_1B1122DDC();
    if (os_log_type_enabled(v55, v37))
    {
      v38 = OUTLINED_FUNCTION_37();
      *v38 = 0;
      _os_log_impl(&dword_1B1064000, v55, v37, "nil bag", v38, 2u);
      OUTLINED_FUNCTION_2_0();
    }

    OUTLINED_FUNCTION_4_2();

LABEL_18:

    return;
  }

  v10 = v3;
  if (qword_1EDAD60C0 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
  }

  v11 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v11, qword_1EDAD60D0);
  v12 = v3;
  v13 = sub_1B112293C();
  v14 = sub_1B1122DDC();

  if (!os_log_type_enabled(v13, v14))
  {

    OUTLINED_FUNCTION_4_2();

    goto LABEL_18;
  }

  v15 = OUTLINED_FUNCTION_40_0();
  v16 = OUTLINED_FUNCTION_55();
  v56[0] = v16;
  *v15 = 136315138;
  swift_getErrorValue();
  v17 = sub_1B11230FC();
  v19 = sub_1B10784E0(v17, v18, v56);

  *(v15 + 4) = v19;
  _os_log_impl(&dword_1B1064000, v13, v14, "error loading bag %s", v15, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_2_0();

LABEL_28:
  OUTLINED_FUNCTION_4_2();
}

void sub_1B10A16CC(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC10CoreParsec15PARSearchClient_sessions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = *(v5 + 16);
  v7 = v5 + 32;

  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      return;
    }

    if (i >= *(v5 + 16))
    {
      break;
    }

    sub_1B106752C();
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1B1067964(&v11, &qword_1EB73A298, &qword_1B1134BE0);
    if (Strong)
    {
      v10 = a2;
      sub_1B106ECF0(a2);
    }

    v7 += 8;
  }

  __break(1u);
}

void sub_1B10A18A8()
{
  OUTLINED_FUNCTION_57();
  v22 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1B112298C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v23 = OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_51_1();
  v13 = swift_allocObject();
  v13[2] = v0;
  v13[3] = v8;
  v13[4] = v6;
  v24[4] = v4;
  v24[5] = v13;
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_13_2(COERCE_DOUBLE(1107296256));
  v24[2] = v14;
  v24[3] = v22;
  v15 = _Block_copy(v24);
  v16 = v0;

  sub_1B112299C();
  OUTLINED_FUNCTION_17_1();
  sub_1B1067610(v17, v18, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB73A1E8, &unk_1B11348D0);
  sub_1B1067F54();
  OUTLINED_FUNCTION_20_1();
  sub_1B1122F5C();
  v19 = OUTLINED_FUNCTION_60_0();
  MEMORY[0x1B272DE10](v19);
  _Block_release(v15);
  v20 = OUTLINED_FUNCTION_0_5();
  v21(v20);
  (*(v11 + 8))(v1, v23);

  OUTLINED_FUNCTION_4_2();
}

void sub_1B10A1AAC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = OBJC_IVAR____TtC10CoreParsec15PARSearchClient_sessions;
  OUTLINED_FUNCTION_50_1();
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = *(v6 + 16);
  v8 = v6 + 32;

  v9 = 0;
  v10 = &qword_1EB73A298;
  v11 = 0x1FB453000uLL;
  while (1)
  {
    if (v7 == v9)
    {

      return;
    }

    if (v9 >= *(v6 + 16))
    {
      break;
    }

    sub_1B106752C();
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1B1067964(v21, v10, &qword_1B1134BE0);
    if (!Strong)
    {
      goto LABEL_16;
    }

    v13 = swift_unknownObjectWeakLoadStrong();
    if (!v13)
    {

      goto LABEL_16;
    }

    v14 = v13;
    v15 = v10;
    v16 = v11;
    v17 = [v13 delegate];
    if (!v17)
    {

LABEL_14:
      v11 = v16;
      goto LABEL_15;
    }

    v18 = v17;
    if ([v17 (v11 + 3320)])
    {
      if ([v18 (v11 + 3320)])
      {
        swift_unknownObjectRetain();
        v19 = sub_1B1122A4C();
        [v18 *a4];

        swift_unknownObjectRelease_n();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      goto LABEL_14;
    }

    swift_unknownObjectRelease();

LABEL_15:
    v10 = v15;
LABEL_16:
    v8 += 8;
    ++v9;
  }

  __break(1u);
}

uint64_t sub_1B10A1CB8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1B1122A5C();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t PARSearchClient.didReceiveFeedbackData(_:agent:)()
{
  OUTLINED_FUNCTION_50_1();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v1 = OUTLINED_FUNCTION_69();
    v2(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B10A1EC0(void *a1)
{
  if (!a1)
  {
    return 0x296C696E28;
  }

  v1 = a1;
  v2 = [v1 isSubscribed];

  if (v2)
  {
    return 7562617;
  }

  else
  {
    return 28526;
  }
}

void sub_1B10A1F34(void *a1)
{
  if (qword_1EDAD60C0 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
  }

  v2 = sub_1B112296C();
  OUTLINED_FUNCTION_27_0(v2, qword_1EDAD60D0);
  v3 = a1;
  oslog = sub_1B112293C();
  v4 = sub_1B1122DDC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = OUTLINED_FUNCTION_55();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1B11230FC();
    v9 = sub_1B10784E0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1B1064000, oslog, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_2_0();
  }

  else
  {
  }
}

uint64_t sub_1B10A2094(void *a1, id a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5, const char *a6)
{
  if (a2)
  {
    v10 = a2;
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
    }

    v11 = sub_1B112296C();
    OUTLINED_FUNCTION_27_0(v11, qword_1EDAD60D0);
    v12 = a2;
    v13 = sub_1B112293C();
    v14 = sub_1B1122DDC();

    if (!os_log_type_enabled(v13, v14))
    {

      goto LABEL_12;
    }

    v15 = OUTLINED_FUNCTION_40_0();
    v37 = OUTLINED_FUNCTION_55();
    v38 = v37;
    *v15 = 136315138;
    v16 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
    v17 = sub_1B1122A7C();
    v19 = sub_1B10784E0(v17, v18, &v38);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1B1064000, v13, v14, a6, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2_0();
  }

  else
  {
    if (qword_1EDAD60C0 != -1)
    {
      OUTLINED_FUNCTION_12(&qword_1EDAD60C0);
    }

    v21 = sub_1B112296C();
    __swift_project_value_buffer(v21, qword_1EDAD60D0);
    v22 = a1;
    v23 = a3;
    v13 = sub_1B112293C();
    v24 = sub_1B1122DCC();

    if (os_log_type_enabled(v13, v24))
    {
      v25 = OUTLINED_FUNCTION_40_0();
      v26 = OUTLINED_FUNCTION_55();
      v38 = v26;
      *v25 = 136315138;
      v27 = sub_1B10A1EC0(a1);
      v29 = sub_1B10784E0(v27, v28, &v38);

      *(v25 + 4) = v29;
      OUTLINED_FUNCTION_42_0();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_2_0();
    }
  }

LABEL_12:
  v35 = OUTLINED_FUNCTION_23_0();
  return a4(v35);
}

void sub_1B10A23AC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_63();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_61_0();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_1B10A2708(v15, v12, a5, a6, a7);
  v17 = *(a8(0) - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_1B10A27FC(a4 + v18, v15, v16 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1B10A24E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A2A0, &unk_1B1134BE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B10A25F0(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_63();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_61_0();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A280, &qword_1B1134BB8);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[2 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_36();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A288, qword_1B1134BC0);
    OUTLINED_FUNCTION_36();
    swift_arrayInitWithCopy();
  }
}

void *sub_1B10A2708(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_7(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1B10A27FC(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_79();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_11(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    v12 = OUTLINED_FUNCTION_80();

    MEMORY[0x1EEE6BD00](v12);
  }

  else if (a3 != v5)
  {
    v11 = OUTLINED_FUNCTION_80();

    MEMORY[0x1EEE6BCF8](v11);
  }
}

unint64_t sub_1B10A28B8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= result && result + 8 * a2 > a3)
  {
    if (a3 != result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A298, &qword_1B1134BE0);

      return MEMORY[0x1EEE6BCF8](a3);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A298, &qword_1B1134BE0);

    return MEMORY[0x1EEE6BD00](a3);
  }

  return result;
}

uint64_t sub_1B10A2988(void *a1)
{
  v1 = [a1 version];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B1122A5C();

  return v3;
}

uint64_t sub_1B10A2A28()
{
  OUTLINED_FUNCTION_25_1();
  v1 = sub_1B11228AC();
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_24_1();
  v2 = OUTLINED_FUNCTION_69();

  return sub_1B109EEC0(v2, v3, v0, v4, v5);
}

unint64_t sub_1B10A2AC8()
{
  result = qword_1EB73A1D8;
  if (!qword_1EB73A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB73A1D8);
  }

  return result;
}

uint64_t sub_1B10A2EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *storeEnumTagSinglePayload for PARSearchClient.SearchClientError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B10A2FC0()
{
  result = qword_1EB73A278;
  if (!qword_1EB73A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB73A278);
  }

  return result;
}

uint64_t sub_1B10A3098()
{
  OUTLINED_FUNCTION_83();
  v2 = sub_1B11228AC();
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_24_1();
  v5 = *(v1 + v4);

  return sub_1B109F798(v0, v1 + v3, v5);
}

uint64_t sub_1B10A3168()
{
  OUTLINED_FUNCTION_68();
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1B10A369C;

  return sub_1B1082A70(v2, v0, v1 + 16);
}

uint64_t sub_1B10A3210(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B10A32AC;

  return sub_1B1088034(a1, v1);
}

uint64_t sub_1B10A32AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_59Tm(void (*a1)(void))
{
  a1(*(v1 + 32));
  OUTLINED_FUNCTION_51_1();

  return MEMORY[0x1EEE6BDD0](v3);
}

uint64_t objectdestroy_180Tm()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

void sub_1B10A34AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_83();
  v32 = sub_1B11228AC();
  OUTLINED_FUNCTION_7(v32);
  OUTLINED_FUNCTION_24_1();
  v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v31 + v37);
  v40 = *(v31 + v38);
  v41 = *v39;
  v42 = v39[1];

  sub_1B109E624(v30, v31 + v36, v41, v42, v40, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_1B10A35BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B10A35DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_53_1()
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_54_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *OUTLINED_FUNCTION_72(uint64_t a1, uint64_t a2, ...)
{

  return sub_1B1122F4C();
}

uint64_t OUTLINED_FUNCTION_73()
{

  return sub_1B11229BC();
}

uint64_t OUTLINED_FUNCTION_86(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_87(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t sub_1B10A3974()
{
  OUTLINED_FUNCTION_0_9();
  *(v1 + 24) = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1B10A39B8()
{
  sub_1B1073F28(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1B10A39F0()
{
  v12 = MEMORY[0x1E69E7CC0];
  v1 = *(*(v0 + 32) + 16);

  os_unfair_lock_lock(v1);
  sub_1B10A3B4C(v0, &v12);
  os_unfair_lock_unlock(v1);

  result = swift_unknownObjectWeakLoadStrong();
  v3 = v12;
  if (result)
  {
    v4 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 24))(v3, ObjectType, v4);
    result = swift_unknownObjectRelease();
  }

  v6 = 0;
  v7 = *(v3 + 16);
  for (i = (v3 + 40); ; i += 2)
  {
    if (v7 == v6)
    {

      sub_1B1073F28(v0 + 16);

      return v0;
    }

    if (v6 >= *(v3 + 16))
    {
      break;
    }

    ++v6;
    v9 = *i;
    v10 = swift_getObjectType();
    v11 = *(v9 + 72);
    swift_unknownObjectRetain();
    v11(v10, v9);
    result = swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B10A3B4C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v3 = *(a1 + 40);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*(a1 + 40) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v36 = *(a1 + 40);
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  v34 = xmmword_1B1133BA0;
  v35 = v5;
  if (v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      do
      {
LABEL_8:
        v14 = __clz(__rbit64(v9)) | (v12 << 6);
        v15 = (*(v36 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(v36 + 56) + 8 * v14);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v20 = Strong;
          v21 = *(v18 + 24);
          ObjectType = swift_getObjectType();
          v23 = *(v21 + 64);

          v23(ObjectType, v21);
          v24 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v31 = v24[2];

            sub_1B10A25F0(0, v31 + 1, 1, v24);
            *a2 = v32;

            v24 = *a2;
          }

          v27 = v24[2];
          v26 = v24[3];
          v5 = v35;
          if (v27 >= v26 >> 1)
          {
            sub_1B10A25F0(v26 > 1, v27 + 1, 1, v24);
            v24 = v33;
            *a2 = v33;
          }

          v24[2] = v27 + 1;
          v28 = *a2 + 16 * v27;
          *(v28 + 32) = v20;
          *(v28 + 40) = v21;
        }

        else
        {
          sub_1B10A4258();

          v29 = sub_1B1122EBC();
          sub_1B1122DDC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
          v30 = swift_allocObject();
          *(v30 + 16) = v34;
          *(v30 + 56) = MEMORY[0x1E69E6158];
          *(v30 + 64) = sub_1B106EAF4();
          *(v30 + 32) = v17;
          *(v30 + 40) = v16;

          sub_1B112282C("Detected unfinished activity with destroyed span at key %s", v34);
        }

        v9 &= v9 - 1;
      }

      while (v9);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B10A3E38()
{
  sub_1B10A39F0();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1B10A3E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a1 + 24);
    swift_beginAccess();
    v11 = *(a1 + 40);

    v12 = sub_1B10A7964(a2, a3, v11);

    if (v12)
    {

      ObjectType = swift_getObjectType();
      (*(v10 + 32))(a4, a5, ObjectType, v10);
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for ActivityMonitor.WeakReference();
  v14 = swift_allocObject();
  swift_unknownObjectRetain();
  sub_1B10A3974();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a1 + 40);
  sub_1B107FF44(v14, a2, a3);
  *(a1 + 40) = v16;
  return swift_endAccess();
}

uint64_t sub_1B10A3FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, void))
{
  swift_beginAccess();
  sub_1B10A429C(a2, a3);
  if (v10)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v25 = *(a1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CC0, &qword_1B1134D50);
    sub_1B112303C();

    type metadata accessor for ActivityMonitor.WeakReference();
    sub_1B112304C();
    *(a1 + 40) = v25;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(a1 + 24);
      ObjectType = swift_getObjectType();
      (*(v12 + 40))(a4, a5, ObjectType, v12);
      swift_unknownObjectRelease();
    }

    v14 = swift_getObjectType();
    v15 = a5[4](v14, a5);
    sub_1B1122DDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B1133CF0;
    v17 = a5[3](v14, a5);
    v19 = v18;
    v20 = MEMORY[0x1E69E6158];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    v21 = sub_1B106EAF4();
    *(v16 + 64) = v21;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    a5[5](v14, a5);
    v22 = sub_1B1122FAC();
    *(v16 + 96) = v20;
    *(v16 + 104) = v21;
    *(v16 + 72) = v22;
    *(v16 + 80) = v23;
    sub_1B112282C("Activity %s.%s never started or already ended", v24, v26);
  }
}

unint64_t sub_1B10A4258()
{
  result = qword_1EDAD6010;
  if (!qword_1EDAD6010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAD6010);
  }

  return result;
}

unint64_t sub_1B10A429C(uint64_t a1, uint64_t a2)
{
  sub_1B112314C();
  sub_1B1122ACC();
  v4 = sub_1B112316C();

  return sub_1B10A4398(a1, a2, v4);
}

unint64_t sub_1B10A4314(uint64_t a1)
{
  sub_1B112186C();
  sub_1B10A4744(&qword_1EDAD5F10, MEMORY[0x1E6968FC0]);
  v2 = sub_1B1122A1C();

  return sub_1B10A444C(a1, v2);
}

unint64_t sub_1B10A4398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1B11230AC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1B10A444C(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_1B112186C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1B10A4744(qword_1EDAD55B0, MEMORY[0x1E6968FC8]);
    v9 = sub_1B1122A3C();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1B10A45F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v8 = a4[7](a3, a4);
  v10 = v9;
  v11 = *(*(a2 + 32) + 16);
  os_unfair_lock_lock(v11);
  sub_1B10A3FEC(a2, v8, v10, a1, a4);

  os_unfair_lock_unlock(v11);

  return sub_1B10A46B4(a2, a1, a3, a4);
}

uint64_t sub_1B10A46B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a2, a4, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B10A4744(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B112186C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B10A4788(uint64_t a1, uint64_t *a2, void *a3)
{
  v7 = sub_1B1099EF8(a1);
  for (i = 0; v7 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B272DFA0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v11 = v9;
    sub_1B10A5728(&v11, a2, a3);

    if (v3)
    {
      return;
    }
  }
}

uint64_t sub_1B10A4860()
{
  v0 = sub_1B112296C();
  __swift_allocate_value_buffer(v0, qword_1EB73A2F0);
  __swift_project_value_buffer(v0, qword_1EB73A2F0);
  return sub_1B112294C();
}

id PARResponse.init(reply:factory:responseData:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_1B11218AC();
  v10 = [v8 initWithReply:a1 factory:a2 responseData:v9];

  sub_1B106C204(a3, a4);
  swift_unknownObjectRelease();
  return v10;
}

id PARResponse.init(reply:factory:responseData:)(void *a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v2 = sub_1B11227EC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A308, &qword_1B1134D58);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_1B1121E3C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v15 = OUTLINED_FUNCTION_2_2();
  sub_1B1070FD4(v15, v16);
  sub_1B11227DC();
  sub_1B10A5CEC(&qword_1EB73A310, MEMORY[0x1E69BCE18], MEMORY[0x1E69BCDF8]);
  OUTLINED_FUNCTION_2_2();
  sub_1B112280C();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  (*(v8 + 32))(v14, v5, v6);
  swift_getObjectType();
  (*(v8 + 16))(v12, v14, v6);
  v17 = sub_1B10A4C7C(v24, v25, v12);
  v18 = OUTLINED_FUNCTION_2_2();
  sub_1B106C204(v18, v19);
  v20 = OUTLINED_FUNCTION_6_4();
  v21(v20);
  swift_deallocPartialClassInstance();
  return v17;
}

id sub_1B10A4C7C(void *a1, uint64_t a2, uint64_t a3)
{
  v110 = a2;
  v109 = sub_1B1121E3C();
  OUTLINED_FUNCTION_0();
  v111 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v107 = v8 - v7;
  sub_1B1121A7C();
  OUTLINED_FUNCTION_0();
  v101 = v10;
  v102 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v100 = v12 - v11;
  sub_1B11219EC();
  OUTLINED_FUNCTION_0();
  v103 = v14;
  v104 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v18 = sub_1B1121E0C();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB73A318, &qword_1B1134D60);
  OUTLINED_FUNCTION_11();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v105 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v100 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v100 - v31;
  v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithReply_];
  v108 = a1;
  v34 = [a1 task];
  v112 = a3;
  if (v34)
  {
    v35 = v34;
    v36 = [v34 request];

    v37 = [v36 queryId];
    a3 = v112;
  }

  else
  {
    v37 = 0;
  }

  sub_1B1121E1C();
  v38 = sub_1B1121E2C();
  if (__swift_getEnumTagSinglePayload(v32, 1, v38) == 1)
  {
    goto LABEL_5;
  }

  sub_1B10A5C0C(v32, v30);
  v53 = OUTLINED_FUNCTION_4_5();
  v55 = v54(v53);
  if (v55 == *MEMORY[0x1E69BCE10])
  {
    v56 = OUTLINED_FUNCTION_4_5();
    v57(v56);
    (*(v20 + 32))(v24, v30, v18);
    v58 = sub_1B1121DFC();
    sub_1B1074A10(v58, v59, v33, &selRef_setQuery_);
    v60 = sub_1B1121DFC();
    sub_1B1074A10(v60, v61, v33, &selRef_setPrefix_);
    v62 = OUTLINED_FUNCTION_6_4();
    v67 = OUTLINED_FUNCTION_3_7(v62, v63, v64, v65, v66);
    sub_1B107191C(v67, v33);
    (*(v20 + 8))(v24, v18);
LABEL_17:
    v41 = v109;
    v40 = v111;
    goto LABEL_18;
  }

  if (v55 == *MEMORY[0x1E69BCE00])
  {
    v70 = OUTLINED_FUNCTION_4_5();
    v71(v70);
    v20 = v37;
    v73 = v103;
    v72 = v104;
    (*(v103 + 32))(v17, v30, v104);
    v74 = sub_1B11219BC();
    sub_1B1074A10(v74, v75, v33, &selRef_setQuery_);
    v76 = sub_1B11219CC();
    sub_1B1074A10(v76, v77, v33, &selRef_setPrefix_);
    v80 = OUTLINED_FUNCTION_3_7(v17, v20, v78, v79, MEMORY[0x1E69BCC48]);
    sub_1B107191C(v80, v33);
    (*(v73 + 8))(v17, v72);
    goto LABEL_17;
  }

  if (v55 == *MEMORY[0x1E69BCE08])
  {
    v81 = OUTLINED_FUNCTION_4_5();
    v82(v81);
    v84 = v101;
    v83 = v102;
    v20 = v37;
    v85 = v100;
    (*(v101 + 32))(v100, v30, v102);
    v86 = sub_1B1121A4C();
    sub_1B1074A10(v86, v87, v33, &selRef_setQuery_);
    v88 = sub_1B1121A5C();
    sub_1B1074A10(v88, v89, v33, &selRef_setPrefix_);
    v90 = sub_1B1121A2C();
    sub_1B108152C(v90, v91, v33);
    v94 = OUTLINED_FUNCTION_3_7(v85, v20, v92, v93, MEMORY[0x1E69BCC70]);
    sub_1B107191C(v94, v33);
    (*(v84 + 8))(v85, v83);
    goto LABEL_17;
  }

  v98 = OUTLINED_FUNCTION_4_5();
  v99(v98);
  a3 = v112;
LABEL_5:
  if (qword_1EB7397C0 != -1)
  {
    swift_once();
  }

  v39 = sub_1B112296C();
  __swift_project_value_buffer(v39, qword_1EB73A2F0);
  v40 = v111;
  v41 = v109;
  (*(v111 + 16))(v107, a3, v109);
  v42 = sub_1B112293C();
  v43 = sub_1B1122DBC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v113 = v45;
    *v44 = 136315138;
    sub_1B1121E1C();
    v46 = sub_1B1122A7C();
    v48 = v47;
    v49 = OUTLINED_FUNCTION_6_4();
    v50(v49);
    v51 = sub_1B10784E0(v46, v48, &v113);

    *(v44 + 4) = v51;
    _os_log_impl(&dword_1B1064000, v42, v43, "Got an unhandled case %s, skipping result parsing", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1B272EDD0](v45, -1, -1);
    v52 = v44;
    v40 = v111;
    MEMORY[0x1B272EDD0](v52, -1, -1);
  }

  else
  {

    v68 = OUTLINED_FUNCTION_6_4();
    v69(v68);
  }

  v20 = v108;
LABEL_18:
  sub_1B1067964(v32, qword_1EB73A318, &qword_1B1134D60);
  v95 = sub_1B10725D4(v33);
  v96 = sub_1B10A56C4(v95);

  sub_1B10725F0(v96, v33);

  swift_unknownObjectRelease();
  (*(v40 + 8))(v112, v41);
  return v33;
}

uint64_t sub_1B10A54FC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  v6 = sub_1B1121DEC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = a5();
  v25 = MEMORY[0x1E69E7CC0];
  v14 = *(v13 + 16);
  if (v14)
  {
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v22 = v16;
    v17 = v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v18 = *(v15 + 56);
    do
    {
      v22(v12, v17, v6);
      if (!sub_1B1074C20(a3, a4, v12))
      {
        [objc_allocWithZone(MEMORY[0x1E69CA3E8]) init];
      }

      v19 = (*(v15 - 8))(v12, v6);
      MEMORY[0x1B272DB50](v19);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1122BAC();
      }

      sub_1B1122BCC();
      v17 += v18;
      --v14;
    }

    while (v14);
    v20 = v25;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v20;
}

uint64_t sub_1B10A56C4(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v4 = MEMORY[0x1E69E7CC0];
    v3 = MEMORY[0x1E69E7CC8];
    sub_1B10A4788(a1, &v3, &v4);
    v1 = v4;
  }

  return v1;
}

void sub_1B10A5728(void **a1, uint64_t *a2, void *a3)
{
  v5 = *a1;
  v6 = sub_1B1081BB4(*a1, &selRef_sectionHeader);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_1B10A7800(v6, v7, *a2);
    if (!v10)
    {
      v11 = [objc_allocWithZone(MEMORY[0x1E69CA390]) init];
      if (!v11)
      {
        v14 = sub_1B10A5980(v8, v9);

        return;
      }

      v10 = v11;
      sub_1B10A5C94(v8, v9, v11);
      sub_1B1081BB4(v5, &selRef_sectionBundleIdentifier);
      if (v12)
      {
        v13 = sub_1B1122A4C();
      }

      else
      {
        v13 = 0;
      }

      [v10 setBundleIdentifier_];

      sub_1B1072550(MEMORY[0x1E69E7CC0], v10);
      v15 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *a2;
      sub_1B107FC78(v15, v8, v9, isUniquelyReferenced_nonNull_native);
      *a2 = v21;
      v17 = v15;
      MEMORY[0x1B272DB50]();
      sub_1B10A9034(*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1B1122BCC();
    }

    v18 = v5;
    v22 = sub_1B10725D4(v10);
    if (v22)
    {

      MEMORY[0x1B272DB50](v19);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1122BAC();
      }

      sub_1B1122BCC();
      sub_1B1066864(0, &qword_1EDAD5528, 0x1E69CA3E8);
      v20 = sub_1B1122B7C();

      [v10 setResults_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1B10A5980(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1B10A429C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CB8, &unk_1B1134110);
  sub_1B112303C();

  v7 = *(*(v9 + 56) + 8 * v6);
  sub_1B1066864(0, &qword_1EDAD54B0, 0x1E69CA390);
  sub_1B112304C();
  *v3 = v9;
  return v7;
}

uint64_t sub_1B10A5A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B10A4314(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739CC8, &unk_1B1134120);
    sub_1B112303C();
    v7 = *(v17 + 48);
    v8 = sub_1B112186C();
    OUTLINED_FUNCTION_11();
    (*(v9 + 8))(v7 + *(v9 + 72) * v6, v8);
    v10 = *(v17 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
    OUTLINED_FUNCTION_11();
    sub_1B10801E4(v10 + *(v12 + 72) * v6, a2);
    sub_1B10A5CEC(&qword_1EDAD5F10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_4_5();
    sub_1B112304C();
    *v2 = v17;
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
    v13 = a2;
    v14 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
}

uint64_t sub_1B10A5C0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB73A318, &qword_1B1134D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B10A5C94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B1122A4C();
  [a3 setTitle_];
}

uint64_t sub_1B10A5CEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B10A5D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  OnceState = type metadata accessor for FetchOnceState(0, *(*v4 + 80), a3, a4);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_5();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18[-v14];
  v16 = *(v5 + 96);
  swift_beginAccess();
  (*(v8 + 16))(v15, v4 + v16, OnceState);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      (*(v8 + 8))(v15, OnceState);
      break;
    case 3u:
      break;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
      sub_1B1122C7C();

      break;
  }

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  (*(v8 + 40))(v4 + v16, v12, OnceState);
  return swift_endAccess();
}

uint64_t *sub_1B10A5F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  sub_1B10A5D40(a1, a2, a3, a4);
  v6 = *(*v4 + 96);
  type metadata accessor for FetchOnceState(0, *(v5 + 80), v7, v8);
  OUTLINED_FUNCTION_5();
  (*(v9 + 8))(v4 + v6);

  swift_defaultActor_destroy();
  return v4;
}

uint64_t sub_1B10A5FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B10A5F38(a1, a2, a3, a4);

  return MEMORY[0x1EEE6DEF0](v4);
}

uint64_t sub_1B10A6010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = *v4;
  v51 = *(v49 + 96);
  OnceState = type metadata accessor for FetchOnceState(0, v51, a3, a4);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v49 - v9;
  v11 = v10;
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v49 - v15;
  v71 = v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v69 = sub_1B1122EDC();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_5();
  v70 = v21 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v49 - v24;
  swift_beginAccess();
  v50 = v4;
  v26 = v4[14];
  v27 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 64);
  v52 = (v28 + 63) >> 6;
  v56 = v6 + 16;
  v57 = v13 + 16;
  v55 = v13 + 32;
  v31 = (v6 + 32);
  v68 = (v19 + 32);
  v65 = v6;
  v53 = (v6 + 8);
  v62 = v13;
  v66 = v26;
  v67 = (v13 + 8);

  v33 = 0;
  v64 = v11;
  v59 = v25;
  v60 = TupleTypeMetadata2;
  v58 = v27;
  v54 = v31;
  if (v30)
  {
    while (1)
    {
      v34 = v33;
LABEL_10:
      v36 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v37 = v36 | (v34 << 6);
      v38 = v66;
      v40 = v61;
      v39 = v62;
      v41 = v71;
      (*(v62 + 16))(v61, *(v66 + 48) + *(v62 + 72) * v37, v71);
      v42 = *(v38 + 56);
      v43 = v65;
      v44 = v63;
      v45 = OnceState;
      (*(v65 + 16))(v63, v42 + *(v65 + 72) * v37, OnceState);
      TupleTypeMetadata2 = v60;
      v46 = *(v60 + 48);
      v47 = *(v39 + 32);
      v35 = v70;
      v47(v70, v40, v41);
      v31 = v54;
      (*(v43 + 32))(v35 + v46, v44, v45);
      v48 = 0;
      v11 = v64;
      v27 = v58;
      v25 = v59;
LABEL_11:
      __swift_storeEnumTagSinglePayload(v35, v48, 1, TupleTypeMetadata2);
      (*v68)(v25, v35, v69);
      if (__swift_getEnumTagSinglePayload(v25, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      (*v31)(v11, &v25[*(TupleTypeMetadata2 + 48)], OnceState);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 2u:
          (*v53)(v11, OnceState);
          break;
        case 3u:
          break;
        default:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB739D08, &qword_1B1134350);
          sub_1B1122C7C();

          break;
      }

      result = (*v67)(v25, v71);
      if (!v30)
      {
        goto LABEL_5;
      }
    }

    swift_getTupleTypeMetadata2();
    sub_1B1122BBC();
    v50[14] = sub_1B1122A0C();
  }

  else
  {
LABEL_5:
    v35 = v70;
    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v52)
      {
        v30 = 0;
        v48 = 1;
        goto LABEL_11;
      }

      v30 = *(v27 + 8 * v34);
      ++v33;
      if (v30)
      {
        v33 = v34;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1B10A65A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(v4 + 128))
  {
    sub_1B10A6010(a1, a2, a3, a4);
  }

  sub_1B106E740(*(v4 + 128), *(v4 + 136));

  swift_defaultActor_destroy();
  return v4;
}

uint64_t sub_1B10A65E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B10A65A4(a1, a2, a3, a4);

  return MEMORY[0x1EEE6DEF0](v4);
}

uint64_t sub_1B10A6614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AtomicAsyncValue.State(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B10A66C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  type metadata accessor for AtomicAsyncValue.State(0, *(*v4 + 80), a3, a4);
  OUTLINED_FUNCTION_5();
  (*(v6 + 8))(v4 + v5);
  swift_defaultActor_destroy();
  return v4;
}

uint64_t sub_1B10A6740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B10A66C0(a1, a2, a3, a4);

  return MEMORY[0x1EEE6DEF0](v4);
}

uint64_t sub_1B10A67A4(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1B10A6800(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 2;
  v7 = *(*(v4 - 8) + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
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

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_31;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_30:
      if (v6)
      {
LABEL_31:
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
        if (EnumTagSinglePayload >= 3)
        {
          return EnumTagSinglePayload - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_30;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return v6 + (v7 | v15) + 1;
}

void sub_1B10A69CC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = v7 - 2;
  v9 = *(*(v6 - 8) + 64);
  if (v7 <= 1)
  {
    v8 = 0;
    if (v9 <= 3)
    {
      v11 = (~(-1 << (8 * v9)) - v7 + 2) >> (8 * v9);
      if (v11 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v12 = 1;
        if (v11 >= 0xFF)
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    v9 += v10;
  }

  v13 = 8 * v9;
  v14 = a3 >= v8;
  v15 = a3 - v8;
  if (v15 != 0 && v14)
  {
    if (v9 <= 3)
    {
      v19 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v8 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v22 = a2 + 2;

          __swift_storeEnumTagSinglePayload(a1, v22, v7, v6);
        }

        break;
    }
  }

  else
  {
    v17 = ~v8 + a2;
    if (v9 < 4)
    {
      v18 = (v17 >> v13) + 1;
      if (v9)
      {
        v21 = v17 & ~(-1 << v13);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v9 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v9] = v18;
        break;
      case 2:
        *&a1[v9] = v18;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v9] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1B10A6C40(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
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

void sub_1B10A6D64(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
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

uint64_t sub_1B10A6F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B10A6F70(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B10A6FB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B10A700C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB739D08, &qword_1B1134350);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    TupleTypeMetadata2 = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      TupleTypeMetadata2 = 0;
      *(*(a1 - 8) + 84) = v6;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_1B10A710C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1B10A7248(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

NSString_optional __swiftcall NSString.parsec_getHighLevelDomainFromHost()()
{
  v0 = sub_1B1122A5C();
  sub_1B10A9470(v0, v1);
  v3 = v2;

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1B1122A4C();

  return v4;
}

NSString sub_1B10A749C(void *a1)
{
  v1 = a1;
  v2.value = NSString.parsec_getHighLevelDomainFromHost()().value;

  return v2.value;
}

uint64_t getEnumTagSinglePayload for ParsecFeatureFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ParsecFeatureFlag(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B10A7644(uint64_t a1)
{
  result = sub_1B107B58C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B10A7670()
{
  result = qword_1EB73A420;
  if (!qword_1EB73A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB73A420);
  }

  return result;
}

const char *sub_1B10A76C4(char a1)
{
  result = "corelocation_revgeo";
  switch(a1)
  {
    case 1:
      result = "feedback_database";
      break;
    case 2:
      result = "ResponseFramework";
      break;
    case 3:
      result = "LookupSearchGRPC";
      break;
    case 4:
      result = "LookupSearchEngagementGRPC";
      break;
    case 5:
      result = "SpotlightEngagementGRPC";
      break;
    case 6:
      result = "SafariSearchGRPC";
      break;
    case 7:
      result = "SafariSearchEngagementGRPC";
      break;
    default:
      return result;
  }

  return result;
}

double sub_1B10A779C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1B10A429C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1B1078A74(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void *sub_1B10A7800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1B10A429C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1B10A7848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1B10A4314(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
    OUTLINED_FUNCTION_11();
    sub_1B10A915C(v8 + *(v10 + 72) * v7, a3);
    v11 = a3;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
    v11 = a3;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t sub_1B10A790C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1B10A429C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1B10A7964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1B10A429C(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

id PARTopicResponse.init(reply:factory:dataZKW:)(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_7_2();
  v5 = sub_1B11218AC();
  v6 = [v4 initWithReply:a1 factory:a2 dataZKW:v5];

  v7 = OUTLINED_FUNCTION_7_2();
  sub_1B106C204(v7, v8);

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1B10A7A48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A428, &qword_1B1135120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B10A7AB0@<X0>(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v60 = a3;
  v8 = sub_1B112232C();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B112229C();
  v57 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B11222BC();
  if ((result & 1) == 0)
  {
    *a4 = 0;
    return result;
  }

  v55 = a4;
  v56 = v4;
  v15 = [a1 createResultObject];
  v53[1] = swift_getObjectType();
  v54 = a2;
  [v15 setQueryId_];
  sub_1B112223C();
  v16 = sub_1B1122A4C();

  [v15 setUserInput_];

  [v15 setType_];
  sub_1B11221EC();
  v17 = sub_1B1122A4C();

  [v15 setResultType_];

  sub_1B11222AC();
  v18 = sub_1B1122A4C();

  [v15 setIdentifier_];

  sub_1B112233C();
  v19 = sub_1B1122A4C();

  [v15 setResultBundleId_];

  v20 = sub_1B112234C();
  v22 = v21;
  sub_1B11218BC();
  sub_1B106C204(v20, v22);
  v23 = sub_1B1122A4C();

  [v15 setFbr_];

  if (sub_1B11222CC() >= 1)
  {
    v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
    [v15 setMaxAge_];
  }

  v25 = sub_1B11222EC();
  v26 = v54;
  if (v25)
  {
    sub_1B11222DC();
    v27 = Apple_Parsec_Spotlight_V1alpha_Topic.queryTopic.getter();
    (*(v57 + 8))(v13, v11);
    [v15 setNormalizedTopic_];
    v28 = [v27 query];
    if (!v28)
    {
      sub_1B1122A5C();
      v28 = sub_1B1122A4C();
    }

    [v15 setCompletion_];

    v29 = [v27 query];
    if (!v29)
    {
      sub_1B1122A5C();
      v29 = sub_1B1122A4C();
    }

    [v15 setIntendedQuery_];
  }

  type metadata accessor for ProtobufHelper();
  v30 = v60;
  v31 = [v60 reply];
  sub_1B112235C();
  v32 = sub_1B112231C();
  v34 = v33;
  (*(v58 + 8))(v10, v59);
  swift_unknownObjectRetain();
  sub_1B108D438(v31, v15, v32, v34);

  swift_unknownObjectRelease();
  sub_1B106C204(v32, v34);
  sub_1B1066864(0, &qword_1EB739558, 0x1E69CA4F0);
  v35 = sub_1B10988A8(v30, &selRef_query);
  v37 = sub_1B10A87B4(v35, v36);
  [v15 setTitle_];

  v38 = [v15 inlineCard];
  if (v38)
  {
    v39 = sub_1B10A907C(v38, &selRef_cardSections, &qword_1EB739628, 0x1E69C9F08);
    if (v39)
    {
      v40 = v39;
      if (!sub_1B1099EF8(v39))
      {
        goto LABEL_22;
      }

      sub_1B10731E4(0, (v40 & 0xC000000000000001) == 0, v40);
      if ((v40 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1B272DFA0](0, v40);
      }

      else
      {
        v41 = *(v40 + 32);
      }

      v42 = v41;

      v43 = sub_1B10A907C(v42, &selRef_punchoutOptions, &qword_1EB739590, 0x1E69CA320);
      if (!v43)
      {
        goto LABEL_23;
      }

      v44 = v43;
      if (sub_1B1099EF8(v43))
      {
        sub_1B1099FA4(0, (v44 & 0xC000000000000001) == 0, v44);
        if ((v44 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x1B272DFA0](0, v44);
        }

        else
        {
          v45 = *(v44 + 32);
        }

        v46 = v45;

        v47 = [v46 bundleIdentifier];

        if (v47)
        {
          sub_1B1122A5C();

          v48 = sub_1B1122A4C();

          [v15 setApplicationBundleIdentifier_];
        }
      }

      else
      {
LABEL_22:
      }
    }
  }

LABEL_23:
  v49 = [v15 card];
  sub_1B108D578(v49, v26);

  v50 = [v15 inlineCard];
  sub_1B108D578(v50, v26);

  v51 = [v15 compactCard];
  sub_1B108D578(v51, v26);

  v52 = [v15 tophitCard];
  sub_1B108D578(v52, v26);

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    *v55 = result;
  }

  else
  {
    result = swift_unknownObjectRelease();
    *v55 = 0;
  }

  return result;
}

id Apple_Parsec_Spotlight_V1alpha_Topic.queryTopic.getter()
{
  sub_1B11221FC();
  OUTLINED_FUNCTION_0();
  v50 = v2;
  v51 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  v49 = v4 - v3;
  sub_1B112222C();
  OUTLINED_FUNCTION_0();
  v52 = v6;
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = sub_1B11221DC();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  v17 = sub_1B112194C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  v21 = sub_1B112242C();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v27 = v26 - v25;
  sub_1B112224C();
  v28 = (*(v23 + 88))(v27, v21);
  if (v28 == *MEMORY[0x1E69BD328] || v28 == *MEMORY[0x1E69BD358])
  {
LABEL_3:
    sub_1B11221EC();
    OUTLINED_FUNCTION_4_6();
    OUTLINED_FUNCTION_52();
    objc_allocWithZone(MEMORY[0x1E69CA328]);
    v29 = 7;
    return sub_1B10A8E98(v29, v27, v12, v0);
  }

  if (v28 == *MEMORY[0x1E69BD340])
  {
    v31 = sub_1B11221EC();
    v33 = v32;
    sub_1B112226C();
    sub_1B11221CC();
    (*(v12 + 8))(v16, v10);
    sub_1B112190C();
    v34 = objc_allocWithZone(MEMORY[0x1E69CA0E8]);
    return sub_1B10A8DF0(v31, v33, v20);
  }

  else
  {
    if (v28 == *MEMORY[0x1E69BD330])
    {
      sub_1B11221EC();
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_52();
      objc_allocWithZone(MEMORY[0x1E69CA328]);
      v29 = 1;
      return sub_1B10A8E98(v29, v27, v12, v0);
    }

    if (v28 == *MEMORY[0x1E69BD360])
    {
      v35 = [objc_allocWithZone(MEMORY[0x1E69CA190]) init];
      sub_1B112228C();
      sub_1B112221C();
      v37 = v36;
      v38 = *(v52 + 8);
      v38(v9, v53);
      [v35 setLng_];
      sub_1B112228C();
      sub_1B112220C();
      v40 = v39;
      v38(v9, v53);
      [v35 setLat_];
      sub_1B11221EC();
      OUTLINED_FUNCTION_52();
      v41 = objc_allocWithZone(MEMORY[0x1E69CA5C0]);
      return sub_1B10A8F24(v0, v0, v35);
    }

    else
    {
      if (v28 == *MEMORY[0x1E69BD338])
      {
        sub_1B11221EC();
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_52();
        objc_allocWithZone(MEMORY[0x1E69CA328]);
        v29 = 2;
        return sub_1B10A8E98(v29, v27, v12, v0);
      }

      if (v28 == *MEMORY[0x1E69BD350])
      {
        goto LABEL_3;
      }

      if (v28 == *MEMORY[0x1E69BD318])
      {
        sub_1B11221EC();
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_52();
        objc_allocWithZone(MEMORY[0x1E69CA328]);
        v29 = 6;
        return sub_1B10A8E98(v29, v27, v12, v0);
      }

      if (v28 == *MEMORY[0x1E69BD320])
      {
        sub_1B11221EC();
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_52();
        objc_allocWithZone(MEMORY[0x1E69CA328]);
        v29 = 8;
        return sub_1B10A8E98(v29, v27, v12, v0);
      }

      if (v28 == *MEMORY[0x1E69BD348])
      {
        v42 = sub_1B11221EC();
        v44 = v43;
        sub_1B112227C();
        v45 = sub_1B11221EC();
        v47 = v46;
        (*(v50 + 8))(v49, v51);
        sub_1B112223C();
        OUTLINED_FUNCTION_52();
        v48 = objc_allocWithZone(MEMORY[0x1E69CA470]);
        return sub_1B10A8F88(v42, v44, v45, v47, v0);
      }

      else
      {
        result = sub_1B112309C();
        __break(1u);
      }
    }
  }

  return result;
}

id sub_1B10A87B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1B1122A4C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() textWithString_];

  return v3;
}

void sub_1B10A8824(uint64_t a1, void *a2, uint64_t *a3)
{
  v44 = a3;
  v51 = a2;
  v43 = sub_1B11224BC();
  MEMORY[0x1EEE9AC00](v43);
  v42[1] = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B11224FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = [objc_allocWithZone(MEMORY[0x1E69CA390]) init];
  sub_1B1072550(MEMORY[0x1E69E7CC0], v49);
  v10 = sub_1B11224DC();
  v11 = 0;
  v52 = *(v10 + 16);
  v53 = v10;
  v50 = v10 + 32;
  v47 = v9;
  v48 = v7;
  v45 = a1;
  v46 = v6;
  while (1)
  {
LABEL_2:
    if (v11 == v52)
    {

      v3 = a1;
      v24 = sub_1B11224EC();
      v26 = v25;
      v11 = v49;
      v27 = v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = *v27;
      sub_1B107FC78(v11, v24, v26, isUniquelyReferenced_nonNull_native);
      *v27 = v56;

      if (qword_1EDAD5488 != -1)
      {
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (v11 >= *(v53 + 16))
    {
      goto LABEL_37;
    }

    v12 = (v50 + 16 * v11);
    v3 = *v12;
    v13 = v12[1];
    ++v11;

    v14 = sub_1B1071938(v51, &selRef_results, &qword_1EDAD5528, 0x1E69CA3E8);
    if (v14)
    {
      break;
    }
  }

  v15 = v14;
  v54 = v11;
  v55 = v13;
  v16 = sub_1B1099EF8(v14);
  v7 = 0;
  v6 = v15 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v16 == v7)
    {

      v6 = v46;
      v9 = v47;
      v7 = v48;
      goto LABEL_29;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1B272DFA0](v7, v15);
    }

    else
    {
      if (v7 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v17 = *(v15 + 8 * v7 + 32);
    }

    v11 = v17;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v18 = sub_1B10988A8(v17, &selRef_identifier);
    if (!v19)
    {
      goto LABEL_17;
    }

    v9 = v19;
    if (v18 == v3 && v19 == v55)
    {

LABEL_22:

      v56 = sub_1B10725D4(v49);
      v6 = v46;
      v9 = v47;
      v7 = v48;
      if (!v56)
      {
        __break(1u);
        goto LABEL_40;
      }

      v22 = v11;
      MEMORY[0x1B272DB50]();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1122BAC();
      }

      sub_1B1122BCC();
      if (v56)
      {
        sub_1B1066864(0, &qword_1EDAD5528, 0x1E69CA3E8);
        v23 = sub_1B1122B7C();
      }

      else
      {
        v23 = 0;
      }

      [v49 setResults_];

LABEL_29:
      a1 = v45;
      v11 = v54;
      goto LABEL_2;
    }

    v21 = sub_1B11230AC();

    if (v21)
    {
      goto LABEL_22;
    }

LABEL_17:

    ++v7;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  swift_once();
LABEL_31:
  v29 = sub_1B112296C();
  __swift_project_value_buffer(v29, qword_1EDAD5490);
  (*(v7 + 16))(v9, v3, v6);
  v15 = v11;
  v30 = sub_1B112293C();
  v31 = sub_1B1122DBC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v56 = v33;
    *v32 = 134218242;
    v34 = sub_1B10725D4(v15);
    if (v34)
    {
      v35 = sub_1B1097DD8(v34);

      *(v32 + 4) = v35;

      *(v32 + 12) = 2080;
      v36 = v15;
      v37 = v47;
      sub_1B11224CC();
      v38 = sub_1B1122A7C();
      v40 = v39;
      (*(v48 + 8))(v37, v6);
      v41 = sub_1B10784E0(v38, v40, &v56);

      *(v32 + 14) = v41;
      _os_log_impl(&dword_1B1064000, v30, v31, "ZKW section decoded. Section results count: %ld, section status code: %s", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1B272EDD0](v33, -1, -1);
      MEMORY[0x1B272EDD0](v32, -1, -1);

      return;
    }

LABEL_40:

    __break(1u);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }
}

id sub_1B10A8DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_1B1122A4C();

  v7 = sub_1B11218EC();
  v8 = [v4 initWithQuery:v6 date:v7];

  v9 = sub_1B112194C();
  (*(*(v9 - 8) + 8))(a3, v9);
  return v8;
}

id sub_1B10A8E98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1B1122A4C();

  OUTLINED_FUNCTION_7_2();
  sub_1B1122A4C();
  OUTLINED_FUNCTION_8_2();
  v8 = [v4 initWithType:a1 query:v7 identifier:a4];

  return v8;
}

id sub_1B10A8F24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B1122A4C();

  v6 = [v3 initWithQuery:v5 location:a3];

  return v6;
}

id sub_1B10A8F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_1B1122A4C();

  v8 = sub_1B1122A4C();

  OUTLINED_FUNCTION_7_2();
  sub_1B1122A4C();
  OUTLINED_FUNCTION_8_2();
  v9 = [v5 initWithQuery:v7 requestedEntityType:v8 identifier:a5];

  return v9;
}

uint64_t sub_1B10A9034(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1B1122BAC();
  }

  return result;
}

uint64_t sub_1B10A907C(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v7 = [a1 *a2];

  if (!v7)
  {
    return 0;
  }

  sub_1B1066864(0, a3, a4);
  v8 = sub_1B1122B8C();

  return v8;
}

unint64_t sub_1B10A90F8()
{
  result = qword_1EB73A440;
  if (!qword_1EB73A440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB73A438, &qword_1B1135140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB73A440);
  }

  return result;
}

uint64_t sub_1B10A915C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB73A450, &qword_1B11343A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B10A91CC()
{
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer == sub_1B112297C())
  {
    if (qword_1EB7395D0 != -1)
    {
      OUTLINED_FUNCTION_0_11(&qword_1EB7395D0);
    }

    v1 = sub_1B112296C();
    __swift_project_value_buffer(v1, qword_1EB7395D8);
    v2 = sub_1B112293C();
    v3 = sub_1B1122DCC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134218240;
      swift_beginAccess();
      *(v4 + 4) = 0;
      *(v4 + 12) = 1024;
      *(v4 + 14) = 0;
      _os_log_impl(&dword_1B1064000, v2, v3, "Read os_eligibility_get_domain_answer API: %llu. Enabled: %{BOOL}d", v4, 0x12u);
LABEL_10:
      MEMORY[0x1B272EDD0](v4, -1, -1);
    }
  }

  else
  {
    if (qword_1EB7395D0 != -1)
    {
      OUTLINED_FUNCTION_0_11(&qword_1EB7395D0);
    }

    v5 = sub_1B112296C();
    __swift_project_value_buffer(v5, qword_1EB7395D8);
    v2 = sub_1B112293C();
    v6 = sub_1B1122DDC();
    if (os_log_type_enabled(v2, v6))
    {
      v4 = swift_slowAlloc();
      *v4 = 67109120;
      *(v4 + 4) = domain_answer;
      _os_log_impl(&dword_1B1064000, v2, v6, "failed to read sba os eligibility with status: %d", v4, 8u);
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t sub_1B10A93F0()
{
  v0 = sub_1B112296C();
  __swift_allocate_value_buffer(v0, qword_1EB7395D8);
  __swift_project_value_buffer(v0, qword_1EB7395D8);
  return sub_1B112294C();
}

uint64_t sub_1B10A9470(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v4 = a1;
  v5 = sub_1B1122A4C();
  v6 = [v5 _web_looksLikeIPAddress];

  if (v6)
  {
  }

  else
  {
    sub_1B1067A94();
    v7 = sub_1B1122F0C();
    v4 = sub_1B10A954C(v7, v4, a2);
  }

  return v4;
}

uint64_t sub_1B10A954C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1B272DAA0](16);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = a1 + 16 * v4 + 24;
    while (1)
    {

      if (v5)
      {
        sub_1B1122B0C();
      }

      sub_1B10A9718();
      sub_1B1122AFC();

      v8 = sub_1B1122A4C();
      IsDomainTopLevel = _CFHostIsDomainTopLevel();

      v10 = IsDomainTopLevel != 0;
      if (!IsDomainTopLevel && v6)
      {
        break;
      }

      ++v5;
      v7 -= 16;
      v6 = IsDomainTopLevel != 0;
      if (v4 == v5)
      {
        goto LABEL_10;
      }
    }

    v10 = 1;
LABEL_10:
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  if (v10)
  {
    if (v11)
    {
      v12 = sub_1B1122ADC();
    }

    else
    {
      v12 = 0;
    }

    v13 = a2;
    v14 = sub_1B1122ADC();
    if (v11 && v12 == v14)
    {
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }

  return v13;
}

unint64_t sub_1B10A9718()
{
  result = qword_1EB73A460;
  if (!qword_1EB73A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB73A460);
  }

  return result;
}

uint64_t sub_1B10A976C(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v2 || (OUTLINED_FUNCTION_8_3(7368564, 0xE300000000000000) & 1) != 0)
  {
    return 1;
  }

  v7 = a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000;
  if (v7 || (OUTLINED_FUNCTION_8_3(0x6D6F74746F62, 0xE600000000000000) & 1) != 0)
  {
    return 2;
  }

  v5 = 3;
  if (a1 != 0x746968706F74 || a2 != 0xE600000000000000)
  {
    if (OUTLINED_FUNCTION_8_3(0x746968706F74, 0xE600000000000000))
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

void *sub_1B10A9830()
{
  v0 = sub_1B112186C();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_5();
  v57 = v4 - v5;
  OUTLINED_FUNCTION_10_3();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v54 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v54 - v10;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_1_5();
  v17 = v15 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v54 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v54 - v22;
  sub_1B1066864(0, &qword_1EB739590, 0x1E69CA320);
  sub_1B11223CC();
  sub_1B112185C();

  v24 = sub_1B1073F50(v23);
  if (!v24)
  {
    v24 = [objc_allocWithZone(MEMORY[0x1E69CA320]) init];
  }

  v25 = v24;
  v26 = sub_1B11223DC();
  sub_1B1074A10(v26, v27, v25, &selRef_setName_);
  v28 = sub_1B11223FC();
  sub_1B1074A10(v28, v29, v25, &selRef_setBundleIdentifier_);
  v30 = sub_1B11223EC();
  sub_1B1074A10(v30, v31, v25, &selRef_setLabel_);
  sub_1B1074880(MEMORY[0x1E69E7CC0], v25);
  sub_1B11223CC();
  sub_1B112185C();

  if (__swift_getEnumTagSinglePayload(v21, 1, v0) == 1)
  {
    sub_1B10AADA8(v21);
  }

  else
  {
    v55 = v9;
    v32 = *(v2 + 32);
    v32(v13, v21, v0);
    v33 = sub_1B10AAE10(v25);
    if (v33)
    {
      v34 = v33;
      v35 = *(v2 + 16);
      v54 = v13;
      v35(v56, v13, v0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_3();
        v34 = v50;
      }

      v37 = *(v34 + 16);
      v36 = *(v34 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1B10A2334(v36 > 1, v37 + 1, 1, v34);
        v34 = v51;
      }

      *(v34 + 16) = v37 + 1;
      OUTLINED_FUNCTION_6_5();
      v32((v38 + v39 * v37), v56, v0);
      v40 = sub_1B1122B7C();

      [v25 setUrls_];

      (*(v2 + 8))(v54, v0);
    }

    else
    {
      [v25 setUrls_];
      (*(v2 + 8))(v13, v0);
    }

    v9 = v55;
  }

  sub_1B11223BC();
  sub_1B112185C();

  if (__swift_getEnumTagSinglePayload(v17, 1, v0) == 1)
  {
    sub_1B10AADA8(v17);
  }

  else
  {
    v41 = *(v2 + 32);
    v41(v9, v17, v0);
    v42 = sub_1B10AAE10(v25);
    if (v42)
    {
      v43 = v42;
      (*(v2 + 16))(v57, v9, v0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_3();
        v43 = v52;
      }

      v45 = *(v43 + 16);
      v44 = *(v43 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1B10A2334(v44 > 1, v45 + 1, 1, v43);
        v43 = v53;
      }

      *(v43 + 16) = v45 + 1;
      OUTLINED_FUNCTION_6_5();
      v41((v46 + v47 * v45), v57, v0);
      v48 = sub_1B1122B7C();

      [v25 setUrls_];
    }

    else
    {
      [v25 setUrls_];
    }

    (*(v2 + 8))(v9, v0);
  }

  return v25;
}

id sub_1B10A9D40()
{
  v0 = sub_1B112244C();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(MEMORY[0x1E69CA370]) init];
  v8 = sub_1B112239C();
  sub_1B1074A10(v8, v9, v7, &selRef_setName_);
  v10 = sub_1B112238C();
  sub_1B1074A10(v10, v11, v7, &selRef_setMaps_encrypted_muid_);
  v12 = [objc_allocWithZone(MEMORY[0x1E69CA1D0]) init];
  sub_1B112237C();
  v13 = sub_1B112243C();
  v15 = v14;
  (*(v2 + 8))(v6, v0);
  sub_1B1074A10(v13, v15, v12, &selRef_setAddress_);
  [v7 setLocation:v12 type:? info:?];

  return v7;
}

id sub_1B10A9E9C()
{
  v85 = sub_1B1121E9C();
  OUTLINED_FUNCTION_0();
  v88 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v5 = v4 - v3;
  v87 = sub_1B1121E8C();
  OUTLINED_FUNCTION_0();
  v81 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v80 = v9 - v8;
  v91 = sub_1B11227CC();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_5();
  v89 = (v13 - v14);
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v78 - v16;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v78 - v18;
  v20 = sub_1B1121E5C();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2();
  v26 = v25 - v24;
  v82 = [objc_allocWithZone(MEMORY[0x1E69C9F90]) init];
  v83 = v0;
  sub_1B11220DC();
  sub_1B11227BC();
  sub_1B10AAE70(&qword_1EB73A468, MEMORY[0x1E69BCE60], MEMORY[0x1E69BCE58]);
  sub_1B11227FC();
  v86 = v11;
  v90 = *(v11 + 8);
  v90(v19, v91);
  (*(v22 + 8))(v26, v20);
  sub_1B1066864(0, &qword_1EB73A488, 0x1E69CA600);
  v27 = OUTLINED_FUNCTION_11_2();
  sub_1B1070FD4(v27, v28);
  v29 = OUTLINED_FUNCTION_11_2();
  v31 = sub_1B10743FC(v29, v30);
  if (v31)
  {
    v32 = v31;
    v33 = [objc_allocWithZone(MEMORY[0x1E69CA138]) initWithProtobuf_];
    v34 = v82;
    if (v33)
    {
      v35 = v33;
      [v82 setImage_];
    }

    else
    {
    }

    v38 = OUTLINED_FUNCTION_11_2();
    sub_1B106C204(v38, v39);
  }

  else
  {
    v36 = OUTLINED_FUNCTION_11_2();
    sub_1B106C204(v36, v37);
    v34 = v82;
  }

  v40 = sub_1B11220EC();
  sub_1B1074A10(v40, v41, v34, &selRef_setTitle_);
  sub_1B11220FC();
  v42 = v79;
  sub_1B11227BC();
  sub_1B10AAE70(&qword_1EB73A470, MEMORY[0x1E69BCE70], MEMORY[0x1E69BCE68]);
  v43 = sub_1B11227FC();
  v45 = v44;
  v90(v42, v91);
  v46 = OUTLINED_FUNCTION_9_3();
  v47(v46);
  sub_1B1066864(0, &qword_1EB73A480, 0x1E69CA5E8);
  sub_1B1070FD4(v43, v45);
  v48 = sub_1B10743FC(v43, v45);
  if (v48)
  {
    v49 = v48;
    v50 = [objc_allocWithZone(MEMORY[0x1E69C9F88]) initWithProtobuf_];
    if (v50)
    {
      v51 = v50;
      [v34 setCommand_];
    }

    else
    {
    }
  }

  sub_1B106C204(v43, v45);
  v52 = sub_1B11220BC();
  v53 = *(v52 + 16);
  v54 = v85;
  v55 = v88;
  if (v53)
  {
    v92 = MEMORY[0x1E69E7CC0];
    sub_1B112300C();
    v57 = v55[2];
    v56 = (v55 + 2);
    v58 = v56[64];
    v81 = v52;
    v59 = v52 + ((v58 + 32) & ~v58);
    v87 = *(v56 + 7);
    v88 = v57;
    v86 += 8;
    v60 = v56 - 8;
    v84 = v5;
    do
    {
      (v88)(v5, v59, v54);
      v61 = v89;
      sub_1B11227BC();
      sub_1B10AAE70(&qword_1EB73A478, MEMORY[0x1E69BCE90], MEMORY[0x1E69BCE88]);
      sub_1B11227FC();
      OUTLINED_FUNCTION_52();
      v62 = v56;
      v90(v61, v91);
      v63 = objc_allocWithZone(MEMORY[0x1E69CA5D8]);
      v64 = OUTLINED_FUNCTION_27();
      sub_1B1070FD4(v64, v65);
      OUTLINED_FUNCTION_27();
      v66 = sub_1B11218AC();
      v67 = [v63 initWithJSON_];

      v68 = OUTLINED_FUNCTION_27();
      sub_1B106C204(v68, v69);
      if (v67)
      {
        if ([objc_allocWithZone(MEMORY[0x1E69C9ED0]) initWithProtobuf_])
        {
          v70 = OUTLINED_FUNCTION_27();
          sub_1B106C204(v70, v71);
        }

        else
        {
          [objc_allocWithZone(MEMORY[0x1E69C9ED0]) init];

          v74 = OUTLINED_FUNCTION_27();
          sub_1B106C204(v74, v75);
        }

        v56 = v62;
        v5 = v84;
        v54 = v85;
      }

      else
      {
        v72 = OUTLINED_FUNCTION_27();
        sub_1B106C204(v72, v73);
        v56 = v62;
        v5 = v84;
        v54 = v85;
        [objc_allocWithZone(MEMORY[0x1E69C9ED0]) init];
      }

      (*v60)(v5, v54);
      sub_1B1122FEC();
      sub_1B112301C();
      sub_1B112302C();
      sub_1B1122FFC();
      v59 += v87;
      --v53;
    }

    while (v53);

    v76 = v92;
    v34 = v82;
  }

  else
  {

    v76 = MEMORY[0x1E69E7CC0];
  }

  sub_1B10AAEB8(v76, v34);
  [v34 setIsDestructive_];
  return v34;
}

id sub_1B10AA678()
{
  sub_1B1121FAC();
  OUTLINED_FUNCTION_0();
  v67 = v1;
  v68 = v0;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2();
  v66 = (v3 - v2);
  sub_1B1121FDC();
  OUTLINED_FUNCTION_0();
  v69 = v5;
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = sub_1B1121F8C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = sub_1B112194C();
  MEMORY[0x1EEE9AC00](v16 - 8);
  OUTLINED_FUNCTION_2();
  v17 = sub_1B11220AC();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2();
  v23 = v22 - v21;
  sub_1B1121FFC();
  v65 = v19;
  v24 = (*(v19 + 88))(v23, v17);
  if (v24 == *MEMORY[0x1E69BD0E8])
  {
    sub_1B1121F9C();
    sub_1B112201C();
    sub_1B1121F7C();
    (*(v11 + 8))(v15, v9);
    sub_1B112190C();
    sub_1B1121FEC();
    OUTLINED_FUNCTION_52();
    v25 = objc_allocWithZone(MEMORY[0x1E69CA0E8]);
    OUTLINED_FUNCTION_3_8();
    return sub_1B10AAC3C(v26, v27, v28, v29, v30);
  }

  else
  {
    v32 = v24;
    if (v24 == *MEMORY[0x1E69BD0D8])
    {
      goto LABEL_4;
    }

    if (v24 == *MEMORY[0x1E69BD0F8])
    {
      v38 = [objc_allocWithZone(MEMORY[0x1E69CA190]) init];
      sub_1B112203C();
      sub_1B1121FBC();
      v40 = v39;
      v41 = *(v69 + 8);
      v41(v8, v70);
      [v38 setLat_];
      sub_1B112203C();
      sub_1B1121FCC();
      v43 = v42;
      v41(v8, v70);
      [v38 setLng_];
      sub_1B1121F9C();
      sub_1B1121FEC();
      OUTLINED_FUNCTION_52();
      v44 = objc_allocWithZone(MEMORY[0x1E69CA5C0]);
      OUTLINED_FUNCTION_3_8();
      return sub_1B10AAD14(v45, v46, v47, v48, v49);
    }

    if (v24 == *MEMORY[0x1E69BD0E0] || v24 == *MEMORY[0x1E69BD0C8] || v24 == *MEMORY[0x1E69BD0D0])
    {
LABEL_4:
      sub_1B1121F9C();
      OUTLINED_FUNCTION_12_3();
      OUTLINED_FUNCTION_52();
      v33 = objc_allocWithZone(MEMORY[0x1E69CA328]);
      OUTLINED_FUNCTION_3_8();
      return sub_1B10A8E98(v34, v35, v36, v37);
    }

    else
    {
      v52 = *MEMORY[0x1E69BD0F0];
      v53 = sub_1B1121F9C();
      v55 = v54;
      if (v32 != v52)
      {
        sub_1B1121FEC();
        OUTLINED_FUNCTION_52();
        v60 = objc_allocWithZone(MEMORY[0x1E69CA328]);
        OUTLINED_FUNCTION_3_8();
        v50 = sub_1B10A8E98(v61, v62, v63, v64);
        (*(v65 + 8))(v23, v17);
        return v50;
      }

      sub_1B112202C();
      v56 = sub_1B1121F9C();
      v58 = v57;
      (*(v67 + 8))(v66, v68);
      sub_1B1121FEC();
      OUTLINED_FUNCTION_52();
      v59 = objc_allocWithZone(MEMORY[0x1E69CA470]);
      return sub_1B10A8F88(v53, v55, v56, v58, v66);
    }
  }
}

id sub_1B10AAC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = sub_1B1122A4C();

  v9 = sub_1B11218EC();
  v10 = sub_1B1122A4C();

  v11 = [v6 initWithQuery:v8 date:v9 identifier:v10];

  v12 = sub_1B112194C();
  (*(*(v12 - 8) + 8))(a3, v12);
  return v11;
}

id sub_1B10AAD14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B1122A4C();

  v8 = sub_1B1122A4C();

  v9 = [v5 initWithQuery:v7 location:a3 identifier:v8];

  return v9;
}

uint64_t sub_1B10AADA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB73A130, &qword_1B1133BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B10AAE10(void *a1)
{
  v1 = [a1 urls];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1B112186C();
  v3 = sub_1B1122B8C();

  return v3;
}

uint64_t sub_1B10AAE70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B10AAEB8(uint64_t a1, void *a2)
{
  sub_1B1066864(0, &qword_1EB73A490, 0x1E69C9ED0);
  v3 = sub_1B1122B7C();

  [a2 setPreviewButtonItems_];
}

uint64_t sub_1B10AAF54()
{
  MEMORY[0x1B272EDD0](*(v0 + 16), -1, -1);

  return MEMORY[0x1EEE6BDC0](v0);
}

void sub_1B10AAF94(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();

  os_unfair_lock_unlock(v3);
}

void sub_1B10AAFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  switch(*(a10 + 16))
  {
    case 0:
      OUTLINED_FUNCTION_1_6();
      sub_1B112284C();
      return;
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
      v25 = swift_allocObject();
      v15 = OUTLINED_FUNCTION_0_12(v25, xmmword_1B1133BA0);
      goto LABEL_8;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
      v17 = swift_allocObject();
      v18 = OUTLINED_FUNCTION_0_12(v17, xmmword_1B1133CF0);
      sub_1B1067888(v18, v19);
      v15 = OUTLINED_FUNCTION_2_6();
      goto LABEL_8;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
      v20 = swift_allocObject();
      v21 = OUTLINED_FUNCTION_0_12(v20, xmmword_1B1133D00);
      sub_1B1067888(v21, v22);
      v23 = OUTLINED_FUNCTION_2_6();
      sub_1B1067888(v23, v24);
      v15 = a10 + 112;
      v16 = &v20[7];
      goto LABEL_8;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
      v10 = swift_allocObject();
      v11 = OUTLINED_FUNCTION_0_12(v10, xmmword_1B1135180);
      sub_1B1067888(v11, v12);
      v13 = OUTLINED_FUNCTION_2_6();
      sub_1B1067888(v13, v14);
      sub_1B1067888(a10 + 112, &v10[7]);
      v15 = a10 + 152;
      v16 = &v10[9].n128_i64[1];
      goto LABEL_8;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB739E60, &unk_1B11340F0);
      v26 = swift_allocObject();
      v27 = OUTLINED_FUNCTION_0_12(v26, xmmword_1B1135170);
      sub_1B1067888(v27, v28);
      v29 = OUTLINED_FUNCTION_2_6();
      sub_1B1067888(v29, v30);
      sub_1B1067888(a10 + 112, &v26[7]);
      sub_1B1067888(a10 + 152, &v26[9].n128_i64[1]);
      v15 = a10 + 192;
      v16 = &v26[12];
LABEL_8:
      sub_1B1067888(v15, v16);
      OUTLINED_FUNCTION_1_6();
      sub_1B112284C();

      break;
    default:
      return;
  }
}

id PARLogHandleForCategory()
{
  if (PARLogHandleForCategory_onceToken != -1)
  {
    dispatch_once(&PARLogHandleForCategory_onceToken, &__block_literal_global_328);
  }

  v1 = PARLogHandleForCategory_logHandles_2;

  return v1;
}

uint64_t __PARLogHandleForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.parsec", "Default");
  v1 = PARLogHandleForCategory_logHandles_0;
  PARLogHandleForCategory_logHandles_0 = v0;

  v2 = os_log_create("com.apple.parsec", "SearchFoundation");
  v3 = PARLogHandleForCategory_logHandles_1;
  PARLogHandleForCategory_logHandles_1 = v2;

  v4 = os_log_create("com.apple.parsec", "CoreParsec");
  v5 = PARLogHandleForCategory_logHandles_2;
  PARLogHandleForCategory_logHandles_2 = v4;

  v6 = os_log_create("com.apple.parsec", "Bag");
  v7 = PARLogHandleForCategory_logHandles_3;
  PARLogHandleForCategory_logHandles_3 = v6;

  v8 = os_log_create("com.apple.parsec", "VisualCAT");
  v9 = PARLogHandleForCategory_logHandles_4;
  PARLogHandleForCategory_logHandles_4 = v8;

  PARLogHandleForCategory_logHandles_5 = os_log_create("com.apple.parsec", "Internal Settings");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B10ACD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getDEExecutorClass_block_invoke(uint64_t a1)
{
  DialogEngineLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("DEExecutor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDEExecutorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np("Unable to find class %s", "DEExecutor");
    __82__SFSearchResult_VisualCat__processVisualCATResultSynchronouslyUsingPatternClass___block_invoke(v2, v3, v4);
  }
}

void DialogEngineLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!DialogEngineLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __DialogEngineLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7AC5EC0;
    v3 = 0;
    DialogEngineLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (DialogEngineLibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __DialogEngineLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  DialogEngineLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __PARLogHandleForCategory_block_invoke_35()
{
  v0 = os_log_create("com.apple.parsec", "Default");
  v1 = PARLogHandleForCategory_logHandles_0_37;
  PARLogHandleForCategory_logHandles_0_37 = v0;

  v2 = os_log_create("com.apple.parsec", "SearchFoundation");
  v3 = PARLogHandleForCategory_logHandles_1_38;
  PARLogHandleForCategory_logHandles_1_38 = v2;

  v4 = os_log_create("com.apple.parsec", "CoreParsec");
  v5 = PARLogHandleForCategory_logHandles_2_40;
  PARLogHandleForCategory_logHandles_2_40 = v4;

  v6 = os_log_create("com.apple.parsec", "Bag");
  v7 = PARLogHandleForCategory_logHandles_3_41;
  PARLogHandleForCategory_logHandles_3_41 = v6;

  v8 = os_log_create("com.apple.parsec", "VisualCAT");
  v9 = PARLogHandleForCategory_logHandles_4_25;
  PARLogHandleForCategory_logHandles_4_25 = v8;

  PARLogHandleForCategory_logHandles_5_43 = os_log_create("com.apple.parsec", "Internal Settings");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B10AD338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCATPatternClass_block_invoke(uint64_t a1)
{
  DialogEngineLibrary();
  result = objc_getClass("CATPattern");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCATPatternClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "CATPattern");
    return [(PARSyncCard *)v3 cardWithTitle:v4 sections:v5, v6];
  }

  return result;
}

uint64_t __PARLogHandleForCategory_block_invoke_110()
{
  v0 = os_log_create("com.apple.parsec", "Default");
  v1 = PARLogHandleForCategory_logHandles_0_111;
  PARLogHandleForCategory_logHandles_0_111 = v0;

  v2 = os_log_create("com.apple.parsec", "SearchFoundation");
  v3 = PARLogHandleForCategory_logHandles_1_112;
  PARLogHandleForCategory_logHandles_1_112 = v2;

  v4 = os_log_create("com.apple.parsec", "CoreParsec");
  v5 = PARLogHandleForCategory_logHandles_2_113;
  PARLogHandleForCategory_logHandles_2_113 = v4;

  v6 = os_log_create("com.apple.parsec", "Bag");
  v7 = PARLogHandleForCategory_logHandles_3_107;
  PARLogHandleForCategory_logHandles_3_107 = v6;

  v8 = os_log_create("com.apple.parsec", "VisualCAT");
  v9 = PARLogHandleForCategory_logHandles_4_114;
  PARLogHandleForCategory_logHandles_4_114 = v8;

  PARLogHandleForCategory_logHandles_5_115 = os_log_create("com.apple.parsec", "Internal Settings");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __PARLogHandleForCategory_block_invoke_369()
{
  v0 = os_log_create("com.apple.parsec", "Default");
  v1 = PARLogHandleForCategory_logHandles_0_370;
  PARLogHandleForCategory_logHandles_0_370 = v0;

  v2 = os_log_create("com.apple.parsec", "SearchFoundation");
  v3 = PARLogHandleForCategory_logHandles_1_365;
  PARLogHandleForCategory_logHandles_1_365 = v2;

  v4 = os_log_create("com.apple.parsec", "CoreParsec");
  v5 = PARLogHandleForCategory_logHandles_2_371;
  PARLogHandleForCategory_logHandles_2_371 = v4;

  v6 = os_log_create("com.apple.parsec", "Bag");
  v7 = PARLogHandleForCategory_logHandles_3_372;
  PARLogHandleForCategory_logHandles_3_372 = v6;

  v8 = os_log_create("com.apple.parsec", "VisualCAT");
  v9 = PARLogHandleForCategory_logHandles_4_373;
  PARLogHandleForCategory_logHandles_4_373 = v8;

  PARLogHandleForCategory_logHandles_5_374 = os_log_create("com.apple.parsec", "Internal Settings");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t _CPPunchoutForFeedbackReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v24 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v24 & 0x7F) << v6;
      if ((v24 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) <= 3)
    {
      if (v14 == 1)
      {
        v22 = PBReaderReadString();
        [a1 setName:v22];
        goto LABEL_38;
      }

      if (v14 == 3)
      {
        v22 = PBReaderReadString();
        [a1 setLabel:v22];
LABEL_38:

        continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 4:
          v22 = PBReaderReadString();
          if (v22)
          {
            [a1 addUrls:v22];
          }

          goto LABEL_38;
        case 5:
          v22 = PBReaderReadString();
          [a1 setBundleIdentifier:v22];
          goto LABEL_38;
        case 6:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v25 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v25 & 0x7F) << v15;
            if ((v25 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_45;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_45:
          [a1 setKnownBundleIdentifier:v21];
          continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPActionItemForFeedbackReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_CPPunchoutForFeedback);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_CPPunchoutForFeedbackReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setPunchout:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _CPButtonFeedbackReadFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0;
LABEL_2:
  [a1 setTimestamp:v4];
  while (1)
  {
    v5 = [a2 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v37 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v37 & 0x7F) << v6;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_17;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_17:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 3)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          v40 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v40 & 0x7F) << v24;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v12 = v25++ >= 9;
          if (v12)
          {
            v30 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v26;
        }

LABEL_52:
        [v3 setUniqueId:v30];
      }

      else
      {
        if (v14 == 4)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          while (1)
          {
            v39 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v39 & 0x7F) << v31;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v12 = v32++ >= 9;
            if (v12)
            {
              v4 = 0;
              goto LABEL_65;
            }
          }

          if ([a2 hasError])
          {
            v4 = 0;
          }

          else
          {
            v4 = v33;
          }

LABEL_65:
          a1 = v3;
          goto LABEL_2;
        }

LABEL_25:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }
    }

    else if (v14 == 1)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v38 = 0;
        v20 = [a2 position] + 1;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
        {
          v22 = [a2 data];
          [v22 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v19 |= (v38 & 0x7F) << v17;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v12 = v18++ >= 9;
        if (v12)
        {
          v23 = 0;
          goto LABEL_48;
        }
      }

      if ([a2 hasError])
      {
        v23 = 0;
      }

      else
      {
        v23 = v19;
      }

LABEL_48:
      [v3 setCommandType:v23];
    }

    else
    {
      if (v14 != 2)
      {
        goto LABEL_25;
      }

      v15 = PBReaderReadString();
      [v3 setCommandDetail:v15];
    }
  }

  return [a2 hasError] ^ 1;
}