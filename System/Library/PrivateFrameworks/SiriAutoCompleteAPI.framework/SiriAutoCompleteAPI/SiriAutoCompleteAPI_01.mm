void *sub_1DA379CA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD488, &qword_1DA395E28);
  v2 = *v0;
  v3 = sub_1DA394724();
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

void *sub_1DA379DFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3D0, &unk_1DA395DD0);
  v2 = *v0;
  v3 = sub_1DA394724();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_1DA379F4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD460, &qword_1DA395E00);
  v2 = *v0;
  v3 = sub_1DA394724();
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
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + 8 * v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
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

uint64_t sub_1DA37A0C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD450, &unk_1DA395DF0);
  result = sub_1DA394734();
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
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_1DA3949C4();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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
          goto LABEL_23;
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
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DA37A2AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD488, &qword_1DA395E28);
  result = sub_1DA394734();
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
        sub_1DA3949D4();

        sub_1DA394354();
        result = sub_1DA394A14();
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

unint64_t sub_1DA37A4E0(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD3D0, &unk_1DA395DD0);
  result = sub_1DA394734();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    for (i = result + 56; v8; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
      sub_1DA3949D4();

      sub_1DA36AA48(v15);
      sub_1DA394A14();
      result = sub_1DA394644();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v4 + 48) + 8 * result) = v14;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_14;
      }

      v13 = *(v2 + 56 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DA37A688(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD460, &qword_1DA395E00);
  result = sub_1DA394734();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v33 = (v10 - 1) & v10;
LABEL_12:
        v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        v20 = *(v16 + 24);
        v21 = *(v16 + 32);
        sub_1DA3949D4();

        sub_1DA394354();
        sub_1DA394354();
        MEMORY[0x1DA74C080](v21 + 1);
        result = sub_1DA394A14();
        v22 = -1 << *(v5 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = *(v5 + 48) + 40 * v25;
        *v30 = v17;
        *(v30 + 8) = v18;
        *(v30 + 16) = v19;
        *(v30 + 24) = v20;
        *(v30 + 32) = v21;
        ++*(v5 + 16);
        v3 = v32;
        v10 = v33;
        if (!v33)
        {
          goto LABEL_7;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v31;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v33 = (v15 - 1) & v15;
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

uint64_t (*sub_1DA37A918(uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  v6 = sub_1DA3783F8(a3);
  sub_1DA373068(a2, v6, a3);
  if (v6)
  {
  }

  else
  {
    v7 = MEMORY[0x1DA74BE10](a2, a3);
  }

  *a1 = v7;
  return sub_1DA37A9A4;
}

unint64_t sub_1DA37A9AC()
{
  result = qword_1EDCC51A0;
  if (!qword_1EDCC51A0)
  {
    sub_1DA394144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC51A0);
  }

  return result;
}

uint64_t sub_1DA37AA34(uint64_t *a1, int a2)
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

uint64_t sub_1DA37AA74(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DA394934();
}

uint64_t sub_1DA37ACD8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DA3943D4();
    sub_1DA394454();
    OUTLINED_FUNCTION_20_0();
    return OUTLINED_FUNCTION_23_0();
  }

  return result;
}

uint64_t sub_1DA37AD78@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = sub_1DA37D7D0(a2);
    v7 = v6;
    v9 = v8;
    v10 = sub_1DA37D830(a2);
    v12 = v11;
    v14 = v13;
    v29 = sub_1DA37D9B0(v5, v7, v9 & 1, v4, v10, v11, v13 & 1, a2);
    v16 = v15;
    v18 = v17;
    LODWORD(v4) = ~v17;
    sub_1DA37E1BC(v10, v12, v14 & 1);
    sub_1DA37E1BC(v5, v7, v9 & 1);
    if (v4)
    {
      v19 = v29;
    }

    else
    {
      v19 = sub_1DA37D830(a2);
      v16 = v20;
      v18 = v21;
    }

    v22 = sub_1DA37D7D0(a2);
    v24 = v23;
    v26 = v25 & 1;
    v27 = v18 & 1;
    result = sub_1DA37D238(v22, v23, v25 & 1, v19, v16, v27);
    if (result)
    {
      v33[0] = v22;
      v33[1] = v24;
      v34 = v26;
      v35 = v19;
      v36 = v16;
      v37 = v27;
      sub_1DA37D884(v33, a2, v31);

      sub_1DA37E1BC(v22, v24, v26);
      result = sub_1DA37E1BC(v19, v16, v27);
      v28 = v31[1];
      *a3 = v31[0];
      *(a3 + 16) = v28;
      *(a3 + 32) = v31[2];
      *(a3 + 48) = v32;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA37AF0C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1DA37D308(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_1DA37D29C(0, v5, a2);
      OUTLINED_FUNCTION_20_0();
      return OUTLINED_FUNCTION_23_0();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA37AF80()
{
  OUTLINED_FUNCTION_9_1();
  v1[27] = v2;
  v1[28] = v0;
  v1[25] = v3;
  v1[26] = v4;
  v1[23] = v5;
  v1[24] = v6;
  v7 = sub_1DA393DE4();
  v1[29] = v7;
  v1[30] = *(v7 - 8);
  v1[31] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA37B03C()
{
  v0[21] = MEMORY[0x1E69E7CC0];

  v1 = sub_1DA3943C4();
  v4 = __OFSUB__(v1, 1);
  v5 = (v1 - 1);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[30];
    v6 = v0[31];
    v8 = v0[29];
    v9 = v0[27];
    v10 = sub_1DA37ACD8(v5, v0[23], v0[24]);
    v11 = MEMORY[0x1DA74BA20](v10);
    v13 = v12;

    v0[18] = v11;
    v0[19] = v13;
    sub_1DA393DD4();
    sub_1DA368C30();
    v0[32] = sub_1DA3945E4();
    v0[33] = v14;
    (*(v7 + 8))(v6, v8);

    v0[34] = swift_getObjectType();
    v0[35] = *(v9 + 24);
    v0[36] = (v9 + 24) & 0xFFFFFFFFFFFFLL | 0xE423000000000000;
    v15 = sub_1DA394534();
    v3 = v16;
    v0[37] = v15;
    v0[38] = v16;
    v5 = sub_1DA37B190;
    v2 = v15;
  }

  return MEMORY[0x1EEE6DFA0](v5, v2, v3);
}

uint64_t sub_1DA37B190()
{
  OUTLINED_FUNCTION_9_1();
  *(v0 + 312) = (*(v0 + 280))(*(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 216));
  v1 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1DA37B1FC()
{
  v20 = v0;
  if (v0[39] && (v1 = sub_1DA377B88(v0[39]), , v1))
  {

    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v2 = sub_1DA3942F4();
    __swift_project_value_buffer(v2, qword_1EDCC51C0);
    v3 = sub_1DA3942D4();
    v4 = sub_1DA394584();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DA365000, v3, v4, "Typo recovery using all matched results leading up to current query", v5, 2u);
      OUTLINED_FUNCTION_46();
    }

    v6 = v0[27];

    v0[40] = *(v6 + 80);
    v0[41] = (v6 + 80) & 0xFFFFFFFFFFFFLL | 0x490D000000000000;
    v7 = v0[37];
    v8 = v0[38];
    v9 = sub_1DA37B464;
  }

  else
  {
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v10 = sub_1DA3942F4();
    __swift_project_value_buffer(v10, qword_1EDCC51C0);

    v11 = sub_1DA3942D4();
    v12 = sub_1DA394584();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[32];
      v13 = v0[33];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1DA372AD8(v14, v13, &v19);
      _os_log_impl(&dword_1DA365000, v11, v12, "Typo recovery using previous query %s close matches", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_46();
      OUTLINED_FUNCTION_46();
    }

    v17 = v0[27];
    v0[43] = *(v17 + 40);
    v0[44] = (v17 + 40) & 0xFFFFFFFFFFFFLL | 0xF533000000000000;
    v7 = v0[37];
    v8 = v0[38];
    v9 = sub_1DA37B900;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1DA37B464()
{
  OUTLINED_FUNCTION_9_1();
  *(v0 + 336) = (*(v0 + 320))(*(v0 + 184), *(v0 + 192), *(v0 + 272), *(v0 + 216));
  v1 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1DA37B4D0()
{
  v38 = v0;
  sub_1DA37AD78(500, *(v0 + 336), v0 + 16);
  v1 = sub_1DA37D068((v0 + 16));
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = *(v0 + 32);
  sub_1DA37DF18(v0 + 96, &qword_1ECBAD498, &qword_1DA395E88);
  *(v0 + 120) = *(v0 + 40);
  *(v0 + 136) = *(v0 + 56);
  sub_1DA37DF18(v0 + 120, &qword_1ECBAD498, &qword_1DA395E88);
  *(v0 + 160) = *(v0 + 64);
  v2 = v0 + 160;
  sub_1DA37DF18(v0 + 160, &qword_1ECBAD4A0, &qword_1DA395E90);
  sub_1DA3943C4();
  OUTLINED_FUNCTION_25_0();
  if (!v6)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  v7 = MEMORY[0x1E69E7CC0];
  *(v0 + 176) = MEMORY[0x1E69E7CC0];
  v3 = sub_1DA377B88(v1);
  if (v3)
  {
    v8 = v3;
    if (v3 < 1)
    {
      goto LABEL_29;
    }

    v9 = 0;
    v36 = v1 & 0xC000000000000001;
    v34 = 0x7FFFFFFFFFFFFFFFLL;
    v35 = &qword_1ECBAD498 / 100;
    v32 = v0;
    v33 = v7;
    v30 = v3;
    v31 = v0 + 160;
    while (1)
    {
      if (v36)
      {
        v10 = MEMORY[0x1DA74BE10](v9, v1);
      }

      else
      {
        v10 = *(v1 + 8 * v9 + 32);
      }

      v11 = *(v0 + 200);
      v12 = *(v10 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens);

      v13 = sub_1DA37BDE8(v11, v12, v35);

      if (v35 >= v13)
      {
        if (qword_1EDCC52A0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v14 = sub_1DA3942F4();
        __swift_project_value_buffer(v14, qword_1EDCC51C0);

        v15 = sub_1DA3942D4();
        v16 = sub_1DA394584();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v37 = v18;
          *v17 = 136315394;
          swift_beginAccess();
          v19 = v1;
          v20 = *(v10 + 16);
          v21 = *(v10 + 24);

          v22 = sub_1DA372AD8(v20, v21, &v37);
          v1 = v19;
          v2 = v31;

          *(v17 + 4) = v22;
          *(v17 + 12) = 2048;
          *(v17 + 14) = v13;
          _os_log_impl(&dword_1DA365000, v15, v16, "Found phrase within fuzzyDistance threshold. Phrase: %s => EditDistance: %ld", v17, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v18);
          v8 = v30;
          OUTLINED_FUNCTION_46();
          v0 = v32;
          OUTLINED_FUNCTION_46();
        }

        MEMORY[0x1DA74BB40](v23);
        OUTLINED_FUNCTION_7_3();
        if (v25)
        {
          OUTLINED_FUNCTION_5_3(v24);
          sub_1DA394504();
        }

        v26 = sub_1DA394524();
        v7 = *(v2 + 8);
        if (v13 < v34)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD490, &qword_1DA395E80);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1DA395E30;
          *(v27 + 32) = v10;
          v33 = v27;
          v34 = v13;
          *(v2 + 16) = v27;
          goto LABEL_23;
        }

        if (v13 == v34)
        {
          MEMORY[0x1DA74BB40](v26);
          OUTLINED_FUNCTION_7_3();
          if (v25)
          {
            OUTLINED_FUNCTION_5_3(v28);
            sub_1DA394504();
          }

          sub_1DA394524();
          v33 = *(v2 + 16);
          goto LABEL_23;
        }
      }

LABEL_23:
      if (v8 == ++v9)
      {
        goto LABEL_26;
      }
    }
  }

  v33 = v7;
LABEL_26:
  *(v0 + 368) = v33;
  *(v0 + 376) = v7;

  v3 = OUTLINED_FUNCTION_2_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA37B900()
{
  OUTLINED_FUNCTION_9_1();
  *(v0 + 360) = (*(v0 + 344))(*(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 216));

  v1 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1DA37B978()
{
  v38 = v1;
  v2 = MEMORY[0x1E69E7CC0];
  if (v1[45])
  {
    v3 = v1[45];
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1DA3943C4();
  OUTLINED_FUNCTION_25_0();
  if (!v7)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }

  v1[22] = v2;
  v4 = sub_1DA377B88(v3);
  if (v4)
  {
    v8 = v4;
    if (v4 < 1)
    {
      goto LABEL_32;
    }

    v9 = 0;
    v10 = v3 & 0xC000000000000001;
    v35 = 0x7FFFFFFFFFFFFFFFLL;
    v36 = v0 / 100;
    v33 = v3 & 0xC000000000000001;
    v34 = v2;
    v31 = v3;
    v32 = v1;
    while (1)
    {
      if (v10)
      {
        v11 = MEMORY[0x1DA74BE10](v9, v3);
      }

      else
      {
        v11 = *(v3 + 8 * v9 + 32);
      }

      v12 = v1[25];
      v13 = *(v11 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens);

      v14 = sub_1DA37BDE8(v12, v13, v36);

      if (v36 >= v14)
      {
        if (qword_1EDCC52A0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v15 = sub_1DA3942F4();
        __swift_project_value_buffer(v15, qword_1EDCC51C0);

        v16 = sub_1DA3942D4();
        v17 = sub_1DA394584();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v37 = v19;
          *v18 = 136315394;
          swift_beginAccess();
          v20 = v8;
          v21 = *(v11 + 16);
          v22 = *(v11 + 24);

          v23 = sub_1DA372AD8(v21, v22, &v37);
          v8 = v20;

          *(v18 + 4) = v23;
          v3 = v31;
          v1 = v32;
          *(v18 + 12) = 2048;
          *(v18 + 14) = v14;
          _os_log_impl(&dword_1DA365000, v16, v17, "Found phrase within fuzzyDistance threshold. Phrase: %s => EditDistance: %ld", v18, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v19);
          OUTLINED_FUNCTION_46();
          OUTLINED_FUNCTION_46();
        }

        MEMORY[0x1DA74BB40](v24);
        OUTLINED_FUNCTION_7_3();
        v10 = v33;
        if (v26)
        {
          OUTLINED_FUNCTION_5_3(v25);
          sub_1DA394504();
        }

        v27 = sub_1DA394524();
        v2 = v1[21];
        if (v14 < v35)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD490, &qword_1DA395E80);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1DA395E30;
          *(v28 + 32) = v11;
          v34 = v28;
          v35 = v14;
          v1[22] = v28;
          goto LABEL_26;
        }

        if (v14 == v35)
        {
          MEMORY[0x1DA74BB40](v27);
          OUTLINED_FUNCTION_7_3();
          if (v26)
          {
            OUTLINED_FUNCTION_5_3(v29);
            sub_1DA394504();
          }

          sub_1DA394524();
          v34 = v1[22];
          goto LABEL_26;
        }
      }

LABEL_26:
      if (v8 == ++v9)
      {
        goto LABEL_29;
      }
    }
  }

  v34 = v2;
LABEL_29:
  v1[46] = v34;
  v1[47] = v2;

  v4 = OUTLINED_FUNCTION_2_4();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA37BD10()
{
  OUTLINED_FUNCTION_9_1();
  (*(v0 + 384))(*(v0 + 184), *(v0 + 192), *(v0 + 376), *(v0 + 272), *(v0 + 216));

  v1 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1DA37BD88()
{
  OUTLINED_FUNCTION_9_1();

  v1 = *(v0 + 8);
  v2 = *(v0 + 368);

  return v1(v2);
}

unint64_t sub_1DA37BDE8(uint64_t a1, unint64_t a2, int64_t a3)
{
  v5 = 0;
  isUniquelyReferenced_nonNull_native = *(a1 + 16);
  v7 = a1 + 40;
  v170 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v7 + 16 * v5);
  while (isUniquelyReferenced_nonNull_native != v5)
  {
    if (v5 >= isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_231;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_232;
    }

    v11 = *(v8 - 1);
    v10 = *v8;
    v12 = HIBYTE(*v8) & 0xF;
    if ((*v8 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    ++v5;
    v8 += 2;
    if (v12)
    {

      v13 = v170;
      v181[0] = v170;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = OUTLINED_FUNCTION_13_1();
        sub_1DA36CB08(v14, v15, 1);
        v13 = v181[0];
      }

      v16 = *(v13 + 16);
      if (v16 >= *(v13 + 24) >> 1)
      {
        v18 = OUTLINED_FUNCTION_16_1();
        sub_1DA36CB08(v18, v16 + 1, 1);
        v13 = v181[0];
      }

      *(v13 + 16) = v16 + 1;
      v170 = v13;
      v17 = v13 + 16 * v16;
      *(v17 + 32) = v11;
      *(v17 + 40) = v10;
      v5 = v9;
      goto LABEL_2;
    }
  }

  v19 = 0;
  v20 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = a2 + 40;
  v180 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v21 = (isUniquelyReferenced_nonNull_native + 16 * v19);
  while (v20 != v19)
  {
    if (v19 >= v20)
    {
      goto LABEL_233;
    }

    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_234;
    }

    v24 = *(v21 - 1);
    v23 = *v21;
    v25 = HIBYTE(*v21) & 0xF;
    if ((*v21 & 0x2000000000000000) == 0)
    {
      v25 = v24 & 0xFFFFFFFFFFFFLL;
    }

    ++v19;
    v21 += 2;
    if (v25)
    {

      v26 = v180;
      v181[0] = v180;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = OUTLINED_FUNCTION_13_1();
        sub_1DA36CB08(v27, v28, 1);
        v26 = v181[0];
      }

      v29 = *(v26 + 16);
      if (v29 >= *(v26 + 24) >> 1)
      {
        v31 = OUTLINED_FUNCTION_16_1();
        sub_1DA36CB08(v31, v29 + 1, 1);
        v26 = v181[0];
      }

      *(v26 + 16) = v29 + 1;
      v180 = v26;
      v30 = v26 + 16 * v29;
      *(v30 + 32) = v24;
      *(v30 + 40) = v23;
      v19 = v22;
      goto LABEL_15;
    }
  }

  v32 = MEMORY[0x1E69E7CD0];
  v182 = MEMORY[0x1E69E7CD0];
  v178 = sub_1DA394344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD300, &unk_1DA395610);
  v33 = sub_1DA394344();
  v34 = 0;
  v171 = *(v170 + 16);
  v167 = v33;
  v35 = v180;
  v179 = v180 + 32;
LABEL_28:
  if (v34 == v171)
  {
    v39 = v170;
    isUniquelyReferenced_nonNull_native = a3;
    if (*(v170 + 16) - *(v178 + 16) > a3)
    {

      return a3 + 1;
    }

    v165 = *(v170 + 16);
    v38 = v167;
    if (!v171)
    {
      goto LABEL_94;
    }

    v54 = 0;
    v55 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v54 >= *(v39 + 16))
      {
        goto LABEL_242;
      }

      OUTLINED_FUNCTION_21_0();
      if (v38 && (v56 = OUTLINED_FUNCTION_26_0(), sub_1DA3753E0(v56, v57), (v58 & 1) != 0))
      {

        v38 = v32;
      }

      else
      {

        OUTLINED_FUNCTION_26_0();
        v59 = sub_1DA3943C4();
        v176 = v34;
        if (v59)
        {
          v60 = v59;
          if (v59 < 1)
          {
            v61 = v55;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4C8, &unk_1DA395EC0);
            v61 = swift_allocObject();
            _swift_stdlib_malloc_size(v61);
            OUTLINED_FUNCTION_5_2();
            *(v61 + 16) = v60;
            *(v61 + 24) = v62;
          }

          OUTLINED_FUNCTION_8_3();
          while (v38)
          {
            v63 = sub_1DA394404();
            if (!v64)
            {
              goto LABEL_257;
            }

            OUTLINED_FUNCTION_15_1(v63, v64);
            if (v46)
            {

              goto LABEL_74;
            }
          }

          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:

          if ((v161 & 1) == 0)
          {
            return isUniquelyReferenced_nonNull_native;
          }

          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
          goto LABEL_243;
        }

        v61 = v55;
LABEL_74:

        v65 = *(v61 + 16);
        if (v65)
        {
          v181[0] = v55;
          v66 = OUTLINED_FUNCTION_13_1();
          sub_1DA36CB08(v66, v65, 0);
          v34 = v181[0];
          do
          {
            OUTLINED_FUNCTION_22_0();
            if (isUniquelyReferenced_nonNull_native >= v32 >> 1)
            {
              v67 = OUTLINED_FUNCTION_16_1();
              sub_1DA36CB08(v67, v38, 1);
              v34 = v181[0];
            }

            OUTLINED_FUNCTION_18_0();
          }

          while (!v46);

          isUniquelyReferenced_nonNull_native = a3;
          v39 = v170;
          v55 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v34 = v55;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v181[0] = v32;
        sub_1DA3753E0(v176, v3);
        OUTLINED_FUNCTION_12_1();
        v38 = v68 + v69;
        if (__OFADD__(v68, v69))
        {
          goto LABEL_246;
        }

        OUTLINED_FUNCTION_10_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4C0, &qword_1DA395EB8);
        OUTLINED_FUNCTION_14_1();
        if (sub_1DA394824())
        {
          v32 = v181[0];
          sub_1DA3753E0(v176, v3);
          OUTLINED_FUNCTION_3_4();
          if (!v46)
          {
            goto LABEL_260;
          }

          v61 = v70;
        }

        if (v54)
        {

          OUTLINED_FUNCTION_27_0();
        }

        else
        {
          v38 = v181[0];
          OUTLINED_FUNCTION_1_4(v181[0] + 8 * (v61 >> 6));
          OUTLINED_FUNCTION_17_0((*(v38 + 48) + 16 * v61));
          if (v52)
          {
            goto LABEL_249;
          }

          *(v38 + 16) = v71;
        }
      }

      if (++v54 == v171)
      {
        goto LABEL_95;
      }
    }
  }

  sub_1DA373048(v34, 1, v170);
  v36 = (v170 + 32 + 16 * v34);
  v3 = *v36;
  v37 = v36[1];
  v172 = v34 + 1;
  v175 = v34;
  v34 = *(v35 + 16);

  v38 = 0;
LABEL_30:
  v39 = v32 + 56;
  while (1)
  {
LABEL_31:
    if (v38 == v34)
    {

      v34 = v172;
      v35 = v180;
      goto LABEL_28;
    }

    v40 = v38;
    if (v38 >= *(v180 + 16))
    {
      break;
    }

    v41 = (v179 + 16 * v38);
    v42 = *v41;
    isUniquelyReferenced_nonNull_native = v41[1];
    ++v38;
    if (*(v32 + 16))
    {
      v43 = sub_1DA3949C4();
      v44 = ~(-1 << *(v32 + 32));
      while (1)
      {
        v45 = v43 & v44;
        if (((*(v39 + (((v43 & v44) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v43 & v44)) & 1) == 0)
        {
          break;
        }

        v43 = v45 + 1;
        if (*(*(v32 + 48) + 8 * v45) == v40)
        {
          goto LABEL_31;
        }
      }
    }

    v46 = v42 == v3 && isUniquelyReferenced_nonNull_native == v37;
    if (v46 || (sub_1DA394934() & 1) != 0)
    {
      sub_1DA378404(v181, v40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v181[0] = v178;
      sub_1DA375458(v175);
      OUTLINED_FUNCTION_12_1();
      if (__OFADD__(v47, v48))
      {
        goto LABEL_235;
      }

      OUTLINED_FUNCTION_10_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4B8, &qword_1DA395EB0);
      OUTLINED_FUNCTION_14_1();
      if (sub_1DA394824())
      {
        isUniquelyReferenced_nonNull_native = v175;
        sub_1DA375458(v175);
        OUTLINED_FUNCTION_3_4();
        if (!v46)
        {
          goto LABEL_260;
        }

        v40 = v49;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v175;
      }

      v178 = v181[0];
      if (v42)
      {
        *(*(v181[0] + 56) + 8 * v40) = 0;
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_1_4(v181[0] + 8 * (v40 >> 6));
      *(v50[6] + 8 * v40) = isUniquelyReferenced_nonNull_native;
      *(v50[7] + 8 * v40) = 0;
      v51 = v50[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_238;
      }

      v50[2] = v53;
LABEL_53:
      v32 = v182;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_94:
  v55 = MEMORY[0x1E69E7CC0];
LABEL_95:
  v177 = *(v180 + 16);
  if (v177)
  {
    v72 = 0;
    while (v72 < *(v180 + 16))
    {
      OUTLINED_FUNCTION_21_0();
      if (v38 && (v73 = OUTLINED_FUNCTION_26_0(), sub_1DA3753E0(v73, v74), (v75 & 1) != 0))
      {

        v38 = v32;
      }

      else
      {

        OUTLINED_FUNCTION_26_0();
        v76 = sub_1DA3943C4();
        v173 = v34;
        if (v76)
        {
          v77 = v76;
          if (v76 < 1)
          {
            v78 = v55;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4C8, &unk_1DA395EC0);
            v78 = swift_allocObject();
            _swift_stdlib_malloc_size(v78);
            OUTLINED_FUNCTION_5_2();
            *(v78 + 16) = v77;
            *(v78 + 24) = v79;
          }

          OUTLINED_FUNCTION_8_3();
          do
          {
            if (!v38)
            {
              goto LABEL_230;
            }

            v80 = sub_1DA394404();
            if (!v81)
            {
              goto LABEL_258;
            }

            OUTLINED_FUNCTION_15_1(v80, v81);
          }

          while (!v46);
        }

        else
        {
          v78 = v55;
        }

        v82 = *(v78 + 16);
        if (v82)
        {
          v181[0] = v55;
          v83 = OUTLINED_FUNCTION_13_1();
          sub_1DA36CB08(v83, v82, 0);
          v34 = v181[0];
          do
          {
            OUTLINED_FUNCTION_22_0();
            if (isUniquelyReferenced_nonNull_native >= v32 >> 1)
            {
              v84 = OUTLINED_FUNCTION_16_1();
              sub_1DA36CB08(v84, v38, 1);
              v34 = v181[0];
            }

            OUTLINED_FUNCTION_18_0();
          }

          while (!v46);

          isUniquelyReferenced_nonNull_native = a3;
          v39 = v170;
          v55 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v34 = v55;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v181[0] = v32;
        sub_1DA3753E0(v173, v3);
        OUTLINED_FUNCTION_12_1();
        v38 = v85 + v86;
        if (__OFADD__(v85, v86))
        {
          goto LABEL_247;
        }

        OUTLINED_FUNCTION_10_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4C0, &qword_1DA395EB8);
        OUTLINED_FUNCTION_14_1();
        if (sub_1DA394824())
        {
          v32 = v181[0];
          sub_1DA3753E0(v173, v3);
          OUTLINED_FUNCTION_3_4();
          if (!v46)
          {
            goto LABEL_260;
          }

          v78 = v87;
        }

        if (v72)
        {

          OUTLINED_FUNCTION_27_0();
        }

        else
        {
          v38 = v181[0];
          OUTLINED_FUNCTION_1_4(v181[0] + 8 * (v78 >> 6));
          OUTLINED_FUNCTION_17_0((*(v38 + 48) + 16 * v78));
          if (v52)
          {
            goto LABEL_250;
          }

          *(v38 + 16) = v88;
        }
      }

      if (++v72 == v177)
      {
        goto LABEL_130;
      }
    }

LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:

    __break(1u);
LABEL_258:

    __break(1u);
LABEL_259:

    __break(1u);
    while (1)
    {
LABEL_260:
      sub_1DA394964();
      __break(1u);
    }
  }

LABEL_130:
  v89 = 0;
  v90 = 0;
  v52 = __OFADD__(isUniquelyReferenced_nonNull_native, 1);
  v91 = isUniquelyReferenced_nonNull_native + 1;
  v92 = v52;
  v161 = v92;
  v156 = v165 - 1;
  v93 = v39 + 40;
  v94 = v180;
  v160 = v91;
  v155 = v93;
  do
  {
    v159 = v89;
    v168 = v38;
    v95 = (v93 + 16 * v90);
    do
    {
      if (v171 == v90)
      {

        return v89;
      }

      v96 = v90;
      if (v90 >= *(v170 + 16))
      {
        goto LABEL_240;
      }

      v97 = *(v95 - 1);
      v174 = *v95;
      if (!*(v178 + 16))
      {
        break;
      }

      sub_1DA375458(v90);
      v95 += 2;
      v90 = v96 + 1;
    }

    while ((v98 & 1) != 0);

    v164 = sub_1DA394434();
    v100 = v99;
    v101 = sub_1DA3943C4();
    if ((v101 * 51) >> 64 != (51 * v101) >> 63)
    {
      goto LABEL_251;
    }

    v166 = v97;
    v102 = 0;
    v157 = v96 + 1;
    v158 = 51 * v101 / 100;
    v163 = v100;
LABEL_141:
    v103 = v182;
LABEL_142:
    while (1)
    {
      v104 = v102;
      if (v102 == v177)
      {
        break;
      }

      if (v102 >= *(v94 + 16))
      {
        goto LABEL_239;
      }

      v105 = (v179 + 16 * v102);
      v106 = *v105;
      v107 = v105[1];
      ++v102;
      if (*(v103 + 16))
      {
        v108 = sub_1DA3949C4();
        v109 = ~(-1 << *(v103 + 32));
        while (1)
        {
          v110 = v108 & v109;
          if (((*(v103 + 56 + (((v108 & v109) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v108 & v109)) & 1) == 0)
          {
            break;
          }

          v108 = v110 + 1;
          if (*(*(v103 + 48) + 8 * v110) == v104)
          {
            goto LABEL_142;
          }
        }
      }

      v111 = v178;
      if (*(v178 + 16) && (v112 = sub_1DA375458(v96), (v113 & 1) != 0))
      {
        v114 = *(*(v178 + 56) + 8 * v112);
      }

      else
      {
        v114 = v160;
        if (v161)
        {
          goto LABEL_244;
        }
      }

      v169 = v114;

      if (sub_1DA394434() == v164 && v115 == v100)
      {

LABEL_172:
        if (*(v168 + 16))
        {
          v122 = sub_1DA3753E0(v166, v174);
          v123 = MEMORY[0x1E69E7CC0];
          if (v124)
          {
            v125 = *(*(v168 + 56) + 8 * v122);

            goto LABEL_177;
          }
        }

        else
        {
          v123 = MEMORY[0x1E69E7CC0];
        }

        v125 = v123;
LABEL_177:
        if (v96 < v156)
        {
          if (*(v168 + 16))
          {
            sub_1DA3753E0(v106, v107);
            OUTLINED_FUNCTION_10_2();

            v126 = v123;
            if (v97)
            {
              v126 = *(*(v168 + 56) + 8 * v106);
            }
          }

          else
          {

            v126 = v123;
          }

          goto LABEL_206;
        }

        v127 = sub_1DA3943C4();
        if (v127)
        {
          v128 = v127;
          if (v127 < 1)
          {
            v97 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4C8, &unk_1DA395EC0);
            v97 = swift_allocObject();
            _swift_stdlib_malloc_size(v97);
            OUTLINED_FUNCTION_5_2();
            *(v97 + 16) = v128;
            *(v97 + 24) = v129;
          }

          v130 = HIBYTE(v107) & 0xF;
          if ((v107 & 0x2000000000000000) == 0)
          {
            v130 = v106 & 0xFFFFFFFFFFFFLL;
          }

          v181[0] = v106;
          v181[1] = v107;
          v181[2] = 0;
          v181[3] = v130;
          v131 = v128 & ~(v128 >> 63);

          v132 = 32;
          do
          {
            if (!v131)
            {
              goto LABEL_245;
            }

            v133 = sub_1DA394404();
            if (!v134)
            {
              goto LABEL_259;
            }

            v135 = (v97 + v132);
            *v135 = v133;
            v135[1] = v134;
            v132 += 16;
            --v131;
            --v128;
          }

          while (v128);

          v126 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v126 = MEMORY[0x1E69E7CC0];
          v97 = MEMORY[0x1E69E7CC0];
        }

        v136 = sub_1DA3943C4();
        if ((v136 & 0x8000000000000000) != 0)
        {
          goto LABEL_256;
        }

        if (*(v97 + 16) >= v136)
        {
          v137 = v136;
        }

        else
        {
          v137 = *(v97 + 16);
        }

        if (v136 && v137)
        {
          v154 = v125;
          v181[0] = v126;
          v138 = OUTLINED_FUNCTION_13_1();
          sub_1DA36CB08(v138, v137, 0);
          v126 = v181[0];
          v139 = (v97 + 40);
          do
          {
            v140 = *(v139 - 1);
            v97 = *v139;
            v181[0] = v126;
            v141 = *(v126 + 16);
            v142 = *(v126 + 24);

            if (v141 >= v142 >> 1)
            {
              v144 = OUTLINED_FUNCTION_16_1();
              sub_1DA36CB08(v144, v141 + 1, 1);
              v126 = v181[0];
            }

            *(v126 + 16) = v141 + 1;
            v143 = v126 + 16 * v141;
            *(v143 + 32) = v140;
            *(v143 + 40) = v97;
            v139 += 2;
            --v137;
          }

          while (v137);

          v111 = v178;
          v125 = v154;
        }

        else
        {
        }

LABEL_206:
        v145 = sub_1DA36F3BC(v125, v126);

        if (v145 >= v169)
        {
          v146 = v169;
        }

        else
        {
          v146 = v145;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v181[0] = v111;
        sub_1DA375458(v96);
        OUTLINED_FUNCTION_24_0();
        if (v52)
        {
          goto LABEL_252;
        }

        OUTLINED_FUNCTION_10_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4B8, &qword_1DA395EB0);
        OUTLINED_FUNCTION_14_1();
        if (sub_1DA394824())
        {
          sub_1DA375458(v96);
          OUTLINED_FUNCTION_3_4();
          v94 = v180;
          if (!v46)
          {
            goto LABEL_260;
          }

          v145 = v147;
        }

        else
        {
          v94 = v180;
        }

        v178 = v181[0];
        if (v97)
        {
          *(*(v181[0] + 56) + 8 * v145) = v146;
          v100 = v163;
        }

        else
        {
          OUTLINED_FUNCTION_1_4(v181[0] + 8 * (v145 >> 6));
          OUTLINED_FUNCTION_11_2();
          if (v52)
          {
            goto LABEL_255;
          }

          *(v149 + 16) = v148;
          v100 = v163;
        }

        goto LABEL_141;
      }

      LOBYTE(v97) = sub_1DA394934();

      if (v97)
      {
        goto LABEL_172;
      }

      v117 = sub_1DA3943C4();
      if (v117 >= v169)
      {
        v118 = v169;
      }

      else
      {
        v118 = v117;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v181[0] = v178;
      sub_1DA375458(v96);
      OUTLINED_FUNCTION_24_0();
      if (v52)
      {
        goto LABEL_241;
      }

      OUTLINED_FUNCTION_10_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4B8, &qword_1DA395EB0);
      OUTLINED_FUNCTION_14_1();
      if (sub_1DA394824())
      {
        sub_1DA375458(v96);
        OUTLINED_FUNCTION_3_4();
        v94 = v180;
        if (!v46)
        {
          goto LABEL_260;
        }

        v106 = v119;
      }

      else
      {
        v94 = v180;
      }

      v178 = v181[0];
      if (v97)
      {
        *(*(v181[0] + 56) + 8 * v106) = v118;
        v100 = v163;
      }

      else
      {
        OUTLINED_FUNCTION_1_4(v181[0] + 8 * (v106 >> 6));
        OUTLINED_FUNCTION_11_2();
        if (v52)
        {
          goto LABEL_248;
        }

        *(v121 + 16) = v120;
        v100 = v163;
      }
    }

    v150 = sub_1DA373CA0(v96, v178);
    isUniquelyReferenced_nonNull_native = v160;
    if (v151)
    {
      v152 = v160;
    }

    else
    {
      v152 = v150;
    }

    if ((v151 & 1 & v161) != 0)
    {
      goto LABEL_254;
    }

    v38 = v168;
    if (v158 < v152)
    {
      goto LABEL_236;
    }

    v89 = v159 + v152;
    if (__OFADD__(v159, v152))
    {
      goto LABEL_253;
    }

    v93 = v155;
    v90 = v157;
  }

  while (v89 <= a3);

  return v89;
}

void *sub_1DA37CEC4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD490, &qword_1DA395E80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_1DA37CF6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DA37D068(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  v7 = sub_1DA37DC50(*a1, v2, v3, v4, v5, v6, a1[6]);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = sub_1DA37CEC4(v7, 0);
  sub_1DA37DF0C(v1, v2, v3);
  sub_1DA37DF0C(v4, v5, v6);

  v10 = sub_1DA37D400(v12, v9 + 4, v8);
  sub_1DA37DF18(v12, &qword_1ECBAD4A8, &qword_1DA395E98);
  if (v10 != v8)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v9;
}

void sub_1DA37D164(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD458, &unk_1DA396490);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

BOOL sub_1DA37D238(_BOOL8 result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    if (a3)
    {
      v6 = MEMORY[0x1DA74BD00](a4, a5, result, a2);
      return (v6 & 1) == 0;
    }
  }

  else if ((a3 & 1) == 0)
  {
    if (a5 == a2)
    {
      v6 = a4 < result;
      return (v6 & 1) == 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DA37D29C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DA37D308(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1DA37D354(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      result = MEMORY[0x1DA74BD00](result, v5, v6, v7);
      goto LABEL_7;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (*(a2 + 16))
  {
    goto LABEL_19;
  }

  if (v5 != v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = result < v6;
LABEL_7:
  if (result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  result = *(a2 + 24);
  v10 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (*(a1 + 40))
    {
      result = MEMORY[0x1DA74BD00](result, v10, v8, v9);
      if ((result & 1) == 0)
      {
        return result;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

LABEL_20:
    __break(1u);
    return result;
  }

  if (*(a1 + 40))
  {
    goto LABEL_20;
  }

  if (v10 != v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result < v8)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1DA37D400(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  *(&__src[3] + 8) = *v3;
  v32 = *(&__src[3] + 8);
  v5 = *(v3 + 32);
  __src[0] = *(&__src[3] + 8);
  __src[1] = v4;
  BYTE8(__src[4]) = *(v3 + 16);
  v33 = BYTE8(__src[4]);
  __src[2] = v5;
  *&__src[3] = *(v3 + 48);
  if (!a2)
  {
    memcpy(result, __src, 0x49uLL);
    sub_1DA37DF78(&v32, v30);
    return 0;
  }

  v6 = a3;
  __dst = result;
  if (!a3)
  {
    sub_1DA37DF78(&v32, v30);
LABEL_43:
    memcpy(__dst, __src, 0x49uLL);
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v8 = *(v3 + 48);
    v9 = *(v3 + 32);
    v29 = *(v3 + 24);
    v28 = *(v3 + 40);
    result = sub_1DA37DF78(&v32, v30);
    v10 = 0;
    v26 = v6;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v12 = *(&__src[3] + 8);
      v13 = BYTE8(__src[4]);
      if (BYTE8(__src[4]))
      {
        if ((v28 & 1) == 0)
        {
          goto LABEL_56;
        }

        result = MEMORY[0x1DA74BD10](*(&__src[3] + 1), *&__src[4], v29, v9);
        if (result)
        {
LABEL_44:
          memcpy(__dst, __src, 0x49uLL);
          return v10;
        }

        if ((v33 & 1) == 0)
        {
          goto LABEL_57;
        }

        result = MEMORY[0x1DA74BD00](v12, *(&v12 + 1), v32, *(&v32 + 1));
        if (result)
        {
          goto LABEL_49;
        }

        result = MEMORY[0x1DA74BD00](v12, *(&v12 + 1), v29, v9);
        if ((result & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v28)
        {
          goto LABEL_56;
        }

        if (LODWORD(__src[4]) != v9)
        {
          goto LABEL_48;
        }

        if (*(&__src[3] + 1) == v29)
        {
          goto LABEL_44;
        }

        if (v33)
        {
          goto LABEL_57;
        }

        if (DWORD2(v32) != v9)
        {
          goto LABEL_50;
        }

        if (*(&__src[3] + 1) < v32)
        {
          goto LABEL_51;
        }

        if (*(&__src[3] + 1) >= v29)
        {
          goto LABEL_47;
        }
      }

      result = sub_1DA37DFE8(v12, *(&v12 + 1), v13, v8);
      v14 = result;
      if ((v8 & 0xC000000000000001) != 0)
      {
        if (!v13)
        {
          goto LABEL_58;
        }

        if (sub_1DA394674())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD498, &qword_1DA395E88);
        v19 = sub_1DA394564();
        sub_1DA394714();
        result = v19(v30, 0);
      }

      else
      {
        if (v13)
        {
          goto LABEL_59;
        }

        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v15 = 1 << *(v8 + 32);
        if (v12 >= v15)
        {
          goto LABEL_52;
        }

        v16 = v12 >> 6;
        v17 = *(v8 + 56 + 8 * (v12 >> 6));
        if (((v17 >> v12) & 1) == 0)
        {
          goto LABEL_53;
        }

        if (*(v8 + 36) != DWORD2(v12))
        {
          goto LABEL_54;
        }

        v18 = v17 & (-2 << (v12 & 0x3F));
        if (v18)
        {
          v15 = __clz(__rbit64(v18)) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v16 << 6;
          v21 = v16 + 1;
          v22 = (v8 + 64 + 8 * v16);
          while (v21 < (v15 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              result = sub_1DA37E1BC(v12, *(&v12 + 1), 0);
              v15 = __clz(__rbit64(v23)) + v20;
              goto LABEL_37;
            }
          }

          result = sub_1DA37E1BC(v12, *(&v12 + 1), 0);
LABEL_37:
          v6 = v26;
        }

        v25 = *(v8 + 36);
        *(&__src[3] + 1) = v15;
        *&__src[4] = v25;
        BYTE8(__src[4]) = 0;
      }

      *v7++ = v14;
      v10 = v11;
      if (v11 == v6)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

BOOL sub_1DA37D79C(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x1DA74BD10);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t sub_1DA37D7D0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1DA394654();
  }

  else
  {
    return sub_1DA394634();
  }
}

uint64_t sub_1DA37D830(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1DA394704();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

uint64_t sub_1DA37D884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DA37D7D0(a2);
  v8 = v7;
  v10 = v9;
  v11 = sub_1DA37D830(a2);
  v13 = v12;
  v14 = v10 & 1;
  v16 = v15 & 1;
  result = sub_1DA37D238(v6, v8, v14, v11, v12, v15 & 1);
  if (result)
  {
    v24[0] = v6;
    v24[1] = v8;
    v25 = v14;
    v26 = v11;
    v27 = v13;
    v28 = v16;
    sub_1DA37D354(a1, v24);
    sub_1DA37E1BC(v6, v8, v14);
    sub_1DA37E1BC(v11, v13, v16);
    v18 = *a1;
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v21 = *(a1 + 24);
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);

    sub_1DA37DF0C(v18, v19, v20);
    result = sub_1DA37DF0C(v21, v22, v23);
    *a3 = v18;
    *(a3 + 8) = v19;
    *(a3 + 16) = v20;
    *(a3 + 24) = v21;
    *(a3 + 32) = v22;
    *(a3 + 40) = v23;
    *(a3 + 48) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA37D9B0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 < 0)
  {
    goto LABEL_38;
  }

  v13 = result;
  v34 = result;
  v35 = a2;
  v36 = a3 & 1;
  result = sub_1DA37DF0C(result, a2, a3 & 1);
  if (!a4)
  {
    return v13;
  }

  v14 = 0;
  v15 = a8 & 0xC000000000000001;
  v32 = a6;
  while (1)
  {
    v17 = v34;
    v16 = v35;
    v18 = v36;
    if (v36)
    {
      if ((a7 & 1) == 0)
      {
        goto LABEL_39;
      }

      result = MEMORY[0x1DA74BD10](v34, v35, a5, a6);
      if (result)
      {
        a5 = v17;
LABEL_32:
        sub_1DA37E1BC(a5, v16, v18);
        return 0;
      }

      if (!v15)
      {
        goto LABEL_40;
      }

      if (sub_1DA394674())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD498, &qword_1DA395E88);
      v23 = sub_1DA394564();
      sub_1DA394714();
      result = v23(v33, 0);
      goto LABEL_28;
    }

    if (a7)
    {
      goto LABEL_39;
    }

    if (v35 != a6)
    {
      break;
    }

    if (v34 == a5)
    {
      goto LABEL_32;
    }

    if (v15)
    {
      goto LABEL_41;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }

    v19 = 1 << *(a8 + 32);
    if (v34 >= v19)
    {
      goto LABEL_35;
    }

    v20 = v34 >> 6;
    v21 = *(a8 + 56 + 8 * (v34 >> 6));
    if (((v21 >> v34) & 1) == 0)
    {
      goto LABEL_36;
    }

    if (*(a8 + 36) != v35)
    {
      goto LABEL_37;
    }

    v22 = v21 & (-2 << (v34 & 0x3F));
    if (v22)
    {
      v19 = __clz(__rbit64(v22)) | v34 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = a5;
      v25 = a7;
      v26 = v20 << 6;
      v27 = v20 + 1;
      v28 = (a8 + 64 + 8 * v20);
      while (v27 < (v19 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_1DA37E1BC(v34, v35, 0);
          v19 = __clz(__rbit64(v29)) + v26;
          goto LABEL_26;
        }
      }

      result = sub_1DA37E1BC(v34, v35, 0);
LABEL_26:
      a7 = v25;
      a5 = v24;
      v15 = a8 & 0xC000000000000001;
      a6 = v32;
    }

    v31 = *(a8 + 36);
    v34 = v19;
    v35 = v31;
    v36 = 0;
LABEL_28:
    if (++v14 >= a4)
    {
      return v34;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1DA37DC50(_BOOL8 a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = a6;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  v14 = a3 & 1;
  result = sub_1DA37D238(a1, a2, a3 & 1, a4, a5, a6 & 1);
  if ((result & 1) == 0)
  {
    goto LABEL_39;
  }

  v30 = v13;
  v31 = v12;
  v32 = v14;
  if (sub_1DA37D79C(v13, v12, v14, a4, a5, v8 & 1))
  {
    return 0;
  }

  result = sub_1DA37DF0C(v13, v12, v11 & 1);
  v16 = 0;
  v28 = v8;
  while (!__OFADD__(v16++, 1))
  {
    if ((a7 & 0xC000000000000001) != 0)
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_41;
      }

      if (sub_1DA394674())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD498, &qword_1DA395E88);
      v22 = sub_1DA394564();
      sub_1DA394714();
      result = v22(v29, 0);
      v13 = v30;
      v12 = v31;
      if ((v32 & 1) == 0)
      {
        goto LABEL_28;
      }

      if ((v8 & 1) == 0)
      {
        goto LABEL_40;
      }

      result = MEMORY[0x1DA74BD10](v30, v31, a4, a5);
      v11 = 1;
      if (result)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_42;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      v18 = 1 << *(a7 + 32);
      if (v13 >= v18)
      {
        goto LABEL_36;
      }

      v19 = v13 >> 6;
      v20 = *(a7 + 56 + 8 * (v13 >> 6));
      if (((v20 >> v13) & 1) == 0)
      {
        goto LABEL_37;
      }

      if (*(a7 + 36) != v12)
      {
        goto LABEL_38;
      }

      v21 = v20 & (-2 << (v13 & 0x3F));
      if (v21)
      {
        v18 = __clz(__rbit64(v21)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v19 << 6;
        v24 = v19 + 1;
        v25 = (a7 + 64 + 8 * v19);
        while (v24 < (v18 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1DA37E1BC(v13, v12, 0);
            v18 = __clz(__rbit64(v26)) + v23;
            goto LABEL_26;
          }
        }

        result = sub_1DA37E1BC(v13, v12, 0);
LABEL_26:
        v8 = v28;
      }

      v12 = *(a7 + 36);
      v30 = v18;
      v31 = v12;
      v32 = 0;
      v13 = v18;
LABEL_28:
      if (v8)
      {
        goto LABEL_40;
      }

      if (v12 != a5)
      {
        goto LABEL_35;
      }

      v11 = 0;
      if (v13 == a4)
      {
        v13 = a4;
LABEL_32:
        sub_1DA37E1BC(v13, v12, v11);
        return v16;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1DA37DF0C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1DA37DF18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DA37DF78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4B0, &unk_1DA395EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA37DFE8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v5 = a4;
      }

      else
      {
        v5 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      v11 = MEMORY[0x1DA74BD60](result, a2, v5);
      type metadata accessor for AutoCompletePhrase(0);
      swift_dynamicCast();
      return v10;
    }

LABEL_25:
    __break(1u);
    return result;
  }

  if (a3)
  {
    type metadata accessor for AutoCompletePhrase(0);
    if (sub_1DA3946A4() == *(a4 + 36))
    {
      v11 = sub_1DA3946B4();
      swift_dynamicCast();
      v6 = v10;
      sub_1DA3949D4();
      sub_1DA36AA48(&v10);
      v7 = sub_1DA394A14();
      v8 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v9 = v7 & v8;
        if (((*(a4 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
        {
          goto LABEL_24;
        }

        if (static AutoCompletePhrase.== infix(_:_:)(*(*(a4 + 48) + 8 * v9), v6))
        {
          goto LABEL_18;
        }

        v7 = v9 + 1;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }
}

uint64_t sub_1DA37E1BC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t (*OUTLINED_FUNCTION_2_4())()
{
  *(v1 + 384) = *(v0 + 32);
  *(v1 + 392) = (v0 + 32) & 0xFFFFFFFFFFFFLL | 0x4B81000000000000;
  return sub_1DA37BD10;
}

uint64_t OUTLINED_FUNCTION_8_3()
{
  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = v0 & 0xFFFFFFFFFFFFLL;
  }

  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
  *(v2 - 112) = 0;
  *(v2 - 104) = v4;
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t result, uint64_t a2)
{
  v4 = (v2 + v3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_17_0(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v5;
  *(*(v2 + 56) + 8 * v3) = v4;
}

void OUTLINED_FUNCTION_18_0()
{
  *(v1 + 16) = v0;
  v5 = v1 + 16 * v2;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_20_0()
{
}

uint64_t OUTLINED_FUNCTION_21_0()
{
}

uint64_t OUTLINED_FUNCTION_22_0()
{
  *(v1 - 128) = v0;
}

uint64_t OUTLINED_FUNCTION_27_0()
{
  *(*(*(v2 - 128) + 56) + 8 * v0) = v1;
}

uint64_t sub_1DA37E410(unsigned __int8 a1)
{
  sub_1DA3949D4();
  MEMORY[0x1DA74C080](a1 + 1);
  return sub_1DA394A14();
}

uint64_t sub_1DA37E474(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_1DA3949D4();
  a2(v5, a1);
  return sub_1DA394A14();
}

uint64_t sub_1DA37E4C4(uint64_t a1)
{
  v1 = a1;
  sub_1DA3949D4();
  sub_1DA38B130(v1);
  sub_1DA394354();

  return sub_1DA394A14();
}

uint64_t sub_1DA37E528(uint64_t a1, unsigned __int8 a2)
{
  sub_1DA3949D4();
  MEMORY[0x1DA74C080](a2 + 1);
  return sub_1DA394A14();
}

uint64_t sub_1DA37E588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_1DA3949D4();
  a3(v6, a2);
  return sub_1DA394A14();
}

uint64_t sub_1DA37E5D4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_1DA3949D4();
  sub_1DA38B130(v2);
  sub_1DA394354();

  return sub_1DA394A14();
}

uint64_t sub_1DA37E634(uint64_t a1)
{
  result = MEMORY[0x1DA74BBD0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1DA3784D4(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA37E6F4(uint64_t a1)
{
  v2 = MEMORY[0x1DA74BBD0](*(a1 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1DA378404(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

void static DefaultSiriAutoCompleteService.initializeVectorDBClient(readOnly:featureFlagsProvider:databaseDirectoryOverride:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_123();
  v124 = v3;
  v5 = v4;
  v7 = v6;
  v130 = v8;
  sub_1DA394114();
  OUTLINED_FUNCTION_0();
  v119 = v10;
  v120 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7();
  v118 = v12 - v11;
  v13 = sub_1DA394154();
  OUTLINED_FUNCTION_0();
  v116 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7();
  v18 = (v17 - v16);
  v19 = sub_1DA394104();
  OUTLINED_FUNCTION_0();
  v115 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7();
  v125 = v23 - v22;
  v123 = sub_1DA3940D4();
  OUTLINED_FUNCTION_0();
  v128 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  v117 = v26 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v127 = v114 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD400, &unk_1DA395B90);
  OUTLINED_FUNCTION_23(v30);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v114 - v32;
  v34 = sub_1DA393EC4();
  OUTLINED_FUNCTION_0();
  v126 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v121 = v37 - v38;
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = v114 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v129 = v114 - v43;
  v44 = *(v5 + 32);
  v45 = OUTLINED_FUNCTION_68();
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v122 = v7;
  if (v7)
  {
    v47 = OUTLINED_FUNCTION_28_0();
    if ((v48(v47) & 1) == 0)
    {
      if (qword_1EDCC5A30 != -1)
      {
        OUTLINED_FUNCTION_22(&qword_1EDCC5A30);
      }

      v52 = sub_1DA3942F4();
      OUTLINED_FUNCTION_38_0(v52, qword_1EDCC5A38);
      v53 = sub_1DA3942D4();
      v54 = sub_1DA394584();
      if (!OUTLINED_FUNCTION_122(v54))
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_81();
      v55 = OUTLINED_FUNCTION_22_1();
      v131[0] = v55;
      *v44 = 136315138;
      OUTLINED_FUNCTION_55();
      *(v44 + 4) = sub_1DA372AD8(0xD000000000000052, v56, v57);
      v60 = "Function: %s > ftsQuery is not enabled. Not initializing ReadOnlyVectorDBClient";
LABEL_18:
      OUTLINED_FUNCTION_145(&dword_1DA365000, v58, v59, v60);
      __swift_destroy_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_16_2();
LABEL_19:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD410, &unk_1DA395BA0);
      OUTLINED_FUNCTION_135();
      OUTLINED_FUNCTION_91();

      __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
      return;
    }
  }

  else
  {
    v61 = OUTLINED_FUNCTION_28_0();
    if ((v62(v61) & 1) == 0)
    {
      if (qword_1EDCC5A30 != -1)
      {
        OUTLINED_FUNCTION_22(&qword_1EDCC5A30);
      }

      v76 = sub_1DA3942F4();
      OUTLINED_FUNCTION_38_0(v76, qword_1EDCC5A38);
      v53 = sub_1DA3942D4();
      v77 = sub_1DA394584();
      if (!OUTLINED_FUNCTION_122(v77))
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_81();
      v55 = OUTLINED_FUNCTION_22_1();
      v131[0] = v55;
      *v44 = 136315138;
      OUTLINED_FUNCTION_55();
      *(v44 + 4) = sub_1DA372AD8(0xD000000000000052, v78, v79);
      v60 = "Function: %s > indexBuilding is not enabled. Not initializing WritableVectorDBClient";
      goto LABEL_18;
    }
  }

  sub_1DA37F4EC(v124, v49, v50, v51);
  v63 = v34;
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {
    sub_1DA36CB60(v33, &qword_1ECBAD400, &unk_1DA395B90);
    if (qword_1EDCC5A30 != -1)
    {
      OUTLINED_FUNCTION_22(&qword_1EDCC5A30);
    }

    v64 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v64, qword_1EDCC5A38);
    v65 = sub_1DA3942D4();
    v66 = sub_1DA394594();
    if (OUTLINED_FUNCTION_122(v66))
    {
      OUTLINED_FUNCTION_81();
      v67 = OUTLINED_FUNCTION_22_1();
      v131[0] = v67;
      *v44 = 136315138;
      OUTLINED_FUNCTION_55();
      *(v44 + 4) = sub_1DA372AD8(0xD000000000000052, v68, v69);
      OUTLINED_FUNCTION_145(&dword_1DA365000, v70, v71, "Function: %s > Unable to create a directory for the search index");
      __swift_destroy_boxed_opaque_existential_1(v67);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_16_2();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD410, &unk_1DA395BA0);
    v72 = OUTLINED_FUNCTION_135();
  }

  else
  {
    v85 = v126;
    v86 = v129;
    (*(v126 + 32))(v129, v33, v63);
    v87 = *(v85 + 16);
    v114[1] = v42;
    v124 = v87;
    v87(v42, v86, v63);
    (*(v115 + 104))(v125, *MEMORY[0x1E69DF518], v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4D8, &qword_1DA395FA0);
    v115 = v63;
    v88 = sub_1DA394144();
    OUTLINED_FUNCTION_6_2(v88);
    OUTLINED_FUNCTION_130();
    v114[0] = swift_allocObject();
    *(v114[0] + 16) = xmmword_1DA395D10;
    *v18 = 0;
    v18[1] = 0;
    v89 = *(v116 + 104);
    v90 = OUTLINED_FUNCTION_37_0();
    v89(v90);
    sub_1DA394134();
    *v18 = 0;
    v18[1] = 0;
    v91 = OUTLINED_FUNCTION_37_0();
    v89(v91);
    OUTLINED_FUNCTION_127();
    sub_1DA394134();
    *v18 = 0;
    v18[1] = 0;
    v92 = OUTLINED_FUNCTION_37_0();
    v89(v92);
    sub_1DA394134();
    *v18 = 0;
    v18[1] = 0;
    v93 = OUTLINED_FUNCTION_37_0();
    v89(v93);
    sub_1DA394134();
    *v18 = 0;
    *(v18 + 8) = 1;
    (v89)(v18, *MEMORY[0x1E69DF5C0], v13);
    OUTLINED_FUNCTION_43_0();
    sub_1DA394134();
    *v18 = 0;
    *(v18 + 8) = 0;
    (v89)(v18, *MEMORY[0x1E69DF5B0], v13);
    OUTLINED_FUNCTION_70();
    sub_1DA394134();
    *v18 = xmmword_1DA395D20;
    v94 = OUTLINED_FUNCTION_37_0();
    v89(v94);
    sub_1DA394134();
    (*(v119 + 104))(v118, *MEMORY[0x1E69DF538], v120);
    v95 = v122;
    sub_1DA3940C4();
    v96 = OUTLINED_FUNCTION_8_1();
    v97 = v123;
    v98(v96);
    sub_1DA3940A4();
    swift_allocObject();
    OUTLINED_FUNCTION_86();
    v99 = sub_1DA394054();
    if (qword_1EDCC5A30 != -1)
    {
      OUTLINED_FUNCTION_22(&qword_1EDCC5A30);
    }

    v100 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v100, qword_1EDCC5A38);
    v101 = v121;
    v102 = v115;
    v124(v121, v129, v115);
    v103 = sub_1DA3942D4();
    v104 = sub_1DA394584();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = OUTLINED_FUNCTION_83();
      v106 = OUTLINED_FUNCTION_89();
      v125 = v99;
      v131[0] = v106;
      *v105 = 136315394;
      if (v95)
      {
        v107 = 0x796C6E4F64616572;
      }

      else
      {
        v107 = 0x656C626174697277;
      }

      *(v105 + 4) = sub_1DA372AD8(v107, 0xE800000000000000, v131);
      *(v105 + 12) = 2080;
      v108 = sub_1DA393E74();
      v110 = v109;
      OUTLINED_FUNCTION_139();
      (v95)();
      v111 = sub_1DA372AD8(v108, v110, v131);

      *(v105 + 14) = v111;
      _os_log_impl(&dword_1DA365000, v103, v104, "Initialized %s VectorDB client with DB directory: %s", v105, 0x16u);
      OUTLINED_FUNCTION_118();
      v99 = v125;
      OUTLINED_FUNCTION_46();
      OUTLINED_FUNCTION_54();
    }

    else
    {

      OUTLINED_FUNCTION_139();
      (v95)(v101, v102);
    }

    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD410, &unk_1DA395BA0);
    *v130 = v99;
    v113 = v127;
    sub_1DA3940B4();
    (*(v128 + 8))(v113, v97);
    (v95)(v129, v102);
    OUTLINED_FUNCTION_46_0();
    v75 = v112;
  }

  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  OUTLINED_FUNCTION_91();
}

id sub_1DA37F2CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA3768C8();
  *a1 = result & 1;
  return result;
}

void *sub_1DA37F2F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD400, &unk_1DA395B90);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_1DA393EC4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  result = sub_1DA38E124(v2, 0);
  qword_1EDCC5638 = result;
  return result;
}

void *DefaultSiriAutoCompleteService.__allocating_init(featureFlagProvider:databaseDirectoryOverride:cacheEnabled:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);
  v14 = sub_1DA38E6EC(v12, a2, v4, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

uint64_t static DefaultSiriAutoCompleteService.sharedCacheDisabledInstance.getter()
{
  if (qword_1EDCC5630 != -1)
  {
    swift_once();
  }
}

void sub_1DA37F4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_123();
  v5 = v4;
  v58[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD400, &unk_1DA395B90);
  OUTLINED_FUNCTION_23(v6);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - v8;
  v10 = sub_1DA393EC4();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v20 = OUTLINED_FUNCTION_26();
  sub_1DA390014(v20, v21, &qword_1ECBAD400, &unk_1DA395B90);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    if (qword_1EDCC5A20 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v10, qword_1EDCC5AA0);
    (*(v12 + 16))(v19, v22, v10);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_1DA36CB60(v9, &qword_1ECBAD400, &unk_1DA395B90);
    }
  }

  else
  {
    (*(v12 + 32))(v19, v9, v10);
  }

  v23 = [objc_opt_self() defaultManager];
  v24 = sub_1DA393E94();
  v58[0] = 0;
  v25 = [v23 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:v58];

  v57 = v58[0];
  if (v25)
  {
    (*(v12 + 32))(v5, v19, v10);
    OUTLINED_FUNCTION_46_0();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v10);
    OUTLINED_FUNCTION_91();

    v31 = v29;
  }

  else
  {
    v32 = v57;
    v33 = sub_1DA393E64();

    swift_willThrow();
    if (qword_1EDCC5A30 != -1)
    {
      OUTLINED_FUNCTION_22(&qword_1EDCC5A30);
    }

    v34 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v34, qword_1EDCC5A38);
    v35 = OUTLINED_FUNCTION_102();
    v36(v35);
    v37 = v33;
    v38 = sub_1DA3942D4();
    v39 = sub_1DA394594();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_74();
      v57 = v5;
      v41 = v40;
      v55 = OUTLINED_FUNCTION_100();
      v56 = OUTLINED_FUNCTION_89();
      v58[0] = v56;
      *v41 = 136315650;
      OUTLINED_FUNCTION_55();
      *(v41 + 4) = sub_1DA372AD8(0xD000000000000033, v42, v43);
      *(v41 + 12) = 2080;
      v44 = sub_1DA393E74();
      v46 = v45;
      v47 = *(v12 + 8);
      v47(v16, v10);
      v48 = sub_1DA372AD8(v44, v46, v58);

      *(v41 + 14) = v48;
      *(v41 + 22) = 2112;
      v49 = v33;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 24) = v50;
      v51 = v55;
      *v55 = v50;
      _os_log_impl(&dword_1DA365000, v38, v39, "Function: %s > Unable to create directory at path %s with error: %@", v41, 0x20u);
      sub_1DA36CB60(v51, &qword_1ECBAD2F0, &qword_1DA395840);
      OUTLINED_FUNCTION_46();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_46();
      v5 = v57;
      OUTLINED_FUNCTION_46();

      v52 = OUTLINED_FUNCTION_103();
      (v47)(v52);
    }

    else
    {

      v53 = *(v12 + 8);
      v53(v16, v10);
      v54 = OUTLINED_FUNCTION_103();
      (v53)(v54);
    }

    __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
    OUTLINED_FUNCTION_91();
  }
}

uint64_t sub_1DA37FA18()
{
  v0 = sub_1DA393EC4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_1EDCC5AA0);
  __swift_project_value_buffer(v0, qword_1EDCC5AA0);
  sub_1DA393E84();
  sub_1DA393EA4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1DA37FB58()
{
  v1 = *(*(v0 + 16) + 56);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_2_5(sub_1DA37FB78, v1);
}

uint64_t sub_1DA37FB78()
{
  OUTLINED_FUNCTION_50();
  sub_1DA375DAC();
  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_1DA37FC08()
{
  v1 = *(*(v0 + 16) + 56);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_2_5(sub_1DA37FC28, v1);
}

uint64_t sub_1DA37FC28()
{
  OUTLINED_FUNCTION_9_1();
  sub_1DA376194();
  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t DefaultSiriAutoCompleteService.deletePhrasesForSource(source:deactivateWriteClientAfter:)()
{
  OUTLINED_FUNCTION_9_1();
  v3 = v2;
  *(v1 + 16) = v0;
  *(v1 + 104) = v4;
  v5 = sub_1DA394154();
  *(v1 + 24) = v5;
  OUTLINED_FUNCTION_6_2(v5);
  *(v1 + 32) = v6;
  *(v1 + 40) = OUTLINED_FUNCTION_76();
  v7 = sub_1DA394144();
  OUTLINED_FUNCTION_23(v7);
  *(v1 + 48) = OUTLINED_FUNCTION_76();
  v8 = sub_1DA3940F4();
  *(v1 + 56) = v8;
  OUTLINED_FUNCTION_6_2(v8);
  *(v1 + 64) = v9;
  *(v1 + 72) = OUTLINED_FUNCTION_76();
  *(v1 + 105) = *v3;
  v10 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DA37FDA0()
{
  OUTLINED_FUNCTION_51();
  v5 = *(v1 + 105);
  OUTLINED_FUNCTION_112();
  *(v0 + 8) = 1;
  (*(v6 + 104))(v0, *MEMORY[0x1E69DF5C0]);
  OUTLINED_FUNCTION_43_0();
  sub_1DA394134();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4E0, &qword_1DA395FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD480, &qword_1DA395E20);
  OUTLINED_FUNCTION_63();
  v7 = OUTLINED_FUNCTION_99();
  *(v7 + 16) = xmmword_1DA395AB0;
  v8 = v7 + v3;
  v9 = *(v2 + 56);
  sub_1DA394124();
  OUTLINED_FUNCTION_10();
  v10 = OUTLINED_FUNCTION_102();
  v11(v10);
  *(v8 + v9) = v5 + 1;
  v12 = *MEMORY[0x1E69DF5E0];
  v13 = sub_1DA394164();
  OUTLINED_FUNCTION_10();
  (*(v14 + 104))(v8 + v9, v12, v13);
  OUTLINED_FUNCTION_46_0();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
  OUTLINED_FUNCTION_28_0();
  sub_1DA3940E4();
  v18 = *(v4 + 56);
  *(v1 + 80) = v18;

  return MEMORY[0x1EEE6DFA0](sub_1DA37FF78, v18, 0);
}

uint64_t sub_1DA37FF78()
{
  OUTLINED_FUNCTION_50();
  *(v0 + 88) = sub_1DA375E30();
  *(v0 + 96) = 0;
  OUTLINED_FUNCTION_67();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1DA380000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47();
  if (qword_1EDCC52A0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v13 = sub_1DA3942F4();
  OUTLINED_FUNCTION_38_0(v13, qword_1EDCC51C0);
  v14 = sub_1DA3942D4();
  v15 = sub_1DA394584();
  if (OUTLINED_FUNCTION_82(v15))
  {
    v16 = *(v12 + 105) + 1;
    v17 = OUTLINED_FUNCTION_74();
    a9 = OUTLINED_FUNCTION_74();
    *v17 = 136315650;
    OUTLINED_FUNCTION_12_2();
    v20 = sub_1DA372AD8(0xD00000000000003ALL, v18, v19);
    OUTLINED_FUNCTION_61(v20);
    *(v17 + 22) = v21;
    *(v17 + 24) = v16;
    OUTLINED_FUNCTION_60();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(a9);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_30_0();
  }

  v27 = OUTLINED_FUNCTION_28_0();
  v28(v27);
  OUTLINED_FUNCTION_125();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_58();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_1DA38017C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47();
  if (qword_1EDCC52A0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v14 = *(v12 + 96);
  v15 = sub_1DA3942F4();
  OUTLINED_FUNCTION_38_0(v15, qword_1EDCC51C0);
  v16 = v14;
  v17 = sub_1DA3942D4();
  sub_1DA394594();

  v18 = OUTLINED_FUNCTION_116();
  v19 = *(v12 + 96);
  if (v18)
  {
    OUTLINED_FUNCTION_83();
    v20 = OUTLINED_FUNCTION_87();
    a9 = OUTLINED_FUNCTION_74();
    *v13 = 136315394;
    OUTLINED_FUNCTION_12_2();
    v23 = sub_1DA372AD8(0xD00000000000003ALL, v21, v22);
    OUTLINED_FUNCTION_85(v23);
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v24;
    *v20 = v24;
    OUTLINED_FUNCTION_57();
    _os_log_impl(v25, v26, v27, v28, v29, 0x16u);
    sub_1DA36CB60(v20, &qword_1ECBAD2F0, &qword_1DA395840);
    OUTLINED_FUNCTION_56();
    __swift_destroy_boxed_opaque_existential_1(a9);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
  }

  v30 = OUTLINED_FUNCTION_28_0();
  v31(v30);
  OUTLINED_FUNCTION_125();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_58();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t DefaultSiriAutoCompleteService.deletePhrasesForApp(bundleIds:)()
{
  OUTLINED_FUNCTION_9_1();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD480, &qword_1DA395E20);
  v1[4] = v3;
  OUTLINED_FUNCTION_6_2(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_76();
  v5 = sub_1DA394154();
  v1[7] = v5;
  OUTLINED_FUNCTION_6_2(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_76();
  v7 = sub_1DA394144();
  OUTLINED_FUNCTION_23(v7);
  v1[10] = OUTLINED_FUNCTION_76();
  v8 = sub_1DA3940F4();
  v1[11] = v8;
  OUTLINED_FUNCTION_6_2(v8);
  v1[12] = v9;
  v1[13] = OUTLINED_FUNCTION_76();
  v10 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DA380484()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[2];
  *v1 = 0;
  v1[1] = 0;
  (*(v3 + 104))(v1, *MEMORY[0x1E69DF5B8], v2);
  OUTLINED_FUNCTION_127();
  sub_1DA394134();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v0[5];
    v26 = v0[4];
    v27 = MEMORY[0x1E69E7CC0];
    v7 = v0[2];
    sub_1DA36CBD8(0, v5, 0);
    v25 = *MEMORY[0x1E69DF5D8];
    sub_1DA394124();
    OUTLINED_FUNCTION_10();
    v24 = *(v8 + 104);
    v9 = (v7 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = (v0[6] + *(v26 + 48));
      v24();
      *v12 = v10;
      v12[1] = v11;
      v13 = sub_1DA394164();
      OUTLINED_FUNCTION_10();
      (*(v14 + 104))(v12, v25, v13);
      OUTLINED_FUNCTION_46_0();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
      v19 = *(v27 + 16);
      v18 = *(v27 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_1DA36CBD8(v18 > 1, v19 + 1, 1);
      }

      v20 = v0[6];
      *(v27 + 16) = v19 + 1;
      sub_1DA38EDE4(v20, v27 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, &qword_1ECBAD480, &qword_1DA395E20);
      v9 += 2;
      --v5;
    }

    while (v5);
  }

  v21 = v0[3];
  sub_1DA3940E4();
  v22 = *(v21 + 56);
  v0[14] = v22;

  return MEMORY[0x1EEE6DFA0](sub_1DA3806D0, v22, 0);
}

uint64_t sub_1DA3806D0()
{
  OUTLINED_FUNCTION_50();
  *(v0 + 120) = sub_1DA375E30();
  *(v0 + 128) = 0;
  OUTLINED_FUNCTION_67();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1DA380758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_72();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_47();
  a18 = v20;
  if (qword_1EDCC52A0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v23 = sub_1DA3942F4();
  OUTLINED_FUNCTION_38_0(v23, qword_1EDCC51C0);

  v24 = sub_1DA3942D4();
  sub_1DA394584();
  OUTLINED_FUNCTION_138();

  if (OUTLINED_FUNCTION_124())
  {
    v25 = v20[2];
    v26 = OUTLINED_FUNCTION_74();
    a9 = OUTLINED_FUNCTION_89();
    *v26 = 136315650;
    OUTLINED_FUNCTION_12_2();
    v30 = OUTLINED_FUNCTION_151(v27, v28, v29);
    OUTLINED_FUNCTION_61(v30);
    *(v26 + 22) = 2080;
    v31 = MEMORY[0x1DA74BB60](v25, MEMORY[0x1E69E6158]);
    v33 = sub_1DA372AD8(v31, v32, &a9);

    *(v26 + 24) = v33;
    OUTLINED_FUNCTION_60();
    _os_log_impl(v34, v35, v36, v37, v38, 0x20u);
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_30_0();
  }

  v39 = OUTLINED_FUNCTION_28_0();
  v40(v39);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_58();

  return v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

uint64_t sub_1DA380928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47();
  if (qword_1EDCC52A0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v14 = *(v12 + 128);
  v15 = sub_1DA3942F4();
  OUTLINED_FUNCTION_38_0(v15, qword_1EDCC51C0);
  v16 = v14;
  v17 = sub_1DA3942D4();
  sub_1DA394594();

  v18 = OUTLINED_FUNCTION_116();
  v19 = *(v12 + 128);
  if (v18)
  {
    OUTLINED_FUNCTION_83();
    v20 = OUTLINED_FUNCTION_87();
    a9 = OUTLINED_FUNCTION_74();
    *v13 = 136315394;
    OUTLINED_FUNCTION_12_2();
    v24 = OUTLINED_FUNCTION_151(v21, v22, v23);
    OUTLINED_FUNCTION_85(v24);
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v25;
    *v20 = v25;
    OUTLINED_FUNCTION_57();
    _os_log_impl(v26, v27, v28, v29, v30, 0x16u);
    sub_1DA36CB60(v20, &qword_1ECBAD2F0, &qword_1DA395840);
    OUTLINED_FUNCTION_56();
    __swift_destroy_boxed_opaque_existential_1(a9);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
  }

  v31 = OUTLINED_FUNCTION_28_0();
  v32(v31);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_58();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t DefaultSiriAutoCompleteService.addPhrasesToVectorDB(vectorSearchAssets:deactivateWriteClientAfter:)(uint64_t *a1, char a2)
{
  *(v3 + 72) = a2;
  v4 = *a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  return OUTLINED_FUNCTION_2_5(sub_1DA380B04, 0);
}

uint64_t sub_1DA380B04()
{
  OUTLINED_FUNCTION_44_0();
  v2 = *(v1 + 32);
  if (*(v2 + 16))
  {
    *(v1 + 16) = v2;
    v3 = swift_task_alloc();
    *(v1 + 48) = v3;
    *v3 = v1;
    v3[1] = sub_1DA380D44;
    OUTLINED_FUNCTION_153();

    return sub_1DA375C58(v4, v5);
  }

  else
  {
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v8 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v8, qword_1EDCC51C0);
    v9 = sub_1DA3942D4();
    v10 = sub_1DA394584();
    if (OUTLINED_FUNCTION_27_1(v10))
    {
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_79();
      *v0 = 136315138;
      OUTLINED_FUNCTION_9_2();
      *(v0 + 4) = sub_1DA372AD8(0xD000000000000044, v11, v12);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_16_2();
    }

    if (*(v1 + 72) != 1)
    {
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_153();

      __asm { BRAA            X2, X16 }
    }

    *(v1 + 40) = *(*(v1 + 24) + 56);
    OUTLINED_FUNCTION_153();

    return MEMORY[0x1EEE6DFA0](v18, v19, v20);
  }
}

uint64_t sub_1DA380CE8()
{
  OUTLINED_FUNCTION_9_1();
  sub_1DA376194();
  OUTLINED_FUNCTION_29_0();

  return v0(0);
}

uint64_t sub_1DA380D44()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_17_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v4;
  *(v2 + 64) = v0;

  OUTLINED_FUNCTION_67();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DA380E44()
{
  OUTLINED_FUNCTION_44_0();
  if (qword_1EDCC5A30 != -1)
  {
    OUTLINED_FUNCTION_22(&qword_1EDCC5A30);
  }

  v1 = sub_1DA3942F4();
  OUTLINED_FUNCTION_38_0(v1, qword_1EDCC5A38);
  v2 = sub_1DA3942D4();
  v3 = sub_1DA394574();
  if (OUTLINED_FUNCTION_27_1(v3))
  {
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_141();
    *v0 = 136315394;
    OUTLINED_FUNCTION_12_2();
    v6 = sub_1DA372AD8(0xD000000000000044, v4, v5);
    OUTLINED_FUNCTION_136(v6);
    OUTLINED_FUNCTION_11_3();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_16_2();
  }

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_154();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1DA380F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_51();
  if (qword_1EDCC5A30 != -1)
  {
    OUTLINED_FUNCTION_22(&qword_1EDCC5A30);
  }

  v11 = *(v10 + 64);
  v12 = sub_1DA3942F4();
  OUTLINED_FUNCTION_38_0(v12, qword_1EDCC5A38);
  v13 = v11;
  v14 = sub_1DA3942D4();
  sub_1DA394594();

  v15 = OUTLINED_FUNCTION_124();
  v16 = *(v10 + 64);
  if (v15)
  {
    v17 = OUTLINED_FUNCTION_83();
    v18 = OUTLINED_FUNCTION_100();
    a10 = OUTLINED_FUNCTION_74();
    *v17 = 136315394;
    OUTLINED_FUNCTION_9_2();
    v21 = sub_1DA372AD8(0xD000000000000044, v19, v20);
    OUTLINED_FUNCTION_148(v21);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v22;
    *v18 = v22;
    OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_117(v23, v24, v25, v26);
    sub_1DA36CB60(v18, &qword_1ECBAD2F0, &qword_1DA395840);
    OUTLINED_FUNCTION_52();
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_16_2();
  }

  else
  {
  }

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_110();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t DefaultSiriAutoCompleteService.increaseTapCountForPhrase(phrase:)()
{
  OUTLINED_FUNCTION_9_1();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD400, &unk_1DA395B90);
  OUTLINED_FUNCTION_23(v4);
  v1[6] = OUTLINED_FUNCTION_76();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD408, &qword_1DA395FE0);
  OUTLINED_FUNCTION_23(v5);
  v1[7] = OUTLINED_FUNCTION_76();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD410, &unk_1DA395BA0);
  v1[8] = v6;
  OUTLINED_FUNCTION_23(v6);
  v1[9] = OUTLINED_FUNCTION_76();
  v7 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA3811C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_47();
  v13 = v12[7];
  v14 = v12[6];
  sub_1DA393EC4();
  OUTLINED_FUNCTION_10();
  v15 = OUTLINED_FUNCTION_96();
  v16(v15);
  OUTLINED_FUNCTION_36_0();
  sub_1DA36CB60(v14, &qword_1ECBAD400, &unk_1DA395B90);
  if (OUTLINED_FUNCTION_121() == 1)
  {
    sub_1DA36CB60(v12[7], &qword_1ECBAD408, &qword_1DA395FE0);
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v17 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v17, qword_1EDCC51C0);
    v18 = sub_1DA3942D4();
    v19 = sub_1DA394584();
    if (OUTLINED_FUNCTION_27_1(v19))
    {
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_79();
      *v13 = 136315138;
      OUTLINED_FUNCTION_9_2();
      *(v13 + 4) = OUTLINED_FUNCTION_152(v20, v21, v22);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_16_2();
    }

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_45_0();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }

  else
  {
    sub_1DA38EDE4(v12[7], v12[9], &qword_1ECBAD410, &unk_1DA395BA0);
    v37 = swift_task_alloc();
    v12[10] = v37;
    *v37 = v12;
    v37[1] = sub_1DA381404;
    OUTLINED_FUNCTION_45_0();

    return DefaultSiriAutoCompleteService.increaseTapCountForPhrase(phrase:readOnlyClient:)();
  }
}

uint64_t sub_1DA381404()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA3814E8()
{
  OUTLINED_FUNCTION_9_1();
  sub_1DA36CB60(*(v0 + 72), &qword_1ECBAD410, &unk_1DA395BA0);

  OUTLINED_FUNCTION_24_1();

  return v1();
}

uint64_t DefaultSiriAutoCompleteService.increaseTapCountForPhrase(phrase:readOnlyClient:)()
{
  OUTLINED_FUNCTION_9_1();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2D0, &unk_1DA395FF0);
  OUTLINED_FUNCTION_23(v5);
  v1[25] = OUTLINED_FUNCTION_76();
  v6 = sub_1DA393F34();
  v1[26] = v6;
  OUTLINED_FUNCTION_6_2(v6);
  v1[27] = v7;
  v1[28] = OUTLINED_FUNCTION_76();
  v8 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA381640()
{
  OUTLINED_FUNCTION_44_0();
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v0[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD470, &qword_1DA395E10);
  v4 = swift_allocObject();
  v0[30] = v4;
  *(v4 + 16) = xmmword_1DA395AB0;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  v5 = *(v1 + 144);
  v0[31] = v5;

  sub_1DA393F24();
  v0[32] = sub_1DA393F14();
  v0[33] = v6;
  v7 = OUTLINED_FUNCTION_68();
  v8(v7);

  return MEMORY[0x1EEE6DFA0](sub_1DA381728, v5, 0);
}

uint64_t sub_1DA381728()
{
  OUTLINED_FUNCTION_44_0();
  v1 = sub_1DA374A20(v0[32], v0[33]);

  v0[34] = v1;
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_1DA3817F4;
  OUTLINED_FUNCTION_154();

  return sub_1DA382224(v3, v4, v5, v6, v7);
}

uint64_t sub_1DA3817F4()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_17_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  *(v6 + 288) = v5;

  swift_unknownObjectRelease();

  v7 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA381910()
{
  OUTLINED_FUNCTION_44_0();
  if (sub_1DA377B88(v0[36]) != 1 || !sub_1DA377B88(v0[36]))
  {
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v12 = sub_1DA3942F4();
    v13 = __swift_project_value_buffer(v12, qword_1EDCC51C0);

    v14 = sub_1DA3942D4();
    v15 = sub_1DA394594();
    v16 = OUTLINED_FUNCTION_27_1(v15);
    v17 = v0[36];
    if (v16)
    {
      v18 = OUTLINED_FUNCTION_81();
      *v18 = 134217984;
      v19 = sub_1DA377B88(v17);

      *(v18 + 4) = v19;

      _os_log_impl(&dword_1DA365000, v14, v13, "Unexpected records retrieved count: %ld", v18, 0xCu);
      OUTLINED_FUNCTION_21_1();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_154();

    __asm { BRAA            X1, X16 }
  }

  v1 = v0[36];
  v2 = v1 & 0xC000000000000001;
  sub_1DA373068(0, (v1 & 0xC000000000000001) == 0, v1);
  if (v2)
  {
    v3 = MEMORY[0x1DA74BE10](0, v0[36]);
  }

  else
  {
  }

  v0[37] = v3;
  v4 = v0[24];
  v6 = v0[21];
  v5 = v0[22];

  v0[38] = *(v4 + 56);
  v7 = swift_allocObject();
  v0[39] = v7;
  *(v7 + 16) = xmmword_1DA395AB0;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;

  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA381B30()
{
  OUTLINED_FUNCTION_50();
  *(v0 + 320) = sub_1DA375FE4();
  *(v0 + 328) = 0;

  OUTLINED_FUNCTION_67();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

void sub_1DA381BC0()
{
  OUTLINED_FUNCTION_44_0();
  v34 = v2;
  if (qword_1EDCC52A0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v3 = sub_1DA3942F4();
  OUTLINED_FUNCTION_38_0(v3, qword_1EDCC51C0);
  v4 = sub_1DA3942D4();
  v5 = sub_1DA394584();
  if (OUTLINED_FUNCTION_27_1(v5))
  {
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_141();
    *v1 = 136315394;
    OUTLINED_FUNCTION_12_2();
    v8 = sub_1DA372AD8(0xD000000000000031, v6, v7);
    OUTLINED_FUNCTION_136(v8);
    OUTLINED_FUNCTION_11_3();
    _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_16_2();
  }

  v14 = v2[37];
  v15 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_tapCount;
  OUTLINED_FUNCTION_147();
  v16 = *(v14 + v15);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_146(v18);
    sub_1DA393F04();
    OUTLINED_FUNCTION_46_0();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    v23 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_recentTapTimeStamp;
    OUTLINED_FUNCTION_144();
    sub_1DA368730(v0, v4 + v23);
    swift_endAccess();
    type metadata accessor for VectorSearchAssets.Builder();
    inited = swift_initStackObject();
    v25 = MEMORY[0x1E69E7CD0];
    *(inited + 16) = MEMORY[0x1E69E7CC0];
    *(inited + 24) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD490, &qword_1DA395E80);
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_1DA395E30;
    *(v26 + 32) = v4;

    sub_1DA377700(v26);

    swift_setDeallocating();
    sub_1DA38B2B8();
    OUTLINED_FUNCTION_9();
    swift_beginAccess();

    VectorSearchAssets.init(phrases:)(v27, &v33);

    v28 = v33;
    v2[42] = v33;
    v2[20] = v28;
    v29 = swift_task_alloc();
    v2[43] = v29;
    *v29 = v2;
    OUTLINED_FUNCTION_34_0(v29);
    OUTLINED_FUNCTION_154();

    DefaultSiriAutoCompleteService.addPhrasesToVectorDB(vectorSearchAssets:deactivateWriteClientAfter:)(v30, v31);
  }
}

uint64_t sub_1DA381E08()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA381F08()
{
  OUTLINED_FUNCTION_9_1();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

void sub_1DA381F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_150();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_51();
  a16 = v18;
  if (qword_1EDCC52A0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v21 = v18[41];
  v22 = sub_1DA3942F4();
  OUTLINED_FUNCTION_38_0(v22, qword_1EDCC51C0);
  v23 = v21;
  v24 = sub_1DA3942D4();
  sub_1DA394594();

  v25 = OUTLINED_FUNCTION_124();
  v26 = v18[41];
  if (v25)
  {
    v27 = OUTLINED_FUNCTION_83();
    v28 = OUTLINED_FUNCTION_100();
    v29 = OUTLINED_FUNCTION_74();
    a10 = v29;
    *v27 = 136315394;
    OUTLINED_FUNCTION_9_2();
    v32 = sub_1DA372AD8(0xD000000000000031, v30, v31);
    OUTLINED_FUNCTION_148(v32);
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 14) = v33;
    *v28 = v33;
    OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_117(v34, v35, v36, v37);
    sub_1DA36CB60(v28, &qword_1ECBAD2F0, &qword_1DA395840);
    OUTLINED_FUNCTION_52();
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_16_2();
  }

  else
  {
  }

  v38 = v18[37];
  v39 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_tapCount;
  OUTLINED_FUNCTION_147();
  v40 = *(v38 + v39);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_146(v42);
    sub_1DA393F04();
    OUTLINED_FUNCTION_46_0();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
    v47 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_recentTapTimeStamp;
    OUTLINED_FUNCTION_144();
    sub_1DA368730(v26, v24 + v47);
    swift_endAccess();
    type metadata accessor for VectorSearchAssets.Builder();
    inited = swift_initStackObject();
    v49 = MEMORY[0x1E69E7CD0];
    *(inited + 16) = MEMORY[0x1E69E7CC0];
    *(inited + 24) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD490, &qword_1DA395E80);
    v50 = swift_initStackObject();
    *(v50 + 16) = xmmword_1DA395E30;
    *(v50 + 32) = v24;

    sub_1DA377700(v50);

    swift_setDeallocating();
    sub_1DA38B2B8();
    OUTLINED_FUNCTION_9();
    swift_beginAccess();

    VectorSearchAssets.init(phrases:)(v51, &a10);

    v52 = a10;
    v18[42] = a10;
    v18[20] = v52;
    v53 = swift_task_alloc();
    v18[43] = v53;
    *v53 = v18;
    OUTLINED_FUNCTION_34_0(v53);
    OUTLINED_FUNCTION_110();

    DefaultSiriAutoCompleteService.addPhrasesToVectorDB(vectorSearchAssets:deactivateWriteClientAfter:)(v54, v55);
  }
}

uint64_t sub_1DA382224(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 156) = a2;
  *(v6 + 24) = a1;
  v7 = sub_1DA3941A4();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3822F0, 0, 0);
}

uint64_t sub_1DA3822F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_51();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  sub_1DA394084();
  OUTLINED_FUNCTION_9();
  v12 = sub_1DA394034();
  *(v10 + 88) = v12;
  v13 = *(v12 + 16);
  *(v10 + 96) = v13;
  if (v13)
  {
    v14 = *(v10 + 64);
    v15 = *(v10 + 72);
    v16 = *(v15 + 16);
    v15 += 16;
    v17 = *(v15 + 64);
    *(v10 + 152) = v17;
    *(v10 + 104) = *(v15 + 56);
    *(v10 + 112) = v16;
    *(v10 + 120) = 0;
    *(v10 + 128) = v11;
    v16(*(v10 + 80), v12 + ((v17 + 32) & ~v17), v14);
    v18 = swift_task_alloc();
    *(v10 + 136) = v18;
    *v18 = v10;
    OUTLINED_FUNCTION_35_0(v18);
    OUTLINED_FUNCTION_110();

    return sub_1DA382E28(v19, v20, v21);
  }

  else
  {

    sub_1DA394094();

    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_110();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }
}

uint64_t sub_1DA382590()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_17_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  *(v6 + 144) = v5;

  v7 = OUTLINED_FUNCTION_68();
  v8(v7);
  v9 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA3826CC()
{
  OUTLINED_FUNCTION_50();
  if (v0[18])
  {
    v1 = v0 + 2;

    MEMORY[0x1DA74BB40](v2);
    OUTLINED_FUNCTION_142();
    if (v4)
    {
      OUTLINED_FUNCTION_23_1(v3);
      sub_1DA394504();
    }

    OUTLINED_FUNCTION_8_1();
    sub_1DA394524();
  }

  else
  {
    v1 = v0 + 16;
  }

  v5 = *v1;
  v6 = v0[15] + 1;
  if (v6 == v0[12])
  {

    sub_1DA394094();

    OUTLINED_FUNCTION_29_0();

    return v7(v5);
  }

  else
  {
    v0[15] = v6;
    v0[16] = v5;
    OUTLINED_FUNCTION_114();
    v9();
    v10 = swift_task_alloc();
    v0[17] = v10;
    *v10 = v0;
    v11 = OUTLINED_FUNCTION_35_0(v10);

    return sub_1DA382E28(v11, v12, v13);
  }
}

uint64_t DefaultSiriAutoCompleteService.fetchPhrasesMatching(filters:)()
{
  OUTLINED_FUNCTION_9_1();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = sub_1DA393F34();
  v1[5] = v3;
  OUTLINED_FUNCTION_6_2(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_76();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD400, &unk_1DA395B90);
  OUTLINED_FUNCTION_23(v5);
  v1[8] = OUTLINED_FUNCTION_76();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD408, &qword_1DA395FE0);
  OUTLINED_FUNCTION_23(v6);
  v1[9] = OUTLINED_FUNCTION_76();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD410, &unk_1DA395BA0);
  v1[10] = v7;
  OUTLINED_FUNCTION_23(v7);
  v1[11] = OUTLINED_FUNCTION_76();
  v8 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA38296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_47();
  v13 = v12[9];
  v14 = v12[8];
  sub_1DA393EC4();
  OUTLINED_FUNCTION_10();
  v15 = OUTLINED_FUNCTION_96();
  v16(v15);
  OUTLINED_FUNCTION_36_0();
  sub_1DA36CB60(v14, &qword_1ECBAD400, &unk_1DA395B90);
  if (OUTLINED_FUNCTION_121() == 1)
  {
    sub_1DA36CB60(v12[9], &qword_1ECBAD408, &qword_1DA395FE0);
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v17 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v17, qword_1EDCC51C0);
    v18 = sub_1DA3942D4();
    v19 = sub_1DA394584();
    if (OUTLINED_FUNCTION_27_1(v19))
    {
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_79();
      *v13 = 136315138;
      OUTLINED_FUNCTION_9_2();
      *(v13 + 4) = sub_1DA372AD8(0xD00000000000001ELL, v20, v21);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_16_2();
    }

    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_45_0();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }

  else
  {
    v36 = v12[3];
    sub_1DA38EDE4(v12[9], v12[11], &qword_1ECBAD410, &unk_1DA395BA0);
    v12[12] = *(v36 + 144);
    sub_1DA393F24();
    v12[13] = sub_1DA393F14();
    v12[14] = v37;
    v38 = OUTLINED_FUNCTION_68();
    v39(v38);
    OUTLINED_FUNCTION_45_0();

    return MEMORY[0x1EEE6DFA0](v40, v41, v42);
  }
}

uint64_t sub_1DA382BB8()
{
  OUTLINED_FUNCTION_44_0();
  v1 = v0[11];
  v2 = v0[2];
  v3 = sub_1DA374A20(v0[13], v0[14]);
  v5 = v4;

  v0[15] = v3;
  v6 = *v1;
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1DA382C94;

  return sub_1DA382224(v2, 0, v6, v3, v5);
}

uint64_t sub_1DA382C94()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_17_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 136) = v3;

  v4 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA382D7C()
{
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 88);
  swift_unknownObjectRelease();
  sub_1DA36CB60(v1, &qword_1ECBAD410, &unk_1DA395BA0);
  v2 = *(v0 + 136);

  OUTLINED_FUNCTION_29_0();

  return v3(v2);
}

uint64_t sub_1DA382E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_5(sub_1DA382E48, 0);
}

uint64_t sub_1DA382E48()
{
  OUTLINED_FUNCTION_50();
  v1 = v0[4];
  v0[5] = swift_getObjectType();
  v0[6] = sub_1DA394184();
  v0[7] = v2;
  v0[8] = *(v1 + 72);
  v0[9] = (v1 + 72) & 0xFFFFFFFFFFFFLL | 0x48D6000000000000;
  v4 = sub_1DA394534();
  v0[10] = v4;
  v0[11] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1DA382EF4, v4, v3);
}

uint64_t sub_1DA382EF4()
{
  OUTLINED_FUNCTION_9_1();
  *(v0 + 96) = (*(v0 + 64))(*(v0 + 48), *(v0 + 56), *(v0 + 40), *(v0 + 32));

  v1 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1DA382F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_51();
  if (v11[12])
  {
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v12 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v12, qword_1EDCC51C0);
    v13 = sub_1DA3942D4();
    v14 = sub_1DA394584();
    if (OUTLINED_FUNCTION_27_1(v14))
    {
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_79();
      *v10 = 136315138;
      OUTLINED_FUNCTION_9_2();
      *(v10 + 4) = OUTLINED_FUNCTION_152(v15, v16, v17);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_16_2();
    }

LABEL_21:

    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_110();

    return v56(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10);
  }

  v11[13] = sub_1DA394194();
  v11[14] = v23;
  if (v23 >> 60 == 15)
  {
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v24 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v24, qword_1EDCC51C0);
    v13 = sub_1DA3942D4();
    v25 = sub_1DA394584();
    if (OUTLINED_FUNCTION_27_1(v25))
    {
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_79();
      *v10 = 136315138;
      OUTLINED_FUNCTION_9_2();
      *(v10 + 4) = OUTLINED_FUNCTION_152(v26, v27, v28);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_16_2();
    }

    goto LABEL_21;
  }

  type metadata accessor for AutoCompletePhrase(0);
  OUTLINED_FUNCTION_8_1();
  v34 = static AutoCompletePhrase.decodeFromPlist(_:)();
  v11[15] = v34;
  if (!v34)
  {
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v41 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v41, qword_1EDCC51C0);
    v13 = sub_1DA3942D4();
    v42 = sub_1DA394584();
    if (OUTLINED_FUNCTION_82(v42))
    {
      v43 = OUTLINED_FUNCTION_81();
      a10 = OUTLINED_FUNCTION_74();
      *v43 = 136315138;
      OUTLINED_FUNCTION_9_2();
      *(v43 + 4) = OUTLINED_FUNCTION_152(v44, v45, v46);
      OUTLINED_FUNCTION_60();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(a10);
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_30_0();
    }

    v52 = OUTLINED_FUNCTION_8_1();
    sub_1DA390000(v52, v53);
    goto LABEL_21;
  }

  v35 = v11[4];
  v11[16] = sub_1DA394184();
  v11[17] = v36;
  v11[18] = *(v35 + 64);
  v11[19] = (v35 + 64) & 0xFFFFFFFFFFFFLL | 0x1DE0000000000000;
  OUTLINED_FUNCTION_110();

  return MEMORY[0x1EEE6DFA0](v37, v38, v39);
}

uint64_t sub_1DA383264()
{
  OUTLINED_FUNCTION_9_1();
  (*(v0 + 144))(*(v0 + 128), *(v0 + 136), *(v0 + 120), *(v0 + 40), *(v0 + 32));

  v1 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1DA3832DC()
{
  OUTLINED_FUNCTION_9_1();
  sub_1DA390000(*(v0 + 104), *(v0 + 112));
  OUTLINED_FUNCTION_29_0();

  return v1();
}

uint64_t DefaultSiriAutoCompleteService.autoCompleteResults(for:using:)()
{
  OUTLINED_FUNCTION_9_1();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[10] = *v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD400, &unk_1DA395B90);
  OUTLINED_FUNCTION_23(v7);
  v1[11] = OUTLINED_FUNCTION_76();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD408, &qword_1DA395FE0);
  OUTLINED_FUNCTION_23(v8);
  v1[12] = OUTLINED_FUNCTION_76();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD410, &unk_1DA395BA0);
  v1[13] = v9;
  OUTLINED_FUNCTION_23(v9);
  v1[14] = OUTLINED_FUNCTION_76();
  v10 = sub_1DA393DE4();
  v1[15] = v10;
  OUTLINED_FUNCTION_6_2(v10);
  v1[16] = v11;
  v1[17] = OUTLINED_FUNCTION_76();
  v12 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DA383494()
{
  v1 = *(*(v0 + 72) + 144);
  *(v0 + 144) = v1;
  return OUTLINED_FUNCTION_2_5(sub_1DA3834B4, v1);
}

uint64_t sub_1DA3834B4()
{
  OUTLINED_FUNCTION_9_1();
  v0[19] = sub_1DA374A20(v0[7], v0[8]);
  v0[20] = v1;
  v2 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1DA383518()
{
  OUTLINED_FUNCTION_51();
  v1 = v0[20];
  v0[2] = sub_1DA394394();
  v0[3] = v2;
  sub_1DA393DD4();
  sub_1DA368C30();
  v0[21] = sub_1DA3945E4();
  v0[22] = v3;
  v4 = OUTLINED_FUNCTION_113();
  v5(v4);

  v0[23] = swift_getObjectType();
  v0[24] = *(v1 + 56);
  v0[25] = (v1 + 56) & 0xFFFFFFFFFFFFLL | 0x4D2F000000000000;
  v7 = sub_1DA394534();
  v0[26] = v7;
  v0[27] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1DA383620, v7, v6);
}

uint64_t sub_1DA383620()
{
  OUTLINED_FUNCTION_9_1();
  *(v0 + 224) = (*(v0 + 192))(*(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 160));
  v1 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1DA38368C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_73();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_47();
  a18 = v20;
  v23 = v20[28];
  if (v23)
  {

    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v24 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v24, qword_1EDCC51C0);

    v25 = sub_1DA3942D4();
    v26 = sub_1DA394584();

    if (os_log_type_enabled(v25, v26))
    {
      v28 = v20[5];
      v27 = v20[6];
      v29 = OUTLINED_FUNCTION_83();
      a10 = OUTLINED_FUNCTION_89();
      *v29 = 136315394;
      OUTLINED_FUNCTION_9_2();
      *(v29 + 4) = OUTLINED_FUNCTION_151(v30, v31, v32);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_1DA372AD8(v28, v27, &a10);
      _os_log_impl(&dword_1DA365000, v25, v26, "Cache hit: %s > Using cached response for: '%s'", v29, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_21_1();
    }

    swift_unknownObjectRelease();

    v33 = v20[6];
    v34 = v20[4];
    *v34 = v20[5];
    v35 = 1;
LABEL_13:
    *(v34 + 8) = v33;
    *(v34 + 16) = v23;
    *(v34 + 24) = v35;

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_45_0();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
  }

  v36 = v20[12];
  v37 = v20[11];
  sub_1DA393EC4();
  OUTLINED_FUNCTION_10();
  v38 = OUTLINED_FUNCTION_96();
  v39(v38);
  OUTLINED_FUNCTION_36_0();
  sub_1DA36CB60(v37, &qword_1ECBAD400, &unk_1DA395B90);
  v40 = OUTLINED_FUNCTION_121();
  v41 = v20[12];
  if (v40 == 1)
  {

    sub_1DA36CB60(v41, &qword_1ECBAD408, &qword_1DA395FE0);
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v42 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v42, qword_1EDCC51C0);
    v43 = sub_1DA3942D4();
    v44 = sub_1DA394584();
    if (OUTLINED_FUNCTION_27_1(v44))
    {
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_79();
      *v36 = 136315138;
      OUTLINED_FUNCTION_9_2();
      *(v36 + 4) = OUTLINED_FUNCTION_151(v45, v46, v47);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_16_2();
    }

    v53 = v20[5];
    v33 = v20[6];
    v34 = v20[4];
    swift_unknownObjectRelease();
    *v34 = v53;
    v35 = 2;
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v63 = OUTLINED_FUNCTION_68();
  sub_1DA38EDE4(v63, v64, v65, v66);
  v67 = swift_task_alloc();
  v20[29] = v67;
  *v67 = v20;
  v67[1] = sub_1DA383A48;
  OUTLINED_FUNCTION_45_0();

  return DefaultSiriAutoCompleteService.autoCompleteResults(for:using:readDatabaseClient:)();
}

uint64_t sub_1DA383A48()
{
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = v1[20];
  v2[30] = v5;

  v2[31] = *(v4 + 48);
  v2[32] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x8734000000000000;
  v6 = v1[27];
  v7 = v1[26];

  return MEMORY[0x1EEE6DFA0](sub_1DA383B8C, v7, v6);
}

uint64_t sub_1DA383B8C()
{
  OUTLINED_FUNCTION_9_1();
  (*(v0 + 248))(*(v0 + 168), *(v0 + 176), *(v0 + 240), *(v0 + 184), *(v0 + 160));

  v1 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

void sub_1DA383C04()
{
  OUTLINED_FUNCTION_44_0();
  v1 = v0[30];
  v2 = v0[14];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  swift_unknownObjectRelease();
  *v5 = v4;
  *(v5 + 8) = v3;
  *(v5 + 16) = v1;
  *(v5 + 24) = 0;

  sub_1DA36CB60(v2, &qword_1ECBAD410, &unk_1DA395BA0);

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_154();

  __asm { BRAA            X1, X16 }
}

SiriAutoCompleteAPI::AutoCompleteResult __swiftcall AutoCompleteResult.init(query:phrases:state:)(SiriAutoCompleteAPI::AutoCompleteResult query, Swift::OpaquePointer phrases, SiriAutoCompleteAPI::AutoCompleteResult::ResultState state)
{
  v4 = *state;
  *v3 = query.query;
  *(v3 + 16) = phrases;
  *(v3 + 24) = v4;
  query.phrases = phrases;
  query.state = state;
  return query;
}

uint64_t DefaultSiriAutoCompleteService.autoCompleteResults(for:using:readDatabaseClient:)()
{
  OUTLINED_FUNCTION_9_1();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v7 = sub_1DA3941A4();
  v1[13] = v7;
  OUTLINED_FUNCTION_6_2(v7);
  v1[14] = v8;
  v1[15] = OUTLINED_FUNCTION_76();
  v9 = sub_1DA394154();
  v1[16] = v9;
  OUTLINED_FUNCTION_6_2(v9);
  v1[17] = v10;
  v1[18] = OUTLINED_FUNCTION_76();
  v11 = sub_1DA393DE4();
  v1[19] = v11;
  OUTLINED_FUNCTION_6_2(v11);
  v1[20] = v12;
  v1[21] = OUTLINED_FUNCTION_76();
  v13 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DA383E24()
{
  v1 = *(*(v0 + 96) + 144);
  *(v0 + 176) = v1;
  return OUTLINED_FUNCTION_2_5(sub_1DA383E44, v1);
}

uint64_t sub_1DA383E44()
{
  OUTLINED_FUNCTION_9_1();
  v0[23] = sub_1DA374A20(v0[9], v0[10]);
  v0[24] = v1;
  v2 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1DA383EA8()
{
  *(v0 + 200) = type metadata accessor for SignpostLogger();
  if (qword_1ECBAD2C0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  *(v0 + 208) = qword_1ECBAD358;
  OUTLINED_FUNCTION_20_1();
  static SignpostLogger.begin(log:name:telemetry:)(v6, v7, v8, v9, v10, v11, v12);
  sub_1DA394084();
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  sub_1DA368C30();
  OUTLINED_FUNCTION_134();
  v13 = sub_1DA3945D4();
  v15 = v14;
  *(v0 + 32) = v13;
  *(v0 + 40) = v14;
  sub_1DA393DD4();
  OUTLINED_FUNCTION_113();
  v16 = sub_1DA3945E4();
  v18 = v17;
  *(v0 + 216) = v16;
  *(v0 + 224) = v17;
  (*(v2 + 8))(v1, v3);

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    goto LABEL_20;
  }

  if (qword_1EDCC52A0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v20 = sub_1DA3942F4();
  *(v0 + 232) = __swift_project_value_buffer(v20, qword_1EDCC51C0);

  v21 = sub_1DA3942D4();
  sub_1DA394584();
  OUTLINED_FUNCTION_111();

  if (OUTLINED_FUNCTION_116())
  {
    v1 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_89();
    *v1 = 136315394;
    *(v1 + 4) = OUTLINED_FUNCTION_84("enableTelemetry=YES", v91, v92, v93, v95, v96);
    *(v1 + 12) = 2080;
    v22 = OUTLINED_FUNCTION_134();
    *(v1 + 14) = sub_1DA372AD8(v22, v23, v24);
    OUTLINED_FUNCTION_117(&dword_1DA365000, v21, v15, "Function: %s > Fetching autocomplete results for: '%s'");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_16_2();
  }

  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  v25 = OUTLINED_FUNCTION_134();
  sub_1DA384E58(v25, v26, v27, v28);
  if (!*(v29 + 16))
  {

    v44 = sub_1DA3942D4();
    v45 = sub_1DA394584();
    if (OUTLINED_FUNCTION_27_1(v45))
    {
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_22_1();
      *v1 = 136315138;
      *(v1 + 4) = OUTLINED_FUNCTION_84("enableTelemetry=YES", v91, v92, v93, v95, v96);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_16_2();
    }

LABEL_20:
    OUTLINED_FUNCTION_20_1();
    static SignpostLogger.end(log:name:telemetry:)(v63, v64, v65, v66, v67, v68, v69);
    sub_1DA394094();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_101();

    __asm { BRAA            X2, X16 }
  }

  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v32 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4E8, &qword_1DA396028);
  v33 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4F0, &qword_1DA396030) - 8);
  v34 = *(*v33 + 72);
  OUTLINED_FUNCTION_130();
  v37 = v36 & ~v35;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1DA395F10;
  v39 = v38 + v37;
  v94 = v33[14];
  *v30 = 0;
  *(v30 + 8) = 1;
  v40 = *(v31 + 104);
  v40(v30, *MEMORY[0x1E69DF5C0], v32);
  sub_1DA394134();
  *(v39 + v94) = 1;
  v41 = v39 + v34;
  v42 = v33[14];
  *v30 = 0;
  *(v30 + 8) = 0;
  v40(v30, *MEMORY[0x1E69DF5B0], v32);
  OUTLINED_FUNCTION_70();
  sub_1DA394134();
  *(v41 + v42) = 0;
  v43 = sub_1DA394034();
  *(v0 + 240) = v43;

  v51 = *(v43 + 16);
  *(v0 + 248) = v51;
  if (v51)
  {
    v52 = *(v0 + 104);
    v53 = *(v0 + 112);
    v54 = *(v53 + 16);
    v53 += 16;
    v55 = *(v53 + 64);
    *(v0 + 360) = v55;
    *(v0 + 256) = *(v53 + 56);
    *(v0 + 264) = v54;
    v56 = MEMORY[0x1E69E7CC0];
    *(v0 + 272) = 0;
    *(v0 + 280) = v56;
    v54(*(v0 + 120), *(v0 + 240) + ((v55 + 32) & ~v55), v52);
    v57 = swift_task_alloc();
    *(v0 + 288) = v57;
    *v57 = v0;
    OUTLINED_FUNCTION_32_0(v57);
    OUTLINED_FUNCTION_101();

    return sub_1DA382E28(v58, v59, v60);
  }

  else
  {

    v72 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1(v72 + 19, v72[22]);
    v73 = OUTLINED_FUNCTION_26();
    *(v0 + 304) = v74(v73);
    v75 = v72[28];
    __swift_project_boxed_opaque_existential_1(v72 + 24, v72[27]);
    v76 = OUTLINED_FUNCTION_86();
    v78 = v77(v76, v75);
    v80 = OUTLINED_FUNCTION_119(v78, v79);

    if (v80)
    {
      v81 = *(v0 + 96);
      v82 = OUTLINED_FUNCTION_8_1();
      sub_1DA3852C8(v82, v83);
      OUTLINED_FUNCTION_86();
    }

    else
    {
      v81 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 312) = v81;
    if (sub_1DA377B88(v81))
    {
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_78(ObjectType);
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_113();
      sub_1DA394534();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_101();

      return MEMORY[0x1EEE6DFA0](v85, v86, v87);
    }

    else
    {

      type metadata accessor for TypoRecoveryManager();
      v89 = swift_task_alloc();
      *(v0 + 320) = v89;
      *v89 = v0;
      OUTLINED_FUNCTION_33_0(v89);
      OUTLINED_FUNCTION_101();

      return sub_1DA37AF80();
    }
  }
}

uint64_t sub_1DA3846EC()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_17_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  *(v6 + 296) = v5;

  v7 = OUTLINED_FUNCTION_68();
  v8(v7);
  v9 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA384828()
{
  OUTLINED_FUNCTION_44_0();
  if (v0[37])
  {
    v1 = v0 + 6;

    MEMORY[0x1DA74BB40](v2);
    OUTLINED_FUNCTION_142();
    if (v4)
    {
      OUTLINED_FUNCTION_23_1(v3);
      sub_1DA394504();
    }

    OUTLINED_FUNCTION_8_1();
    sub_1DA394524();
  }

  else
  {
    v1 = v0 + 35;
  }

  v5 = *v1;
  v6 = v0[34] + 1;
  if (v6 == v0[31])
  {

    v7 = v0[12];
    __swift_project_boxed_opaque_existential_1(v7 + 19, v7[22]);
    OUTLINED_FUNCTION_137();
    v0[38] = v8();
    v9 = v7[27];
    v10 = v7[28];
    __swift_project_boxed_opaque_existential_1(v7 + 24, v9);
    v11 = (*(v10 + 8))(v9, v10);
    LOBYTE(v9) = OUTLINED_FUNCTION_119(v11, v12);

    if (v9)
    {
      v13 = v0[12];
      v14 = OUTLINED_FUNCTION_28_0();
      sub_1DA3852C8(v14, v15);
      OUTLINED_FUNCTION_39_0();

      v5 = v13;
    }

    v0[39] = v5;
    if (sub_1DA377B88(v5))
    {
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_78(ObjectType);
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_113();
      sub_1DA394534();
      v17 = OUTLINED_FUNCTION_42_0();

      return MEMORY[0x1EEE6DFA0](v17, v18, v19);
    }

    else
    {

      type metadata accessor for TypoRecoveryManager();
      v25 = swift_task_alloc();
      v0[40] = v25;
      *v25 = v0;
      OUTLINED_FUNCTION_33_0(v25);

      return sub_1DA37AF80();
    }
  }

  else
  {
    v0[34] = v6;
    v0[35] = v5;
    OUTLINED_FUNCTION_114();
    v20();
    v21 = swift_task_alloc();
    v0[36] = v21;
    *v21 = v0;
    v22 = OUTLINED_FUNCTION_32_0(v21);

    return sub_1DA382E28(v22, v23, v24);
  }
}

uint64_t sub_1DA384AA4()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_17_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 328) = v3;

  v4 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DA384B8C()
{
  OUTLINED_FUNCTION_51();
  v0 = OUTLINED_FUNCTION_104();
  v4 = sub_1DA385A18(v0, v1, v2, v3, 1);

  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_20_1();
  static SignpostLogger.end(log:name:telemetry:)(v5, v6, v7, v8, v9, v10, v11);
  sub_1DA394094();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_29_0();

  return v12(v4);
}

uint64_t sub_1DA384C6C()
{
  OUTLINED_FUNCTION_9_1();
  (*(v0 + 344))(*(v0 + 56), *(v0 + 64), *(v0 + 312), *(v0 + 336), *(v0 + 192));
  v1 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1DA384CD8()
{
  OUTLINED_FUNCTION_51();

  v1 = sub_1DA3942D4();
  v2 = sub_1DA394574();
  v3 = OUTLINED_FUNCTION_82(v2);
  v4 = *(v0 + 312);
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_81();
    *v5 = 134217984;
    v6 = sub_1DA377B88(v4);

    *(v5 + 4) = v6;

    _os_log_impl(&dword_1DA365000, v1, v2, "Got %ld candidates from DB", v5, 0xCu);
    OUTLINED_FUNCTION_21_1();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v7 = OUTLINED_FUNCTION_104();
  v11 = sub_1DA385A18(v7, v8, v9, v10, 0);

  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_20_1();
  static SignpostLogger.end(log:name:telemetry:)(v12, v13, v14, v15, v16, v17, v18);
  sub_1DA394094();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_29_0();

  return v19(v11);
}

void sub_1DA384E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_123();
  v7 = v6;
  v9 = v8;
  v10 = sub_1DA394154();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7();
  v16 = (v15 - v14);
  v17 = sub_1DA394144();
  v18 = OUTLINED_FUNCTION_23(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_7();
  sub_1DA3940F4();
  OUTLINED_FUNCTION_0();
  v54 = v20;
  v55 = v19;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_7();
  v53 = v22 - v21;
  v23 = v4[22];
  v24 = v4[23];
  __swift_project_boxed_opaque_existential_1(v4 + 19, v23);
  v25 = (*(v24 + 16))(v9, v7, v23, v24);
  v26 = *(v25 + 16);
  if (v26)
  {
    v52 = v12;
    v58 = MEMORY[0x1E69E7CC0];
    sub_1DA36CB08(0, v26, 0);
    v27 = v58;
    v28 = (v25 + 40);
    do
    {
      v56 = *(v28 - 1);
      v57 = *v28;
      swift_bridgeObjectRetain_n();
      MEMORY[0x1DA74BA70](42, 0xE100000000000000);

      v5 = v56;
      v30 = *(v58 + 16);
      v29 = *(v58 + 24);
      if (v30 >= v29 >> 1)
      {
        v32 = OUTLINED_FUNCTION_23_1(v29);
        sub_1DA36CB08(v32, v30 + 1, 1);
      }

      *(v58 + 16) = v30 + 1;
      v31 = v58 + 16 * v30;
      *(v31 + 32) = v56;
      *(v31 + 40) = v57;
      v28 += 2;
      --v26;
    }

    while (v26);

    v12 = v52;
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  if (*(v27 + 16))
  {
    *v16 = 0;
    v16[1] = 0;
    (*(v12 + 104))(v16, *MEMORY[0x1E69DF5B8], v10);
    sub_1DA394134();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4E0, &qword_1DA395FC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD480, &qword_1DA395E20);
    OUTLINED_FUNCTION_63();
    v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1DA395AB0;
    v36 = v35 + v34;
    v37 = *(v5 + 56);
    sub_1DA394124();
    OUTLINED_FUNCTION_10();
    v38 = OUTLINED_FUNCTION_102();
    v39(v38);
    *(v36 + v37) = v27;
    v40 = *MEMORY[0x1E69DF5E8];
    v41 = sub_1DA394164();
    OUTLINED_FUNCTION_10();
    (*(v42 + 104))(v36 + v37, v40, v41);
    OUTLINED_FUNCTION_46_0();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v41);
    sub_1DA3940E4();
    sub_1DA377E54(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v47 = v46;
    v49 = *(v46 + 16);
    v48 = *(v46 + 24);
    if (v49 >= v48 >> 1)
    {
      v50 = OUTLINED_FUNCTION_23_1(v48);
      sub_1DA377E54(v50, v49 + 1, 1, v47);
      v47 = v51;
    }

    *(v47 + 16) = v49 + 1;
    (*(v54 + 32))(v47 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v49, v53, v55);
  }

  else
  {
  }

  OUTLINED_FUNCTION_91();
}

uint64_t sub_1DA3852C8(unint64_t a1, unint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + 152), *(v2 + 176));
  v4 = OUTLINED_FUNCTION_28_0();
  v75 = v5(v4);
  v6 = 0;
  v7 = 0;
  v8 = *(a2 + 16);
  v78 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v9 = (a2 + 40 + 16 * v6);
  while (v8 != v6)
  {
    if (v6 >= v8)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_61;
    }

    v12 = *(v9 - 1);
    v11 = *v9;
    v13 = sub_1DA38856C(v12, *v9);
    ++v6;
    v9 += 2;
    if (v13)
    {

      v14 = v78;
      v82[0] = v78;
      v15 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA36CB08(0, *(v78 + 16) + 1, 1);
        v14 = v82[0];
      }

      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        v19 = OUTLINED_FUNCTION_23_1(v16);
        sub_1DA36CB08(v19, v17 + 1, 1);
        v14 = v82[0];
      }

      *(v14 + 16) = v17 + 1;
      v78 = v14;
      v18 = v14 + 16 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v11;
      v6 = v10;
      v7 = v15;
      goto LABEL_2;
    }
  }

  if (qword_1EDCC52A0 == -1)
  {
    goto LABEL_13;
  }

LABEL_68:
  OUTLINED_FUNCTION_0_5();
  swift_once();
LABEL_13:
  v20 = sub_1DA3942F4();
  OUTLINED_FUNCTION_38_0(v20, qword_1EDCC51C0);

  v21 = sub_1DA3942D4();
  v22 = sub_1DA394584();

  if (OUTLINED_FUNCTION_116())
  {
    v23 = swift_slowAlloc();
    v82[0] = OUTLINED_FUNCTION_89();
    *v23 = 67109634;
    *(v23 + 4) = v75 & 1;
    *(v23 + 8) = 2080;
    v24 = MEMORY[0x1DA74BB60](a2, MEMORY[0x1E69E6158]);
    v26 = sub_1DA372AD8(v24, v25, v82);

    *(v23 + 10) = v26;
    *(v23 + 18) = 2080;
    v27 = OUTLINED_FUNCTION_134();
    v28 = MEMORY[0x1DA74BB60](v27);
    v30 = sub_1DA372AD8(v28, v29, v82);

    *(v23 + 20) = v30;
    _os_log_impl(&dword_1DA365000, v21, v22, "filterZhPhrasesBasedOnQueryCharacter: Morphun ready: %{BOOL}d, queryTokens: %s, filteredZhCharacterTokens: %s", v23, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_48();
  }

  v31 = a1;
  v83 = MEMORY[0x1E69E7CC0];
  v32 = sub_1DA377B88(a1);
  if (v32)
  {
    v33 = v32;
    a2 = 0;
    v34 = v78;
    v72 = *(v78 + 16);
    v35 = a1 & 0xC000000000000001;
    v70 = MEMORY[0x1E69E7CC0];
    v36 = MEMORY[0x1E69E6158];
    v71 = v32;
    while (1)
    {
      if (v35)
      {
        v37 = MEMORY[0x1DA74BE10](a2, v31);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v37 = *(a1 + 32 + 8 * a2);
      }

      if (__OFADD__(a2++, 1))
      {
        goto LABEL_66;
      }

      v39 = *(v34 + 16);
      v81 = v37;
      v80 = v39;
      if (v75)
      {
        break;
      }

      if (!v39)
      {
        goto LABEL_50;
      }

      v73 = a2;
      v79 = 0;
      v47 = 0;
      v77 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens;
      while (2)
      {
        if (v47 >= *(v34 + 16))
        {
          goto LABEL_63;
        }

        a2 = *(v78 + 32 + 16 * v47++);
        v48 = *(v37 + v77);
        v49 = *(v48 + 16);

        v50 = (v48 + 40);
        v51 = -1;
        do
        {
          if (v51 - v49 == -1)
          {

            goto LABEL_45;
          }

          if (++v51 >= *(v48 + 16))
          {
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          v52 = v50 + 2;
          v53 = *v50;
          v82[0] = *(v50 - 1);
          v82[1] = v53;
          sub_1DA368C30();
          v54 = sub_1DA394604();
          v50 = v52;
        }

        while ((v54 & 1) == 0);

        if (__OFADD__(v79, 1))
        {
          goto LABEL_65;
        }

        ++v79;
LABEL_45:
        v37 = v81;
        if (v47 != v80)
        {
          continue;
        }

        break;
      }

LABEL_46:
      a2 = v73;
      v31 = a1;
      v33 = v71;
      v35 = a1 & 0xC000000000000001;
      if (v79 != v72)
      {
LABEL_51:

        v56 = sub_1DA3942D4();
        v57 = sub_1DA394584();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = OUTLINED_FUNCTION_83();
          v82[0] = OUTLINED_FUNCTION_89();
          *v58 = 136315394;
          v59 = MEMORY[0x1DA74BB60](v34, v36);
          v61 = v57;
          v62 = sub_1DA372AD8(v59, v60, v82);

          *(v58 + 4) = v62;
          *(v58 + 12) = 2080;

          v64 = MEMORY[0x1DA74BB60](v63, v36);
          v66 = v65;

          v67 = v64;
          v34 = v78;
          v68 = sub_1DA372AD8(v67, v66, v82);

          *(v58 + 14) = v68;
          _os_log_impl(&dword_1DA365000, v56, v61, "filterZhPhrasesBasedOnQueryCharacter: %s is not (a prefix) in %s, skip candidate", v58, 0x16u);
          swift_arrayDestroy();
          v31 = a1;
          OUTLINED_FUNCTION_46();
          v35 = a1 & 0xC000000000000001;
          OUTLINED_FUNCTION_46();
        }

        goto LABEL_54;
      }

LABEL_47:
      MEMORY[0x1DA74BB40]();
      v55 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v55 >> 1)
      {
        OUTLINED_FUNCTION_23_1(v55);
        sub_1DA394504();
      }

      sub_1DA394524();
      v70 = v83;
LABEL_54:
      if (a2 == v33)
      {
LABEL_59:

        return v70;
      }
    }

    if (v39)
    {
      v73 = a2;
      v79 = 0;
      v40 = 0;
      v76 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens;
      while (v40 < *(v34 + 16))
      {
        ++v40;
        v41 = *(v37 + v76);
        v42 = *(v41 + 16);

        v43 = v41 + 40;
        a2 = -v42;
        v44 = -1;
        do
        {
          if (v44 - v42 == -1)
          {

            goto LABEL_33;
          }

          if (++v44 >= *(v41 + 16))
          {
            goto LABEL_58;
          }

          v45 = v43 + 16;

          OUTLINED_FUNCTION_68();
          v46 = sub_1DA394424();

          v43 = v45;
        }

        while ((v46 & 1) == 0);

        if (__OFADD__(v79, 1))
        {
          goto LABEL_64;
        }

        ++v79;
LABEL_33:
        v34 = v78;
        v37 = v81;
        if (v40 == v80)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_62;
    }

LABEL_50:
    if (v72)
    {
      goto LABEL_51;
    }

    goto LABEL_47;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DA385A18(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, int a5)
{
  LODWORD(v111) = a5;
  sub_1DA393F04();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7();
  v8 = sub_1DA377B88(a1);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v10 = v8;
    *&v117 = MEMORY[0x1E69E7CC0];
    v11 = &v117;
    sub_1DA36CC18(0, v8 & ~(v8 >> 63), 0);
    if (v10 < 0)
    {
      goto LABEL_87;
    }

    v12 = 0;
    v9 = v117;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1DA74BE10](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      *&v117 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        v17 = OUTLINED_FUNCTION_23_1(v14);
        sub_1DA36CC18(v17, v15 + 1, 1);
        v9 = v117;
      }

      ++v12;
      *(v9 + 16) = v15 + 1;
      v16 = (v9 + 40 * v15);
      v16[4] = v13;
      v16[5] = 0;
      v16[6] = 0;
      v16[7] = 0;
      *(v16 + 62) = 0;
    }

    while (v10 != v12);
  }

  v5 = &v117;

  sub_1DA393EF4();
  v18 = *(v9 + 16);

  if (v18)
  {
    v20 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_133();
      if (v21)
      {
        break;
      }

      v22 = 0;
      v23 = v20 + 1;
      a1 = 40 * v20;
      do
      {
        v24 = v22;
        if (v22 == 3)
        {
          break;
        }

        ++v22;
      }

      while (byte_1F55E4C48[v24 + 32] != *(*(v9 + 40 * v20 + 32) + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA36FAE8(v9);
        v9 = v32;
      }

      OUTLINED_FUNCTION_133();
      if (v21)
      {
        goto LABEL_79;
      }

      v25 = v9 + a1 + 32;
      *(v9 + a1 + 65) = v24 != 3;
      *(v9 + a1 + 40) = sub_1DA36A238();
      v26 = *(v9 + a1 + 62);
      v27 = *(v9 + a1 + 48);
      v115 = *v25;
      v116[0] = v27;
      *(v116 + 14) = v26;
      a1 = v115;
      sub_1DA38FE94(&v115, &v117);
      v28 = sub_1DA387094(a1);
      sub_1DA38FECC(&v115);
      OUTLINED_FUNCTION_133();
      if (v21)
      {
        goto LABEL_80;
      }

      *(v25 + 16) = v28;
      v30 = *v25;
      v29 = *(v25 + 16);
      *&v118[14] = *(v25 + 30);
      v117 = v30;
      *v118 = v29;
      v31 = v30;
      sub_1DA38FE94(&v117, v114);
      a1 = sub_1DA387284(v31, a4);
      sub_1DA38FECC(&v117);
      OUTLINED_FUNCTION_133();
      if (v21)
      {
        goto LABEL_81;
      }

      *(v25 + 34) = a1 & 1;
      *(v25 + 35) = a1 > 0xFFu;
      ++v20;
      if (v23 == v18)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

LABEL_22:
  a1 = sub_1DA386584(v9, v19, v111 & 1);
  v111 = v33;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_85;
  }

LABEL_23:
  v34 = *(a1 + 16);
  *&v117 = a1 + 32;
  *(&v117 + 1) = v34;
  sub_1DA38B9E4(&v117, &unk_1F55E57E8, sub_1DA38D050, sub_1DA38BD04);
  v119[0] = a1;
  sub_1DA38756C(v119, 7, 20);
  v11 = v119[0];
  a1 = *(v119[0] + 16);
  v9 = v111;
  if (a1 >= 0x15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_25;
  }

  while (1)
  {

    a1 = sub_1DA37E1C8();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    if ((v49 & 1) == 0)
    {
      goto LABEL_33;
    }

    sub_1DA394944();
    swift_unknownObjectRetain_n();
    v53 = swift_dynamicCastClass();
    if (!v53)
    {
      swift_unknownObjectRelease();
      v53 = MEMORY[0x1E69E7CC0];
    }

    v54 = *(v53 + 16);

    if (__OFSUB__(v50 >> 1, v48))
    {
      __break(1u);
LABEL_91:
      swift_unknownObjectRelease();
LABEL_33:
      sub_1DA37D164(a1, v46, v48, v50);
      v52 = v51;
      goto LABEL_40;
    }

    if (v54 != (v50 >> 1) - v48)
    {
      goto LABEL_91;
    }

    v52 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v52)
    {
      goto LABEL_41;
    }

    v52 = MEMORY[0x1E69E7CC0];
LABEL_40:
    swift_unknownObjectRelease();
LABEL_41:

    v55 = *(v52 + 16);

    if (v55)
    {
      v56 = 0;
      v57 = 0;
      v58 = *(v52 + 16);
      v5 = a4;
      while (v57 < v58)
      {
        v59 = *(*(v52 + v56 + 32) + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens);

        v60 = sub_1DA36DEF8(a4, v59);
        a1 = sub_1DA36F3BC(v60, v59);

        v61 = sub_1DA36F3BC(a4, v59);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DA36FAE8(v52);
          v52 = v62;
        }

        v58 = *(v52 + 16);
        if (v57 >= v58)
        {
          goto LABEL_83;
        }

        ++v57;
        *(v52 + v56 + 56) = (a1 + v61) * 0.5;
        v56 += 40;
        if (v55 == v57)
        {
          goto LABEL_48;
        }
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

LABEL_48:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DA36FAE8(v52);
      v52 = v106;
    }

    v63 = *(v52 + 16);
    *&v117 = v52 + 32;
    *(&v117 + 1) = v63;
    sub_1DA38B9E4(&v117, &unk_1F55E57E8, sub_1DA38C840, sub_1DA38BBDC);
    v119[0] = v52;
    sub_1DA38756C(v119, 1, 3);
    v64 = v119[0];
    v65 = OUTLINED_FUNCTION_103();
    v110 = sub_1DA387B50(v65, v66, v64, v67);

    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v68 = sub_1DA3942F4();
    v69 = __swift_project_value_buffer(v68, qword_1EDCC51C0);
    *&v117 = 0;
    *(&v117 + 1) = 0xE000000000000000;
    sub_1DA394784();

    *&v117 = 0xD00000000000001CLL;
    *(&v117 + 1) = 0x80000001DA397870;
    v70 = OUTLINED_FUNCTION_103();
    MEMORY[0x1DA74BA70](v70);
    MEMORY[0x1DA74BA70](39, 0xE100000000000000);
    *&v117 = v110;

    v9 = v111;

    sub_1DA3733C4(v71);
    OUTLINED_FUNCTION_28_0();
    v11 = v69;
    sub_1DA3942C4();

    result = sub_1DA37E1C8();
    v5 = v74;
    v75 = v73;
    v77 = v76 >> 1;
    a4 = (v76 >> 1);
    if (v73 != v76 >> 1)
    {
      break;
    }

LABEL_61:
    a1 = v77 - v75;
    if (__OFSUB__(v77, v75))
    {
      __break(1u);
LABEL_87:
      __break(1u);
    }

    else
    {
      if (!a1)
      {
        swift_unknownObjectRelease();
        v103 = OUTLINED_FUNCTION_77();
        v104(v103);

        return MEMORY[0x1E69E7CC0];
      }

      v113 = MEMORY[0x1E69E7CC0];
      v11 = &v113;
      sub_1DA3947E4();
      if ((a1 & 0x8000000000000000) == 0)
      {
        v88 = v77 - 1;
        v5 = (v5 + 40 * v75);
        while (v75 < v77)
        {
          v90 = *v5;
          v89 = v5[1];
          *&v118[14] = *(v5 + 30);
          v117 = v90;
          *v118 = v89;
          a1 = v90;
          swift_beginAccess();
          v92 = *(a1 + 16);
          v91 = *(a1 + 24);
          OUTLINED_FUNCTION_126();

          sub_1DA3882D8(v92, v91, v93, v94);
          v97 = v96;
          if (v95 == v92 && v96 == v91)
          {
          }

          else
          {
            v99 = v95;
            v100 = sub_1DA394934();

            if ((v100 & 1) == 0)
            {
              *(a1 + 16) = v99;
              *(a1 + 24) = v97;
            }
          }

          v77 = a4;

          sub_1DA3947C4();
          sub_1DA3947F4();
          OUTLINED_FUNCTION_8_1();
          sub_1DA394804();
          sub_1DA3947D4();
          if (v88 == v75)
          {
            swift_unknownObjectRelease();
            v101 = OUTLINED_FUNCTION_77();
            v102(v101);

            return v113;
          }

          ++v75;
          v5 = (v5 + 40);
        }

LABEL_84:
        __break(1u);
LABEL_85:
        sub_1DA36FAE8(a1);
        a1 = v105;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_89:
    sub_1DA36FAE8(v11);
    v11 = v107;
LABEL_25:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_10_3();
      sub_1DA377F88();
      v9 = v108;
    }

    v35 = a1 - 20;
    v36 = v11 + 108;
    do
    {
      *v36 = 5;
      v37 = *(v36 - 2);
      v38 = *(v36 - 1);
      *(v5 + 30) = *(v36 - 2);
      v117 = v37;
      *v118 = v38;
      OUTLINED_FUNCTION_126();
      v40 = *(v9 + 16);
      v39 = *(v9 + 24);
      if (v40 >= v39 >> 1)
      {
        OUTLINED_FUNCTION_23_1(v39);
        sub_1DA377F88();
        v9 = v44;
      }

      *(v9 + 16) = v40 + 1;
      v41 = v9 + 40 * v40;
      v42 = v117;
      v43 = *v118;
      *(v41 + 62) = *(v5 + 30);
      *(v41 + 32) = v42;
      *(v41 + 48) = v43;
      v36 += 40;
      --v35;
    }

    while (v35);
    v111 = v9;
  }

  if (v73 < v77)
  {
    swift_unknownObjectRetain();
    v78 = ~v75 + v77;
    v109 = v5;
    for (i = v5 + 40 * v75; ; i += 40)
    {
      v80 = *i;
      v81 = *(i + 1);
      *&v118[14] = *(i + 30);
      v117 = v80;
      *v118 = v81;
      OUTLINED_FUNCTION_126();
      OUTLINED_FUNCTION_126();
      v11 = v69;
      v82 = sub_1DA3942D4();
      v83 = sub_1DA394584();
      sub_1DA38FECC(&v117);
      if (os_log_type_enabled(v82, v83))
      {
        v84 = OUTLINED_FUNCTION_81();
        v114[0] = OUTLINED_FUNCTION_74();
        *v84 = 136315138;
        OUTLINED_FUNCTION_126();
        v11 = sub_1DA369C7C();
        sub_1DA38FECC(&v117);
        v85 = OUTLINED_FUNCTION_68();
        sub_1DA372AD8(v85, v86, v87);
        OUTLINED_FUNCTION_39_0();

        *(v84 + 4) = v11;
        _os_log_impl(&dword_1DA365000, v82, v83, "%s", v84, 0xCu);
        OUTLINED_FUNCTION_8_4();
        OUTLINED_FUNCTION_54();
        sub_1DA38FECC(&v117);
      }

      else
      {

        sub_1DA38FECC(&v117);
      }

      v9 = v111;
      if (!v78)
      {
        break;
      }

      --v78;
    }

    swift_unknownObjectRelease();
    v77 = a4;
    v5 = v109;
    goto LABEL_61;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA386584(uint64_t a1, uint64_t a2, char a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v67 = MEMORY[0x1E69E7CC0];
  v6 = __swift_project_boxed_opaque_existential_1((v3 + 104), *(v3 + 128));
  v60 = *(a1 + 16);
  if (!v60)
  {
LABEL_51:
    sub_1DA386A08(v5, v7, v8, v9);
    v54 = v53;
    v56 = v55;

    sub_1DA3733C4(v56);
    return v54;
  }

  v10 = &v64;
  v11 = *(*v6 + 16);
  v59 = a1 + 32;
  v12 = v11 + 56;

  v13 = 0;
  v14 = v5;
  while (1)
  {
    v15 = (v59 + 40 * v13);
    *(v10 + 30) = *(v15 + 30);
    v16 = v15[1];
    v64 = *v15;
    v65 = v16;
    v17 = v64;
    v61 = v14;
    if (*(v11 + 16))
    {
      break;
    }

    v12 = v5;
    sub_1DA38FE94(&v64, v63);
    sub_1DA38FE94(&v64, v63);
LABEL_19:
    v31 = *(v17 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale);
    v30 = *(v17 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_locale + 8);
    v33 = v58[27];
    v32 = v58[28];
    __swift_project_boxed_opaque_existential_1(v58 + 24, v33);
    v13 = v32 + 8;
    v10 = *(v32 + 8);

    v34 = (v10)(v33, v32);
    v21 = v35;
    if (!v30)
    {

      v5 = v12;
      OUTLINED_FUNCTION_92();
LABEL_27:
      if (*(v17 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source) != 5)
      {
        v14 = v61;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_10_3();
          sub_1DA377F88();
          v14 = v49;
        }

        OUTLINED_FUNCTION_98();
        if (v27)
        {
          OUTLINED_FUNCTION_4_5(v38);
          sub_1DA377F88();
          v14 = v50;
        }

        result = OUTLINED_FUNCTION_31_0();
        if (v17 >= *(v14 + 16))
        {
          goto LABEL_53;
        }

        v29 = 4;
        goto LABEL_43;
      }

      goto LABEL_35;
    }

    v36 = v31 == v34 && v30 == v35;
    v5 = v12;
    if (v36)
    {

      OUTLINED_FUNCTION_92();
      goto LABEL_35;
    }

    v37 = sub_1DA394934();

    OUTLINED_FUNCTION_92();
    if ((v37 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_35:
    if ((a3 & 1) != 0 || v66 != 1)
    {
      v14 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_10_3();
        sub_1DA377F88();
        v5 = v47;
      }

      v41 = *(v5 + 16);
      v40 = *(v5 + 24);
      if (v41 >= v40 >> 1)
      {
        OUTLINED_FUNCTION_4_5(v40);
        sub_1DA377F88();
        v5 = v48;
      }

      sub_1DA38FECC(&v64);
      *(v5 + 16) = v41 + 1;
      v42 = v5 + 40 * v41;
      v43 = *(v10 + 30);
      v44 = v65;
      *(v42 + 32) = v64;
      *(v42 + 48) = v44;
      *(v42 + 62) = v43;
      goto LABEL_49;
    }

    v14 = v61;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_10_3();
      sub_1DA377F88();
      v14 = v51;
    }

    OUTLINED_FUNCTION_98();
    if (v27)
    {
      OUTLINED_FUNCTION_4_5(v39);
      sub_1DA377F88();
      v14 = v52;
    }

    result = OUTLINED_FUNCTION_31_0();
    if (v17 >= *(v14 + 16))
    {
      goto LABEL_54;
    }

    v29 = 2;
LABEL_43:
    *(v21 + 64) = v29;
    v67 = v14;
LABEL_49:
    if (++v13 == v60)
    {

      goto LABEL_51;
    }
  }

  v19 = *(v64 + 48);
  v18 = *(v64 + 56);
  sub_1DA3949D4();
  sub_1DA38FE94(&v64, v62);
  sub_1DA38FE94(&v64, v62);

  sub_1DA394354();
  v20 = sub_1DA394A14();
  v21 = ~(-1 << *(v11 + 32));
  do
  {
    v22 = v20 & v21;
    if (((*(v12 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
    {
      v12 = v5;

      goto LABEL_19;
    }

    v23 = (*(v11 + 48) + 16 * v22);
    if (*v23 == v19 && v23[1] == v18)
    {
      break;
    }

    v25 = sub_1DA394934();
    v20 = v22 + 1;
  }

  while ((v25 & 1) == 0);

  v14 = v61;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_10_3();
    sub_1DA377F88();
    v14 = v45;
  }

  OUTLINED_FUNCTION_98();
  if (v27)
  {
    OUTLINED_FUNCTION_4_5(v26);
    sub_1DA377F88();
    v14 = v46;
  }

  result = OUTLINED_FUNCTION_31_0();
  if (v17 < *(v14 + 16))
  {
    v29 = 1;
    goto LABEL_43;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

void sub_1DA386A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_123();
  v5 = v4;
  v6 = 0;
  v81 = sub_1DA394344();
  v8 = *(v5 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v79 = 0;
  v80 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = v5 + 32 + 40 * v6; ; i += 40)
  {
    if (v8 == v6)
    {
      v22 = *(v9 + 16);
      v23 = MEMORY[0x1E69E7CC0];
      if (v22)
      {
        v82 = MEMORY[0x1E69E7CC0];

        sub_1DA36CB08(0, v22, 0);
        v23 = v82;
        v24 = v22 - 1;
        for (j = 32; ; j += 40)
        {
          OUTLINED_FUNCTION_132((v9 + j));
          v26 = (v84 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
          OUTLINED_FUNCTION_90();
          v27 = 0x4874736567677573;
          v28 = 0xEB00000000706C65;
          if ((sub_1DA394424() & 1) == 0)
          {
            v27 = *v26;
            v28 = v26[1];
          }

          sub_1DA38FECC(&v84);
          v82 = v23;
          v30 = *(v23 + 16);
          v29 = *(v23 + 24);
          if (v30 >= v29 >> 1)
          {
            v32 = OUTLINED_FUNCTION_23_1(v29);
            sub_1DA36CB08(v32, v30 + 1, 1);
            v23 = v82;
          }

          *(v23 + 16) = v30 + 1;
          v31 = v23 + 16 * v30;
          *(v31 + 32) = v27;
          *(v31 + 40) = v28;
          if (!v24)
          {
            break;
          }

          --v24;
        }
      }

      v34 = v80;
      v33 = v81;
      v35 = *(v80 + 16);
      if (!v35)
      {

LABEL_52:

        OUTLINED_FUNCTION_91();
        return;
      }

      v76 = "filterProfanity(phrase:)";
      v36 = v35 - 1;
      v78 = MEMORY[0x1E69E7CC0];
      v37 = 32;
      v7.n128_u64[0] = 136315650;
      v75 = v7;
      while (1)
      {
        OUTLINED_FUNCTION_132((v34 + v37));
        if (!*(v33 + 16))
        {
          break;
        }

        v38 = v84;
        v39 = (v84 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
        v40 = *(v84 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
        v41 = *(v84 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8);
        OUTLINED_FUNCTION_90();
        OUTLINED_FUNCTION_90();

        v42 = sub_1DA3753E0(v40, v41);
        v44 = v43;

        if ((v44 & 1) == 0 || (v46 = (*(v33 + 56) + 16 * v42), v47 = v46[1], v83[0] = *v46, v83[1] = v47, MEMORY[0x1EEE9AC00](v45), v74[2] = v83, , v48 = v79, v49 = sub_1DA393130(sub_1DA38FFE0, v74, v23), v79 = v48, , !v49))
        {
          v34 = v80;
LABEL_43:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_10_3();
            sub_1DA377F88();
            v9 = v70;
          }

          v69 = *(v9 + 16);
          v68 = *(v9 + 24);
          if (v69 >= v68 >> 1)
          {
            OUTLINED_FUNCTION_4_5(v68);
            sub_1DA377F88();
            v9 = v71;
          }

          sub_1DA38FECC(&v84);
          *(v9 + 16) = v69 + 1;
          OUTLINED_FUNCTION_62(v9 + 40 * v69);
          goto LABEL_48;
        }

        if (qword_1EDCC52A0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v50 = sub_1DA3942F4();
        OUTLINED_FUNCTION_38_0(v50, qword_1EDCC51C0);
        OUTLINED_FUNCTION_90();
        v51 = sub_1DA3942D4();
        v52 = sub_1DA394584();
        sub_1DA38FECC(&v84);
        if (os_log_type_enabled(v51, v52))
        {
          v53 = OUTLINED_FUNCTION_74();
          v77 = swift_slowAlloc();
          v83[0] = v77;
          *v53 = v75.n128_u32[0];
          *(v53 + 4) = sub_1DA372AD8(0xD000000000000031, v76 | 0x8000000000000000, v83);
          *(v53 + 12) = 2080;
          OUTLINED_FUNCTION_9();
          swift_beginAccess();
          v54 = *(v38 + 16);
          v55 = *(v38 + 24);

          v56 = sub_1DA372AD8(v54, v55, v83);

          *(v53 + 14) = v56;
          *(v53 + 22) = 2080;
          v57 = *v39;
          v58 = v39[1];

          v59 = sub_1DA372AD8(v57, v58, v83);

          *(v53 + 24) = v59;
          _os_log_impl(&dword_1DA365000, v51, v52, "Function: %s > Deduped '%s', with actionId %s", v53, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_56();
        }

        v60 = v78;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v80;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_10_3();
          sub_1DA377F88();
          v60 = v72;
        }

        v63 = *(v60 + 16);
        v62 = *(v60 + 24);
        v78 = v60;
        if (v63 >= v62 >> 1)
        {
          OUTLINED_FUNCTION_4_5(v62);
          sub_1DA377F88();
          v78 = v73;
        }

        v64 = v78;
        *(v78 + 16) = v63 + 1;
        v65 = v64 + 40 * v63;
        v66 = v84;
        v67 = *v85;
        *(v65 + 62) = *&v85[14];
        *(v65 + 32) = v66;
        *(v65 + 48) = v67;
        sub_1DA38FECC(&v84);
        if (v63 >= *(v64 + 16))
        {
          goto LABEL_55;
        }

        *(v65 + 64) = 3;
LABEL_48:
        v33 = v81;
        if (!v36)
        {

          goto LABEL_52;
        }

        --v36;
        v37 += 40;
      }

      OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_90();
      goto LABEL_43;
    }

    if (v6 >= v8)
    {
      break;
    }

    v11 = *(i + 16);
    v84 = *i;
    *v85 = v11;
    *&v85[14] = *(i + 30);
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_54;
    }

    if (*(v84 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source))
    {
      OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_90();
      v17 = v80;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_10_3();
        sub_1DA377F88();
        v17 = v20;
      }

      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      if (v19 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_4_5(v18);
        sub_1DA377F88();
        v17 = v21;
      }

      sub_1DA38FECC(&v84);
      *(v17 + 16) = v19 + 1;
      v80 = v17;
      v7 = OUTLINED_FUNCTION_62(v17 + 40 * v19);
      v6 = v12;
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_90();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_10_3();
      sub_1DA377F88();
      v9 = v15;
    }

    v14 = *(v9 + 16);
    v13 = *(v9 + 24);
    if (v14 >= v13 >> 1)
    {
      OUTLINED_FUNCTION_4_5(v13);
      sub_1DA377F88();
      v9 = v16;
    }

    sub_1DA38FECC(&v84);
    *(v9 + 16) = v14 + 1;
    v7 = OUTLINED_FUNCTION_62(v9 + 40 * v14);
    ++v6;
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

long double sub_1DA387094(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD2D0, &unk_1DA395FF0);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23[-v4];
  v6 = sub_1DA393F04();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  OUTLINED_FUNCTION_137();
  sub_1DA390014(v13, v14, v15, v16);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1DA36CB60(v5, &qword_1ECBAD2D0, &unk_1DA395FF0);
    v17 = 1.0;
  }

  else
  {
    (*(v8 + 32))(v12, v5, v6);
    sub_1DA393EE4();
    v19 = v18;
    (*(v8 + 8))(v12, v6);
    v17 = v19 / 3600.0;
  }

  v20 = OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_tapCount;
  OUTLINED_FUNCTION_9();
  swift_beginAccess();
  v21 = *(a1 + v20);
  return pow(0.99, v17) * v21;
}

uint64_t sub_1DA387284(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(result + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_normalizedPhraseTokens);
    v19 = *(v5 + 16);
    v17 = 0x100000001;
    v18 = *(a2 + 16);
    do
    {
      while (1)
      {
LABEL_3:
        if (v4 == v2)
        {
LABEL_34:
          __break(1u);
          return result;
        }

        v6 = v4 + 1;
        if (!v19)
        {
          break;
        }

        v7 = 0;
        while (2)
        {
          while (2)
          {
            while (2)
            {
              v8 = v5 + 40 + 16 * v7++;
              while (1)
              {
                if ((v7 - 1) >= *(v5 + 16))
                {
                  __break(1u);
                  goto LABEL_34;
                }

                if (sub_1DA394424())
                {
                  break;
                }

                ++v7;
                v8 += 16;
                if (v7 - v19 == 1)
                {

                  v2 = v18;
                  goto LABEL_21;
                }
              }

              if (qword_1EDCC5010 != -1)
              {
                swift_once();
              }

              v9 = OUTLINED_FUNCTION_102();
              if (sub_1DA36EDB0(v9, v10, 0))
              {

                v3 = 1;
                if (v7 != v19)
                {
                  continue;
                }

                goto LABEL_23;
              }

              break;
            }

            v11 = OUTLINED_FUNCTION_102();
            v13 = sub_1DA36EDB0(v11, v12, 1);

            v14 = v7 - v19;
            if (v13)
            {
              BYTE4(v17) = 0;
              v3 = 1;
              if (v14)
              {
                continue;
              }

              BYTE4(v17) = 0;
LABEL_23:
              v4 = v6;
              v2 = v18;
              if (v6 != v18)
              {
                goto LABEL_3;
              }

              goto LABEL_28;
            }

            break;
          }

          v17 = 0;
          v3 = 1;
          if (v14)
          {
            continue;
          }

          break;
        }

        v17 = 0;
        v4 = v6;
        v2 = v18;
        if (v6 == v18)
        {
          goto LABEL_31;
        }
      }

LABEL_21:
      v4 = v6;
    }

    while (v6 != v2);
    if ((v3 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_28:
    v15 = BYTE4(v17);
    if (v17)
    {
      v16 = 256;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
LABEL_31:
    v15 = 0;
    v16 = 0;
  }

  return v16 | v15 & 1u;
}

uint64_t sub_1DA3874D0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DA38FFCC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DA38B9E4(v6, MEMORY[0x1E69E6530], sub_1DA38BDE4, sub_1DA38BAF0);
  *a1 = v2;
  return result;
}

uint64_t *sub_1DA38756C(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v64 = result;
  v3 = *result;
  v4 = *(*result + 16);
  if (v4 > a3)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
LABEL_3:
    for (i = 40 * v5 + 32; ; i += 40)
    {
      if (v4 == v5)
      {
        if (*(v7 + 16))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_16;
        }
      }

      if (v5 >= *(v3 + 16))
      {
        break;
      }

      v9 = *(v3 + i);
      v10 = *(v3 + i + 16);
      *&v72[14] = *(v3 + i + 30);
      v71 = v9;
      *v72 = v10;
      v11 = *(v3 + i + 32);
      v12 = *(v3 + i);
      v13 = *(v3 + i + 16);
      *&v74[20] = *(v3 + i + 36);
      *&v74[16] = v11;
      v73 = v12;
      *v74 = v13;
      v14 = v13;
      if (*&v13 > 0.0 && (v74[19] & 1) == 0)
      {
        sub_1DA38FE94(&v71, &v69);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_10_3();
          sub_1DA378140();
          v7 = v18;
        }

        v16 = *(v7 + 16);
        v15 = *(v7 + 24);
        if (v16 >= v15 >> 1)
        {
          OUTLINED_FUNCTION_23_1(v15);
          sub_1DA378140();
          v7 = v19;
        }

        sub_1DA38FECC(&v73);
        *(v7 + 16) = v16 + 1;
        v17 = v7 + 16 * v16;
        *(v17 + 32) = v14;
        *(v17 + 40) = v5++;
        goto LABEL_3;
      }

      sub_1DA38FE94(&v71, &v69);
      sub_1DA38FECC(&v73);
      ++v5;
    }

    __break(1u);
LABEL_60:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
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
      __break(1u);
LABEL_70:
      sub_1DA36FAFC(v7);
      v7 = v63;
LABEL_16:
      v20 = *(v7 + 16);
      *&v73 = v7 + 32;
      *(&v73 + 1) = v20;
      v21 = 0;
      sub_1DA38B8E0(&v73);

      sub_1DA37E1C8();
      v25 = v24 >> 1;
      v26 = (v24 >> 1) - v23;
      if (__OFSUB__(v24 >> 1, v23))
      {
        break;
      }

      if (v26)
      {
        v27 = v22;
        v28 = v23;
        *&v73 = v6;
        sub_1DA36CBF8(0, v26 & ~(v26 >> 63), 0);
        if (v26 < 0)
        {
          goto LABEL_73;
        }

        v6 = v73;
        v29 = (v27 + 16 * v28 + 8);
        while (v28 < v25)
        {
          v30 = *v29;
          *&v73 = v6;
          v21 = *(v6 + 16);
          v31 = *(v6 + 24);
          if (v21 >= v31 >> 1)
          {
            v32 = OUTLINED_FUNCTION_23_1(v31);
            sub_1DA36CBF8(v32, v21 + 1, 1);
            v6 = v73;
          }

          *(v6 + 16) = v21 + 1;
          *(v6 + 8 * v21 + 32) = v30;
          ++v28;
          v29 += 2;
          if (v25 == v28)
          {
            swift_unknownObjectRelease();
            goto LABEL_27;
          }
        }

        goto LABEL_60;
      }

      swift_unknownObjectRelease();
      v6 = MEMORY[0x1E69E7CC0];
LABEL_27:

      v34 = sub_1DA37E6F4(v33);
      v35 = a3 - 1;
      if (__OFSUB__(a3, 1))
      {
        goto LABEL_72;
      }

      v36 = v34;
      *&v73 = v6;

      sub_1DA3874D0(&v73);

      v7 = v73;
      v37 = *(v73 + 16);
      if (!v37)
      {
LABEL_57:
      }

      v38 = 0;
      v65 = v73 + 32;
      while (v38 < *(v7 + 16))
      {
        v39 = *(v65 + 8 * v38);
        if (v39 >= a3)
        {
          if (*(v36 + 16))
          {
            v6 = *(v36 + 40);
            v40 = ~(-1 << *(v36 + 32));
LABEL_34:
            v41 = sub_1DA3949C4();
            while (1)
            {
              v42 = v41 & v40;
              if (((*(v36 + 56 + (((v41 & v40) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v41 & v40)) & 1) == 0)
              {
                break;
              }

              v41 = v42 + 1;
              if (*(*(v36 + 48) + 8 * v42) == v35)
              {
                if (__OFSUB__(v35--, 1))
                {
                  goto LABEL_64;
                }

                goto LABEL_34;
              }
            }
          }

          if (v39 != v35)
          {
            if ((v39 & 0x8000000000000000) != 0)
            {
              goto LABEL_65;
            }

            v44 = *(v3 + 16);
            if (v39 >= v44)
            {
              goto LABEL_66;
            }

            v45 = v3 + 32 + 40 * v39;
            v46 = *v45;
            v47 = *(v45 + 16);
            *&v72[14] = *(v45 + 30);
            v71 = v46;
            *v72 = v47;
            if (v35 >= v44)
            {
              goto LABEL_67;
            }

            v6 = 5 * v35;
            v48 = v3 + 32 + 40 * v35;
            v49 = *v48;
            v50 = *(v48 + 16);
            *&v74[14] = *(v48 + 30);
            v73 = v49;
            *v74 = v50;
            sub_1DA38FE94(&v71, &v69);
            sub_1DA38FE94(&v73, &v69);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1DA36FAE8(v3);
              v3 = v62;
            }

            if (v39 >= *(v3 + 16))
            {
              goto LABEL_68;
            }

            v51 = v3 + 32 + 40 * v39;
            v52 = *v51;
            v53 = *(v51 + 16);
            *&v68[14] = *(v51 + 30);
            v67 = v52;
            *v68 = v53;
            v54 = v73;
            v55 = *v74;
            *(v51 + 30) = *&v74[14];
            *v51 = v54;
            *(v51 + 16) = v55;
            sub_1DA38FECC(&v67);
            if (v35 >= *(v3 + 16))
            {
              goto LABEL_69;
            }

            v56 = v3 + 32 + 40 * v35;
            v57 = *v56;
            v58 = *(v56 + 16);
            *&v70[14] = *(v56 + 30);
            v69 = v57;
            *v70 = v58;
            v59 = v71;
            v60 = *v72;
            *(v56 + 30) = *&v72[14];
            *v56 = v59;
            *(v56 + 16) = v60;
            sub_1DA38FECC(&v69);
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if ((v35 & 0x8000000000000000) != 0)
            {
              goto LABEL_62;
            }
          }

          else
          {
            sub_1DA36FAE8(v3);
            v3 = v61;
            if ((v35 & 0x8000000000000000) != 0)
            {
              goto LABEL_62;
            }
          }

          if (v35 >= *(v3 + 16))
          {
            goto LABEL_63;
          }

          *(v3 + 40 * v35 + 68) = 1;
          *v64 = v3;
          --v35;
        }

        if (++v38 == v37)
        {
          goto LABEL_57;
        }
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_1DA387AB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 35);
  v3 = *(a2 + 35);
  if (v2 != v3)
  {
    return v3 & (v2 ^ 1u);
  }

  v5 = *(a1 + 33);
  v6 = *(a2 + 33);
  if (v5 != v6)
  {
    return v5 & (v6 ^ 1u);
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (v7 != v8)
  {
    return v7 < v8;
  }

  v9 = *(*a1 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source);
  v10 = *(*a2 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source);
  if (v9 != v10)
  {
    return v9 < v10;
  }

  v11 = *(a1 + 8);
  v12 = *(a2 + 8);
  if (v11 == v12)
  {
    return *(a2 + 16) < *(a1 + 16);
  }

  else
  {
    return v12 < v11;
  }
}

uint64_t sub_1DA387B50(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = MEMORY[0x1E69E7CC0];
  v151 = MEMORY[0x1E69E7CC0];
  v150 = MEMORY[0x1E69E7CD0];
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = a2;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = (a3 + 32);
    a4.n128_u64[0] = 136315138;
    v144 = a4;
    v145 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v9[1];
      v148 = *v9;
      v149[0] = v10;
      *(v149 + 14) = *(v9 + 30);
      v11 = v148;
      v12 = *(v148 + 56);
      v13 = *(v148 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_source);
      v14 = *(v148 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier);
      v15 = *(v148 + OBJC_IVAR____TtC19SiriAutoCompleteAPI18AutoCompletePhrase_actionIdentifier + 8);
      v152[0] = *(v148 + 48);
      v152[1] = v12;
      v152[2] = v14;
      v152[3] = v15;
      v153 = v13;
      OUTLINED_FUNCTION_9();
      swift_beginAccess();
      v16 = sub_1DA394394();
      if (v16 == a1 && v17 == v7)
      {
        break;
      }

      v25 = sub_1DA394934();
      v26 = v25;
      v34 = OUTLINED_FUNCTION_115(v25, v27, v28, v29, v30, v31, v32, v33);
      OUTLINED_FUNCTION_115(v34, v35, v36, v37, v38, v39, v40, v41);

      if (v26)
      {
        goto LABEL_15;
      }

      v50 = sub_1DA376AD0(v152, v150);
      if (v50)
      {
        sub_1DA37AB7C(v152);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_10_3();
          sub_1DA377F88();
          v145 = v97;
        }

        v59 = *(v145 + 16);
        v58 = *(v145 + 24);
        if (v59 >= v58 >> 1)
        {
          OUTLINED_FUNCTION_4_5(v58);
          sub_1DA377F88();
          v145 = v98;
        }

        sub_1DA38FECC(&v148);
        *(v145 + 16) = v59 + 1;
        v60 = v145 + 40 * v59;
        v61 = *(v149 + 14);
        v62 = v149[0];
        *(v60 + 32) = v148;
        *(v60 + 48) = v62;
        *(v60 + 62) = v61;
      }

      else
      {
        OUTLINED_FUNCTION_115(v50, v51, v52, v53, v54, v55, v56, v57);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_10_3();
          sub_1DA377F88();
          v8 = v99;
        }

        v93 = *(v8 + 16);
        v92 = *(v8 + 24);
        if (v93 >= v92 >> 1)
        {
          OUTLINED_FUNCTION_4_5(v92);
          sub_1DA377F88();
          v8 = v100;
        }

        *(v8 + 16) = v93 + 1;
        v94 = v8 + 40 * v93;
        v95 = v148;
        v96 = v149[0];
        *(v94 + 62) = *(v149 + 14);
        *(v94 + 32) = v95;
        *(v94 + 48) = v96;
        v151 = v8;
        sub_1DA378824(&v147, v152);
        sub_1DA38FECC(&v148);
        sub_1DA38FECC(&v148);
      }

      v7 = a2;
LABEL_29:
      v9 = (v9 + 40);
      if (!--v6)
      {
        v5 = v145;
        goto LABEL_31;
      }
    }

    v63 = OUTLINED_FUNCTION_115(v16, v17, v18, v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_115(v63, v64, v65, v66, v67, v68, v69, v70);

LABEL_15:
    v71 = *(v8 + 16);
    OUTLINED_FUNCTION_115(v42, v43, v44, v45, v46, v47, v48, v49, *&v144);
    if (!swift_isUniquelyReferenced_nonNull_native() || v71 >= *(v8 + 24) >> 1)
    {
      sub_1DA377F88();
      v8 = v72;
    }

    swift_arrayDestroy();
    v73 = *(v8 + 16);
    memmove((v8 + 72), (v8 + 32), 40 * v73);
    *(v8 + 16) = v73 + 1;
    v74 = *(v149 + 14);
    v75 = v149[0];
    *(v8 + 32) = v148;
    *(v8 + 48) = v75;
    *(v8 + 62) = v74;
    v151 = v8;
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v76 = sub_1DA3942F4();
    v77 = OUTLINED_FUNCTION_38_0(v76, qword_1EDCC51C0);
    OUTLINED_FUNCTION_115(v77, v78, v79, v80, v81, v82, v83, v84);
    v85 = sub_1DA3942D4();
    v86 = sub_1DA394584();
    sub_1DA38FECC(&v148);
    if (OUTLINED_FUNCTION_116())
    {
      v87 = OUTLINED_FUNCTION_81();
      v88 = OUTLINED_FUNCTION_74();
      v147 = v88;
      *v87 = v144.n128_u32[0];
      v89 = *(v11 + 16);
      v90 = *(v11 + 24);

      v91 = sub_1DA372AD8(v89, v90, &v147);

      *(v87 + 4) = v91;
      v7 = a2;
      _os_log_impl(&dword_1DA365000, v85, v86, "Found exact match suggestion: %s. It will be ranked first.", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v88);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_48();
    }

    sub_1DA378824(&v147, v152);
    sub_1DA38FECC(&v148);
    sub_1DA38FECC(&v148);

    goto LABEL_29;
  }

LABEL_31:

  if (*(v5 + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DA36FAE8(v5);
      v5 = v143;
    }

    do
    {
      OUTLINED_FUNCTION_129();
      if (vuzp1_s8(v105, v103).u8[0])
      {
        *(v102 + 69) = v101;
      }

      if (vuzp1_s8(vuzp1_s16(v104, v103), *&v103).i8[1])
      {
        *(v102 + 109) = v101;
      }

      OUTLINED_FUNCTION_128();
      if (vuzp1_s8(v110, *&v108).i8[2])
      {
        *(v107 + 149) = v106;
      }

      if (vuzp1_s8(vuzp1_s16(v108, v109), *&v108).i8[3])
      {
        *(v107 + 189) = v106;
      }

      OUTLINED_FUNCTION_129();
      if (vuzp1_s8(*&v113, v115).i32[1])
      {
        *(v112 + 229) = v111;
      }

      if (vuzp1_s8(*&v113, vuzp1_s16(v114, v113)).i8[5])
      {
        *(v112 + 269) = v111;
      }

      OUTLINED_FUNCTION_128();
      if (vuzp1_s8(*&v118, v120).i8[6])
      {
        *(v117 + 309) = v116;
      }

      if (vuzp1_s8(*&v118, vuzp1_s16(v118, v119)).i8[7])
      {
        *(v117 + 349) = v116;
      }

      OUTLINED_FUNCTION_129();
      if (vuzp1_s8(v125, v123).u8[0])
      {
        *(v122 + 389) = v121;
      }

      if (vuzp1_s8(vuzp1_s16(v124, v123), *&v123).i8[1])
      {
        *(v122 + 429) = v121;
      }

      OUTLINED_FUNCTION_128();
      if (vuzp1_s8(v130, *&v128).i8[2])
      {
        *(v127 + 469) = v126;
      }

      if (vuzp1_s8(vuzp1_s16(v128, v129), *&v128).i8[3])
      {
        *(v127 + 509) = v126;
      }

      OUTLINED_FUNCTION_129();
      if (vuzp1_s8(*&v133, v135).i32[1])
      {
        *(v132 + 549) = v131;
      }

      if (vuzp1_s8(*&v133, vuzp1_s16(v134, v133)).i8[5])
      {
        *(v132 + 589) = v131;
      }

      OUTLINED_FUNCTION_128();
      if (vuzp1_s8(*&v139, v141).i8[6])
      {
        *(v138 + 629) = v137;
      }

      if (vuzp1_s8(*&v139, vuzp1_s16(v139, v140)).i8[7])
      {
        *(v138 + 669) = v137;
      }
    }

    while (v136 != 16);
  }

  sub_1DA3733C4(v5);
  return v151;
}

uint64_t sub_1DA3881A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a1 + 32);
  v6 = *(a1 + 33);
  v7 = *(a1 + 34);
  v8 = *(a1 + 35);
  v9 = *(a1 + 36);
  v10 = *(a1 + 37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD558, &qword_1DA396488);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DA395F90;
  swift_beginAccess();
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 32) = v13;
  *(v11 + 40) = v12;
  v14 = MEMORY[0x1E69E63B0];
  *(v11 + 88) = MEMORY[0x1E69E63B0];
  *(v11 + 64) = v2;
  *(v11 + 120) = v14;
  *(v11 + 96) = v3;
  *(v11 + 152) = v14;
  *(v11 + 128) = v4;
  *(v11 + 184) = &unk_1F55E5770;
  *(v11 + 160) = v5;
  v15 = MEMORY[0x1E69E6370];
  *(v11 + 216) = MEMORY[0x1E69E6370];
  *(v11 + 192) = v6;
  *(v11 + 248) = v15;
  *(v11 + 224) = v7;
  *(v11 + 280) = v15;
  *(v11 + 256) = v8;
  *(v11 + 312) = v15;
  *(v11 + 288) = v9;
  *(v11 + 344) = v15;
  *(v11 + 320) = v10;

  return v11;
}

void sub_1DA3882D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_123();
  sub_1DA394244();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7();
  __swift_project_boxed_opaque_existential_1(v4 + 8, v4[11]);
  if (sub_1DA376884())
  {
  }

  else
  {
    v6 = objc_opt_self();
    OUTLINED_FUNCTION_8_1();
    v7 = sub_1DA394374();
    v8 = v4[28];
    __swift_project_boxed_opaque_existential_1(v4 + 24, v4[27]);
    v9 = OUTLINED_FUNCTION_86();
    v10(v9, v8);
    v11 = sub_1DA394374();

    v12 = [v6 filterProfanity:v7 locale:v11];

    sub_1DA394384();
    OUTLINED_FUNCTION_28_0();
    sub_1DA394224();
    sub_1DA394234();
    v13 = OUTLINED_FUNCTION_103();
    v14(v13);
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v15 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v15, qword_1EDCC51C0);

    v16 = sub_1DA3942D4();
    sub_1DA394584();
    OUTLINED_FUNCTION_138();

    if (OUTLINED_FUNCTION_124())
    {
      v17 = OUTLINED_FUNCTION_83();
      v25 = OUTLINED_FUNCTION_89();
      *v17 = 136315394;
      *(v17 + 4) = sub_1DA372AD8(0xD000000000000018, 0x80000001DA397890, &v25);
      *(v17 + 12) = 2080;
      v18 = OUTLINED_FUNCTION_8_1();
      *(v17 + 14) = sub_1DA372AD8(v18, v19, v20);
      OUTLINED_FUNCTION_69();
      _os_log_impl(v21, v22, v23, v24, v17, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_54();
    }
  }

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_91();
}

BOOL sub_1DA38856C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = 0;
    v6 = a2 & 0xFFFFFFFFFFFFFFLL;
    v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v11 = sub_1DA394774();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v15[0] = a1;
          v15[1] = v6;
          v9 = v15 + v5;
          v11 = *(v15 + v5);
          if (*(v15 + v5) < 0)
          {
            switch(__clz(v11 ^ 0xFF))
            {
              case 0x1Au:
LABEL_22:
                v11 = v9[1] & 0x3F | ((v11 & 0x1F) << 6);
                v12 = 2;
                break;
              case 0x1Bu:
LABEL_23:
                v11 = ((v11 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3F;
                v12 = 3;
                break;
              case 0x1Cu:
LABEL_24:
                v11 = ((v11 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
                v12 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v8 = v7;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v8 = sub_1DA3947B4();
          }

          v9 = (v8 + v5);
          v10 = *(v8 + v5);
          v11 = *(v8 + v5);
          if (v10 < 0)
          {
            switch(__clz(v11 ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_22;
              case 0x1Bu:
                goto LABEL_23;
              case 0x1Cu:
                goto LABEL_24;
              default:
                break;
            }
          }
        }

LABEL_14:
        v12 = 1;
      }

LABEL_15:
      v14 = v11 > 0x7F;
      result = v11 > 0x7F;
      v5 += v12;
      v14 = !v14 && v5 < v2;
      if (!v14)
      {
        return result;
      }
    }
  }

  return 0;
}

BOOL sub_1DA388720(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_1DA394934()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (OUTLINED_FUNCTION_26(), (sub_1DA394934())))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA3887BC(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1DA394354();
  OUTLINED_FUNCTION_28_0();
  sub_1DA394354();
  return MEMORY[0x1DA74C080](v2 + 1);
}

uint64_t sub_1DA38880C()
{
  OUTLINED_FUNCTION_140();
  sub_1DA3949D4();
  sub_1DA394354();
  sub_1DA394354();
  MEMORY[0x1DA74C080](v0 + 1);
  return sub_1DA394A14();
}

uint64_t sub_1DA388888()
{
  OUTLINED_FUNCTION_140();
  sub_1DA3949D4();
  sub_1DA394354();
  sub_1DA394354();
  MEMORY[0x1DA74C080](v0 + 1);
  return sub_1DA394A14();
}

uint64_t DefaultSiriAutoCompleteService.flushAssistantSuggestions(deactivateWriteClientAfter:)()
{
  OUTLINED_FUNCTION_9_1();
  *(v1 + 16) = v0;
  *(v1 + 112) = v2;
  v3 = sub_1DA394154();
  *(v1 + 24) = v3;
  OUTLINED_FUNCTION_6_2(v3);
  *(v1 + 32) = v4;
  *(v1 + 40) = OUTLINED_FUNCTION_76();
  v5 = sub_1DA394144();
  OUTLINED_FUNCTION_23(v5);
  *(v1 + 48) = OUTLINED_FUNCTION_76();
  v6 = sub_1DA3940F4();
  *(v1 + 56) = v6;
  OUTLINED_FUNCTION_6_2(v6);
  *(v1 + 64) = v7;
  *(v1 + 72) = OUTLINED_FUNCTION_76();
  v8 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA388A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_47();
  v16 = v12[2];
  v17 = v16[6];
  __swift_project_boxed_opaque_existential_1(v16 + 2, v16[5]);
  v18 = OUTLINED_FUNCTION_28_0();
  if (v19(v18))
  {
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v20 = sub_1DA3942F4();
    v12[10] = __swift_project_value_buffer(v20, qword_1EDCC51C0);
    v21 = sub_1DA3942D4();
    v22 = sub_1DA394584();
    if (OUTLINED_FUNCTION_27_1(v22))
    {
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_79();
      *v17 = 136315138;
      OUTLINED_FUNCTION_9_2();
      *(v17 + 4) = sub_1DA372AD8(0xD000000000000036, v23, v24);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_16_2();
    }

    OUTLINED_FUNCTION_112();
    *(v17 + 8) = 1;
    (*(v30 + 104))(v17, *MEMORY[0x1E69DF5C0]);
    OUTLINED_FUNCTION_43_0();
    sub_1DA394134();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD4E0, &qword_1DA395FC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD480, &qword_1DA395E20);
    OUTLINED_FUNCTION_63();
    v31 = OUTLINED_FUNCTION_99();
    *(v31 + 16) = xmmword_1DA395AB0;
    v32 = v31 + v14;
    v33 = *(v13 + 56);
    sub_1DA394124();
    OUTLINED_FUNCTION_10();
    v34 = OUTLINED_FUNCTION_102();
    v35(v34);
    *(v32 + v33) = 1;
    v36 = *MEMORY[0x1E69DF5E0];
    v37 = sub_1DA394164();
    OUTLINED_FUNCTION_10();
    (*(v38 + 104))(v32 + v33, v36, v37);
    OUTLINED_FUNCTION_46_0();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v37);
    OUTLINED_FUNCTION_28_0();
    sub_1DA3940E4();
    v12[11] = *(v15 + 56);
    OUTLINED_FUNCTION_45_0();

    return MEMORY[0x1EEE6DFA0](v42, v43, v44);
  }

  else
  {
    OUTLINED_FUNCTION_125();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_45_0();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
  }
}

uint64_t sub_1DA388CF8()
{
  OUTLINED_FUNCTION_50();
  *(v0 + 96) = sub_1DA375E30();
  *(v0 + 104) = 0;
  OUTLINED_FUNCTION_67();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1DA388D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_47();
  v12 = sub_1DA3942D4();
  v13 = sub_1DA394584();
  if (OUTLINED_FUNCTION_82(v13))
  {
    v14 = OUTLINED_FUNCTION_83();
    a10 = OUTLINED_FUNCTION_74();
    *v14 = 136315394;
    OUTLINED_FUNCTION_9_2();
    v17 = sub_1DA372AD8(0xD000000000000036, v15, v16);
    OUTLINED_FUNCTION_61(v17);
    OUTLINED_FUNCTION_60();
    _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_30_0();
  }

  v23 = OUTLINED_FUNCTION_28_0();
  v24(v23);
  OUTLINED_FUNCTION_125();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_45_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_1DA388EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47();
  v14 = *(v12 + 104);
  v15 = sub_1DA3942D4();
  sub_1DA394594();

  v16 = OUTLINED_FUNCTION_116();
  v17 = *(v12 + 104);
  if (v16)
  {
    OUTLINED_FUNCTION_83();
    v18 = OUTLINED_FUNCTION_87();
    a9 = OUTLINED_FUNCTION_74();
    *v13 = 136315394;
    OUTLINED_FUNCTION_12_2();
    v21 = sub_1DA372AD8(0xD000000000000036, v19, v20);
    OUTLINED_FUNCTION_85(v21);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v22;
    *v18 = v22;
    OUTLINED_FUNCTION_57();
    _os_log_impl(v23, v24, v25, v26, v27, 0x16u);
    sub_1DA36CB60(v18, &qword_1ECBAD2F0, &qword_1DA395840);
    OUTLINED_FUNCTION_56();
    __swift_destroy_boxed_opaque_existential_1(a9);
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
  }

  v28 = OUTLINED_FUNCTION_28_0();
  v29(v28);
  OUTLINED_FUNCTION_125();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_58();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t DefaultSiriAutoCompleteService.insertPhrasesForAssistantSuggestions(phrases:)()
{
  OUTLINED_FUNCTION_9_1();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD400, &unk_1DA395B90);
  OUTLINED_FUNCTION_23(v3);
  v1[5] = OUTLINED_FUNCTION_76();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD408, &qword_1DA395FE0);
  OUTLINED_FUNCTION_23(v4);
  v1[6] = OUTLINED_FUNCTION_76();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD410, &unk_1DA395BA0);
  v1[7] = v5;
  OUTLINED_FUNCTION_23(v5);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA389144()
{
  OUTLINED_FUNCTION_9_1();
  v0[10] = sub_1DA377B88(v0[2]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1DA3891E8;

  return DefaultSiriAutoCompleteService.flushAssistantSuggestions(deactivateWriteClientAfter:)();
}

uint64_t sub_1DA3891E8()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA3892CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47();
  if (!v13[10])
  {
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v27 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v27, qword_1EDCC51C0);
    v25 = sub_1DA3942D4();
    v28 = sub_1DA394584();
    if (!OUTLINED_FUNCTION_27_1(v28))
    {
      goto LABEL_11;
    }

LABEL_10:
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_141();
    *v12 = 136315138;
    OUTLINED_FUNCTION_12_2();
    *(v12 + 4) = sub_1DA372AD8(0xD00000000000002ELL, v29, v30);
    OUTLINED_FUNCTION_11_3();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_16_2();
LABEL_11:

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_58();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
  }

  v14 = v13[6];
  v12 = v13[7];
  v15 = v13[5];
  v16 = v13[3];
  v17 = *(v16 + 56);
  v18 = OBJC_IVAR____TtC19SiriAutoCompleteAPI26VectorDBWriteClientManager_databaseDirectory;
  v19 = sub_1DA393EC4();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v15, v17 + v18, v19);
  OUTLINED_FUNCTION_46_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v19);
  static DefaultSiriAutoCompleteService.initializeVectorDBClient(readOnly:featureFlagsProvider:databaseDirectoryOverride:)(1, v16 + 16, v15);
  sub_1DA36CB60(v15, &qword_1ECBAD400, &unk_1DA395B90);
  if (__swift_getEnumTagSinglePayload(v14, 1, v12) == 1)
  {
    sub_1DA36CB60(v13[6], &qword_1ECBAD408, &qword_1DA395FE0);
    if (qword_1EDCC52A0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v24 = sub_1DA3942F4();
    OUTLINED_FUNCTION_38_0(v24, qword_1EDCC51C0);
    v25 = sub_1DA3942D4();
    v26 = sub_1DA394584();
    if (!OUTLINED_FUNCTION_27_1(v26))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v45 = v13[8];
  v46 = v13[7];
  OUTLINED_FUNCTION_137();
  sub_1DA38EDE4(v47, v48, v49, v50);
  OUTLINED_FUNCTION_137();
  sub_1DA390014(v51, v52, v53, v54);
  v13[12] = *v45;
  (*(v20 + 8))(&v45[*(v46 + 48)], v19);
  v55 = swift_task_alloc();
  v13[13] = v55;
  *v55 = v13;
  v55[1] = sub_1DA389634;
  OUTLINED_FUNCTION_58();

  return sub_1DA3897B8(v56, v57);
}

uint64_t sub_1DA389634()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA389718()
{
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 72);

  sub_1DA36CB60(v1, &qword_1ECBAD410, &unk_1DA395BA0);

  OUTLINED_FUNCTION_24_1();

  return v2();
}

uint64_t sub_1DA3897B8(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  return OUTLINED_FUNCTION_2_5(sub_1DA3897D8, 0);
}

uint64_t sub_1DA3897D8()
{
  v45 = v0;
  v1 = v0[14];
  sub_1DA394084();
  v2 = MEMORY[0x1E69E7CC0];
  v0[12] = MEMORY[0x1E69E7CC0];
  v39 = v0 + 12;
  result = sub_1DA377B88(v1);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = v0[14];
    v7 = v6 & 0xC000000000000001;
    v40 = v6 + 32;
    v42 = "morphunTokenizer";
    *(&v8 + 1) = 2;
    *&v8 = 136315394;
    v41 = v8;
    v37 = MEMORY[0x1E69E7CC0];
    v38 = v0;
    v43 = v6 & 0xC000000000000001;
    do
    {
      if (v7)
      {
        v9 = MEMORY[0x1DA74BE10](v5, v0[14]);
      }

      else
      {
        v9 = *(v40 + 8 * v5);
      }

      v10 = v0[15];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAD470, &qword_1DA395E10);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1DA395AB0;
      OUTLINED_FUNCTION_9();
      swift_beginAccess();
      v12 = *(v9 + 24);
      *(v11 + 32) = *(v9 + 16);
      *(v11 + 40) = v12;

      OUTLINED_FUNCTION_9();
      sub_1DA394034();
      OUTLINED_FUNCTION_39_0();

      v13 = *(v10 + 16);

      if (v13)
      {
        if (qword_1EDCC52A0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v14 = sub_1DA3942F4();
        OUTLINED_FUNCTION_38_0(v14, qword_1EDCC51C0);

        v15 = sub_1DA3942D4();
        v16 = sub_1DA394584();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = OUTLINED_FUNCTION_83();
          v18 = OUTLINED_FUNCTION_89();
          v44[0] = v18;
          *v17 = v41;
          *(v17 + 4) = OUTLINED_FUNCTION_120(v18, v19, v20, v21, v22, v23, v24, v25, v37, v38, v39, v40, v41, *(&v41 + 1), v42);
          *(v17 + 12) = 2080;
          v26 = v5;
          v27 = *(v9 + 16);
          v28 = *(v9 + 24);

          v29 = sub_1DA372AD8(v27, v28, v44);
          v7 = v43;

          *(v17 + 14) = v29;
          v5 = v26;
          OUTLINED_FUNCTION_117(&dword_1DA365000, v15, v16, "Function: %s > '%s' already in DB, skip inserting this AssistantSuggestion");
          swift_arrayDestroy();
          OUTLINED_FUNCTION_46();
          OUTLINED_FUNCTION_16_2();
        }
      }

      else
      {

        MEMORY[0x1DA74BB40](v30);
        v31 = *((*v39 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((*v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v31 >> 1)
        {
          OUTLINED_FUNCTION_23_1(v31);
          sub_1DA394504();
        }

        sub_1DA394524();

        v37 = *v39;
      }

      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v37 = v2;
  }

  type metadata accessor for VectorSearchAssets.Builder();
  inited = swift_initStackObject();
  v33 = MEMORY[0x1E69E7CD0];
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  *(inited + 24) = v33;
  sub_1DA377700(v37);

  OUTLINED_FUNCTION_9();
  swift_beginAccess();

  VectorSearchAssets.init(phrases:)(v34, v44);

  v35 = v44[0];
  v0[17] = v44[0];
  v0[13] = v35;
  v36 = swift_task_alloc();
  v0[18] = v36;
  *v36 = v0;
  v36[1] = sub_1DA389D10;

  return DefaultSiriAutoCompleteService.addPhrasesToVectorDB(vectorSearchAssets:deactivateWriteClientAfter:)(v0 + 13, 1);
}

uint64_t sub_1DA389D10()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA389E10()
{
  OUTLINED_FUNCTION_9_1();
  sub_1DA394094();
  OUTLINED_FUNCTION_24_1();

  return v0();
}

void *DefaultSiriAutoCompleteService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);

  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  return v0;
}

uint64_t DefaultSiriAutoCompleteService.__deallocating_deinit()
{
  DefaultSiriAutoCompleteService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 232, 7);
}

uint64_t sub_1DA389EEC(uint64_t *a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA389F94;

  return DefaultSiriAutoCompleteService.addPhrasesToVectorDB(vectorSearchAssets:deactivateWriteClientAfter:)(a1, a2);
}

uint64_t sub_1DA389F94()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v1;
  OUTLINED_FUNCTION_26_1();
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_29_0();

  return v5(v2);
}

uint64_t sub_1DA38A07C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA38A148;

  return DefaultSiriAutoCompleteService.autoCompleteResults(for:using:)();
}

uint64_t sub_1DA38A148()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_24_1();

  return v3();
}

uint64_t sub_1DA38A22C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3903BC;

  return DefaultSiriAutoCompleteService.insertPhrasesForAssistantSuggestions(phrases:)();
}

uint64_t sub_1DA38A2C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3903BC;

  return DefaultSiriAutoCompleteService.deletePhrasesForSource(source:deactivateWriteClientAfter:)();
}

uint64_t sub_1DA38A36C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA389F94;

  return DefaultSiriAutoCompleteService.deletePhrasesForApp(bundleIds:)();
}

uint64_t sub_1DA38A404()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3903BC;

  return DefaultSiriAutoCompleteService.increaseTapCountForPhrase(phrase:)();
}

uint64_t sub_1DA38A4AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3903C0;

  return DefaultSiriAutoCompleteService.fetchPhrasesMatching(filters:)();
}

uint64_t sub_1DA38A544()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA38A5D4;

  return DefaultSiriAutoCompleteService.dropDB()();
}

uint64_t sub_1DA38A5D4()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_24_1();

  return v3();
}

uint64_t sub_1DA38A6B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA38A5D4;

  return DefaultSiriAutoCompleteService.coolDownWriteDBClient()();
}

SiriAutoCompleteAPI::AutoCompleteResult::ResultState_optional __swiftcall AutoCompleteResult.ResultState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DA394844();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AutoCompleteResult.ResultState.rawValue.getter()
{
  result = 0x65646E496D6F7266;
  switch(*v0)
  {
    case 1:
      result = 0x686361436D6F7266;
      break;
    case 2:
      result = 0x726F727265;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DA38A8EC@<X0>(unint64_t *a1@<X8>)
{
  result = AutoCompleteResult.ResultState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA38A9C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DA394934() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73657361726870 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DA394934() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DA394934();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}