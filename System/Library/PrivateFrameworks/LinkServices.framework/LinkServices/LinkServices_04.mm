uint64_t sub_1976A6B28(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_197648238(0, &unk_1ED696D80, 0x1E69AC858);
    v9 = sub_19774F3F0();
    v10 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v11 = v9 & v10;
      if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = *(*(v4 + 48) + 8 * v11);
      v13 = sub_19774F400();

      if (v13)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v2;
        v17 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_19766553C();
          v15 = v17;
        }

        v8 = *(*(v15 + 48) + 8 * v11);
        sub_1976A72BC(v11);
        *v2 = v17;
        return v8;
      }

      v9 = v11 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = a1;
  v7 = sub_19774F540();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_1976A7160(v5, v6);

  return v8;
}

void sub_1976A6CA8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    if ((*v5 & 0x8000000000000000) != 0)
    {
      if (!sub_19774F530())
      {
        goto LABEL_25;
      }

      sub_197648238(0, &unk_1ED696D80, 0x1E69AC858);
      swift_dynamicCast();
      v13 = v29;
      if (!v29)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    v11 = v5[3];
    v10 = v5[4];
    if (!v10)
    {
      break;
    }

    v12 = v5[3];
LABEL_13:
    v14 = (v10 - 1) & v10;
    v13 = *(*(*v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
    v15 = v13;
LABEL_14:
    v5[3] = v11;
    v5[4] = v14;
    if (!v13)
    {
LABEL_25:

      sub_1976A6F74(a1, a2, v26, a3);
      return;
    }

LABEL_15:
    v16 = sub_19774F3F0();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        v5 = a5;
        goto LABEL_3;
      }

      sub_197648238(0, &unk_1ED696D80, 0x1E69AC858);
      v21 = *(*(a3 + 48) + 8 * v18);
      v22 = sub_19774F400();

      v16 = v18 + 1;
    }

    while ((v22 & 1) == 0);

    v23 = a1[v19];
    a1[v19] = v23 & ~v20;
    v24 = (v23 & v20) == 0;
    v5 = a5;
    if (v24)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_27;
    }

    if (v26 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= ((v5[2] + 64) >> 6))
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_14;
    }

    v10 = *(v5[1] + 8 * v12);
    ++v11;
    if (v10)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_1976A6EEC(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1976A6CA8(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1976A6F74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F798, &qword_19775A908);
  result = sub_19774F590();
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
    result = sub_19774F3F0();
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

uint64_t sub_1976A7160(uint64_t a1, uint64_t a2)
{

  v2 = sub_19774F500();
  v3 = swift_unknownObjectRetain();
  v4 = sub_197664948(v3, v2);
  v13 = v4;

  v5 = sub_19774F3F0();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((*(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v5 & v6)) & 1) == 0)
    {
      break;
    }

    sub_197648238(0, &unk_1ED696D80, 0x1E69AC858);
    v8 = *(*(v4 + 48) + 8 * v7);
    v9 = sub_19774F400();

    if (v9)
    {

      v10 = *(*(v4 + 48) + 8 * v7);
      sub_1976A72BC(v7);
      if (sub_19774F400())
      {
        *v12 = v13;
        return v10;
      }

      __break(1u);
      break;
    }

    v5 = v7 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1976A72BC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_19774F490();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_19774F3F0();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1976A7450(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_19774EF50();

  return v3;
}

uint64_t sub_1976A7518()
{
  OUTLINED_FUNCTION_18_0();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1976A51E8;
  v5 = OUTLINED_FUNCTION_33_3();

  return v6(v5, v2, v3);
}

uint64_t sub_1976A75C4()
{
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1976A7DA0;
  v6 = OUTLINED_FUNCTION_33_3();

  return v7(v6, v2, v4, v3);
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1976A76C0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_52_1(v6);
  *v7 = v8;
  v7[1] = sub_1976A7DA0;

  return sub_1976A5100(a1, v3, v4, v5);
}

uint64_t sub_1976A7784()
{
  OUTLINED_FUNCTION_18_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_34_3(v1);

  return v4(v3);
}

uint64_t sub_1976A7818()
{
  OUTLINED_FUNCTION_18_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_52_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_34_3(v1);

  return v4(v3);
}

uint64_t sub_1976A78AC(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_79_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1976A7908()
{
  OUTLINED_FUNCTION_31_1();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_34_0();
  v3(v2);
  return v0;
}

uint64_t sub_1976A79B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1976A7A0C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v3 = a3;
  }
}

void sub_1976A7A50(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1976A7AD4()
{
  OUTLINED_FUNCTION_31_1();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_34_0();
  v3(v2);
  return v0;
}

void *sub_1976A7B2C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v18 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      result = v17;
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

unint64_t sub_1976A7CC8()
{
  result = qword_1ED6972C8;
  if (!qword_1ED6972C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF3FF30, &unk_19775A950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6972C8);
  }

  return result;
}

uint64_t sub_1976A7D2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FF50, &unk_19775A920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id OUTLINED_FUNCTION_20_3(uint64_t a1, uint64_t a2)
{

  return sub_1976A4DDC(a1, a2, 9006, 0);
}

void OUTLINED_FUNCTION_29_2()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x19A8E67F0);
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_70_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_72_0()
{
  *(v1 - 112) = v0;

  return v0;
}

void OUTLINED_FUNCTION_84_0()
{
}

id OUTLINED_FUNCTION_85_0()
{
  *(v1 - 104) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_86_1()
{
}

BOOL OUTLINED_FUNCTION_89_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_90_0()
{

  return sub_19774ED70();
}

uint64_t sub_1976A7FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_1976A8050(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_1976A80A0(uint64_t a1)
{
  v1 = (*(a1 + 16))();

  return v1;
}

void sub_1976A80D4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_19765D63C(a1, &v11 - v7);
  v9 = sub_19774EAD0();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    v10 = sub_19774EA60();
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  if (a2)
  {
    a2 = sub_19774E9E0();
  }

  (*(a3 + 16))(a3, v10, a2);
}

uint64_t sub_1976A81FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_19774EA90();
    v10 = sub_19774EAD0();
    v11 = 0;
  }

  else
  {
    v10 = sub_19774EAD0();
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v11, 1, v10);

  v12 = a3;
  v9(v8, a3);

  return sub_19765D558(v8);
}

void sub_1976A82FC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v3;
  v7[5] = a1;
  v11[4] = sub_1976A8E24;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1976A7FD0;
  v11[3] = &block_descriptor_18_2;
  v8 = _Block_copy(v11);

  v9 = v3;
  v10 = a1;

  [v9 getConnectionInterfaceWithOptions:0 completionHandler:v8];
  _Block_release(v8);
}

void sub_1976A83FC(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, void *a5, void *a6)
{
  v12 = sub_19774EBF0();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v23 - v16;
  if (a1)
  {
    swift_unknownObjectRetain();
    sub_19774EBE0();
    swift_unknownObjectRetain();
    v18 = [a5 queue];
    v19 = swift_allocObject();
    *(v19 + 16) = "appintent:fetch entity url";
    *(v19 + 24) = 26;
    *(v19 + 32) = 2;
    *(v19 + 40) = &dword_19763D000;
    objc_allocWithZone(type metadata accessor for LNFetchEntityURLOperation());
    v20 = a6;

    v21 = sub_1976A86B4(v14, a1, 1, v18, sub_197669C04, v19, v20, a3, a4);
    [a5 enqueueConnectionOperation_];
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = sub_19774EAD0();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v22);
    a3(v17, a2);
    sub_19765D558(v17);
  }
}

id sub_1976A86B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = &v10[OBJC_IVAR____TtC12LinkServicesP33_9053401123055129EA61198701A274AF25LNFetchEntityURLOperation_completionHandler];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v10[OBJC_IVAR____TtC12LinkServicesP33_9053401123055129EA61198701A274AF25LNFetchEntityURLOperation_entity] = a7;
  *v16 = a8;
  *(v16 + 1) = a9;
  v17 = a7;

  v18 = sub_19774EBB0();
  aBlock[4] = a5;
  aBlock[5] = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1976A8050;
  aBlock[3] = &block_descriptor_24_1;
  v19 = _Block_copy(aBlock);

  v24.receiver = v10;
  v24.super_class = type metadata accessor for LNFetchEntityURLOperation();
  v20 = objc_msgSendSuper2(&v24, sel_initWithIdentifier_connectionInterface_priority_queue_activity_, v18, a2, a3, a4, v19);
  _Block_release(v19);

  swift_unknownObjectRelease();

  v21 = sub_19774EBF0();
  (*(*(v21 - 8) + 8))(a1, v21);
  return v20;
}

void sub_1976A8854()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for LNFetchEntityURLOperation();
  objc_msgSendSuper2(&v8, sel_start);
  v1 = [v0 connectionInterface];
  v2 = *&v0[OBJC_IVAR____TtC12LinkServicesP33_9053401123055129EA61198701A274AF25LNFetchEntityURLOperation_entity];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v7[4] = sub_1976A8E00;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1976A81FC;
  v7[3] = &block_descriptor_12;
  v4 = _Block_copy(v7);
  v5 = v2;
  v6 = v0;

  [v1 fetchEntityURL:v5 completionHandler:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
}

void sub_1976A89D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = &v2[OBJC_IVAR____TtC12LinkServicesP33_9053401123055129EA61198701A274AF25LNFetchEntityURLOperation_completionHandler];
  v6 = *&v2[OBJC_IVAR____TtC12LinkServicesP33_9053401123055129EA61198701A274AF25LNFetchEntityURLOperation_completionHandler];
  if (v6)
  {

    v6(a1, a2);
    sub_197672948(v6);
    v8 = *v5;
    *v5 = 0;
    v5[1] = 0;
    sub_197672948(v8);
  }

  if (a2)
  {
    v9 = sub_19774E9E0();
  }

  else
  {
    v9 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for LNFetchEntityURLOperation();
  objc_msgSendSuper2(&v10, sel_finishWithError_, v9);
}

void sub_1976A8A9C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FCE0, &unk_19775A220);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = &v1[OBJC_IVAR____TtC12LinkServicesP33_9053401123055129EA61198701A274AF25LNFetchEntityURLOperation_completionHandler];
  v8 = *&v1[OBJC_IVAR____TtC12LinkServicesP33_9053401123055129EA61198701A274AF25LNFetchEntityURLOperation_completionHandler];
  if (v8)
  {
    v9 = sub_19774EAD0();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);

    v8(v6, a1);
    sub_197672948(v8);
    sub_19765D558(v6);
    v10 = *v7;
    *v7 = 0;
    v7[1] = 0;
    sub_197672948(v10);
  }

  if (a1)
  {
    v11 = sub_19774E9E0();
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for LNFetchEntityURLOperation();
  v13.receiver = v2;
  v13.super_class = v12;
  objc_msgSendSuper2(&v13, sel_finishWithError_, v11);
}

id sub_1976A8D54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LNFetchEntityURLOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1976A8E68@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1976A8E74@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1976A8EBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_197652CC0(*v1, v1[1]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1976A8F14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = j__swift_bridgeObjectRetain(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1976A8F40@<X0>(uint64_t *a1@<X8>)
{
  result = j__swift_bridgeObjectRetain(*v1);
  *a1 = result;
  return result;
}

uint64_t (*sub_1976A8F90())(uint64_t a1)
{
  OUTLINED_FUNCTION_27();
  swift_beginAccess();
  return j__swift_endAccess;
}

BOOL sub_1976A900C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1976A8FE8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1976A903C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1976A8FF4(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1976A9080(uint64_t a1, void *a2)
{
  swift_beginAccess();

  return OUTLINED_FUNCTION_27();
}

uint64_t sub_1976A90DC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t (*sub_1976A913C())(uint64_t)
{
  OUTLINED_FUNCTION_27();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1976A91A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();

  return OUTLINED_FUNCTION_27();
}

uint64_t sub_1976A9200()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_19775A780;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(v0 + 64) = &off_1F0BBB748;
  *(v0 + 32) = 42;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  *(v0 + 56) = v1;
  return 0;
}

uint64_t sub_1976A92E4()
{
  v0 = sub_19774F380();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8_0();
  v4 = v3 - v2;
  v5 = sub_19774EDA0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_8_0();
  v6 = sub_19774F350();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_0();
  sub_19764665C();
  sub_1976466A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC8, qword_19775E1E0);
  sub_1976466F8();
  sub_19774F470();
  sub_19774ED90();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  return sub_19774F3A0();
}

void type metadata accessor for ComparisonResult()
{
  if (!qword_1EAF3FFD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EAF3FFD0);
    }
  }
}

uint64_t sub_1976A956C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  sub_197649C34();
  sub_1976A9860(0x454C424154, 0xE500000000000000, v5, v3);
  OUTLINED_FUNCTION_46_0();
  return OUTLINED_FUNCTION_18_5(v5);
}

uint64_t sub_1976A9860(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A7E0;
  *&v27 = 0x20504F5244;
  *(&v27 + 1) = 0xE500000000000000;
  MEMORY[0x19A8E4C40](a1, a2);
  v9 = v27;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = v9;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v10;
  if (a4)
  {
    v11 = xmmword_19775E3C0;
    v12 = MEMORY[0x1E69E7CC0];
    v13 = &off_1F0BBB748;
  }

  else
  {
    v10 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0uLL;
  }

  *(inited + 96) = v10;
  *(inited + 104) = v13;
  *(inited + 72) = v11;
  *(inited + 88) = v12;
  sub_19764E1F4(a3, inited + 112);
  v14 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 152; i += 40)
  {
    sub_197647660(inited + i, &v27, &qword_1EAF3FFE0, &qword_19775E430);
    v24[0] = v27;
    v24[1] = v28;
    v25 = v29;
    if (*(&v28 + 1))
    {
      sub_19764C774(v24, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19764F2F8(0, v14[2] + 1, 1, v14, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v14 = v18;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        sub_19764F2F8(v16 > 1, v17 + 1, 1, v14, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v14 = v19;
      }

      v14[2] = v17 + 1;
      sub_19764C774(v26, &v14[5 * v17 + 4]);
    }

    else
    {
      sub_19764CAE4(v24, &qword_1EAF3FFE0, &qword_19775E430);
    }
  }

  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FFE0, &qword_19775E430);
  sub_197649FEC(v14, &v27);

  v20 = *(&v28 + 1);
  v21 = v29;
  __swift_project_boxed_opaque_existential_0Tm(&v27, *(&v28 + 1));
  v22 = sub_1976C73F8(v20, v21);
  __swift_destroy_boxed_opaque_existential_0(&v27);
  return v22;
}

void sub_1976A9B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  OUTLINED_FUNCTION_160();
  a54 = v56;
  a55 = v57;
  v58 = v55;
  v60 = v59;
  v96 = v61;
  v97 = v62;
  v64 = v63;
  type metadata accessor for TableBuilder();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];
  v60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A7E0;
  v66 = *(v55 + 16);
  v67 = *(v58 + 24);
  v68 = *(v58 + 32);
  v69 = *(v58 + 40);
  v70 = *(v58 + 64);
  swift_bridgeObjectRetain_n();

  if (v69)
  {

    v66 = v68;
    v67 = v69;
  }

  sub_19764E750(v66, v67, v70 & 1, &a21);

  if (v64)
  {
    v71 = 1;
  }

  else
  {
    v71 = 2;
  }

  sub_1976A9EAC(0x454C424154, 0xE500000000000000, &a21, v71, v96 & 1, (inited + 32));
  __swift_destroy_boxed_opaque_existential_0(&a21);
  swift_beginAccess();

  sub_197649FEC(v72, &a21);

  __swift_project_boxed_opaque_existential_0Tm(&a21, *(&a22 + 1));
  v73 = OUTLINED_FUNCTION_167();
  v75 = v74;
  v77 = v76;
  __swift_destroy_boxed_opaque_existential_0(&a21);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 96) = v78;
  *(inited + 104) = &off_1F0BBB748;
  *(inited + 72) = v73;
  *(inited + 80) = v75;
  *(inited + 88) = v77;
  if (v97)
  {
    v79 = xmmword_19775E3D0;
    v80 = MEMORY[0x1E69E7CC0];
    v81 = &off_1F0BBB748;
  }

  else
  {
    *&v79 = OUTLINED_FUNCTION_72_1();
  }

  *(inited + 136) = v78;
  *(inited + 144) = v81;
  *(inited + 112) = v79;
  v82 = 32;
  *(inited + 128) = v80;
  v83 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_197647660(inited + v82, &a21, &qword_1EAF3FFE0, &qword_19775E430);
    a11 = a21;
    a12 = a22;
    a13 = a23;
    if (*(&a22 + 1))
    {
      sub_19764C774(&a11, &a14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = OUTLINED_FUNCTION_8_6();
        sub_19764F2F8(v86, v87, v88, v83, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v83 = v89;
      }

      v85 = v83[2];
      v84 = v83[3];
      if (v85 >= v84 >> 1)
      {
        v90 = OUTLINED_FUNCTION_16_5(v84);
        sub_19764F2F8(v90, v91, v92, v83, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v83 = v93;
      }

      v83[2] = v85 + 1;
      sub_19764C774(&a14, &v83[5 * v85 + 4]);
    }

    else
    {
      sub_19764CAE4(&a11, &qword_1EAF3FFE0, &qword_19775E430);
    }

    v82 += 40;
  }

  while (v82 != 152);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FFE0, &qword_19775E430);
  OUTLINED_FUNCTION_88_1(v83, &a21);

  __swift_project_boxed_opaque_existential_0Tm(&a21, *(&a22 + 1));
  v94 = OUTLINED_FUNCTION_22_1();
  sub_1976C73F8(v94, v95);
  OUTLINED_FUNCTION_21();

  __swift_destroy_boxed_opaque_existential_0(&a21);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_161();
}

uint64_t sub_1976A9EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v13 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775E3E0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = 0x455441455243;
  *(inited + 40) = 0xE600000000000000;
  v16 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v15;
  if (v13 == 2)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v17 = 0x455551494E55;
    if (a4)
    {
      v17 = 0x5241524F504D4554;
    }

    v18 = 0xE900000000000059;
    if ((a4 & 1) == 0)
    {
      v18 = 0xE600000000000000;
    }

    v21 = &off_1F0BBB748;
    v19 = MEMORY[0x1E69E7CC0];
    v20 = v15;
  }

  *(inited + 72) = v17;
  *(inited + 80) = v18;
  *(inited + 88) = v19;
  *(inited + 96) = v20;
  *(inited + 136) = v15;
  *(inited + 144) = &off_1F0BBB748;
  *(inited + 104) = v21;
  *(inited + 112) = a1;
  *(inited + 120) = a2;
  *(inited + 128) = v16;
  if (a5)
  {
    v22 = xmmword_19775E3F0;
    v23 = MEMORY[0x1E69E7CC0];
    v24 = &off_1F0BBB748;
  }

  else
  {
    *&v22 = OUTLINED_FUNCTION_72_1();
  }

  *(inited + 176) = v15;
  *(inited + 184) = v24;
  *(inited + 152) = v22;
  *(inited + 168) = v23;
  sub_19764E1F4(a3, inited + 192);

  v25 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 232; i += 40)
  {
    OUTLINED_FUNCTION_63_1();
    v31 = sub_197647660(v27, v28, v29, v30);
    OUTLINED_FUNCTION_100(v31, v32, v33, v34, v35, v36, v37, v38, v55, *(&v55 + 1), v56, v57, v58, v59, v60, *(&v60 + 1), v61, v62, v63, v64, v65, v66);
    if (v39)
    {
      OUTLINED_FUNCTION_84_1(&v55, &v60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v44, v45, v46, v47, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v25 = v48;
      }

      OUTLINED_FUNCTION_119();
      if (v40)
      {
        OUTLINED_FUNCTION_35_3();
        sub_19764F2F8(v49, v50, v51, v52, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v25 = v53;
      }

      *(v25 + 16) = v6;
      sub_19764C774(&v60, v25 + 40 * v13 + 32);
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      sub_19764CAE4(v41, v42, v43);
    }
  }

  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FFE0, &qword_19775E430);
  OUTLINED_FUNCTION_45_3(a6);
}

void sub_1976AA168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_42();
  v104 = v22;
  v105 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = OUTLINED_FUNCTION_143();
  v122[3] = type metadata accessor for Expression(v37, v38, v39, v40);
  v122[4] = &off_1F0BBB748;
  v122[0] = v36;
  v122[1] = v34;
  v122[2] = v32;
  v41 = *(a21 + 40);

  v42 = v41(v24, a21);
  v44 = v43;
  if (v28)
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFF8, &qword_19775E448);
    v46 = &off_1F0BBB748;
  }

  else
  {
    v45 = OUTLINED_FUNCTION_0_20();
  }

  OUTLINED_FUNCTION_69_1(v45, v46);
  OUTLINED_FUNCTION_172(*(a21 + 8));
  OUTLINED_FUNCTION_19_4();
  (*(v47 + 16))();
  OUTLINED_FUNCTION_142();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v49 = OUTLINED_FUNCTION_99(v48);
  v50 = OUTLINED_FUNCTION_57_2(v49, xmmword_19775E400);
  sub_19764E1F4(v50, &v49[2]);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  v49[6].n128_u64[1] = &off_1F0BBB748;
  v49[4].n128_u64[1] = v42;
  v49[5].n128_u64[0] = v44;
  v52.n128_f64[0] = OUTLINED_FUNCTION_68_1(v51, MEMORY[0x1E69E7CC0]);
  v49[11].n128_u64[0] = v53;
  v49[11].n128_u64[1] = v54;
  OUTLINED_FUNCTION_67_1(v55, v52);
  sub_197647660(&v121, &v117, &qword_1EAF3FFE0, &qword_19775E430);
  if (v118)
  {
    v56 = OUTLINED_FUNCTION_84_1(&v117, &v107);
    sub_19764C59C(v56, v28, v26);

    sub_1976B314C(&v107, &v49[14].n128_i64[1]);
    __swift_destroy_boxed_opaque_existential_0(&v107);
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
    sub_19764C59C(v30, v28, v26);
  }

  sub_197647660(&v120, &v117, &qword_1EAF3FFE0, &qword_19775E430);
  if (v118)
  {
    sub_19764C774(&v117, &v107);
    OUTLINED_FUNCTION_5_8();
    sub_1976B5330(&v107, v57, 0xE700000000000000, v58);
    __swift_destroy_boxed_opaque_existential_0(&v107);
  }

  else
  {
    OUTLINED_FUNCTION_22_5();
  }

  v59 = sub_197647660(v119, &v117, &qword_1EAF3FFE8, &qword_19775E438);
  if (v118)
  {
    OUTLINED_FUNCTION_164(v59, v60, v61, v62, v63, v64, v65, v66, v103, v104, v105, v106, v107, *(&v107 + 1), v108, v109, v110, v111, v112, v113, v114, v115, v116[0], v116[1], v116[2], v116[3], v116[4], v116[5]);
    sub_1976B2DB8(&v107, v28 + 40, &v49[19].n128_i64[1]);

    sub_19764CAE4(&v107, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {

    OUTLINED_FUNCTION_21_4();
  }

  v67 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_71_1();
  do
  {
    OUTLINED_FUNCTION_63_1();
    sub_197647660(v68, v69, v70, v71);
    OUTLINED_FUNCTION_125();
    if (v72)
    {
      OUTLINED_FUNCTION_84_1(v116, &v107);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v87, v88, v89, v90, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v67 = v91;
      }

      OUTLINED_FUNCTION_119();
      if (v82)
      {
        v92 = OUTLINED_FUNCTION_16_5(v81);
        sub_19764F2F8(v92, v93, v94, v67, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v67 = v73;
      }

      OUTLINED_FUNCTION_165(v73, v74, v75, v76, v77, v78, v79, v80, v103, v104, v105, v106, v107);
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      sub_19764CAE4(v83, v84, v85);
    }

    OUTLINED_FUNCTION_157();
  }

  while (!v86);
  swift_setDeallocating();
  v95 = OUTLINED_FUNCTION_110();
  sub_19764D558(v95, v96);
  OUTLINED_FUNCTION_45_3(&v117);

  sub_19764CAE4(v119, &qword_1EAF3FFE8, &qword_19775E438);
  OUTLINED_FUNCTION_12_0();
  sub_19764CAE4(v97, v98, v99);
  OUTLINED_FUNCTION_12_0();
  sub_19764CAE4(v100, v101, v102);
  __swift_destroy_boxed_opaque_existential_0(v122);
  sub_1976AAAEC(&v117);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(&v117);
  OUTLINED_FUNCTION_43();
}

uint64_t sub_1976AA578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v20 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775E400;
  sub_19764E1F4(a1, inited + 32);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  v23 = v22;
  *(inited + 104) = &off_1F0BBB748;
  *(inited + 72) = a2;
  *(inited + 80) = a3;
  *(inited + 88) = MEMORY[0x1E69E7CC0];
  *(inited + 96) = v22;
  if (v20 == 2)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v25 = 0x8000000197761CA0;
    v24 = 0x205952414D495250;
    if (a4)
    {
      v24 = 0xD000000000000019;
    }

    else
    {
      v25 = 0xEB0000000059454BLL;
    }

    v28 = &off_1F0BBB748;
    v26 = MEMORY[0x1E69E7CC0];
    v27 = v22;
  }

  *(inited + 112) = v24;
  *(inited + 120) = v25;
  *(inited + 128) = v26;
  *(inited + 136) = v27;
  *(inited + 144) = v28;
  v29 = MEMORY[0x1E69E7CC0];
  if (a5)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v31 = 0xE800000000000000;
    v30 = 0x4C4C554E20544F4ELL;
    v32 = MEMORY[0x1E69E7CC0];
    v33 = v22;
    v34 = &off_1F0BBB748;
  }

  *(inited + 152) = v30;
  *(inited + 160) = v31;
  *(inited + 168) = v32;
  *(inited + 176) = v33;
  *(inited + 184) = v34;
  if (a6)
  {
    v35 = xmmword_19775E410;
    v36 = MEMORY[0x1E69E7CC0];
    v37 = &off_1F0BBB748;
    v38 = v22;
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v35 = 0uLL;
  }

  *(inited + 216) = v38;
  *(inited + 224) = v37;
  *(inited + 192) = v35;
  *(inited + 208) = v36;
  sub_197647660(a7, __src, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&__src[1] + 1))
  {
    sub_19764C774(__src, __dst);

    sub_1976B314C(__dst, (inited + 232));
    __swift_destroy_boxed_opaque_existential_0(__dst);
  }

  else
  {
    *(inited + 264) = 0;
    *(inited + 248) = 0u;
    *(inited + 232) = 0u;
  }

  sub_197647660(a8, __src, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&__src[1] + 1))
  {
    sub_19764C774(__src, __dst);
    sub_1976B5330(__dst, 0x544C5541464544, 0xE700000000000000, (inited + 272));
    __swift_destroy_boxed_opaque_existential_0(__dst);
  }

  else
  {
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  sub_197647660(a10, __src, &qword_1EAF3FFE8, &qword_19775E438);
  if (*(&__src[1] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1976B2DB8(__dst, &__dst[2] + 8, (inited + 312));
    sub_19764CAE4(__dst, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {
    *(inited + 344) = 0;
    *(inited + 312) = 0u;
    *(inited + 328) = 0u;
  }

  if (a12 == 3)
  {
    *(inited + 384) = 0;
    *(inited + 352) = 0u;
    *(inited + 368) = 0u;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_19775A850;
    *(v39 + 32) = 0x4554414C4C4F43;
    *(v39 + 40) = 0xE700000000000000;
    *(v39 + 48) = v29;
    *(v39 + 56) = v23;
    *(v39 + 96) = &type metadata for Collation;
    *(v39 + 104) = &off_1F0BBBBC0;
    *(v39 + 64) = &off_1F0BBB748;
    *(v39 + 72) = a11;
    *(v39 + 80) = a12;
    sub_1976B35AC(a11, a12);
    sub_197649FEC(v39, (inited + 352));
    swift_setDeallocating();
    sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
  }

  v40 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 392; i += 40)
  {
    sub_197647660(inited + i, __src, &qword_1EAF3FFE0, &qword_19775E430);
    v49[0] = __src[0];
    v49[1] = __src[1];
    v50 = *&__src[2];
    if (*(&__src[1] + 1))
    {
      sub_19764C774(v49, __dst);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19764F2F8(0, v40[2] + 1, 1, v40, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v40 = v44;
      }

      v43 = v40[2];
      v42 = v40[3];
      if (v43 >= v42 >> 1)
      {
        sub_19764F2F8(v42 > 1, v43 + 1, 1, v40, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v40 = v45;
      }

      v40[2] = v43 + 1;
      sub_19764C774(__dst, &v40[5 * v43 + 4]);
    }

    else
    {
      sub_19764CAE4(v49, &qword_1EAF3FFE0, &qword_19775E430);
    }
  }

  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FFE0, &qword_19775E430);
  sub_197649FEC(v40, a9);
}

uint64_t sub_1976AAAEC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A860;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = 0x4154205245544C41;
  *(inited + 40) = 0xEB00000000454C42;
  v4 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v3;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v8 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 64);
  swift_bridgeObjectRetain_n();

  if (v7)
  {

    v6 = v8;
    v5 = v7;
  }

  sub_19764E750(v6, v5, v9 & 1, (inited + 72));

  *(inited + 136) = v3;
  *(inited + 144) = &off_1F0BBB748;
  *(inited + 112) = 0x554C4F4320444441;
  *(inited + 120) = 0xEA00000000004E4DLL;
  *(inited + 128) = v4;
  sub_19764E1F4(a1, inited + 152);
  sub_197649FEC(inited, v15);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
  v10 = v16;
  v11 = v17;
  __swift_project_boxed_opaque_existential_0Tm(v15, v16);
  v12 = sub_1976C73F8(v10, v11);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return v12;
}

void sub_1976AACC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_42();
  v100 = v22;
  v101 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = OUTLINED_FUNCTION_143();
  v118[3] = type metadata accessor for Expression(v37, v38, v39, v40);
  v118[4] = &off_1F0BBB748;
  v118[0] = v36;
  v118[1] = v34;
  v118[2] = v32;
  v41 = *(a21 + 40);

  v42 = v41(v24, a21);
  v44 = v43;
  v117[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
  v117[4] = &off_1F0BBB748;
  v117[0] = v30;
  v117[1] = v28;
  v117[2] = v26;
  OUTLINED_FUNCTION_172(*(a21 + 8));
  OUTLINED_FUNCTION_19_4();
  (*(v45 + 16))();
  OUTLINED_FUNCTION_142();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v47 = OUTLINED_FUNCTION_99(v46);
  v48 = OUTLINED_FUNCTION_57_2(v47, xmmword_19775E400);
  sub_19764E1F4(v48, &v47[2]);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  v47[6].n128_u64[1] = &off_1F0BBB748;
  v47[4].n128_u64[1] = v42;
  v47[5].n128_u64[0] = v44;
  v50.n128_f64[0] = OUTLINED_FUNCTION_68_1(v49, MEMORY[0x1E69E7CC0]);
  v47[11].n128_u64[0] = v51;
  v47[11].n128_u64[1] = &off_1F0BBB748;
  OUTLINED_FUNCTION_67_1(v52, v50);
  sub_197647660(v117, &v113, &qword_1EAF3FFE0, &qword_19775E430);
  if (v114)
  {
    OUTLINED_FUNCTION_84_1(&v113, &v103);

    sub_1976B314C(&v103, &v47[14].n128_i64[1]);
    __swift_destroy_boxed_opaque_existential_0(&v103);
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
  }

  sub_197647660(&v116, &v113, &qword_1EAF3FFE0, &qword_19775E430);
  if (v114)
  {
    sub_19764C774(&v113, &v103);
    OUTLINED_FUNCTION_5_8();
    sub_1976B5330(&v103, v53, 0xE700000000000000, v54);
    __swift_destroy_boxed_opaque_existential_0(&v103);
  }

  else
  {
    OUTLINED_FUNCTION_22_5();
  }

  v55 = sub_197647660(v115, &v113, &qword_1EAF3FFE8, &qword_19775E438);
  if (v114)
  {
    OUTLINED_FUNCTION_164(v55, v56, v57, v58, v59, v60, v61, v62, v99, v100, v101, v102, v103, *(&v103 + 1), v104, v105, v106, v107, v108, v109, v110, v111, v112[0], v112[1], v112[2], v112[3], v112[4], v112[5]);
    sub_1976B2DB8(&v103, v26 + 40, &v47[19].n128_i64[1]);

    sub_19764CAE4(&v103, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {

    OUTLINED_FUNCTION_21_4();
  }

  v63 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_71_1();
  do
  {
    OUTLINED_FUNCTION_63_1();
    sub_197647660(v64, v65, v66, v67);
    OUTLINED_FUNCTION_125();
    if (v68)
    {
      OUTLINED_FUNCTION_84_1(v112, &v103);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v83, v84, v85, v86, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v63 = v87;
      }

      OUTLINED_FUNCTION_119();
      if (v78)
      {
        v88 = OUTLINED_FUNCTION_16_5(v77);
        sub_19764F2F8(v88, v89, v90, v63, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v63 = v69;
      }

      OUTLINED_FUNCTION_165(v69, v70, v71, v72, v73, v74, v75, v76, v99, v100, v101, v102, v103);
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      sub_19764CAE4(v79, v80, v81);
    }

    OUTLINED_FUNCTION_157();
  }

  while (!v82);
  swift_setDeallocating();
  v91 = OUTLINED_FUNCTION_110();
  sub_19764D558(v91, v92);
  OUTLINED_FUNCTION_45_3(&v113);

  sub_19764CAE4(v115, &qword_1EAF3FFE8, &qword_19775E438);
  OUTLINED_FUNCTION_12_0();
  sub_19764CAE4(v93, v94, v95);
  OUTLINED_FUNCTION_12_0();
  sub_19764CAE4(v96, v97, v98);
  __swift_destroy_boxed_opaque_existential_0(v118);
  sub_1976AAAEC(&v113);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(&v113);
  OUTLINED_FUNCTION_43();
}

void sub_1976AB0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_42();
  v23 = v22;
  v89 = v24;
  v90 = v25;
  v27 = v26;
  v88 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_143();
  v35 = sub_19774F420();
  OUTLINED_FUNCTION_0();
  v91 = v36;
  OUTLINED_FUNCTION_159();
  v38 = MEMORY[0x1EEE9AC00](v37);
  v101[3] = OUTLINED_FUNCTION_135(v38, v39, v40, v41);
  v101[4] = &off_1F0BBB748;
  v101[0] = v34;
  v101[1] = v32;
  v101[2] = v30;
  v42 = *(a21 + 40);

  v43 = v42(v23, a21);
  v92 = v44;
  v93 = v43;
  if (v27)
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFF8, &qword_19775E448);
    v46 = &off_1F0BBB748;
    v47 = v88;
    v48 = v89;
    v49 = v89;
  }

  else
  {
    v48 = v89;
    v47 = 0;
    v49 = 0;
    v45 = 0;
    v46 = 0;
  }

  v100[0] = v47;
  v100[1] = v27;
  v100[2] = v49;
  v100[3] = v45;
  v100[4] = v46;
  (*(v91 + 16))(v21, v90, v35);
  OUTLINED_FUNCTION_113(v21);
  if (v50)
  {
    v51 = OUTLINED_FUNCTION_147();
    sub_19764C59C(v51, v52, v48);
    (*(v91 + 8))(v21, v35);
    *&v53 = OUTLINED_FUNCTION_87_1();
    v99[0] = v53;
    v99[1] = v53;
  }

  else
  {
    OUTLINED_FUNCTION_176(*(a21 + 8));
    OUTLINED_FUNCTION_19_4();
    (*(v54 + 32))();
    v55 = OUTLINED_FUNCTION_147();
    sub_19764C59C(v55, v56, v48);
  }

  memset(v98, 0, sizeof(v98));
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v58 = OUTLINED_FUNCTION_99(v57);
  v59 = OUTLINED_FUNCTION_57_2(v58, xmmword_19775E400);
  sub_19764E1F4(v59, v58 + 32);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(v58 + 104) = &off_1F0BBB748;
  *(v58 + 72) = v93;
  *(v58 + 80) = v92;
  v61.n128_f64[0] = OUTLINED_FUNCTION_68_1(v60, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_152(v61);
  sub_197647660(v100, v97, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&v97[1] + 1))
  {
    sub_19764C774(v97, v94);

    sub_1976B314C(v94, (v58 + 232));
    __swift_destroy_boxed_opaque_existential_0(v94);
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
  }

  sub_197647660(v99, v97, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&v97[1] + 1))
  {
    sub_19764C774(v97, v94);
    OUTLINED_FUNCTION_5_8();
    sub_1976B5330(v94, v62, 0xE700000000000000, v63);
    __swift_destroy_boxed_opaque_existential_0(v94);
  }

  else
  {
    OUTLINED_FUNCTION_22_5();
  }

  sub_197647660(v98, v97, &qword_1EAF3FFE8, &qword_19775E438);
  if (*(&v97[1] + 1))
  {
    memcpy(v94, v97, sizeof(v94));
    sub_1976B2DB8(v94, &v94[2] + 8, (v58 + 312));

    sub_19764CAE4(v94, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {

    OUTLINED_FUNCTION_21_4();
  }

  v64 = MEMORY[0x1E69E7CC0];
  v65 = 32;
  *(v58 + 384) = 0;
  *(v58 + 352) = 0u;
  *(v58 + 368) = 0u;
  do
  {
    sub_197647660(v58 + v65, v97, &qword_1EAF3FFE0, &qword_19775E430);
    v95[0] = v97[0];
    v95[1] = v97[1];
    v96 = *&v97[2];
    if (*(&v97[1] + 1))
    {
      OUTLINED_FUNCTION_84_1(v95, v94);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v71, v72, v73, v74, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v64 = v75;
      }

      v67 = v64[2];
      v66 = v64[3];
      if (v67 >= v66 >> 1)
      {
        v76 = OUTLINED_FUNCTION_16_5(v66);
        sub_19764F2F8(v76, v77, v78, v64, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v64 = v79;
      }

      v64[2] = v67 + 1;
      sub_19764C774(v94, &v64[5 * v67 + 4]);
    }

    else
    {
      OUTLINED_FUNCTION_75();
      sub_19764CAE4(v68, v69, v70);
    }

    v65 += 40;
  }

  while (v65 != 392);
  swift_setDeallocating();
  v80 = OUTLINED_FUNCTION_110();
  sub_19764D558(v80, v81);
  OUTLINED_FUNCTION_45_3(v97);

  sub_19764CAE4(v98, &qword_1EAF3FFE8, &qword_19775E438);
  OUTLINED_FUNCTION_12_0();
  sub_19764CAE4(v82, v83, v84);
  OUTLINED_FUNCTION_12_0();
  sub_19764CAE4(v85, v86, v87);
  __swift_destroy_boxed_opaque_existential_0(v101);
  sub_1976AAAEC(v97);
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_0(v97);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_43();
}

void sub_1976AB5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, __int128 a31, __int128 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, __int128 a45)
{
  OUTLINED_FUNCTION_42();
  a19 = v46;
  a20 = v47;
  OUTLINED_FUNCTION_131();
  a14 = v48;
  a15 = v45;
  v50 = v49;
  a10 = v51;
  a11 = v52;
  a12 = v53;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = *(v46 + 16);
  OUTLINED_FUNCTION_143();
  v61 = sub_19774F420();
  OUTLINED_FUNCTION_0();
  a9 = v62;
  OUTLINED_FUNCTION_159();
  v64 = MEMORY[0x1EEE9AC00](v63);
  v66 = &a9 - v65;
  *(v46 - 112) = OUTLINED_FUNCTION_94_0(v64, v67, v68, v69);
  *(v46 - 104) = &off_1F0BBB748;
  *(v46 - 136) = v59;
  *(v46 - 128) = v57;
  *(v46 - 120) = v55;
  v70 = *(v60 + 40);

  v71 = v60;
  v72 = v70(v50, v60);
  v74 = a10;
  v73 = a11;
  a13 = v72;
  v76 = v75;
  *(v46 - 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
  *(v46 - 144) = &off_1F0BBB748;
  *(v46 - 176) = a12;
  *(v46 - 168) = v74;
  *(v46 - 160) = v73;
  v77 = a9;
  (*(a9 + 16))(v66, a14, v61);
  OUTLINED_FUNCTION_113(v66);
  if (v78)
  {
    v79 = *(v77 + 8);

    v79(v66, v61);
    *&v80 = OUTLINED_FUNCTION_87_1();
    a44 = v80;
    a45 = v80;
  }

  else
  {
    OUTLINED_FUNCTION_176(*(v71 + 8));
    OUTLINED_FUNCTION_19_4();
    (*(v81 + 32))();
  }

  a42 = 0u;
  a43 = 0u;
  a40 = 0u;
  a41 = 0u;
  a39 = 0u;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v83 = OUTLINED_FUNCTION_99(v82);
  v84 = OUTLINED_FUNCTION_57_2(v83, xmmword_19775E400);
  sub_19764E1F4(v84, v83 + 32);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(v83 + 104) = &off_1F0BBB748;
  *(v83 + 72) = a13;
  *(v83 + 80) = v76;
  v86.n128_f64[0] = OUTLINED_FUNCTION_68_1(v85, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_152(v86);
  sub_197647660(v46 - 176, &a31, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&a32 + 1))
  {
    sub_19764C774(&a31, &a17);

    sub_1976B314C(&a17, (v83 + 232));
    __swift_destroy_boxed_opaque_existential_0(&a17);
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
  }

  sub_197647660(v46 - 224, &a31, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&a32 + 1))
  {
    sub_19764C774(&a31, &a17);
    OUTLINED_FUNCTION_5_8();
    sub_1976B5330(&a17, v87, 0xE700000000000000, v88);
    __swift_destroy_boxed_opaque_existential_0(&a17);
  }

  else
  {
    OUTLINED_FUNCTION_22_5();
  }

  sub_197647660(&a39, &a31, &qword_1EAF3FFE8, &qword_19775E438);
  if (*(&a32 + 1))
  {
    memcpy(&a17, &a31, 0x50uLL);
    sub_1976B2DB8(&a17, &a22, (v83 + 312));

    sub_19764CAE4(&a17, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {

    OUTLINED_FUNCTION_21_4();
  }

  v89 = MEMORY[0x1E69E7CC0];
  v90 = 32;
  *(v83 + 384) = 0;
  *(v83 + 352) = 0u;
  *(v83 + 368) = 0u;
  do
  {
    sub_197647660(v83 + v90, &a31, &qword_1EAF3FFE0, &qword_19775E430);
    a27 = a31;
    a28 = a32;
    a29 = a33;
    if (*(&a32 + 1))
    {
      OUTLINED_FUNCTION_84_1(&a27, &a17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v96, v97, v98, v99, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v89 = v100;
      }

      v92 = *(v89 + 16);
      v91 = *(v89 + 24);
      if (v92 >= v91 >> 1)
      {
        OUTLINED_FUNCTION_47_1(v91);
        OUTLINED_FUNCTION_35_3();
        sub_19764F2F8(v101, v102, v103, v104, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v89 = v105;
      }

      *(v89 + 16) = v92 + 1;
      sub_19764C774(&a17, v89 + 40 * v92 + 32);
    }

    else
    {
      OUTLINED_FUNCTION_75();
      sub_19764CAE4(v93, v94, v95);
    }

    v90 += 40;
  }

  while (v90 != 392);
  swift_setDeallocating();
  v106 = OUTLINED_FUNCTION_110();
  sub_19764D558(v106, v107);
  OUTLINED_FUNCTION_45_3(&a31);

  sub_19764CAE4(&a39, &qword_1EAF3FFE8, &qword_19775E438);
  OUTLINED_FUNCTION_12_0();
  sub_19764CAE4(v108, v109, v110);
  OUTLINED_FUNCTION_12_0();
  sub_19764CAE4(v111, v112, v113);
  __swift_destroy_boxed_opaque_existential_0(v46 - 136);
  sub_1976AAAEC(&a31);
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_0(&a31);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_43();
}

void sub_1976ABB18()
{
  OUTLINED_FUNCTION_42();
  v181 = v1;
  v182 = v2;
  OUTLINED_FUNCTION_131();
  v159 = v0;
  v166 = v3;
  v131 = v4;
  v6 = v5;
  HIDWORD(v138) = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v145 = v1[3];
  v124 = v1[2];
  v14 = v1[6];
  v152 = v1[4];
  v15 = OUTLINED_FUNCTION_50_2();
  v19 = type metadata accessor for Expression(v15, v16, v17, v18);
  *(v1 - 14) = v19;
  *(v1 - 13) = &off_1F0BBB748;
  *(v1 - 17) = v13;
  *(v1 - 16) = v11;
  *(v1 - 15) = v9;
  v20 = *(v14 + 40);

  v21 = OUTLINED_FUNCTION_22_1();
  v22 = v20(v21);
  v24 = v23;
  if (v6)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFF8, &qword_19775E448);
    v26 = &off_1F0BBB748;
  }

  else
  {
    v25 = OUTLINED_FUNCTION_0_20();
  }

  OUTLINED_FUNCTION_69_1(v25, v26);
  *&v27 = OUTLINED_FUNCTION_87_1();
  v204 = v27;
  v205 = v27;
  sub_19764E1F4(v131, v203);
  v203[8] = v19;
  v203[9] = &off_1F0BBB748;
  v28 = v145;
  v203[5] = v124;
  v203[6] = v145;
  v203[7] = v152;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v30 = OUTLINED_FUNCTION_99(v29);
  v31 = OUTLINED_FUNCTION_57_2(v30, xmmword_19775E400);
  sub_19764E1F4(v31, v30 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  OUTLINED_FUNCTION_30_3();
  *(v30 + 104) = &off_1F0BBB748;
  *(v30 + 88) = MEMORY[0x1E69E7CC0];
  *(v30 + 96) = v32;
  *(v30 + 176) = v32;
  *(v30 + 184) = &off_1F0BBB748;
  OUTLINED_FUNCTION_89_1();
  *(v30 + 72) = v22;
  *(v30 + 80) = v24;
  *(v30 + 112) = v34;
  *(v30 + 128) = v34;
  if ((v138 & 0x100000000) != 0)
  {
    v34 = xmmword_19775E410;
    v33 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_65_1(v33, v34);
  v41 = OUTLINED_FUNCTION_170(v35, v36, &qword_1EAF3FFE0, &qword_19775E430, v37, v38, v39, v40, v124, v131, v138, v145, v152, v159, v166, v173, v180, *(&v180 + 1), v181, v182, v183, v184, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, v193);
  if (v196)
  {
    OUTLINED_FUNCTION_122(v41, v42, v43, v44, v45, v46, v47, v48, v125, v132, v139, v146, v153, v160, v167, v174, v180, *(&v180 + 1), v181, v182, v183, v184, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, v193, v194);
    v49 = OUTLINED_FUNCTION_147();
    sub_19764C59C(v49, v50, v168);

    OUTLINED_FUNCTION_97(v51, v52, v53, v54, v55, v56, v57, v58, v126, v133, v140, v147, v154, v161, v168, v175);
    v59 = __swift_destroy_boxed_opaque_existential_0(&v180);
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
    v65 = OUTLINED_FUNCTION_147();
    sub_19764C59C(v65, v66, v167);
  }

  v67 = OUTLINED_FUNCTION_175(v59, v60, &qword_1EAF3FFE0, &qword_19775E430, v61, v62, v63, v64, v125, v132, v139, v146, v153, v160, v167, v174, v180, *(&v180 + 1), v181, v182, v183, v184, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, v193);
  if (v196)
  {
    OUTLINED_FUNCTION_122(v67, v68, v69, v70, v71, v72, v73, v74, v127, v134, v141, v148, v155, v162, v169, v176, v180, *(&v180 + 1), v181, v182, v183, v184, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, v193, v194);
    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_169(v75, v76, v128, v135, v142, v149, v156, v163, v170, v177);
    v77 = __swift_destroy_boxed_opaque_existential_0(&v180);
  }

  else
  {
    v83 = OUTLINED_FUNCTION_22_5();
  }

  v84 = OUTLINED_FUNCTION_168(v77, v78, &qword_1EAF3FFE8, &qword_19775E438, v79, v80, v81, v82, v127, v134, v141, v148, v155, v162, v169, v176, v180, *(&v180 + 1), v181, v182, v183, v184, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, v193, v194, *(&v194 + 1), v195, v196, v197, v198, v199, v200, v201, v202, v83);
  if (v196)
  {
    v92 = OUTLINED_FUNCTION_61_2(v84, v85, v86, v87, v88, v89, v90, v91, v129, v136, v143, v150, v157, v164, v171, v178, v180, *(&v180 + 1), v181, v182, v183, v184, v185, v186, v187, v188, v189, *(&v189 + 1), v190, v191, v192, v193);
    OUTLINED_FUNCTION_96(v92, v93, v94, v95, v96, v97, v98, v99, v130, v137, v144, v151, v158, v165, v172, v179);

    sub_19764CAE4(&v180, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {

    OUTLINED_FUNCTION_64();
  }

  v100 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_158();
  *(v30 + 352) = 0u;
  *(v30 + 368) = 0u;
  do
  {
    OUTLINED_FUNCTION_63_1();
    sub_197647660(v101, v102, v103, v104);
    OUTLINED_FUNCTION_42_3();
    if (v105)
    {
      OUTLINED_FUNCTION_84_1(&v189, &v180);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v112, v113, v114, v115, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v100 = v116;
      }

      OUTLINED_FUNCTION_118();
      if (v107)
      {
        OUTLINED_FUNCTION_47_1(v106);
        OUTLINED_FUNCTION_35_3();
        sub_19764F2F8(v117, v118, v119, v120, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v100 = v121;
      }

      *(v100 + 16) = v30 + 312;
      OUTLINED_FUNCTION_137(v100 + 40 * v28, v129, v136, v143, v150, v157, v164, v171, v178, v180);
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      sub_19764CAE4(v108, v109, v110);
    }

    OUTLINED_FUNCTION_157();
  }

  while (!v111);
  swift_setDeallocating();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_45_3(&v194);

  OUTLINED_FUNCTION_111();
  sub_19764CAE4(v203, &qword_1EAF3FFE8, &qword_19775E438);
  v122 = OUTLINED_FUNCTION_98();
  sub_19764CAE4(v122, v123, &qword_19775E430);
  __swift_destroy_boxed_opaque_existential_0((v1 - 17));
  sub_1976AAAEC(&v194);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(&v194);
  OUTLINED_FUNCTION_43();
}

void sub_1976ABF54()
{
  OUTLINED_FUNCTION_42();
  v178 = v1;
  v179 = v2;
  OUTLINED_FUNCTION_131();
  v163 = v0;
  v142 = v3;
  v149 = v4;
  v121 = v5;
  v135 = v6;
  HIDWORD(v156) = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v1[3];
  v128 = v1[2];
  v15 = v1[5];
  v16 = v1[6];
  v17 = v1[4];
  v18 = OUTLINED_FUNCTION_50_2();
  v22 = type metadata accessor for Expression(v18, v19, v20, v21);
  *(v1 - 14) = v22;
  *(v1 - 13) = &off_1F0BBB748;
  *(v1 - 17) = v13;
  *(v1 - 16) = v11;
  *(v1 - 15) = v9;
  v23 = *(v16 + 40);

  v24 = v16;
  v25 = v121;
  v26 = v23(v15, v24);
  v28 = v27;
  *(v1 - 19) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
  *(v1 - 18) = &off_1F0BBB748;
  *(v1 - 22) = v135;
  *(v1 - 21) = v121;
  *(v1 - 20) = v142;
  *&v29 = OUTLINED_FUNCTION_87_1();
  v201 = v29;
  v202 = v29;
  sub_19764E1F4(v149, v200);
  v200[8] = v22;
  v200[9] = &off_1F0BBB748;
  v200[5] = v128;
  v200[6] = v14;
  v200[7] = v17;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v31 = OUTLINED_FUNCTION_99(v30);
  v32 = OUTLINED_FUNCTION_57_2(v31, xmmword_19775E400);
  sub_19764E1F4(v32, v31 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  OUTLINED_FUNCTION_30_3();
  *(v31 + 104) = &off_1F0BBB748;
  *(v31 + 88) = MEMORY[0x1E69E7CC0];
  *(v31 + 96) = v33;
  *(v31 + 176) = v33;
  *(v31 + 184) = &off_1F0BBB748;
  OUTLINED_FUNCTION_89_1();
  *(v31 + 72) = v26;
  *(v31 + 80) = v28;
  *(v31 + 112) = v35;
  *(v31 + 128) = v35;
  if ((v156 & 0x100000000) != 0)
  {
    v35 = xmmword_19775E410;
    v34 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_65_1(v34, v35);
  v42 = OUTLINED_FUNCTION_170(v36, v37, &qword_1EAF3FFE0, &qword_19775E430, v38, v39, v40, v41, v121, v128, v135, v142, v149, v156, v163, v170, v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, *(&v186 + 1), v187, v188, v189, v190);
  if (v193)
  {
    OUTLINED_FUNCTION_122(v42, v43, v44, v45, v46, v47, v48, v49, v122, v129, v136, v143, v150, v157, v164, v171, v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, *(&v186 + 1), v187, v188, v189, v190, v191);

    OUTLINED_FUNCTION_97(v50, v51, v52, v53, v54, v55, v56, v57, v123, v130, v137, v144, v151, v158, v165, v172);
    v58 = __swift_destroy_boxed_opaque_existential_0(&v177);
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
  }

  v64 = OUTLINED_FUNCTION_175(v58, v59, &qword_1EAF3FFE0, &qword_19775E430, v60, v61, v62, v63, v122, v129, v136, v143, v150, v157, v164, v171, v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, *(&v186 + 1), v187, v188, v189, v190);
  if (v193)
  {
    OUTLINED_FUNCTION_122(v64, v65, v66, v67, v68, v69, v70, v71, v124, v131, v138, v145, v152, v159, v166, v173, v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, *(&v186 + 1), v187, v188, v189, v190, v191);
    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_169(v72, v73, v125, v132, v139, v146, v153, v160, v167, v174);
    v74 = __swift_destroy_boxed_opaque_existential_0(&v177);
  }

  else
  {
    v80 = OUTLINED_FUNCTION_22_5();
  }

  v81 = OUTLINED_FUNCTION_168(v74, v75, &qword_1EAF3FFE8, &qword_19775E438, v76, v77, v78, v79, v124, v131, v138, v145, v152, v159, v166, v173, v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, *(&v186 + 1), v187, v188, v189, v190, v191, *(&v191 + 1), v192, v193, v194, v195, v196, v197, v198, v199, v80);
  if (v193)
  {
    v89 = OUTLINED_FUNCTION_61_2(v81, v82, v83, v84, v85, v86, v87, v88, v126, v133, v140, v147, v154, v161, v168, v175, v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, *(&v186 + 1), v187, v188, v189, v190);
    OUTLINED_FUNCTION_96(v89, v90, v91, v92, v93, v94, v95, v96, v127, v134, v141, v148, v155, v162, v169, v176);

    sub_19764CAE4(&v177, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {

    OUTLINED_FUNCTION_64();
  }

  v97 = MEMORY[0x1E69E7CC0];
  v98 = 32;
  *(v31 + 384) = 0;
  OUTLINED_FUNCTION_71_1();
  do
  {
    OUTLINED_FUNCTION_63_1();
    sub_197647660(v99, v100, v101, v102);
    OUTLINED_FUNCTION_42_3();
    if (v103)
    {
      OUTLINED_FUNCTION_84_1(&v186, &v177);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v109 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v109, v110, v111, v112, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v97 = v113;
      }

      OUTLINED_FUNCTION_118();
      if (v105)
      {
        OUTLINED_FUNCTION_47_1(v104);
        OUTLINED_FUNCTION_35_3();
        sub_19764F2F8(v114, v115, v116, v117, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v97 = v118;
      }

      *(v97 + 16) = v31 + 312;
      OUTLINED_FUNCTION_137(v97 + v25 * v14, v126, v133, v140, v147, v154, v161, v168, v175, v177);
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      sub_19764CAE4(v106, v107, v108);
    }

    v98 += 40;
  }

  while (v98 != 392);
  swift_setDeallocating();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_45_3(&v191);

  OUTLINED_FUNCTION_111();
  sub_19764CAE4(v200, &qword_1EAF3FFE8, &qword_19775E438);
  v119 = OUTLINED_FUNCTION_98();
  sub_19764CAE4(v119, v120, &qword_19775E430);
  __swift_destroy_boxed_opaque_existential_0((v1 - 17));
  sub_1976AAAEC(&v191);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(&v191);
  OUTLINED_FUNCTION_43();
}

void sub_1976AC378()
{
  OUTLINED_FUNCTION_42();
  v182 = v1;
  v183 = v2;
  OUTLINED_FUNCTION_131();
  v167 = v0;
  v139 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  HIDWORD(v146) = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v160 = v1[4];
  v153 = v1[3];
  v132 = v1[2];
  v17 = v1[6];
  v18 = OUTLINED_FUNCTION_123();
  *(v1 - 14) = OUTLINED_FUNCTION_92_0(v18, v19, v20, v21);
  *(v1 - 13) = &off_1F0BBB748;
  *(v1 - 17) = v16;
  *(v1 - 16) = v14;
  *(v1 - 15) = v12;
  v22 = *(v17 + 40);

  v23 = OUTLINED_FUNCTION_22_1();
  v24 = v22(v23);
  v26 = v25;
  if (v7)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFF8, &qword_19775E448);
    v28 = &off_1F0BBB748;
  }

  else
  {
    v27 = OUTLINED_FUNCTION_0_20();
  }

  OUTLINED_FUNCTION_69_1(v27, v28);
  *&v29 = OUTLINED_FUNCTION_87_1();
  v205 = v29;
  v206 = v29;
  sub_19764E1F4(v139, v204);
  v30 = OUTLINED_FUNCTION_50_2();
  v204[8] = type metadata accessor for Expression(v30, v31, v32, v33);
  v204[9] = &off_1F0BBB748;
  v204[5] = v132;
  v204[6] = v153;
  v204[7] = v160;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v35 = OUTLINED_FUNCTION_99(v34);
  v36 = OUTLINED_FUNCTION_57_2(v35, xmmword_19775E400);
  sub_19764E1F4(v36, v35 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  OUTLINED_FUNCTION_30_3();
  v38 = 0;
  *(v35 + 104) = &off_1F0BBB748;
  *(v35 + 88) = MEMORY[0x1E69E7CC0];
  *(v35 + 96) = v39;
  *(v35 + 72) = v24;
  *(v35 + 80) = v26;
  *(v35 + 112) = v37;
  *(v35 + 128) = v37;
  *(v35 + 144) = v37;
  *(v35 + 160) = v37;
  *(v35 + 176) = v37;
  if ((v146 & 0x100000000) != 0)
  {
    v37 = xmmword_19775E410;
    v38 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_65_1(v38, v37);
  v46 = OUTLINED_FUNCTION_170(v40, v41, &qword_1EAF3FFE0, &qword_19775E430, v42, v43, v44, v45, v125, v132, v139, v146, v153, v160, v167, v174, v181, *(&v181 + 1), v182, v183, v184, v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, v192, v193, v194);
  if (v197)
  {
    OUTLINED_FUNCTION_122(v46, v47, v48, v49, v50, v51, v52, v53, v126, v133, v140, v147, v154, v161, v168, v175, v181, *(&v181 + 1), v182, v183, v184, v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, v192, v193, v194, v195);
    sub_19764C59C(v9, v7, v5);

    OUTLINED_FUNCTION_97(v54, v55, v56, v57, v58, v59, v60, v61, v127, v134, v141, v148, v155, v162, v169, v176);
    v62 = __swift_destroy_boxed_opaque_existential_0(&v181);
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
    sub_19764C59C(v9, v7, v5);
  }

  v68 = OUTLINED_FUNCTION_175(v62, v63, &qword_1EAF3FFE0, &qword_19775E430, v64, v65, v66, v67, v126, v133, v140, v147, v154, v161, v168, v175, v181, *(&v181 + 1), v182, v183, v184, v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, v192, v193, v194);
  if (v197)
  {
    OUTLINED_FUNCTION_122(v68, v69, v70, v71, v72, v73, v74, v75, v128, v135, v142, v149, v156, v163, v170, v177, v181, *(&v181 + 1), v182, v183, v184, v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, v192, v193, v194, v195);
    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_169(v76, v77, v129, v136, v143, v150, v157, v164, v171, v178);
    v78 = __swift_destroy_boxed_opaque_existential_0(&v181);
  }

  else
  {
    v84 = OUTLINED_FUNCTION_22_5();
  }

  v85 = OUTLINED_FUNCTION_168(v78, v79, &qword_1EAF3FFE8, &qword_19775E438, v80, v81, v82, v83, v128, v135, v142, v149, v156, v163, v170, v177, v181, *(&v181 + 1), v182, v183, v184, v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, v192, v193, v194, v195, *(&v195 + 1), v196, v197, v198, v199, v200, v201, v202, v203, v84);
  if (v197)
  {
    v93 = OUTLINED_FUNCTION_61_2(v85, v86, v87, v88, v89, v90, v91, v92, v130, v137, v144, v151, v158, v165, v172, v179, v181, *(&v181 + 1), v182, v183, v184, v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, v192, v193, v194);
    OUTLINED_FUNCTION_96(v93, v94, v95, v96, v97, v98, v99, v100, v131, v138, v145, v152, v159, v166, v173, v180);

    sub_19764CAE4(&v181, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {

    OUTLINED_FUNCTION_64();
  }

  v101 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_158();
  *(v35 + 352) = 0u;
  *(v35 + 368) = 0u;
  do
  {
    OUTLINED_FUNCTION_63_1();
    sub_197647660(v102, v103, v104, v105);
    OUTLINED_FUNCTION_42_3();
    if (v106)
    {
      OUTLINED_FUNCTION_84_1(&v190, &v181);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v113, v114, v115, v116, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v101 = v117;
      }

      v108 = *(v101 + 16);
      v107 = *(v101 + 24);
      if (v108 >= v107 >> 1)
      {
        OUTLINED_FUNCTION_47_1(v107);
        OUTLINED_FUNCTION_35_3();
        sub_19764F2F8(v118, v119, v120, v121, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v101 = v122;
      }

      *(v101 + 16) = v108 + 1;
      OUTLINED_FUNCTION_137(v101 + 40 * v108, v130, v137, v144, v151, v158, v165, v172, v179, v181);
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      sub_19764CAE4(v109, v110, v111);
    }

    OUTLINED_FUNCTION_157();
  }

  while (!v112);
  swift_setDeallocating();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_45_3(&v195);

  OUTLINED_FUNCTION_111();
  sub_19764CAE4(v204, &qword_1EAF3FFE8, &qword_19775E438);
  v123 = OUTLINED_FUNCTION_98();
  sub_19764CAE4(v123, v124, &qword_19775E430);
  __swift_destroy_boxed_opaque_existential_0((v1 - 17));
  sub_1976AAAEC(&v195);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(&v195);
  OUTLINED_FUNCTION_43();
}

void sub_1976AC7CC()
{
  OUTLINED_FUNCTION_42();
  v180 = v1;
  v181 = v2;
  OUTLINED_FUNCTION_131();
  v165 = v0;
  v151 = v3;
  v130 = v4;
  v137 = v5;
  v7 = v6;
  HIDWORD(v158) = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v1[3];
  v144 = v1[2];
  v16 = v1[6];
  v17 = v1[4];
  v18 = OUTLINED_FUNCTION_123();
  *(v1 - 14) = OUTLINED_FUNCTION_92_0(v18, v19, v20, v21);
  *(v1 - 13) = &off_1F0BBB748;
  *(v1 - 17) = v14;
  *(v1 - 16) = v12;
  *(v1 - 15) = v10;
  v22 = *(v16 + 40);

  v23 = OUTLINED_FUNCTION_22_1();
  v24 = v22(v23);
  v26 = v25;
  *(v1 - 19) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
  *(v1 - 18) = &off_1F0BBB748;
  *(v1 - 22) = v130;
  *(v1 - 21) = v7;
  *(v1 - 20) = v137;
  *&v27 = OUTLINED_FUNCTION_87_1();
  v203 = v27;
  v204 = v27;
  sub_19764E1F4(v151, v202);
  v28 = OUTLINED_FUNCTION_50_2();
  v202[8] = type metadata accessor for Expression(v28, v29, v30, v31);
  v202[9] = &off_1F0BBB748;
  v202[5] = v144;
  v202[6] = v15;
  v202[7] = v17;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v33 = OUTLINED_FUNCTION_99(v32);
  v34 = OUTLINED_FUNCTION_57_2(v33, xmmword_19775E400);
  sub_19764E1F4(v34, v33 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  OUTLINED_FUNCTION_30_3();
  v36 = 0;
  *(v33 + 104) = &off_1F0BBB748;
  *(v33 + 88) = MEMORY[0x1E69E7CC0];
  *(v33 + 96) = v37;
  *(v33 + 72) = v24;
  *(v33 + 80) = v26;
  *(v33 + 112) = v35;
  *(v33 + 128) = v35;
  *(v33 + 144) = v35;
  *(v33 + 160) = v35;
  *(v33 + 176) = v35;
  if ((v158 & 0x100000000) != 0)
  {
    v35 = xmmword_19775E410;
    v36 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_65_1(v36, v35);
  v44 = OUTLINED_FUNCTION_170(v38, v39, &qword_1EAF3FFE0, &qword_19775E430, v40, v41, v42, v43, v123, v130, v137, v144, v151, v158, v165, v172, v179, *(&v179 + 1), v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, v190, v191, v192);
  if (v195)
  {
    OUTLINED_FUNCTION_122(v44, v45, v46, v47, v48, v49, v50, v51, v124, v131, v138, v145, v152, v159, v166, v173, v179, *(&v179 + 1), v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, v190, v191, v192, v193);

    OUTLINED_FUNCTION_97(v52, v53, v54, v55, v56, v57, v58, v59, v125, v132, v139, v146, v153, v160, v167, v174);
    v60 = __swift_destroy_boxed_opaque_existential_0(&v179);
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
  }

  v66 = OUTLINED_FUNCTION_175(v60, v61, &qword_1EAF3FFE0, &qword_19775E430, v62, v63, v64, v65, v124, v131, v138, v145, v152, v159, v166, v173, v179, *(&v179 + 1), v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, v190, v191, v192);
  if (v195)
  {
    OUTLINED_FUNCTION_122(v66, v67, v68, v69, v70, v71, v72, v73, v126, v133, v140, v147, v154, v161, v168, v175, v179, *(&v179 + 1), v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, v190, v191, v192, v193);
    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_169(v74, v75, v127, v134, v141, v148, v155, v162, v169, v176);
    v76 = __swift_destroy_boxed_opaque_existential_0(&v179);
  }

  else
  {
    v82 = OUTLINED_FUNCTION_22_5();
  }

  v83 = OUTLINED_FUNCTION_168(v76, v77, &qword_1EAF3FFE8, &qword_19775E438, v78, v79, v80, v81, v126, v133, v140, v147, v154, v161, v168, v175, v179, *(&v179 + 1), v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, v190, v191, v192, v193, *(&v193 + 1), v194, v195, v196, v197, v198, v199, v200, v201, v82);
  if (v195)
  {
    v91 = OUTLINED_FUNCTION_61_2(v83, v84, v85, v86, v87, v88, v89, v90, v128, v135, v142, v149, v156, v163, v170, v177, v179, *(&v179 + 1), v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, v190, v191, v192);
    OUTLINED_FUNCTION_96(v91, v92, v93, v94, v95, v96, v97, v98, v129, v136, v143, v150, v157, v164, v171, v178);

    sub_19764CAE4(&v179, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {

    OUTLINED_FUNCTION_64();
  }

  v99 = MEMORY[0x1E69E7CC0];
  v100 = 32;
  *(v33 + 384) = 0;
  OUTLINED_FUNCTION_71_1();
  do
  {
    OUTLINED_FUNCTION_63_1();
    sub_197647660(v101, v102, v103, v104);
    OUTLINED_FUNCTION_42_3();
    if (v105)
    {
      OUTLINED_FUNCTION_84_1(&v188, &v179);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v111, v112, v113, v114, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v99 = v115;
      }

      OUTLINED_FUNCTION_118();
      if (v107)
      {
        OUTLINED_FUNCTION_47_1(v106);
        OUTLINED_FUNCTION_35_3();
        sub_19764F2F8(v116, v117, v118, v119, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v99 = v120;
      }

      *(v99 + 16) = v33 + 312;
      OUTLINED_FUNCTION_137(v99 + &off_1F0BBB748 * v15, v128, v135, v142, v149, v156, v163, v170, v177, v179);
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      sub_19764CAE4(v108, v109, v110);
    }

    v100 += 40;
  }

  while (v100 != 392);
  swift_setDeallocating();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_45_3(&v193);

  OUTLINED_FUNCTION_111();
  sub_19764CAE4(v202, &qword_1EAF3FFE8, &qword_19775E438);
  v121 = OUTLINED_FUNCTION_98();
  sub_19764CAE4(v121, v122, &qword_19775E430);
  __swift_destroy_boxed_opaque_existential_0((v1 - 17));
  sub_1976AAAEC(&v193);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(&v193);
  OUTLINED_FUNCTION_43();
}

void sub_1976ACBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_42();
  v72 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = OUTLINED_FUNCTION_50_2();
  v80[3] = type metadata accessor for Expression(v36, v37, v38, v39);
  v80[4] = &off_1F0BBB748;
  v80[0] = v35;
  v80[1] = v33;
  v80[2] = v31;
  v40 = *(a23 + 40);

  v41 = v40(a22, a23);
  v43 = v42;
  if (v27)
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFF8, &qword_19775E448);
    v45 = &off_1F0BBB748;
  }

  else
  {
    v44 = OUTLINED_FUNCTION_0_20();
  }

  v46 = v29;
  OUTLINED_FUNCTION_69_1(v44, v45);
  OUTLINED_FUNCTION_172(*(a23 + 8));
  OUTLINED_FUNCTION_19_4();
  (*(v47 + 16))();
  OUTLINED_FUNCTION_141();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v49 = OUTLINED_FUNCTION_99(v48);
  v50 = OUTLINED_FUNCTION_57_2(v49, xmmword_19775E400);
  sub_19764E1F4(v50, v49 + 32);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(v49 + 104) = &off_1F0BBB748;
  *(v49 + 72) = v41;
  *(v49 + 80) = v43;
  v52 = MEMORY[0x1E69E7CC0];
  *(v49 + 88) = MEMORY[0x1E69E7CC0];
  *(v49 + 96) = v51;
  *(v49 + 112) = 0u;
  *(v49 + 128) = 0u;
  *(v49 + 176) = v51;
  *(v49 + 184) = &off_1F0BBB748;
  OUTLINED_FUNCTION_104();
  *(v49 + 160) = v53;
  *(v49 + 168) = v52;
  *(v49 + 192) = v54;
  *(v49 + 208) = v54;
  *(v49 + 224) = 0;
  sub_197647660(&v79, __src, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&__src[1] + 1))
  {
    v55 = OUTLINED_FUNCTION_84_1(__src, __dst);
    sub_19764C59C(v55, v27, v25);

    sub_1976B314C(__dst, (v49 + 232));
    __swift_destroy_boxed_opaque_existential_0(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_145();
    sub_19764C59C(v46, v27, v25);
  }

  sub_197647660(v78, __src, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&__src[1] + 1))
  {
    sub_19764C774(__src, __dst);
    OUTLINED_FUNCTION_6_9();
    sub_1976B5330(__dst, v56, 0xE700000000000000, (v49 + 272));
    __swift_destroy_boxed_opaque_existential_0(__dst);
  }

  else
  {
    *(v49 + 304) = 0;
    *(v49 + 272) = 0u;
    *(v49 + 288) = 0u;
  }

  sub_197647660(v77, __src, &qword_1EAF3FFE8, &qword_19775E438);
  if (*(&__src[1] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1976B2DB8(__dst, &__dst[2] + 8, (v49 + 312));
    sub_19764CAE4(__dst, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {
    OUTLINED_FUNCTION_21_4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v58 = OUTLINED_FUNCTION_11_5(inited, xmmword_19775A850);
  v58[3].n128_u64[0] = v52;
  v58[3].n128_u64[1] = v51;
  v58[6].n128_u64[0] = &type metadata for Collation;
  v58[6].n128_u64[1] = &off_1F0BBBBC0;
  v58[4].n128_u64[0] = &off_1F0BBB748;
  inited[4].n128_u64[1] = v72;
  inited[5].n128_u64[0] = a21;
  sub_1976B35AC(v72, a21);
  v59 = 32;
  OUTLINED_FUNCTION_88_1(inited, (v49 + 352));
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);

  do
  {
    sub_197647660(v49 + v59, __src, &qword_1EAF3FFE0, &qword_19775E430);
    v74[0] = __src[0];
    v74[1] = __src[1];
    v75 = *&__src[2];
    if (*(&__src[1] + 1))
    {
      sub_19764C774(v74, __dst);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = OUTLINED_FUNCTION_8_6();
        sub_19764F2F8(v62, v63, v64, v52, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v52 = v65;
      }

      v61 = v52[2];
      v60 = v52[3];
      if (v61 >= v60 >> 1)
      {
        v66 = OUTLINED_FUNCTION_16_5(v60);
        sub_19764F2F8(v66, v67, v68, v52, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v52 = v69;
      }

      v52[2] = v61 + 1;
      sub_19764C774(__dst, &v52[5 * v61 + 4]);
    }

    else
    {
      sub_19764CAE4(v74, &qword_1EAF3FFE0, &qword_19775E430);
    }

    v59 += 40;
  }

  while (v59 != 392);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FFE0, &qword_19775E430);
  OUTLINED_FUNCTION_88_1(v52, __src);

  sub_19764CAE4(v77, &qword_1EAF3FFE8, &qword_19775E438);
  sub_19764CAE4(v78, &qword_1EAF3FFE0, &qword_19775E430);
  v70 = OUTLINED_FUNCTION_98();
  sub_19764CAE4(v70, v71, &qword_19775E430);
  __swift_destroy_boxed_opaque_existential_0(v80);
  sub_1976AAAEC(__src);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(__src);
  OUTLINED_FUNCTION_43();
}

void sub_1976AD0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_42();
  v68 = v23;
  v67 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = OUTLINED_FUNCTION_50_2();
  v76[3] = type metadata accessor for Expression(v35, v36, v37, v38);
  v76[4] = &off_1F0BBB748;
  v76[0] = v34;
  v76[1] = v32;
  v76[2] = v30;
  v39 = *(a23 + 40);

  v40 = v39(a22, a23);
  v42 = v41;
  v75[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
  v75[4] = &off_1F0BBB748;
  v75[0] = v67;
  v75[1] = v28;
  v75[2] = v26;
  OUTLINED_FUNCTION_172(*(a23 + 8));
  OUTLINED_FUNCTION_19_4();
  (*(v43 + 16))();
  memset(v73, 0, 80);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v45 = OUTLINED_FUNCTION_99(v44);
  v46 = OUTLINED_FUNCTION_57_2(v45, xmmword_19775E400);
  sub_19764E1F4(v46, v45 + 32);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(v45 + 104) = &off_1F0BBB748;
  *(v45 + 72) = v40;
  *(v45 + 80) = v42;
  v48 = MEMORY[0x1E69E7CC0];
  *(v45 + 88) = MEMORY[0x1E69E7CC0];
  *(v45 + 96) = v47;
  *(v45 + 112) = 0u;
  *(v45 + 128) = 0u;
  *(v45 + 176) = v47;
  *(v45 + 184) = &off_1F0BBB748;
  OUTLINED_FUNCTION_104();
  *(v45 + 160) = v49;
  *(v45 + 168) = v48;
  *(v45 + 192) = v50;
  *(v45 + 208) = v50;
  *(v45 + 224) = 0;
  sub_197647660(v75, __src, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&__src[1] + 1))
  {
    sub_19764C774(__src, __dst);

    sub_1976B314C(__dst, (v45 + 232));
    __swift_destroy_boxed_opaque_existential_0(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_145();
  }

  sub_197647660(v74, __src, &qword_1EAF3FFE0, &qword_19775E430);
  if (*(&__src[1] + 1))
  {
    sub_19764C774(__src, __dst);
    OUTLINED_FUNCTION_6_9();
    sub_1976B5330(__dst, v51, 0xE700000000000000, (v45 + 272));
    __swift_destroy_boxed_opaque_existential_0(__dst);
  }

  else
  {
    *(v45 + 304) = 0;
    *(v45 + 272) = 0u;
    *(v45 + 288) = 0u;
  }

  sub_197647660(v73, __src, &qword_1EAF3FFE8, &qword_19775E438);
  if (*(&__src[1] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_1976B2DB8(__dst, &__dst[2] + 8, (v45 + 312));
    sub_19764CAE4(__dst, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {
    OUTLINED_FUNCTION_21_4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v53 = OUTLINED_FUNCTION_11_5(inited, xmmword_19775A850);
  v53[3].n128_u64[0] = v48;
  v53[3].n128_u64[1] = v47;
  v53[6].n128_u64[0] = &type metadata for Collation;
  v53[6].n128_u64[1] = &off_1F0BBBBC0;
  v53[4].n128_u64[0] = &off_1F0BBB748;
  inited[4].n128_u64[1] = v68;
  inited[5].n128_u64[0] = a21;
  sub_1976B35AC(v68, a21);
  v54 = 32;
  OUTLINED_FUNCTION_88_1(inited, (v45 + 352));
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);

  do
  {
    sub_197647660(v45 + v54, __src, &qword_1EAF3FFE0, &qword_19775E430);
    v70[0] = __src[0];
    v70[1] = __src[1];
    v71 = *&__src[2];
    if (*(&__src[1] + 1))
    {
      sub_19764C774(v70, __dst);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = OUTLINED_FUNCTION_8_6();
        sub_19764F2F8(v57, v58, v59, v48, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v48 = v60;
      }

      v56 = v48[2];
      v55 = v48[3];
      if (v56 >= v55 >> 1)
      {
        v61 = OUTLINED_FUNCTION_16_5(v55);
        sub_19764F2F8(v61, v62, v63, v48, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v48 = v64;
      }

      v48[2] = v56 + 1;
      sub_19764C774(__dst, &v48[5 * v56 + 4]);
    }

    else
    {
      sub_19764CAE4(v70, &qword_1EAF3FFE0, &qword_19775E430);
    }

    v54 += 40;
  }

  while (v54 != 392);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FFE0, &qword_19775E430);
  OUTLINED_FUNCTION_88_1(v48, __src);

  sub_19764CAE4(v73, &qword_1EAF3FFE8, &qword_19775E438);
  sub_19764CAE4(v74, &qword_1EAF3FFE0, &qword_19775E430);
  v65 = OUTLINED_FUNCTION_98();
  sub_19764CAE4(v65, v66, &qword_19775E430);
  __swift_destroy_boxed_opaque_existential_0(v76);
  sub_1976AAAEC(__src);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(__src);
  OUTLINED_FUNCTION_43();
}

void sub_1976AD5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_42();
  v96 = v23;
  v91 = v24;
  v92 = v25;
  v90 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_50_2();
  v35 = sub_19774F420();
  OUTLINED_FUNCTION_0();
  v93 = v36;
  OUTLINED_FUNCTION_159();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v89 - v38;
  v103[3] = type metadata accessor for Expression(0, v35, v40, v41);
  v103[4] = &off_1F0BBB748;
  v103[0] = v34;
  v103[1] = v32;
  v103[2] = v30;
  v42 = *(a23 + 40);

  v89 = a23;
  v43 = v42(a22, a23);
  v44 = v90;
  v94 = v45;
  v95 = v43;
  if (v90)
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFF8, &qword_19775E448);
    v47 = &off_1F0BBB748;
    v48 = v28;
    v49 = v44;
    v50 = v44;
    v51 = v91;
    v52 = v91;
  }

  else
  {
    v48 = v28;
    v49 = 0;
    v28 = 0;
    v50 = 0;
    v52 = 0;
    v46 = 0;
    v47 = 0;
    v51 = v91;
  }

  v102[0] = v28;
  v102[1] = v50;
  v102[2] = v52;
  v102[3] = v46;
  v102[4] = v47;
  v53 = v93;
  (*(v93 + 16))(v39, v92, v35);
  OUTLINED_FUNCTION_113(v39);
  if (v54)
  {
    sub_19764C59C(v48, v49, v51);
    (*(v53 + 8))(v39, v35);
    *&v55 = OUTLINED_FUNCTION_87_1();
    v101[0] = v55;
    v101[1] = v55;
  }

  else
  {
    OUTLINED_FUNCTION_176(*(v89 + 8));
    OUTLINED_FUNCTION_19_4();
    (*(v56 + 32))();
    sub_19764C59C(v48, v49, v51);
  }

  memset(v100, 0, sizeof(v100));
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v58 = OUTLINED_FUNCTION_99(v57);
  v59 = OUTLINED_FUNCTION_57_2(v58, xmmword_19775E400);
  sub_19764E1F4(v59, v58 + 32);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(v58 + 104) = &off_1F0BBB748;
  v61 = v94;
  *(v58 + 72) = v95;
  *(v58 + 80) = v61;
  v62 = MEMORY[0x1E69E7CC0];
  *(v58 + 88) = MEMORY[0x1E69E7CC0];
  *(v58 + 96) = v60;
  *(v58 + 112) = 0u;
  *(v58 + 128) = 0u;
  *(v58 + 144) = 0u;
  *(v58 + 160) = 0u;
  *(v58 + 176) = 0u;
  *(v58 + 192) = 0u;
  *(v58 + 208) = 0u;
  *(v58 + 224) = 0;
  sub_197647660(v102, v99, &qword_1EAF3FFE0, &qword_19775E430);
  if (v99[1].n128_u64[1])
  {
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_171();
    sub_1976B314C(v97, (v58 + 232));
    __swift_destroy_boxed_opaque_existential_0(v97);
  }

  else
  {
    *(v58 + 264) = 0;
    *(v58 + 248) = 0u;
    *(v58 + 232) = 0u;
    OUTLINED_FUNCTION_171();
  }

  sub_197647660(v101, v99, &qword_1EAF3FFE0, &qword_19775E430);
  if (v99[1].n128_u64[1])
  {
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_6_9();
    sub_1976B5330(v97, v63, 0xE700000000000000, (v58 + 272));
    __swift_destroy_boxed_opaque_existential_0(v97);
  }

  else
  {
    *(v58 + 304) = 0;
    *(v58 + 272) = 0u;
    *(v58 + 288) = 0u;
  }

  sub_197647660(v100, v99, &qword_1EAF3FFE8, &qword_19775E438);
  if (v99[1].n128_u64[1])
  {
    memcpy(v97, v99, sizeof(v97));
    sub_1976B2DB8(v97, &v97[2] + 8, (v58 + 312));
    sub_19764CAE4(v97, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {
    OUTLINED_FUNCTION_21_4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v65 = OUTLINED_FUNCTION_11_5(inited, xmmword_19775A850);
  v65[3].n128_u64[0] = v62;
  v65[3].n128_u64[1] = v60;
  v65[6].n128_u64[0] = &type metadata for Collation;
  v65[6].n128_u64[1] = &off_1F0BBBBC0;
  v65[4].n128_u64[0] = &off_1F0BBB748;
  v66 = v96;
  inited[4].n128_u64[1] = v96;
  inited[5].n128_u64[0] = a21;
  sub_1976B35AC(v66, a21);
  v67 = 32;
  OUTLINED_FUNCTION_88_1(inited, (v58 + 352));
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);

  do
  {
    OUTLINED_FUNCTION_127();
    sub_197647660(v68, v69, v70, v71);
    OUTLINED_FUNCTION_149(v99[1], v99[0]);
    if (v72)
    {
      sub_19764C774(v98, v97);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = OUTLINED_FUNCTION_8_6();
        sub_19764F2F8(v75, v76, v77, v62, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v62 = v78;
      }

      v74 = v62[2];
      v73 = v62[3];
      if (v74 >= v73 >> 1)
      {
        v79 = OUTLINED_FUNCTION_47_1(v73);
        sub_19764F2F8(v79, v74 + 1, 1, v62, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v62 = v80;
      }

      v62[2] = v74 + 1;
      sub_19764C774(v97, &v62[5 * v74 + 4]);
    }

    else
    {
      OUTLINED_FUNCTION_80_1(v98);
    }

    v67 += 40;
  }

  while (v67 != 392);
  swift_setDeallocating();
  v81 = OUTLINED_FUNCTION_91();
  sub_19764D558(v81, v82);
  OUTLINED_FUNCTION_88_1(v62, v99);

  sub_19764CAE4(v100, &qword_1EAF3FFE8, &qword_19775E438);
  OUTLINED_FUNCTION_86();
  sub_19764CAE4(v83, v84, v85);
  OUTLINED_FUNCTION_86();
  sub_19764CAE4(v86, v87, v88);
  __swift_destroy_boxed_opaque_existential_0(v103);
  sub_1976AAAEC(v99);
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_0(v99);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_43();
}

void sub_1976ADBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_42();
  v81 = v24;
  v80 = v25;
  v75 = v27;
  v76 = v26;
  v77 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_50_2();
  v35 = sub_19774F420();
  OUTLINED_FUNCTION_0();
  v74 = v36;
  OUTLINED_FUNCTION_159();
  v38 = MEMORY[0x1EEE9AC00](v37);
  v88[3] = OUTLINED_FUNCTION_135(v38, v39, v40, v41);
  v88[4] = &off_1F0BBB748;
  v88[0] = v34;
  v88[1] = v32;
  v88[2] = v30;
  v42 = *(a23 + 40);

  v78 = v42(a22, a23);
  v79 = v43;
  v87[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
  v87[4] = &off_1F0BBB748;
  v87[0] = v76;
  v87[1] = v77;
  v87[2] = v75;
  (*(v74 + 16))(v23, v80, v35);
  OUTLINED_FUNCTION_113(v23);
  if (v44)
  {
    v45 = *(v74 + 8);

    v45(v23, v35);
    *&v46 = OUTLINED_FUNCTION_87_1();
    v86[0] = v46;
    v86[1] = v46;
  }

  else
  {
    OUTLINED_FUNCTION_176(*(a23 + 8));
    OUTLINED_FUNCTION_19_4();
    (*(v47 + 32))();
  }

  OUTLINED_FUNCTION_141();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v49 = OUTLINED_FUNCTION_99(v48);
  v50 = OUTLINED_FUNCTION_57_2(v49, xmmword_19775E400);
  sub_19764E1F4(v50, v49 + 32);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(v49 + 104) = &off_1F0BBB748;
  *(v49 + 72) = v78;
  *(v49 + 80) = v79;
  v52 = MEMORY[0x1E69E7CC0];
  *(v49 + 88) = MEMORY[0x1E69E7CC0];
  *(v49 + 96) = v51;
  *(v49 + 112) = 0u;
  *(v49 + 128) = 0u;
  *(v49 + 144) = 0u;
  *(v49 + 160) = 0u;
  *(v49 + 176) = 0u;
  *(v49 + 192) = 0u;
  *(v49 + 208) = 0u;
  *(v49 + 224) = 0;
  sub_197647660(v87, v84, &qword_1EAF3FFE0, &qword_19775E430);
  if (v84[1].n128_u64[1])
  {
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_171();
    sub_1976B314C(v82, (v49 + 232));
    __swift_destroy_boxed_opaque_existential_0(v82);
  }

  else
  {
    *(v49 + 264) = 0;
    *(v49 + 248) = 0u;
    *(v49 + 232) = 0u;
    OUTLINED_FUNCTION_171();
  }

  sub_197647660(v86, v84, &qword_1EAF3FFE0, &qword_19775E430);
  if (v84[1].n128_u64[1])
  {
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_6_9();
    sub_1976B5330(v82, v53, 0xE700000000000000, (v49 + 272));
    __swift_destroy_boxed_opaque_existential_0(v82);
  }

  else
  {
    *(v49 + 304) = 0;
    *(v49 + 272) = 0u;
    *(v49 + 288) = 0u;
  }

  sub_197647660(v85, v84, &qword_1EAF3FFE8, &qword_19775E438);
  if (v84[1].n128_u64[1])
  {
    memcpy(v82, v84, sizeof(v82));
    sub_1976B2DB8(v82, &v82[2] + 8, (v49 + 312));
    sub_19764CAE4(v82, &qword_1EAF3FFF0, &qword_19775E440);
  }

  else
  {
    OUTLINED_FUNCTION_21_4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v55 = OUTLINED_FUNCTION_11_5(inited, xmmword_19775A850);
  v55[3].n128_u64[0] = v52;
  v55[3].n128_u64[1] = v51;
  v55[6].n128_u64[0] = &type metadata for Collation;
  v55[6].n128_u64[1] = &off_1F0BBBBC0;
  v55[4].n128_u64[0] = &off_1F0BBB748;
  inited[4].n128_u64[1] = v81;
  inited[5].n128_u64[0] = a21;
  sub_1976B35AC(v81, a21);
  v56 = 32;
  OUTLINED_FUNCTION_88_1(inited, (v49 + 352));
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);

  do
  {
    sub_197647660(v49 + v56, v84, &qword_1EAF3FFE0, &qword_19775E430);
    OUTLINED_FUNCTION_149(v84[1], v84[0]);
    if (v57)
    {
      sub_19764C774(v83, v82);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = OUTLINED_FUNCTION_8_6();
        sub_19764F2F8(v60, v61, v62, v52, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v52 = v63;
      }

      v59 = v52[2];
      v58 = v52[3];
      if (v59 >= v58 >> 1)
      {
        v64 = OUTLINED_FUNCTION_47_1(v58);
        sub_19764F2F8(v64, v59 + 1, 1, v52, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v52 = v65;
      }

      v52[2] = v59 + 1;
      sub_19764C774(v82, &v52[5 * v59 + 4]);
    }

    else
    {
      sub_19764CAE4(v83, &qword_1EAF3FFE0, &qword_19775E430);
    }

    v56 += 40;
  }

  while (v56 != 392);
  swift_setDeallocating();
  v66 = OUTLINED_FUNCTION_91();
  sub_19764D558(v66, v67);
  OUTLINED_FUNCTION_88_1(v52, v84);

  sub_19764CAE4(v85, &qword_1EAF3FFE8, &qword_19775E438);
  OUTLINED_FUNCTION_86();
  sub_19764CAE4(v68, v69, v70);
  OUTLINED_FUNCTION_86();
  sub_19764CAE4(v71, v72, v73);
  __swift_destroy_boxed_opaque_existential_0(v88);
  sub_1976AAAEC(v84);
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_0(v84);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_43();
}

uint64_t sub_1976AE184()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A860;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = 0x4154205245544C41;
  *(inited + 40) = 0xEB00000000454C42;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v2;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 64);
  swift_bridgeObjectRetain_n();

  if (v5)
  {

    v4 = v6;
    v3 = v5;
  }

  sub_19764E750(v4, v3, v7 & 1, (inited + 72));

  *(inited + 136) = v2;
  *(inited + 144) = &off_1F0BBB748;
  *(inited + 112) = 0x5420454D414E4552;
  *(inited + 120) = 0xE90000000000004FLL;
  v8 = MEMORY[0x1E69E7CC0];
  *(inited + 128) = MEMORY[0x1E69E7CC0];
  *(inited + 176) = v2;
  *(inited + 184) = &off_1F0BBB748;
  v9 = OUTLINED_FUNCTION_108();
  *(inited + 152) = sub_1976497AC(v9, v10, v11, v12);
  *(inited + 160) = v13;
  *(inited + 168) = v8;
  OUTLINED_FUNCTION_88_1(inited, v15);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
  OUTLINED_FUNCTION_29_3(v15);
  OUTLINED_FUNCTION_46_0();
  return OUTLINED_FUNCTION_18_5(v15);
}

void sub_1976AE344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  OUTLINED_FUNCTION_160();
  a54 = v56;
  a55 = v57;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A860;
  sub_1976AE62C(v63, &a16);
  if (v61)
  {
    v65 = 0;
  }

  else
  {
    v65 = 2;
  }

  sub_1976A9EAC(0x5845444E49, 0xE500000000000000, &a16, v65, v59, (inited + 32));
  __swift_destroy_boxed_opaque_existential_0(&a16);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 104) = &off_1F0BBB748;
  *(inited + 72) = 20047;
  *(inited + 80) = 0xE200000000000000;
  v67 = MEMORY[0x1E69E7CC0];
  *(inited + 88) = MEMORY[0x1E69E7CC0];
  *(inited + 96) = v66;
  v69 = v55[2];
  v68 = v55[3];
  v71 = v55[4];
  v70 = v55[5];
  swift_bridgeObjectRetain_n();

  if (v70)
  {

    v69 = v71;
    v68 = v70;
  }

  *(inited + 136) = v66;
  *(inited + 144) = &off_1F0BBB748;
  v72 = OUTLINED_FUNCTION_108();
  v74 = sub_1976497AC(v72, v73, v69, v68);
  v76 = v75;

  *(inited + 112) = v74;
  *(inited + 120) = v76;
  *(inited + 128) = v67;
  sub_197649FEC(v63, &a16);
  __swift_project_boxed_opaque_existential_0Tm(&a16, *(&a17 + 1));
  v77 = OUTLINED_FUNCTION_167();
  v79 = v78;
  v81 = v80;
  __swift_destroy_boxed_opaque_existential_0(&a16);
  v82 = 32;
  *(inited + 176) = v66;
  *(inited + 184) = &off_1F0BBB748;
  *(inited + 152) = v77;
  *(inited + 160) = v79;
  *(inited + 168) = v81;
  do
  {
    OUTLINED_FUNCTION_63_1();
    sub_197647660(v83, v84, v85, v86);
    a9 = a16;
    a10 = a17;
    a11 = a18;
    if (*(&a17 + 1))
    {
      OUTLINED_FUNCTION_84_1(&a9, &a12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v92 = OUTLINED_FUNCTION_2_14();
        sub_19764F2F8(v92, v93, v94, v95, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v67 = v96;
      }

      v88 = *(v67 + 16);
      v87 = *(v67 + 24);
      if (v88 >= v87 >> 1)
      {
        OUTLINED_FUNCTION_47_1(v87);
        OUTLINED_FUNCTION_35_3();
        sub_19764F2F8(v97, v98, v99, v100, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v67 = v101;
      }

      *(v67 + 16) = v88 + 1;
      sub_19764C774(&a12, v67 + 40 * v88 + 32);
    }

    else
    {
      OUTLINED_FUNCTION_12_0();
      sub_19764CAE4(v89, v90, v91);
    }

    v82 += 40;
  }

  while (v82 != 192);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FFE0, &qword_19775E430);
  OUTLINED_FUNCTION_45_3(&a16);

  OUTLINED_FUNCTION_29_3(&a16);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(&a16);
  OUTLINED_FUNCTION_161();
}

uint64_t sub_1976AE62C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FEA0, &qword_19775A8F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19775A7E0;
  *(v5 + 32) = 0x7865646E69;
  *(v5 + 40) = 0xE500000000000000;
  v6 = v2[2];
  v44 = v2[6];
  v45 = v2[7];

  *(v5 + 48) = v6;
  *(v5 + 56) = v7;
  *(v5 + 64) = 28271;
  *(v5 + 72) = 0xE200000000000000;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v46 = MEMORY[0x1E69E7CC0];
    sub_19764AD60(0, v8, 0);
    v9 = v46;
    v10 = a1 + 32;
    do
    {
      sub_19764E1F4(v10, v49);
      v11 = v50;
      v12 = v51;
      __swift_project_boxed_opaque_existential_0Tm(v49, v50);
      v13 = (*(v12 + 8))(v11, v12);
      v15 = v14;

      __swift_destroy_boxed_opaque_existential_0(v49);
      v17 = *(v46 + 16);
      v16 = *(v46 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_19764AD60((v16 > 1), v17 + 1, 1);
      }

      *(v46 + 16) = v17 + 1;
      v18 = v46 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v10 += 40;
      --v8;
    }

    while (v8);
  }

  v49[0] = v5;
  sub_1976B5DF8(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FF30, &unk_19775A950);
  sub_1976A7CC8();
  sub_19774EEB0();

  v19 = sub_19774EFC0();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  v49[0] = v19;
  v49[1] = v21;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  v49[2] = 0;
  v50 = v22;

  v23 = 0;
  v24 = 0xE000000000000000;
  while (1)
  {
    v25 = sub_19774F040();
    if (!v26)
    {
      break;
    }

    v27 = v25;
    v28 = v26;
    v29 = v25 == 34 && v26 == 0xE100000000000000;
    if (v29 || (sub_19774F7E0() & 1) != 0)
    {
    }

    else
    {
      result = sub_19774F7E0();
      if (result)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        return result;
      }

      if (v27 == 97 && v28 == 0xE100000000000000)
      {
        goto LABEL_26;
      }

      if ((sub_19774F7E0() & 1) == 0)
      {
        if (v27 == 122 && v28 == 0xE100000000000000)
        {
          goto LABEL_39;
        }

LABEL_26:
        if ((sub_19774F7E0() & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      result = sub_19774F7E0();
      if (result)
      {
        goto LABEL_45;
      }

      if (v27 == 48 && v28 == 0xE100000000000000)
      {
        goto LABEL_37;
      }

      if (sub_19774F7E0())
      {
        goto LABEL_38;
      }

      if (v27 != 57 || v28 != 0xE100000000000000)
      {
LABEL_37:
        if (sub_19774F7E0())
        {
LABEL_38:
          v47 = v23;
          v48 = v24;

          v35 = 95;
          v36 = 0xE100000000000000;
          goto LABEL_40;
        }
      }

LABEL_39:
      v47 = v23;
      v48 = v24;

      v35 = v27;
      v36 = v28;
LABEL_40:
      MEMORY[0x19A8E4C40](v35, v36);

      v23 = v47;
      v24 = v48;
    }
  }

  v37 = sub_1976497AC(34, 0xE100000000000000, v23, v24);
  v39 = v38;

  if (v45)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A850;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    *(inited + 56) = v41;
    *(inited + 64) = &off_1F0BBB748;
    *(inited + 32) = sub_1976497AC(34, 0xE100000000000000, v44, v45);
    *(inited + 40) = v42;
    v43 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 96) = v41;
    *(inited + 104) = &off_1F0BBB748;
    *(inited + 72) = v37;
    *(inited + 80) = v39;
    *(inited + 88) = v43;
    sub_197649FEC(inited, a2);
    swift_setDeallocating();
    return sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    a2[3] = result;
    a2[4] = &off_1F0BBB748;
    *a2 = v37;
    a2[1] = v39;
    a2[2] = MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1976AEB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  OUTLINED_FUNCTION_160();
  a54 = v56;
  a55 = v57;
  v94 = v58;
  v95 = v59;
  v93 = v60;
  v62 = v61;
  v64 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A7E0;
  v67 = *(v55 + 16);
  v66 = *(v55 + 24);
  v68 = *(v55 + 32);
  v69 = *(v55 + 40);
  v70 = *(v55 + 64);
  swift_bridgeObjectRetain_n();

  if (v69)
  {

    v67 = v68;
    v66 = v69;
  }

  sub_19764E750(v67, v66, v70 & 1, &a21);

  if (v62)
  {
    v71 = 1;
  }

  else
  {
    v71 = 2;
  }

  sub_1976A9EAC(v94, v95, &a21, v71, v93 & 1, (inited + 32));
  __swift_destroy_boxed_opaque_existential_0(&a21);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 104) = &off_1F0BBB748;
  *(inited + 72) = 21313;
  *(inited + 80) = 0xE200000000000000;
  v73 = MEMORY[0x1E69E7CC0];
  *(inited + 88) = MEMORY[0x1E69E7CC0];
  *(inited + 96) = v72;
  v74 = v64[3];
  v75 = v64[4];
  __swift_project_boxed_opaque_existential_0Tm(v64, v74);
  *(inited + 136) = v74;
  *(inited + 144) = *(v75 + 8);
  __swift_allocate_boxed_opaque_existential_1((inited + 112));
  OUTLINED_FUNCTION_19_4();
  (*(v76 + 16))();
  for (i = 32; i != 152; i += 40)
  {
    OUTLINED_FUNCTION_127();
    sub_197647660(v78, v79, v80, v81);
    a13 = a21;
    a14 = a22;
    a15 = a23;
    if (*(&a22 + 1))
    {
      OUTLINED_FUNCTION_84_1(&a13, &a17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = OUTLINED_FUNCTION_2_14();
        OUTLINED_FUNCTION_132(v83, v84, v85, v86, &qword_1EAF3F750, &qword_19775A960);
        v73 = v87;
      }

      OUTLINED_FUNCTION_116();
      if (v82)
      {
        OUTLINED_FUNCTION_35_3();
        OUTLINED_FUNCTION_132(v88, v89, v90, v91, &qword_1EAF3F750, &qword_19775A960);
        v73 = v92;
      }

      *(v73 + 16) = v67;
      sub_19764C774(&a17, v73 + 40 * v68 + 32);
    }

    else
    {
      OUTLINED_FUNCTION_80_1(&a13);
    }
  }

  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FFE0, &qword_19775E430);
  OUTLINED_FUNCTION_45_3(&a21);

  OUTLINED_FUNCTION_29_3(&a21);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_18_5(&a21);
  OUTLINED_FUNCTION_161();
}

uint64_t sub_1976B01F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_151();
  v37 = v13;
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_31_2(v14, v15, v16);
  v17 = *(a9 + 40);

  v17(a8, a9);
  OUTLINED_FUNCTION_103();
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFF8, &qword_19775E448);
    OUTLINED_FUNCTION_144();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_0_20();
  }

  OUTLINED_FUNCTION_9_6(v18, v19);
  OUTLINED_FUNCTION_115();
  sub_19764C59C(v10, v9, a7);
  v22 = type metadata accessor for Expression(0, a8, v20, v21);
  OUTLINED_FUNCTION_58_2(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33, v34, v22, &off_1F0BBB748, v35, v36, v37, SHIWORD(v37), v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v39[0]);

  sub_19764CAE4(v38, &qword_1EAF3FFE8, &qword_19775E438);
  OUTLINED_FUNCTION_80_1(v39);
  OUTLINED_FUNCTION_28_1();
}

uint64_t sub_1976B033C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_51_2();
  v38 = v12;
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_31_2(v13, v14, v15);
  v16 = *(a9 + 40);

  v17 = OUTLINED_FUNCTION_56_2();
  v16(v17, a9);
  OUTLINED_FUNCTION_103();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
  v45 = &off_1F0BBB748;
  v41 = v11;
  v42 = v10;
  v43 = v9;
  OUTLINED_FUNCTION_115();
  v22 = OUTLINED_FUNCTION_94_0(v18, v19, v20, v21);

  OUTLINED_FUNCTION_58_2(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33, v34, v35, v22, &off_1F0BBB748, v36, v37, v38, SHIWORD(v38), v39[0], v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7], v39[8], v39[9], v40[0]);

  sub_19764CAE4(v39, &qword_1EAF3FFE8, &qword_19775E438);
  OUTLINED_FUNCTION_80_1(v40);
  OUTLINED_FUNCTION_28_1();
}

uint64_t sub_1976B1DA4()
{
  OUTLINED_FUNCTION_140();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v5 = OUTLINED_FUNCTION_129(inited, xmmword_19775A780);
  inited[3].n128_u64[1] = type metadata accessor for Expression(v5, v0, v6, v7);
  inited[4].n128_u64[0] = &off_1F0BBB748;
  inited[2].n128_u64[0] = v3;
  inited[2].n128_u64[1] = v2;
  inited[3].n128_u64[0] = v1;

  OUTLINED_FUNCTION_10_4();
  sub_1976B225C(inited, v8, v9);
  swift_setDeallocating();
  return sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
}

uint64_t sub_1976B1E60(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v17 = OUTLINED_FUNCTION_129(inited, xmmword_19775A850);
  inited[3].n128_u64[1] = type metadata accessor for Expression(v17, a7, v18, v19);
  inited[4].n128_u64[0] = &off_1F0BBB748;
  inited[2].n128_u64[0] = a1;
  inited[2].n128_u64[1] = a2;
  inited[3].n128_u64[0] = a3;
  inited[6].n128_u64[0] = type metadata accessor for Expression(0, a8, v20, v21);
  inited[6].n128_u64[1] = &off_1F0BBB748;
  inited[4].n128_u64[1] = a4;
  inited[5].n128_u64[0] = a5;
  inited[5].n128_u64[1] = a6;

  OUTLINED_FUNCTION_10_4();
  sub_1976B225C(inited, v22, v23);
  swift_setDeallocating();
  return sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
}

uint64_t sub_1976B1F70(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v19 = OUTLINED_FUNCTION_129(inited, xmmword_19775A7E0);
  inited[3].n128_u64[1] = type metadata accessor for Expression(v19, a10, v20, v21);
  inited[4].n128_u64[0] = &off_1F0BBB748;
  inited[2].n128_u64[0] = a1;
  inited[2].n128_u64[1] = a2;
  inited[3].n128_u64[0] = a3;
  v22 = OUTLINED_FUNCTION_50_2();
  inited[6].n128_u64[0] = type metadata accessor for Expression(v22, v23, v24, v25);
  inited[6].n128_u64[1] = &off_1F0BBB748;
  inited[4].n128_u64[1] = a4;
  inited[5].n128_u64[0] = a5;
  inited[5].n128_u64[1] = a6;
  inited[8].n128_u64[1] = type metadata accessor for Expression(0, a12, v26, v27);
  inited[9].n128_u64[0] = &off_1F0BBB748;
  inited[7].n128_u64[0] = a7;
  inited[7].n128_u64[1] = a8;
  inited[8].n128_u64[0] = a9;

  OUTLINED_FUNCTION_10_4();
  sub_1976B225C(inited, v28, v29);
  swift_setDeallocating();
  return sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
}

void sub_1976B20BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, unint64_t a55, unint64_t a56, unint64_t a57, unint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_76_1();
  v88 = v62;
  v89 = v63;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v77 = OUTLINED_FUNCTION_129(inited, xmmword_19775A860);
  inited[3].n128_u64[1] = type metadata accessor for Expression(v77, a59, v78, v79);
  inited[4].n128_u64[0] = &off_1F0BBB748;
  inited[2].n128_u64[0] = v75;
  inited[2].n128_u64[1] = v73;
  inited[3].n128_u64[0] = v71;
  inited[6].n128_u64[0] = type metadata accessor for Expression(0, a60, v80, v81);
  inited[6].n128_u64[1] = &off_1F0BBB748;
  inited[4].n128_u64[1] = v69;
  inited[5].n128_u64[0] = v67;
  inited[5].n128_u64[1] = v65;
  inited[8].n128_u64[1] = type metadata accessor for Expression(0, a61, v82, v83);
  inited[9].n128_u64[0] = &off_1F0BBB748;
  inited[7].n128_u64[0] = v88;
  inited[7].n128_u64[1] = v89;
  inited[8].n128_u64[0] = a55;
  inited[11].n128_u64[0] = type metadata accessor for Expression(0, a62, v84, v85);
  inited[11].n128_u64[1] = &off_1F0BBB748;
  inited[9].n128_u64[1] = a56;
  inited[10].n128_u64[0] = a57;
  inited[10].n128_u64[1] = a58;

  OUTLINED_FUNCTION_10_4();
  sub_1976B225C(inited, v86, v87);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
  OUTLINED_FUNCTION_70_1();
}

uint64_t sub_1976B225C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1976B5258(a1, a2, a3, v7);
  swift_beginAccess();
  OUTLINED_FUNCTION_12_0();
  sub_1976B3258();
  OUTLINED_FUNCTION_63_1();
  sub_1976B3328(v4);
  OUTLINED_FUNCTION_130();
  sub_19764C774(v7, v5 + 32);
  *(v3 + 16) = v3 + 16;
  return swift_endAccess();
}

uint64_t sub_1976B232C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
  v11[4] = &off_1F0BBB748;
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;

  sub_1976B5330(v11, 0x4B43454843, 0xE500000000000000, v12);
  __swift_destroy_boxed_opaque_existential_0(v11);
  swift_beginAccess();
  OUTLINED_FUNCTION_12_0();
  sub_1976B3258();
  OUTLINED_FUNCTION_63_1();
  sub_1976B3328(v8);
  OUTLINED_FUNCTION_130();
  sub_19764C774(v12, v9 + 32);
  *(v4 + 16) = v4 + 16;
  return swift_endAccess();
}

unint64_t sub_1976B2458(uint64_t a1, uint64_t a2)
{
  v2 = sub_19774F780();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1976B24A4(char a1)
{
  result = 0x4F49544341204F4ELL;
  switch(a1)
  {
    case 1:
      result = 0x5443495254534552;
      break;
    case 2:
      result = 0x4C4C554E20544553;
      break;
    case 3:
      result = 0x4146454420544553;
      break;
    case 4:
      result = 0x45444143534143;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1976B2570@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1976B2458(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1976B25A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1976B24A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1976B25CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  v11 = a8;
  v16[0] = a1;
  v16[1] = a2;
  v16[2] = a3;
  v15[0] = a5;
  v15[1] = a6;
  v15[2] = a7;
  v13 = type metadata accessor for Expression(0, a10, a3, a4);

  sub_1976B3748(v16, a4, v15, v11, a9, v10, v13, v13, &off_1F0BBB748, &off_1F0BBB748);
}

uint64_t sub_1976B26C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = a8;
  v23[0] = a1;
  v23[1] = a2;
  v23[2] = a3;
  v22[0] = a5;
  v22[1] = a6;
  v22[2] = a7;
  v12 = OUTLINED_FUNCTION_134();
  v16 = OUTLINED_FUNCTION_92_0(v12, v13, v14, v15);
  v20 = OUTLINED_FUNCTION_94_0(v16, v17, v18, v19);

  sub_1976B3748(v23, a4, v22, v10, a9, v9, v16, v20, &off_1F0BBB748, &off_1F0BBB748);
}

void sub_1976B27BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, char a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_42();
  v64 = v29;
  v63 = v30;
  v62 = v31;
  v33 = v32;
  v35 = v34;
  v61 = v36;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v44 = OUTLINED_FUNCTION_129(inited, xmmword_19775A850);
  v47 = type metadata accessor for Expression(v44, a28, v45, v46);
  inited[3].n128_u64[1] = v47;
  inited[4].n128_u64[0] = &off_1F0BBB748;
  inited[2].n128_u64[0] = v42;
  inited[2].n128_u64[1] = v40;
  inited[3].n128_u64[0] = v38;
  v50 = type metadata accessor for Expression(0, a29, v48, v49);
  inited[6].n128_u64[0] = v50;
  inited[6].n128_u64[1] = &off_1F0BBB748;
  inited[4].n128_u64[1] = v61;
  inited[5].n128_u64[0] = v35;
  inited[5].n128_u64[1] = v33;

  OUTLINED_FUNCTION_112(v71);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
  sub_19764E1F4(v62, v69);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_19775A850;
  *(v51 + 32) = v63;
  *(v51 + 40) = a21;
  *(v51 + 48) = a22;
  *(v51 + 56) = v47;
  *(v51 + 64) = &off_1F0BBB748;
  *(v51 + 96) = v50;
  *(v51 + 104) = &off_1F0BBB748;
  *(v51 + 72) = a23;
  *(v51 + 80) = a24;
  *(v51 + 88) = a25;

  OUTLINED_FUNCTION_112(v70);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
  sub_197647660(v69, v65, &qword_1EAF3FFF0, &qword_19775E440);
  v52 = v72;
  v53 = v73;
  v54 = __swift_project_boxed_opaque_existential_0Tm(v71, v72);
  v55 = v67;
  v56 = v68;
  v57 = __swift_project_boxed_opaque_existential_0Tm(v66, v67);
  sub_1976B3748(v54, v65, v57, a26, a27, v64, v52, v55, v53, v56);
  OUTLINED_FUNCTION_48_2();
  sub_19764CAE4(v58, v59, v60);
  __swift_destroy_boxed_opaque_existential_0(v71);
  __swift_destroy_boxed_opaque_existential_0(v66);
  __swift_destroy_boxed_opaque_existential_0(v65);
  OUTLINED_FUNCTION_43();
}

void sub_1976B2A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_42();
  v79 = v36;
  v76 = v37;
  v78 = v38;
  v40 = v39;
  v42 = v41;
  v75 = v43;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A7E0;

  v77 = OUTLINED_FUNCTION_94_0(v51, v52, v53, v54);
  *(inited + 56) = v77;
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = v49;
  *(inited + 40) = v47;
  *(inited + 48) = v45;

  v57 = type metadata accessor for Expression(0, a35, v55, v56);
  *(inited + 96) = v57;
  *(inited + 104) = &off_1F0BBB748;
  *(inited + 72) = v75;
  *(inited + 80) = v42;
  *(inited + 88) = v40;

  v60 = type metadata accessor for Expression(0, a36, v58, v59);
  *(inited + 136) = v60;
  *(inited + 144) = &off_1F0BBB748;
  *(inited + 112) = v78;
  *(inited + 120) = v76;
  *(inited + 128) = a21;
  OUTLINED_FUNCTION_112(v86);
  swift_setDeallocating();
  v61 = OUTLINED_FUNCTION_91();
  sub_19764D558(v61, v62);
  sub_19764E1F4(a22, v84);
  v63 = swift_initStackObject();
  *(v63 + 16) = xmmword_19775A7E0;

  *(v63 + 32) = a23;
  *(v63 + 40) = a24;
  *(v63 + 56) = v77;
  *(v63 + 64) = &off_1F0BBB748;
  *(v63 + 48) = a25;

  *(v63 + 96) = v57;
  *(v63 + 104) = &off_1F0BBB748;
  *(v63 + 72) = a26;
  *(v63 + 80) = a27;
  *(v63 + 88) = a28;

  *(v63 + 136) = v60;
  *(v63 + 144) = &off_1F0BBB748;
  *(v63 + 112) = a29;
  *(v63 + 120) = a30;
  *(v63 + 128) = a31;
  OUTLINED_FUNCTION_112(v85);
  swift_setDeallocating();
  v64 = OUTLINED_FUNCTION_91();
  sub_19764D558(v64, v65);
  sub_197647660(v84, v80, &qword_1EAF3FFF0, &qword_19775E440);
  v66 = v87;
  v67 = v88;
  v68 = __swift_project_boxed_opaque_existential_0Tm(v86, v87);
  v69 = v82;
  v70 = v83;
  v71 = __swift_project_boxed_opaque_existential_0Tm(v81, v82);
  sub_1976B3748(v68, v80, v71, a32, a33, v79, v66, v69, v67, v70);
  OUTLINED_FUNCTION_48_2();
  sub_19764CAE4(v72, v73, v74);
  __swift_destroy_boxed_opaque_existential_0(v86);
  __swift_destroy_boxed_opaque_existential_0(v81);
  __swift_destroy_boxed_opaque_existential_0(v80);
  OUTLINED_FUNCTION_43();
}

uint64_t sub_1976B2DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_19764E1F4(a1, v12);
  sub_19764E1F4(a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A7E0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = 0x434E455245464552;
  *(inited + 40) = 0xEA00000000005345;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v6;
  v7 = v12[4];
  __swift_project_boxed_opaque_existential_0Tm(v12, v12[3]);
  sub_1976BABD8(0, v7, (inited + 72));
  __swift_project_boxed_opaque_existential_0Tm(v13, v13[3]);
  v8 = sub_1976B5D38();
  *(inited + 136) = v6;
  *(inited + 144) = &off_1F0BBB748;
  *(inited + 112) = v8;
  *(inited + 120) = v9;
  *(inited + 128) = v10;
  sub_197649FEC(inited, a3);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
  return sub_19764CAE4(v12, &qword_1EAF3FFF0, &qword_19775E440);
}

uint64_t sub_1976B2F54()
{

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_1976B2FC4(char a1)
{
  sub_19774F930();
  MEMORY[0x19A8E5570](a1 & 1);
  return sub_19774F950();
}

uint64_t sub_1976B3028(uint64_t a1)
{
  v2 = *v1;
  sub_19774F930();
  sub_1976B2F9C(v4, v2);
  return sub_19774F950();
}

uint64_t sub_1976B306C(uint64_t a1, unint64_t a2)
{
  v3 = OUTLINED_FUNCTION_108();
  sub_1976497AC(v3, v4, v5, a2);

  return OUTLINED_FUNCTION_91();
}

uint64_t sub_1976B30C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_197649FEC(a3, v4);
  __swift_project_boxed_opaque_existential_0Tm(v4, v4[3]);
  sub_1976B5D38();
  OUTLINED_FUNCTION_46_0();
  return OUTLINED_FUNCTION_18_5(v4);
}

uint64_t sub_1976B314C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A850;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = 0x4B43454843;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v5;
  sub_19764E1F4(a1, inited + 72);
  sub_197649FEC(inited, a2);
  swift_setDeallocating();
  return sub_19764D558(&qword_1EAF3FE88, &qword_19775DF70);
}

void sub_1976B3258()
{
  OUTLINED_FUNCTION_140();
  v5 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_19764F2F8(0, v5[2] + 1, 1, v5, v4, v3, v2, v0);
    *v1 = v7;
  }
}

void sub_1976B3328(uint64_t a1)
{
  v2 = *(*v1 + 24);
  if (a1 + 1 > (v2 >> 1))
  {
    v3 = OUTLINED_FUNCTION_47_1(v2);
    sub_19764F2F8(v3, v4, 1, v5, v6, v7, v8, v9);
    *v1 = v10;
  }
}

void sub_1976B33B0()
{
  OUTLINED_FUNCTION_126();
  if (v4)
  {
    OUTLINED_FUNCTION_14();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_107();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_13_0();
    }
  }

  OUTLINED_FUNCTION_12();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40018, &qword_19775E6D0);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_178(v7);
    OUTLINED_FUNCTION_148(v8 / 80);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = (v3 + 32);
  v10 = (v0 + 32);
  if (v1)
  {
    if (v3 != v0 || &v10[80 * v2] <= v9)
    {
      memmove(v9, v10, 80 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1976B349C()
{
  OUTLINED_FUNCTION_126();
  if (v3)
  {
    OUTLINED_FUNCTION_14();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_107();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_13_0();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40020, &qword_19775E5E8);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 16);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
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

char *sub_1976B3584(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_0(a3, result);
  }

  return result;
}

uint64_t sub_1976B35AC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1976B35C0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v27[3] = a13;
  v27[4] = a14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a13 - 8) + 16))(boxed_opaque_existential_1, a1, a13);
  sub_1976AA578(v27, a2, a3, a4, a5, a6, a7, a8, v26, a9, a10, a11);
  swift_beginAccess();
  sub_1976B3258();
  v22 = *(*(a12 + 16) + 16);
  sub_1976B3328(v22);
  v23 = *(a12 + 16);
  *(v23 + 16) = v22 + 1;
  sub_19764C774(v26, v23 + 40 * v22 + 32);
  *(a12 + 16) = v23;
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v27);
}

uint64_t sub_1976B3748(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = a4;
  v53[3] = a7;
  v53[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a1, a7);
  v52[3] = a8;
  v52[4] = a10;
  v20 = __swift_allocate_boxed_opaque_existential_1(v52);
  (*(*(a8 - 8) + 16))(v20, a3, a8);
  sub_19764E1F4(a2, v50);
  sub_19764E1F4(v52, &v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A860;
  sub_1976B5330(v53, 0x204E474945524F46, 0xEB0000000059454BLL, (inited + 32));
  sub_197647660(v50, &v46, &qword_1EAF3FFF0, &qword_19775E440);
  sub_1976B2DB8(&v46, v49, (inited + 72));
  __swift_destroy_boxed_opaque_existential_0(v49);
  __swift_destroy_boxed_opaque_existential_0(&v46);
  if (v18 == 5)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    *&v46 = 0x5441445055204E4FLL;
    *(&v46 + 1) = 0xEA00000000002045;
    v27 = sub_1976B24A4(a4);
    MEMORY[0x19A8E4C40](v27);

    v23 = *(&v46 + 1);
    v22 = v46;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    v26 = &off_1F0BBB748;
    v24 = MEMORY[0x1E69E7CC0];
  }

  *(inited + 112) = v22;
  *(inited + 120) = v23;
  *(inited + 128) = v24;
  *(inited + 136) = v25;
  *(inited + 144) = v26;
  if (a5 == 5)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
  }

  else
  {
    *&v46 = 0x54454C4544204E4FLL;
    *(&v46 + 1) = 0xEA00000000002045;
    v33 = sub_1976B24A4(a5);
    MEMORY[0x19A8E4C40](v33);

    v29 = *(&v46 + 1);
    v28 = v46;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    v32 = &off_1F0BBB748;
    v30 = MEMORY[0x1E69E7CC0];
  }

  *(inited + 152) = v28;
  *(inited + 160) = v29;
  v34 = 32;
  *(inited + 168) = v30;
  *(inited + 176) = v31;
  *(inited + 184) = v32;
  v35 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_197647660(inited + v34, &v46, &qword_1EAF3FFE0, &qword_19775E430);
    v43[0] = v46;
    v43[1] = v47;
    v44 = v48;
    if (*(&v47 + 1))
    {
      sub_19764C774(v43, v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19764F2F8(0, v35[2] + 1, 1, v35, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v35 = v38;
      }

      v37 = v35[2];
      v36 = v35[3];
      if (v37 >= v36 >> 1)
      {
        sub_19764F2F8(v36 > 1, v37 + 1, 1, v35, &qword_1EAF3F750, &qword_19775A960, &qword_1EAF3FE88, &qword_19775DF70);
        v35 = v39;
      }

      v35[2] = v37 + 1;
      sub_19764C774(v45, &v35[5 * v37 + 4]);
    }

    else
    {
      sub_19764CAE4(v43, &qword_1EAF3FFE0, &qword_19775E430);
    }

    v34 += 40;
  }

  while (v34 != 192);
  swift_setDeallocating();
  sub_19764D558(&qword_1EAF3FFE0, &qword_19775E430);
  sub_197649FEC(v35, &v46);

  swift_beginAccess();
  sub_1976B3258();
  v40 = *(*(a6 + 16) + 16);
  sub_1976B3328(v40);
  v41 = *(a6 + 16);
  *(v41 + 16) = v40 + 1;
  sub_19764C774(&v46, v41 + 40 * v40 + 32);
  *(a6 + 16) = v41;
  swift_endAccess();
  sub_19764CAE4(v50, &qword_1EAF3FFF0, &qword_19775E440);
  __swift_destroy_boxed_opaque_existential_0(v53);
  return __swift_destroy_boxed_opaque_existential_0(v52);
}

unint64_t sub_1976B3C30()
{
  result = qword_1EAF40008;
  if (!qword_1EAF40008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF40008);
  }

  return result;
}

unint64_t sub_1976B3C88()
{
  result = qword_1EAF40010;
  if (!qword_1EAF40010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF40010);
  }

  return result;
}

uint64_t sub_1976B3CDC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1976B3D64(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1976B3E3C(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1976B3EC4(_BYTE *result, unsigned int a2, unsigned int a3)
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

double OUTLINED_FUNCTION_21_4()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_1()
{

  return sub_19764CAE4(v2 - 152, v0, v1);
}

uint64_t OUTLINED_FUNCTION_29_3(void *a1)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, v1);

  return sub_1976C73F8(v1, v2);
}

uint64_t OUTLINED_FUNCTION_32_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);

  return sub_19764CAE4(va, v30, v31);
}

uint64_t OUTLINED_FUNCTION_58_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, __int16 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return sub_1976B35C0(v31 - 112, v30, v29, a17 & 1, 0, 0, v31 - 152, &a29, &a19, 0, 3uLL, a15, a13, a14);
}

void *OUTLINED_FUNCTION_61_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char __dst, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va1, a32);
  va_start(__srca, a32);
  __src = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);

  return memcpy(&__dst, __srca, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_80_1(uint64_t a1)
{

  return sub_19764CAE4(a1, v1, v2);
}

void OUTLINED_FUNCTION_89_1()
{
  v1[18] = 0;
  v1[19] = 0x4C4C554E20544F4ELL;
  v1[20] = 0xE800000000000000;
  v1[21] = v0;
}

uint64_t OUTLINED_FUNCTION_92_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for Expression(0, a1, a3, a4);
}

uint64_t OUTLINED_FUNCTION_94_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for Expression(0, v4, a3, a4);
}

void OUTLINED_FUNCTION_95()
{

  sub_19764C59C(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_99(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t *OUTLINED_FUNCTION_101(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v36 = *(v33 + 8);
  a32 = v34;
  a33 = v36;

  return __swift_allocate_boxed_opaque_existential_1(&a29);
}

uint64_t *OUTLINED_FUNCTION_102(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v38 = *(v35 + 8);
  a34 = v36;
  a35 = v38;

  return __swift_allocate_boxed_opaque_existential_1(&a31);
}

void OUTLINED_FUNCTION_109()
{

  sub_19764C59C(v1, v0, v2);
}

void OUTLINED_FUNCTION_112(uint64_t *a1@<X8>)
{

  sub_197649FEC(v1, a1);
}

void OUTLINED_FUNCTION_114()
{

  sub_19764C59C(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_117(uint64_t a1, uint64_t a2)
{
}

uint64_t OUTLINED_FUNCTION_120()
{
}

uint64_t OUTLINED_FUNCTION_122(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33)
{

  return sub_19764C774(&a33, &a17);
}

uint64_t OUTLINED_FUNCTION_123()
{

  return sub_19774F420();
}

void OUTLINED_FUNCTION_132(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{

  sub_19764F2F8(a1, a2, a3, a4, a5, a6, v6, v7);
}

uint64_t OUTLINED_FUNCTION_133(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_1976B35C0(a1, a2, a3, a4, 0, 0, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t OUTLINED_FUNCTION_134()
{

  return sub_19774F420();
}

uint64_t OUTLINED_FUNCTION_135(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for Expression(0, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_137@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{

  return sub_19764C774(&a10, a1 + 32);
}

uint64_t OUTLINED_FUNCTION_138()
{
}

double OUTLINED_FUNCTION_141()
{
  result = 0.0;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[5] = 0u;
  return result;
}

double OUTLINED_FUNCTION_145()
{
  *(v0 + 264) = 0;
  result = 0.0;
  *(v0 + 248) = 0u;
  *(v0 + 232) = 0u;
  return result;
}

void OUTLINED_FUNCTION_149(__n128 a1, __n128 a2)
{
  v2[10] = a2;
  v2[11] = a1;
  v2[12].n128_u64[0] = v2[22].n128_u64[0];
}

void OUTLINED_FUNCTION_152(__n128 a1)
{
  v1[9] = a1;
  v1[10] = a1;
  v1[11] = a1;
  v1[12] = a1;
  v1[13] = a1;
  v1[14].n128_u64[0] = 0;
}

void *OUTLINED_FUNCTION_164(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char __dst, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va1, a28);
  va_start(__srca, a28);
  __src = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);

  return memcpy(&__dst, __srca, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_165(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  *(v13 + 16) = v16;

  return sub_19764C774(&a13, v13 + v15 * v14 + 32);
}

uint64_t OUTLINED_FUNCTION_166(uint64_t a1, uint64_t a2)
{
}

uint64_t OUTLINED_FUNCTION_167()
{

  return sub_1976B5D38();
}

uint64_t OUTLINED_FUNCTION_168(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);

  return sub_197647660(va, &a33, a3, a4);
}

uint64_t OUTLINED_FUNCTION_169@<X0>(uint64_t a2@<X1>, uint64_t *x8_0@<X8>, uint64_t _0, uint64_t _8, uint64_t _10, uint64_t _18, uint64_t _20, uint64_t _28, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1976B5330(va, a2, 0xE700000000000000, x8_0);
}

uint64_t OUTLINED_FUNCTION_170(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  return sub_197647660(v32 - 176, va, a3, a4);
}

uint64_t OUTLINED_FUNCTION_171()
{
}

uint64_t *OUTLINED_FUNCTION_172@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 192) = v1;
  *(v2 - 184) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 216));
}

uint64_t OUTLINED_FUNCTION_173(uint64_t a1, uint64_t a2)
{
}

uint64_t OUTLINED_FUNCTION_174()
{
}

uint64_t OUTLINED_FUNCTION_175(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  return sub_197647660(v32 - 224, va, a3, a4);
}

uint64_t *OUTLINED_FUNCTION_176@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 200) = v1;
  *(v2 - 192) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 224));
}

uint64_t OUTLINED_FUNCTION_177()
{
}

uint64_t OUTLINED_FUNCTION_179()
{

  return sub_19764D558(v0, v1);
}

uint64_t OUTLINED_FUNCTION_180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  return sub_19764E1F4(a16, va);
}

uint64_t OUTLINED_FUNCTION_181()
{

  return sub_19764C774((v0 + 320), v0 + 80);
}

uint64_t sub_1976B49C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_19764AD60(0, v1, 0);
    v3 = (a1 + 32);
    sub_1976B4C2C();
    do
    {
      v4 = *v3++;
      v5 = v4 >= 0x10;
      if (v4 >= 0x10)
      {
        v6 = 0;
      }

      else
      {
        v6 = 48;
      }

      if (v5)
      {
        v7 = 0xE000000000000000;
      }

      else
      {
        v7 = 0xE100000000000000;
      }

      v8 = sub_19774F080();
      v10 = v9;

      MEMORY[0x19A8E4C40](v8, v10);

      v12 = *(v16 + 16);
      v11 = *(v16 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_19764AD60((v11 > 1), v12 + 1, 1);
      }

      *(v16 + 16) = v12 + 1;
      v13 = v16 + 16 * v12;
      *(v13 + 32) = v6;
      *(v13 + 40) = v7;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FF30, &unk_19775A950);
  sub_1976A7CC8();
  v14 = sub_19774EEB0();

  return v14;
}

uint64_t sub_1976B4B5C(uint64_t a1)
{
  v1 = sub_1976B49C8(a1);
  MEMORY[0x19A8E4C40](v1);

  MEMORY[0x19A8E4C40](39, 0xE100000000000000);
  return 10104;
}

uint64_t sub_1976B4BD0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1976B4C2C()
{
  result = qword_1EAF40048;
  if (!qword_1EAF40048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF40048);
  }

  return result;
}

uint64_t sub_1976B4C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1976B4E18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1976B4CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1976B4F28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1976B4CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1976B5030(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1976B4CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1976B5148(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1976B4D00(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1976B4118((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FE88, &qword_19775DF70);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1976B4E18(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40060, &qword_19775E6D8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1976B4114((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40068, &unk_19775E6E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1976B4F28(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40018, &qword_19775E6D0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 80);
      if (v5)
      {
LABEL_13:
        sub_1976B3584((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1976B5030(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40028, &qword_19775E5F0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1976B4118((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40030, &qword_19775E5F8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1976B5148(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40050, &qword_19775E6B8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1976B4114((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40058, &unk_19775E6C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1976B5258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v17 = a2;
  v18 = a3;

  MEMORY[0x19A8E4C40](32, 0xE100000000000000);
  v6 = v17;
  v7 = v18;
  sub_197649FEC(a1, &v17);
  v8 = v19;
  v9 = v20;
  v10 = __swift_project_boxed_opaque_existential_0Tm(&v17, v19);
  v11 = sub_1976B5B74(v10, v6, v7, v8, v9);
  v13 = v12;
  v15 = v14;

  __swift_destroy_boxed_opaque_existential_0(&v17);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  a4[3] = result;
  a4[4] = &off_1F0BBB748;
  *a4 = v11;
  a4[1] = v13;
  a4[2] = v15;
  return result;
}

uint64_t sub_1976B5330@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{

  MEMORY[0x19A8E4C40](32, 0xE100000000000000);
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  v9 = sub_1976B5B74(v8, a2, a3, v6, v7);
  v11 = v10;
  v13 = v12;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  a4[3] = result;
  a4[4] = &off_1F0BBB748;
  *a4 = v9;
  a4[1] = v11;
  a4[2] = v13;
  return result;
}

void sub_1976B53EC(void *a1, uint64_t a2, uint64_t a3)
{

  MEMORY[0x19A8E4C40](40, 0xE100000000000000);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v4);
  v6 = *(v5 + 8);
  v7 = v6(v4, v5);
  v9 = v8;

  MEMORY[0x19A8E4C40](v7, v9);

  MEMORY[0x19A8E4C40](41, 0xE100000000000000);
  v6(v4, v5);

  nullsub_1();
}

uint64_t sub_1976B551C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A850;
  sub_19764E1F4(a1, inited + 32);
  sub_19764E1F4(a2, inited + 72);
  v13 = sub_1976B55F4(inited, v9, a4, a5, a6);
  swift_setDeallocating();
  sub_19764F1B0();
  return v13;
}

uint64_t sub_1976B55F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Expression(0, a5, a3, a4);
  v21 = 32;
  v22 = 0xE100000000000000;
  MEMORY[0x19A8E4C40](a3, a4);
  MEMORY[0x19A8E4C40](32, 0xE100000000000000);
  sub_197649FEC(a1, &v21);

  v10 = v24;
  v11 = v25;
  __swift_project_boxed_opaque_existential_0Tm(&v21, v24);
  v20[0] = (v11[1])(v10, v11);
  v20[1] = v12;
  v20[2] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_19764B5C8(&qword_1EAF3F410, &qword_1EAF3FFC0, &qword_19775E1D8, &unk_19775F060);
  sub_19764B658(v20, v9, v14, WitnessTable, v16);
  __swift_destroy_boxed_opaque_existential_0(&v21);
  v17 = v26;
  if (a2)
  {
    v24 = v9;
    v25 = &off_1F0BBB748;
    v21 = v26;
    v22 = v27;
    v23 = v28;
    sub_1976B53EC(&v21, 0, 0xE000000000000000);
    v17 = v18;
    __swift_destroy_boxed_opaque_existential_0(&v21);
  }

  return v17;
}

uint64_t sub_1976B57AC(uint64_t a1)
{
  sub_19765079C(a1, &v8);
  if (v9)
  {
    sub_19764C774(&v8, v10);
    sub_19764E1F4(v10, &v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F768, &unk_19775E730);
    if (swift_dynamicCast())
    {
      v6 = 10104;
      v7 = 0xE200000000000000;
      v1 = sub_1976B49C8(v5);
      MEMORY[0x19A8E4C40](v1);

      MEMORY[0x19A8E4C40](39, 0xE100000000000000);

      v2 = 10104;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        sub_19764C774(&v8, &v6);
        sub_19774F6E0();
        v2 = 0;
        __swift_destroy_boxed_opaque_existential_0(&v6);
        v3 = v10;
        goto LABEL_9;
      }

      v2 = sub_1976497AC(39, 0xE100000000000000, v6, v7);
    }

    __swift_destroy_boxed_opaque_existential_0(v10);
    v3 = &v8;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v3);
    return v2;
  }

  sub_1976B5CD0(&v8);
  return 1280070990;
}

uint64_t sub_1976B5940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14[-v9 - 8];
  v11 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v11);
  sub_19764E1F4(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F768, &unk_19775E730);
  swift_dynamicCast();
  (*(a3 + 48))(v10, a2, a3);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return swift_dynamicCast();
}

uint64_t sub_1976B5B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_19765079C(a1, v7);
  if (v8)
  {
    sub_1976B5940(v7, a2, a3);
    return __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1976B5B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v17 = a2;

  MEMORY[0x19A8E4C40](40, 0xE100000000000000);
  v10 = v19;
  v11 = v20;
  __swift_project_boxed_opaque_existential_0Tm(v18, v19);
  v12 = *(a5 + 8);
  v13 = v12(a4, a5);
  v15 = v14;

  MEMORY[0x19A8E4C40](v13, v15);

  MEMORY[0x19A8E4C40](41, 0xE100000000000000);
  v12(v10, v11);

  __swift_destroy_boxed_opaque_existential_0(v18);
  return v17;
}

uint64_t sub_1976B5CD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1976B5D3C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_45_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1976D62B0(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_67_2();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v6 + 40 * v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF3FEB0, &unk_19775A8C0);
  OUTLINED_FUNCTION_133_0(v9 + 32, v11, v12, v10);

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v13 = *(v6 + 16);
  v5 = __OFADD__(v13, v1);
  v14 = v13 + v1;
  if (!v5)
  {
    *(v6 + 16) = v14;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1976B5DF8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_45_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1976D62C8(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_67_2();
  if (v10 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_133_0(v6 + 16 * v9 + 32, v7, v8, MEMORY[0x1E69E6158]);

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1976B5E98(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_45_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1976D62E0(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_67_2();
  if (v10 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_133_0(v6 + 80 * v9 + 32, v7, v8, &type metadata for Setter);

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1976B5F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1976B5FE8(a4);
  v11 = sub_1976B551C(a1, a2, a3, v9, v10, a5);

  return v11;
}

uint64_t sub_1976B5FE8(char a1)
{
  result = 43;
  switch(a1)
  {
    case 1:
      result = 45;
      break;
    case 2:
      result = 21071;
      break;
    case 3:
      result = 4476481;
      break;
    case 4:
      result = 542396238;
      break;
    case 5:
      result = 42;
      break;
    case 6:
      result = 47;
      break;
    case 7:
      result = 37;
      break;
    case 8:
      result = 15420;
      break;
    case 9:
      result = 15934;
      break;
    case 10:
      result = 38;
      break;
    case 11:
      result = 124;
      break;
    case 12:
      result = 126;
      break;
    case 13:
      result = 61;
      break;
    case 14:
      result = 15649;
      break;
    case 15:
      result = 62;
      break;
    case 16:
      result = 60;
      break;
    case 17:
      result = 15678;
      break;
    case 18:
      result = 15676;
      break;
    case 19:
      result = 31868;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1976B60DC(void *a1, char a2)
{
  v3 = sub_1976B5FE8(a2);
  sub_1976B53EC(a1, v3, v4);
  v6 = v5;

  return v6;
}

void sub_1976B642C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, _UNKNOWN **a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, _UNKNOWN **a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  OUTLINED_FUNCTION_41_3();
  a49 = v52;
  a50 = v53;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = a51;
  v67 = a52;
  a36 = __swift_instantiateConcreteTypeFromMangledNameV2(v68, v69);
  a37 = &off_1F0BBB748;
  a33 = v65;
  a34 = v63;
  a35 = v61;
  a31 = a36;
  a32 = &off_1F0BBB748;
  a28 = v59;
  a29 = v57;
  a30 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  v71 = OUTLINED_FUNCTION_73_2(inited, xmmword_19775A850);
  sub_19764E1F4(v71, &inited[2]);
  sub_19764E1F4(&a28, &inited[4].n128_i64[1]);
  OUTLINED_FUNCTION_35_4();
  a9 = v72;
  a10 = v73;

  MEMORY[0x19A8E4C40](v66, v67);
  OUTLINED_FUNCTION_71_2();
  sub_197649FEC(inited, &a9);

  v74 = OUTLINED_FUNCTION_1_20(&a9);
  v75(v74);
  OUTLINED_FUNCTION_15_6();
  __swift_destroy_boxed_opaque_existential_0(&a9);
  v76 = OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_103_0(v76, v77, v78, v79, v80);
  OUTLINED_FUNCTION_19_5();

  swift_setDeallocating();
  sub_19764F1B0();
  __swift_destroy_boxed_opaque_existential_0(&a28);
  OUTLINED_FUNCTION_14_6(&a33);
  OUTLINED_FUNCTION_40_3();
}

uint64_t sub_1976B6EB4(uint64_t a1)
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_83_1(v2, v3, v4, v5, v6, v7, v8, v9, v28, v29, v30, v31, v32, *v33, *&v33[8], *&v33[16], *&v33[24], *&v33[32]);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_92_1();
  v11 = v10();
  OUTLINED_FUNCTION_131_0(v11, v12, v13, v14);
  OUTLINED_FUNCTION_55_3();

  v23 = OUTLINED_FUNCTION_10_5(v15, v16, v17, v18, v19, v20, v21, v22, v28, v29, v30, v31, v32, v33[0]);
  sub_1976B5F64(v23, v24, v25, v26, v1);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(&v28);
  return OUTLINED_FUNCTION_5_9(v33);
}

uint64_t sub_1976B6F5C(uint64_t a1)
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_83_1(v1, v2, v3, v4, v5, v6, v7, v8, v27, v28, v29, v30, v31, *v32, *&v32[8], *&v32[16], *&v32[24], *&v32[32]);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_92_1();
  v9();
  v10 = sub_19774F420();
  OUTLINED_FUNCTION_131_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_55_3();

  v22 = OUTLINED_FUNCTION_10_5(v14, v15, v16, v17, v18, v19, v20, v21, v27, v28, v29, v30, v31, v32[0]);
  sub_1976B5F64(v22, v23, v24, v25, v10);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(&v27);
  return OUTLINED_FUNCTION_5_9(v32);
}

uint64_t sub_1976B700C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_87_2(a1, a2, a3, a4);
  OUTLINED_FUNCTION_125_0();

  sub_1976B60DC(v5, 1);
  OUTLINED_FUNCTION_6();
  return OUTLINED_FUNCTION_5_9(v5);
}

uint64_t sub_1976B706C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  type metadata accessor for Expression(0, v4, v5, v6);
  OUTLINED_FUNCTION_124_0();

  sub_1976B60DC(v8, 1);
  OUTLINED_FUNCTION_6();
  return OUTLINED_FUNCTION_5_9(v8);
}

uint64_t sub_1976B77D4(uint64_t a1)
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_83_1(v2, v3, v4, v5, v6, v7, v8, v9, v28, v29, v30, v31, v32, *v33, *&v33[8], *&v33[16], *&v33[24], *&v33[32]);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_92_1();
  v11 = v10();
  OUTLINED_FUNCTION_131_0(v11, v12, v13, v14);
  OUTLINED_FUNCTION_55_3();

  v23 = OUTLINED_FUNCTION_10_5(v15, v16, v17, v18, v19, v20, v21, v22, v28, v29, v30, v31, v32, v33[0]);
  sub_1976B5F64(v23, v24, v25, v26, v1);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(&v28);
  return OUTLINED_FUNCTION_5_9(v33);
}

uint64_t sub_1976B787C(uint64_t a1)
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_83_1(v1, v2, v3, v4, v5, v6, v7, v8, v27, v28, v29, v30, v31, *v32, *&v32[8], *&v32[16], *&v32[24], *&v32[32]);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_92_1();
  v9();
  v10 = sub_19774F420();
  OUTLINED_FUNCTION_131_0(v10, v11, v12, v13);
  OUTLINED_FUNCTION_55_3();

  v22 = OUTLINED_FUNCTION_10_5(v14, v15, v16, v17, v18, v19, v20, v21, v27, v28, v29, v30, v31, v32[0]);
  sub_1976B5F64(v22, v23, v24, v25, v10);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(&v27);
  return OUTLINED_FUNCTION_5_9(v32);
}

uint64_t sub_1976B799C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_87_2(a1, a2, a3, a4);
  OUTLINED_FUNCTION_125_0();

  sub_1976B60DC(v5, 12);
  OUTLINED_FUNCTION_6();
  return OUTLINED_FUNCTION_5_9(v5);
}

void sub_1976B7A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t (*a25)(void), uint64_t (*a26)(uint64_t), uint64_t (*a27)(uint64_t), void (*a28)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_117_0();
  v29 = v28;
  OUTLINED_FUNCTION_4_7();
  v30 = a25();
  v39 = a26(v30);
  v32 = v31;
  v34 = v33;

  v35 = OUTLINED_FUNCTION_44_3();
  v36 = a27(v35);
  a28(v39, v32, v34, v36, v37, v38, v29);

  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_116_0();
}

uint64_t sub_1976B7B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  type metadata accessor for Expression(0, v4, v5, v6);
  OUTLINED_FUNCTION_124_0();

  sub_1976B60DC(v8, 12);
  OUTLINED_FUNCTION_6();
  return OUTLINED_FUNCTION_5_9(v8);
}

uint64_t sub_1976B87E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v70 = a8;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  OUTLINED_FUNCTION_91_1();
  v15 = sub_19774F420();
  OUTLINED_FUNCTION_61();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_76_2();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v68 - v20;
  OUTLINED_FUNCTION_61();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v21, a1, v15);
  if (__swift_getEnumTagSinglePayload(v21, 1, a5) == 1)
  {
    v27 = (*(v17 + 8))(v21, v15);
    v31 = OUTLINED_FUNCTION_94_0(v27, v28, v29, v30);
    OUTLINED_FUNCTION_119_0();
    v81 = v31;
    v82 = &off_1F0BBB748;
    OUTLINED_FUNCTION_49_3();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_48_3();
    swift_getWitnessTable();
    sub_1976C7578(v11, v31, WitnessTable, a6, v80);
    v78 = v31;
    v79 = &off_1F0BBB748;
    OUTLINED_FUNCTION_111_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    v34 = OUTLINED_FUNCTION_73_2(inited, xmmword_19775A850);
    sub_19764E1F4(v34, &inited[2]);
    sub_19764E1F4(v77, &inited[4].n128_i64[1]);
    OUTLINED_FUNCTION_35_4();
    v74 = v35;
    v75 = v36;

    MEMORY[0x19A8E4C40](a10, a11);
    OUTLINED_FUNCTION_71_2();
    OUTLINED_FUNCTION_115_0();
    sub_197649FEC(inited, v37);

    __swift_project_boxed_opaque_existential_0Tm(&v74, v76);
    OUTLINED_FUNCTION_34();
    v38 = OUTLINED_FUNCTION_110();
    v39(v38);
    __swift_destroy_boxed_opaque_existential_0(&v74);
    OUTLINED_FUNCTION_33();
    sub_19764BD90(v40, v41, v42, v43, v44, v45, v46);

    swift_setDeallocating();
    sub_19764F1B0();
  }

  else
  {
    v69 = v23;
    (*(v23 + 32))(v26, v21, a5);
    v47 = *(a6 + 8);
    v81 = a5;
    v82 = v47;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v80);
    v49 = (*(v23 + 16))(boxed_opaque_existential_1, v26, a5);
    v78 = OUTLINED_FUNCTION_94_0(v49, v50, v51, v52);
    v79 = &off_1F0BBB748;
    OUTLINED_FUNCTION_111_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    v53 = swift_initStackObject();
    v54 = OUTLINED_FUNCTION_73_2(v53, xmmword_19775A850);
    sub_19764E1F4(v54, &v53[2]);
    sub_19764E1F4(v77, &v53[4].n128_i64[1]);
    OUTLINED_FUNCTION_35_4();
    v74 = v55;
    v75 = v56;

    MEMORY[0x19A8E4C40](v70, a9);
    OUTLINED_FUNCTION_71_2();
    OUTLINED_FUNCTION_115_0();
    sub_197649FEC(v53, v57);

    __swift_project_boxed_opaque_existential_0Tm(&v74, v76);
    OUTLINED_FUNCTION_34();
    v58 = OUTLINED_FUNCTION_110();
    v59(v58);
    OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_33();
    sub_19764BD90(v60, v61, v62, v63, v64, v65, v66);

    swift_setDeallocating();
    sub_19764F1B0();
    (*(v69 + 8))(v26, a5);
  }

  __swift_destroy_boxed_opaque_existential_0(v77);
  __swift_destroy_boxed_opaque_existential_0(v80);
  return OUTLINED_FUNCTION_110();
}

uint64_t sub_1976B9658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_120_0();

  MEMORY[0x19A8E4C40](0xD000000000000010, 0x8000000197761CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A850;
  v11 = *(a6 + 56);
  OUTLINED_FUNCTION_72_2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(inited + 56) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(inited + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  v11(a5, a6);
  sub_19774EEC0();
  *(inited + 96) = AssociatedTypeWitness;
  *(inited + 104) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((inited + 72));
  v11(a5, a6);

  sub_1976B5D3C(inited);
  return a2;
}

void sub_1976B9808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  OUTLINED_FUNCTION_41_3();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  OUTLINED_FUNCTION_120_0();

  MEMORY[0x19A8E4C40](0x4E41203F203D3E20, 0xEA00000000002044);
  MEMORY[0x19A8E4C40](v57, v55);
  MEMORY[0x19A8E4C40](1059077152, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A780;
  v59 = *(v51 + 56);
  OUTLINED_FUNCTION_77_2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(inited + 56) = AssociatedTypeWitness;
  OUTLINED_FUNCTION_110_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(inited + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));

  v62 = OUTLINED_FUNCTION_91();
  v59(v62);

  sub_1976B5D3C(inited);
  sub_1976B5D3C(v53);
  v63 = swift_initStackObject();
  *(v63 + 16) = xmmword_19775A780;
  sub_19774F260();
  *(v63 + 56) = AssociatedTypeWitness;
  *(v63 + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((v63 + 32));
  v64 = OUTLINED_FUNCTION_91();
  v59(v64);
  sub_1976B5D3C(v63);
  OUTLINED_FUNCTION_40_3();
}

uint64_t sub_1976B9A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  MEMORY[0x19A8E4C40](a10, a11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F760, qword_19775F320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A780;
  v13 = *(a6 + 56);
  *(inited + 56) = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_91();
  *(inited + 64) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  v14 = OUTLINED_FUNCTION_110_0();
  v13(v14);

  sub_1976B5D3C(inited);
  return a2;
}

uint64_t sub_1976B9BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_19764CAC4(0, v1, 0);
    v2 = v15;
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      v15 = v2;
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_19764CAC4(v9 > 1, v8 + 1, 1);
        v2 = v15;
      }

      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFF8, &qword_19775E448);
      v14 = &off_1F0BBB748;
      *&v11 = v6;
      *(&v11 + 1) = v5;
      v12 = v7;
      *(v2 + 16) = v8 + 1;
      sub_19764C774(&v11, v2 + 40 * v8 + 32);
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1976B9CDC(uint64_t a1)
{
  sub_1976B9BC0(a1);
  OUTLINED_FUNCTION_11_6();
  v1 = OUTLINED_FUNCTION_110_0();
  MEMORY[0x19A8E4C40](v1);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31_3(v2, v3, v4, v5, v6, v7, v8, v9, v17, v18[0], v18[1]);

  v10 = OUTLINED_FUNCTION_3_11(v18);
  v11(v10);
  OUTLINED_FUNCTION_18_6();
  v12 = __swift_destroy_boxed_opaque_existential_0(v18);
  OUTLINED_FUNCTION_16_6(v12, v13, v14, v15, v16, &qword_1EAF3FFF8, &qword_19775E448);
  OUTLINED_FUNCTION_15_6();

  OUTLINED_FUNCTION_75();
}

uint64_t OUTLINED_FUNCTION_19_5()
{
}

void OUTLINED_FUNCTION_21_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  sub_197649FEC(v11, &a10);
}

uint64_t OUTLINED_FUNCTION_29_4()
{
}

uint64_t *OUTLINED_FUNCTION_30_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = a1;
  a12 = a2;
  a8 = v16;
  a9 = v15;
  a10 = v14;
  v18 = *(v12 + 8);
  a6 = v13;
  a7 = v18;

  return __swift_allocate_boxed_opaque_existential_1(&a3);
}

void OUTLINED_FUNCTION_32_4()
{

  JUMPOUT(0x19A8E4C40);
}

uint64_t OUTLINED_FUNCTION_62_1()
{
}

uint64_t OUTLINED_FUNCTION_74_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for Expression(0, a1, a3, a4);
}

uint64_t OUTLINED_FUNCTION_78_2()
{
}

void OUTLINED_FUNCTION_80_2()
{

  JUMPOUT(0x19A8E4C40);
}

uint64_t OUTLINED_FUNCTION_81_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v5 - 96) = result;
  *(v5 - 88) = a2;
  *(v5 - 120) = v4;
  *(v5 - 112) = v3;
  *(v5 - 104) = v2;
  return result;
}

uint64_t *OUTLINED_FUNCTION_83_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(a6 + 8);
  a17 = a5;
  a18 = v19;

  return __swift_allocate_boxed_opaque_existential_1(&a14);
}

uint64_t OUTLINED_FUNCTION_85_2(uint64_t result)
{
  *(v5 - 96) = result;
  *(v5 - 88) = v4;
  *(v5 - 120) = v3;
  *(v5 - 112) = v2;
  *(v5 - 104) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_86_2(uint64_t result)
{
  *(v5 - 96) = result;
  *(v5 - 88) = v4;
  *(v5 - 120) = v1;
  *(v5 - 112) = v3;
  *(v5 - 104) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_95_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return sub_19764E1F4(va, v28 + 72);
}

uint64_t OUTLINED_FUNCTION_98_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return type metadata accessor for Expression(0, a7, a3, a4);
}

uint64_t OUTLINED_FUNCTION_99_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_19774F420();
}

uint64_t OUTLINED_FUNCTION_103_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_19764BD90(a1, a2, a3, a4, a5, v6, v5);
}

void OUTLINED_FUNCTION_118_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  sub_197649FEC(v10, &a9);
}

uint64_t OUTLINED_FUNCTION_119_0()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_120_0()
{
  *(v0 - 104) = 0;
  *(v0 - 96) = 0xE000000000000000;

  return sub_19774F5B0();
}

uint64_t OUTLINED_FUNCTION_122_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{

  return sub_1976B9A7C(a1, a2, a3, a4, a5, a6, a7, a8, a9, v9 & 0xFFFF00000000FFFFLL | 0x3F203D0000, v10);
}

void OUTLINED_FUNCTION_123_0()
{

  JUMPOUT(0x19A8E4C40);
}

uint64_t OUTLINED_FUNCTION_124_0()
{
}

uint64_t OUTLINED_FUNCTION_125_0()
{
}

uint64_t OUTLINED_FUNCTION_126_0()
{
}

uint64_t OUTLINED_FUNCTION_131_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for Expression(0, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_132_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return sub_19764E1F4(va, v28 + 72);
}

uint64_t OUTLINED_FUNCTION_133_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

void sub_1976BABD8(char a1@<W0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  if (a1)
  {
    OUTLINED_FUNCTION_63_3();
    sub_197649C2C();
    OUTLINED_FUNCTION_69_3();

    sub_197649C34();
  }

  else
  {
    v6 = *(a2 + 16);
    v7 = OUTLINED_FUNCTION_63_3();
    v6(v7);
    v8 = v13[4];
    v9 = v13[5];

    sub_19764AB24(v13);
    if (!v9)
    {
      v10 = OUTLINED_FUNCTION_63_3();
      v6(v10);
      v8 = v15;
      v9 = v16;

      sub_19764AB24(v14);
    }

    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    a3[4] = &off_1F0BBB748;
    v11 = OUTLINED_FUNCTION_108();
    sub_1976497AC(v11, v12, v8, v9);
    OUTLINED_FUNCTION_21();

    *a3 = v3;
    a3[1] = v8;
    a3[2] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_69_3();
  }
}

uint64_t sub_1976BAD04(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_19764AD60(0, v5, 0);
  v6 = v19;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_19764AD60((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1976BAEA4()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  OUTLINED_FUNCTION_35_5();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  v5 = OUTLINED_FUNCTION_44_4(v4);
  *(v5 + 16) = xmmword_19775A780;
  v6 = OUTLINED_FUNCTION_33_5();
  v7 = v3(v6);
  v9 = v8;
  v11 = v10;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(v5 + 64) = &off_1F0BBB748;
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  *(v5 + 48) = v11;
  OUTLINED_FUNCTION_47_3();
  v1();
  OUTLINED_FUNCTION_43();
}

void *sub_1976BAFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  v11 = OUTLINED_FUNCTION_44_4(v10);
  *(v11 + 16) = xmmword_19775A780;
  v12 = OUTLINED_FUNCTION_59_3();
  *(v11 + 56) = type metadata accessor for Expression(v12, v13, v14, v15);
  *(v11 + 64) = &off_1F0BBB748;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  v16 = OUTLINED_FUNCTION_59_3();
  v20 = type metadata accessor for ScalarQuery(v16, v17, v18, v19);
  v21 = *(a4 + 8);

  v22 = OUTLINED_FUNCTION_67_3();
  sub_19764B990(v22, v23, v24, v20, v21, v25);

  memcpy(__dst, __src, sizeof(__dst));
  return memcpy(a5, __dst, 0xB0uLL);
}

void *sub_1976BB0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_35_5();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  v15 = OUTLINED_FUNCTION_44_4(v14);
  *(v15 + 16) = xmmword_19775A780;
  v16 = sub_19774F420();
  *(v15 + 56) = type metadata accessor for Expression(0, v16, v17, v18);
  *(v15 + 64) = &off_1F0BBB748;
  *(v15 + 32) = v11;
  *(v15 + 40) = v9;
  *(v15 + 48) = v6;
  v21 = type metadata accessor for ScalarQuery(0, v16, v19, v20);
  v22 = *(a6 + 8);

  v23 = OUTLINED_FUNCTION_67_3();
  sub_19764B990(v23, v24, v25, v21, v22, v26);

  memcpy(__dst, __src, sizeof(__dst));
  return memcpy(v13, __dst, 0xB0uLL);
}

void *sub_1976BB1D8()
{
  OUTLINED_FUNCTION_65();
  v2 = v1;
  sub_1976C2170(42, 0xE100000000000000, MEMORY[0x1E69E7CC0], 0x746E756F63, 0xE500000000000000);
  OUTLINED_FUNCTION_64_3();
  sub_1976BAF7C(v3, v4, v5, v0, v7);

  return memcpy(v2, v7, 0xB0uLL);
}

uint64_t sub_1976BB284()
{
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_12_7();
  v2 = v1();
  v10 = OUTLINED_FUNCTION_62_2(v2, v3, v4, v5, v6, v7, v8, v9, v21[0]);
  v12 = v11(v10);
  v14 = v13;
  sub_1976B3234(v12, v13, v15, v16, v17);
  v18 = *(*(v14 + 168) + 16);
  sub_1976B3304(v18);
  v19 = *(v14 + 168);
  *(v19 + 16) = v18 + 1;
  sub_19764F298(v0, v19 + 40 * v18 + 32);
  return v12(v21, 0);
}

uint64_t sub_1976BB388()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (v6)
  {
    v14 = v1;
    v15 = v0;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  sub_19764C5E0(v11, v9, v15, v7, v14, v5, v3, v13);
  OUTLINED_FUNCTION_43();

  return sub_1976C1A40(v16, v17);
}

void sub_1976BB434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_70_3();
  a45 = v46;
  a46 = v47;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  OUTLINED_FUNCTION_46();
  (*(v60 + 16))(v59, v62, v61);
  v63 = OUTLINED_FUNCTION_63_3();
  v64(v63);
  v65 = a24;
  v66 = OUTLINED_FUNCTION_43_3();
  sub_19764C59C(v66, v67, v68);
  sub_19764AB24(&a13);

  if (v65)
  {
    v69 = OUTLINED_FUNCTION_43_3();
    v57 = sub_1976B9F04(v69, v70, v71, v57, v55, v53);
    v55 = v72;
    v53 = v73;
    v74 = OUTLINED_FUNCTION_43_3();
    sub_1976C1A40(v74, v75);
  }

  v76 = (*(v49 + 32))(&a9, v51, v49);
  v78 = v77[10];
  v79 = v77[11];
  v77[10] = v57;
  v77[11] = v55;
  v77[12] = v53;
  sub_1976C1A40(v78, v79);
  v76(&a9, 0);
  OUTLINED_FUNCTION_68_3();
}

uint64_t sub_1976BB5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 16))(a7, v7, a5);
  v14 = *(a6 + 32);

  sub_19764C59C(a2, a3, a4);
  v15 = v14(v21, a5, a6);
  v17 = v16[13];
  v18 = v16[14];
  v19 = v16[15];
  v16[13] = a1;
  v16[14] = a2;
  v16[15] = a3;
  v16[16] = a4;
  sub_1976C231C(v17, v18, v19);
  return v15(v21, 0);
}

uint64_t sub_1976BB6C0()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_35_5();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  v13 = OUTLINED_FUNCTION_44_4(v12);
  *(v13 + 16) = xmmword_19775A780;
  sub_19764F298(v9, v13 + 32);
  sub_1976BB5B4(v13, v7, v1, v0, v5, v3, v11);
  OUTLINED_FUNCTION_43();
}

uint64_t sub_1976BB770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_12_7();
  v5();
  v6 = *(a3 + 32);

  v15 = OUTLINED_FUNCTION_62_2(v7, v8, v9, v10, v11, v12, v13, v14, v19[0]);
  v16 = v6(v15);
  *(v17 + 136) = v3;

  return v16(v19, 0);
}

uint64_t sub_1976BB844@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 16))(a7, v7, a5);
  v14 = a4 & 1;
  v16 = a2 & 1;
  v15 = (a2 & 1) == 0;
  if (a2)
  {
    v17 = 0;
  }

  else
  {
    v17 = a1;
  }

  if (v15)
  {
    v18 = v14;
  }

  else
  {
    a3 = 0;
    v18 = 0;
  }

  v19 = (*(a6 + 32))(v22, a5, a6);
  *(v20 + 144) = v17;
  *(v20 + 152) = a3;
  *(v20 + 160) = v18;
  *(v20 + 161) = v16;
  return v19(v22, 0);
}

uint64_t sub_1976BB950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A860;
  v6 = *(a2 + 16);
  v6(v14, a1, a2);
  sub_19764AB24(v14);
  if (LOBYTE(v14[0]))
  {
    v7 = 0x44205443454C4553;
  }

  else
  {
    v7 = 0x5443454C4553;
  }

  if (LOBYTE(v14[0]))
  {
    v8 = 0xEF54434E49545349;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  v10 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v9;
  v6(v15, a1, a2);
  v11 = v15[1];

  sub_19764AB24(v15);
  sub_197649FEC(v11, (inited + 72));

  *(inited + 136) = v9;
  *(inited + 144) = &off_1F0BBB748;
  *(inited + 112) = 1297044038;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = v10;
  sub_197649C34();
  sub_197649FEC(inited, a3);
  swift_setDeallocating();
  return sub_19764F1B0();
}

uint64_t sub_1976BBB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v32);
  v7 = v33;
  v37 = v33;

  sub_19764AB24(v32);
  v8 = *(v7 + 16);
  result = sub_19764CB44(&v37, &unk_1EAF401A0);
  if (v8)
  {
    (v6)(v34, a1, a2);
    v10 = v35;
    v36 = v35;

    sub_19764AB24(v34);
    v11 = *(v10 + 16);
    if (v11)
    {
      v25 = a3;
      v31 = MEMORY[0x1E69E7CC0];
      sub_19764CAC4(0, v11, 0);
      v12 = 0;
      v13 = v31;
      v14 = v10 + 32;
      v26 = v10;
      while (v12 < *(v10 + 16))
      {
        sub_197650334();
        sub_19764FF5C(v28);
        sub_19764CB44(&v27, &qword_1EAF40040);
        v15 = v11;
        v31 = v13;
        v17 = *(v13 + 16);
        v16 = *(v13 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_19764CAC4(v16 > 1, v17 + 1, 1);
        }

        ++v12;
        v18 = v29;
        v19 = v30;
        v20 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
        MEMORY[0x1EEE9AC00](v20);
        v22 = &v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v23 + 16))(v22);
        sub_19764CBEC(v17, v22, &v31, v18, v19);
        __swift_destroy_boxed_opaque_existential_0(v28);
        v13 = v31;
        v14 += 88;
        v11 = v15;
        v10 = v26;
        if (v15 == v12)
        {
          sub_19764CB44(&v36, &unk_1EAF401A0);
          a3 = v25;
          goto LABEL_11;
        }
      }

      __break(1u);

      __break(1u);
    }

    else
    {
      sub_19764CB44(&v36, &unk_1EAF401A0);
      v13 = MEMORY[0x1E69E7CC0];
LABEL_11:
      sub_197649FEC(v13, a3);
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1976BBDF0(char a1)
{
  result = 0x53534F5243;
  switch(a1)
  {
    case 1:
      result = 0x52454E4E49;
      break;
    case 2:
      result = 0x54554F205446454CLL;
      break;
    case 3:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

double sub_1976BBE60@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v9);
  v12 = v10;
  v13 = v11;
  sub_197650334();
  sub_19764AB24(v9);
  v3 = *(&v12 + 1);
  if (*(&v12 + 1))
  {
    v4 = v13;
    v5 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A850;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    *(inited + 64) = &off_1F0BBB748;
    *(inited + 32) = 0x4552454857;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = v7;
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
    *(inited + 104) = &off_1F0BBB748;
    *(inited + 72) = v5;
    *(inited + 80) = v3;
    *(inited + 88) = v4;
    sub_197649FEC(inited, a2);
    swift_setDeallocating();
    sub_19764F1B0();
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1976BBFBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v13);
  v16 = v14;
  v17 = v15;
  sub_197650334();
  result = sub_19764AB24(v13);
  v4 = v16;
  if (v16)
  {
    v5 = *(&v16 + 1);
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A850;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    *(inited + 64) = &off_1F0BBB748;
    *(inited + 32) = 0x59422050554F5247;
    *(inited + 40) = 0xE800000000000000;
    v8 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = v7;
    sub_197649FEC(v4, (inited + 72));
    sub_197649FEC(inited, v12);
    swift_setDeallocating();
    sub_19764F1B0();

    if (v11)
    {
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_19775A850;
      sub_19764F298(v12, v9 + 32);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_19775A850;
      *(v10 + 56) = v7;
      *(v10 + 64) = &off_1F0BBB748;
      *(v10 + 32) = 0x474E49564148;
      *(v10 + 40) = 0xE600000000000000;
      *(v10 + 48) = v8;
      *(v10 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40000, &unk_19775E450);
      *(v10 + 104) = &off_1F0BBB748;
      *(v10 + 72) = v5;
      *(v10 + 80) = v11;
      sub_197649FEC(v10, (v9 + 72));
      swift_setDeallocating();
      sub_19764F1B0();
      sub_197649FEC(v9, a2);
      swift_setDeallocating();
      sub_19764F1B0();
      return __swift_destroy_boxed_opaque_existential_0(v12);
    }

    else
    {
      return sub_19764C774(v12, a2);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1976BC210@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v13);
  v7 = v14;
  v16 = v14;

  sub_19764AB24(v13);
  v8 = *(v7 + 16);
  sub_19764CB44(&v16, &qword_1EAF40068);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19775A850;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    *(inited + 64) = &off_1F0BBB748;
    *(inited + 32) = 0x594220524544524FLL;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = v10;
    (v6)(v15, a1, a2);
    v11 = v15[17];

    sub_19764AB24(v15);
    sub_197649FEC(v11, (inited + 72));

    sub_197649FEC(inited, a3);
    swift_setDeallocating();
    sub_19764F1B0();
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1976BC394@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v10);
  result = sub_19764AB24(v10);
  if (v12)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v4 = v11;
    v5 = sub_19774F7C0();
    MEMORY[0x19A8E4C40](v5);

    if (v4)
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
      *(a2 + 32) = &off_1F0BBB748;
      *a2 = 0x2054494D494CLL;
      *(a2 + 8) = 0xE600000000000000;
      *(a2 + 16) = MEMORY[0x1E69E7CC0];
      *(a2 + 24) = result;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19775A850;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
      *(inited + 64) = &off_1F0BBB748;
      *(inited + 32) = 0x2054494D494CLL;
      *(inited + 40) = 0xE600000000000000;
      v8 = MEMORY[0x1E69E7CC0];
      *(inited + 48) = MEMORY[0x1E69E7CC0];
      *(inited + 56) = v7;
      v9 = sub_19774F7C0();
      MEMORY[0x19A8E4C40](v9);

      *(inited + 96) = v7;
      *(inited + 104) = &off_1F0BBB748;
      *(inited + 72) = 0x2054455346464FLL;
      *(inited + 80) = 0xE700000000000000;
      *(inited + 88) = v8;
      sub_197649FEC(inited, a2);
      swift_setDeallocating();
      return sub_19764F1B0();
    }
  }

  return result;
}

uint64_t sub_1976BC570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v37);
  v7 = v38;
  v42 = v38;

  sub_19764AB24(v37);
  v8 = *(v7 + 16);
  result = sub_19764CB44(&v42, &unk_1EAF40198);
  if (v8)
  {
    (v6)(v39, a1, a2);
    v10 = v40;
    v41 = v40;

    sub_19764AB24(v39);
    v11 = *(v10 + 16);
    if (v11)
    {
      v28 = a3;
      v36 = MEMORY[0x1E69E7CC0];
      sub_19764CAC4(0, v11, 0);
      v12 = v36;
      v13 = v10 + 32;
      v29 = xmmword_19775A850;
      do
      {
        sub_19764F298(v13, v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
        inited = swift_initStackObject();
        *(inited + 16) = v29;
        *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
        *(inited + 64) = &off_1F0BBB748;
        *(inited + 32) = 0x4E4F494E55;
        *(inited + 40) = 0xE500000000000000;
        *(inited + 48) = MEMORY[0x1E69E7CC0];
        v15 = v31;
        v16 = v32;
        v17 = __swift_project_boxed_opaque_existential_0Tm(v30, v31);
        *(inited + 96) = v15;
        *(inited + 104) = *(v16 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
        (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
        sub_197649FEC(inited, v33);
        swift_setDeallocating();
        sub_19764F1B0();
        __swift_destroy_boxed_opaque_existential_0(v30);
        v36 = v12;
        v20 = *(v12 + 16);
        v19 = *(v12 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_19764CAC4(v19 > 1, v20 + 1, 1);
        }

        v21 = v34;
        v22 = v35;
        v23 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
        MEMORY[0x1EEE9AC00](v23);
        v25 = &v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v26 + 16))(v25);
        sub_19764CBEC(v20, v25, &v36, v21, v22);
        __swift_destroy_boxed_opaque_existential_0(v33);
        v12 = v36;
        v13 += 40;
        --v11;
      }

      while (v11);
      sub_19764CB44(&v41, &unk_1EAF40198);
      a3 = v28;
    }

    else
    {
      sub_19764CB44(&v41, &unk_1EAF40198);
      v12 = MEMORY[0x1E69E7CC0];
    }

    sub_197649FEC(v12, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void sub_1976BC8E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_35_5();
  v3 = v2;
  v21 = v4;
  v6 = v5;
  OUTLINED_FUNCTION_46();
  (*(v7 + 16))(v6, v0);
  v8 = *(v1 + 16);
  v9 = OUTLINED_FUNCTION_23_6();
  v8(v9);
  v10 = v24;
  v11 = v25;

  sub_19764AB24(v23);
  v12 = OUTLINED_FUNCTION_23_6();
  v8(v12);
  v13 = v28;
  v20 = v27;

  sub_19764AB24(v26);
  v14 = OUTLINED_FUNCTION_23_6();
  v8(v14);
  sub_19764AB24(v29);
  v15 = v29[64];
  OUTLINED_FUNCTION_47_3();
  v17 = v16();
  v19 = v18;
  *(v18 + 16) = v10;
  *(v18 + 24) = v11;

  *(v19 + 32) = v21;
  *(v19 + 40) = v3;

  *(v19 + 48) = v20;
  *(v19 + 56) = v13;

  *(v19 + 64) = v15;
  v17(v22, 0);
  OUTLINED_FUNCTION_43();
}

uint64_t sub_1976BCA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40018, &qword_19775E6D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A780;
  sub_1976C1A84(a1, inited + 32);

  sub_1976B5E98(v7);
  v8 = OUTLINED_FUNCTION_23_6();
  sub_1976BCB08(v8, v9, a4);
  OUTLINED_FUNCTION_6();

  return OUTLINED_FUNCTION_1_21();
}

uint64_t sub_1976BCB1C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = MEMORY[0x1E69E7CC0];
    v7 = a2 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1976C1A84(v7, &v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19775A780;
      sub_19764F298(&v44, inited + 32);

      sub_19764B840(inited);
      v10 = v6;
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_19775A780;
      sub_19764F298(&v47, v11 + 32);
      *&v43[0] = v8;

      sub_19764B840(v11);

      sub_1976C1B00(&v44);
      v7 += 80;
      --v4;
    }

    while (v4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_19775E740;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(v12 + 56) = v13;
  *(v12 + 64) = &off_1F0BBB748;
  *(v12 + 32) = 0x545245534E49;
  *(v12 + 40) = 0xE600000000000000;
  *(v12 + 48) = v5;
  if (a1 == 5)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    *&v44 = 2118223;
    *(&v44 + 1) = 0xE300000000000000;
    v19 = sub_1976BD854(a1);
    MEMORY[0x19A8E4C40](v19);

    v15 = *(&v44 + 1);
    v14 = v44;
    v18 = &off_1F0BBB748;
    v17 = v13;
    v16 = MEMORY[0x1E69E7CC0];
  }

  *(v12 + 72) = v14;
  *(v12 + 80) = v15;
  *(v12 + 88) = v16;
  *(v12 + 96) = v17;
  *(v12 + 136) = v13;
  *(v12 + 144) = &off_1F0BBB748;
  *(v12 + 104) = v18;
  *(v12 + 112) = 1330925129;
  *(v12 + 120) = 0xE400000000000000;
  *(v12 + 128) = v5;
  sub_197649C2C();
  sub_197649C34();
  sub_197649FEC(v10, &v44);
  __swift_project_boxed_opaque_existential_0Tm(&v44, *(&v45 + 1));
  v20 = sub_1976B5D38();
  v22 = v21;
  v24 = v23;
  __swift_destroy_boxed_opaque_existential_0(&v44);
  *(v12 + 192) = v20;
  *(v12 + 200) = v22;
  *(v12 + 208) = v24;
  *(v12 + 216) = v13;
  *(v12 + 256) = v13;
  *(v12 + 264) = &off_1F0BBB748;
  *(v12 + 224) = &off_1F0BBB748;
  *(v12 + 232) = 0x5345554C4156;
  *(v12 + 240) = 0xE600000000000000;
  *(v12 + 248) = v5;
  sub_197649FEC(v8, &v44);
  __swift_project_boxed_opaque_existential_0Tm(&v44, *(&v45 + 1));
  v25 = sub_1976B5D38();
  v27 = v26;
  v29 = v28;

  __swift_destroy_boxed_opaque_existential_0(&v44);
  *(v12 + 296) = v13;
  *(v12 + 304) = &off_1F0BBB748;
  *(v12 + 272) = v25;
  *(v12 + 280) = v27;
  *(v12 + 288) = v29;
  sub_1976BBE60(a4, v12 + 312);
  for (i = 32; i != 352; i += 40)
  {
    sub_197650334();
    v41[0] = v44;
    v41[1] = v45;
    v42 = v46;
    if (*(&v45 + 1))
    {
      sub_19764C774(v41, v43);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19764F434(0, v5[2] + 1, 1, v5);
        v5 = v33;
      }

      v32 = v5[2];
      v31 = v5[3];
      if (v32 >= v31 >> 1)
      {
        sub_19764F434(v31 > 1, v32 + 1, 1, v5);
        v5 = v34;
      }

      v5[2] = v32 + 1;
      sub_19764C774(v43, &v5[5 * v32 + 4]);
    }

    else
    {
      sub_19764CB44(v41, &qword_1EAF3FFE0);
    }
  }

  swift_setDeallocating();
  sub_1976505C4();
  sub_197649FEC(v5, &v44);

  v35 = *(&v45 + 1);
  v36 = v46;
  __swift_project_boxed_opaque_existential_0Tm(&v44, *(&v45 + 1));
  v37 = (*(v36 + 8))(v35, v36);
  __swift_destroy_boxed_opaque_existential_0(&v44);
  return v37;
}

void sub_1976BD010(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v68 = a1;
    v70 = a3;
    v69 = a4;
    v5 = *(a2 + 32);
    v71 = a2 + 32;
    v6 = *(v5 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    v72 = v4;
    if (v6)
    {
      *&v77[0] = MEMORY[0x1E69E7CC0];

      sub_19764CAC4(0, v6, 0);
      v8 = *&v77[0];
      v9 = v5 + 32;
      do
      {
        sub_1976C1A84(v9, &v79);
        sub_19764F298(&v79, &v83);
        sub_1976C1B00(&v79);
        *&v77[0] = v8;
        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_19764CAC4(v10 > 1, v11 + 1, 1);
        }

        v12 = v84;
        v13 = v85;
        v14 = __swift_mutable_project_boxed_opaque_existential_1(&v83, v84);
        MEMORY[0x1EEE9AC00](v14);
        v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v17 + 16))(v16);
        sub_19764CBEC(v11, v16, v77, v12, v13);
        __swift_destroy_boxed_opaque_existential_0(&v83);
        v8 = *&v77[0];
        v9 += 80;
        --v6;
      }

      while (v6);
      v67 = *&v77[0];

      v4 = v72;
    }

    else
    {
      v67 = MEMORY[0x1E69E7CC0];
    }

    *&v83 = v7;
    sub_1976B4C80(0, v4, 0);
    v19 = v71;
    v18 = v72;
    v20 = 0;
    v21 = v83;
    v76 = xmmword_19775A780;
    do
    {
      if (v20 == v18)
      {
        goto LABEL_45;
      }

      v75 = v21;
      v22 = *(v19 + 8 * v20);
      v23 = *(v22 + 16);
      if (v23)
      {
        v73 = *(v19 + 8 * v20);
        v74 = v20;
        v24 = v22 + 32;

        while (1)
        {
          sub_1976C1A84(v24, &v79);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
          inited = swift_initStackObject();
          *(inited + 16) = v76;
          sub_19764F298(&v82, inited + 32);
          v26 = v7[2];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v28 = v7[3] >> 1, v29 = v7, v28 <= v26))
          {
            sub_19764F434(isUniquelyReferenced_nonNull_native, v26 + 1, 1, v7);
            v29 = v30;
            v28 = v30[3] >> 1;
          }

          if (v28 <= v29[2])
          {
            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FE88, &qword_19775DF70);
          swift_arrayInitWithCopy();

          sub_1976C1B00(&v79);

          ++v29[2];
          v24 += 80;
          v7 = v29;
          if (!--v23)
          {

            v7 = MEMORY[0x1E69E7CC0];
            v19 = v71;
            v18 = v72;
            v20 = v74;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }

      v29 = v7;
LABEL_21:
      v21 = v75;
      *&v83 = v75;
      v32 = *(v75 + 16);
      v31 = *(v75 + 24);
      if (v32 >= v31 >> 1)
      {
        v74 = v20;
        sub_1976B4C80(v31 > 1, v32 + 1, 1);
        v20 = v74;
        v18 = v72;
        v21 = v83;
      }

      ++v20;
      *(v21 + 16) = v32 + 1;
      *(v21 + 8 * v32 + 32) = v29;
    }

    while (v20 != v18);
    v75 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_19775E740;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
    *(v33 + 56) = v34;
    *(v33 + 64) = &off_1F0BBB748;
    *(v33 + 32) = 0x545245534E49;
    *(v33 + 40) = 0xE600000000000000;
    *(v33 + 48) = v7;
    if (v68 == 5)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
    }

    else
    {
      *&v79 = 2118223;
      *(&v79 + 1) = 0xE300000000000000;
      v40 = sub_1976BD854(v68);
      MEMORY[0x19A8E4C40](v40);

      v36 = *(&v79 + 1);
      v35 = v79;
      v39 = &off_1F0BBB748;
      v38 = v34;
      v37 = MEMORY[0x1E69E7CC0];
    }

    v41 = v69;
    *(v33 + 72) = v35;
    *(v33 + 80) = v36;
    *(v33 + 88) = v37;
    *(v33 + 96) = v38;
    *(v33 + 136) = v34;
    *(v33 + 144) = &off_1F0BBB748;
    *(v33 + 104) = v39;
    *(v33 + 112) = 1330925129;
    *(v33 + 120) = 0xE400000000000000;
    *(v33 + 128) = v7;
    sub_197649C2C();
    sub_197649C34();
    sub_197649FEC(v67, &v79);

    __swift_project_boxed_opaque_existential_0Tm(&v79, *(&v80 + 1));
    v42 = sub_1976B5D38();
    v44 = v43;
    v46 = v45;
    __swift_destroy_boxed_opaque_existential_0(&v79);
    *(v33 + 192) = v42;
    *(v33 + 200) = v44;
    *(v33 + 208) = v46;
    *(v33 + 216) = v34;
    *(v33 + 256) = v34;
    *(v33 + 264) = &off_1F0BBB748;
    *(v33 + 224) = &off_1F0BBB748;
    *(v33 + 232) = 0x5345554C4156;
    *(v33 + 240) = 0xE600000000000000;
    *(v33 + 248) = v7;
    v74 = v33;
    v47 = *(v75 + 16);
    if (v47)
    {
      *&v76 = v34;
      *&v83 = v7;
      sub_19764CAC4(0, v47, 0);
      v48 = 32;
      v49 = v83;
      do
      {

        sub_197649FEC(v50, &v79);
        __swift_project_boxed_opaque_existential_0Tm(&v79, *(&v80 + 1));
        v51 = sub_1976B5D38();
        v53 = v52;
        v55 = v54;
        __swift_destroy_boxed_opaque_existential_0(&v79);

        *&v83 = v49;
        v57 = *(v49 + 16);
        v56 = *(v49 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_19764CAC4(v56 > 1, v57 + 1, 1);
          v49 = v83;
        }

        *&v79 = v51;
        *(&v79 + 1) = v53;
        *(&v80 + 1) = v76;
        v81 = &off_1F0BBB748;
        *&v80 = v55;
        *(v49 + 16) = v57 + 1;
        sub_19764C774(&v79, v49 + 40 * v57 + 32);
        v48 += 8;
        --v47;
      }

      while (v47);

      v41 = v69;
    }

    else
    {

      v49 = MEMORY[0x1E69E7CC0];
    }

    v58 = v74;
    sub_197649FEC(v49, (v74 + 272));

    sub_1976BBE60(v41, v58 + 312);
    v59 = MEMORY[0x1E69E7CC0];
    for (i = 32; i != 352; i += 40)
    {
      sub_197650334();
      v77[0] = v79;
      v77[1] = v80;
      v78 = v81;
      if (*(&v80 + 1))
      {
        sub_19764C774(v77, &v83);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_19764F434(0, v59[2] + 1, 1, v59);
          v59 = v63;
        }

        v62 = v59[2];
        v61 = v59[3];
        if (v62 >= v61 >> 1)
        {
          sub_19764F434(v61 > 1, v62 + 1, 1, v59);
          v59 = v64;
        }

        v59[2] = v62 + 1;
        sub_19764C774(&v83, &v59[5 * v62 + 4]);
      }

      else
      {
        sub_19764CB44(v77, &qword_1EAF3FFE0);
      }
    }

    swift_setDeallocating();
    sub_1976505C4();
    sub_197649FEC(v59, &v79);

    v65 = *(&v80 + 1);
    v66 = v81;
    __swift_project_boxed_opaque_existential_0Tm(&v79, *(&v80 + 1));
    (v66[1])(v65, v66);
    __swift_destroy_boxed_opaque_existential_0(&v79);
  }

  else
  {
    sub_1976BD8E0();
  }
}

uint64_t sub_1976BD854(char a1)
{
  result = 0x4543414C504552;
  switch(a1)
  {
    case 1:
      result = 0x4B4341424C4C4F52;
      break;
    case 2:
      result = 0x54524F4241;
      break;
    case 3:
      result = 1279869254;
      break;
    case 4:
      result = 0x45524F4E4749;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1976BD8E0()
{
  OUTLINED_FUNCTION_38_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A7E0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  OUTLINED_FUNCTION_22_7();
  v2 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v3;
  OUTLINED_FUNCTION_110_0();
  v4 = sub_197649C2C();
  OUTLINED_FUNCTION_53_4(v4);
  *(inited + 136) = v1;
  *(inited + 144) = &off_1F0BBB748;
  strcpy((inited + 112), "DEFAULT VALUES");
  *(inited + 127) = -18;
  *(inited + 128) = v2;
  OUTLINED_FUNCTION_88_1(inited, v8);
  swift_setDeallocating();
  sub_19764F1B0();
  v5 = OUTLINED_FUNCTION_0_24(v8);
  v6(v5);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v8);
  return OUTLINED_FUNCTION_1_21();
}

uint64_t sub_1976BDA00(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A7E0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  OUTLINED_FUNCTION_22_7();
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v4;
  OUTLINED_FUNCTION_110_0();
  v5 = sub_197649C2C();
  OUTLINED_FUNCTION_53_4(v5);
  v6 = a1[3];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  OUTLINED_FUNCTION_34();
  v8 = v7(v6);
  *(inited + 136) = v3;
  *(inited + 144) = &off_1F0BBB748;
  *(inited + 112) = v8;
  *(inited + 120) = v9;
  *(inited + 128) = v10;
  OUTLINED_FUNCTION_88_1(inited, v14);
  swift_setDeallocating();
  sub_19764F1B0();
  v11 = OUTLINED_FUNCTION_0_24(v14);
  v12(v11);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v14);
  return OUTLINED_FUNCTION_1_21();
}

void sub_1976BDB38()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_6();
  v21 = v1;

  v2 = sub_1976BDE8C(sub_1976C1AE0, v20, v0);
  v3 = *(v2 + 2);
  if (v3)
  {
    v27[0] = MEMORY[0x1E69E7CC0];
    v4 = v27;
    sub_1976B4CA0(0, v3, 0);
    v5 = v27[0];
    v6 = v2 + 32;
    do
    {
      sub_1976C1A84(v6, v25);
      sub_19764F298(v25, v22);
      v7 = OUTLINED_FUNCTION_108();
      sub_1976497AC(v7, v8, 0x646564756C637865, 0xE800000000000000);
      OUTLINED_FUNCTION_21();
      sub_19764F298(v22, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19775A850;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
      *(inited + 56) = v10;
      *(inited + 64) = &off_1F0BBB748;
      *(inited + 32) = v4;
      *(inited + 40) = v2;
      *(inited + 48) = MEMORY[0x1E69E7CC0];
      v11 = v23;
      v12 = v24;
      __swift_project_boxed_opaque_existential_0Tm(v22, v23);
      OUTLINED_FUNCTION_34();
      v14 = v13(v11, v12);
      *(inited + 96) = v10;
      *(inited + 104) = &off_1F0BBB748;
      *(inited + 72) = v14;
      *(inited + 80) = v15;
      *(inited + 88) = v16;
      sub_197649FEC(inited, &v26[5]);
      swift_setDeallocating();
      v4 = inited;
      sub_19764F1B0();
      __swift_destroy_boxed_opaque_existential_0(v22);
      sub_1976C1B00(v25);
      v27[0] = v5;
      v18 = *(v5 + 16);
      v17 = *(v5 + 24);
      v2 = (v18 + 1);
      if (v18 >= v17 >> 1)
      {
        v19 = OUTLINED_FUNCTION_47_1(v17);
        v4 = v27;
        sub_1976B4CA0(v19, v18 + 1, 1);
        v5 = v27[0];
      }

      *(v5 + 16) = v2;
      memcpy((v5 + 80 * v18 + 32), v26, 0x50uLL);
      v6 += 80;
      --v3;
    }

    while (v3);
  }

  OUTLINED_FUNCTION_37_4();
  sub_1976BDFFC();
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_43();
}

uint64_t sub_1976BDDAC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  v5 = sub_1976C73F8(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_0Tm(a2, v8);
  if (v5 == sub_1976C73F8(v8, v9) && v7 == v10)
  {

    v13 = 0;
  }

  else
  {
    v12 = sub_19774F7E0();

    v13 = v12 ^ 1;
  }

  return v13 & 1;
}

uint64_t (*sub_1976BDE8C(uint64_t (*result)(_BYTE *), uint64_t a2, uint64_t a3))(_BYTE *)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  v14 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    sub_1976C1A84(v8, __src);
    v10 = v5(__src);
    if (v3)
    {
      sub_1976C1B00(__src);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      memcpy(__dst, __src, sizeof(__dst));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1976B4CA0(0, *(v9 + 16) + 1, 1);
        v9 = v17;
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1976B4CA0(v12 > 1, v13 + 1, 1);
        v9 = v17;
      }

      *(v9 + 16) = v13 + 1;
      result = memcpy((v9 + 80 * v13 + 32), __dst, 0x50uLL);
      v5 = v14;
    }

    else
    {
      result = sub_1976C1B00(__src);
    }

    v8 += 80;
    ++v6;
  }

  __break(1u);
  return result;
}

void sub_1976BDFFC()
{
  OUTLINED_FUNCTION_42();
  v50 = v1;
  v47 = v2;
  v48 = v3;
  v49 = v4;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = MEMORY[0x1E69E7CC0];
    v8 = v0 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1976C1A84(v8, &v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19775A780;
      sub_19764F298(&v57, inited + 32);

      sub_19764B840(inited);
      v11 = v7;
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_19775A780;
      sub_19764F298(v60, v12 + 32);
      *&v54 = v9;

      sub_19764B840(v12);

      sub_1976C1B00(&v57);
      v8 += 80;
      --v5;
    }

    while (v5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
    v9 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_19775E750;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(v13 + 32) = 0x545245534E49;
  *(v13 + 40) = 0xE600000000000000;
  *(v13 + 48) = v6;
  *(v13 + 56) = v14;
  *(v13 + 96) = v14;
  *(v13 + 104) = &off_1F0BBB748;
  *(v13 + 64) = &off_1F0BBB748;
  *(v13 + 72) = 1330925129;
  *(v13 + 80) = 0xE400000000000000;
  *(v13 + 88) = v6;
  v15 = v47;
  sub_197649C2C();
  sub_197649C34();
  OUTLINED_FUNCTION_51(v11, &v57);
  v16 = *(&v58 + 1);
  v17 = v59;
  OUTLINED_FUNCTION_28_3(&v57);
  OUTLINED_FUNCTION_21();
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_0(&v57);
  *(v13 + 152) = v16;
  *(v13 + 160) = v17;
  *(v13 + 168) = v19;
  *(v13 + 176) = v14;
  *(v13 + 216) = v14;
  *(v13 + 224) = &off_1F0BBB748;
  *(v13 + 184) = &off_1F0BBB748;
  *(v13 + 192) = 0x5345554C4156;
  *(v13 + 200) = 0xE600000000000000;
  *(v13 + 208) = v6;
  OUTLINED_FUNCTION_51(v9, &v57);
  v20 = *(&v58 + 1);
  v21 = v59;
  OUTLINED_FUNCTION_28_3(&v57);
  OUTLINED_FUNCTION_21();
  v23 = v22;

  __swift_destroy_boxed_opaque_existential_0(&v57);
  *(v13 + 256) = v14;
  *(v13 + 264) = &off_1F0BBB748;
  *(v13 + 232) = v20;
  *(v13 + 240) = v21;
  *(v13 + 248) = v23;
  sub_1976BBE60(v48, v13 + 272);
  *(v13 + 336) = v14;
  *(v13 + 344) = &off_1F0BBB748;
  *(v13 + 312) = 0x4C464E4F43204E4FLL;
  *(v13 + 320) = 0xEB00000000544349;
  *(v13 + 328) = v6;
  *(v13 + 352) = OUTLINED_FUNCTION_28_3(v49);
  *(v13 + 360) = v24;
  *(v13 + 368) = v25;
  *(v13 + 376) = v14;
  v51 = v14;
  *(v13 + 416) = v14;
  *(v13 + 424) = &off_1F0BBB748;
  *(v13 + 384) = &off_1F0BBB748;
  strcpy((v13 + 392), "DO UPDATE SET");
  *(v13 + 406) = -4864;
  *(v13 + 408) = v6;
  v26 = *(v50 + 16);
  if (v26)
  {
    *&v52[0] = v6;
    sub_19764CAC4(0, v26, 0);
    v27 = v50 + 32;
    do
    {
      sub_1976C1A84(v27, &v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_19775A850;
      sub_19764F298(&v57, v28 + 32);
      sub_19764F298(v60, v28 + 72);
      OUTLINED_FUNCTION_71_3(&v54);
      swift_setDeallocating();
      sub_19764F1B0();
      v29 = v55;
      v30 = v56;
      __swift_project_boxed_opaque_existential_0Tm(&v54, v55);
      OUTLINED_FUNCTION_34();
      v32 = v31(v29, v30);
      v34 = v33;
      v36 = v35;
      __swift_destroy_boxed_opaque_existential_0(&v54);
      sub_1976C1B00(&v57);
      *&v52[0] = v6;
      v14 = *(v6 + 16);
      v37 = *(v6 + 24);
      v15 = v14 + 1;
      if (v14 >= v37 >> 1)
      {
        v38 = OUTLINED_FUNCTION_47_1(v37);
        sub_19764CAC4(v38, v14 + 1, 1);
        v6 = *&v52[0];
      }

      *&v57 = v32;
      *(&v57 + 1) = v34;
      *(&v58 + 1) = v51;
      v59 = &off_1F0BBB748;
      *&v58 = v36;
      *(v6 + 16) = v15;
      sub_19764C774(&v57, v6 + 40 * v14 + 32);
      v27 += 80;
      --v26;
    }

    while (v26);
  }

  OUTLINED_FUNCTION_51(v6, (v13 + 432));

  v39 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 472; i += 40)
  {
    sub_197650334();
    v52[0] = v57;
    v52[1] = v58;
    v53 = v59;
    if (*(&v58 + 1))
    {
      sub_19764C774(v52, &v54);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_10();
        v39 = v43;
      }

      OUTLINED_FUNCTION_18_7();
      if (v42)
      {
        OUTLINED_FUNCTION_14_7(v41);
        v39 = v44;
      }

      *(v39 + 16) = v14;
      sub_19764C774(&v54, v39 + 40 * v15 + 32);
    }

    else
    {
      sub_19764CB44(v52, &qword_1EAF3FFE0);
    }
  }

  swift_setDeallocating();
  sub_1976505C4();
  OUTLINED_FUNCTION_45_3(&v57);

  v45 = OUTLINED_FUNCTION_0_24(&v57);
  v46(v45);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(&v57);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_43();
}

void sub_1976BE58C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775E760;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = 0x455441445055;
  *(inited + 40) = 0xE600000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v3;
  OUTLINED_FUNCTION_29_5();
  sub_197649C2C();
  sub_197649C34();
  *(inited + 136) = v3;
  *(inited + 144) = &off_1F0BBB748;
  *(inited + 112) = 5522771;
  *(inited + 120) = 0xE300000000000000;
  *(inited + 128) = v4;
  v5 = *(v1 + 16);
  if (v5)
  {
    *&v35[0] = v4;
    sub_19764CAC4(0, v5, 0);
    v6 = v1 + 32;
    do
    {
      sub_1976C1A84(v6, &v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
      v7 = swift_initStackObject();
      *(v7 + 16) = xmmword_19775A850;
      sub_19764F298(&v37, v7 + 32);
      sub_19764F298(&v40, v7 + 72);
      OUTLINED_FUNCTION_71_3(&v41);
      swift_setDeallocating();
      sub_19764F1B0();
      sub_1976C1B00(&v37);
      *&v35[0] = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        v17 = OUTLINED_FUNCTION_47_1(v8);
        sub_19764CAC4(v17, v9 + 1, 1);
      }

      v10 = v42;
      v11 = v43;
      __swift_mutable_project_boxed_opaque_existential_1(&v41, v42);
      OUTLINED_FUNCTION_61();
      MEMORY[0x1EEE9AC00](v12);
      OUTLINED_FUNCTION_8_0();
      v15 = v14 - v13;
      (*(v16 + 16))(v14 - v13);
      sub_19764CBEC(v9, v15, v35, v10, v11);
      __swift_destroy_boxed_opaque_existential_0(&v41);
      v4 = *&v35[0];
      v6 += 80;
      --v5;
    }

    while (v5);
  }

  OUTLINED_FUNCTION_51(v4, (inited + 152));

  OUTLINED_FUNCTION_29_5();
  sub_1976BBE60(v18, v19);
  v20 = OUTLINED_FUNCTION_29_5();
  sub_1976BC210(v20, v21, v22);
  OUTLINED_FUNCTION_29_5();
  sub_1976BC394(v23, v24);
  v25 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 312; i += 40)
  {
    sub_197650334();
    v35[0] = v37;
    v35[1] = v38;
    v36 = v39;
    if (*(&v38 + 1))
    {
      sub_19764C774(v35, &v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19764F434(0, v25[2] + 1, 1, v25);
        v25 = v29;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v30 = OUTLINED_FUNCTION_47_1(v27);
        sub_19764F434(v30, v28 + 1, 1, v25);
        v25 = v31;
      }

      v25[2] = v28 + 1;
      sub_19764C774(&v41, &v25[5 * v28 + 4]);
    }

    else
    {
      sub_19764CB44(v35, &qword_1EAF3FFE0);
    }
  }

  swift_setDeallocating();
  sub_1976505C4();
  OUTLINED_FUNCTION_88_1(v25, &v37);

  v32 = *(&v38 + 1);
  v33 = v39;
  __swift_project_boxed_opaque_existential_0Tm(&v37, *(&v38 + 1));
  OUTLINED_FUNCTION_34();
  v34(v32, v33);
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_0(&v37);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_43();
}

void sub_1976BE9A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775E3E0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  *(inited + 32) = 0x46204554454C4544;
  *(inited + 40) = 0xEB000000004D4F52;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v1;
  OUTLINED_FUNCTION_23_6();
  sub_197649C2C();
  OUTLINED_FUNCTION_47_3();
  sub_197649C34();
  OUTLINED_FUNCTION_23_6();
  sub_1976BBE60(v2, v3);
  v4 = OUTLINED_FUNCTION_23_6();
  sub_1976BC210(v4, v5, v6);
  OUTLINED_FUNCTION_23_6();
  sub_1976BC394(v7, v8);
  for (i = 32; i != 232; i += 40)
  {
    v10 = OUTLINED_FUNCTION_32_5();
    OUTLINED_FUNCTION_9_8(v10, v11, v12, v13, v14, v15, v16, v17, v41, *(&v41 + 1), v42, v43, v44, v45, *(&v45 + 1), v46, v47, v48, v49[0], v49[1], v50);
    if (v26)
    {
      sub_19764C774(&v41, &v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_10();
      }

      OUTLINED_FUNCTION_18_7();
      if (v36)
      {
        OUTLINED_FUNCTION_14_7(v35);
      }

      OUTLINED_FUNCTION_31_4(v27, v28, v29, v30, v31, v32, v33, v34, v41, *(&v41 + 1), v42, v43, v44, v45);
    }

    else
    {
      v37 = OUTLINED_FUNCTION_27_6(v18, v19, v20, v21, v22, v23, v24, v25, v41);
      sub_19764CB44(v37, v38);
    }
  }

  swift_setDeallocating();
  sub_1976505C4();
  OUTLINED_FUNCTION_45_3(v49);

  v39 = OUTLINED_FUNCTION_0_24(v49);
  v40(v39);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v49);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_69_3();
}

uint64_t sub_1976BEB5C()
{
  OUTLINED_FUNCTION_38_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19775A850;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(inited + 64) = &off_1F0BBB748;
  strcpy((inited + 32), "SELECT EXISTS");
  *(inited + 46) = -4864;
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v3;
  v4 = (*(*(v0 + 8) + 8))(v1);
  v7 = sub_1976C2170(v4, v5, v6, 0, 0xE000000000000000);
  OUTLINED_FUNCTION_64_3();

  *(inited + 96) = v3;
  *(inited + 104) = &off_1F0BBB748;
  *(inited + 72) = v7;
  *(inited + 80) = &qword_1EAF3FFC0;
  *(inited + 88) = &qword_19775E1D8;
  OUTLINED_FUNCTION_88_1(inited, v11);
  swift_setDeallocating();
  sub_19764F1B0();
  v8 = OUTLINED_FUNCTION_0_24(v11);
  v9(v8);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v11);
  return OUTLINED_FUNCTION_1_21();
}

void sub_1976BECC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_19_6();
  sub_19774F420();
  v49 = OUTLINED_FUNCTION_37_4();

  sub_197649968(v49, v50, v46, a4, v51, a6, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

void sub_1976BEDB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_38_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFD8, &unk_19775E420);
  *(swift_initStackObject() + 16) = xmmword_19775E760;
  v0 = OUTLINED_FUNCTION_110_0();
  sub_1976BB950(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_110_0();
  sub_1976BBB00(v3, v4, v5);
  OUTLINED_FUNCTION_110_0();
  sub_1976BBE60(v6, v7);
  OUTLINED_FUNCTION_110_0();
  sub_1976BBFBC(v8, v9);
  v10 = OUTLINED_FUNCTION_110_0();
  sub_1976BC570(v10, v11, v12);
  v13 = OUTLINED_FUNCTION_110_0();
  sub_1976BC210(v13, v14, v15);
  OUTLINED_FUNCTION_110_0();
  sub_1976BC394(v16, v17);
  for (i = 32; i != 312; i += 40)
  {
    v19 = OUTLINED_FUNCTION_32_5();
    OUTLINED_FUNCTION_9_8(v19, v20, v21, v22, v23, v24, v25, v26, v50, *(&v50 + 1), v51, v52, v53, v54, *(&v54 + 1), v55, v56, v57, v58[0], v58[1], v59);
    if (v35)
    {
      sub_19764C774(&v50, &v54);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_10();
      }

      OUTLINED_FUNCTION_18_7();
      if (v45)
      {
        OUTLINED_FUNCTION_14_7(v44);
      }

      OUTLINED_FUNCTION_31_4(v36, v37, v38, v39, v40, v41, v42, v43, v50, *(&v50 + 1), v51, v52, v53, v54);
    }

    else
    {
      v46 = OUTLINED_FUNCTION_27_6(v27, v28, v29, v30, v31, v32, v33, v34, v50);
      sub_19764CB44(v46, v47);
    }
  }

  swift_setDeallocating();
  sub_1976505C4();
  OUTLINED_FUNCTION_45_3(v58);

  v48 = OUTLINED_FUNCTION_0_24(v58);
  v49(v48);
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v58);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_43();
}

void *sub_1976BEF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_27_6(a1, a2, a3, a4, a5, a6, a7, a8, v13[0]);
  memcpy(v8, v9, 0xB0uLL);
  sub_19764BBBC(v13);
  v10 = OUTLINED_FUNCTION_27();
  return memcpy(v10, v11, 0xB0uLL);
}

void sub_1976BEF98()
{
  OUTLINED_FUNCTION_19_6();
  v1 = v0;
  sub_19774F5B0();

  v2 = OUTLINED_FUNCTION_37_4();
  MEMORY[0x19A8E4C40](v2);

  MEMORY[0x19A8E4C40](2564140, 0xE300000000000000);
  v3 = OUTLINED_FUNCTION_110_0();
  MEMORY[0x19A8E4C40](v3);

  MEMORY[0x19A8E4C40](10535, 0xE200000000000000);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3F750, &qword_19775A960);
  v5 = OUTLINED_FUNCTION_44_4(v4);
  *(v5 + 16) = xmmword_19775A780;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF3FFC0, &qword_19775E1D8);
  *(v5 + 64) = &off_1F0BBB748;
  *(v5 + 32) = 42;
  *(v5 + 40) = 0xE100000000000000;
  v7 = MEMORY[0x1E69E7CC0];
  *(v5 + 48) = MEMORY[0x1E69E7CC0];
  *(v5 + 56) = v6;
  *v1 = 0;
  *(v1 + 8) = v5;
  *(v1 + 16) = 0x6361655F6E6F736ALL;
  *(v1 + 24) = 0xEA00000000002868;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 72) = v7;
  OUTLINED_FUNCTION_5_10(v7, 0);
}

void *sub_1976BF0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_27_6(a1, a2, a3, a4, a5, a6, a7, a8, v13[0]);
  memcpy(v8, v9, 0xB0uLL);
  sub_1976B40C0(v13);
  v10 = OUTLINED_FUNCTION_27();
  return memcpy(v10, v11, 0xB0uLL);
}

void *sub_1976BF138(const void *a1)
{
  memcpy(v4, v1, sizeof(v4));
  sub_1976B40C0(v4);
  return memcpy(v1, a1, 0xB0uLL);
}

void *sub_1976BF1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_27_6(a1, a2, a3, a4, a5, a6, a7, a8, v13[0]);
  memcpy(v8, v9, 0xB0uLL);
  sub_1976B4010(v13);
  v10 = OUTLINED_FUNCTION_27();
  return memcpy(v10, v11, 0xB0uLL);
}

void *sub_1976BF20C(const void *a1)
{
  memcpy(v4, v1, sizeof(v4));
  sub_1976B4010(v4);
  return memcpy(v1, a1, 0xB0uLL);
}

void *sub_1976BF274()
{
  OUTLINED_FUNCTION_65();
  v9 = OUTLINED_FUNCTION_27_6(v1, v2, v3, v4, v5, v6, v7, v8, v15[0]);
  memcpy(v9, v10, 0xB0uLL);
  OUTLINED_FUNCTION_46();
  (*(v11 + 8))(v15, v0);
  v12 = OUTLINED_FUNCTION_22_1();
  return memcpy(v12, v13, 0xB0uLL);
}

void *sub_1976BF2E8(const void *a1, uint64_t a2)
{
  memcpy(v6, v2, sizeof(v6));
  (*(*(a2 - 8) + 8))(v6, a2);
  return memcpy(v2, a1, 0xB0uLL);
}

uint64_t sub_1976BF3B8()
{
  OUTLINED_FUNCTION_31_1();

  return OUTLINED_FUNCTION_27();
}

uint64_t sub_1976BF3E4()
{
  OUTLINED_FUNCTION_65();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_1976BF41C(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1976BF464()
{
  OUTLINED_FUNCTION_31_1();
  sub_19764EA8C();
  if (!v1)
  {
    if (v2)
    {
    }

    else
    {
      return 0;
    }
  }

  return v0;
}

void sub_1976BF4B0()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_46();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_66_3();
  sub_19774EE10();
  while (1)
  {
    sub_19764EA8C();
    if (v0)
    {
      break;
    }

    v5 = v4;
    if (!v4)
    {
      goto LABEL_6;
    }

    v2(v6, v5);

    sub_19774F190();
    sub_19774F180();
  }

LABEL_6:
  OUTLINED_FUNCTION_9();
}

void sub_1976BF5D8()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v27 = v4;
  v28 = v5;
  v26 = v6;
  v25 = sub_19774F420();
  OUTLINED_FUNCTION_61();
  v8 = v7;
  OUTLINED_FUNCTION_159();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_61();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v24 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  sub_19774EE10();
  v22 = (v11 + 16);
  v23 = (v11 + 32);
  v17 = (v11 + 8);
  while (1)
  {
    sub_19764EA8C();
    if (v0)
    {
      break;
    }

    v19 = v18;
    if (!v18)
    {
      goto LABEL_8;
    }

    v26(v20, v19);

    if (__swift_getEnumTagSinglePayload(v1, 1, v3) == 1)
    {
      (*(v8 + 8))(v1, v25);
    }

    else
    {
      (*v23)(v16, v1, v3);
      (*v22)(v24, v16, v3);
      sub_19774F190();
      sub_19774F180();
      (*v17)(v16, v3);
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_9();
}

uint64_t sub_1976BF860@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1976BF464();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_1976BF890@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1976C80C8(*v1, v1[1]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1976BF8BC(void *a1)
{
  v2 = a1[3];
  __swift_project_boxed_opaque_existential_0Tm(a1, v2);
  OUTLINED_FUNCTION_34();
  v3(v2);
  v5 = v4;
  OUTLINED_FUNCTION_49_4();
  sub_1976505D8(v6, v7, v8);
  if (v1)
  {
  }

  else
  {
    v10 = sub_19764D694(v5);

    OUTLINED_FUNCTION_49_4();
    v12 = sub_19765081C(v11);
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF40070, &unk_19775E7A8);
    result = swift_allocObject();
    *(result + 16) = sub_1976C1B54;
    *(result + 24) = v13;
  }

  return result;
}

uint64_t sub_1976BF9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF401A8, &unk_19775EDA0);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1976C229C;
  *(v7 + 24) = v6;
  *a3 = v7;
}

void sub_1976BFA98(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_19764EA8C();
  v5 = v4;
  if (v4)
  {
  }

  else
  {
    a1 = 0;
  }

  *a2 = a1;
  a2[1] = v5;
}

uint64_t sub_1976BFB18(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v73 = a2;
  v71 = a4;
  v72 = a5;
  LODWORD(v69) = a3;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v7);
  (*(v8 + 16))(v79, v7, v8);
  v9 = v79[3];
  v70 = v79[2];

  sub_19764AB24(v79);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v10);
  (*(v11 + 16))(v80, v10, v11);
  v12 = v80[6];
  v13 = v80[7];

  sub_19764AB24(v80);
  v14 = *(v8 + 40);
  v77 = DynamicType;
  v78 = v8;
  __swift_allocate_boxed_opaque_existential_1(v76);
  v14(v70, v9, v12, v13, DynamicType, v8);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v15);
  (*(v16 + 16))(v81, v15, v16);
  LOBYTE(v8) = v81[0];
  v17 = v81[1];

  sub_19764AB24(v81);
  v18 = v77;
  v19 = v78;
  __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
  v20 = (*(v19 + 32))(v75, v18, v19);
  *v21 = v8;
  *(v21 + 8) = v17;

  v20(v75, 0);
  v23 = v77;
  v22 = v78;
  __swift_project_boxed_opaque_existential_0Tm(v76, v77);
  v24 = (*(*(v22 + 8) + 8))(v23);
  v26 = v25;
  v27 = MEMORY[0x1E69E7CC0];
  sub_1976505D8(v24, v28, MEMORY[0x1E69E7CC0]);
  if (v74)
  {

    return __swift_destroy_boxed_opaque_existential_0(v76);
  }

  v68 = 0;
  sub_19764D694(v26);

  v30 = sub_1976C8188();

  v31 = *(v30 + 16);
  if (v31)
  {
    v75[0] = v27;
    sub_19764AD60(0, v31, 0);
    v32 = v75[0];
    v74 = v30;
    v33 = (v30 + 40);
    do
    {
      v35 = *(v33 - 1);
      v34 = *v33;

      v36 = sub_1976497AC(34, 0xE100000000000000, v35, v34);
      v38 = v37;

      v75[0] = v32;
      v40 = *(v32 + 16);
      v39 = *(v32 + 24);
      v41 = v32;
      if (v40 >= v39 >> 1)
      {
        sub_19764AD60((v39 > 1), v40 + 1, 1);
        v41 = v75[0];
      }

      *(v41 + 16) = v40 + 1;
      v42 = v41 + 16 * v40;
      *(v42 + 32) = v36;
      *(v42 + 40) = v38;
      v33 += 2;
      --v31;
      v32 = v41;
    }

    while (v31);
  }

  else
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  if (v69)
  {
    MEMORY[0x1EEE9AC00](v43);
    v67[2] = a1;
    v44 = v68;
    v45 = sub_1976BAD04(sub_1976C22FC, v67, v32);
    v68 = v44;

    v32 = v45;
  }

  v47 = v71;
  v46 = v72;
  v70 = *(v32 + 16);
  if (!v70)
  {
LABEL_25:

    return __swift_destroy_boxed_opaque_existential_0(v76);
  }

  swift_beginAccess();
  swift_beginAccess();
  v48 = 0;
  v49 = (v32 + 40);
  v69 = v32;
  while (v48 < *(v32 + 16))
  {
    v50 = *(v49 - 1);
    v51 = *v49;
    v74 = *(v46 + 16);
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v82 = *(v47 + 16);
    v52 = v82;
    *(v47 + 16) = 0x8000000000000000;
    v73 = v50;
    v53 = sub_19764EA74(v50, v51);
    if (__OFADD__(v52[2], (v54 & 1) == 0))
    {
      goto LABEL_27;
    }

    v55 = v53;
    v56 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF401B0, &unk_19775EDB0);
    if (sub_19774F6F0())
    {
      v57 = sub_19764EA74(v73, v51);
      v32 = v69;
      if ((v56 & 1) != (v58 & 1))
      {
        goto LABEL_30;
      }

      v55 = v57;
      if (v56)
      {
LABEL_22:

        v59 = v82;
        *(v82[7] + 8 * v55) = v74;
        goto LABEL_23;
      }
    }

    else
    {
      v32 = v69;
      if (v56)
      {
        goto LABEL_22;
      }
    }

    v59 = v82;
    v82[(v55 >> 6) + 8] |= 1 << v55;
    v60 = (v59[6] + 16 * v55);
    v61 = v74;
    *v60 = v73;
    v60[1] = v51;
    *(v59[7] + 8 * v55) = v61;
    v62 = v59[2];
    v63 = __OFADD__(v62, 1);
    v64 = v62 + 1;
    if (v63)
    {
      goto LABEL_29;
    }

    v59[2] = v64;
LABEL_23:
    v47 = v71;
    *(v71 + 16) = v59;
    swift_endAccess();
    v46 = v72;
    v65 = *(v72 + 16);
    v63 = __OFADD__(v65, 1);
    v66 = v65 + 1;
    if (v63)
    {
      goto LABEL_28;
    }

    ++v48;
    *(v72 + 16) = v66;
    v49 += 2;
    if (v70 == v48)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_19774F8A0();
  __break(1u);
  return result;
}