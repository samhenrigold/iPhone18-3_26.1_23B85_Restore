unint64_t *sub_1B24D02CC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v25 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v26 = a5;
  while (1)
  {
    v24 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_1B24D0500(v25, a2, v24, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    sub_1B256ED3C();

    sub_1B256DA7C();
    v14 = sub_1B256ED7C();
    v15 = ~(-1 << *(a3 + 32));
    do
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = 1 << (v14 & v15);
      if ((v18 & *(v8 + 8 * v17)) == 0)
      {

        a5 = v26;
        goto LABEL_3;
      }

      v19 = (*(a3 + 48) + 16 * v16);
      if (*v19 == v13 && v19[1] == v12)
      {
        break;
      }

      v21 = sub_1B256EB5C();
      v14 = v16 + 1;
    }

    while ((v21 & 1) == 0);

    v22 = v25[v17];
    v25[v17] = v22 & ~v18;
    a5 = v26;
    if ((v22 & v18) == 0)
    {
      goto LABEL_3;
    }

    v7 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_20;
    }

    if (v24 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t *sub_1B24D0478(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1B24D02CC(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1B24D0500(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1AF8, &unk_1B25879E0);
  result = sub_1B256E4AC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1B256ED3C();

    sub_1B256DA7C();
    result = sub_1B256ED7C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B24D071C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1B08, &qword_1B2581EC8);
  result = sub_1B256E4AC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_1B256ED3C();
    MEMORY[0x1B274AFC0](v16);
    result = sub_1B256ED7C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1B24D0924(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B256D98C();

  [a3 _setSubscriptionGroupIdentifier_];
}

unint64_t sub_1B24D0988()
{
  result = qword_1EB7D1B00;
  if (!qword_1EB7D1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1B00);
  }

  return result;
}

void *sub_1B24D09DC(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B24D0B38()
{
  result = qword_1EB7D1B10;
  if (!qword_1EB7D1B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1B10);
  }

  return result;
}

unint64_t sub_1B24D0B8C()
{
  result = qword_1EB7D1B18;
  if (!qword_1EB7D1B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1B18);
  }

  return result;
}

_BYTE *_s14descr1F29AE0C9V10ParseErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B24D0CD0()
{
  result = qword_1EB7D1B20;
  if (!qword_1EB7D1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1B20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_33@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 + 32);
  *(v1 + 264) = result;
  *(v1 + 272) = *(a1 + 40);
  *(v1 + 34) = *(a1 + 48);
  return result;
}

void OUTLINED_FUNCTION_10_13(uint64_t a1)
{

  sub_1B24AEC70(a1, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_15_14(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1B256EB5C();
}

uint64_t OUTLINED_FUNCTION_24_8(uint64_t a1)
{

  return sub_1B256D98C();
}

uint64_t OUTLINED_FUNCTION_25_9(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  return sub_1B24472B8(result, a2, a3);
}

uint64_t sub_1B24D0ED4(uint64_t a1)
{
  v2 = v1;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for SKTwoErrorEvent();
  v3 = objc_msgSendSuper2(&v14, sel_createPayload);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1B24D1250();
  v5 = sub_1B256D87C();

  v6 = [v2 mappedError];
  if (v6)
  {
    v7 = v6;
    sub_1B256D9BC();
    swift_getErrorValue();
    swift_getDynamicType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1B30, &qword_1B2581FA8);
    sub_1B256D9FC();
    v8 = sub_1B256D98C();

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_34();
    sub_1B244A92C(v8);

    sub_1B256D9BC();
    v13 = v7;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40, &qword_1B257BB10);
    sub_1B256D9FC();
    v10 = sub_1B256D98C();

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_34();
    sub_1B244A92C(v10);

    v5 = v13;
  }

  if ((*(v2 + OBJC_IVAR____TtC8StoreKit15SKTwoErrorEvent_context + 8) & 1) == 0)
  {
    sub_1B256D9BC();
    v11 = sub_1B256E01C();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_34();
    sub_1B244A92C(v11);

    return v13;
  }

  return v5;
}

id sub_1B24D1188(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC8StoreKit15SKTwoErrorEvent_context];
  *v2 = 0;
  v2[8] = 1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SKTwoErrorEvent();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1B24D11F8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SKTwoErrorEvent();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1B24D1250()
{
  result = qword_1EB7CDAD8;
  if (!qword_1EB7CDAD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7CDAD8);
  }

  return result;
}

uint64_t sub_1B24D12A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_3_18();
}

uint64_t sub_1B24D12BC()
{
  v2 = v1[5];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29_8(v3);
  v1[7] = v4;
  v4[2] = v2;
  v4[3] = sub_1B24D385C;
  v4[4] = v0;
  v5 = swift_task_alloc();
  v1[8] = v5;
  *v5 = v1;
  v5[1] = sub_1B24D139C;
  OUTLINED_FUNCTION_10_14();

  return MEMORY[0x1EEE6DE38](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1B24D139C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24D14A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B24D14C8, 0, 0);
}

uint64_t sub_1B24D14C8()
{
  v2 = v1[5];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29_8(v3);
  v1[7] = v4;
  v4[2] = v2;
  v4[3] = sub_1B24D3738;
  v4[4] = v0;
  v5 = swift_task_alloc();
  v1[8] = v5;
  *v5 = v1;
  v5[1] = sub_1B24D15A8;
  OUTLINED_FUNCTION_10_14();

  return MEMORY[0x1EEE6DE38](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1B24D15A8()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24D16B0()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

void sub_1B24D1714()
{
  OUTLINED_FUNCTION_67();
  v21[1] = v0;
  v22 = v1;
  v23 = v3;
  v24 = v2;
  v5 = v4;
  v26 = v6;
  v8 = v7;
  v25 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1030, &qword_1B257D428);
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  v27 = v8;
  sub_1B256CEAC();
  swift_allocObject();
  sub_1B256CE9C();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v16 = sub_1B256CE8C();
  v18 = v17;
  (*(v12 + 16))(v15, v26, v10);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  (*(v12 + 32))(v20 + v19, v15, v10);
  v24(&v27, v16, v18, v22, v20);
  sub_1B2443AE4(v16, v18);

  OUTLINED_FUNCTION_45();
}

void sub_1B24D1A60()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_9_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0B50, &unk_1B257B4F0);
  OUTLINED_FUNCTION_1_1();
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_17_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_3_27(v5, v31);
  v7(v6);
  OUTLINED_FUNCTION_20_10();
  v8 = OUTLINED_FUNCTION_43_3();
  v9 = OUTLINED_FUNCTION_6_18(v8);
  v10(v9);
  v11 = *(v1 + 16);
  v33[4] = sub_1B24D3A28;
  v33[5] = v3;
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_1_30(COERCE_DOUBLE(1107296256));
  v33[2] = v12;
  v33[3] = &block_descriptor_54;
  _Block_copy(v33);
  OUTLINED_FUNCTION_27_7();

  v14 = OUTLINED_FUNCTION_44_4(v13, sel_remoteObjectProxyWithErrorHandler_);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_41_5();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_39_5();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1B70, &unk_1B2582020);
  if (OUTLINED_FUNCTION_15_15(v15, v16, v17, v15) && (v11 = v32) != 0)
  {
    v18 = OUTLINED_FUNCTION_28_6();
    v0(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17(&qword_1ED699E80);
    }

    v19 = type metadata accessor for SKLogger(0);
    v20 = __swift_project_value_buffer(v19, qword_1ED69A108);
    sub_1B256E0AC();
    v21 = sub_1B256D5CC();
    if (OUTLINED_FUNCTION_38_6(v21))
    {
      OUTLINED_FUNCTION_25_10();
      v22 = OUTLINED_FUNCTION_3_23();
      OUTLINED_FUNCTION_34_4(v22);
      v23 = OUTLINED_FUNCTION_14_14(4.8752e-34);
      OUTLINED_FUNCTION_5_21(v23);
      *(v11 + 14) = sub_1B2519814(0xD00000000000002ALL, v24, v25);
      OUTLINED_FUNCTION_13_14(&dword_1B23EF000, v26, v27, "%{public}s%{public}s");
      OUTLINED_FUNCTION_26_6();
      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_10_7();
    }

    v28 = sub_1B2467710();
    v29 = OUTLINED_FUNCTION_5(&type metadata for StoreKitInternalError, v28);
    OUTLINED_FUNCTION_8_19(v29, v30);
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B24D1CB0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1030, &qword_1B257D428);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24[-1] - v8;
  (*(v7 + 16))(&v24[-1] - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  v12 = *(a2 + 16);
  aBlock[4] = sub_1B24D3A20;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B244BD28;
  aBlock[3] = &block_descriptor_38;
  v13 = _Block_copy(aBlock);

  v14 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_1B256E3DC();
  swift_unknownObjectRelease();
  sub_1B2456DAC(aBlock, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1B68, &unk_1B2582010);
  if (swift_dynamicCast() && v23)
  {
    v25 = v23;
    a3(&v25, a1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v15, qword_1ED69A108);
    v16 = sub_1B256E0AC();
    v17 = sub_1B256D5CC();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_1B2519814(0, 0xE000000000000000, v24);
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_1B2519814(0xD000000000000029, 0x80000001B25903C0, v24);
      _os_log_impl(&dword_1B23EF000, v17, v16, "%{public}s%{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v19, -1, -1);
      MEMORY[0x1B274BFF0](v18, -1, -1);
    }

    sub_1B2467710();
    v20 = swift_allocError();
    *v21 = 14;
    v24[0] = v20;
    sub_1B256DCFC();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

void sub_1B24D2080()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_9_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0B50, &unk_1B257B4F0);
  OUTLINED_FUNCTION_1_1();
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_17_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_3_27(v5, v31);
  v7(v6);
  OUTLINED_FUNCTION_20_10();
  v8 = OUTLINED_FUNCTION_43_3();
  v9 = OUTLINED_FUNCTION_6_18(v8);
  v10(v9);
  v11 = *(v1 + 16);
  v33[4] = sub_1B24D3A28;
  v33[5] = v3;
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_1_30(COERCE_DOUBLE(1107296256));
  v33[2] = v12;
  v33[3] = &block_descriptor_48;
  _Block_copy(v33);
  OUTLINED_FUNCTION_27_7();

  v14 = OUTLINED_FUNCTION_44_4(v13, sel_remoteObjectProxyWithErrorHandler_);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_41_5();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_39_5();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1B58, &qword_1B2581FF0);
  if (OUTLINED_FUNCTION_15_15(v15, v16, v17, v15) && (v11 = v32) != 0)
  {
    v18 = OUTLINED_FUNCTION_28_6();
    v0(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17(&qword_1ED699E80);
    }

    v19 = type metadata accessor for SKLogger(0);
    v20 = __swift_project_value_buffer(v19, qword_1ED69A108);
    sub_1B256E0AC();
    v21 = sub_1B256D5CC();
    if (OUTLINED_FUNCTION_38_6(v21))
    {
      OUTLINED_FUNCTION_25_10();
      v22 = OUTLINED_FUNCTION_3_23();
      OUTLINED_FUNCTION_34_4(v22);
      v23 = OUTLINED_FUNCTION_14_14(4.8752e-34);
      OUTLINED_FUNCTION_5_21(v23);
      *(v11 + 14) = sub_1B2519814(0xD000000000000030, v24, v25);
      OUTLINED_FUNCTION_13_14(&dword_1B23EF000, v26, v27, "%{public}s%{public}s");
      OUTLINED_FUNCTION_26_6();
      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_10_7();
    }

    v28 = sub_1B2467710();
    v29 = OUTLINED_FUNCTION_5(&type metadata for StoreKitInternalError, v28);
    OUTLINED_FUNCTION_8_19(v29, v30);
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  OUTLINED_FUNCTION_45();
}

void sub_1B24D22D0()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_9_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0B50, &unk_1B257B4F0);
  OUTLINED_FUNCTION_1_1();
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_17_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_3_27(v5, v31);
  v7(v6);
  OUTLINED_FUNCTION_20_10();
  v8 = OUTLINED_FUNCTION_43_3();
  v9 = OUTLINED_FUNCTION_6_18(v8);
  v10(v9);
  v11 = *(v1 + 16);
  v33[4] = sub_1B24D37E0;
  v33[5] = v3;
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_1_30(COERCE_DOUBLE(1107296256));
  v33[2] = v12;
  v33[3] = &block_descriptor_16;
  _Block_copy(v33);
  OUTLINED_FUNCTION_27_7();

  v14 = OUTLINED_FUNCTION_44_4(v13, sel_remoteObjectProxyWithErrorHandler_);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_41_5();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_39_5();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1B48, &qword_1B2581FD8);
  if (OUTLINED_FUNCTION_15_15(v15, v16, v17, v15) && (v11 = v32) != 0)
  {
    v18 = OUTLINED_FUNCTION_28_6();
    v0(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17(&qword_1ED699E80);
    }

    v19 = type metadata accessor for SKLogger(0);
    v20 = __swift_project_value_buffer(v19, qword_1ED69A108);
    sub_1B256E0AC();
    v21 = sub_1B256D5CC();
    if (OUTLINED_FUNCTION_38_6(v21))
    {
      OUTLINED_FUNCTION_25_10();
      v22 = OUTLINED_FUNCTION_3_23();
      OUTLINED_FUNCTION_34_4(v22);
      v23 = OUTLINED_FUNCTION_14_14(4.8752e-34);
      OUTLINED_FUNCTION_5_21(v23);
      *(v11 + 14) = sub_1B2519814(0xD00000000000002BLL, v24, v25);
      OUTLINED_FUNCTION_13_14(&dword_1B23EF000, v26, v27, "%{public}s%{public}s");
      OUTLINED_FUNCTION_26_6();
      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_10_7();
    }

    v28 = sub_1B2467710();
    v29 = OUTLINED_FUNCTION_5(&type metadata for StoreKitInternalError, v28);
    OUTLINED_FUNCTION_8_19(v29, v30);
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B24D2520(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1030, &qword_1B257D428);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24[-1] - v8;
  (*(v7 + 16))(&v24[-1] - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  v12 = *(a2 + 16);
  aBlock[4] = sub_1B24D3750;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B244BD28;
  aBlock[3] = &block_descriptor_14;
  v13 = _Block_copy(aBlock);

  v14 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_1B256E3DC();
  swift_unknownObjectRelease();
  sub_1B2456DAC(aBlock, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1B40, &unk_1B2581FC8);
  if (swift_dynamicCast() && v23)
  {
    v25 = v23;
    a3(&v25, a1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v15, qword_1ED69A108);
    v16 = sub_1B256E0AC();
    v17 = sub_1B256D5CC();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_1B2519814(0, 0xE000000000000000, v24);
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_1B2519814(0xD000000000000028, 0x80000001B2590320, v24);
      _os_log_impl(&dword_1B23EF000, v17, v16, "%{public}s%{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v19, -1, -1);
      MEMORY[0x1B274BFF0](v18, -1, -1);
    }

    sub_1B2467710();
    v20 = swift_allocError();
    *v21 = 14;
    v24[0] = v20;
    sub_1B256DCFC();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

void sub_1B24D28F0()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_9_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1B50, &unk_1B2581FE0);
  OUTLINED_FUNCTION_1_1();
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_17_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_3_27(v6, v31);
  v8(v7);
  OUTLINED_FUNCTION_20_10();
  v9 = OUTLINED_FUNCTION_43_3();
  v10 = OUTLINED_FUNCTION_6_18(v9);
  v11(v10);
  v12 = *(v2 + 16);
  v34[4] = sub_1B24D37F4;
  v34[5] = v4;
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_1_30(COERCE_DOUBLE(1107296256));
  v34[2] = v13;
  v34[3] = &block_descriptor_22;
  _Block_copy(v34);
  OUTLINED_FUNCTION_27_7();

  v15 = OUTLINED_FUNCTION_44_4(v14, sel_remoteObjectProxyWithErrorHandler_);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_41_5();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_39_5();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1B58, &qword_1B2581FF0);
  if (OUTLINED_FUNCTION_15_15(v16, v17, v18, v16))
  {
    v33 = v32;
    v1(&v33, v0);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17(&qword_1ED699E80);
    }

    v19 = type metadata accessor for SKLogger(0);
    v20 = __swift_project_value_buffer(v19, qword_1ED69A108);
    sub_1B256E0AC();
    v21 = sub_1B256D5CC();
    if (OUTLINED_FUNCTION_38_6(v21))
    {
      OUTLINED_FUNCTION_25_10();
      v22 = OUTLINED_FUNCTION_3_23();
      OUTLINED_FUNCTION_34_4(v22);
      v23 = OUTLINED_FUNCTION_14_14(4.8752e-34);
      OUTLINED_FUNCTION_5_21(v23);
      *(v12 + 14) = sub_1B2519814(0xD000000000000030, v24, v25);
      OUTLINED_FUNCTION_13_14(&dword_1B23EF000, v26, v27, "%{public}s%{public}s");
      OUTLINED_FUNCTION_26_6();
      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_10_7();
    }

    v28 = sub_1B2467710();
    v29 = OUTLINED_FUNCTION_5(&type metadata for StoreKitInternalError, v28);
    OUTLINED_FUNCTION_8_19(v29, v30);
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B24D2B44(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = type metadata accessor for SKLogger(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17(&qword_1ED699E80);
  }

  __swift_project_value_buffer(v7, qword_1ED69A108);
  OUTLINED_FUNCTION_11_14();
  sub_1B24D377C(v11, v10, v12);
  v13 = a1;
  v14 = sub_1B256D5CC();
  sub_1B256D5EC();
  OUTLINED_FUNCTION_7_0();
  (*(v15 + 8))(v10);
  v16 = sub_1B256E0AC();

  if (os_log_type_enabled(v14, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138543362;
    v19 = a1;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_1B23EF000, v14, v16, "Failed in XPC: %{public}@", v17, 0xCu);
    sub_1B243E88C(v18, &qword_1EB7D18E0, &qword_1B2581610);
    MEMORY[0x1B274BFF0](v18, -1, -1);
    OUTLINED_FUNCTION_22_8();
  }

  v23[1] = a1;
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_1B256DCFC();
}

uint64_t sub_1B24D2D34()
{
  OUTLINED_FUNCTION_4_0();
  v0[11] = v1;
  v0[12] = v2;
  v0[9] = v3;
  v0[10] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850, qword_1B2578540);
  OUTLINED_FUNCTION_2_2(v5);
  v0[13] = swift_task_alloc();
  v6 = type metadata accessor for FinishTransactionTask(0);
  v0[14] = v6;
  OUTLINED_FUNCTION_2_2(v6);
  v0[15] = swift_task_alloc();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24D2DF4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[9];
  sub_1B24CFC80(v0[11], v3);
  v6 = (v1 + *(v2 + 24));
  *v6 = v5;
  v6[1] = v4;
  sub_1B24CFC80(v3, v1);
  v7 = qword_1EB7CDA50;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_3_14(&qword_1EB7CDA50);
  }

  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  sub_1B256EE5C();
  sub_1B243E88C(v10, &qword_1EB7D1850, qword_1B2578540);
  v11 = v0[8];
  v12 = (v8 + *(v9 + 20));
  *v12 = v0[7];
  v12[1] = v11;
  v0[5] = v9;
  v0[6] = sub_1B24D3540();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B24D377C(v8, boxed_opaque_existential_1, type metadata accessor for FinishTransactionTask);
  v14 = OUTLINED_FUNCTION_36_3();
  v0[16] = v14;
  *v14 = v0;
  v14[1] = sub_1B24D2F84;
  v15 = v0[12];

  return v17(v0 + 2, sub_1B24D3174, 0, v15);
}

uint64_t sub_1B24D2F84()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B24D3084()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B24D3598(*(v0 + 120));

  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B24D30F8()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B24D3598(*(v0 + 120));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B24D3188(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  *(v3 + 104) = a1;
  return OUTLINED_FUNCTION_3_18();
}

uint64_t sub_1B24D31A0()
{
  if (qword_1EB7CDA50 != -1)
  {
    OUTLINED_FUNCTION_3_14(&qword_1EB7CDA50);
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 104);
  sub_1B256EE5C();
  v7 = *(v0 + 56);
  *(v0 + 40) = &type metadata for SetLastStoreActionTask;
  *(v0 + 48) = sub_1B24D3808();
  v3 = swift_allocObject();
  *(v0 + 16) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2 & 1;
  v4 = OUTLINED_FUNCTION_36_3();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1B24D32DC;
  v5 = *(v0 + 80);

  return (v7)(v0 + 16, sub_1B24D3454, 0, v5);
}

uint64_t sub_1B24D32DC()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    OUTLINED_FUNCTION_7_2();

    return v10();
  }
}

uint64_t sub_1B24D33F8()
{
  OUTLINED_FUNCTION_4_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_7_2();

  return v1();
}

void sub_1B24D3468(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v11 = *a1;
  v12 = sub_1B256D1FC();
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1B2515BBC;
  v14[3] = a6;
  v13 = _Block_copy(v14);

  [v11 *a7];
  _Block_release(v13);
}

unint64_t sub_1B24D3540()
{
  result = qword_1EB7D1B38;
  if (!qword_1EB7D1B38)
  {
    type metadata accessor for FinishTransactionTask(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1B38);
  }

  return result;
}

uint64_t sub_1B24D3598(uint64_t a1)
{
  v2 = type metadata accessor for FinishTransactionTask(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B24D35F4(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1B24D3654(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B24D377C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1B24D3808()
{
  result = qword_1EB7D1B60;
  if (!qword_1EB7D1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1B60);
  }

  return result;
}

uint64_t sub_1B24D3874(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1030, &qword_1B257D428);
  OUTLINED_FUNCTION_2_2(v2);

  return sub_1B2491440(a1);
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_7_0();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v2 + v5);

  return MEMORY[0x1EEE6BDD0](v2, v5 + v6, v4 | 7);
}

uint64_t sub_1B24D3968(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_2(v7);
  return sub_1B24D2B44(a1, v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80)), a2, a3);
}

uint64_t OUTLINED_FUNCTION_5_21(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_19(uint64_t a1, _BYTE *a2)
{
  *a2 = 14;
  *(v2 - 168) = a1;

  return sub_1B256DCFC();
}

void OUTLINED_FUNCTION_13_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

unint64_t OUTLINED_FUNCTION_14_14(float a1)
{
  *v1 = a1;

  return sub_1B2519814(0, 0xE000000000000000, (v2 - 168));
}

uint64_t OUTLINED_FUNCTION_15_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_22_8()
{

  JUMPOUT(0x1B274BFF0);
}

uint64_t OUTLINED_FUNCTION_25_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26_6()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_27_7()
{
}

uint64_t OUTLINED_FUNCTION_29_8(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(a1 + 16) = *(v2 + 16);
  *(a1 + 32) = v1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_36_3()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_37_3()
{

  _Block_release(v0);
}

BOOL OUTLINED_FUNCTION_38_6(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_39_5()
{

  return sub_1B2456DAC(v0 - 128, v0 - 168);
}

void *OUTLINED_FUNCTION_41_5()
{

  return sub_1B256E3DC();
}

uint64_t OUTLINED_FUNCTION_43_3()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_44_4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t type metadata accessor for SKLogger(uint64_t a1)
{
  result = qword_1ED699E48;
  if (!qword_1ED699E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B24D3DA4(uint64_t a1)
{
  result = sub_1B256D5EC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B24D3E10()
{
  v18 = MEMORY[0x1E69E7CC0];
  v0 = 8;
  sub_1B2455BD8(0, 8, 0);
  v1 = v18;
  do
  {
    v16 = 0;
    MEMORY[0x1B274C010](&v16, 8);
    v16 >>= 60;
    sub_1B24D40D8();
    result = sub_1B256DB6C();
    v3 = result;
    v5 = v4;
    v18 = v1;
    v7 = v1[2];
    v6 = v1[3];
    if (v7 >= v6 >> 1)
    {
      result = sub_1B2455BD8((v6 > 1), v7 + 1, 1);
      v1 = v18;
    }

    v1[2] = v7 + 1;
    v8 = &v1[2 * v7];
    v8[4] = v3;
    v8[5] = v5;
    --v0;
  }

  while (v0);
  v9 = 0;
  v10 = 0;
  v11 = v1 + 5;
  v12 = v7 + 1;
  v13 = 0xE000000000000000;
  while (1)
  {
    if (v12 == v9)
    {

      return v10;
    }

    if (v9 >= v1[2])
    {
      break;
    }

    ++v9;
    v14 = *v11;
    v18 = *(v11 - 1);
    v19 = v14;
    v16 = v10;
    v17 = v13;

    v16 = sub_1B256DB9C();
    v17 = v15;
    sub_1B256DABC();

    v10 = v16;
    v13 = v17;
    v11 += 2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B24D3FCC()
{
  v0 = type metadata accessor for SKLogger(0);
  __swift_allocate_value_buffer(v0, qword_1ED69A108);
  __swift_project_value_buffer(v0, qword_1ED69A108);
  return sub_1B256D5DC();
}

uint64_t sub_1B24D4044(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  MEMORY[0x1B2749D50](a1);
  MEMORY[0x1B2749D50](8285, 0xE200000000000000);
  return 91;
}

unint64_t sub_1B24D40D8()
{
  result = qword_1ED699E40;
  if (!qword_1ED699E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED699E40);
  }

  return result;
}

id sub_1B24D4148()
{
  sub_1B246063C(0, &qword_1EB7D1B78, 0x1E698F470);
  v0 = sub_1B24D4218(0xD000000000000039, 0x80000001B2590420);
  sub_1B246063C(0, qword_1EB7D1B80, 0x1E698E710);
  v1 = sub_1B24D4288(&unk_1F2A06A38, sub_1B24D427C, 0);
  [v0 setServer_];

  [v0 setClientMessagingExpectation_];
  return v0;
}

id sub_1B24D4218(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B256D98C();

  v3 = [swift_getObjCClassFromMetadata() interfaceWithIdentifier_];

  return v3;
}

id sub_1B24D4288(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    v10[4] = sub_1B24D4388;
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1B24D43B0;
    v10[3] = &block_descriptor_15;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = [swift_getObjCClassFromMetadata() protocolForProtocol:a1 interpreter:v7];
  _Block_release(v7);

  return v8;
}

id sub_1B24D43B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B24D441C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B256EB5C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B24D44EC(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1B24D455C()
{
  sub_1B256ED3C();
  sub_1B23FB648(v2, *v0);
  return sub_1B256ED7C();
}

uint64_t sub_1B24D45BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B24D441C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B24D461C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B2465A24();
  *a1 = result;
  return result;
}

uint64_t sub_1B24D4650(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B24D46A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B24D4744@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B24419E0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B24D477C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B24D47D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B24D4824(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void))
{
  sub_1B256ED3C();
  a4(v7, a2[2], a2[3], a2[4]);
  return sub_1B256ED7C();
}

uint64_t sub_1B24D48A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B24D48F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B24D494C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v74 = a3;
  v75 = a4;
  v6 = a2[2];
  v7 = a2[3];
  OUTLINED_FUNCTION_8_20();
  v12 = _s13CodableResultO17FailureCodingKeysOMa(v8, v9, v10, v11);
  OUTLINED_FUNCTION_3_28();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_15();
  v70 = v12;
  v68 = v13;
  sub_1B256EA7C();
  OUTLINED_FUNCTION_1_1();
  v72 = v15;
  v73 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_19_6();
  v69 = v17;
  OUTLINED_FUNCTION_1_9();
  v71 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  v67 = v21 - v20;
  OUTLINED_FUNCTION_8_20();
  v26 = _s13CodableResultO17SuccessCodingKeysOMa(v22, v23, v24, v25);
  OUTLINED_FUNCTION_2_28();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_15();
  v63 = v26;
  v61 = v27;
  sub_1B256EA7C();
  OUTLINED_FUNCTION_1_1();
  v65 = v29;
  v66 = v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_19_6();
  v62 = v31;
  OUTLINED_FUNCTION_1_9();
  v64 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13();
  v60 = v35 - v34;
  OUTLINED_FUNCTION_1_9();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13();
  v41 = v40 - v39;
  v76 = v7;
  v77 = v6;
  OUTLINED_FUNCTION_8_20();
  v46 = _s13CodableResultO10CodingKeysOMa(v42, v43, v44, v45);
  v47 = OUTLINED_FUNCTION_4_19(v46);
  OUTLINED_FUNCTION_15_16();
  v78 = sub_1B256EA7C();
  OUTLINED_FUNCTION_1_1();
  v80 = v48;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v59 - v50;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B256EDFC();
  (*(v37 + 16))(v41, v79, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = v71;
    v53 = v67;
    v54 = v76;
    (*(v71 + 32))(v67, v41, v76);
    v82 = 1;
    v55 = v69;
    OUTLINED_FUNCTION_12_17();
    sub_1B256E9EC();
    v56 = v73;
    sub_1B256EA5C();
    v57 = v72;
  }

  else
  {
    v52 = v64;
    v53 = v60;
    v54 = v77;
    (*(v64 + 32))(v60, v41, v77);
    v81 = 0;
    v55 = v62;
    OUTLINED_FUNCTION_12_17();
    sub_1B256E9EC();
    v56 = v66;
    sub_1B256EA5C();
    v57 = v65;
  }

  (*(v57 + 8))(v55, v56);
  (*(v52 + 8))(v53, v54);
  return (*(v80 + 8))(v51, v47);
}

uint64_t sub_1B24D4DF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v85 = a5;
  v84 = a4;
  v77 = a7;
  v11 = _s13CodableResultO17FailureCodingKeysOMa(255, a2, a3, a6);
  OUTLINED_FUNCTION_3_28();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_15();
  v89 = v12;
  v90 = v11;
  v81 = sub_1B256E9DC();
  OUTLINED_FUNCTION_1_1();
  v80 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19_6();
  v91 = v15;
  v16 = OUTLINED_FUNCTION_11_15();
  v20 = _s13CodableResultO17SuccessCodingKeysOMa(v16, v17, v18, v19);
  OUTLINED_FUNCTION_2_28();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_15();
  v86 = v21;
  v87 = v20;
  v79 = sub_1B256E9DC();
  OUTLINED_FUNCTION_1_1();
  v78 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_19_6();
  v88 = v24;
  v25 = OUTLINED_FUNCTION_11_15();
  v29 = _s13CodableResultO10CodingKeysOMa(v25, v26, v27, v28);
  v95 = OUTLINED_FUNCTION_4_19(v29);
  OUTLINED_FUNCTION_15_16();
  sub_1B256E9DC();
  OUTLINED_FUNCTION_1_1();
  v93 = v30;
  v94 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v75 - v33;
  v82 = a2;
  v83 = a3;
  v35 = _s13CodableResultOMa(0, a2, a3, a6);
  OUTLINED_FUNCTION_1_1();
  v92 = v36;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v75 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v75 - v44;
  v46 = a1[3];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v46);
  v47 = v96;
  sub_1B256EDBC();
  if (!v47)
  {
    v95 = v40;
    v96 = v43;
    v76 = v45;
    v48 = v93;
    v49 = v34;
    *&v97 = sub_1B256E9CC();
    OUTLINED_FUNCTION_15_16();
    sub_1B256DCBC();
    swift_getWitnessTable();
    *&v99 = sub_1B256E3FC();
    *(&v99 + 1) = v50;
    *&v100 = v51;
    *(&v100 + 1) = v52;
    OUTLINED_FUNCTION_15_16();
    sub_1B256E3EC();
    swift_getWitnessTable();
    sub_1B256E05C();
    v53 = v97;
    if (v97 == 2 || (v75 = v99, v97 = v99, v98 = v100, (sub_1B256E06C() & 1) == 0))
    {
      v56 = sub_1B256E58C();
      swift_allocError();
      v58 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0250, &qword_1B2578880);
      *v58 = v35;
      sub_1B256E93C();
      sub_1B256E54C();
      (*(*(v56 - 8) + 104))(v58, *MEMORY[0x1E69E6AF8], v56);
      swift_willThrow();
      (*(v94 + 8))(v49, v48);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v53)
      {
        LOBYTE(v97) = 1;
        sub_1B256E92C();
        v54 = v95;
        v55 = v81;
        sub_1B256E9AC();
        v61 = OUTLINED_FUNCTION_5_22();
        v62(v61, v55);
        v63 = OUTLINED_FUNCTION_3_3();
        v64(v63);
        OUTLINED_FUNCTION_10_15();
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v65 = v54;
        v66 = v92;
        v67 = v77;
      }

      else
      {
        LOBYTE(v97) = 0;
        sub_1B256E92C();
        v66 = v92;
        v59 = v79;
        sub_1B256E9AC();
        v68 = OUTLINED_FUNCTION_5_22();
        v69(v68, v59);
        v70 = OUTLINED_FUNCTION_3_3();
        v71(v70);
        OUTLINED_FUNCTION_10_15();
        swift_unknownObjectRelease();
        v72 = v96;
        swift_storeEnumTagMultiPayload();
        v67 = v77;
        v65 = v72;
      }

      v73 = *(v66 + 32);
      v74 = v76;
      v73(v76, v65, v35);
      v73(v67, v74, v35);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v101);
}

_BYTE *sub_1B24D555C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B24D5628(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B24D56CC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B24D5748(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1B24D587C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
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

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
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

uint64_t OUTLINED_FUNCTION_4_19(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t Storefront.countryCode.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Storefront.init(iso3ACountryCode:id:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v9 = 4 * v8;
  for (i = 15; v9 != i >> 14; i = sub_1B256DA9C())
  {
    sub_1B256DB7C();
    v11 = sub_1B256D91C();

    if ((v11 & 1) == 0)
    {
      break;
    }
  }

  v12 = sub_1B256DBAC();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = MEMORY[0x1B2749CC0](v12, v14, v16, v18);
  v21 = v20;

  *(a6 + 2) = v19;
  *(a6 + 3) = v21;
  v22 = *(type metadata accessor for Storefront(0) + 24);
  v23 = sub_1B256D47C();
  v24 = *(*(v23 - 8) + 32);

  return v24(&a6[v22], a5, v23);
}

uint64_t Storefront.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t _s8StoreKit10StorefrontV13localeStorage10Foundation6LocaleVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Storefront(0) + 24);
  v4 = sub_1B256D47C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static Storefront.current.getter(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = OUTLINED_FUNCTION_16_7();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B24D5F10()
{
  if (qword_1EB7CDA50 != -1)
  {
    swift_once();
  }

  v5 = sub_1B24D3E10();
  v6 = v1;

  MEMORY[0x1B2749D50](843797343, 0xE400000000000000);

  v0[5] = v6;
  v0[2] = v5;
  v0[3] = v6;
  v2 = swift_task_alloc();
  v0[6] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E38, &qword_1B25871D0);
  *v2 = v0;
  v2[1] = sub_1B24D6098;
  v3 = v0[4];

  return MEMORY[0x1EEE6DE98](v3);
}

void sub_1B24D6098()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_6_1();
  v2 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 8);

    v4();
  }
}

uint64_t sub_1B24D61BC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1B256D47C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C30, &unk_1B257BE80);
  v1[6] = swift_task_alloc();
  v1[7] = type metadata accessor for StorefrontInternal(0);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B24D62F0, 0, 0);
}

uint64_t sub_1B24D62F0()
{
  OUTLINED_FUNCTION_4_0();
  if (qword_1EB7CDCF0 != -1)
  {
    OUTLINED_FUNCTION_3_29(&qword_1EB7CDCF0);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 80) = v1;
  *v1 = v2;
  v1[1] = sub_1B24D63A4;

  return sub_1B247117C();
}

uint64_t sub_1B24D63A4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24D6488()
{
  v1 = v0[6];
  v2 = v0[7];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1B24D78FC(v1);
    type metadata accessor for Storefront(0);
    v3 = OUTLINED_FUNCTION_11_16();
  }

  else
  {
    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[4];
    v36 = v0[5];
    v11 = v0[2];
    v10 = v0[3];
    sub_1B24D7964(v1, v7);
    sub_1B245AEC8(v7, v8);
    v12 = *(v8 + 16);
    v13 = *(v8 + 24);
    (*(v9 + 16))(v36, v8 + *(v2 + 24), v10);
    *v11 = v12;
    v11[1] = v13;
    OUTLINED_FUNCTION_10_16();
    v15 = 4 * v14;

    for (i = 15; v15 != i >> 14; i = sub_1B256DA9C())
    {
      OUTLINED_FUNCTION_12_18();
      sub_1B256DB7C();
      v17 = sub_1B256D91C();

      if ((v17 & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_12_18();
    }

    v35 = v0[8];
    v37 = v0[9];
    v18 = v0[4];
    v19 = v0[5];
    v21 = v0[2];
    v20 = v0[3];
    v22 = sub_1B256DBAC();
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = MEMORY[0x1B2749CC0](v22, v24, v26, v28);
    v31 = v30;

    *(v21 + 16) = v29;
    *(v21 + 24) = v31;
    v32 = type metadata accessor for Storefront(0);
    (*(v18 + 32))(v21 + *(v32 + 24), v19, v20);
    sub_1B245AF2C(v35);
    sub_1B245AF2C(v37);
    v3 = v21;
    v4 = 0;
    v5 = 1;
    v6 = v32;
  }

  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);

  OUTLINED_FUNCTION_14_7();

  return v33();
}

uint64_t sub_1B24D66BC@<X0>(uint64_t *a1@<X8>)
{
  result = Storefront.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s8StoreKit10StorefrontV11StorefrontsV17makeAsyncIteratorAE0fG0VyF_0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1D90, &qword_1B25825B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - v4;
  if (qword_1EB7CDCF0 != -1)
  {
    OUTLINED_FUNCTION_3_29(&qword_1EB7CDCF0);
  }

  v6 = qword_1EB7EDF68;
  v7 = *(type metadata accessor for Storefront.Storefronts.AsyncIterator(0) + 20);
  v11[1] = v6;
  type metadata accessor for StorefrontListener(0);
  type metadata accessor for Storefront(0);
  OUTLINED_FUNCTION_1_31();
  sub_1B24D7810(v8, v9, &unk_1B257BDC0);

  sub_1B256E7EC();
  (*(v3 + 16))(v5, a1 + v7, v2);
  return sub_1B24D6B54();
}

uint64_t sub_1B24D68A4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1B256D47C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for StorefrontInternal(0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B24D6994, 0, 0);
}

uint64_t sub_1B24D6994()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v29 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  sub_1B245AEC8(v0[3], v1);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  (*(v3 + 16))(v29, v1 + *(v2 + 24), v4);
  *v5 = v6;
  v5[1] = v7;
  OUTLINED_FUNCTION_10_16();
  v9 = 4 * v8;

  for (i = 15; v9 != i >> 14; i = sub_1B256DA9C())
  {
    OUTLINED_FUNCTION_12_18();
    sub_1B256DB7C();
    v11 = sub_1B256D91C();

    if ((v11 & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_12_18();
  }

  v12 = v0[8];
  v14 = v0[5];
  v13 = v0[6];
  v30 = v0[4];
  v15 = v0[2];
  v16 = sub_1B256DBAC();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = MEMORY[0x1B2749CC0](v16, v18, v20, v22);
  v25 = v24;

  *(v15 + 16) = v23;
  *(v15 + 24) = v25;
  v26 = type metadata accessor for Storefront(0);
  (*(v14 + 32))(v15 + *(v26 + 24), v13, v30);
  sub_1B245AF2C(v12);

  OUTLINED_FUNCTION_7_2();

  return v27();
}

uint64_t sub_1B24D6B54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C10, &qword_1B257BDB8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1D90, &qword_1B25825B8);
  MEMORY[0x1B274AA10](&v4);
  sub_1B246F6B8();

  sub_1B256E7BC();
  (*(*(v2 - 8) + 8))(v0, v2);
  type metadata accessor for StorefrontListener(0);
  type metadata accessor for Storefront(0);
  sub_1B24D7810(&qword_1EB7CDA00, type metadata accessor for StorefrontListener, &unk_1B257BDC0);
  return sub_1B256E7CC();
}

uint64_t Storefront.Storefronts.AsyncIterator.next()()
{
  OUTLINED_FUNCTION_21_5();
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1B247E6B4;

  return (sub_1B24D6D74)(v2);
}

uint64_t sub_1B24D6D74()
{
  OUTLINED_FUNCTION_4_0();
  v1[6] = v2;
  v1[7] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C30, &unk_1B257BE80);
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for StorefrontInternal(0);
  v1[10] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24D6E34()
{
  OUTLINED_FUNCTION_21_5();
  v0[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E40, &unk_1B2587C00);
  v0[12] = sub_1B256E7AC();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C10, &qword_1B257BDB8);
  v2 = sub_1B2472FA8();
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v0[13] = v3;
  *v3 = v4;
  v3[1] = sub_1B24D6F24;
  v5 = v0[8];

  return MEMORY[0x1EEE6D8C8](v5, v1, v2);
}

uint64_t sub_1B24D6F24()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v5 = v4;
  *(v3 + 112) = v0;

  if (v0)
  {
    v6 = sub_1B24D71C0;
  }

  else
  {
    (*(v3 + 96))();
    v6 = sub_1B24D7040;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B24D7040()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0[8];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[9]) == 1)
  {
    sub_1B24D78FC(v1);
    v2 = OUTLINED_FUNCTION_13_15();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);

    OUTLINED_FUNCTION_14_7();

    return v4();
  }

  else
  {
    sub_1B24D7964(v1, v0[10]);
    v6 = sub_1B256E7BC();
    v0[15] = v7;
    v12 = (v6 + *v6);
    swift_task_alloc();
    OUTLINED_FUNCTION_8_2();
    v0[16] = v8;
    *v8 = v9;
    v8[1] = sub_1B24D7244;
    v10 = v0[10];
    v11 = v0[6];

    return v12(v11, v10);
  }
}

uint64_t sub_1B24D71C0()
{
  OUTLINED_FUNCTION_4_0();
  (*(v0 + 96))();

  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B24D7244()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v4 = v3;

  sub_1B245AF2C(v2);
  v5 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B24D7360()
{
  OUTLINED_FUNCTION_21_5();
  v0 = OUTLINED_FUNCTION_13_15();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  OUTLINED_FUNCTION_14_7();

  return v2();
}

uint64_t sub_1B24D73D8()
{
  OUTLINED_FUNCTION_4_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1B247E844;

  return Storefront.Storefronts.AsyncIterator.next()();
}

uint64_t sub_1B24D7468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1B2445834;

  return (sub_1B247E618)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1B24D754C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C20, &qword_1B257BE40);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  type metadata accessor for ClientOverride.Server(0);
  v3 = OUTLINED_FUNCTION_11_16();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  type metadata accessor for StorefrontListener(0);
  swift_allocObject();
  result = sub_1B2470808(v2);
  qword_1EB7EDF68 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Storefront.Storefronts(_BYTE *result, int a2, int a3)
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

void sub_1B24D7754(uint64_t a1)
{
  sub_1B24D7858(319, &qword_1EB7CD940, MEMORY[0x1E69E8860]);
  if (v1 <= 0x3F)
  {
    sub_1B24D7858(319, &qword_1EB7CD938, MEMORY[0x1E69E8870]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B24D7810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B24D7858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StorefrontListener(255);
    v7 = type metadata accessor for Storefront(255);
    OUTLINED_FUNCTION_1_31();
    v10 = sub_1B24D7810(v8, v9, &unk_1B257BDC0);
    v11 = a3(a1, v6, v7, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1B24D78FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C30, &unk_1B257BE80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B24D7964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorefrontInternal(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_15()
{
  v1 = *(v0 + 48);
  type metadata accessor for Storefront(0);
  return v1;
}

uint64_t sub_1B24D7A64(uint64_t a1, unint64_t a2, char a3)
{
  v4 = 0xE300000000000000;
  v5 = 7104878;
  switch(a3)
  {
    case 1:
      v5 = sub_1B256DF7C();
      goto LABEL_13;
    case 2:
      sub_1B24554E4();
      v5 = sub_1B256E3AC();
      goto LABEL_13;
    case 3:
      if (a1)
      {
        v5 = 1702195828;
      }

      else
      {
        v5 = 0x65736C6166;
      }

      if (a1)
      {
        v4 = 0xE400000000000000;
      }

      else
      {
        v4 = 0xE500000000000000;
      }

      break;
    case 4:
      v5 = MEMORY[0x1B2749EE0](a1, &type metadata for BackingValue);
      goto LABEL_13;
    case 5:
      v5 = sub_1B256D88C();
LABEL_13:
      v4 = v7;
      break;
    case 6:
      break;
    default:

      v5 = a1;
      v4 = a2;
      break;
  }

  MEMORY[0x1B2749D50](v5, v4);
}

void sub_1B24D7B84()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v4 = 0;
  v53 = *MEMORY[0x1E69E9840];
  v47[0] = v2;
  v47[1] = v0;
  *&v50 = v2;
  *(&v50 + 1) = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1E88, &qword_1B2582BB8);
  if (swift_dynamicCast())
  {
    sub_1B23F22D0(v48, &v51);
    __swift_project_boxed_opaque_existential_1(&v51, v52);
    OUTLINED_FUNCTION_44_5();
    sub_1B256CF9C();
    v48[0] = v50;
    __swift_destroy_boxed_opaque_existential_1(&v51);
    goto LABEL_59;
  }

  v49 = 0;
  memset(v48, 0, sizeof(v48));
  sub_1B243E88C(v48, &qword_1EB7D1E90, &qword_1B2582BC0);
  if ((v1 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    *&v48[0] = v3;
    *(&v48[0] + 1) = v1 & 0xFFFFFFFFFFFFFFLL;
    v5 = v48;
    v6 = HIBYTE(v1) & 0xF;
  }

  else if ((v3 & 0x1000000000000000) != 0)
  {
    v5 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    OUTLINED_FUNCTION_38_7();
    v5 = sub_1B256E5FC();
  }

  sub_1B24E2AE0(v5, v6, &v51);
  v7 = *(&v51 + 1);
  v8 = v51;
  if (*(&v51 + 1) >> 60 != 15)
  {
    v48[0] = v51;
    goto LABEL_59;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v48[0] = MEMORY[0x1B2749450](v9);
  *(&v48[0] + 1) = v10;
  MEMORY[0x1EEE9AC00](*&v48[0]);
  v42[2] = v47;
  v11 = sub_1B24E2BFC(sub_1B24E3898, v42);
  v13 = *(&v48[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v48[0]);
  switch(*(&v48[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v48[0]) - LODWORD(v48[0]);
      if (__OFSUB__(DWORD1(v48[0]), v48[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v48[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v48[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v48[0] + 16);
      v21 = *(*&v48[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1B256D1CC();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v42[4] = v4;
      v43 = v8;
      v44 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v45 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v46 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v50 + 7) = 0;
      *&v50 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v48[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v32 = OUTLINED_FUNCTION_80_2();
      v28 = sub_1B253ACCC(v32, v33, v34);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      OUTLINED_FUNCTION_38_7();
      v9 = sub_1B256DAFC();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_1B256DB2C();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v51 = v14;
      *(&v51 + 1) = v46;
      v31 = *(&v51 + v29);
    }

    else
    {
      v30 = v45;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1B256E5FC();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v35 = OUTLINED_FUNCTION_80_2();
      v18 = sub_1B253ACCC(v35, v36, v37);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_80_2();
    v18 = sub_1B256DB0C();
LABEL_46:
    *(&v50 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      OUTLINED_FUNCTION_110_1();
      sub_1B256D1EC();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    OUTLINED_FUNCTION_110_1();
    sub_1B256D1EC();
    sub_1B2443AD0(v43, v44);
    goto LABEL_58;
  }

  sub_1B2443AD0(v43, v44);
LABEL_59:
  v38 = OUTLINED_FUNCTION_18_1();
  sub_1B244784C(v38, v39);

  v40 = OUTLINED_FUNCTION_18_1();
  sub_1B2443AE4(v40, v41);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B24D8028()
{
  OUTLINED_FUNCTION_105_2();
  v1 = sub_1B256D73C();
  v6 = v1;
  v7 = sub_1B24E2450(&qword_1EB7D1E40, MEMORY[0x1E6966408], MEMORY[0x1E69663F8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  v3 = *(v1 - 8);
  (*(v3 + 16))(boxed_opaque_existential_1, v0, v1);
  __swift_project_boxed_opaque_existential_1(v5, v6);
  OUTLINED_FUNCTION_44_5();
  sub_1B256CF9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  (*(v3 + 8))(v0, v1);
  return OUTLINED_FUNCTION_18_1();
}

void _s8StoreKit7ProductV14PurchaseOptionV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  _s14PurchaseOptionV19PurchaseOptionValueOMa(0);
  OUTLINED_FUNCTION_7_0();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = (&a9 - v31);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &a9 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &a9 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1E80, &qword_1B2582BB0);
  v39 = OUTLINED_FUNCTION_2_2(v38);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &a9 - v41;
  v43 = &a9 + *(v40 + 56) - v41;
  sub_1B24E19D8(v25, &a9 - v41);
  sub_1B24E19D8(v23, v43);
  OUTLINED_FUNCTION_41_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      goto LABEL_35;
    case 2u:
      OUTLINED_FUNCTION_1_32();
      sub_1B24E19D8(v42, v37);
      v48 = *v37;
      v47 = *(v37 + 1);
      sub_1B24472E0(*(v37 + 2), *(v37 + 3), v37[32]);
      OUTLINED_FUNCTION_18_1();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_18;
      }

      v50 = *v43;
      v49 = *(v43 + 1);
      sub_1B24472E0(*(v43 + 2), *(v43 + 3), v43[32]);
      if (v48 != v50 || v47 != v49)
      {
        goto LABEL_17;
      }

      goto LABEL_32;
    case 3u:
      OUTLINED_FUNCTION_18_1();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_35;
      }

      goto LABEL_26;
    case 4u:
      OUTLINED_FUNCTION_18_1();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    case 5u:
      OUTLINED_FUNCTION_18_1();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_24;
      }

      goto LABEL_35;
    case 6u:
      OUTLINED_FUNCTION_18_1();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    case 7u:
      OUTLINED_FUNCTION_18_1();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_35;
      }

LABEL_24:
      OUTLINED_FUNCTION_0_35();
      goto LABEL_27;
    case 8u:
      OUTLINED_FUNCTION_1_32();
      sub_1B24E19D8(v42, v35);
      OUTLINED_FUNCTION_18_1();
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_33;
      }

      goto LABEL_35;
    case 9u:
      OUTLINED_FUNCTION_1_32();
      sub_1B24E19D8(v42, v32);
      v45 = *v32;
      v44 = v32[1];
      OUTLINED_FUNCTION_18_1();
      if (swift_getEnumCaseMultiPayload() != 9)
      {
LABEL_18:

        goto LABEL_35;
      }

      if (v45 != *v43 || v44 != *(v43 + 1))
      {
LABEL_17:
        OUTLINED_FUNCTION_72_1();
        sub_1B256EB5C();
      }

LABEL_32:

      goto LABEL_33;
    case 0xAu:
      OUTLINED_FUNCTION_1_32();
      sub_1B24E19D8(v42, v29);
      OUTLINED_FUNCTION_18_1();
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v52 = *v43;
        v53 = *(v43 + 1);
        v54 = OUTLINED_FUNCTION_72_1();
        MEMORY[0x1B2749490](v54);
        sub_1B2443AE4(v52, v53);
        v55 = OUTLINED_FUNCTION_72_1();
        sub_1B2443AE4(v55, v56);
LABEL_33:
        OUTLINED_FUNCTION_0_35();
        sub_1B24E1A30();
      }

      else
      {
        v57 = OUTLINED_FUNCTION_72_1();
        sub_1B2443AE4(v57, v58);
LABEL_35:
        sub_1B243E88C(v42, &qword_1EB7D1E80, &qword_1B2582BB0);
      }

LABEL_36:
      OUTLINED_FUNCTION_45();
      return;
    default:
      OUTLINED_FUNCTION_18_1();
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_35;
      }

LABEL_26:
      sub_1B24E1A30();
      OUTLINED_FUNCTION_41_1();
LABEL_27:
      sub_1B24E1A30();
      goto LABEL_36;
  }
}

uint64_t _s8StoreKit7ProductV14PurchaseOptionV4hash4intoys6HasherVz_tF_0()
{
  v0 = OUTLINED_FUNCTION_7_9();
  _s14PurchaseOptionV19PurchaseOptionValueOMa(v0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_1_32();
  v5 = OUTLINED_FUNCTION_24();
  sub_1B24E19D8(v5, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_35();
      sub_1B24E1A30();
      v8 = 1;
      goto LABEL_14;
    case 2u:
      sub_1B24472E0(*(v4 + 16), *(v4 + 24), *(v4 + 32));
      OUTLINED_FUNCTION_18_1();
      sub_1B256DA7C();

    case 3u:
      v7 = 3;
      goto LABEL_7;
    case 4u:
      v8 = 4;
      goto LABEL_14;
    case 5u:
      v8 = 5;
      goto LABEL_14;
    case 6u:
      OUTLINED_FUNCTION_0_35();
      sub_1B24E1A30();
      v8 = 6;
      goto LABEL_14;
    case 7u:
      v8 = 7;
      goto LABEL_14;
    case 8u:
      v8 = 8;
      goto LABEL_14;
    case 9u:
      OUTLINED_FUNCTION_0_35();
      sub_1B24E1A30();
      v8 = 9;
      goto LABEL_14;
    case 0xAu:
      OUTLINED_FUNCTION_0_35();
      sub_1B24E1A30();
      v8 = 10;
LABEL_14:
      result = MEMORY[0x1B274AFC0](v8);
      break;
    default:
      v7 = 0;
LABEL_7:
      MEMORY[0x1B274AFC0](v7);
      OUTLINED_FUNCTION_0_35();
      result = sub_1B24E1A30();
      break;
  }

  return result;
}

BOOL sub_1B24D8668(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1B256EB5C()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), (v5 || (sub_1B256EB5C()) && (v6 = _s14PurchaseOptionV33PromotionalOfferSignatureMetadataVMa(0), (_s8StoreKit7ProductV19ContingentPriceInfoV2IDV2eeoiySbAG_AGtFZ_0()) && (MEMORY[0x1B2749490](*(a1 + *(v6 + 28)), *(a1 + *(v6 + 28) + 8), *(a2 + *(v6 + 28)), *(a2 + *(v6 + 28) + 8))))
  {
    return *(a1 + *(v6 + 32)) == *(a2 + *(v6 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B24D8730(uint64_t a1)
{
  sub_1B256DA7C();
  sub_1B256DA7C();
  v2 = _s14PurchaseOptionV33PromotionalOfferSignatureMetadataVMa(0);
  sub_1B256D3CC();
  OUTLINED_FUNCTION_42_3();
  sub_1B24E2450(v3, v4, MEMORY[0x1E69695B8]);
  sub_1B256D8FC();
  sub_1B256D23C();
  return MEMORY[0x1B274AFC0](*(v1 + *(v2 + 32)));
}

uint64_t sub_1B24D87F0(uint64_t a1)
{
  OUTLINED_FUNCTION_38_3(a1);
  sub_1B256DA7C();
  sub_1B256DA7C();
  v2 = _s14PurchaseOptionV33PromotionalOfferSignatureMetadataVMa(0);
  sub_1B256D3CC();
  OUTLINED_FUNCTION_42_3();
  sub_1B24E2450(v3, v4, MEMORY[0x1E69695B8]);
  sub_1B256D8FC();
  sub_1B256D23C();
  MEMORY[0x1B274AFC0](*(v1 + *(v2 + 32)));
  return sub_1B256ED7C();
}

uint64_t sub_1B24D88C0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_38_3(a1);
  sub_1B256DA7C();
  return sub_1B256ED7C();
}

uint64_t sub_1B24D892C(uint64_t a1)
{
  OUTLINED_FUNCTION_38_3(a1);
  MEMORY[0x1B274AFC0](0);
  return sub_1B256ED7C();
}

uint64_t sub_1B24D8994(uint64_t a1, uint64_t a2)
{
  sub_1B256ED3C();
  sub_1B256DA7C();
  sub_1B256DA7C();
  sub_1B256D3CC();
  sub_1B24E2450(&qword_1EB7CDC38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1B256D8FC();
  sub_1B256D23C();
  MEMORY[0x1B274AFC0](*(v2 + *(a2 + 32)));
  return sub_1B256ED7C();
}

uint64_t sub_1B24D8A90()
{
  sub_1B256ED3C();
  sub_1B256DA7C();
  return sub_1B256ED7C();
}

uint64_t Product.PurchaseOption.ResultMode.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_38_3(a1);
  MEMORY[0x1B274AFC0](v2);
  return sub_1B256ED7C();
}

uint64_t static Product.PurchaseOption.appAccountToken(_:)()
{
  sub_1B256D3CC();
  OUTLINED_FUNCTION_7_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2(v1);
  OUTLINED_FUNCTION_15_17();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static Product.PurchaseOption.clientOverride(auditToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  *a5 = MEMORY[0x1B27494C0](v8, 32);
  a5[1] = v6;
  OUTLINED_FUNCTION_15_17();
  return swift_storeEnumTagMultiPayload();
}

uint64_t static Product.PurchaseOption.custom(key:value:)()
{
  OUTLINED_FUNCTION_71_2();
  v1 = *v0;
  v2 = v0[1];
  *v5 = v3;
  *(v5 + 8) = v4;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = *(v0 + 16);
  *(v5 + 32) = v6;
  v7 = OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_130_1(v7, v8);

  v9 = OUTLINED_FUNCTION_27_0();

  return sub_1B24472B8(v9, v10, v6);
}

{
  OUTLINED_FUNCTION_71_2();
  *v3 = v1;
  v3[1] = v2;
  v3[2] = v4;
  v3[3] = 0;
  *(v0 + 32) = 1;
  v5 = OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_130_1(v5, v6);
}

{
  OUTLINED_FUNCTION_71_2();
  *v0 = v2;
  *(v0 + 8) = v3;
  *(v0 + 16) = v1 & 1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 3;
  v4 = OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_130_1(v4, v5);
}

uint64_t static Product.PurchaseOption.custom(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
  OUTLINED_FUNCTION_15_17();
  swift_storeEnumTagMultiPayload();
}

uint64_t static Product.PurchaseOption.custom(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{

  v8 = sub_1B256D20C();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v8;
  *(a5 + 24) = v9;
  *(a5 + 32) = 0;
  OUTLINED_FUNCTION_15_17();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static Product.PurchaseOption.isStoreKitViewInitiated(in:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *a1;
  OUTLINED_FUNCTION_15_17();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static Product.PurchaseOption.onStorefrontChange(shouldContinuePurchase:)()
{
  OUTLINED_FUNCTION_71_2();
  *v2 = v0;
  v2[1] = v1;
  OUTLINED_FUNCTION_15_17();
  swift_storeEnumTagMultiPayload();
}

void static Product.PurchaseOption.promotionalOffer(offerID:keyID:nonce:signature:timestamp:)()
{
  OUTLINED_FUNCTION_67();
  v26 = v0;
  v27 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = _s14PurchaseOptionV33PromotionalOfferSignatureMetadataVMa(0);
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v18 = (v17 - v16);
  v19 = v15[8];
  sub_1B256D3CC();
  OUTLINED_FUNCTION_7_0();
  (*(v20 + 16))(&v18[v19], v5);
  *v18 = v13;
  *(v18 + 1) = v11;
  *(v18 + 2) = v9;
  *(v18 + 3) = v7;
  v21 = &v18[v15[9]];
  *v21 = v3;
  *(v21 + 1) = v26;
  *&v18[v15[10]] = v27;
  OUTLINED_FUNCTION_3_30();
  v22 = OUTLINED_FUNCTION_35_0();
  sub_1B24E30E4(v22, v23);
  OUTLINED_FUNCTION_15_17();
  swift_storeEnumTagMultiPayload();

  v24 = OUTLINED_FUNCTION_38_7();
  sub_1B244784C(v24, v25);
  OUTLINED_FUNCTION_45();
}

void static Product.PurchaseOption.promotionalOffer(offerID:signature:)()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v23 = v4;
  v6 = v5;
  v7 = _s14PurchaseOptionV33PromotionalOfferSignatureMetadataVMa(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v11 = (v10 - v9);
  v13 = *v1;
  v12 = *(v1 + 1);
  v14 = type metadata accessor for Product.SubscriptionOffer.Signature(0);
  v15 = v14[5];
  v16 = v8[8];
  sub_1B256D3CC();
  OUTLINED_FUNCTION_7_0();
  (*(v17 + 16))(&v11[v16], &v1[v15]);
  v18 = &v1[v14[7]];
  v19 = *&v1[v14[6]];
  v20 = *v18;
  v21 = v18[1];
  *v11 = v23;
  *(v11 + 1) = v3;
  *(v11 + 2) = v13;
  *(v11 + 3) = v12;
  v22 = &v11[v8[9]];
  *v22 = v20;
  v22[1] = v21;
  *&v11[v8[10]] = v19;
  OUTLINED_FUNCTION_3_30();
  sub_1B24E30E4(v11, v6);
  OUTLINED_FUNCTION_15_17();
  swift_storeEnumTagMultiPayload();

  sub_1B244784C(v20, v21);
  OUTLINED_FUNCTION_45();
}

uint64_t static Product.PurchaseOption.promotionalOffer(_:compactJWS:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1D98, &qword_1B2582600);
  v4 = type metadata accessor for Product.PurchaseOption(0);
  OUTLINED_FUNCTION_26_7(v4);
  v6 = *(v5 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B257CB00;
  v10 = v9 + v8;
  strcpy(v10, "adHocOfferId");
  *(v10 + 13) = 0;
  *(v10 + 14) = -5120;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = 0;
  _s14PurchaseOptionV19PurchaseOptionValueOMa(0);
  OUTLINED_FUNCTION_35_0();
  swift_storeEnumTagMultiPayload();
  v11 = v10 + v6;

  OUTLINED_FUNCTION_38_7();
  sub_1B24D7B84();
  OUTLINED_FUNCTION_12_18();
  v12 = sub_1B256D20C();
  v14 = v13;
  v15 = OUTLINED_FUNCTION_22_1();
  sub_1B2443AE4(v15, v16);
  strcpy(v11, "adHocSignature");
  *(v11 + 15) = -18;
  *(v11 + 16) = v12;
  *(v11 + 24) = v14;
  *(v11 + 32) = 0;
  OUTLINED_FUNCTION_35_0();
  swift_storeEnumTagMultiPayload();
  return v9;
}

uint64_t static Product.PurchaseOption.quantity(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  OUTLINED_FUNCTION_15_17();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static Product.PurchaseOption.resultMode(_:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *a1;
  OUTLINED_FUNCTION_15_17();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static Product.PurchaseOption.simulatesAskToBuyInSandbox(_:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  OUTLINED_FUNCTION_15_17();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static Product.PurchaseOption.winBackOffer(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    v3 = *a1;
    v4 = a1[1];
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *a2 = v3;
  a2[1] = v4;
  OUTLINED_FUNCTION_15_17();
  swift_storeEnumTagMultiPayload();
}

uint64_t static Product.PurchaseOption.winBackOffer(with:)()
{
  OUTLINED_FUNCTION_71_2();
  *v2 = v0;
  v2[1] = v1;
  OUTLINED_FUNCTION_15_17();
  swift_storeEnumTagMultiPayload();
}

uint64_t static Product.PurchaseOption.introductoryOfferEligibility(compactJWS:)()
{
  OUTLINED_FUNCTION_71_2();
  *v0 = 0xD00000000000001ALL;
  *(v0 + 8) = 0x80000001B25904E0;
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  v3 = OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_130_1(v3, v4);
}

uint64_t static Product.PurchaseOption.metricsOverlay(_:)@<X0>(uint64_t *a2@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v4 = sub_1B256D86C();
  v5 = [v3 isValidJSONObject_];

  if (v5)
  {
    v6 = sub_1B256D86C();
    v14[0] = 0;
    v7 = [v3 dataWithJSONObject:v6 options:0 error:v14];

    v8 = v14[0];
    if (v7)
    {
      v9 = sub_1B256D22C();
      v11 = v10;

      *a2 = v9;
      a2[1] = v11;
      _s14PurchaseOptionV19PurchaseOptionValueOMa(0);
      return swift_storeEnumTagMultiPayload();
    }

    v13 = v8;
    sub_1B256D0DC();
  }

  else
  {
    sub_1B24D9690();
    swift_allocError();
  }

  return swift_willThrow();
}

unint64_t sub_1B24D9690()
{
  result = qword_1EB7D1DA0;
  if (!qword_1EB7D1DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1DA0);
  }

  return result;
}

uint64_t sub_1B24D96EC(uint64_t a1)
{
  OUTLINED_FUNCTION_38_3(a1);
  _s8StoreKit7ProductV14PurchaseOptionV4hash4intoys6HasherVz_tF_0();
  return sub_1B256ED7C();
}

uint64_t sub_1B24D9730()
{
  sub_1B256ED3C();
  _s8StoreKit7ProductV14PurchaseOptionV4hash4intoys6HasherVz_tF_0();
  return sub_1B256ED7C();
}

void Product.PurchaseOption.debugDescription.getter()
{
  OUTLINED_FUNCTION_67();
  v1 = _s14PurchaseOptionV33PromotionalOfferSignatureMetadataVMa(0);
  OUTLINED_FUNCTION_7_0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v58 - v4);
  v6 = sub_1B256D3CC();
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  _s14PurchaseOptionV19PurchaseOptionValueOMa(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = (v15 - v14);
  OUTLINED_FUNCTION_1_32();
  sub_1B24E19D8(v0, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_23_7();
      sub_1B256E4FC();

      OUTLINED_FUNCTION_28_7();
      *&v59 = v45 | 1;
      *(&v59 + 1) = v44;
      OUTLINED_FUNCTION_27_0();
      v46 = sub_1B256D19C();
      MEMORY[0x1B2749D50](v46);

      MEMORY[0x1B2749D50](8745, 0xE200000000000000);
      v47 = OUTLINED_FUNCTION_27_0();
      sub_1B2443AE4(v47, v48);
      break;
    case 2u:
      v49 = *(v16 + 2);
      v50 = *(v16 + 3);
      v51 = v16[32];
      OUTLINED_FUNCTION_23_7();
      MEMORY[0x1B2749D50](34, 0xE100000000000000);
      v52 = OUTLINED_FUNCTION_27_0();
      MEMORY[0x1B2749D50](v52);

      MEMORY[0x1B2749D50](2112034, 0xE300000000000000);
      sub_1B24D7A64(v49, v50, v51);
      sub_1B24472E0(v49, v50, v51);
      break;
    case 3u:
      OUTLINED_FUNCTION_3_30();
      sub_1B24E30E4(v16, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1DA8, &qword_1B2582608);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B25825E0;
      *(inited + 32) = 0x4449726566666FLL;
      *(inited + 40) = 0xE700000000000000;
      v24 = v5[1];
      *(inited + 48) = *v5;
      *(inited + 56) = v24;
      *(inited + 64) = 0;
      *(inited + 72) = 0x444979656BLL;
      *(inited + 80) = 0xE500000000000000;
      v25 = v5[3];
      *(inited + 88) = v5[2];
      *(inited + 96) = v25;
      *(inited + 104) = 0;
      *(inited + 112) = 0x65636E6F6ELL;
      *(inited + 120) = 0xE500000000000000;

      *&v59 = sub_1B256D38C();
      *(&v59 + 1) = v26;
      sub_1B243E6F8();
      v27 = sub_1B256E33C();
      v29 = v28;

      *(inited + 128) = v27;
      *(inited + 136) = v29;
      *(inited + 144) = 0;
      *(inited + 152) = 0x727574616E676973;
      *(inited + 160) = 0xE900000000000065;
      v30 = OUTLINED_FUNCTION_14_3();
      sub_1B24E19D8(v30, v31);
      OUTLINED_FUNCTION_72_1();
      *(inited + 168) = sub_1B256D9FC();
      *(inited + 176) = v32;
      *(inited + 184) = 0;
      *(inited + 192) = 0x6D617473656D6974;
      *(inited + 200) = 0xE900000000000070;
      v33 = *(v5 + *(v1 + 32));
      if (qword_1EB7CFC48 != -1)
      {
        swift_once();
      }

      if (qword_1EB7D05C0 >= v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = *&v33;
      }

      if (qword_1EB7D05C0 >= v33)
      {
        v35 = 1;
      }

      else
      {
        v35 = 2;
      }

      *(inited + 208) = v34;
      *(inited + 216) = 0;
      *(inited + 224) = v35;
      OUTLINED_FUNCTION_106_2();
      sub_1B256D8AC();
      OUTLINED_FUNCTION_23_7();
      sub_1B256E4FC();

      OUTLINED_FUNCTION_28_7();
      *&v59 = v37;
      *(&v59 + 1) = v36;
      OUTLINED_FUNCTION_106_2();
      v38 = sub_1B256D89C();
      v40 = v39;

      MEMORY[0x1B2749D50](v38, v40);

      OUTLINED_FUNCTION_13_16();
      sub_1B24E1A30();
      break;
    case 4u:
      v53 = *v16;
      OUTLINED_FUNCTION_23_7();
      sub_1B256E4FC();

      *&v59 = 0xD00000000000001ELL;
      *(&v59 + 1) = 0x80000001B2590580;
      if (v53)
      {
        v54 = 1702195828;
      }

      else
      {
        v54 = 0x65736C6166;
      }

      if (v53)
      {
        v55 = 0xE400000000000000;
      }

      else
      {
        v55 = 0xE500000000000000;
      }

      v56 = v55;
      goto LABEL_24;
    case 5u:
      v57 = *v16;
      strcpy(&v59, "quantity: ");
      BYTE13(v59) = 0;
      HIWORD(v59) = -5120;
      v58[0] = v57;
      v54 = sub_1B256EAAC();
LABEL_24:
      MEMORY[0x1B2749D50](v54, v56);
      goto LABEL_25;
    case 6u:
      OUTLINED_FUNCTION_0_35();
      sub_1B24E1A30();
      break;
    case 7u:
      break;
    case 8u:
      OUTLINED_FUNCTION_114_1();
      break;
    case 9u:
      OUTLINED_FUNCTION_23_7();
      sub_1B256E4FC();

      OUTLINED_FUNCTION_28_7();
      *&v59 = v42 - 4;
      *(&v59 + 1) = v41;
      v43 = OUTLINED_FUNCTION_27_0();
      MEMORY[0x1B2749D50](v43);
LABEL_25:

      break;
    case 0xAu:
      sub_1B24E1A30();
      OUTLINED_FUNCTION_114_1();
      break;
    default:
      (*(v8 + 32))(v12, v16, v6);
      OUTLINED_FUNCTION_23_7();
      sub_1B256E4FC();

      OUTLINED_FUNCTION_28_7();
      *&v59 = v18;
      *(&v59 + 1) = v17;
      v58[0] = sub_1B256D38C();
      v58[1] = v19;
      sub_1B243E6F8();
      v20 = sub_1B256E33C();
      v22 = v21;

      MEMORY[0x1B2749D50](v20, v22);

      MEMORY[0x1B2749D50](34, 0xE100000000000000);
      (*(v8 + 8))(v12, v6);
      break;
  }

  OUTLINED_FUNCTION_45();
}

uint64_t Product.PurchaseOption.key.getter()
{
  _s14PurchaseOptionV19PurchaseOptionValueOMa(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_13();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_1_32();
  v4 = OUTLINED_FUNCTION_18_1();
  sub_1B24E19D8(v4, v5);
  OUTLINED_FUNCTION_24();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_35();
      sub_1B24E1A30();
      OUTLINED_FUNCTION_14_2();
      break;
    case 2u:
      sub_1B24472E0(*(v3 + 16), *(v3 + 24), *(v3 + 32));
      break;
    case 3u:
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_0_35();
      sub_1B24E1A30();
      break;
    case 4u:
    case 8u:
      OUTLINED_FUNCTION_14_2();
      break;
    case 5u:
    case 7u:
      return OUTLINED_FUNCTION_38_7();
    case 6u:
      sub_1B24E1A30();
      OUTLINED_FUNCTION_14_2();
      break;
    default:
      sub_1B24E1A30();
      break;
  }

  return OUTLINED_FUNCTION_38_7();
}

void Product.PurchaseOption.value<A>(as:)()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = _s14PurchaseOptionV33PromotionalOfferSignatureMetadataVMa(0);
  v7 = OUTLINED_FUNCTION_2_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = (v9 - v8);
  v11 = sub_1B256D3CC();
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v17 = v16 - v15;
  _s14PurchaseOptionV19PurchaseOptionValueOMa(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v21 = v20 - v19;
  OUTLINED_FUNCTION_1_32();
  sub_1B24E19D8(v1, v21);
  OUTLINED_FUNCTION_153();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      (*(v13 + 32))(v17, v21, v11);
      if (swift_dynamicCast())
      {
        v22 = v5;
        v23 = 0;
      }

      else
      {
        v22 = v5;
        v23 = 1;
      }

      goto LABEL_10;
    case 2u:
      v26 = *(v21 + 16);
      v27 = *(v21 + 24);
      v28 = *(v21 + 32);

      v32 = v26;
      v33 = v27;
      v34 = v28;
      BackingValue.foundation.getter(&v30);
      sub_1B24472E0(v26, v27, v28);
      goto LABEL_9;
    case 3u:
      OUTLINED_FUNCTION_3_30();
      sub_1B24E30E4(v21, v10);
      v25 = *v10;
      v24 = v10[1];

      OUTLINED_FUNCTION_13_16();
      sub_1B24E1A30();
      v30 = v25;
      v31 = v24;
      goto LABEL_9;
    case 5u:
      v30 = *v21;
      goto LABEL_9;
    case 9u:
      v29 = *(v21 + 8);
      v30 = *v21;
      v31 = v29;
LABEL_9:
      v23 = swift_dynamicCast() ^ 1;
      v22 = v5;
LABEL_10:
      __swift_storeEnumTagSinglePayload(v22, v23, 1, v3);
      break;
    default:
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v3);
      OUTLINED_FUNCTION_0_35();
      sub_1B24E1A30();
      break;
  }

  OUTLINED_FUNCTION_45();
}

uint64_t Product.PurchaseError.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_38_3(a1);
  MEMORY[0x1B274AFC0](v2);
  return sub_1B256ED7C();
}

uint64_t Product.purchase(options:)()
{
  OUTLINED_FUNCTION_4_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_1B256DD6C();
  v1[5] = sub_1B256DD5C();
  OUTLINED_FUNCTION_120();
  v5 = sub_1B256DCEC();
  v1[6] = v5;
  v1[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B24DA42C, v5, v4);
}

uint64_t sub_1B24DA42C()
{
  OUTLINED_FUNCTION_4_0();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  OUTLINED_FUNCTION_33_5(qword_1B2581600);
  v6 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 72) = v3;
  *v3 = v4;
  v3[1] = sub_1B24DA4F8;
  OUTLINED_FUNCTION_32_4();

  return v6();
}

uint64_t sub_1B24DA4F8()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  v3[10] = v0;

  if (v0)
  {
    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_1B24DA654;
  }

  else
  {

    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_1B24DA5FC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B24DA5FC()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_14_7();

  return v0();
}

uint64_t sub_1B24DA654()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B24DA6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  sub_1B256DD6C();
  v3[12] = sub_1B256DD5C();
  v5 = sub_1B256DCEC();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B24DA758, v5, v4);
}

uint64_t sub_1B24DA758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_159();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = [objc_opt_self() sharedApplication];
  v28 = [v27 connectedScenes];

  sub_1B246063C(0, &qword_1EB7D0E20, 0x1E69DCE70);
  sub_1B248BF68();
  v29 = sub_1B256DFBC();

  if ((v29 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B256E43C();
    sub_1B256DFEC();
    v31 = v24[2];
    v30 = v24[3];
    v32 = v24[4];
    v33 = v24[5];
    v34 = v24[6];
  }

  else
  {
    v35 = -1 << *(v29 + 32);
    v30 = v29 + 56;
    v32 = ~v35;
    v36 = -v35;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v34 = v37 & *(v29 + 56);

    v33 = 0;
    v31 = v29;
  }

  v38 = (v32 + 64) >> 6;
  if (v31 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v39 = v33;
  v40 = v34;
  v41 = v33;
  if (!v34)
  {
    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v38)
      {
        goto LABEL_19;
      }

      v40 = *(v30 + 8 * v41);
      ++v39;
      if (v40)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_12:
  v42 = (v40 - 1) & v40;
  v43 = *(*(v31 + 48) + ((v41 << 9) | (8 * __clz(__rbit64(v40)))));
  if (!v43)
  {
LABEL_19:
    OUTLINED_FUNCTION_99_2();
    v43 = 0;
LABEL_20:
    v45 = 0;
    goto LABEL_21;
  }

  while ([v43 activationState])
  {

    v33 = v41;
    v34 = v42;
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v44 = sub_1B256E44C();
    if (v44)
    {
      v24[8] = v44;
      swift_dynamicCast();
      v43 = v24[7];
      v41 = v33;
      v42 = v34;
      if (v43)
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_99_2();

  v63 = [v43 _visibleWindows];
  sub_1B246063C(0, &qword_1EB7D0E30, 0x1E69DD2E8);
  v64 = sub_1B256DC5C();

  if (!sub_1B24D0D24())
  {
    goto LABEL_20;
  }

  sub_1B2463718();
  if ((v64 & 0xC000000000000001) != 0)
  {
    v65 = MEMORY[0x1B274A7A0](0, v64);
  }

  else
  {
    v65 = *(v64 + 32);
  }

  v45 = v65;
LABEL_21:
  v24[15] = v43;
  v24[16] = v45;

  v46 = [v45 rootViewController];
  v24[17] = v46;
  if (!v46)
  {
    if (qword_1ED699E80 == -1)
    {
LABEL_23:
      v47 = v24[10];
      v48 = type metadata accessor for SKLogger(0);
      __swift_project_value_buffer(v48, qword_1ED69A108);
      a12 = 0;
      a13 = 0xE000000000000000;
      sub_1B256E4FC();
      MEMORY[0x1B2749D50](0xD00000000000001FLL, 0x80000001B258F1B0);
      MEMORY[0x1B2749D50](*(v47 + 48), *(v47 + 56));
      MEMORY[0x1B2749D50](0xD000000000000025, 0x80000001B258F1D0);
      v50 = a12;
      v49 = a13;
      LOBYTE(v47) = sub_1B256E0AC();

      v51 = sub_1B256D5CC();

      if (os_log_type_enabled(v51, v47))
      {
        v52 = OUTLINED_FUNCTION_21_3();
        v53 = OUTLINED_FUNCTION_20_4();
        a12 = v53;
        *v52 = 136446466;
        v55 = OUTLINED_FUNCTION_75_2(v53, v54, &a12);
        OUTLINED_FUNCTION_82_2(v55);
        v56 = sub_1B2519814(v50, v49, &a12);

        *(v52 + 14) = v56;
        OUTLINED_FUNCTION_66_1(&dword_1B23EF000, v57, v58, "%{public}s%{public}s");
        OUTLINED_FUNCTION_101_2();
        OUTLINED_FUNCTION_11_4();
        OUTLINED_FUNCTION_10_7();
      }

      else
      {
      }

      goto LABEL_27;
    }

LABEL_35:
    OUTLINED_FUNCTION_0_17(&qword_1ED699E80);
    goto LABEL_23;
  }

LABEL_27:
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v24[18] = v59;
  *v59 = v60;
  v59[1] = sub_1B24DAC08;
  OUTLINED_FUNCTION_8_7();

  return sub_1B24DAE2C();
}

uint64_t sub_1B24DAC08()
{
  OUTLINED_FUNCTION_21_5();
  v2 = *v1;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 152) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_1B24DADB0;
  }

  else
  {
    v7 = sub_1B24DAD38;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B24DAD38()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);

  OUTLINED_FUNCTION_14_7();

  return v3();
}

uint64_t sub_1B24DADB0()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t sub_1B24DAE2C()
{
  OUTLINED_FUNCTION_21_5();
  v1[226] = v0;
  v1[225] = v2;
  v1[224] = v3;
  v1[223] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1E48, &unk_1B2582B10);
  OUTLINED_FUNCTION_2_2(v5);
  v1[227] = OUTLINED_FUNCTION_250();
  v6 = type metadata accessor for Transaction(0);
  OUTLINED_FUNCTION_2_2(v6);
  v1[228] = swift_task_alloc();
  v1[229] = swift_task_alloc();
  v7 = type metadata accessor for SKLogger(0);
  v1[230] = v7;
  OUTLINED_FUNCTION_2_2(v7);
  v1[231] = OUTLINED_FUNCTION_250();
  v8 = type metadata accessor for Product(0);
  OUTLINED_FUNCTION_26_7(v8);
  v1[232] = v9;
  v1[233] = *(v10 + 64);
  v1[234] = swift_task_alloc();
  v1[235] = swift_task_alloc();
  v11 = _s14PurchaseOptionV33PromotionalOfferSignatureMetadataVMa(0);
  v1[236] = v11;
  OUTLINED_FUNCTION_2_2(v11);
  v1[237] = OUTLINED_FUNCTION_250();
  v12 = sub_1B256D3CC();
  v1[238] = v12;
  OUTLINED_FUNCTION_26_7(v12);
  v1[239] = v13;
  v1[240] = OUTLINED_FUNCTION_250();
  v14 = _s14PurchaseOptionV19PurchaseOptionValueOMa(0);
  v1[241] = v14;
  OUTLINED_FUNCTION_2_2(v14);
  v1[242] = OUTLINED_FUNCTION_250();
  v15 = type metadata accessor for Product.PurchaseOption(0);
  OUTLINED_FUNCTION_26_7(v15);
  v1[243] = v16;
  v1[244] = OUTLINED_FUNCTION_250();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DE0, &unk_1B2580B10);
  OUTLINED_FUNCTION_2_2(v17);
  v1[245] = OUTLINED_FUNCTION_250();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0, &qword_1B257AF80);
  v1[246] = v18;
  OUTLINED_FUNCTION_2_2(v18);
  v1[247] = swift_task_alloc();
  v1[248] = swift_task_alloc();
  v1[249] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v1[250] = v19;
  *v19 = v20;
  v19[1] = sub_1B24DB11C;

  return sub_1B24DF9A4();
}

uint64_t sub_1B24DB11C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24DB200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_159();
  v17 = v16[246];
  v18 = v16[245];
  if (__swift_getEnumTagSinglePayload(v18, 1, v17) == 1)
  {
    sub_1B243E88C(v18, &unk_1EB7D0DE0, &unk_1B2580B10);
    if (qword_1EB7CFC58 != -1)
    {
      swift_once();
    }

    v16[251] = qword_1EB7EDFB0;
    OUTLINED_FUNCTION_8_7();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

  else
  {
    v23 = v16[223];
    v24 = OUTLINED_FUNCTION_41_1();
    sub_1B24E31B0(v24, v25);
    v26 = OUTLINED_FUNCTION_14_3();
    sub_1B24E31B0(v26, v27);
    __swift_storeEnumTagSinglePayload(v23, 0, 2, v17);
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_65_1();

    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_8_7();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1B24DB3A4()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B24A3E58();
  v0 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1B24DB400()
{
  v275 = v0;
  v247 = (v0 + 1040);
  v253 = (v0 + 1456);
  v249 = (v0 + 1488);
  v254 = *(v0 + 1936);
  v1 = *(v0 + 1912);
  v250 = *(v0 + 1888);
  v251 = *(v0 + 1896);
  v2 = *(v0 + 1800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1E50, &qword_1B2582B28);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B2578530;
  v4 = SKPaymentOptionLegacyQuantity;
  *(v3 + 64) = MEMORY[0x1E69E6158];
  *(v3 + 32) = v4;
  *(v3 + 40) = 49;
  *(v3 + 48) = 0xE100000000000000;
  type metadata accessor for SKPaymentOption(0);
  sub_1B24E2450(&qword_1EB7CFE58, type metadata accessor for SKPaymentOption, &unk_1B25779CC);
  v252 = v4;
  v5 = (v0 + 1776);
  v6 = sub_1B256D8AC();
  *(v0 + 1776) = v6;
  *(v0 + 1752) = 0;
  v256 = v2 + 56;
  OUTLINED_FUNCTION_73_2();
  v9 = v8 & v7;
  v255 = (63 - v10) >> 6;
  v248 = (v1 + 8);

  v270 = 0;
  v11 = 0;
  v12 = 0;
  v267 = 0;
  v13 = 0;
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC8];
  v269 = 1;
  v257 = (v0 + 1776);
LABEL_2:
  *(v0 + 2048) = v15;
  *(v0 + 2040) = v14;
  *(v0 + 2201) = v267 & 1;
  *(v0 + 2032) = v12;
  *(v0 + 2024) = v11;
  *(v0 + 2200) = v269 & 1;
  *(v0 + 2016) = v270;
  if (v9)
  {
    v271 = v14;
    v16 = v12;
    v262 = v6;
    goto LABEL_8;
  }

  while (1)
  {
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_119:

      sub_1B24E314C();
      swift_allocError();
      *v240 = 0;
      swift_willThrow();

      sub_1B24E313C(v11, v12);

      OUTLINED_FUNCTION_96_2();

      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_121_1();

      __asm { BRAA            X1, X16 }
    }

    if (v17 >= v255)
    {
      break;
    }

    v9 = *(v256 + 8 * v17);
    ++v13;
    if (v9)
    {
      v271 = v14;
      v16 = v12;
      v262 = v6;
      v13 = v17;
LABEL_8:
      v18 = *(v0 + 1952);
      v19 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v20 = OUTLINED_FUNCTION_37_4(v19 | (v13 << 6));
      sub_1B24E19D8(v20, v18);
      OUTLINED_FUNCTION_45_2();
      v21 = OUTLINED_FUNCTION_38_7();
      sub_1B24E30E4(v21, v22);
      OUTLINED_FUNCTION_41_1();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v24 = *(v0 + 1936);
      v12 = v16;
      switch(EnumCaseMultiPayload)
      {
        case 1:
          v100 = *v24;
          v101 = *(v254 + 8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1E60, &unk_1B2583C10);
          v102 = swift_allocObject();
          *(v102 + 16) = xmmword_1B2578530;
          v268 = v11;
          v103 = v15;
          v104 = SKClientOverridesKeyRequestAuditTokenData;
          *(v102 + 64) = MEMORY[0x1E6969080];
          *(v102 + 32) = v104;
          *(v102 + 40) = v100;
          *(v102 + 48) = v101;
          type metadata accessor for SKClientOverridesKey(0);
          OUTLINED_FUNCTION_39_6();
          sub_1B24E2450(&qword_1EB7CFE48, v105, &unk_1B257798C);
          v106 = v104;
          v15 = v103;
          OUTLINED_FUNCTION_38_7();
          v12 = v107;
          v108 = sub_1B256D8AC();

          *(v0 + 1752) = v108;
          v14 = v108;
          v6 = v262;
          goto LABEL_2;
        case 2:
          v258 = v16;
          v268 = v11;
          v66 = v15;
          v67 = *v24;
          v68 = *(v254 + 8);
          v69 = *(v254 + 24);
          v70 = *(v254 + 32);
          v272 = *(v254 + 16);
          v273 = v69;
          v274 = v70;
          BackingValue.xpcAllowed.getter();
          v71 = OUTLINED_FUNCTION_120();
          sub_1B24472E0(v71, v69, v70);
          if (&v276 == 112)
          {
            v175 = OUTLINED_FUNCTION_14_3();
            v15 = v66;
            v176 = sub_1B2455488(v175);
            v178 = v177;

            if (v178)
            {
              swift_isUniquelyReferenced_nonNull_native();
              v272 = v66;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0478, &unk_1B2582B40);
              sub_1B256E80C();
              v15 = v272;

              v179 = v0 + 1040;
              sub_1B244AA0C((v15[7] + 32 * v176), v247);
              sub_1B256E82C();
            }

            else
            {
              v179 = v0 + 1040;
              *v247 = 0u;
              *(v0 + 1056) = 0u;
            }

            v5 = (v0 + 1776);
            v14 = v271;
            sub_1B243E88C(v179, &qword_1EB7D05F0, &qword_1B257BFC0);
            v11 = v268;
            v6 = v262;
            v12 = v258;
          }

          else
          {
            *(v0 + 1032) = sub_1B246063C(0, &qword_1EB7CDAD8, 0x1E69E58C0);
            *(v0 + 1008) = &v272;
            sub_1B244AA0C((v0 + 1008), (v0 + 1072));
            swift_isUniquelyReferenced_nonNull_native();
            v272 = v66;
            v244 = v67;
            v72 = OUTLINED_FUNCTION_14_3();
            v73 = sub_1B2455488(v72);
            if (__OFADD__(*(v66 + 16), (v74 & 1) == 0))
            {
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
              return MEMORY[0x1EEE6DFA0](v73, v74, v75);
            }

            v76 = v73;
            v77 = v74;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0478, &unk_1B2582B40);
            v243 = v68;
            if (sub_1B256E80C())
            {
              sub_1B2455488(v67);
              OUTLINED_FUNCTION_10_2();
              v5 = (v0 + 1776);
              v14 = v271;
              if (!v50)
              {
                goto LABEL_115;
              }

              v76 = v78;
            }

            else
            {
              v5 = (v0 + 1776);
              v14 = v271;
            }

            v11 = v268;
            v12 = v258;
            if (v77)
            {

              v15 = v272;
              v180 = (v272[7] + 32 * v76);
              __swift_destroy_boxed_opaque_existential_1(v180);
              sub_1B244AA0C((v0 + 1072), v180);
              v6 = v262;
            }

            else
            {
              v15 = v272;
              OUTLINED_FUNCTION_19_14(&v272[v76 >> 6]);
              v181 = (v15[6] + 16 * v76);
              *v181 = v244;
              v181[1] = v243;
              v73 = sub_1B244AA0C((v0 + 1072), (v15[7] + 32 * v76));
              v182 = v15[2];
              v136 = __OFADD__(v182, 1);
              v183 = v182 + 1;
              if (v136)
              {
                goto LABEL_136;
              }

              v15[2] = v183;
              v6 = v262;
            }
          }

          goto LABEL_2;
        case 3:
          v79 = *(v0 + 1896);
          OUTLINED_FUNCTION_3_30();
          v263 = v79;
          sub_1B24E30E4(v24, v79);
          v80 = v251[2];
          v81 = v251[3];
          *(v0 + 712) = MEMORY[0x1E69E6158];
          *(v0 + 688) = v80;
          *(v0 + 696) = v81;
          sub_1B244AA0C((v0 + 688), (v0 + 720));

          OUTLINED_FUNCTION_74_2();
          OUTLINED_FUNCTION_54_3();
          OUTLINED_FUNCTION_102_2((v0 + 720), v82, v83);
          *(v0 + 1776) = v272;
          v245 = SKPaymentOptionLegacyDiscountNonce;
          sub_1B256D38C();
          v259 = v12;
          v84 = sub_1B256DA0C();
          v268 = v11;
          v85 = v15;
          v87 = v86;

          *(v0 + 776) = MEMORY[0x1E69E6158];
          *(v0 + 752) = v84;
          *(v0 + 760) = v87;
          v15 = v85;
          v14 = v271;
          OUTLINED_FUNCTION_70_2((v0 + 752), (v0 + 784));
          OUTLINED_FUNCTION_54_3();
          sub_1B244A54C((v0 + 784), v245, v88);
          v89 = sub_1B256D20C();
          *(v0 + 840) = MEMORY[0x1E69E6158];
          *(v0 + 816) = v89;
          *(v0 + 824) = v90;
          sub_1B244AA0C((v0 + 816), (v0 + 848));
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_54_3();
          OUTLINED_FUNCTION_102_2((v0 + 848), v91, v92);
          v93 = *(v263 + *(v250 + 32));
          *(v0 + 904) = MEMORY[0x1E69E6530];
          *(v0 + 880) = v93;
          sub_1B244AA0C((v0 + 880), (v0 + 912));
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_54_3();
          OUTLINED_FUNCTION_102_2((v0 + 912), v94, v95);
          v96 = *v263;
          v97 = v251[1];
          *(v0 + 968) = MEMORY[0x1E69E6158];
          *(v0 + 944) = v96;
          *(v0 + 952) = v97;
          sub_1B244AA0C((v0 + 944), (v0 + 976));
          v5 = (v0 + 1776);
          v12 = v259;

          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_54_3();
          OUTLINED_FUNCTION_102_2((v0 + 976), v98, v99);
          v6 = v272;
          *(v0 + 1776) = v272;
          OUTLINED_FUNCTION_13_16();
          sub_1B24E1A30();
          goto LABEL_2;
        case 4:
          OUTLINED_FUNCTION_84_2();
          v40 = *v24;
          v41 = SKPaymentOptionLegacySimulateAskToBuy;
          *(v0 + 648) = MEMORY[0x1E69E6370];
          *(v0 + 624) = v40;
          OUTLINED_FUNCTION_70_2((v0 + 624), (v0 + 656));
          OUTLINED_FUNCTION_68_2();
          sub_1B2458894();
          OUTLINED_FUNCTION_25_11();
          if (__OFADD__(v44, v45))
          {
            goto LABEL_125;
          }

          v46 = v42;
          v47 = v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0418, &unk_1B2582B30);
          OUTLINED_FUNCTION_24_9();
          v48 = sub_1B256E80C();
          v6 = v272;
          if ((v48 & 1) == 0)
          {
            goto LABEL_18;
          }

          OUTLINED_FUNCTION_128_0();
          OUTLINED_FUNCTION_10_2();
          if (!v50)
          {
            goto LABEL_115;
          }

          v46 = v49;
          v6 = v5;
LABEL_18:
          v11 = v268;
          if (v47)
          {
            OUTLINED_FUNCTION_113_1();
            v52 = (v51 + 32 * v46);
            __swift_destroy_boxed_opaque_existential_1(v52);
            v53 = (v0 + 656);
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_119_1();
          OUTLINED_FUNCTION_19_14(v156);
          OUTLINED_FUNCTION_118_0();
          sub_1B244AA0C((v0 + 656), v157);
          OUTLINED_FUNCTION_116_1();
          if (v136)
          {
            goto LABEL_130;
          }

          goto LABEL_68;
        case 5:
          if (*v24 < 1)
          {
            goto LABEL_119;
          }

          v268 = v11;
          *(v0 + 1768) = *v24;
          v109 = sub_1B256EAAC();
          *(v0 + 552) = MEMORY[0x1E69E6158];
          *(v0 + 528) = v109;
          *(v0 + 536) = v110;
          OUTLINED_FUNCTION_70_2((v0 + 528), (v0 + 592));
          OUTLINED_FUNCTION_68_2();
          sub_1B2458894();
          OUTLINED_FUNCTION_25_11();
          if (__OFADD__(v113, v114))
          {
            goto LABEL_127;
          }

          v115 = v111;
          v116 = v112;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0418, &unk_1B2582B30);
          OUTLINED_FUNCTION_24_9();
          v261 = v15;
          if (sub_1B256E80C())
          {
            v117 = v272;
            v118 = sub_1B2458894();
            if ((v116 & 1) != (v119 & 1))
            {
              goto LABEL_115;
            }

            v115 = v118;
            v120 = v252;
          }

          else
          {
            v117 = v272;
            v120 = v252;
          }

          if (v116)
          {
            v170 = v117;
            v171 = (v117[7] + 32 * v115);
            __swift_destroy_boxed_opaque_existential_1(v171);
            sub_1B244AA0C((v0 + 592), v171);
          }

          else
          {
            v170 = v117;
            OUTLINED_FUNCTION_19_14(&v117[v115 >> 6]);
            *(v117[6] + 8 * v115) = v120;
            v73 = sub_1B244AA0C((v0 + 592), (v117[7] + 32 * v115));
            v172 = v117[2];
            v136 = __OFADD__(v172, 1);
            v173 = v172 + 1;
            if (v136)
            {
              goto LABEL_135;
            }

            v117[2] = v173;
            v174 = v120;
          }

          v5 = (v0 + 1776);
          *v257 = v170;
          v6 = v170;
          v12 = v16;
          v14 = v271;
          goto LABEL_2;
        case 6:
          sub_1B24E313C(v11, v16);
          v11 = *v24;
          v12 = *(v254 + 8);
          goto LABEL_43;
        case 7:
          v267 = *v24;
LABEL_43:
          v6 = v262;
          v14 = v271;
          goto LABEL_2;
        case 8:
          v268 = v11;
          v261 = v15;
          v265 = *v24;
          v137 = SKPaymentOptionStoreKitViewInitiated;
          *(v0 + 488) = MEMORY[0x1E69E6370];
          *(v0 + 464) = 1;
          OUTLINED_FUNCTION_70_2((v0 + 464), (v0 + 496));
          OUTLINED_FUNCTION_68_2();
          sub_1B2458894();
          OUTLINED_FUNCTION_25_11();
          if (__OFADD__(v140, v141))
          {
            goto LABEL_123;
          }

          v142 = v138;
          v143 = v139;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0418, &unk_1B2582B30);
          OUTLINED_FUNCTION_24_9();
          v144 = sub_1B256E80C();
          v6 = v272;
          if ((v144 & 1) == 0)
          {
            goto LABEL_56;
          }

          OUTLINED_FUNCTION_128_0();
          OUTLINED_FUNCTION_10_2();
          if (!v50)
          {
            goto LABEL_115;
          }

          v142 = v145;
          v6 = v5;
LABEL_56:
          if (v143)
          {
            OUTLINED_FUNCTION_113_1();
            v147 = (v146 + 32 * v142);
            __swift_destroy_boxed_opaque_existential_1(v147);
            v148 = v147;
            v6 = v137;
            sub_1B244AA0C((v0 + 496), v148);
          }

          else
          {
            OUTLINED_FUNCTION_119_1();
            OUTLINED_FUNCTION_19_14(v167);
            *(v6[6] + 8 * v142) = v137;
            sub_1B244AA0C((v0 + 496), (v6[7] + 32 * v142));
            OUTLINED_FUNCTION_116_1();
            if (v136)
            {
              goto LABEL_134;
            }

            v6[2] = v168;
            v169 = v137;
          }

          v5 = (v0 + 1776);
          v15 = v261;
          v14 = v271;
          v269 = 0;
          *v257 = v6;
          v270 = 2;
          switch(v265)
          {
            case 1:
              goto LABEL_2;
            case 2:
              v269 = 0;
              v270 = 3;
              break;
            case 3:
              v269 = 0;
              v270 = 6;
              break;
            case 4:
              v269 = 0;
              v270 = 4;
              break;
            case 5:
              v269 = 0;
              v270 = 5;
              break;
            default:
              v269 = 0;
              v270 = 1;
              break;
          }

          goto LABEL_2;
        case 9:
          OUTLINED_FUNCTION_84_2();
          v54 = *v24;
          v55 = *(v254 + 8);
          v41 = SKPaymentOptionWinbackOfferID;
          *(v0 + 1256) = MEMORY[0x1E69E6158];
          *(v0 + 1232) = v54;
          *(v0 + 1240) = v55;
          OUTLINED_FUNCTION_70_2((v0 + 1232), (v0 + 1648));
          OUTLINED_FUNCTION_68_2();
          sub_1B2458894();
          OUTLINED_FUNCTION_25_11();
          if (__OFADD__(v58, v59))
          {
            goto LABEL_124;
          }

          v60 = v56;
          v61 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0418, &unk_1B2582B30);
          OUTLINED_FUNCTION_24_9();
          v62 = sub_1B256E80C();
          v6 = v272;
          if ((v62 & 1) == 0)
          {
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_128_0();
          OUTLINED_FUNCTION_10_2();
          if (!v50)
          {
            goto LABEL_115;
          }

          v60 = v63;
          v6 = v5;
LABEL_25:
          v11 = v268;
          if (v61)
          {
            OUTLINED_FUNCTION_113_1();
            v52 = (v64 + 32 * v60);
            __swift_destroy_boxed_opaque_existential_1(v52);
            v53 = (v0 + 1648);
LABEL_27:
            v65 = v52;
            v6 = v41;
            sub_1B244AA0C(v53, v65);
          }

          else
          {
            OUTLINED_FUNCTION_119_1();
            OUTLINED_FUNCTION_19_14(v159);
            OUTLINED_FUNCTION_118_0();
            sub_1B244AA0C((v0 + 1648), v160);
            OUTLINED_FUNCTION_116_1();
            if (v136)
            {
              goto LABEL_131;
            }

LABEL_68:
            v6[2] = v158;
            v161 = v41;
          }

          v15 = v261;
          v12 = v16;
          v5 = (v0 + 1776);
          *v257 = v6;
          v14 = v271;
          goto LABEL_2;
        case 10:
          v260 = v16;
          v268 = v11;
          v261 = v15;
          v121 = v5;
          v122 = *v24;
          v123 = *(v254 + 8);
          v124 = SKPaymentOptionMetricsOverlayData;
          *(v0 + 1640) = MEMORY[0x1E6969080];
          *(v0 + 1616) = v122;
          *(v0 + 1624) = v123;
          sub_1B244AA0C((v0 + 1616), (v0 + 1552));
          v246 = v122;
          v264 = v123;
          sub_1B244784C(v122, v123);
          OUTLINED_FUNCTION_74_2();
          OUTLINED_FUNCTION_68_2();
          sub_1B2458894();
          OUTLINED_FUNCTION_25_11();
          if (__OFADD__(v127, v128))
          {
            goto LABEL_126;
          }

          v129 = v125;
          v130 = v126;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0418, &unk_1B2582B30);
          OUTLINED_FUNCTION_24_9();
          v131 = sub_1B256E80C();
          v6 = v272;
          if (v131)
          {
            OUTLINED_FUNCTION_128_0();
            OUTLINED_FUNCTION_10_2();
            v14 = v271;
            if (!v50)
            {
LABEL_115:
              OUTLINED_FUNCTION_121_1();

              return sub_1B256EC9C();
            }

            v129 = v132;
            v6 = v122;
            v5 = v121;
            v12 = v260;
            if (v130)
            {
LABEL_62:
              OUTLINED_FUNCTION_113_1();
              v154 = (v153 + 32 * v129);
              __swift_destroy_boxed_opaque_existential_1(v154);
              v155 = v154;
              v6 = v124;
              sub_1B244AA0C((v0 + 1552), v155);
              sub_1B2443AE4(v246, v264);
              goto LABEL_63;
            }
          }

          else
          {
            v5 = v121;
            v12 = v16;
            v14 = v271;
            if (v130)
            {
              goto LABEL_62;
            }
          }

          OUTLINED_FUNCTION_119_1();
          OUTLINED_FUNCTION_19_14(v133);
          *(v6[6] + 8 * v129) = v124;
          sub_1B244AA0C((v0 + 1552), (v6[7] + 32 * v129));
          v134 = v124;
          sub_1B2443AE4(v246, v264);
          OUTLINED_FUNCTION_116_1();
          if (v136)
          {
            goto LABEL_132;
          }

          v6[2] = v135;
LABEL_63:
          v15 = v261;
          goto LABEL_73;
        default:
          OUTLINED_FUNCTION_84_2();
          v25 = OUTLINED_FUNCTION_22_1();
          v26(v25);
          v27 = SKPaymentOptionAppAccountToken;
          sub_1B256D38C();
          v28 = sub_1B256DA0C();
          v30 = v29;

          *(v0 + 1128) = MEMORY[0x1E69E6158];
          *(v0 + 1104) = v28;
          *(v0 + 1112) = v30;
          OUTLINED_FUNCTION_70_2((v0 + 1104), (v0 + 1136));
          OUTLINED_FUNCTION_68_2();
          sub_1B2458894();
          OUTLINED_FUNCTION_25_11();
          if (__OFADD__(v33, v34))
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
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          v35 = v31;
          v36 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0418, &unk_1B2582B30);
          OUTLINED_FUNCTION_24_9();
          if (sub_1B256E80C())
          {
            v37 = v272;
            v38 = sub_1B2458894();
            if ((v36 & 1) != (v39 & 1))
            {
              goto LABEL_115;
            }

            v35 = v38;
          }

          else
          {
            v37 = v272;
          }

          v149 = v16;
          v150 = *(v0 + 1920);
          v266 = *(v0 + 1904);
          v14 = v271;
          if (v36)
          {
            v151 = (v37[7] + 32 * v35);
            __swift_destroy_boxed_opaque_existential_1(v151);
            sub_1B244AA0C((v0 + 1136), v151);
            v152 = v150;
            v6 = v37;
            (*v248)(v152, v266);
          }

          else
          {
            OUTLINED_FUNCTION_19_14(&v37[v35 >> 6]);
            *(v37[6] + 8 * v35) = v27;
            sub_1B244AA0C((v0 + 1136), (v37[7] + 32 * v35));
            v162 = *v248;
            v163 = v27;
            v164 = v150;
            v6 = v37;
            v73 = (v162)(v164, v266);
            v165 = v37[2];
            v136 = __OFADD__(v165, 1);
            v166 = v165 + 1;
            if (v136)
            {
              goto LABEL_133;
            }

            v37[2] = v166;
          }

          v15 = v261;
          v12 = v149;
          v5 = (v0 + 1776);
LABEL_73:
          *v5 = v6;
          v11 = v268;
          break;
      }

      goto LABEL_2;
    }
  }

  v184 = v5;
  if (v15[2])
  {
    v185 = SKPaymentOptionCustomOptions;
    *(v0 + 1192) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2000, &unk_1B2582B50);
    *(v0 + 1168) = v15;
    sub_1B244AA0C((v0 + 1168), (v0 + 1200));
    v186 = v185;

    OUTLINED_FUNCTION_74_2();
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_102_2((v0 + 1200), v187, v188);
  }

  v189 = MEMORY[0x1E69E6158];
  v190 = *(v0 + 1808);
  v191 = SKPaymentOptionLegacyOfferName;
  v192 = v190[6];
  *(v0 + 2056) = v192;
  v193 = v190[7];
  *(v0 + 2064) = v193;
  *(v0 + 1288) = v189;
  *(v0 + 1264) = v192;
  *(v0 + 1272) = v193;
  sub_1B244AA0C((v0 + 1264), (v0 + 1296));
  v194 = v191;

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_54_3();
  sub_1B244A54C((v0 + 1296), v194, v195);

  v196 = SKPaymentOptionLegacyIsStoreOriginated;
  *(v0 + 1352) = MEMORY[0x1E69E6370];
  *(v0 + 1328) = 0;
  sub_1B244AA0C((v0 + 1328), (v0 + 1360));
  v197 = v196;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_102_2((v0 + 1360), v198, v199);

  v200 = SKPaymentOptionProductKind;
  v201 = v190[8];
  v202 = v190[9];
  *(v0 + 1416) = v189;
  *(v0 + 1392) = v201;
  *(v0 + 1400) = v202;
  sub_1B244AA0C((v0 + 1392), (v0 + 1424));
  v203 = v200;

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_54_3();
  sub_1B244A54C((v0 + 1424), v203, v204);

  v205 = v272;
  *(v0 + 1776) = v272;
  v206 = SKPaymentOptionSubscriptionPeriod;
  memcpy((v0 + 144), v190 + 20, 0xD0uLL);
  if (sub_1B2447BD4(v0 + 144) == 1)
  {
    *v253 = 0u;
    *(v0 + 1472) = 0u;
    v207 = v206;
    sub_1B243E88C(v253, &qword_1EB7D05F0, &qword_1B257BFC0);
    v208 = sub_1B2458894();
    if (v209)
    {
      v210 = v208;
      swift_isUniquelyReferenced_nonNull_native();
      v272 = v205;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0418, &unk_1B2582B30);
      sub_1B256E80C();
      v205 = v272;

      v211 = v0 + 1488;
      sub_1B244AA0C((*(v205 + 56) + 32 * v210), v249);
      sub_1B256E82C();
      *v184 = v205;
    }

    else
    {
      v211 = v0 + 1488;
      *v249 = 0u;
      *(v0 + 1504) = 0u;
    }

    sub_1B243E88C(v211, &qword_1EB7D05F0, &qword_1B257BFC0);
  }

  else
  {
    v212 = *(v0 + 296);
    LOBYTE(v272) = *(v0 + 288);
    v273 = v212;
    v213 = v206;
    *(v0 + 1456) = sub_1B243D34C();
    *(v0 + 1464) = v214;
    *(v0 + 1480) = v189;
    sub_1B244AA0C(v253, (v0 + 400));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v272 = v205;
    sub_1B244A54C((v0 + 400), v213, isUniquelyReferenced_nonNull_native);

    v205 = v272;
    *(v0 + 1776) = v272;
  }

  *(v0 + 2072) = v205;
  v216 = *(v0 + 1792);
  if (!v216)
  {

    if (qword_1ED699E80 == -1)
    {
LABEL_108:
      v218 = OUTLINED_FUNCTION_77_2();
      __swift_project_value_buffer(v218, qword_1ED69A108);
      v272 = 0;
      v273 = 0xE000000000000000;
      sub_1B256E4FC();
      OUTLINED_FUNCTION_34_5();
      MEMORY[0x1B2749D50](v219 + 3, v220 | 0x8000000000000000);
      v221 = OUTLINED_FUNCTION_24();
      MEMORY[0x1B2749D50](v221);
      OUTLINED_FUNCTION_75_0();
      v222 = OUTLINED_FUNCTION_91_1();
      MEMORY[0x1B2749D50](v222);
      v224 = v272;
      v223 = v273;
      v225 = sub_1B256E0AC();

      v226 = sub_1B256D5CC();

      if (os_log_type_enabled(v226, v225))
      {
        v227 = OUTLINED_FUNCTION_21_3();
        v228 = OUTLINED_FUNCTION_20_4();
        v272 = v228;
        *v227 = 136446466;
        v230 = OUTLINED_FUNCTION_75_2(v228, v229, &v272);
        OUTLINED_FUNCTION_76_1(v230);
        v231 = sub_1B2519814(v224, v223, &v272);

        *(v227 + 14) = v231;
        OUTLINED_FUNCTION_64_2(&dword_1B23EF000, v232, v233, "%{public}s%{public}s");
        OUTLINED_FUNCTION_100_2();
        OUTLINED_FUNCTION_11_4();
        OUTLINED_FUNCTION_44_1();
      }

      else
      {
      }

      v234 = OUTLINED_FUNCTION_30_7(*(v0 + 2072));
      OUTLINED_FUNCTION_127_0(v234);
      v235 = v223;
      v236 = OUTLINED_FUNCTION_27_8();
      OUTLINED_FUNCTION_5_23(v236);
      goto LABEL_112;
    }

LABEL_128:
    OUTLINED_FUNCTION_0_17(&qword_1ED699E80);
    goto LABEL_108;
  }

  *(v0 + 2080) = sub_1B256DD6C();
  v217 = v216;
  *(v0 + 2088) = sub_1B256DD5C();
  OUTLINED_FUNCTION_120();
  sub_1B256DCEC();
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_57_3();
LABEL_112:
  OUTLINED_FUNCTION_121_1();

  return MEMORY[0x1EEE6DFA0](v73, v74, v75);
}

uint64_t sub_1B24DCAA4()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 1792);

  *(v0 + 2096) = [v1 view];
  v2 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B24DCB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 2096))
  {
    OUTLINED_FUNCTION_4_0();

    *(v3 + 2104) = sub_1B256DD5C();
    OUTLINED_FUNCTION_120();
    sub_1B256DCEC();
    OUTLINED_FUNCTION_112_1();
    a1 = OUTLINED_FUNCTION_57_3();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1B24DCBAC()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 2096);

  *(v0 + 2112) = [v1 window];

  v2 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B24DCC2C(uint64_t a1)
{
  v26 = v1;
  if (*(v1 + 2112))
  {
    *(v1 + 2120) = sub_1B256DD5C();
    OUTLINED_FUNCTION_120();
    sub_1B256DCEC();
    OUTLINED_FUNCTION_112_1();
    v2 = OUTLINED_FUNCTION_57_3();
  }

  else
  {

    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17(&qword_1ED699E80);
    }

    v5 = OUTLINED_FUNCTION_77_2();
    __swift_project_value_buffer(v5, qword_1ED69A108);
    OUTLINED_FUNCTION_97_2();
    OUTLINED_FUNCTION_34_5();
    MEMORY[0x1B2749D50](v6 + 3, v7 | 0x8000000000000000);
    v8 = OUTLINED_FUNCTION_24();
    MEMORY[0x1B2749D50](v8);
    OUTLINED_FUNCTION_75_0();
    v9 = OUTLINED_FUNCTION_91_1();
    MEMORY[0x1B2749D50](v9);
    v11 = v25[0];
    v10 = v25[1];
    v12 = sub_1B256E0AC();

    v13 = sub_1B256D5CC();

    if (os_log_type_enabled(v13, v12))
    {
      v14 = OUTLINED_FUNCTION_21_3();
      v15 = OUTLINED_FUNCTION_20_4();
      v25[0] = v15;
      *v14 = 136446466;
      v17 = OUTLINED_FUNCTION_75_2(v15, v16, v25);
      OUTLINED_FUNCTION_76_1(v17);
      v18 = sub_1B2519814(v11, v10, v25);

      *(v14 + 14) = v18;
      OUTLINED_FUNCTION_64_2(&dword_1B23EF000, v19, v20, "%{public}s%{public}s");
      OUTLINED_FUNCTION_100_2();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_44_1();
    }

    else
    {
    }

    v21 = OUTLINED_FUNCTION_30_7(*(v1 + 2072));
    OUTLINED_FUNCTION_127_0(v21);
    v22 = v10;
    v23 = OUTLINED_FUNCTION_27_8();
    v2 = OUTLINED_FUNCTION_5_23(v23);
  }

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B24DCE2C()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 2112);

  *(v0 + 2128) = [v1 windowScene];

  v2 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B24DCEAC(uint64_t a1)
{
  v26 = v1;
  if (*(v1 + 2128))
  {
    *(v1 + 2136) = sub_1B256DD5C();
    OUTLINED_FUNCTION_120();
    sub_1B256DCEC();
    OUTLINED_FUNCTION_112_1();
    v2 = OUTLINED_FUNCTION_57_3();
  }

  else
  {

    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17(&qword_1ED699E80);
    }

    v5 = OUTLINED_FUNCTION_77_2();
    __swift_project_value_buffer(v5, qword_1ED69A108);
    OUTLINED_FUNCTION_97_2();
    OUTLINED_FUNCTION_34_5();
    MEMORY[0x1B2749D50](v6 + 3, v7 | 0x8000000000000000);
    v8 = OUTLINED_FUNCTION_24();
    MEMORY[0x1B2749D50](v8);
    OUTLINED_FUNCTION_75_0();
    v9 = OUTLINED_FUNCTION_91_1();
    MEMORY[0x1B2749D50](v9);
    v11 = v25[0];
    v10 = v25[1];
    v12 = sub_1B256E0AC();

    v13 = sub_1B256D5CC();

    if (os_log_type_enabled(v13, v12))
    {
      v14 = OUTLINED_FUNCTION_21_3();
      v15 = OUTLINED_FUNCTION_20_4();
      v25[0] = v15;
      *v14 = 136446466;
      v17 = OUTLINED_FUNCTION_75_2(v15, v16, v25);
      OUTLINED_FUNCTION_76_1(v17);
      v18 = sub_1B2519814(v11, v10, v25);

      *(v14 + 14) = v18;
      OUTLINED_FUNCTION_64_2(&dword_1B23EF000, v19, v20, "%{public}s%{public}s");
      OUTLINED_FUNCTION_100_2();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_44_1();
    }

    else
    {
    }

    v21 = OUTLINED_FUNCTION_30_7(*(v1 + 2072));
    OUTLINED_FUNCTION_127_0(v21);
    v22 = v10;
    v23 = OUTLINED_FUNCTION_27_8();
    v2 = OUTLINED_FUNCTION_5_23(v23);
  }

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B24DD0AC()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 2128);

  *(v0 + 2144) = [v1 _sceneIdentifier];

  v2 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B24DD12C()
{
  v1 = *(v0 + 2144);
  v2 = *(v0 + 1792);
  v3 = sub_1B256D9BC();
  v5 = v4;

  v6 = SKPaymentOptionPresentingSceneID;
  *(v0 + 1544) = MEMORY[0x1E69E6158];
  *(v0 + 1520) = v3;
  *(v0 + 1528) = v5;
  sub_1B244AA0C((v0 + 1520), (v0 + 560));
  v7 = v6;
  v8 = OUTLINED_FUNCTION_74_2();
  sub_1B244A54C((v0 + 560), v7, v8);

  *(v0 + 1776) = v6;
  v9 = OUTLINED_FUNCTION_30_7(v6);
  OUTLINED_FUNCTION_127_0(v9);
  v10 = v5;
  v11 = OUTLINED_FUNCTION_27_8();
  v12 = OUTLINED_FUNCTION_5_23(v11);

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1B24DD214()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0[270];
  v2 = v0[226];
  v0[10] = v0;
  v0[15] = v0 + 220;
  v0[11] = sub_1B24DD2C8;
  v3 = swift_continuation_init();
  sub_1B24E0660(v3, v2, v0 + 219, (v0 + 222), v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B24DD2C8()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 2168) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B24DE190;
  }

  else
  {
    *(v1 + 2176) = *(v1 + 1760);
    v3 = sub_1B24DD3E8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1B24DD3E8()
{
  v1 = v0;
  sub_1B247A578(*(v0 + 2176), (v0 + 432));
  v2 = "ype";
  if (*(v0 + 456))
  {
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 1696);
      v4 = *(v0 + 1704);
      if ((*(v0 + 2201) & 1) == 0)
      {
        v60 = *(v0 + 1832);

        Transaction.init(receipt:)(v3, v4, v60);
        sub_1B24E19D8(*(v0 + 1832), *(v0 + 1824));
        OUTLINED_FUNCTION_33_5(dword_1B25832C8);
        v61 = swift_task_alloc();
        *(v0 + 2184) = v61;
        *v61 = v0;
        v61[1] = sub_1B24DE7B4;
        OUTLINED_FUNCTION_122_1();

        __asm { BR              X2 }
      }

      v5 = *(v0 + 2040);
      if (v5)
      {
        sub_1B247A578(v5, (v0 + 1584));
        if (*(v0 + 1608))
        {
          v6 = *(v0 + 1880);
          v7 = *(v0 + 1856);
          v8 = v1[226];

          sub_1B243E88C((v1 + 198), &qword_1EB7D05F0, &qword_1B257BFC0);
          v9 = [objc_opt_self() defaultBroker];
          OUTLINED_FUNCTION_6_19();
          sub_1B24E19D8(v8, v6);
          v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
          v11 = swift_allocObject();
          sub_1B24E30E4(v6, v11 + v10);
          v1[48] = sub_1B24E35C8;
          v1[49] = v11;
          v1[44] = MEMORY[0x1E69E9820];
          v1[45] = 1107296256;
          v1[46] = sub_1B244BD28;
          v1[47] = &block_descriptor_16;
          v12 = _Block_copy(v1 + 44);

          v13 = [v9 storeKitServiceWithErrorHandler_];
          _Block_release(v12);

          v14 = v1;
          v15 = v1[272];
          if (v13)
          {
            v16 = v14[254];
            v17 = v14[253];
            v126 = v14[223];
            v127 = v14[246];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1E68, &unk_1B2582B70);
            v18 = swift_allocObject();
            *(v18 + 16) = xmmword_1B2578530;
            v19 = sub_1B24E1540(v15);

            *(v18 + 32) = v19;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2A60, &qword_1B257CCA0);
            v20 = sub_1B256DC4C();

            type metadata accessor for SKClientOverridesKey(0);
            OUTLINED_FUNCTION_39_6();
            sub_1B24E2450(v21, v22, &unk_1B257798C);
            OUTLINED_FUNCTION_35_0();
            v23 = sub_1B256D86C();
            [v13 updateTransactions:v20 forClient:v23];
            sub_1B24E313C(v17, v16);

            swift_unknownObjectRelease();
            __swift_storeEnumTagSinglePayload(v126, 2, 2, v127);

LABEL_21:

            OUTLINED_FUNCTION_124_1();

            OUTLINED_FUNCTION_14_7();
            goto LABEL_22;
          }

          if (qword_1ED699E80 != -1)
          {
            OUTLINED_FUNCTION_0_17(&qword_1ED699E80);
          }

          v1 = v14;
          v106 = v14[231];
          v107 = v14[226];
          v108 = __swift_project_value_buffer(v14[230], qword_1ED69A108);
          OUTLINED_FUNCTION_9_19(v108);
          OUTLINED_FUNCTION_6_19();
          v109 = OUTLINED_FUNCTION_117_0();
          sub_1B24E19D8(v109, v110);
          sub_1B256D5CC();
          OUTLINED_FUNCTION_7_9();
          sub_1B256D5EC();
          OUTLINED_FUNCTION_7_0();
          (*(v111 + 8))(v106);
          v112 = sub_1B256E0AC();
          v113 = OUTLINED_FUNCTION_11_9(v112);
          v114 = v14[234];
          if (v113)
          {
            swift_slowAlloc();
            v115 = OUTLINED_FUNCTION_103_2();
            v129[0] = v115;
            *v107 = 136446210;
            v117 = *(v114 + 48);
            v116 = *(v114 + 56);

            OUTLINED_FUNCTION_4_20();
            v118 = sub_1B2519814(v117, v116, v129);

            *(v107 + 4) = v118;
            OUTLINED_FUNCTION_3_16();
            _os_log_impl(v119, v120, v121, v122, v123, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v115);
            OUTLINED_FUNCTION_10_7();
            OUTLINED_FUNCTION_7_12();
          }

          else
          {

            OUTLINED_FUNCTION_4_20();
          }

          v2 = "SKAccountType" + 10;
LABEL_15:
          type metadata accessor for StoreKitError(0);
          sub_1B24E2450(&qword_1EB7CD4C0, type metadata accessor for StoreKitError, &protocol conformance descriptor for StoreKitError);
          v38 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          _s3__C4CodeOMa_0(0);
          v40 = v39;
          v1[218] = 504;
          v41 = v38;
          OUTLINED_FUNCTION_41_6();
          sub_1B24E2450(v42, v43, &unk_1B25777B8);
          OUTLINED_FUNCTION_12_18();
          v44 = sub_1B256CFDC();

          if (v44 & 1) != 0 || (v1[217] = 1052, v45 = v38, OUTLINED_FUNCTION_12_18(), sub_1B256CFDC(), OUTLINED_FUNCTION_129_1(), (v40) || (type metadata accessor for Code(0), v47 = v46, v1[216] = 3038, v48 = v38, OUTLINED_FUNCTION_40_6(), sub_1B24E2450(v49, v50, &unk_1B25775E4), OUTLINED_FUNCTION_38_7(), sub_1B256CFDC(), OUTLINED_FUNCTION_129_1(), (v47))
          {
            v51 = OUTLINED_FUNCTION_90_2();
            v52 = v1[246];
            v53 = v1[223];
            sub_1B24E313C(v51, v54);

            v55 = v53;
            v56 = 2;
            v57 = v52;
LABEL_19:
            __swift_storeEnumTagSinglePayload(v55, v56, 2, v57);
LABEL_20:

            goto LABEL_21;
          }

          v64 = parseError(_:)(v38);
          v1[214] = v64;
          v128 = v64;
          v65 = v64;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40, &qword_1B257BB10);
          type metadata accessor for StoreKitError(0);
          v66 = swift_dynamicCast();
          v67 = v1[227];
          if (v66)
          {
            OUTLINED_FUNCTION_56_3();
            __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
            if (swift_getEnumCaseMultiPayload() == 3)
            {
              v72 = OUTLINED_FUNCTION_90_2();
              v73 = v1[246];
              v74 = v1[223];
              sub_1B24E313C(v72, v75);

              OUTLINED_FUNCTION_7_19();
              sub_1B24E1A30();
              v55 = v74;
              v56 = 1;
              v57 = v73;
              goto LABEL_19;
            }

            OUTLINED_FUNCTION_7_19();
            sub_1B24E1A30();
          }

          else
          {
            OUTLINED_FUNCTION_125_0();
            sub_1B243E88C(v67, &qword_1EB7D1E48, &unk_1B2582B10);
          }

          if (qword_1ED699E80 != -1)
          {
            OUTLINED_FUNCTION_0_17(&qword_1ED699E80);
          }

          __swift_project_value_buffer(v1[230], qword_1ED69A108);
          OUTLINED_FUNCTION_126_0();
          v84 = v129[1];
          v1[210] = v129[0];
          v1[211] = v84;
          OUTLINED_FUNCTION_34_5();
          MEMORY[0x1B2749D50](v85 | 2, v86 | 0x8000000000000000);
          v1[215] = v38;
          sub_1B256E78C();
          v87 = v128;
          v88 = sub_1B256E0AC();
          v89 = sub_1B256D5CC();
          if (os_log_type_enabled(v89, v88))
          {
            v90 = OUTLINED_FUNCTION_21_3();
            v91 = OUTLINED_FUNCTION_20_4();
            v129[0] = v91;
            *v90 = *(v2 + 421);
            v93 = OUTLINED_FUNCTION_75_2(v91, v92, v129);
            OUTLINED_FUNCTION_82_2(v93);
            v94 = OUTLINED_FUNCTION_153();
            *(v90 + 14) = sub_1B2519814(v94, v95, v96);
            OUTLINED_FUNCTION_66_1(&dword_1B23EF000, v97, v98, "%{public}s%{public}s");
            swift_arrayDestroy();
            OUTLINED_FUNCTION_11_4();
            OUTLINED_FUNCTION_10_7();
          }

          v124 = v1[253];
          v125 = v1[254];
          v99 = *(v1 + 2200);
          v100 = v1[252];
          v101 = [objc_allocWithZone(type metadata accessor for SKTwoErrorEvent()) init];
          v102 = sub_1B256D0CC();
          [v101 setPrimaryError_];

          v103 = sub_1B256D0CC();
          [v101 setMappedError_];

          [v101 setUserAction_];
          v104 = &v101[OBJC_IVAR____TtC8StoreKit15SKTwoErrorEvent_context];
          *v104 = v100;
          v104[8] = v99;
          OUTLINED_FUNCTION_18_1();
          v105 = sub_1B256D98C();
          [v101 setInAppPurchaseID_];

          [objc_opt_self() sendEvent_];

          swift_willThrow();
          sub_1B24E313C(v124, v125);

LABEL_22:
          OUTLINED_FUNCTION_122_1();

          __asm { BRAA            X1, X16 }
        }

        sub_1B243E88C(v0 + 1584, &qword_1EB7D05F0, &qword_1B257BFC0);
      }

      else
      {
      }

      v76 = *(v0 + 2032);
      v77 = *(v0 + 2024);
      v78 = [objc_opt_self() defaultBroker];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17A0, &unk_1B25832B0);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_1B2578530;
      *(v79 + 32) = v3;
      *(v79 + 40) = v4;
      sub_1B24E355C(v79, v78);
      sub_1B24E313C(v77, v76);

      v80 = OUTLINED_FUNCTION_108_2();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
      goto LABEL_20;
    }
  }

  else
  {

    sub_1B243E88C(v0 + 432, &qword_1EB7D05F0, &qword_1B257BFC0);
  }

  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17(&qword_1ED699E80);
  }

  __swift_project_value_buffer(*(v0 + 1840), qword_1ED69A108);
  v24 = sub_1B256E0AC();
  v25 = sub_1B256D5CC();
  if (os_log_type_enabled(v25, v24))
  {
    v26 = OUTLINED_FUNCTION_21_3();
    v27 = OUTLINED_FUNCTION_20_4();
    v129[0] = v27;
    *v26 = 136446466;
    v29 = OUTLINED_FUNCTION_75_2(v27, v28, v129);
    OUTLINED_FUNCTION_78_2(v29);
    v30 = OUTLINED_FUNCTION_91_1();
    *(v26 + 14) = sub_1B2519814(v30, v31, v32);
    OUTLINED_FUNCTION_3_16();
    _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_7_12();
  }

  goto LABEL_15;
}

void sub_1B24DE190()
{
  v1 = *(v0 + 2168);
  _s3__C4CodeOMa_0(0);
  v3 = v2;
  *(v0 + 1744) = 504;
  v4 = v1;
  OUTLINED_FUNCTION_41_6();
  sub_1B24E2450(v5, v6, &unk_1B25777B8);
  OUTLINED_FUNCTION_12_18();
  v7 = sub_1B256CFDC();

  if (v7 & 1) != 0 || (*(v0 + 1736) = 1052, v8 = v1, OUTLINED_FUNCTION_12_18(), sub_1B256CFDC(), OUTLINED_FUNCTION_129_1(), (v3) || (type metadata accessor for Code(0), v10 = v9, *(v0 + 1728) = 3038, v11 = v1, OUTLINED_FUNCTION_40_6(), sub_1B24E2450(v12, v13, &unk_1B25775E4), OUTLINED_FUNCTION_38_7(), sub_1B256CFDC(), OUTLINED_FUNCTION_129_1(), (v10))
  {
    v14 = OUTLINED_FUNCTION_115_0();
    sub_1B24E313C(v14, v15);

    v16 = OUTLINED_FUNCTION_108_2();
LABEL_5:
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);

    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_124_1();

    OUTLINED_FUNCTION_14_7();
    goto LABEL_6;
  }

  v22 = parseError(_:)(v1);
  *(v0 + 1712) = v22;
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40, &qword_1B257BB10);
  type metadata accessor for StoreKitError(0);
  v24 = swift_dynamicCast();
  v25 = *(v0 + 1816);
  if (v24)
  {
    OUTLINED_FUNCTION_56_3();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v30 = OUTLINED_FUNCTION_115_0();
      v31 = *(v0 + 1968);
      v32 = *(v0 + 1784);
      sub_1B24E313C(v30, v33);

      OUTLINED_FUNCTION_7_19();
      sub_1B24E1A30();
      v16 = v32;
      v17 = 1;
      v18 = 2;
      v19 = v31;
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_7_19();
    sub_1B24E1A30();
  }

  else
  {
    OUTLINED_FUNCTION_125_0();
    sub_1B243E88C(v25, &qword_1EB7D1E48, &unk_1B2582B10);
  }

  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17(&qword_1ED699E80);
  }

  __swift_project_value_buffer(*(v0 + 1840), qword_1ED69A108);
  OUTLINED_FUNCTION_126_0();
  v34 = v54[1];
  *(v0 + 1680) = v54[0];
  *(v0 + 1688) = v34;
  OUTLINED_FUNCTION_75_0();
  MEMORY[0x1B2749D50](0xD000000000000027);
  *(v0 + 1720) = v1;
  sub_1B256E78C();
  v35 = *(v0 + 1680);
  v36 = *(v0 + 1688);
  v37 = v22;
  v38 = sub_1B256E0AC();
  v39 = sub_1B256D5CC();
  v53 = v22;
  if (os_log_type_enabled(v39, v38))
  {
    v40 = OUTLINED_FUNCTION_21_3();
    v41 = OUTLINED_FUNCTION_20_4();
    v54[0] = v41;
    *v40 = 136446466;
    v43 = OUTLINED_FUNCTION_75_2(v41, v42, v54);
    OUTLINED_FUNCTION_78_2(v43);
    *(v40 + 14) = sub_1B2519814(v35, v36, v54);
    _os_log_impl(&dword_1B23EF000, v39, v38, "%{public}s%{public}s", v40, 0x16u);
    OUTLINED_FUNCTION_101_2();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_7_12();
  }

  v51 = *(v0 + 2024);
  v52 = *(v0 + 2032);
  v44 = *(v0 + 2200);
  v45 = *(v0 + 2016);
  v46 = [objc_allocWithZone(type metadata accessor for SKTwoErrorEvent()) init];
  v47 = sub_1B256D0CC();
  [v46 setPrimaryError_];

  v48 = sub_1B256D0CC();
  [v46 setMappedError_];

  [v46 setUserAction_];
  v49 = &v46[OBJC_IVAR____TtC8StoreKit15SKTwoErrorEvent_context];
  *v49 = v45;
  v49[8] = v44;
  OUTLINED_FUNCTION_18_1();
  v50 = sub_1B256D98C();
  [v46 setInAppPurchaseID_];

  [objc_opt_self() sendEvent_];

  swift_willThrow();
  sub_1B24E313C(v51, v52);

  OUTLINED_FUNCTION_96_2();
  OUTLINED_FUNCTION_65_1();

  OUTLINED_FUNCTION_7_2();
LABEL_6:
  OUTLINED_FUNCTION_122_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1B24DE7B4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24DE898()
{
  v20 = v0;
  sub_1B2464920(v0[248], v0[247]);
  OUTLINED_FUNCTION_38_7();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1B243E88C(v0[247], &unk_1EB7D0DF0, &qword_1B257AF80);
LABEL_4:
    if (qword_1EB7CFC50 != -1)
    {
      v2 = OUTLINED_FUNCTION_55_2(&qword_1EB7CFC50);
    }

    OUTLINED_FUNCTION_43_4(v2, qword_1EB7EDFA8);
    v6 = v5;
    goto LABEL_7;
  }

  v1 = v0[247];
  v3 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17B8, &unk_1B2582B60) + 48));
  OUTLINED_FUNCTION_11_17();
  v2 = sub_1B24E1A30();
  if (v3)
  {
    goto LABEL_4;
  }

  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17(&qword_1ED699E80);
  }

  __swift_project_value_buffer(v0[230], qword_1ED69A108);
  v7 = sub_1B256E0AC();
  v8 = sub_1B256D5CC();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = OUTLINED_FUNCTION_21_3();
    v10 = OUTLINED_FUNCTION_20_4();
    v19 = v10;
    *v9 = 136446466;
    v12 = OUTLINED_FUNCTION_75_2(v10, v11, &v19);
    OUTLINED_FUNCTION_78_2(v12);
    *(v9 + 14) = sub_1B2519814(0xD00000000000002DLL, 0x80000001B258FB70, &v19);
    OUTLINED_FUNCTION_3_16();
    _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_7_12();
  }

  v6 = sub_1B24DEA8C;
  v4 = 0;
LABEL_7:

  return MEMORY[0x1EEE6DFA0](v6, v4, 0);
}

uint64_t sub_1B24DEA8C()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1B24DEB18;
  v1 = swift_continuation_init();
  sub_1B24EFF74(v1);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B24DEB18()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B24DEBEC, 0, 0);
}

uint64_t sub_1B24DEBEC()
{
  OUTLINED_FUNCTION_4_0();
  if (qword_1EB7CFC50 != -1)
  {
    v0 = OUTLINED_FUNCTION_55_2(&qword_1EB7CFC50);
  }

  OUTLINED_FUNCTION_43_4(v0, qword_1EB7EDFA8);

  return MEMORY[0x1EEE6DFA0](v2, v1, 0);
}

uint64_t sub_1B24DEC64()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B2463AE0(*(v0 + 1984));
  v1 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B24DECC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_159();
  v17 = v16[254];
  v18 = v16[253];
  v19 = v16[248];
  v20 = v16[246];
  v21 = v16[223];

  sub_1B24E313C(v18, v17);
  OUTLINED_FUNCTION_11_17();
  sub_1B24E1A30();
  sub_1B24E31B0(v19, v21);
  __swift_storeEnumTagSinglePayload(v21, 0, 2, v20);

  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_65_1();

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_8_7();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t Product.purchase<A>(confirmIn:options:)()
{
  OUTLINED_FUNCTION_4_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  sub_1B256DD6C();
  v1[7] = sub_1B256DD5C();
  OUTLINED_FUNCTION_120();
  v7 = sub_1B256DCEC();
  v1[8] = v7;
  v1[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B24DEE98, v7, v6);
}

uint64_t sub_1B24DEE98()
{
  OUTLINED_FUNCTION_4_0();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  v2 = (v1 + 16);
  v9.val[1] = *(v0 + 24);
  v9.val[0] = *(v0 + 40);
  vst2q_f64(v2, v9);
  OUTLINED_FUNCTION_33_5(qword_1B2581600);
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 88) = v4;
  *v4 = v5;
  v4[1] = sub_1B24DEF68;
  OUTLINED_FUNCTION_32_4();

  return v7();
}

uint64_t sub_1B24DEF68()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1B24DF0C4;
  }

  else
  {

    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1B24DF06C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B24DF06C()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_14_7();

  return v0();
}

uint64_t sub_1B24DF0C4()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B24DF12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1B256DD6C();
  v4[6] = sub_1B256DD5C();
  v6 = sub_1B256DCEC();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B24DF1C8, v6, v5);
}

uint64_t sub_1B24DF1C8()
{
  v26 = v0;
  v1 = [*(v0 + 24) _windows];
  sub_1B246063C(0, &qword_1EB7D0E30, 0x1E69DD2E8);
  v2 = sub_1B256DC5C();

  v3 = sub_1B24D0D24();
  for (i = 0; v3 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = OUTLINED_FUNCTION_117_0();
      v5 = MEMORY[0x1B274A7A0](v7);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if ([v5 isKeyWindow])
    {
      goto LABEL_11;
    }
  }

  v6 = 0;
LABEL_11:
  *(v0 + 72) = v6;

  v8 = [v6 rootViewController];
  *(v0 + 80) = v8;
  if (v8)
  {
    goto LABEL_17;
  }

  if (qword_1ED699E80 != -1)
  {
LABEL_22:
    OUTLINED_FUNCTION_0_17(&qword_1ED699E80);
  }

  v9 = *(v0 + 32);
  v10 = type metadata accessor for SKLogger(0);
  __swift_project_value_buffer(v10, qword_1ED69A108);
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_1B256E4FC();
  OUTLINED_FUNCTION_34_5();
  MEMORY[0x1B2749D50](v11 + 12, v12 | 0x8000000000000000);
  MEMORY[0x1B2749D50](*(v9 + 48), *(v9 + 56));
  OUTLINED_FUNCTION_75_0();
  v13 = OUTLINED_FUNCTION_91_1();
  MEMORY[0x1B2749D50](v13);
  LOBYTE(v9) = sub_1B256E0AC();

  v14 = sub_1B256D5CC();

  if (os_log_type_enabled(v14, v9))
  {
    v15 = OUTLINED_FUNCTION_21_3();
    v16 = OUTLINED_FUNCTION_20_4();
    v25[0] = v16;
    *v15 = 136446466;
    v18 = OUTLINED_FUNCTION_75_2(v16, v17, v25);
    OUTLINED_FUNCTION_82_2(v18);
    v19 = sub_1B2519814(0, 0xE000000000000000, v25);

    *(v15 + 14) = v19;
    OUTLINED_FUNCTION_66_1(&dword_1B23EF000, v20, v21, "%{public}s%{public}s");
    OUTLINED_FUNCTION_101_2();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_10_7();
  }

  else
  {
  }

LABEL_17:
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 88) = v22;
  *v22 = v23;
  v22[1] = sub_1B24DF4C8;

  return sub_1B24DAE2C();
}

uint64_t sub_1B24DF4C8()
{
  OUTLINED_FUNCTION_21_5();
  v2 = *v1;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_1B24DF660;
  }

  else
  {
    v7 = sub_1B24DF5F8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B24DF5F8()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_14_7();

  return v2();
}

uint64_t sub_1B24DF660()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_7_2();

  return v2();
}

uint64_t Product.purchase(confirmIn:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = OUTLINED_FUNCTION_16_7();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B24DF6F8()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  OUTLINED_FUNCTION_33_5(qword_1B2581600);
  v8 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 56) = v5;
  *v5 = v6;
  v5[1] = sub_1B24DF7CC;
  OUTLINED_FUNCTION_32_4();

  return v8();
}

uint64_t sub_1B24DF7CC()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B2467E08, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_7_2();

    return v7();
  }
}

uint64_t sub_1B24DF8EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B2445514;

  return sub_1B24DAE2C();
}

uint64_t sub_1B24DF9A4()
{
  OUTLINED_FUNCTION_4_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for Product(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_2_2(v4);
  v1[6] = OUTLINED_FUNCTION_131_0();
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for SKLogger(0);
  v1[8] = v5;
  OUTLINED_FUNCTION_2_2(v5);
  v1[9] = OUTLINED_FUNCTION_131_0();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DE0, &unk_1B2580B10);
  OUTLINED_FUNCTION_2_2(v6);
  v1[12] = OUTLINED_FUNCTION_131_0();
  v1[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0, &qword_1B257AF80);
  v1[14] = v7;
  OUTLINED_FUNCTION_2_2(v7);
  v1[15] = OUTLINED_FUNCTION_131_0();
  v1[16] = swift_task_alloc();
  v8 = _s14PurchaseOptionV19PurchaseOptionValueOMa(0);
  v1[17] = v8;
  OUTLINED_FUNCTION_2_2(v8);
  v1[18] = OUTLINED_FUNCTION_250();
  v9 = type metadata accessor for Product.PurchaseOption(0);
  OUTLINED_FUNCTION_26_7(v9);
  v1[19] = v10;
  v1[20] = OUTLINED_FUNCTION_250();
  v11 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B24DFB4C()
{
  v1 = v0[4];
  if (*(v1 + *(v0[5] + 68)))
  {
    goto LABEL_2;
  }

  v9 = *(v1 + 64);
  v8 = *(v1 + 72);
  v10 = v9 == 0x62616D75736E6F43 && v8 == 0xEA0000000000656CLL;
  if (v10 || (OUTLINED_FUNCTION_8_1(0x62616D75736E6F43, 0xEA0000000000656CLL) & 1) != 0 || ((OUTLINED_FUNCTION_75_0(), v9 == 0xD000000000000019) ? (v12 = v11 == v8) : (v12 = 0), v12 || (OUTLINED_FUNCTION_8_1(0xD000000000000019, v11) & 1) != 0 || ((OUTLINED_FUNCTION_75_0(), v9 == 0xD00000000000001BLL) ? (v14 = v13 == v8) : (v14 = 0), v14 || (OUTLINED_FUNCTION_8_1(0xD00000000000001BLL, v13) & 1) != 0)))
  {
    v15 = v0[3] + 56;
    OUTLINED_FUNCTION_73_2();
    v18 = v17 & v16;
    v20 = (63 - v19) >> 6;

    v21 = 0;
    if (!v18)
    {
      goto LABEL_22;
    }

    do
    {
      v22 = v21;
LABEL_25:
      v23 = v0[20];
      v24 = OUTLINED_FUNCTION_37_4(__clz(__rbit64(v18)) | (v22 << 6));
      sub_1B24E19D8(v24, v23);
      OUTLINED_FUNCTION_45_2();
      v25 = OUTLINED_FUNCTION_41_1();
      sub_1B24E30E4(v25, v26);
      OUTLINED_FUNCTION_14_3();
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        OUTLINED_FUNCTION_0_35();
        sub_1B24E1A30();
        if (qword_1ED699E80 != -1)
        {
          goto LABEL_44;
        }

        goto LABEL_32;
      }

      v18 &= v18 - 1;
      OUTLINED_FUNCTION_0_35();
      sub_1B24E1A30();
      v21 = v22;
    }

    while (v18);
LABEL_22:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {
        v27 = v0[4];

        v28 = swift_task_alloc();
        v0[21] = v28;
        *(v28 + 16) = v27;
        OUTLINED_FUNCTION_33_5(&qword_1B25816D0);
        swift_task_alloc();
        OUTLINED_FUNCTION_8_2();
        v0[22] = v29;
        *v29 = v30;
        v29[1] = sub_1B24DFFB8;
        OUTLINED_FUNCTION_115();

        __asm { BR              X7 }
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_44:
    OUTLINED_FUNCTION_0_17(&qword_1ED699E80);
LABEL_32:
    v33 = v0[10];
    v34 = __swift_project_value_buffer(v0[8], qword_1ED69A108);
    OUTLINED_FUNCTION_9_19(v34);
    sub_1B256D5CC();
    OUTLINED_FUNCTION_7_9();
    sub_1B256D5EC();
    OUTLINED_FUNCTION_7_0();
    (*(v35 + 8))(v33);
    v36 = sub_1B256E0CC();
    if (OUTLINED_FUNCTION_11_9(v36))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_16();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      OUTLINED_FUNCTION_7_12();
    }

LABEL_2:
    v2 = OUTLINED_FUNCTION_59_3();
    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
    OUTLINED_FUNCTION_18_9();

    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_115();

    __asm { BRAA            X1, X16 }
  }

  v42 = v9 == 0x736E6F432D6E6F4ELL && v8 == 0xEE00656C62616D75;
  if (!v42 && (OUTLINED_FUNCTION_8_1(0x736E6F432D6E6F4ELL, 0xEE00656C62616D75) & 1) == 0)
  {
    goto LABEL_2;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v0[23] = v43;
  *v43 = v44;
  v43[1] = sub_1B24E032C;
  OUTLINED_FUNCTION_115();

  return static Transaction.currentEntitlement(for:)();
}

void sub_1B24DFFB8()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    sub_1B24C43D4(0, 2uLL);

    v7 = OUTLINED_FUNCTION_16_7();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1B24E00DC()
{
  v1 = v0[13];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[14]) == 1)
  {
    sub_1B243E88C(v1, &unk_1EB7D0DE0, &unk_1B2580B10);
    v2 = OUTLINED_FUNCTION_59_3();
  }

  else
  {
    sub_1B24E31B0(v1, v0[16]);
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17(&qword_1ED699E80);
    }

    v6 = v0[11];
    v7 = v0[4];
    v8 = __swift_project_value_buffer(v0[8], qword_1ED69A108);
    OUTLINED_FUNCTION_9_19(v8);
    OUTLINED_FUNCTION_6_19();
    v9 = OUTLINED_FUNCTION_117_0();
    sub_1B24E19D8(v9, v10);
    sub_1B256D5CC();
    OUTLINED_FUNCTION_7_9();
    sub_1B256D5EC();
    OUTLINED_FUNCTION_7_0();
    (*(v11 + 8))(v6);
    v12 = sub_1B256E0CC();
    if (OUTLINED_FUNCTION_11_9(v12))
    {
      swift_slowAlloc();
      v24 = OUTLINED_FUNCTION_103_2();
      *v7 = 136446210;

      OUTLINED_FUNCTION_4_20();
      v13 = OUTLINED_FUNCTION_153();
      v16 = sub_1B2519814(v13, v14, v15);

      *(v7 + 4) = v16;
      OUTLINED_FUNCTION_3_16();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_10_7();
      OUTLINED_FUNCTION_7_12();
    }

    else
    {

      OUTLINED_FUNCTION_4_20();
    }

    sub_1B24E31B0(v0[16], v0[2]);
    OUTLINED_FUNCTION_56_3();
  }

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_18_9();

  OUTLINED_FUNCTION_7_2();

  return v22();
}

uint64_t sub_1B24E032C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B24E0410()
{
  v1 = v0[12];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[14]) == 1)
  {
    sub_1B243E88C(v1, &unk_1EB7D0DE0, &unk_1B2580B10);
    v2 = OUTLINED_FUNCTION_59_3();
  }

  else
  {
    sub_1B24E31B0(v1, v0[15]);
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17(&qword_1ED699E80);
    }

    v6 = v0[9];
    v7 = v0[4];
    v8 = __swift_project_value_buffer(v0[8], qword_1ED69A108);
    OUTLINED_FUNCTION_9_19(v8);
    OUTLINED_FUNCTION_6_19();
    v9 = OUTLINED_FUNCTION_117_0();
    sub_1B24E19D8(v9, v10);
    sub_1B256D5CC();
    OUTLINED_FUNCTION_7_9();
    sub_1B256D5EC();
    OUTLINED_FUNCTION_7_0();
    (*(v11 + 8))(v6);
    v12 = sub_1B256E0CC();
    if (OUTLINED_FUNCTION_11_9(v12))
    {
      swift_slowAlloc();
      v24 = OUTLINED_FUNCTION_103_2();
      *v7 = 136446210;

      OUTLINED_FUNCTION_4_20();
      v13 = OUTLINED_FUNCTION_153();
      v16 = sub_1B2519814(v13, v14, v15);

      *(v7 + 4) = v16;
      OUTLINED_FUNCTION_3_16();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_10_7();
      OUTLINED_FUNCTION_7_12();
    }

    else
    {

      OUTLINED_FUNCTION_4_20();
    }

    sub_1B24E31B0(v0[15], v0[2]);
    OUTLINED_FUNCTION_56_3();
  }

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_18_9();

  OUTLINED_FUNCTION_7_2();

  return v22();
}

void sub_1B24E0660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v46 = a4;
  v47 = a5;
  v45 = a3;
  v7 = type metadata accessor for SKLogger(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Product(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - v15;
  v17 = [objc_opt_self() defaultBroker];
  sub_1B24E19D8(a2, v16);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_1B24E30E4(v16, v20 + v18);
  v48 = a1;
  *(v20 + v19) = a1;
  v53 = sub_1B24E3648;
  v54 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1B244BD28;
  v52 = &block_descriptor_66;
  v21 = _Block_copy(&aBlock);

  v22 = [v17 storeKitServiceWithErrorHandler_];
  _Block_release(v21);

  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1E60, &unk_1B2583C10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B2578530;
    v24 = SKClientOverridesKeyClientAPIVersion;
    *(inited + 64) = MEMORY[0x1E69E6530];
    *(inited + 32) = v24;
    *(inited + 40) = 2;
    type metadata accessor for SKClientOverridesKey(0);
    sub_1B24E2450(&qword_1EB7CFE48, type metadata accessor for SKClientOverridesKey, &unk_1B257798C);
    v25 = v24;
    v26 = sub_1B256D8AC();
    v27 = *v45;
    if (*v45)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v26;
      sub_1B24E3348(v27, sub_1B24E3314, 0, isUniquelyReferenced_nonNull_native, &aBlock);
    }

    type metadata accessor for SKPaymentOption(0);
    sub_1B24E2450(&qword_1EB7CFE58, type metadata accessor for SKPaymentOption, &unk_1B25779CC);

    v29 = sub_1B256D86C();

    v30 = sub_1B256D86C();

    v31 = swift_allocObject();
    *(v31 + 16) = v48;
    v53 = sub_1B24E36D8;
    v54 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_1B248A62C;
    v52 = &block_descriptor_72;
    v32 = _Block_copy(&aBlock);

    [v22 processPayment:v29 forClient:v30 paymentDelegate:v47 reply:v32];
    swift_unknownObjectRelease();
    _Block_release(v32);
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v7, qword_1ED69A108);
    sub_1B24E19D8(v33, v9);
    sub_1B24E19D8(a2, v14);
    v34 = sub_1B256D5CC();
    v35 = sub_1B256D5EC();
    (*(*(v35 - 8) + 8))(v9, v35);
    v36 = sub_1B256E0AC();
    if (os_log_type_enabled(v34, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136446210;
      v39 = *(v14 + 6);
      v40 = *(v14 + 7);

      sub_1B24E1A30();
      v41 = sub_1B2519814(v39, v40, &aBlock);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_1B23EF000, v34, v36, "Failed to get XPC remote object to purchase product %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1B274BFF0](v38, -1, -1);
      MEMORY[0x1B274BFF0](v37, -1, -1);
    }

    else
    {

      sub_1B24E1A30();
    }

    type metadata accessor for StoreKitError(0);
    sub_1B24E2450(&qword_1EB7CD4C0, type metadata accessor for StoreKitError, &protocol conformance descriptor for StoreKitError);
    v42 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40, &qword_1B257BB10);
    swift_allocError();
    *v43 = v42;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1B24E0D8C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Product(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SKLogger(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v8, qword_1ED69A108);
  sub_1B24E19D8(v11, v10);
  sub_1B24E19D8(a2, v7);
  v12 = a1;
  v13 = sub_1B256D5CC();
  v14 = sub_1B256D5EC();
  (*(*(v14 - 8) + 8))(v10, v14);
  v15 = sub_1B256E0AC();

  if (os_log_type_enabled(v13, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v16 = 136446466;
    v19 = *(v7 + 6);
    v20 = *(v7 + 7);

    sub_1B24E1A30();
    v21 = sub_1B2519814(v19, v20, &v27);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2114;
    v22 = sub_1B256D0CC();
    *(v16 + 14) = v22;
    *v17 = v22;
    _os_log_impl(&dword_1B23EF000, v13, v15, "Failed in XPC to purchase product %{public}s: %{public}@", v16, 0x16u);
    sub_1B243E88C(v17, &qword_1EB7D18E0, &qword_1B2581610);
    MEMORY[0x1B274BFF0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1B274BFF0](v18, -1, -1);
    MEMORY[0x1B274BFF0](v16, -1, -1);
  }

  else
  {

    sub_1B24E1A30();
  }

  v23 = parseError(_:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40, &qword_1B257BB10);
  swift_allocError();
  *v24 = v23;
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1B24E10D8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40, &qword_1B257BB10);
    swift_allocError();
    *v4 = a2;
    v5 = a2;
LABEL_3:

    return swift_continuation_throwingResumeWithError();
  }

  if (!a1)
  {
    type metadata accessor for StoreKitError(0);
    sub_1B24E2450(&qword_1EB7CD4C0, type metadata accessor for StoreKitError, &protocol conformance descriptor for StoreKitError);
    v7 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40, &qword_1B257BB10);
    swift_allocError();
    *v8 = v7;
    goto LABEL_3;
  }

  **(*(a3 + 64) + 40) = a1;

  return swift_continuation_throwingResume();
}

void sub_1B24E1240(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Product(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SKLogger(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v7, qword_1ED69A108);
  sub_1B24E19D8(v10, v9);
  sub_1B24E19D8(a2, v6);
  v11 = a1;
  v12 = sub_1B256D5CC();
  v13 = sub_1B256D5EC();
  (*(*(v13 - 8) + 8))(v9, v13);
  v14 = sub_1B256E0AC();

  if (os_log_type_enabled(v12, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v15 = 136446466;
    v18 = *(v6 + 6);
    v19 = *(v6 + 7);

    sub_1B24E1A30();
    v20 = sub_1B2519814(v18, v19, &v23);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2114;
    v21 = sub_1B256D0CC();
    *(v15 + 14) = v21;
    *v16 = v21;
    _os_log_impl(&dword_1B23EF000, v12, v14, "Failed in XPC to update transaction sequence for purchase of product with id: %{public}s: %{public}@", v15, 0x16u);
    sub_1B243E88C(v16, &qword_1EB7D18E0, &qword_1B2581610);
    MEMORY[0x1B274BFF0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1B274BFF0](v17, -1, -1);
    MEMORY[0x1B274BFF0](v15, -1, -1);
  }

  else
  {

    sub_1B24E1A30();
  }
}

uint64_t sub_1B24E1540(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1E70, &unk_1B2582B80);
    v2 = sub_1B256E8DC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    sub_1B2456DAC(*(a1 + 56) + 32 * v11, v34 + 8);
    *&v34[0] = v12;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v12;
    type metadata accessor for SKServerKey(0);
    v13 = v12;
    swift_dynamicCast();
    sub_1B244AA0C((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_1B244AA0C(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_1B244AA0C(v30, v31);
    result = sub_1B256E45C();
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v17 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v22 = *(v2 + 48) + 40 * v17;
    *v22 = v23;
    *(v22 + 16) = v24;
    *(v22 + 32) = v25;
    result = sub_1B244AA0C(v31, (*(v2 + 56) + 32 * v17));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1B24E1804(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0, &qword_1B257AF80);
  v2[5] = swift_task_alloc();
  type metadata accessor for Transaction(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B24E18D0, 0, 0);
}

uint64_t sub_1B24E18D0()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B2464920(v0[2], v0[5]);
  OUTLINED_FUNCTION_38_7();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[6];
    v2 = v0[3];
    sub_1B24E30E4(v0[5], v1);
    if (*(v1 + 80) == *(v2 + 48) && *(v1 + 88) == *(v2 + 56))
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1B256EB5C();
    }

    OUTLINED_FUNCTION_11_17();
    sub_1B24E1A30();
  }

  else
  {
    sub_1B243E88C(v0[5], &unk_1EB7D0DF0, &qword_1B257AF80);
    v4 = 0;
  }

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_1B24E19D8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_7_9();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_22_1();
  v6(v5);
  return a2;
}

uint64_t sub_1B24E1A30()
{
  v1 = OUTLINED_FUNCTION_105_2();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B24E1A84()
{
  OUTLINED_FUNCTION_21_5();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_16_10(v4);

  return sub_1B24DA6BC(v6, v3, v2);
}

uint64_t sub_1B24E1B20()
{
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_16_10(v5);

  return sub_1B24DF12C(v7, v2, v4, v3);
}

uint64_t sub_1B24E1BD4()
{
  OUTLINED_FUNCTION_21_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_16_10(v1);

  return sub_1B24DF8EC();
}

unint64_t sub_1B24E1C7C()
{
  result = qword_1EB7D1DB0;
  if (!qword_1EB7D1DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1DB0);
  }

  return result;
}

unint64_t sub_1B24E1D1C()
{
  result = qword_1EB7D1DC0;
  if (!qword_1EB7D1DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1DC0);
  }

  return result;
}

uint64_t sub_1B24E1D98(uint64_t a1)
{
  result = _s14PurchaseOptionV19PurchaseOptionValueOMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s14PurchaseOptionV10ResultModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B24E1F28(uint64_t a1)
{
  sub_1B24E1F80(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1B24E1F80(uint64_t a1)
{
  if (!qword_1EB7D1DE8)
  {
    v2 = type metadata accessor for Transaction(255);
    v5 = type metadata accessor for VerificationResult(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB7D1DE8);
    }
  }
}

_BYTE *_s13PurchaseErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s14PurchaseOptionV19PurchaseOptionErrorOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B24E2188(uint64_t a1)
{
  result = sub_1B256D3CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B24E221C(uint64_t a1)
{
  sub_1B256D3CC();
  if (v1 <= 0x3F)
  {
    sub_1B24E22F4();
    if (v2 <= 0x3F)
    {
      _s14PurchaseOptionV33PromotionalOfferSignatureMetadataVMa(319);
      if (v3 <= 0x3F)
      {
        sub_1B24E2358();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1B24E22F4()
{
  if (!qword_1EB7D1E10)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB7D1E10);
    }
  }
}

unint64_t sub_1B24E2358()
{
  result = qword_1EB7D1E18;
  if (!qword_1EB7D1E18)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EB7D1E18);
  }

  return result;
}

unint64_t sub_1B24E23B4()
{
  result = qword_1EB7D1E20;
  if (!qword_1EB7D1E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1E20);
  }

  return result;
}

uint64_t sub_1B24E2450(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B24E24E4()
{
  result = qword_1EB7D1E38;
  if (!qword_1EB7D1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1E38);
  }

  return result;
}

uint64_t sub_1B24E2538(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1E98, &qword_1B2582BC8);
  v38 = v4;
  result = sub_1B256E8CC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v36 = v2;
  v37 = v5;
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
        goto LABEL_34;
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
        v39 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_32;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_1B255FE64(0, (v35 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v39 = (v12 - 1) & v12;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = v19[1];
    v40 = *v19;
    v21 = *(v5 + 56) + 24 * v18;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    if ((v38 & 1) == 0)
    {

      sub_1B24472B8(v22, v23, v24);
    }

    sub_1B256ED3C();
    sub_1B256DA7C();
    result = sub_1B256ED7C();
    v25 = -1 << *(v7 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v7 + 48) + 16 * v28);
    *v33 = v40;
    v33[1] = v20;
    v34 = *(v7 + 56) + 24 * v28;
    *v34 = v22;
    *(v34 + 8) = v23;
    *(v34 + 16) = v24;
    ++*(v7 + 16);
    v5 = v37;
    v12 = v39;
    if (!v39)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v14 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1B24E2814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1E78, &qword_1B2582B98);
  v35 = v4;
  result = sub_1B256E8CC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

  v33 = v2;
  v34 = v5;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      sub_1B255FE64(0, (v32 + 63) >> 6, v9);
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
    v19 = *(v5 + 56);
    v20 = *(*(v5 + 48) + 8 * v18);
    v21 = (v19 + 32 * v18);
    if (v35)
    {
      sub_1B244AA0C(v21, v36);
    }

    else
    {
      sub_1B2456DAC(v21, v36);
      v22 = v20;
    }

    sub_1B256D9BC();
    sub_1B256ED3C();
    sub_1B256DA7C();
    v23 = sub_1B256ED7C();

    v24 = -1 << *(v7 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v7 + 48) + 8 * v27) = v20;
    result = sub_1B244AA0C(v36, (*(v7 + 56) + 32 * v27));
    ++*(v7 + 16);
    v5 = v34;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1B24E2AE0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1B256D15C();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1B256CF5C();
      swift_allocObject();
      v8 = sub_1B256CF1C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1B256D1BC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1B24E2BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1B24E3080(sub_1B24E38F4, v5, a1, a2);
}

uint64_t sub_1B24E2BFC(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1B2443AE4(v7, v6);
      *v5 = xmmword_1B25825F0;
      sub_1B2443AE4(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_1B256CF2C() && __OFSUB__(v7, sub_1B256CF4C()))
      {
        goto LABEL_24;
      }

      sub_1B256CF5C();
      swift_allocObject();
      v14 = sub_1B256CF0C();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_1B24E3220(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1B2443AE4(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_1B25825F0;
      sub_1B2443AE4(0, 0xC000000000000000);
      sub_1B256D16C();
      v7 = v17;
      v10 = sub_1B24E3220(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_1B2443AE4(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_1B24E2FC0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1B256D15C();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1B27493F0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1B2749400]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B24E3038(uint64_t result)
{
  if (result)
  {
    result = sub_1B256E50C();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B24E3080(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B24E30E4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_7_9();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_22_1();
  v6(v5);
  return a2;
}

uint64_t sub_1B24E313C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1B24E314C()
{
  result = qword_1EB7D1E58;
  if (!qword_1EB7D1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1E58);
  }

  return result;
}

uint64_t sub_1B24E31A0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B24E31B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0, &qword_1B257AF80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1B24E3220(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1B256CF2C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1B256CF4C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1B256CF3C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

id sub_1B24E32D4(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1B2456DAC(a3, a1);

  return a2;
}

id sub_1B24E3314@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_1B24E32D4((a2 + 1), *a1, (a1 + 1));
  *a2 = result;
  return result;
}

uint64_t sub_1B24E3348(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1B2542E1C(a1, v32, a2, a3);
  v28 = v32[0];
  v29 = v32[1];
  v30 = v32[2];
  v31 = v33;

  while (1)
  {
    sub_1B2542E4C(&v26);
    v7 = v26;
    if (!v26)
    {
      sub_1B23FB6C4(v28);
    }

    sub_1B244AA0C(&v27, v25);
    v8 = *a5;
    v10 = sub_1B2458894();
    v11 = v8[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v8[3] >= v13)
    {
      if (a4)
      {
        if (v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0410, &qword_1B2582B90);
        sub_1B256E81C();
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1B24E2814(v13, a4 & 1);
      v15 = sub_1B2458894();
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

      v10 = v15;
      if (v14)
      {
LABEL_10:
        v17 = *a5;
        sub_1B2456DAC(v25, v24);
        __swift_destroy_boxed_opaque_existential_1(v25);

        v18 = (v17[7] + 32 * v10);
        __swift_destroy_boxed_opaque_existential_1(v18);
        sub_1B244AA0C(v24, v18);
        goto LABEL_14;
      }
    }

    v19 = *a5;
    *(*a5 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v19[6] + 8 * v10) = v7;
    sub_1B244AA0C(v25, (v19[7] + 32 * v10));
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_17;
    }

    v19[2] = v22;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  type metadata accessor for SKClientOverridesKey(0);
  result = sub_1B256EC9C();
  __break(1u);
  return result;
}

void sub_1B24E355C(uint64_t a1, void *a2)
{
  v3 = sub_1B256DC4C();

  [a2 receivedTransactions_];
}

void sub_1B24E35C8()
{
  v2 = OUTLINED_FUNCTION_105_2();
  v3 = type metadata accessor for Product(v2);
  OUTLINED_FUNCTION_2_2(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_1B24E1240(v0, v5);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B24E3648()
{
  v2 = OUTLINED_FUNCTION_105_2();
  v3 = type metadata accessor for Product(v2);
  OUTLINED_FUNCTION_26_7(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B24E0D8C(v0, v1 + v8, v9);
}

uint64_t sub_1B24E36E0()
{
  OUTLINED_FUNCTION_4_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B24E3774;
  v2 = OUTLINED_FUNCTION_22_1();

  return sub_1B24E1804(v2, v3);
}

uint64_t sub_1B24E3774()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  OUTLINED_FUNCTION_6_1();
  v3 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

void *sub_1B24E3860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1B24E2BA8(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1B24E38B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B24E3038(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_20()
{

  return sub_1B24E1A30();
}

uint64_t OUTLINED_FUNCTION_9_19(uint64_t a1)
{

  return sub_1B24E19D8(a1, v1);
}

id OUTLINED_FUNCTION_27_8()
{
  sub_1B24E31A0(v0, v1);

  return sub_1B253D05C(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_30_7@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 2152) = a1;

  return type metadata accessor for StoreKitPaymentDelegate();
}

uint64_t OUTLINED_FUNCTION_55_2(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_64_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_65_1()
{
}

void OUTLINED_FUNCTION_66_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_70_2(_OWORD *a1, _OWORD *a2)
{
  sub_1B244AA0C(a1, a2);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_74_2()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

unint64_t OUTLINED_FUNCTION_75_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1B2519814(0, 0xE000000000000000, a3);
}

uint64_t OUTLINED_FUNCTION_76_1(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_2(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t OUTLINED_FUNCTION_82_2(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t OUTLINED_FUNCTION_97_2()
{

  return sub_1B256E4FC();
}

uint64_t OUTLINED_FUNCTION_99_2()
{

  return sub_1B23FB6C4(v0);
}

uint64_t OUTLINED_FUNCTION_100_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_101_2()
{

  return swift_arrayDestroy();
}

_OWORD *OUTLINED_FUNCTION_102_2(_OWORD *a1, uint64_t a2, uint64_t a3)
{

  return sub_1B244A54C(a1, v3, a3);
}

uint64_t OUTLINED_FUNCTION_103_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_124_1()
{
}

uint64_t OUTLINED_FUNCTION_125_0()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_126_0()
{

  return sub_1B256E4FC();
}

uint64_t OUTLINED_FUNCTION_127_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_128_0()
{

  return sub_1B2458894();
}

void OUTLINED_FUNCTION_129_1()
{
}

uint64_t OUTLINED_FUNCTION_130_1(uint64_t a1, uint64_t a2)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_131_0()
{

  return swift_task_alloc();
}

id sub_1B24E411C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1B256D11C();
  v4 = [v2 initWithURL_];

  v5 = sub_1B256D14C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_1B24E41B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010, &qword_1B2577D70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_1B256D47C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v49 - v14;
  v16 = sub_1B256D14C();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B24E4808();
  sub_1B256D0FC();
  v19 = sub_1B24E411C(v18);
  if (v19)
  {
    v20 = v19;
    sub_1B24E48B4(a3, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1B24E484C(v8);
LABEL_17:
      v44 = sub_1B256D98C();

      v45 = OUTLINED_FUNCTION_0_36();
      v47 = [v45 v46];

      v31 = sub_1B256D9BC();
      sub_1B24E484C(a3);
      return v31;
    }

    (*(v10 + 32))(v15, v8, v9);
    sub_1B256D42C();
    sub_1B24E4924();
    v29 = sub_1B256D96C();
    v30 = *(v10 + 8);
    v30(v13, v9);
    if (v29)
    {
      v30(v15, v9);
      goto LABEL_17;
    }

    v49 = v30;
    v50 = a3;
    v32 = [v20 localizations];
    if (!v32)
    {
      sub_1B256DC5C();
      v32 = sub_1B256DC4C();
    }

    v33 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17A0, &unk_1B25832B0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1B2578530;
    *(v34 + 32) = sub_1B256D3EC();
    *(v34 + 40) = v35;
    v36 = sub_1B256DC4C();

    v37 = [v33 preferredLocalizationsFromArray:v32 forPreferences:v36];

    v38 = sub_1B256DC5C();
    if (!*(v38 + 16))
    {
      v49(v15, v9);

      a3 = v50;
      goto LABEL_17;
    }

    v39 = sub_1B256D98C();

    v40 = sub_1B256D98C();

    v41 = OUTLINED_FUNCTION_0_36();
    v43 = [v41 v42];

    v31 = sub_1B256D9BC();
    sub_1B24E484C(v50);
    v49(v15, v9);
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v21, qword_1ED69A108);
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_1B256E4FC();
    MEMORY[0x1B2749D50](0xD00000000000003DLL, 0x80000001B25907F0);
    MEMORY[0x1B2749D50](a1, a2);

    v23 = v51;
    v22 = v52;
    v24 = sub_1B256E0BC();

    v25 = sub_1B256D5CC();

    if (os_log_type_enabled(v25, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v51 = v27;
      *v26 = 136446466;
      *(v26 + 4) = sub_1B2519814(0, 0xE000000000000000, &v51);
      *(v26 + 12) = 2082;
      v28 = sub_1B2519814(v23, v22, &v51);

      *(v26 + 14) = v28;
      _os_log_impl(&dword_1B23EF000, v25, v24, "%{public}s%{public}s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v27, -1, -1);
      MEMORY[0x1B274BFF0](v26, -1, -1);
    }

    else
    {
    }

    sub_1B24E484C(a3);
    return 0;
  }

  return v31;
}