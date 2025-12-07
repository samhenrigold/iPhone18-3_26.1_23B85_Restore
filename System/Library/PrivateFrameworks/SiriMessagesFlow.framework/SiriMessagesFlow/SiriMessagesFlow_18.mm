void sub_267D315C0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_267D30B78(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_267D32240(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_267EF9FC8();
      sub_267EF9128();
      v16 = sub_267EFA018();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_267EF9EA8() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_267D31ABC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_267EF9F18();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

unint64_t sub_267D31728(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_267D30DD4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_267D32474(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = sub_267EF9FB8();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_267D31BAC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_267EF9F18();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

id sub_267D3182C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B180, &qword_267F04EA0);
  v2 = *v0;
  v3 = sub_267EF9AF8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_267D3197C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B178, &qword_267F04E98);
  v2 = *v0;
  v3 = sub_267EF9AF8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_267D31ABC()
{
  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B148, &qword_267F0D050);
  v6 = *v0;
  v7 = sub_267EF9AF8();
  if (*(v6 + 16))
  {
    v8 = OUTLINED_FUNCTION_5_34();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v1, 8 * v9);
    }

    OUTLINED_FUNCTION_0_30();
    while (v4)
    {
      OUTLINED_FUNCTION_4_35();
LABEL_15:
      v17 = v13 | (v2 << 6);
      v18 = (*(v6 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = (*(v7 + 48) + 16 * v17);
      *v20 = *v18;
      v20[1] = v19;
    }

    v14 = v2;
    while (1)
    {
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v1 + v2))
      {
        OUTLINED_FUNCTION_12_5();
        v4 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v5 = v7;
  }
}

void *sub_267D31BAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B190, &unk_267F04EB0);
  v2 = *v0;
  v3 = sub_267EF9AF8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_267D31CEC(uint64_t *a1, uint64_t *a2)
{
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_267EF9AF8();
  if (*(v8 + 16))
  {
    v10 = OUTLINED_FUNCTION_5_34();
    if (v13)
    {
      v14 = v10 >= v12;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      memmove(v10, v3, 8 * v11);
    }

    OUTLINED_FUNCTION_0_30();
    for (; v6; v21 = v20)
    {
      OUTLINED_FUNCTION_4_35();
LABEL_15:
      v19 = v15 | (v4 << 6);
      v20 = *(*(v8 + 48) + 8 * v19);
      *(*(v9 + 48) + 8 * v19) = v20;
    }

    v16 = v4;
    while (1)
    {
      v4 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v4 >= v5)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v3 + v4))
      {
        OUTLINED_FUNCTION_12_5();
        v6 = v18 & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v7 = v9;
  }
}

uint64_t sub_267D31DC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B180, &qword_267F04EA0);
  result = sub_267EF9B08();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
        sub_267EF9FC8();
        sub_267EF9FE8();
        if (v15)
        {
          v16 = v15;
          sub_267EF9828();
        }

        result = sub_267EFA018();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_23;
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

          v2 = v25;
          goto LABEL_27;
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

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_267D32008(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B178, &qword_267F04E98);
  result = sub_267EF9B08();
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
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_267EF9FC8();
        sub_267D6C0D4(v15);
        sub_267EF9128();

        result = sub_267EFA018();
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
        *(*(v5 + 48) + v19) = v15;
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

uint64_t sub_267D32240(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B148, &qword_267F0D050);
  result = sub_267EF9B08();
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
        sub_267EF9FC8();

        sub_267EF9128();
        result = sub_267EFA018();
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

uint64_t sub_267D32474(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B190, &unk_267F04EB0);
  result = sub_267EF9B08();
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
        result = sub_267EF9FB8();
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

uint64_t sub_267D32660(void *a1)
{
  v1 = [a1 pronouns];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_267BA9F38(0, &qword_28022B158, 0x277CCAB38);
  v3 = sub_267EF92F8();

  return v3;
}

id sub_267D3276C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_267BC20F4(*(v2 + 16), 0, 0, *(v2 + 24), *a1);
  *a2 = result;
  return result;
}

unint64_t sub_267D327B0()
{
  result = qword_28022B170;
  if (!qword_28022B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B170);
  }

  return result;
}

uint64_t sub_267D32820(uint64_t a1)
{
  v2 = sub_267BAF0DC(a1);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = a1 & 0xC000000000000001;
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v7 = v4;
      if (v3 == v4)
      {
LABEL_20:
        v16 = 0;
        while (v3 != v16)
        {
          if (v5)
          {
            v17 = MEMORY[0x26D609870](v16, a1);
          }

          else
          {
            if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_103;
            }

            v17 = *(a1 + 8 * v16 + 32);
          }

          v18 = v17;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_102;
          }

          v19 = sub_267DEC22C(v17);
          v21 = v20;

          if (v21)
          {
            v22 = v19 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = 0;
          }

          if (v21)
          {
            v23 = v21;
          }

          else
          {
            v23 = 0xE000000000000000;
          }

          v24 = HIBYTE(v23) & 0xF;
          if ((v23 & 0x2000000000000000) == 0)
          {
            v24 = v22;
          }

          ++v16;
          if (!v24)
          {
            if (v3 == v7)
            {
              goto LABEL_58;
            }

            OUTLINED_FUNCTION_1_44();
            if (v5)
            {
              v49 = MEMORY[0x26D609870](0, a1);
            }

            else
            {
              v49 = *(a1 + 32);
            }

            v50 = v49;
            v51 = [v49 displayName];

            v52 = sub_267EF9028();
            v54 = v53;

            v55 = HIBYTE(v54) & 0xF;
            v82 = v52;
            if ((v54 & 0x2000000000000000) == 0)
            {
              v55 = v52 & 0xFFFFFFFFFFFFLL;
            }

            if (!v55)
            {
LABEL_99:

              return 0;
            }

            for (i = 0; v3 != i; ++i)
            {
              if (v5)
              {
                v57 = MEMORY[0x26D609870](i, a1);
              }

              else
              {
                if (i >= *(v6 + 16))
                {
                  goto LABEL_109;
                }

                v57 = *(a1 + 8 * i + 32);
              }

              v58 = v57;
              if (__OFADD__(i, 1))
              {
                goto LABEL_107;
              }

              v59 = v6;
              v60 = [v57 displayName];
              v61 = sub_267EF9028();
              v63 = v62;

              if (v82 == v61 && v54 == v63)
              {
              }

              else
              {
                v65 = sub_267EF9EA8();

                if ((v65 & 1) == 0)
                {
                  goto LABEL_99;
                }
              }

              v6 = v59;
            }

            goto LABEL_98;
          }
        }

        if (v3 == v7)
        {
LABEL_58:
          OUTLINED_FUNCTION_1_44();
          if (v5)
          {
            goto LABEL_110;
          }

          v37 = *(a1 + 32);
          goto LABEL_60;
        }

        OUTLINED_FUNCTION_1_44();
        if (v5)
        {
          v25 = MEMORY[0x26D609870](0, a1);
        }

        else
        {
          v25 = *(a1 + 32);
        }

        v26 = sub_267BC3164(v25, &selRef_customIdentifier);
        if (!v27)
        {
          goto LABEL_115;
        }

        v28 = v26;
        v29 = v27;
        for (j = 0; v3 != j; ++j)
        {
          if (v5)
          {
            v31 = MEMORY[0x26D609870](j, a1);
          }

          else
          {
            if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_108;
            }

            v31 = *(a1 + 8 * j + 32);
          }

          v32 = v31;
          if (__OFADD__(j, 1))
          {
            goto LABEL_105;
          }

          v33 = sub_267DEC22C(v31);
          if (!v34)
          {
LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

          if (v28 == v33 && v29 == v34)
          {
          }

          else
          {
            v36 = OUTLINED_FUNCTION_4_36();

            if ((v36 & 1) == 0)
            {
              goto LABEL_99;
            }
          }
        }

        goto LABEL_98;
      }

      if (v5)
      {
        v8 = MEMORY[0x26D609870](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_101;
        }

        v8 = *(a1 + 8 * v4 + 32);
      }

      v9 = v8;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v10 = sub_267BBD380(v8);
      v12 = v11;

      if (v12)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = 0;
      }

      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0xE000000000000000;
      }

      if ((v14 & 0x2000000000000000) != 0)
      {
        v15 = HIBYTE(v14) & 0xF;
      }

      else
      {
        v15 = v13;
      }

      v4 = v7 + 1;
      if (!v15)
      {
        goto LABEL_20;
      }
    }

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
    v37 = MEMORY[0x26D609870](0, a1);
LABEL_60:
    v38 = sub_267BC3164(v37, &selRef_contactIdentifier);
    if (v39)
    {
      v40 = v38;
      v41 = v39;
      for (k = 0; v3 != k; ++k)
      {
        if (v5)
        {
          v43 = MEMORY[0x26D609870](k, a1);
        }

        else
        {
          if (k >= *(v6 + 16))
          {
            goto LABEL_106;
          }

          v43 = *(a1 + 8 * k + 32);
        }

        v44 = v43;
        if (__OFADD__(k, 1))
        {
          goto LABEL_104;
        }

        v45 = sub_267BBD380(v43);
        if (!v46)
        {
          __break(1u);
          goto LABEL_113;
        }

        if (v40 == v45 && v41 == v46)
        {
        }

        else
        {
          v48 = OUTLINED_FUNCTION_4_36();

          if ((v48 & 1) == 0)
          {
            goto LABEL_99;
          }
        }
      }

LABEL_98:

      return 1;
    }

LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v67 = sub_267EF8A08();
  __swift_project_value_buffer(v67, qword_280240FB0);
  v68 = sub_267EF89F8();
  v69 = sub_267EF95E8();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *(v70 + 4) = OUTLINED_FUNCTION_3_38(4.8149e-34, v83, v71, v72, v73, v74, v75);
    OUTLINED_FUNCTION_13_20(&dword_267B93000, v76, v77, "Fatal error: %s");
    __swift_destroy_boxed_opaque_existential_0(v83);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  result = OUTLINED_FUNCTION_2_37("Fatal error", v78, v79, v80, v81, "SiriMessagesFlow/RecipientDisambiguationHelper.swift");
  __break(1u);
  return result;
}

uint64_t sub_267D32DB4(uint64_t a1)
{
  v2 = sub_267BAF0DC(a1);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    while (1)
    {
      v5 = v4;
      if (v3 == v4)
      {
        return v3 == v5;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D609870](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((sub_267DEAE28() & 1) == 0 && (sub_267DEAF90() & 1) == 0 || (v8 = [v7 personHandle]) == 0)
      {

        return v3 == v5;
      }

      v9 = v8;
      v10 = [v8 type];

      v4 = v5 + 1;
      if (v10 != 2)
      {
        return v3 == v5;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v12 = sub_267EF8A08();
  __swift_project_value_buffer(v12, qword_280240FB0);
  v13 = sub_267EF89F8();
  v14 = sub_267EF95E8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *(v15 + 4) = OUTLINED_FUNCTION_3_38(4.8149e-34, v27, v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_13_20(&dword_267B93000, v21, v22, "Fatal error: %s");
    __swift_destroy_boxed_opaque_existential_0(v27);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  result = OUTLINED_FUNCTION_2_37("Fatal error", v23, v24, v25, v26, "SiriMessagesFlow/RecipientDisambiguationHelper.swift");
  __break(1u);
  return result;
}

uint64_t sub_267D32FB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_267EF4BA8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = a1;
  v10[4] = a2;
  v11 = qword_280228818;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_267EF8A08();
  __swift_project_value_buffer(v12, qword_280240FB0);

  v13 = sub_267EF89F8();
  v14 = sub_267EF95D8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v6;
    v16 = v15;
    v28 = swift_slowAlloc();
    v29 = v28;
    *v16 = 136315138;
    v18 = v3[10];
    v17 = v3[11];
    __swift_project_boxed_opaque_existential_0(v3 + 7, v18);
    (*(v17 + 8))(v18, v17);
    sub_267C31120();
    v19 = v27;
    v20 = sub_267EF9E58();
    v22 = v21;
    (*(v7 + 8))(v9, v19);
    v23 = sub_267BA33E8(v20, v22, &v29);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_267B93000, v13, v14, "#UnsupportedRequestFlow unsupported request: %s", v16, 0xCu);
    v24 = v28;
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x26D60A7B0](v24, -1, -1);
    MEMORY[0x26D60A7B0](v16, -1, -1);
  }

  sub_267EF4318();
}

uint64_t sub_267D33254(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4)
{
  v54 = a3;
  v55 = a4;
  v6 = sub_267EF4028();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - v10;
  v12 = sub_267EF4CC8();
  v13 = *(v12 - 8);
  v52 = v12;
  v53 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_267EF4228();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v50 - v21);
  sub_267C6D464(a1, &v50 - v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v24 = sub_267EF8A08();
    __swift_project_value_buffer(v24, qword_280240FB0);
    v25 = v23;
    v26 = sub_267EF89F8();
    v27 = sub_267EF95E8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v61[0] = v29;
      *v28 = 136315138;
      v58[0] = v23;
      v30 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v31 = sub_267EF9098();
      v33 = sub_267BA33E8(v31, v32, v61);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_267B93000, v26, v27, "#UnsupportedRequestFlow templating result creation failed: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x26D60A7B0](v29, -1, -1);
      MEMORY[0x26D60A7B0](v28, -1, -1);
    }

    sub_267EF4018();
    v54(v8);

    return (*(v50 + 8))(v8, v51);
  }

  else
  {
    (*(v17 + 32))(v19, v22, v16);
    v35 = a2[5];
    v36 = a2[6];
    __swift_project_boxed_opaque_existential_0(a2 + 2, v35);
    (*(v36 + 8))(v61, v35, v36);
    v37 = a2[5];
    v38 = a2[6];
    __swift_project_boxed_opaque_existential_0(a2 + 2, v37);
    (*(v38 + 8))(v58, v37, v38);
    __swift_project_boxed_opaque_existential_0(v58, v59);
    sub_267EF3BC8();
    v39 = sub_267EF4158();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v39);
    v57 = 0;
    memset(v56, 0, sizeof(v56));
    sub_267EF3F48();
    sub_267B9FF34(v56, &unk_28022CF80, &unk_267EFED50);
    sub_267B9FF34(v11, &unk_28022AE40, &unk_267EFCB60);
    __swift_destroy_boxed_opaque_existential_0(v61);
    __swift_destroy_boxed_opaque_existential_0(v58);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v40 = sub_267EF8A08();
    __swift_project_value_buffer(v40, qword_280240FB0);
    v41 = sub_267EF89F8();
    v42 = sub_267EF95C8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_267B93000, v41, v42, "#UnsupportedRequestFlow publishing output", v43, 2u);
      MEMORY[0x26D60A7B0](v43, -1, -1);
    }

    v44 = a2[5];
    v45 = a2[6];
    __swift_project_boxed_opaque_existential_0(a2 + 2, v44);
    (*(v45 + 32))(v61, v44, v45);
    __swift_project_boxed_opaque_existential_0(v61, v61[3]);
    v46 = v52;
    v59 = v52;
    v60 = MEMORY[0x277D5C1D8];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v58);
    v48 = v53;
    (*(v53 + 16))(boxed_opaque_existential_0, v15, v46);
    v49 = swift_allocObject();
    *(v49 + 16) = v54;
    *(v49 + 24) = v55;

    sub_267EF4168();

    (*(v48 + 8))(v15, v46);
    (*(v17 + 8))(v19, v16);
    __swift_destroy_boxed_opaque_existential_0(v58);
    return __swift_destroy_boxed_opaque_existential_0(v61);
  }
}

uint64_t sub_267D33960(void *a1, char a2, void (*a3)(char *), void *a4)
{
  v8 = sub_267EF4028();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = a1;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);
    v14 = a1;
    v15 = sub_267EF89F8();
    v16 = sub_267EF95E8();
    sub_267C16E28(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v25[1] = a4;
      v18 = v17;
      v25[0] = swift_slowAlloc();
      v25[2] = a1;
      v26 = v25[0];
      *v18 = 136315138;
      v19 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v20 = sub_267EF9098();
      v22 = sub_267BA33E8(v20, v21, &v26);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_267B93000, v15, v16, "#UnsupportedRequestFlow: publishing output failed: %s", v18, 0xCu);
      v23 = v25[0];
      __swift_destroy_boxed_opaque_existential_0(v25[0]);
      MEMORY[0x26D60A7B0](v23, -1, -1);
      MEMORY[0x26D60A7B0](v18, -1, -1);
      sub_267C16E28(a1, 1);
    }

    else
    {

      sub_267C16E28(a1, 1);
    }
  }

  sub_267EF4018();
  a3(v11);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_267D33BD4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return __swift_destroy_boxed_opaque_existential_0((v0 + 104));
}

uint64_t sub_267D33C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267BCE5E4;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_267D33CFC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnsupportedRequestFlow();

  return sub_267EF3748();
}

uint64_t sub_267D33D4C(char a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, unsigned __int8 a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  HIDWORD(v120) = a16;
  LODWORD(v120) = a15;
  HIDWORD(v114) = a14;
  HIDWORD(v103) = a12;
  LODWORD(v103) = a11;
  type metadata accessor for MessagesReactionComponentDialogContext.Builder(0);
  v32 = swift_allocObject();
  v33 = sub_267D34038();
  v32[16] = a1;
  v32[17] = a2;
  v32[18] = a3;
  v32[19] = a4;
  v32[20] = a5;
  v32[21] = a6;
  v32[22] = a7;
  v32[23] = a8;
  v34 = OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_type;
  OUTLINED_FUNCTION_8_28(v33, v35, v36, v37, v38, v39, v40, v41, v92, a10, v103, a13, v114, v120);
  sub_267BE855C(a9, &v32[v34]);
  v42 = swift_endAccess();
  v43 = OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_sentiment;
  OUTLINED_FUNCTION_8_28(v42, v44, v45, v46, v47, v48, v49, v50, v93, v98, v104, v109, v115, v121);
  v51 = v99;
  sub_267BE855C(v99, &v32[v43]);
  swift_endAccess();
  v32[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_isReactionOnMyMessage] = v105;
  v32[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_isReactionOnSendersOwnMessage] = BYTE4(v105);
  sub_267D3413C(v110);

  v32[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_needsAndConnector] = BYTE4(v116);
  v32[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_needsAlsoConnector] = v122;
  v32[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_needsRandomConnector] = BYTE4(v122);
  v53 = OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_reactionCategory;
  OUTLINED_FUNCTION_8_28(v52, v54, v55, v56, v57, v58, v59, v60, v94, v99, v105, v110, v116, v122);
  sub_267BE855C(a17, &v32[v53]);
  v61 = swift_endAccess();
  v62 = OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_expressionDescription;
  OUTLINED_FUNCTION_8_28(v61, v63, v64, v65, v66, v67, v68, v69, v95, v100, v106, v111, v117, v123);
  sub_267BE855C(a18, &v32[v62]);
  v70 = swift_endAccess();
  v71 = OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_avatarDescription;
  OUTLINED_FUNCTION_8_28(v70, v72, v73, v74, v75, v76, v77, v78, v96, v101, v107, v112, v118, v124);
  sub_267BE855C(a19, &v32[v71]);
  v79 = swift_endAccess();
  v80 = OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_emojiDescription;
  OUTLINED_FUNCTION_8_28(v79, v81, v82, v83, v84, v85, v86, v87, v97, v102, v108, v113, v119, v125);
  sub_267BE855C(a20, &v32[v80]);
  swift_endAccess();
  v88 = &v32[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_numberOfSenders];
  *v88 = a21;
  v88[8] = a22 & 1;
  v89 = &v32[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_numberOfSendersMinusTwo];
  *v89 = a23;
  v89[8] = a24 & 1;
  type metadata accessor for MessagesReactionComponentDialogContext(0);
  v90 = swift_allocObject();
  sub_267D34250(v32);

  sub_267BBD6F0(a20);
  sub_267BBD6F0(a19);
  sub_267BBD6F0(a18);
  sub_267BBD6F0(a17);
  sub_267BBD6F0(v51);
  sub_267BBD6F0(a9);
  return v90;
}

uint64_t sub_267D34038()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_type;
  v2 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_sentiment);
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_isReactionOnMyMessage) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_isReactionOnSendersOwnMessage) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_referencedMessage) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_needsAndConnector) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_needsAlsoConnector) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_needsRandomConnector) = 0;
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_reactionCategory);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_expressionDescription);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_avatarDescription);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_emojiDescription);
  v3 = v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_numberOfSenders;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_numberOfSendersMinusTwo;
  *v4 = 0;
  *(v4 + 8) = 1;
  return v0;
}

uint64_t sub_267D3413C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_referencedMessage) = a1;
}

uint64_t sub_267D34188()
{
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_type);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_sentiment);

  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_reactionCategory);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_expressionDescription);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_avatarDescription);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_emojiDescription);
  return v0;
}

uint64_t sub_267D34250(_BYTE *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1[16];
  *(v1 + 25) = a1[17];
  *(v1 + 26) = a1[18];
  *(v1 + 27) = a1[19];
  *(v1 + 28) = a1[20];
  *(v1 + 29) = a1[21];
  *(v1 + 30) = a1[22];
  *(v1 + 31) = a1[23];
  v3 = OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_type;
  OUTLINED_FUNCTION_83(&a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_type], v16);
  sub_267C12290(&a1[v3], v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_type);
  v4 = OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_sentiment;
  OUTLINED_FUNCTION_83(&a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_sentiment], v15);
  sub_267C12290(&a1[v4], v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_sentiment);
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_isReactionOnMyMessage) = a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_isReactionOnMyMessage];
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_isReactionOnSendersOwnMessage) = a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_isReactionOnSendersOwnMessage];
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_referencedMessage) = *&a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_referencedMessage];
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsAndConnector) = a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_needsAndConnector];
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsAlsoConnector) = a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_needsAlsoConnector];
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsRandomConnector) = a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_needsRandomConnector];
  OUTLINED_FUNCTION_83(&a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_reactionCategory], v14);
  OUTLINED_FUNCTION_30_17(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_reactionCategory);
  OUTLINED_FUNCTION_83(&a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_expressionDescription], v13);
  OUTLINED_FUNCTION_30_17(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_expressionDescription);
  OUTLINED_FUNCTION_83(&a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_avatarDescription], v12);
  OUTLINED_FUNCTION_30_17(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_avatarDescription);
  OUTLINED_FUNCTION_83(&a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_emojiDescription], &v11);
  OUTLINED_FUNCTION_30_17(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_emojiDescription);
  v5 = a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_numberOfSenders + 8];
  v6 = v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_numberOfSenders;
  *v6 = *&a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_numberOfSenders];
  *(v6 + 8) = v5;
  v7 = *&a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_numberOfSendersMinusTwo];
  v8 = a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_numberOfSendersMinusTwo + 8];

  v9 = v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_numberOfSendersMinusTwo;
  *v9 = v7;
  *(v9 + 8) = v8;
  return v1;
}

void sub_267D34490(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v81 - v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_25_2();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v81 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v81 - v19;
  v21 = a1 == 0x6361627061547369 && a2 == 0xE90000000000006BLL;
  if (v21 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v22 = v83[24];
LABEL_7:
    v23 = v84;
    *(v84 + 24) = MEMORY[0x277D839B0];
    *v23 = v22;
    return;
  }

  v25 = a1 == OUTLINED_FUNCTION_21_14() && a2 == v24;
  if (v25 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v22 = v83[25];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_18_19();
  v27 = v21 && v26 == a2;
  if (v27 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v22 = v83[26];
    goto LABEL_7;
  }

  v28 = a1 == 0x646E657070417369 && a2 == 0xEA00000000006465;
  if (v28 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v22 = v83[27];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  v30 = a1 == 0xD000000000000018 && v29 == a2;
  if (v30 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v22 = v83[28];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  v32 = a1 == 0xD000000000000017 && v31 == a2;
  if (v32 || (OUTLINED_FUNCTION_0_31(), v82 = v33, (sub_267EF9EA8() & 1) != 0))
  {
    v22 = v83[29];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  v35 = a1 == 0xD00000000000001ALL && v34 == a2;
  if (v35 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v22 = v83[30];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  v37 = a1 == 0xD000000000000019 && v36 == a2;
  if (v37 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v22 = v83[31];
    goto LABEL_7;
  }

  v38 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v38 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v39 = OUTLINED_FUNCTION_17_16(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_type);
    sub_267C12290(v39, v20);
    sub_267EF79B8();
    OUTLINED_FUNCTION_8_7(v20);
    if (!v21)
    {
      goto LABEL_138;
    }

    v40 = v20;
    goto LABEL_58;
  }

  v42 = a1 == 0x6E656D69746E6573 && a2 == 0xE900000000000074;
  if (v42 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v43 = OUTLINED_FUNCTION_17_16(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_sentiment);
    sub_267C12290(v43, v18);
    sub_267EF79B8();
    OUTLINED_FUNCTION_8_7(v18);
    if (!v21)
    {
      goto LABEL_138;
    }

    v40 = v18;
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_2_4();
  v45 = a1 == 0xD000000000000015 && v44 == a2;
  if (v45 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v46 = OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_isReactionOnMyMessage;
LABEL_74:
    v22 = v83[v46];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  v48 = a1 == 0xD00000000000001DLL && v47 == a2;
  if (v48 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v46 = OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_isReactionOnSendersOwnMessage;
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_18_19();
  v50 = v21 && v49 == a2;
  if (v50 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v51 = *&v83[OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_referencedMessage];
    if (!v51)
    {
      goto LABEL_59;
    }

    v52 = type metadata accessor for MessagesReferencedReactionMessage(0);
    v53 = v84;
    *(v84 + 24) = v52;
    *v53 = v51;

    return;
  }

  OUTLINED_FUNCTION_18_19();
  v55 = v21 && v54 == a2;
  if (v55 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v46 = OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsAndConnector;
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_2_4();
  v57 = a1 == 0xD000000000000012 && v56 == a2;
  if (v57 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v46 = OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsAlsoConnector;
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_2_4();
  v59 = a1 == 0xD000000000000014 && v58 == a2;
  if (v59 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v46 = OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsRandomConnector;
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_2_4();
  v61 = a1 == 0xD000000000000010 && v60 == a2;
  if (v61 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v62 = OUTLINED_FUNCTION_17_16(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_reactionCategory);
    sub_267C12290(v62, v4);
    sub_267EF79B8();
    OUTLINED_FUNCTION_8_7(v4);
    if (!v21)
    {
      goto LABEL_138;
    }

    v40 = v4;
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_2_4();
  v64 = a1 == 0xD000000000000015 && v63 == a2;
  if (v64 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v65 = OUTLINED_FUNCTION_17_16(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_expressionDescription);
    sub_267C12290(v65, v3);
    sub_267EF79B8();
    OUTLINED_FUNCTION_8_7(v3);
    if (!v21)
    {
      goto LABEL_138;
    }

    v40 = v3;
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_18_19();
  v67 = v21 && v66 == a2;
  if (v67 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v68 = OUTLINED_FUNCTION_17_16(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_avatarDescription);
    sub_267C12290(v68, v13);
    sub_267EF79B8();
    OUTLINED_FUNCTION_8_7(v13);
    if (!v21)
    {
      goto LABEL_138;
    }

    v40 = v13;
LABEL_58:
    sub_267BBD6F0(v40);
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_2_4();
  v70 = a1 == 0xD000000000000010 && v69 == a2;
  if (v70 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v71 = OUTLINED_FUNCTION_17_16(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_emojiDescription);
    sub_267C12290(v71, v10);
    sub_267EF79B8();
    OUTLINED_FUNCTION_8_7(v10);
    if (!v21)
    {
LABEL_138:
      OUTLINED_FUNCTION_23_14();
      OUTLINED_FUNCTION_18_0();
      (*(v72 + 32))();
      return;
    }

    v40 = v10;
    goto LABEL_58;
  }

  v74 = a1 == OUTLINED_FUNCTION_9_18() && a2 == v73;
  if (v74 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v75 = OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_numberOfSenders;
  }

  else
  {
    OUTLINED_FUNCTION_2_4();
    if (a1 != v82 || v76 != a2)
    {
      OUTLINED_FUNCTION_0_31();
      if ((sub_267EF9EA8() & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v75 = OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_numberOfSendersMinusTwo;
  }

  v78 = &v83[v75];
  if (v78[8])
  {
LABEL_59:
    v41 = v84;
    *v84 = 0u;
    *(v41 + 16) = 0u;
    return;
  }

  v79 = *v78;
  v80 = v84;
  *(v84 + 24) = MEMORY[0x277D839F8];
  *v80 = v79;
}

unint64_t sub_267D34CC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_267EF9EE8();

  if (v2 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v2;
  }
}

void sub_267D34D18(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_21_14();
      break;
    case 2:
    case 12:
    case 13:
    case 18:
      OUTLINED_FUNCTION_2_4();
      break;
    case 4:
    case 5:
    case 6:
    case 7:
    case 10:
    case 11:
    case 14:
    case 15:
    case 16:
    case 17:
    case 19:
    case 21:
      OUTLINED_FUNCTION_11_0();
      break;
    case 20:
      OUTLINED_FUNCTION_9_18();
      break;
    default:
      return;
  }
}

unint64_t sub_267D34FC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267D34CC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_267D34FF0(void *a1@<X8>)
{
  sub_267D34D18(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_267D35024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267D34D14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267D35058(uint64_t a1)
{
  v2 = sub_267D361F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267D35094(uint64_t a1)
{
  v2 = sub_267D361F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267D350D0()
{
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_type);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_sentiment);

  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_reactionCategory);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_expressionDescription);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_avatarDescription);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_emojiDescription);
  return v0;
}

uint64_t sub_267D35178(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_267D351FC(uint64_t a1)
{
  sub_267C11A54(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267D352D4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B1D8, &qword_267F05130);
  OUTLINED_FUNCTION_58();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-v9];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267D361F8();
  sub_267EFA088();
  LOBYTE(v17) = 0;
  OUTLINED_FUNCTION_9_3();
  sub_267EF9E18();
  if (!v2)
  {
    OUTLINED_FUNCTION_2_38(1);
    OUTLINED_FUNCTION_2_38(2);
    OUTLINED_FUNCTION_2_38(3);
    OUTLINED_FUNCTION_2_38(4);
    OUTLINED_FUNCTION_2_38(5);
    OUTLINED_FUNCTION_2_38(6);
    OUTLINED_FUNCTION_2_38(7);
    LOBYTE(v17) = 8;
    sub_267EF79B8();
    OUTLINED_FUNCTION_14_24();
    sub_267D361B0(v11, v12, MEMORY[0x277D55C50]);
    OUTLINED_FUNCTION_9_3();
    sub_267EF9DF8();
    OUTLINED_FUNCTION_3_39();
    OUTLINED_FUNCTION_2_38(10);
    OUTLINED_FUNCTION_2_38(11);
    v17 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_referencedMessage);
    v16[7] = 12;
    type metadata accessor for MessagesReferencedReactionMessage(0);
    OUTLINED_FUNCTION_15_20();
    sub_267D361B0(v13, v14, &unk_267EFC538);
    OUTLINED_FUNCTION_9_3();
    sub_267EF9DF8();
    OUTLINED_FUNCTION_2_38(13);
    OUTLINED_FUNCTION_2_38(14);
    OUTLINED_FUNCTION_2_38(15);
    OUTLINED_FUNCTION_3_39();
    OUTLINED_FUNCTION_3_39();
    OUTLINED_FUNCTION_3_39();
    OUTLINED_FUNCTION_3_39();
    LOBYTE(v17) = 20;
    OUTLINED_FUNCTION_9_3();
    sub_267EF9DD8();
    LOBYTE(v17) = 21;
    OUTLINED_FUNCTION_9_3();
    sub_267EF9DD8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_267D356CC(void *a1)
{
  v2 = swift_allocObject();
  sub_267D35810(a1);
  return v2;
}

void sub_267D35744(uint64_t a1)
{
  sub_267C11A54(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267D35810(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v56 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v53 - v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B1C8, &qword_267F05128);
  OUTLINED_FUNCTION_58();
  v57 = v19;
  v58 = v18;
  MEMORY[0x28223BE20](v18);
  v61 = v1;
  *(v1 + 16) = 0;
  v20 = a1[3];
  v59 = a1;
  v21 = a1;
  v23 = &v53 - v22;
  __swift_project_boxed_opaque_existential_0(v21, v20);
  sub_267D361F8();
  v24 = v60;
  sub_267EFA078();
  if (v24)
  {
    v51 = v61;

    v26 = v59;
    type metadata accessor for MessagesReactionComponentDialogContext(0);
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    v60 = v13;
    LOBYTE(v63) = 0;
    v25 = sub_267EF9DA8();
    v28 = v61;
    *(v61 + 24) = v25 & 1;
    LOBYTE(v63) = 1;
    v55 = v23;
    v28[25] = sub_267EF9DA8() & 1;
    v28[26] = OUTLINED_FUNCTION_4_37(2) & 1;
    v28[27] = OUTLINED_FUNCTION_4_37(3) & 1;
    v28[28] = OUTLINED_FUNCTION_4_37(4) & 1;
    v28[29] = OUTLINED_FUNCTION_4_37(5) & 1;
    v28[30] = OUTLINED_FUNCTION_4_37(6) & 1;
    v29 = OUTLINED_FUNCTION_4_37(7);
    v53 = v10;
    v54 = v3;
    v28[31] = v29 & 1;
    sub_267EF79B8();
    LOBYTE(v63) = 8;
    OUTLINED_FUNCTION_14_24();
    sub_267D361B0(v30, v31, MEMORY[0x277D55C60]);
    OUTLINED_FUNCTION_16_19();
    sub_267EF9D88();
    sub_267C12220(v17, &v28[OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_type]);
    OUTLINED_FUNCTION_11_26(9);
    sub_267EF9D88();
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v2, v32);
    LOBYTE(v63) = 10;
    v33 = sub_267EF9DA8();
    OUTLINED_FUNCTION_12_21(v33, OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_isReactionOnMyMessage);
    OUTLINED_FUNCTION_1_45(11);
    v34 = sub_267EF9DA8();
    OUTLINED_FUNCTION_12_21(v34, OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_isReactionOnSendersOwnMessage);
    type metadata accessor for MessagesReferencedReactionMessage(0);
    v62 = 12;
    OUTLINED_FUNCTION_15_20();
    sub_267D361B0(v35, v36, &unk_267EFC560);
    OUTLINED_FUNCTION_16_19();
    sub_267EF9D88();
    *(v61 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_referencedMessage) = v63;
    OUTLINED_FUNCTION_1_45(13);
    v37 = sub_267EF9DA8();
    OUTLINED_FUNCTION_12_21(v37, OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsAndConnector);
    OUTLINED_FUNCTION_1_45(14);
    v38 = sub_267EF9DA8();
    OUTLINED_FUNCTION_12_21(v38, OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsAlsoConnector);
    OUTLINED_FUNCTION_1_45(15);
    v39 = sub_267EF9DA8();
    OUTLINED_FUNCTION_12_21(v39, OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsRandomConnector);
    OUTLINED_FUNCTION_11_26(16);
    OUTLINED_FUNCTION_7_28();
    sub_267EF9D88();
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v54, v40);
    OUTLINED_FUNCTION_11_26(17);
    OUTLINED_FUNCTION_7_28();
    OUTLINED_FUNCTION_16_19();
    sub_267EF9D88();
    sub_267C12220(v60, v61 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_expressionDescription);
    OUTLINED_FUNCTION_11_26(18);
    OUTLINED_FUNCTION_7_28();
    OUTLINED_FUNCTION_16_19();
    sub_267EF9D88();
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v53, v41);
    OUTLINED_FUNCTION_11_26(19);
    OUTLINED_FUNCTION_7_28();
    sub_267EF9D88();
    OUTLINED_FUNCTION_31_1();
    sub_267C12220(v56, v42);
    OUTLINED_FUNCTION_1_45(20);
    v43 = sub_267EF9D68();
    v44 = v61 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_numberOfSenders;
    *v44 = v43;
    *(v44 + 8) = v45 & 1;
    OUTLINED_FUNCTION_1_45(21);
    v46 = sub_267EF9D68();
    v48 = v47;
    v49 = OUTLINED_FUNCTION_5_35();
    v50(v49);
    v51 = v61;
    v52 = v61 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_numberOfSendersMinusTwo;
    *v52 = v46;
    *(v52 + 8) = v48 & 1;
    __swift_destroy_boxed_opaque_existential_0(v59);
  }

  return v51;
}

uint64_t sub_267D360D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267D356CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_267D361B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267D361F8()
{
  result = qword_28022B1D0;
  if (!qword_28022B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B1D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessagesReactionComponentDialogContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessagesReactionComponentDialogContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267D363B4()
{
  result = qword_28022B1E0;
  if (!qword_28022B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B1E0);
  }

  return result;
}

unint64_t sub_267D3640C()
{
  result = qword_28022B1E8;
  if (!qword_28022B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B1E8);
  }

  return result;
}

unint64_t sub_267D36464()
{
  result = qword_28022B1F0;
  if (!qword_28022B1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B1F0);
  }

  return result;
}

uint64_t sub_267D364F8(uint64_t a1, char a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_267F01440;
  *(v6 + 32) = 7368801;
  *(v6 + 40) = 0xE300000000000000;
  if (a1)
  {
    sub_267EF7958();
    v7 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
  }

  *(v6 + 48) = v7;
  OUTLINED_FUNCTION_12_1();
  *(v6 + 72) = v8;
  *(v6 + 80) = 0xD000000000000017;
  *(v6 + 88) = v9;
  *(v6 + 96) = 0;
  OUTLINED_FUNCTION_202();
  *(v6 + 120) = v10;
  *(v6 + 128) = v11;
  *(v6 + 136) = v12;
  *(v6 + 144) = a2 & 1;
  *(v6 + 168) = v10;
  *(v6 + 176) = 0x7265646E6573;
  *(v6 + 184) = 0xE600000000000000;
  if (a3)
  {
    v13 = sub_267EF77C8();
    v14 = a3;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_38();
    *(v6 + 200) = 0;
    *(v6 + 208) = 0;
  }

  *(v6 + 192) = v14;
  *(v6 + 216) = v13;

  return v6;
}

void sub_267D36624()
{
  OUTLINED_FUNCTION_48_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_10(v8, v62);
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_1(v10, v11, v12, v13, v14, v15, v16, v17, v63);
  v19 = MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_22(v19, v20, v21, v22, v23, v24, v25, v26, v64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_66_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v32 = swift_allocObject();
  v33 = OUTLINED_FUNCTION_64_7(v32, xmmword_267EFE4F0);
  OUTLINED_FUNCTION_114_3(v33, v34);
  OUTLINED_FUNCTION_170();
  sub_267C2FB6C(v35, v36, v37, &qword_267EFC0B0);
  v38 = sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v2);
  if (v39)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_169_0();
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_170();
    v40();
  }

  OUTLINED_FUNCTION_12_1();
  *(v32 + 80) = 0xD000000000000011;
  *(v32 + 88) = v41;
  Parameters = type metadata accessor for SearchForMessagesOfferFullMessageReadParameters(0);
  OUTLINED_FUNCTION_35_6(Parameters[5], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v39)
  {
    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v43();
  }

  OUTLINED_FUNCTION_12_1();
  *(v32 + 128) = 0xD000000000000011;
  *(v32 + 136) = v44;
  OUTLINED_FUNCTION_50_5(Parameters[6], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v5);
  if (v39)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    OUTLINED_FUNCTION_283();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v45();
  }

  OUTLINED_FUNCTION_12_1();
  *(v32 + 176) = 0xD000000000000017;
  *(v32 + 184) = v46;
  v47 = MEMORY[0x277D839B0];
  *(v32 + 192) = 0;
  *(v32 + 216) = v47;
  strcpy((v32 + 224), "isAudioReply");
  *(v32 + 237) = 0;
  *(v32 + 238) = -5120;
  *(v32 + 240) = *(v1 + Parameters[7]);
  OUTLINED_FUNCTION_196();
  *(v32 + 264) = v48;
  *(v32 + 272) = v49;
  OUTLINED_FUNCTION_249();
  *(v32 + 280) = v50;
  *(v32 + 288) = *(v1 + Parameters[8]);
  OUTLINED_FUNCTION_202();
  *(v32 + 312) = v51;
  *(v32 + 320) = 0xD000000000000017;
  *(v32 + 328) = v52;
  OUTLINED_FUNCTION_49_3(Parameters[9], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v4);
  if (v39)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_214();
  }

  else
  {
    OUTLINED_FUNCTION_274();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v53();
  }

  OUTLINED_FUNCTION_12_1();
  *(v32 + 368) = 0xD000000000000017;
  *(v32 + 376) = v54;
  OUTLINED_FUNCTION_48_4(Parameters[10], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v3);
  if (v39)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_291();
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v55();
  }

  OUTLINED_FUNCTION_12_1();
  *(v32 + 416) = 0xD000000000000017;
  *(v32 + 424) = v56;
  sub_267C2FB6C(v1 + Parameters[11], v65, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v65);
  if (v39)
  {
    sub_267B9F98C(v65, &unk_28022AE30, &qword_267EFC0B0);
    *(v32 + 432) = 0u;
    *(v32 + 448) = 0u;
  }

  else
  {
    *(v32 + 456) = v38;
    __swift_allocate_boxed_opaque_existential_0((v32 + 432));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v57();
  }

  OUTLINED_FUNCTION_12_1();
  *(v32 + 464) = 0xD000000000000013;
  *(v32 + 472) = v58;
  OUTLINED_FUNCTION_275(&unk_28022AE30, &qword_267EFC0B0, Parameters[12]);
  OUTLINED_FUNCTION_7_0(v66);
  if (v39)
  {
    sub_267B9F98C(v66, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_242();
  }

  else
  {
    *(v32 + 504) = v38;
    __swift_allocate_boxed_opaque_existential_0((v32 + 480));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_193();
    v59();
  }

  OUTLINED_FUNCTION_12_1();
  *(v32 + 512) = 0xD000000000000012;
  *(v32 + 520) = v60;
  OUTLINED_FUNCTION_35_6(Parameters[13], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v39)
  {
    sub_267B9F98C(v67, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_227();
  }

  else
  {
    OUTLINED_FUNCTION_331();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v61();
  }

  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

void sub_267D36BF0()
{
  OUTLINED_FUNCTION_48_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_10(v7, v83);
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_1(v9, v10, v11, v12, v13, v14, v15, v16, v84);
  v18 = MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_22(v18, v19, v20, v21, v22, v23, v24, v25, v85);
  v27 = MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7_23(v27, v28, v29, v30, v31, v32, v33, v34, v86);
  v36 = MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18_12(v36, v37, v38, v39, v40, v41, v42, v43, v87);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_89_5();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_141();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v49 = swift_allocObject();
  v50 = OUTLINED_FUNCTION_64_7(v49, xmmword_267F016E0);
  v52 = OUTLINED_FUNCTION_113_4(v50, v51);
  sub_267C2FB6C(v52, v53, v54, &qword_267EFC0B0);
  v55 = sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v3);
  if (v56)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_294_0();
  }

  else
  {
    *(v49 + 72) = v55;
    __swift_allocate_boxed_opaque_existential_0((v49 + 48));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v57();
  }

  OUTLINED_FUNCTION_12_1();
  *(v49 + 80) = 0xD000000000000011;
  *(v49 + 88) = v58;
  v59 = type metadata accessor for SearchForMessagesOfferMultilingualReplyParameters(0);
  OUTLINED_FUNCTION_275(&unk_28022AE30, &qword_267EFC0B0, v59[5]);
  OUTLINED_FUNCTION_7_0(v2);
  if (v56)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_129_0();
  }

  else
  {
    *(v49 + 120) = v55;
    __swift_allocate_boxed_opaque_existential_0((v49 + 96));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_193();
    v60();
  }

  OUTLINED_FUNCTION_12_1();
  *(v49 + 128) = 0xD000000000000011;
  *(v49 + 136) = v61;
  OUTLINED_FUNCTION_281(&unk_28022AE30, &qword_267EFC0B0, v59[6]);
  OUTLINED_FUNCTION_7_0(v1);
  if (v56)
  {
    sub_267B9F98C(v1, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_128_0();
  }

  else
  {
    *(v49 + 168) = v55;
    __swift_allocate_boxed_opaque_existential_0((v49 + 144));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_271();
    v62();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_316(v63);
  OUTLINED_FUNCTION_35_6(v64, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v56)
  {
    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    *(v49 + 192) = 0u;
    *(v49 + 208) = 0u;
  }

  else
  {
    *(v49 + 216) = v55;
    __swift_allocate_boxed_opaque_existential_0((v49 + 192));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v65();
  }

  OUTLINED_FUNCTION_12_1();
  *(v49 + 224) = v1;
  *(v49 + 232) = v66;
  OUTLINED_FUNCTION_149_0(MEMORY[0x277D839B0]);
  *(v49 + 360) = v68;
  *(v49 + 368) = v67 | 0x43726566664F0000;
  OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_202();
  *(v49 + 408) = v69;
  *(v49 + 416) = 0xD000000000000011;
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_202();
  *(v49 + 456) = v70;
  *(v49 + 464) = v1 - 7;
  *(v49 + 472) = v71;
  OUTLINED_FUNCTION_50_5(v59[12], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v4);
  if (v56)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    *(v49 + 480) = 0u;
    *(v49 + 496) = 0u;
  }

  else
  {
    *(v49 + 504) = v55;
    __swift_allocate_boxed_opaque_existential_0((v49 + 480));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v72();
  }

  OUTLINED_FUNCTION_12_1();
  *(v49 + 512) = v1;
  *(v49 + 520) = v73;
  OUTLINED_FUNCTION_240(&unk_28022AE30, &qword_267EFC0B0, v59[13]);
  OUTLINED_FUNCTION_7_0(v4);
  if (v56)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    *(v49 + 528) = 0u;
    *(v49 + 544) = 0u;
  }

  else
  {
    *(v49 + 552) = v55;
    __swift_allocate_boxed_opaque_existential_0((v49 + 528));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v74();
  }

  OUTLINED_FUNCTION_12_1();
  *(v49 + 560) = v1;
  *(v49 + 568) = v75;
  OUTLINED_FUNCTION_49_3(v59[14], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v88);
  if (v56)
  {
    sub_267B9F98C(v88, &unk_28022AE30, &qword_267EFC0B0);
    *(v49 + 576) = 0u;
    *(v49 + 592) = 0u;
  }

  else
  {
    *(v49 + 600) = v55;
    __swift_allocate_boxed_opaque_existential_0((v49 + 576));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v76();
  }

  OUTLINED_FUNCTION_12_1();
  *(v49 + 608) = v1;
  *(v49 + 616) = v77;
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v59[15]);
  OUTLINED_FUNCTION_7_0(v89);
  if (v56)
  {
    sub_267B9F98C(v89, &unk_28022AE30, &qword_267EFC0B0);
    *(v49 + 624) = 0u;
    *(v49 + 640) = 0u;
  }

  else
  {
    *(v49 + 648) = v55;
    __swift_allocate_boxed_opaque_existential_0((v49 + 624));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v78();
  }

  OUTLINED_FUNCTION_12_1();
  *(v49 + 656) = v1 - 4;
  *(v49 + 664) = v79;
  OUTLINED_FUNCTION_275(&unk_28022AE30, &qword_267EFC0B0, v59[16]);
  OUTLINED_FUNCTION_7_0(v90);
  if (v56)
  {
    sub_267B9F98C(v90, &unk_28022AE30, &qword_267EFC0B0);
    *(v49 + 672) = 0u;
    *(v49 + 688) = 0u;
  }

  else
  {
    *(v49 + 696) = v55;
    __swift_allocate_boxed_opaque_existential_0((v49 + 672));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_193();
    v80();
  }

  OUTLINED_FUNCTION_12_1();
  *(v49 + 704) = v1 + 3;
  *(v49 + 712) = v81;
  OUTLINED_FUNCTION_35_6(v59[17], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v56)
  {
    sub_267B9F98C(v91, &unk_28022AE30, &qword_267EFC0B0);
    *(v49 + 720) = 0u;
    *(v49 + 736) = 0u;
  }

  else
  {
    *(v49 + 744) = v55;
    __swift_allocate_boxed_opaque_existential_0((v49 + 720));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v82();
  }

  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_47();
}

void sub_267D3731C()
{
  OUTLINED_FUNCTION_48_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_10(v8, v88);
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_1(v10, v11, v12, v13, v14, v15, v16, v17, v89);
  v19 = MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_22(v19, v20, v21, v22, v23, v24, v25, v26, v90);
  v28 = MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_23(v28, v29, v30, v31, v32, v33, v34, v35, v91);
  v37 = MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18_12(v37, v38, v39, v40, v41, v42, v43, v44, v92);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_89_5();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_141();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v51 = OUTLINED_FUNCTION_329(v50);
  v52 = OUTLINED_FUNCTION_64_7(v51, xmmword_267F05290);
  v54 = OUTLINED_FUNCTION_113_4(v52, v53);
  sub_267C2FB6C(v54, v55, v56, &qword_267EFC0B0);
  v57 = sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v4);
  if (v58)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_294_0();
  }

  else
  {
    *(v51 + 72) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 48));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v59();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 80) = 0xD000000000000011;
  *(v51 + 88) = v60;
  v61 = type metadata accessor for SearchForMessagesOfferReplyParameters(0);
  OUTLINED_FUNCTION_275(&unk_28022AE30, &qword_267EFC0B0, v61[5]);
  OUTLINED_FUNCTION_7_0(v3);
  if (v58)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_129_0();
  }

  else
  {
    *(v51 + 120) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 96));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_193();
    v62();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 128) = 0xD000000000000011;
  *(v51 + 136) = v63;
  OUTLINED_FUNCTION_281(&unk_28022AE30, &qword_267EFC0B0, v61[6]);
  OUTLINED_FUNCTION_7_0(v2);
  if (v58)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_128_0();
  }

  else
  {
    *(v51 + 168) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 144));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_271();
    v64();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_316(v65);
  OUTLINED_FUNCTION_35_6(v66, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v58)
  {
    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    *(v51 + 192) = 0u;
    *(v51 + 208) = 0u;
  }

  else
  {
    *(v51 + 216) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 192));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v67();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 224) = v2;
  *(v51 + 232) = v68;
  OUTLINED_FUNCTION_149_0(MEMORY[0x277D839B0]);
  *(v51 + 360) = v70;
  *(v51 + 368) = v69 | 0x70756F72470000;
  OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_196();
  *(v51 + 408) = v71;
  *(v51 + 416) = v72;
  OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_202();
  *(v51 + 456) = v73;
  *(v51 + 464) = 0xD000000000000011;
  *(v51 + 472) = v74;
  *(v51 + 480) = *(v1 + v61[12]);
  OUTLINED_FUNCTION_202();
  *(v51 + 504) = v75;
  *(v51 + 512) = v2 - 7;
  *(v51 + 520) = v76;
  OUTLINED_FUNCTION_50_5(v61[13], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v5);
  if (v58)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    *(v51 + 528) = 0u;
    *(v51 + 544) = 0u;
  }

  else
  {
    *(v51 + 552) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 528));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v77();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 560) = v2;
  *(v51 + 568) = v78;
  OUTLINED_FUNCTION_240(&unk_28022AE30, &qword_267EFC0B0, v61[14]);
  OUTLINED_FUNCTION_7_0(v5);
  if (v58)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    *(v51 + 576) = 0u;
    *(v51 + 592) = 0u;
  }

  else
  {
    *(v51 + 600) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 576));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v79();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 608) = v2;
  *(v51 + 616) = v80;
  OUTLINED_FUNCTION_49_3(v61[15], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v93);
  if (v58)
  {
    sub_267B9F98C(v93, &unk_28022AE30, &qword_267EFC0B0);
    *(v51 + 624) = 0u;
    *(v51 + 640) = 0u;
  }

  else
  {
    *(v51 + 648) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 624));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v81();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 656) = v2;
  *(v51 + 664) = v82;
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v61[16]);
  OUTLINED_FUNCTION_7_0(v94);
  if (v58)
  {
    sub_267B9F98C(v94, &unk_28022AE30, &qword_267EFC0B0);
    *(v51 + 672) = 0u;
    *(v51 + 688) = 0u;
  }

  else
  {
    *(v51 + 696) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 672));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v83();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 704) = v2 - 4;
  *(v51 + 712) = v84;
  OUTLINED_FUNCTION_275(&unk_28022AE30, &qword_267EFC0B0, v61[17]);
  OUTLINED_FUNCTION_7_0(v95);
  if (v58)
  {
    sub_267B9F98C(v95, &unk_28022AE30, &qword_267EFC0B0);
    *(v51 + 720) = 0u;
    *(v51 + 736) = 0u;
  }

  else
  {
    *(v51 + 744) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 720));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_193();
    v85();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 752) = v2 + 3;
  *(v51 + 760) = v86;
  OUTLINED_FUNCTION_35_6(v61[18], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v58)
  {
    sub_267B9F98C(v96, &unk_28022AE30, &qword_267EFC0B0);
    *(v51 + 768) = 0u;
    *(v51 + 784) = 0u;
  }

  else
  {
    *(v51 + 792) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 768));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v87();
  }

  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_47();
}

void sub_267D37A5C()
{
  OUTLINED_FUNCTION_48_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_10(v8, v75);
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_1(v10, v11, v12, v13, v14, v15, v16, v17, v76);
  v19 = MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_22(v19, v20, v21, v22, v23, v24, v25, v26, v77);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_142();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v32 = OUTLINED_FUNCTION_329(v31);
  *(v32 + 16) = xmmword_267F05290;
  OUTLINED_FUNCTION_72_7();
  *(v33 + 32) = 0xD000000000000019;
  *(v33 + 40) = v34;
  v35 = *v1;
  if (*v1)
  {
    type metadata accessor for MessagesAggregatedReactionComponentDialogContext(0);
    v36 = v35;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
  }

  *(v32 + 48) = v36;
  OUTLINED_FUNCTION_12_1();
  *(v32 + 72) = v37;
  *(v32 + 80) = v2 + 3;
  *(v32 + 88) = v38;
  AggregatedReactionComponentParameters = type metadata accessor for SearchForMessagesReadAggregatedReactionComponentParameters(0);
  OUTLINED_FUNCTION_35_6(AggregatedReactionComponentParameters[5], &unk_28022AE30, &qword_267EFC0B0);
  v40 = sub_267EF79B8();
  OUTLINED_FUNCTION_0_11(v0);
  if (v41)
  {

    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    *(v32 + 120) = v40;
    __swift_allocate_boxed_opaque_existential_0((v32 + 96));
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_36_5();
    v42();
  }

  OUTLINED_FUNCTION_12_1();
  *(v32 + 128) = v2;
  *(v32 + 136) = v43;
  OUTLINED_FUNCTION_50_5(AggregatedReactionComponentParameters[6], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v5);
  if (v41)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    *(v32 + 168) = v40;
    __swift_allocate_boxed_opaque_existential_0((v32 + 144));
    OUTLINED_FUNCTION_2_2();
    (*(v44 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_305();
  *(v32 + 176) = v5;
  *(v32 + 184) = v45;
  OUTLINED_FUNCTION_49_3(AggregatedReactionComponentParameters[7], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v4);
  if (v41)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_217();
  }

  else
  {
    *(v32 + 216) = v40;
    __swift_allocate_boxed_opaque_existential_0((v32 + 192));
    OUTLINED_FUNCTION_2_2();
    (*(v46 + 32))();
  }

  OUTLINED_FUNCTION_20_13();
  *(v32 + 224) = v47;
  *(v32 + 232) = v48;
  v49 = *(v1 + AggregatedReactionComponentParameters[8]);
  if (v49)
  {
    type metadata accessor for MessagesDialogContext();
    v50 = v49;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v32 + 248) = 0;
    *(v32 + 256) = 0;
  }

  *(v32 + 240) = v50;
  OUTLINED_FUNCTION_266();
  *(v32 + 264) = v51;
  *(v32 + 272) = v5 + 6;
  *(v32 + 280) = v52;
  v53 = MEMORY[0x277D839B0];
  *(v32 + 288) = 0;
  OUTLINED_FUNCTION_12_1();
  *(v32 + 312) = v53;
  *(v32 + 320) = v5 + 2;
  *(v32 + 328) = v54;
  *(v32 + 336) = *(v1 + AggregatedReactionComponentParameters[9]);
  OUTLINED_FUNCTION_37_10();
  *(v32 + 360) = v53;
  *(v32 + 368) = v55;
  OUTLINED_FUNCTION_36_13();
  *(v32 + 376) = v56;
  *(v32 + 384) = *(v1 + AggregatedReactionComponentParameters[10]);
  OUTLINED_FUNCTION_38_13();
  *(v32 + 408) = v53;
  *(v32 + 416) = v57;
  OUTLINED_FUNCTION_171_0();
  *(v32 + 424) = v58;
  *(v32 + 432) = *(v1 + AggregatedReactionComponentParameters[11]);
  OUTLINED_FUNCTION_12_1();
  *(v32 + 456) = v53;
  *(v32 + 464) = v59;
  *(v32 + 472) = v60;
  OUTLINED_FUNCTION_48_4(AggregatedReactionComponentParameters[12], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v3);
  if (v41)
  {

    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_242();
  }

  else
  {
    *(v32 + 504) = v40;
    __swift_allocate_boxed_opaque_existential_0((v32 + 480));
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_104_3();
    v61();
  }

  OUTLINED_FUNCTION_12_1();
  *(v32 + 512) = v5 + 2;
  *(v32 + 520) = v62;
  OUTLINED_FUNCTION_280(&unk_28022AE30, &qword_267EFC0B0, AggregatedReactionComponentParameters[13]);
  OUTLINED_FUNCTION_0_11(v49);
  if (v41)
  {
    sub_267B9F98C(v49, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_227();
  }

  else
  {
    *(v32 + 552) = v40;
    __swift_allocate_boxed_opaque_existential_0((v32 + 528));
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_36_5();
    v63();
  }

  OUTLINED_FUNCTION_61_10();
  *(v32 + 560) = v64 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  *(v32 + 568) = 0xE700000000000000;
  v65 = *(v1 + AggregatedReactionComponentParameters[14]);
  *(v32 + 600) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v32 + 576) = v65;
  OUTLINED_FUNCTION_12_1();
  *(v32 + 608) = v5 + 10;
  *(v32 + 616) = v66;
  LOBYTE(v66) = *(v1 + AggregatedReactionComponentParameters[15]);
  *(v32 + 648) = v53;
  *(v32 + 624) = v66;
  OUTLINED_FUNCTION_108_4();
  *(v32 + 656) = v67;
  *(v32 + 664) = v68;
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, AggregatedReactionComponentParameters[16]);
  OUTLINED_FUNCTION_0_11(v78);
  if (v41)
  {

    sub_267B9F98C(v78, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_216();
  }

  else
  {
    *(v32 + 696) = v40;
    __swift_allocate_boxed_opaque_existential_0((v32 + 672));
    OUTLINED_FUNCTION_2_2();
    (*(v69 + 32))();
  }

  OUTLINED_FUNCTION_108_4();
  *(v32 + 704) = v70;
  *(v32 + 712) = v71;
  OUTLINED_FUNCTION_186_0(&unk_28022AE30, &qword_267EFC0B0, AggregatedReactionComponentParameters[17]);
  OUTLINED_FUNCTION_0_11(v65);
  if (v41)
  {
    sub_267B9F98C(v65, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_187_0();
  }

  else
  {
    *(v32 + 744) = v40;
    __swift_allocate_boxed_opaque_existential_0((v32 + 720));
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_36_5();
    v72();
  }

  OUTLINED_FUNCTION_35_14();
  *(v32 + 752) = v73;
  OUTLINED_FUNCTION_34_12();
  *(v32 + 760) = v74;
  LOBYTE(v74) = *(v1 + AggregatedReactionComponentParameters[18]);
  *(v32 + 792) = v53;
  *(v32 + 768) = v74;
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

void sub_267D380F0()
{
  OUTLINED_FUNCTION_48_0();
  v6 = OUTLINED_FUNCTION_243();
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_10(v8, v91);
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_1(v10, v11, v12, v13, v14, v15, v16, v17, v92);
  v19 = MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_22(v19, v20, v21, v22, v23, v24, v25, v26, v93);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_66_2();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v33 = OUTLINED_FUNCTION_285(v32);
  OUTLINED_FUNCTION_64_7(v33, xmmword_267F01670);
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_23_15(v34, v35);
  OUTLINED_FUNCTION_170();
  sub_267C2FB6C(v36, v37, v38, &qword_267EFC0B0);
  sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v2);
  if (v39)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_169_0();
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_170();
    v40();
  }

  OUTLINED_FUNCTION_12_1();
  v42 = OUTLINED_FUNCTION_230(v41);
  type metadata accessor for SearchForMessagesReadAudioComponentParameters(v42);
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_35_6(v43, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v39)
  {
    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v44();
  }

  OUTLINED_FUNCTION_63_6("componentContext");
  v46 = *(v1 + v45);
  if (v46)
  {
    type metadata accessor for MessagesMessageComponentDialogContext();
    v47 = v46;
  }

  else
  {
    OUTLINED_FUNCTION_110_5();
  }

  v33[9].n128_u64[0] = v47;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_253(v48, v49);
  OUTLINED_FUNCTION_50_5(v50, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v5);
  if (v39)
  {

    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_217();
  }

  else
  {
    OUTLINED_FUNCTION_284();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v51();
  }

  OUTLINED_FUNCTION_118_5();
  v33[14].n128_u64[0] = v52;
  v33[14].n128_u64[1] = v53;
  OUTLINED_FUNCTION_229_0();
  if (v55)
  {
    v56 = OUTLINED_FUNCTION_252();
  }

  else
  {
    v56 = *v54;
  }

  v33[15].n128_f64[0] = v56;
  OUTLINED_FUNCTION_204();
  v33[16].n128_u64[1] = v57;
  v33[17].n128_u64[0] = v58;
  OUTLINED_FUNCTION_48_16();
  v33[17].n128_u64[1] = v59;
  v60 = *(v1 + 0x8000000);
  if (v60)
  {
    v61 = type metadata accessor for MessagesDialogContext();
    v62 = v60;
  }

  else
  {
    v61 = OUTLINED_FUNCTION_38();
    v33[18].n128_u64[1] = 0;
    v33[19].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_73_6(v61, v62);
  OUTLINED_FUNCTION_49_3(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v4);
  if (v39)
  {

    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_214();
  }

  else
  {
    OUTLINED_FUNCTION_274();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v63();
  }

  OUTLINED_FUNCTION_12_1();
  v33[23].n128_u64[0] = 0xD000000000000017;
  v33[23].n128_u64[1] = v64;
  v65 = MEMORY[0x277D839B0];
  v33[24].n128_u8[0] = 0;
  OUTLINED_FUNCTION_12_1();
  v33[25].n128_u64[1] = v65;
  v33[26].n128_u64[0] = v66 + 2;
  OUTLINED_FUNCTION_56_9(v67);
  OUTLINED_FUNCTION_37_10();
  v33[28].n128_u64[1] = v65;
  v33[29].n128_u64[0] = v68;
  OUTLINED_FUNCTION_25_17();
  v33[31].n128_u64[1] = v65;
  v33[32].n128_u64[0] = v69;
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_103_3(v70);
  v33[33].n128_u8[0] = v71;
  OUTLINED_FUNCTION_300();
  OUTLINED_FUNCTION_144(v72);
  OUTLINED_FUNCTION_48_4(v73, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v3);
  if (v39)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_213();
  }

  else
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v74();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_127_1(v75);
  OUTLINED_FUNCTION_35_6(v76, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v39)
  {
    sub_267B9F98C(v94, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_198();
  }

  else
  {
    OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v77();
  }

  OUTLINED_FUNCTION_61_10();
  OUTLINED_FUNCTION_178_0(v78);
  if (v94)
  {
    v79 = sub_267EF77C8();
    v80 = v94;
  }

  else
  {
    OUTLINED_FUNCTION_76_6();
  }

  OUTLINED_FUNCTION_264(v79, v80);
  OUTLINED_FUNCTION_251_0();
  v33[44].n128_u64[0] = v81 & 0xFFFFFFFFFFFFLL | 0x7553000000000000;
  OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_182_0(v82);
  LOBYTE(v83) = *(v1 + v83);
  v33[46].n128_u64[1] = v65;
  v33[45].n128_u8[0] = v83;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_115_2(v84);
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v85);
  OUTLINED_FUNCTION_7_0(v95);
  if (v39)
  {

    sub_267B9F98C(v95, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_215();
  }

  else
  {
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v86();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_143_1(v87);
  OUTLINED_FUNCTION_186_0(&unk_28022AE30, &qword_267EFC0B0, v88);
  OUTLINED_FUNCTION_4_38();
  if (v39)
  {
    sub_267B9F98C(v94, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_197_0();
  }

  else
  {
    OUTLINED_FUNCTION_276();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v89();
  }

  OUTLINED_FUNCTION_24_14();
  v33[55].n128_u64[1] = v65;
  v33[54].n128_u8[0] = v90;
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

void sub_267D38750()
{
  OUTLINED_FUNCTION_48_0();
  v7 = OUTLINED_FUNCTION_243();
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_10(v9, v85);
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_1(v11, v12, v13, v14, v15, v16, v17, v18, v86);
  v20 = MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_22(v20, v21, v22, v23, v24, v25, v26, v27, v87);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_194();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_141();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v34 = swift_allocObject();
  v35 = OUTLINED_FUNCTION_64_7(v34, xmmword_267EFE500);
  OUTLINED_FUNCTION_23_15(v35, v36);
  OUTLINED_FUNCTION_136();
  sub_267C2FB6C(v37, v38, v39, &qword_267EFC0B0);
  sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v3);
  if (v40)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_169_0();
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v41();
  }

  OUTLINED_FUNCTION_72_7();
  v43 = OUTLINED_FUNCTION_230(v42);
  type metadata accessor for SearchForMessagesReadConversationSummaryParameters(v43);
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_248(&unk_28022AE30, &qword_267EFC0B0, v44);
  OUTLINED_FUNCTION_7_0(v2);
  if (v40)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_170();
    v45();
  }

  OUTLINED_FUNCTION_63_6("componentContext");
  v47 = *(v1 + v46);
  if (v47)
  {
    v48 = type metadata accessor for MessagesMessageComponentDialogContext();
    v49 = v47;
  }

  else
  {
    v48 = OUTLINED_FUNCTION_110_5();
  }

  OUTLINED_FUNCTION_111_2(v48, v49);
  OUTLINED_FUNCTION_35_6(v50, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v40)
  {

    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_217();
  }

  else
  {
    OUTLINED_FUNCTION_284();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v51();
  }

  OUTLINED_FUNCTION_12_1();
  v34[14].n128_u64[0] = v3;
  v34[14].n128_u64[1] = v52;
  OUTLINED_FUNCTION_50_5(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v6);
  if (v40)
  {
    sub_267B9F98C(v6, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_189_0();
  }

  else
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v53();
  }

  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_241(v54);
  v56 = *(v1 + v55);
  if (v56)
  {
    v57 = type metadata accessor for MessagesDialogContext();
    v58 = v56;
  }

  else
  {
    v57 = OUTLINED_FUNCTION_38();
    v34[18].n128_u64[1] = 0;
    v34[19].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_73_6(v57, v58);
  OUTLINED_FUNCTION_49_3(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v5);
  if (v40)
  {

    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_214();
  }

  else
  {
    OUTLINED_FUNCTION_274();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v59();
  }

  OUTLINED_FUNCTION_12_1();
  v34[23].n128_u64[0] = v3 + 6;
  v34[23].n128_u64[1] = v60;
  v61 = MEMORY[0x277D839B0];
  v34[24].n128_u8[0] = 0;
  OUTLINED_FUNCTION_12_1();
  v34[25].n128_u64[1] = v61;
  v34[26].n128_u64[0] = v3 + 2;
  OUTLINED_FUNCTION_56_9(v62);
  OUTLINED_FUNCTION_37_10();
  v34[28].n128_u64[1] = v61;
  v34[29].n128_u64[0] = v63;
  OUTLINED_FUNCTION_25_17();
  v34[31].n128_u64[1] = v61;
  v34[32].n128_u64[0] = v64;
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_103_3(v65);
  v34[33].n128_u8[0] = v66;
  OUTLINED_FUNCTION_300();
  OUTLINED_FUNCTION_144(v67);
  OUTLINED_FUNCTION_48_4(v68, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v4);
  if (v40)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_213();
  }

  else
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v69();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_127_1(v70);
  OUTLINED_FUNCTION_35_6(v71, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v40)
  {
    sub_267B9F98C(v88, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_198();
  }

  else
  {
    OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v72();
  }

  OUTLINED_FUNCTION_61_10();
  OUTLINED_FUNCTION_178_0(v73);
  if (v88)
  {
    v74 = sub_267EF77C8();
    v75 = v88;
  }

  else
  {
    OUTLINED_FUNCTION_76_6();
  }

  OUTLINED_FUNCTION_264(v74, v75);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_112_4(v76);
  OUTLINED_FUNCTION_48_4(v77, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v89);
  if (v40)
  {

    sub_267B9F98C(v89, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_187_0();
  }

  else
  {
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v78();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_115_2(v79);
  OUTLINED_FUNCTION_186_0(&unk_28022AE30, &qword_267EFC0B0, v80);
  OUTLINED_FUNCTION_4_38();
  if (v40)
  {
    sub_267B9F98C(v88, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_215();
  }

  else
  {
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v81();
  }

  OUTLINED_FUNCTION_35_14();
  v34[50].n128_u64[0] = v82;
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_184_0(v83);
  LOBYTE(v84) = *(v1 + v84);
  v34[52].n128_u64[1] = v61;
  v34[51].n128_u8[0] = v84;
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

void sub_267D38DDC()
{
  OUTLINED_FUNCTION_48_0();
  v7 = OUTLINED_FUNCTION_243();
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_10(v9, v94);
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_1(v11, v12, v13, v14, v15, v16, v17, v18, v95);
  v20 = MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_22(v20, v21, v22, v23, v24, v25, v26, v27, v96);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_194();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_141();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v35 = OUTLINED_FUNCTION_285(v34);
  v36 = OUTLINED_FUNCTION_64_7(v35, xmmword_267F01670);
  OUTLINED_FUNCTION_23_15(v36, v37);
  OUTLINED_FUNCTION_136();
  sub_267C2FB6C(v38, v39, v40, &qword_267EFC0B0);
  v41 = sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v3);
  if (v42)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_169_0();
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v43();
  }

  OUTLINED_FUNCTION_72_7();
  v45 = OUTLINED_FUNCTION_230(v44);
  type metadata accessor for SearchForMessagesReadGenericCountableComponentParameters(v45);
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_248(&unk_28022AE30, &qword_267EFC0B0, v46);
  OUTLINED_FUNCTION_7_0(v2);
  if (v42)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_170();
    v47();
  }

  OUTLINED_FUNCTION_63_6("componentContext");
  if (*(v1 + v48))
  {
    type metadata accessor for MessagesMessageComponentDialogContext();
  }

  else
  {
    v35[9].n128_u64[1] = 0;
    v35[10].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_188_0(v49, v50);
  if (v53)
  {
    v54 = OUTLINED_FUNCTION_299();
  }

  else
  {
    v54 = *v52;
  }

  OUTLINED_FUNCTION_212(v51, v54);
  OUTLINED_FUNCTION_35_6(v55, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v42)
  {

    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_189_0();
  }

  else
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v56();
  }

  OUTLINED_FUNCTION_12_1();
  v35[17].n128_u64[0] = v3;
  v35[17].n128_u64[1] = v57;
  OUTLINED_FUNCTION_50_5(0x8000000, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v6);
  if (v42)
  {
    sub_267B9F98C(v6, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_263();
  }

  else
  {
    v35[19].n128_u64[1] = v41;
    __swift_allocate_boxed_opaque_existential_0(&v35[18]);
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v58();
  }

  OUTLINED_FUNCTION_20_13();
  v35[20].n128_u64[0] = v59;
  v35[20].n128_u64[1] = v60;
  v61 = *(v1 + 8);
  if (v61)
  {
    type metadata accessor for MessagesDialogContext();
    v62 = v61;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v35[21].n128_u64[1] = 0;
    v35[22].n128_u64[0] = 0;
  }

  v35[21].n128_u64[0] = v62;
  OUTLINED_FUNCTION_105_5();
  OUTLINED_FUNCTION_290_0(v63, v64);
  OUTLINED_FUNCTION_49_3(v65, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v5);
  if (v42)
  {

    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_291();
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v66();
  }

  OUTLINED_FUNCTION_12_1();
  v35[26].n128_u64[0] = v3 + 6;
  v35[26].n128_u64[1] = v67;
  v68 = MEMORY[0x277D839B0];
  v35[27].n128_u8[0] = 0;
  OUTLINED_FUNCTION_12_1();
  v35[28].n128_u64[1] = v68;
  v35[29].n128_u64[0] = v3 + 2;
  OUTLINED_FUNCTION_49_11(v69);
  OUTLINED_FUNCTION_37_10();
  v35[31].n128_u64[1] = v68;
  v35[32].n128_u64[0] = v70;
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_103_3(v71);
  v35[33].n128_u8[0] = v72;
  OUTLINED_FUNCTION_38_13();
  v35[35].n128_u64[0] = v73;
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_180_0(v74);
  LOBYTE(v75) = *(v1 + v75);
  v35[37].n128_u64[1] = v68;
  v35[36].n128_u8[0] = v75;
  OUTLINED_FUNCTION_300();
  OUTLINED_FUNCTION_127_1(v76);
  OUTLINED_FUNCTION_48_4(v77, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v4);
  if (v42)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_198();
  }

  else
  {
    OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v78();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_145_0(v79);
  OUTLINED_FUNCTION_35_6(v80, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v42)
  {
    sub_267B9F98C(v97, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_216();
  }

  else
  {
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v81();
  }

  OUTLINED_FUNCTION_61_10();
  v35[44].n128_u64[0] = v82;
  OUTLINED_FUNCTION_182_0(0xE600000000000000);
  v84 = *(v1 + v83);
  if (v84)
  {
    v85 = sub_267EF77C8();
    v86 = v84;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_137_0();
  }

  v35[45].n128_u64[0] = v86;
  v35[46].n128_u64[1] = v85;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_115_2(v87);
  OUTLINED_FUNCTION_48_4(v88, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v98);
  if (v42)
  {

    sub_267B9F98C(v98, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_215();
  }

  else
  {
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v89();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_143_1(v90);
  OUTLINED_FUNCTION_186_0(&unk_28022AE30, &qword_267EFC0B0, v91);
  OUTLINED_FUNCTION_4_38();
  if (v42)
  {
    sub_267B9F98C(v84, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_197_0();
  }

  else
  {
    OUTLINED_FUNCTION_276();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v92();
  }

  OUTLINED_FUNCTION_24_14();
  v35[55].n128_u64[1] = v68;
  v35[54].n128_u8[0] = v93;
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

void sub_267D394B8()
{
  OUTLINED_FUNCTION_48_0();
  v6 = OUTLINED_FUNCTION_243();
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_10(v8, v84);
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_1(v10, v11, v12, v13, v14, v15, v16, v17, v85);
  v19 = MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_22(v19, v20, v21, v22, v23, v24, v25, v26, v86);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_66_2();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v33 = OUTLINED_FUNCTION_329(v32);
  OUTLINED_FUNCTION_64_7(v33, xmmword_267F05290);
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_23_15(v34, v35);
  OUTLINED_FUNCTION_170();
  sub_267C2FB6C(v36, v37, v38, &qword_267EFC0B0);
  sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v2);
  if (v39)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_169_0();
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_170();
    v40();
  }

  OUTLINED_FUNCTION_12_1();
  v42 = OUTLINED_FUNCTION_230(v41);
  type metadata accessor for SearchForMessagesReadImageComponentParameters(v42);
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_35_6(v43, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v39)
  {
    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v44();
  }

  OUTLINED_FUNCTION_63_6("componentContext");
  v46 = *(v1 + v45);
  if (v46)
  {
    v47 = type metadata accessor for MessagesMessageComponentDialogContext();
    v48 = v46;
  }

  else
  {
    v47 = OUTLINED_FUNCTION_110_5();
  }

  OUTLINED_FUNCTION_111_2(v47, v48);
  OUTLINED_FUNCTION_50_5(v49, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v5);
  if (v39)
  {

    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_217();
  }

  else
  {
    OUTLINED_FUNCTION_284();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v50();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_305();
  v33[14].n128_u64[0] = v5;
  v33[14].n128_u64[1] = v51;
  OUTLINED_FUNCTION_49_3(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v4);
  if (v39)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_189_0();
  }

  else
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v52();
  }

  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_241(v53);
  v55 = *(v1 + v54);
  if (v55)
  {
    type metadata accessor for MessagesDialogContext();
    v56 = v55;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v33[18].n128_u64[1] = 0;
    v33[19].n128_u64[0] = 0;
  }

  v33[18].n128_u64[0] = v56;
  OUTLINED_FUNCTION_266();
  v33[19].n128_u64[1] = v57;
  v33[20].n128_u64[0] = v5 + 6;
  v33[20].n128_u64[1] = v58;
  v59 = MEMORY[0x277D839B0];
  v33[21].n128_u8[0] = 0;
  OUTLINED_FUNCTION_12_1();
  v33[22].n128_u64[1] = v59;
  v33[23].n128_u64[0] = v5 + 2;
  OUTLINED_FUNCTION_101_4(v60);
  OUTLINED_FUNCTION_37_10();
  v33[25].n128_u64[1] = v59;
  v33[26].n128_u64[0] = v61;
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_56_9(v62);
  OUTLINED_FUNCTION_38_13();
  v33[28].n128_u64[1] = v59;
  v33[29].n128_u64[0] = v63;
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_49_11(v64);
  OUTLINED_FUNCTION_12_1();
  v33[31].n128_u64[1] = v59;
  v33[32].n128_u64[0] = v65;
  OUTLINED_FUNCTION_181_0(v66);
  OUTLINED_FUNCTION_48_4(v67, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v3);
  if (v39)
  {

    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_227();
  }

  else
  {
    OUTLINED_FUNCTION_331();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v68();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_144(v69);
  OUTLINED_FUNCTION_280(&unk_28022AE30, &qword_267EFC0B0, v70);
  OUTLINED_FUNCTION_4_38();
  if (v39)
  {
    sub_267B9F98C(v55, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_213();
  }

  else
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v71();
  }

  OUTLINED_FUNCTION_61_10();
  OUTLINED_FUNCTION_176_0(v72);
  if (v55)
  {
    v73 = sub_267EF77C8();
    v74 = v55;
  }

  else
  {
    OUTLINED_FUNCTION_117_4();
  }

  OUTLINED_FUNCTION_289(v73, v74);
  OUTLINED_FUNCTION_108_4();
  OUTLINED_FUNCTION_145_0(v75);
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v76);
  OUTLINED_FUNCTION_7_0(v87);
  if (v39)
  {

    sub_267B9F98C(v87, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_216();
  }

  else
  {
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v77();
  }

  OUTLINED_FUNCTION_108_4();
  OUTLINED_FUNCTION_112_4(v78);
  OUTLINED_FUNCTION_186_0(&unk_28022AE30, &qword_267EFC0B0, v79);
  OUTLINED_FUNCTION_4_38();
  if (v39)
  {
    sub_267B9F98C(v55, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_187_0();
  }

  else
  {
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v80();
  }

  OUTLINED_FUNCTION_35_14();
  v33[47].n128_u64[0] = v81;
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_179_0(v82);
  LOBYTE(v83) = *(v1 + v83);
  v33[49].n128_u64[1] = v59;
  v33[48].n128_u8[0] = v83;
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

void sub_267D39AC4()
{
  OUTLINED_FUNCTION_48_0();
  v7 = OUTLINED_FUNCTION_243();
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_10(v9, v114);
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_1(v11, v12, v13, v14, v15, v16, v17, v18, v115);
  v20 = MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_22(v20, v21, v22, v23, v24, v25, v26, v27, v116);
  v29 = MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_23(v29, v30, v31, v32, v33, v34, v35, v36, v117);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_194();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_177();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v43 = swift_allocObject();
  v44 = OUTLINED_FUNCTION_64_7(v43, xmmword_267F016C0);
  OUTLINED_FUNCTION_23_15(v44, v45);
  OUTLINED_FUNCTION_150_0();
  sub_267C2FB6C(v46, v47, v48, &qword_267EFC0B0);
  v49 = sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v4);
  if (v50)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_169_0();
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v51();
  }

  v52 = OUTLINED_FUNCTION_224();
  type metadata accessor for SearchForMessagesReadLinkComponentParameters(v52);
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v53);
  OUTLINED_FUNCTION_7_0(v3);
  if (v50)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v54();
  }

  OUTLINED_FUNCTION_12_1();
  *(v43 + 128) = 0xD000000000000011;
  *(v43 + 136) = v55;
  OUTLINED_FUNCTION_248(&unk_28022AE30, &qword_267EFC0B0, 8);
  OUTLINED_FUNCTION_7_0(v2);
  if (v50)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    OUTLINED_FUNCTION_283();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_170();
    v56();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_287(v57);
  if (v2)
  {
    type metadata accessor for MessagesMessageComponentDialogContext();
    v58 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v43 + 200) = 0;
    *(v43 + 208) = 0;
  }

  *(v43 + 192) = v58;
  OUTLINED_FUNCTION_12_1();
  *(v43 + 216) = v59;
  *(v43 + 224) = 0xD000000000000011;
  *(v43 + 232) = v60;
  OUTLINED_FUNCTION_35_6(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v50)
  {

    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_189_0();
  }

  else
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v61();
  }

  OUTLINED_FUNCTION_118_5();
  OUTLINED_FUNCTION_241(v62);
  OUTLINED_FUNCTION_229_0();
  if (v64)
  {
    *(v43 + 296) = 0;
    *(v43 + 304) = 0;
    v65 = 0;
  }

  else
  {
    v65 = *v63;
  }

  *(v43 + 288) = v65;
  OUTLINED_FUNCTION_204();
  *(v43 + 312) = v66;
  *(v43 + 320) = v67;
  OUTLINED_FUNCTION_48_16();
  *(v43 + 328) = v68;
  v69 = *(v1 + 8);
  if (v69)
  {
    type metadata accessor for MessagesDialogContext();
    v70 = v69;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v43 + 344) = 0;
    *(v43 + 352) = 0;
  }

  *(v43 + 336) = v70;
  OUTLINED_FUNCTION_105_5();
  OUTLINED_FUNCTION_290_0(v71, v72);
  OUTLINED_FUNCTION_50_5(v73, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v6);
  if (v50)
  {

    sub_267B9F98C(v6, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_291();
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v74();
  }

  OUTLINED_FUNCTION_109_4();
  *(v43 + 416) = v76;
  *(v43 + 424) = v75;
  v77 = MEMORY[0x277D839B0];
  *(v43 + 432) = 0;
  OUTLINED_FUNCTION_107_3();
  *(v43 + 456) = v77;
  *(v43 + 464) = v78;
  OUTLINED_FUNCTION_49_11(v79);
  OUTLINED_FUNCTION_37_10();
  *(v43 + 504) = v77;
  *(v43 + 512) = v80;
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_103_3(v81);
  *(v43 + 528) = v82;
  OUTLINED_FUNCTION_38_13();
  *(v43 + 560) = v83;
  OUTLINED_FUNCTION_180_0(0xE900000000000079);
  LOBYTE(v84) = *(v1 + v84);
  *(v43 + 600) = v77;
  *(v43 + 576) = v84;
  OUTLINED_FUNCTION_321();
  *(v43 + 608) = v85;
  OUTLINED_FUNCTION_183_0(0xE800000000000000);
  OUTLINED_FUNCTION_49_3(v86, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v5);
  if (v50)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_198();
  }

  else
  {
    OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v87();
  }

  OUTLINED_FUNCTION_320();
  *(v43 + 656) = v88;
  OUTLINED_FUNCTION_185_0(0xEC00000061746164);
  v90 = *(v1 + v89);
  if (v90)
  {
    v91 = type metadata accessor for MessagesLinkMetadata(0);
    v92 = v90;
  }

  else
  {
    OUTLINED_FUNCTION_76_6();
  }

  OUTLINED_FUNCTION_264(v91, v92);
  OUTLINED_FUNCTION_317();
  *(v43 + 704) = v93;
  *(v43 + 712) = 0xE900000000000065;
  LOBYTE(v93) = *(v1 + *"tionInfo");
  *(v43 + 744) = v77;
  *(v43 + 720) = v93;
  OUTLINED_FUNCTION_109_4();
  OUTLINED_FUNCTION_115_2(v94);
  sub_267C2FB6C(v1 + v95, v118, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v118);
  if (v50)
  {

    sub_267B9F98C(v118, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_215();
  }

  else
  {
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v96();
  }

  OUTLINED_FUNCTION_107_3();
  OUTLINED_FUNCTION_143_1(v97);
  OUTLINED_FUNCTION_35_6(v98, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v50)
  {
    sub_267B9F98C(v119, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_197_0();
  }

  else
  {
    OUTLINED_FUNCTION_276();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v99();
  }

  OUTLINED_FUNCTION_61_10();
  *(v43 + 848) = v100;
  OUTLINED_FUNCTION_191_0(0xE600000000000000);
  v102 = *(v1 + v101);
  if (v102)
  {
    v103 = sub_267EF77C8();
    v104 = v102;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_137_0();
  }

  *(v43 + 864) = v104;
  *(v43 + 888) = v103;
  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_210(v105);
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v106);
  OUTLINED_FUNCTION_7_0(v120);
  if (v50)
  {

    sub_267B9F98C(v120, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_262();
  }

  else
  {
    OUTLINED_FUNCTION_286();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v107();
  }

  OUTLINED_FUNCTION_104_4();
  *(v43 + 944) = v108;
  OUTLINED_FUNCTION_272(v109);
  OUTLINED_FUNCTION_186_0(&unk_28022AE30, &qword_267EFC0B0, v110);
  OUTLINED_FUNCTION_4_38();
  if (v50)
  {
    sub_267B9F98C(v102, &unk_28022AE30, &qword_267EFC0B0);
    *(v43 + 960) = 0u;
    *(v43 + 976) = 0u;
  }

  else
  {
    *(v43 + 984) = v49;
    __swift_allocate_boxed_opaque_existential_0((v43 + 960));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v111();
  }

  OUTLINED_FUNCTION_35_14();
  *(v43 + 992) = v112;
  OUTLINED_FUNCTION_34_12();
  *(v43 + 1000) = v113;
  LOBYTE(v113) = *v1;
  *(v43 + 1032) = v77;
  *(v43 + 1008) = v113;
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

void sub_267D3A2D4()
{
  OUTLINED_FUNCTION_48_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_10(v8, v111);
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_1(v10, v11, v12, v13, v14, v15, v16, v17, v112);
  v19 = MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_22(v19, v20, v21, v22, v23, v24, v25, v26, v113);
  v28 = MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_23(v28, v29, v30, v31, v32, v33, v34, v35, v114);
  v37 = MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18_12(v37, v38, v39, v40, v41, v42, v43, v44, v115);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_194();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_89_5();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_177();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v51 = OUTLINED_FUNCTION_330(v50);
  v52 = OUTLINED_FUNCTION_64_7(v51, xmmword_267F052A0);
  OUTLINED_FUNCTION_114_3(v52, v53);
  OUTLINED_FUNCTION_150_0();
  sub_267C2FB6C(v54, v55, v56, &qword_267EFC0B0);
  v57 = sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v4);
  if (v58)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_169_0();
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v59();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 80) = 0xD000000000000011;
  *(v51 + 88) = v60;
  LocationComponentParameters = type metadata accessor for SearchForMessagesReadLocationComponentParameters(0);
  OUTLINED_FUNCTION_275(&unk_28022AE30, &qword_267EFC0B0, LocationComponentParameters[5]);
  OUTLINED_FUNCTION_7_0(v3);
  if (v58)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_193();
    v62();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 128) = 0xD000000000000010;
  *(v51 + 136) = v63;
  v64 = *(v1 + LocationComponentParameters[6]);
  if (v64)
  {
    type metadata accessor for MessagesMessageComponentDialogContext();
    v65 = v64;
  }

  else
  {
    OUTLINED_FUNCTION_110_5();
  }

  *(v51 + 144) = v65;
  OUTLINED_FUNCTION_12_1();
  *(v51 + 168) = v66;
  *(v51 + 176) = 0xD000000000000011;
  *(v51 + 184) = v67;
  OUTLINED_FUNCTION_248(&unk_28022AE30, &qword_267EFC0B0, LocationComponentParameters[7]);
  OUTLINED_FUNCTION_7_0(v2);
  if (v58)
  {

    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_217();
  }

  else
  {
    OUTLINED_FUNCTION_284();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_170();
    v68();
  }

  OUTLINED_FUNCTION_118_5();
  *(v51 + 224) = v69;
  *(v51 + 232) = v70;
  OUTLINED_FUNCTION_229_0();
  if (v72)
  {
    v73 = OUTLINED_FUNCTION_252();
  }

  else
  {
    v73 = *v71;
  }

  *(v51 + 240) = v73;
  OUTLINED_FUNCTION_204();
  *(v51 + 264) = v74;
  *(v51 + 272) = v75;
  OUTLINED_FUNCTION_48_16();
  *(v51 + 280) = v76;
  v77 = *(v1 + LocationComponentParameters[9]);
  if (v77)
  {
    v78 = type metadata accessor for MessagesDialogContext();
    v79 = v77;
  }

  else
  {
    v78 = OUTLINED_FUNCTION_38();
    *(v51 + 296) = 0;
    *(v51 + 304) = 0;
  }

  OUTLINED_FUNCTION_73_6(v78, v79);
  OUTLINED_FUNCTION_35_6(LocationComponentParameters[10], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v58)
  {

    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_214();
  }

  else
  {
    OUTLINED_FUNCTION_274();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v80();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 368) = 0xD000000000000017;
  *(v51 + 376) = v81;
  v82 = MEMORY[0x277D839B0];
  *(v51 + 384) = 0;
  OUTLINED_FUNCTION_12_1();
  *(v51 + 408) = v82;
  *(v51 + 416) = 0xD000000000000013;
  *(v51 + 424) = v83;
  *(v51 + 432) = *(v1 + LocationComponentParameters[11]);
  OUTLINED_FUNCTION_37_10();
  *(v51 + 456) = v82;
  *(v51 + 464) = v84;
  OUTLINED_FUNCTION_36_13();
  *(v51 + 472) = v85;
  *(v51 + 480) = *(v1 + LocationComponentParameters[12]);
  OUTLINED_FUNCTION_38_13();
  *(v51 + 504) = v82;
  *(v51 + 512) = v86;
  OUTLINED_FUNCTION_171_0();
  *(v51 + 520) = v87;
  LOBYTE(v87) = *(v1 + LocationComponentParameters[13]);
  *(v51 + 552) = v82;
  *(v51 + 528) = v87;
  OUTLINED_FUNCTION_318();
  *(v51 + 560) = v88;
  *(v51 + 568) = 0xE800000000000000;
  v89 = *(v1 + LocationComponentParameters[14]);
  if (v89)
  {
    v90 = sub_267EF75E8();
    v91 = v89;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_137_0();
  }

  *(v51 + 576) = v91;
  *(v51 + 600) = v90;
  OUTLINED_FUNCTION_12_1();
  *(v51 + 608) = 0xD000000000000013;
  *(v51 + 616) = v92;
  OUTLINED_FUNCTION_50_5(LocationComponentParameters[15], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v5);
  if (v58)
  {

    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_198();
  }

  else
  {
    OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v93();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 656) = 0xD000000000000017;
  *(v51 + 664) = v94;
  OUTLINED_FUNCTION_240(&unk_28022AE30, &qword_267EFC0B0, LocationComponentParameters[16]);
  OUTLINED_FUNCTION_7_0(v5);
  if (v58)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_216();
  }

  else
  {
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v95();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 704) = 0xD000000000000013;
  *(v51 + 712) = v96;
  OUTLINED_FUNCTION_35_6(LocationComponentParameters[17], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v58)
  {
    sub_267B9F98C(v116, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_187_0();
  }

  else
  {
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v97();
  }

  OUTLINED_FUNCTION_61_10();
  *(v51 + 752) = v98;
  *(v51 + 760) = 0xE600000000000000;
  v99 = *(v1 + LocationComponentParameters[18]);
  if (v99)
  {
    v100 = sub_267EF77C8();
    v101 = v99;
  }

  else
  {
    OUTLINED_FUNCTION_75_5();
  }

  OUTLINED_FUNCTION_313(v100, v101);
  OUTLINED_FUNCTION_61_10();
  *(v51 + 800) = v102 & 0xFFFFFFFFFFFFLL | 0x7250000000000000;
  OUTLINED_FUNCTION_312_0();
  *(v51 + 808) = v103;
  OUTLINED_FUNCTION_49_3(LocationComponentParameters[19], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v117);
  if (v58)
  {

    sub_267B9F98C(v117, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_197_0();
  }

  else
  {
    OUTLINED_FUNCTION_276();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v104();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 848) = 0xD000000000000012;
  *(v51 + 856) = v105;
  OUTLINED_FUNCTION_275(&unk_28022AE30, &qword_267EFC0B0, LocationComponentParameters[20]);
  OUTLINED_FUNCTION_7_0(v118);
  if (v58)
  {
    sub_267B9F98C(v118, &unk_28022AE30, &qword_267EFC0B0);
    *(v51 + 864) = 0u;
    *(v51 + 880) = 0u;
  }

  else
  {
    *(v51 + 888) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 864));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_193();
    v106();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 896) = 0xD000000000000012;
  *(v51 + 904) = v107;
  OUTLINED_FUNCTION_186_0(&unk_28022AE30, &qword_267EFC0B0, LocationComponentParameters[21]);
  OUTLINED_FUNCTION_4_38();
  if (v58)
  {
    sub_267B9F98C(0xD000000000000012, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_262();
  }

  else
  {
    OUTLINED_FUNCTION_286();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v108();
  }

  OUTLINED_FUNCTION_35_14();
  *(v51 + 944) = v109;
  OUTLINED_FUNCTION_34_12();
  *(v51 + 952) = v110;
  LOBYTE(v110) = *(v1 + LocationComponentParameters[22]);
  *(v51 + 984) = v82;
  *(v51 + 960) = v110;
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

void sub_267D3AB2C()
{
  OUTLINED_FUNCTION_48_0();
  v7 = OUTLINED_FUNCTION_243();
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_10(v9, v116);
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_1(v11, v12, v13, v14, v15, v16, v17, v18, v117);
  v20 = MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_22(v20, v21, v22, v23, v24, v25, v26, v27, v118);
  v29 = MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_23(v29, v30, v31, v32, v33, v34, v35, v36, v119);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_194();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_177();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v44 = OUTLINED_FUNCTION_330(v43);
  v45 = OUTLINED_FUNCTION_64_7(v44, xmmword_267F052A0);
  OUTLINED_FUNCTION_23_15(v45, v46);
  OUTLINED_FUNCTION_150_0();
  sub_267C2FB6C(v47, v48, v49, &qword_267EFC0B0);
  v50 = sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v4);
  if (v51)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_169_0();
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v52();
  }

  OUTLINED_FUNCTION_12_1();
  v54 = OUTLINED_FUNCTION_311(v53);
  type metadata accessor for SearchForMessagesReadPaymentComponentParameters(v54);
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v55);
  OUTLINED_FUNCTION_7_0(v3);
  if (v51)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v56();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_192_0(v57);
  v59 = *(v1 + v58);
  if (v59)
  {
    type metadata accessor for MessagesMessageComponentDialogContext();
    v60 = v59;
  }

  else
  {
    OUTLINED_FUNCTION_110_5();
  }

  *(v44 + 144) = v60;
  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_199_0(v61, v62);
  if (v64)
  {
    v65 = OUTLINED_FUNCTION_299();
  }

  else
  {
    v65 = *v63;
  }

  *(v44 + 192) = v65;
  OUTLINED_FUNCTION_202();
  *(v44 + 216) = v66;
  *(v44 + 224) = v4;
  *(v44 + 232) = v67;
  OUTLINED_FUNCTION_248(&unk_28022AE30, &qword_267EFC0B0, 8);
  OUTLINED_FUNCTION_7_0(v2);
  if (v51)
  {

    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_189_0();
  }

  else
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_170();
    v68();
  }

  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_241(v69);
  v71 = *(v1 + v70);
  if (v71)
  {
    v72 = type metadata accessor for MessagesDialogContext();
    v73 = v71;
  }

  else
  {
    v72 = OUTLINED_FUNCTION_38();
    *(v44 + 296) = 0;
    *(v44 + 304) = 0;
  }

  OUTLINED_FUNCTION_73_6(v72, v73);
  OUTLINED_FUNCTION_35_6(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v51)
  {

    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_214();
  }

  else
  {
    OUTLINED_FUNCTION_274();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v74();
  }

  OUTLINED_FUNCTION_109_4();
  *(v44 + 368) = v76;
  *(v44 + 376) = v75;
  v77 = MEMORY[0x277D839B0];
  *(v44 + 384) = 0;
  OUTLINED_FUNCTION_107_3();
  *(v44 + 408) = v77;
  *(v44 + 416) = v78;
  OUTLINED_FUNCTION_56_9(v79);
  OUTLINED_FUNCTION_37_10();
  *(v44 + 456) = v77;
  *(v44 + 464) = v80;
  OUTLINED_FUNCTION_25_17();
  *(v44 + 504) = v77;
  *(v44 + 512) = v81;
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_103_3(v82);
  *(v44 + 528) = v83;
  OUTLINED_FUNCTION_147_0();
  *(v44 + 560) = v84 & 0xFFFFFFFFFFFFLL | 0x4174000000000000;
  OUTLINED_FUNCTION_310();
  OUTLINED_FUNCTION_180_0(v85);
  v87 = *(v1 + v86);
  if (v87)
  {
    v88 = sub_267EF7848();
    v89 = v87;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_137_0();
  }

  *(v44 + 576) = v89;
  *(v44 + 600) = v88;
  OUTLINED_FUNCTION_147_0();
  *(v44 + 608) = v90 & 0xFFFFFFFFFFFFLL | 0x4E74000000000000;
  OUTLINED_FUNCTION_183_0(0xEB0000000065746FLL);
  OUTLINED_FUNCTION_50_5(v91, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v6);
  if (v51)
  {

    sub_267B9F98C(v6, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_198();
  }

  else
  {
    OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v92();
  }

  OUTLINED_FUNCTION_147_0();
  *(v44 + 656) = v93 & 0xFFFFFFFFFFFFLL | 0x5474000000000000;
  *(v44 + 664) = 0xEB00000000657079;
  OUTLINED_FUNCTION_49_3(*"LocationInfo", &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v5);
  if (v51)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_216();
  }

  else
  {
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v94();
  }

  OUTLINED_FUNCTION_109_4();
  OUTLINED_FUNCTION_112_4(v95);
  sub_267C2FB6C(v1 + v96, v120, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v120);
  if (v51)
  {
    sub_267B9F98C(v120, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_187_0();
  }

  else
  {
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v97();
  }

  OUTLINED_FUNCTION_107_3();
  OUTLINED_FUNCTION_115_2(v98);
  OUTLINED_FUNCTION_35_6(v99, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v51)
  {
    sub_267B9F98C(v121, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_215();
  }

  else
  {
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v100();
  }

  OUTLINED_FUNCTION_61_10();
  *(v44 + 800) = v101;
  OUTLINED_FUNCTION_184_0(0xE600000000000000);
  v103 = *(v1 + v102);
  if (v103)
  {
    v104 = sub_267EF77C8();
    v105 = v103;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_137_0();
  }

  *(v44 + 816) = v105;
  *(v44 + 840) = v104;
  OUTLINED_FUNCTION_104_4();
  *(v44 + 848) = v106;
  OUTLINED_FUNCTION_191_0(v107);
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v108);
  OUTLINED_FUNCTION_7_0(v122);
  if (v51)
  {

    sub_267B9F98C(v122, &unk_28022AE30, &qword_267EFC0B0);
    *(v44 + 864) = 0u;
    *(v44 + 880) = 0u;
  }

  else
  {
    *(v44 + 888) = v50;
    __swift_allocate_boxed_opaque_existential_0((v44 + 864));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v109();
  }

  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_210(v110);
  OUTLINED_FUNCTION_186_0(&unk_28022AE30, &qword_267EFC0B0, v111);
  OUTLINED_FUNCTION_4_38();
  if (v51)
  {
    sub_267B9F98C(v103, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_262();
  }

  else
  {
    OUTLINED_FUNCTION_286();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v112();
  }

  OUTLINED_FUNCTION_35_14();
  *(v44 + 944) = v113;
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_272(v114);
  LOBYTE(v115) = *(v1 + v115);
  *(v44 + 984) = v77;
  *(v44 + 960) = v115;
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

void sub_267D3B304()
{
  OUTLINED_FUNCTION_48_0();
  v6 = OUTLINED_FUNCTION_243();
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_10(v8, v75);
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_1(v10, v11, v12, v13, v14, v15, v16, v17, v76);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_142();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v23 = swift_allocObject();
  v24 = OUTLINED_FUNCTION_64_7(v23, xmmword_267EFE500);
  v24[2].n128_u64[0] = 0xD000000000000014;
  v24[2].n128_u64[1] = v25;
  OUTLINED_FUNCTION_178();
  sub_267C2FB6C(v26, v27, v28, &qword_267EFC0B0);
  v29 = sub_267EF79B8();
  OUTLINED_FUNCTION_4_38();
  if (v30)
  {
    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_169_0();
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v31();
  }

  OUTLINED_FUNCTION_12_1();
  v23[5].n128_u64[0] = 0xD000000000000011;
  v23[5].n128_u64[1] = v32;
  type metadata accessor for SearchForMessagesReadReactionComponentParameters(0);
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_50_5(v33, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v5);
  if (v30)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v34();
  }

  OUTLINED_FUNCTION_12_1();
  v23[8].n128_u64[0] = 0xD000000000000011;
  v23[8].n128_u64[1] = v35;
  OUTLINED_FUNCTION_49_3(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v4);
  if (v30)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    OUTLINED_FUNCTION_283();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v36();
  }

  OUTLINED_FUNCTION_20_13();
  v23[11].n128_u64[0] = v37;
  v23[11].n128_u64[1] = v38;
  v39 = *(v1 + 0x8000000);
  if (v39)
  {
    type metadata accessor for MessagesDialogContext();
    v40 = v39;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v23[12].n128_u64[1] = 0;
    v23[13].n128_u64[0] = 0;
  }

  v23[12].n128_u64[0] = v40;
  OUTLINED_FUNCTION_266();
  v23[13].n128_u64[1] = v41;
  v23[14].n128_u64[0] = 0xD000000000000017;
  v23[14].n128_u64[1] = v42;
  v43 = MEMORY[0x277D839B0];
  v23[15].n128_u8[0] = 0;
  OUTLINED_FUNCTION_12_1();
  v23[16].n128_u64[1] = v43;
  v23[17].n128_u64[0] = 0xD000000000000013;
  v23[17].n128_u64[1] = v44;
  v23[18].n128_u8[0] = *(v1 + 8);
  OUTLINED_FUNCTION_37_10();
  v23[19].n128_u64[1] = v43;
  v23[20].n128_u64[0] = v45;
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_155_0(v46);
  OUTLINED_FUNCTION_38_13();
  v23[22].n128_u64[1] = v43;
  v23[23].n128_u64[0] = v47;
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_101_4(v48);
  OUTLINED_FUNCTION_308();
  v23[25].n128_u64[1] = v43;
  v23[26].n128_u64[0] = v49;
  OUTLINED_FUNCTION_307();
  v23[26].n128_u64[1] = v50;
  v51 = *(v1 + 0x8000000);
  if (v51)
  {
    type metadata accessor for MessagesReactionComponentDialogContext(0);
    v52 = v51;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v23[27].n128_u64[1] = 0;
    v23[28].n128_u64[0] = 0;
  }

  v23[27].n128_u64[0] = v52;
  OUTLINED_FUNCTION_12_1();
  v23[28].n128_u64[1] = v53;
  v23[29].n128_u64[0] = 0xD000000000000017;
  v23[29].n128_u64[1] = v54;
  OUTLINED_FUNCTION_48_4(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v3);
  if (v30)
  {

    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_242();
  }

  else
  {
    v23[31].n128_u64[1] = v29;
    __swift_allocate_boxed_opaque_existential_0(&v23[30]);
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v55();
  }

  OUTLINED_FUNCTION_12_1();
  v23[32].n128_u64[0] = 0xD000000000000013;
  OUTLINED_FUNCTION_181_0(v56);
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v57);
  OUTLINED_FUNCTION_7_0(v2);
  if (v30)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_227();
  }

  else
  {
    OUTLINED_FUNCTION_331();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v58();
  }

  OUTLINED_FUNCTION_61_10();
  v23[35].n128_u64[0] = v59 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  OUTLINED_FUNCTION_180_0(0xE700000000000000);
  v61 = *(v1 + v60);
  v23[37].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  v23[36].n128_u64[0] = v61;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_127_1(v62);
  LOBYTE(v63) = *(v1 + v63);
  v23[40].n128_u64[1] = v43;
  v23[39].n128_u8[0] = v63;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_145_0(v64);
  LOBYTE(v65) = *(v1 + v65);
  v23[43].n128_u64[1] = v43;
  v23[42].n128_u8[0] = v65;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_112_4(v66);
  OUTLINED_FUNCTION_48_4(v67, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v77);
  if (v30)
  {

    sub_267B9F98C(v77, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_187_0();
  }

  else
  {
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v68();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_115_2(v69);
  sub_267C2FB6C(v1 + v70, v78, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v78);
  if (v30)
  {
    sub_267B9F98C(v78, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_215();
  }

  else
  {
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_170();
    v71();
  }

  OUTLINED_FUNCTION_35_14();
  v23[50].n128_u64[0] = v72;
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_184_0(v73);
  LOBYTE(v74) = *(v1 + v74);
  v23[52].n128_u64[1] = v43;
  v23[51].n128_u8[0] = v74;
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

void sub_267D3B944()
{
  OUTLINED_FUNCTION_48_0();
  v5 = OUTLINED_FUNCTION_326();
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_10(v7, v98[0]);
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_1(v9, v10, v11, v12, v13, v14, v15, v16, v98[0]);
  v18 = MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_22(v18, v19, v20, v21, v22, v23, v24, v25, v98[0]);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v30);
  v32 = v98 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v34 = OUTLINED_FUNCTION_285(v33);
  OUTLINED_FUNCTION_64_7(v34, xmmword_267F01670);
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_23_15(v35, v36);
  OUTLINED_FUNCTION_244();
  sub_267C2FB6C(v37, v38, v39, &qword_267EFC0B0);
  v40 = sub_267EF79B8();
  OUTLINED_FUNCTION_29_15(v32);
  if (v41)
  {
    sub_267B9F98C(v32, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_169_0();
  }

  else
  {
    OUTLINED_FUNCTION_328();
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_244();
    v42();
  }

  OUTLINED_FUNCTION_12_1();
  v44 = OUTLINED_FUNCTION_230(v43);
  type metadata accessor for SearchForMessagesReadSpokenAudioComponentParameters(v44);
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_35_6(v45, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v0);
  if (v41)
  {
    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_218();
    v46();
  }

  OUTLINED_FUNCTION_63_6("componentContext");
  v48 = *(v1 + v47);
  if (v48)
  {
    type metadata accessor for MessagesMessageComponentDialogContext();
    v49 = v48;
  }

  else
  {
    OUTLINED_FUNCTION_110_5();
  }

  v34[9].n128_u64[0] = v49;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_253(v50, v51);
  OUTLINED_FUNCTION_50_5(v52, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v4);
  if (v41)
  {

    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_217();
  }

  else
  {
    v34[13].n128_u64[1] = v40;
    __swift_allocate_boxed_opaque_existential_0(&v34[12]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_261();
    v53();
  }

  OUTLINED_FUNCTION_118_5();
  v34[14].n128_u64[0] = v54;
  v34[14].n128_u64[1] = v55;
  OUTLINED_FUNCTION_229_0();
  v57 = v98[1];
  if (v58)
  {
    v60 = OUTLINED_FUNCTION_252();
  }

  else
  {
    v60 = *v56;
    v59 = MEMORY[0x277D839F8];
  }

  v34[15].n128_f64[0] = v60;
  v34[16].n128_u64[1] = v59;
  v34[17].n128_u64[0] = 0x746365666665;
  v34[17].n128_u64[1] = 0xE600000000000000;
  OUTLINED_FUNCTION_49_3(0x8000000, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v3);
  if (v41)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_263();
  }

  else
  {
    v34[19].n128_u64[1] = v40;
    __swift_allocate_boxed_opaque_existential_0(&v34[18]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_260();
    v61();
  }

  OUTLINED_FUNCTION_12_1();
  v34[20].n128_u64[0] = 0xD000000000000017;
  v34[20].n128_u64[1] = v62;
  v63 = MEMORY[0x277D839B0];
  v34[21].n128_u8[0] = 0;
  OUTLINED_FUNCTION_12_1();
  v34[22].n128_u64[1] = v63;
  v34[23].n128_u64[0] = v64 + 2;
  OUTLINED_FUNCTION_101_4(v65);
  OUTLINED_FUNCTION_37_10();
  v34[25].n128_u64[1] = v63;
  v34[26].n128_u64[0] = v66;
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_56_9(v67);
  OUTLINED_FUNCTION_38_13();
  v34[28].n128_u64[1] = v63;
  v34[29].n128_u64[0] = v68;
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_49_11(v69);
  OUTLINED_FUNCTION_12_1();
  v34[31].n128_u64[1] = v63;
  v34[32].n128_u64[0] = v70;
  OUTLINED_FUNCTION_181_0(v71);
  OUTLINED_FUNCTION_48_4(v72, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v2);
  if (v41)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_227();
  }

  else
  {
    v34[34].n128_u64[1] = v40;
    __swift_allocate_boxed_opaque_existential_0(&v34[33]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_259();
    v73();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_144(v74);
  OUTLINED_FUNCTION_35_6(v75, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v57);
  v76 = v98[2];
  if (v41)
  {
    sub_267B9F98C(v57, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_213();
  }

  else
  {
    v34[37].n128_u64[1] = v40;
    __swift_allocate_boxed_opaque_existential_0(&v34[36]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_218();
    v77();
  }

  OUTLINED_FUNCTION_61_10();
  OUTLINED_FUNCTION_176_0(v78);
  v79 = v98[3];
  if (v57)
  {
    v80 = sub_267EF77C8();
    v81 = v57;
  }

  else
  {
    OUTLINED_FUNCTION_117_4();
  }

  OUTLINED_FUNCTION_289(v80, v81);
  OUTLINED_FUNCTION_251_0();
  v34[41].n128_u64[0] = v82 & 0xFFFFFFFFFFFFLL | 0x7553000000000000;
  OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_185_0(v83);
  LOBYTE(v84) = *(v1 + v84);
  v34[43].n128_u64[1] = v63;
  v34[42].n128_u8[0] = v84;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_112_4(v85);
  OUTLINED_FUNCTION_48_4(v86, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v76);
  if (v41)
  {

    sub_267B9F98C(v76, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_187_0();
  }

  else
  {
    v34[46].n128_u64[1] = v40;
    __swift_allocate_boxed_opaque_existential_0(&v34[45]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_259();
    v87();
  }

  OUTLINED_FUNCTION_70_6();
  v34[47].n128_u64[0] = v88;
  OUTLINED_FUNCTION_48_16();
  OUTLINED_FUNCTION_179_0(v89);
  v91 = *(v1 + v90);
  if (v91)
  {
    v92 = type metadata accessor for MessagesSpokenDialogContext();
    v93 = v91;
  }

  else
  {
    OUTLINED_FUNCTION_75_5();
  }

  OUTLINED_FUNCTION_313(v92, v93);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_143_1(v94);
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v95);
  OUTLINED_FUNCTION_29_15(v79);
  if (v41)
  {

    sub_267B9F98C(v79, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_197_0();
  }

  else
  {
    v34[52].n128_u64[1] = v40;
    __swift_allocate_boxed_opaque_existential_0(&v34[51]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_228();
    v96();
  }

  OUTLINED_FUNCTION_24_14();
  v34[55].n128_u64[1] = v63;
  v34[54].n128_u8[0] = v97;
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

void sub_267D3C004()
{
  OUTLINED_FUNCTION_48_0();
  v6 = OUTLINED_FUNCTION_326();
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_10(v8, v98);
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_1(v10, v11, v12, v13, v14, v15, v16, v17, v99);
  v19 = MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_22(v19, v20, v21, v22, v23, v24, v25, v26, v100);
  v28 = MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_23(v28, v29, v30, v31, v32, v33, v34, v35, v101);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_141();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v42 = OUTLINED_FUNCTION_285(v41);
  v43 = OUTLINED_FUNCTION_64_7(v42, xmmword_267F01670);
  OUTLINED_FUNCTION_23_15(v43, v44);
  OUTLINED_FUNCTION_228();
  sub_267C2FB6C(v45, v46, v47, &qword_267EFC0B0);
  v48 = sub_267EF79B8();
  OUTLINED_FUNCTION_29_15(v3);
  if (v49)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_169_0();
  }

  else
  {
    OUTLINED_FUNCTION_328();
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_228();
    v50();
  }

  OUTLINED_FUNCTION_12_1();
  v42[5].n128_u64[0] = 0xD000000000000011;
  v42[5].n128_u64[1] = v51;
  type metadata accessor for SearchForMessagesReadSpokenGenericCountableComponentParameters(0);
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_325(&unk_28022AE30, &qword_267EFC0B0, v52);
  OUTLINED_FUNCTION_29_15(v2);
  if (v49)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_244();
    v53();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_192_0(v54);
  if (*(v1 + v55))
  {
    type metadata accessor for MessagesMessageComponentDialogContext();
  }

  else
  {
    v42[9].n128_u64[1] = 0;
    v42[10].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_188_0(v56, v57);
  if (v60)
  {
    v61 = OUTLINED_FUNCTION_299();
  }

  else
  {
    v61 = *v59;
  }

  OUTLINED_FUNCTION_212(v58, v61);
  OUTLINED_FUNCTION_35_6(v62, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v0);
  if (v49)
  {

    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_189_0();
  }

  else
  {
    v42[16].n128_u64[1] = v48;
    __swift_allocate_boxed_opaque_existential_0(&v42[15]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_218();
    v63();
  }

  OUTLINED_FUNCTION_12_1();
  v42[17].n128_u64[0] = 0xD000000000000011;
  v42[17].n128_u64[1] = v64;
  OUTLINED_FUNCTION_50_5(0x8000000, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v5);
  if (v49)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_263();
  }

  else
  {
    v42[19].n128_u64[1] = v48;
    __swift_allocate_boxed_opaque_existential_0(&v42[18]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_261();
    v65();
  }

  OUTLINED_FUNCTION_105_5();
  v42[20].n128_u64[0] = v66;
  v42[20].n128_u64[1] = 0xE600000000000000;
  OUTLINED_FUNCTION_49_3(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v4);
  if (v49)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_214();
  }

  else
  {
    v42[22].n128_u64[1] = v48;
    __swift_allocate_boxed_opaque_existential_0(&v42[21]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_260();
    v67();
  }

  OUTLINED_FUNCTION_109_4();
  v42[23].n128_u64[0] = v69;
  v42[23].n128_u64[1] = v68;
  v70 = MEMORY[0x277D839B0];
  v42[24].n128_u8[0] = 0;
  OUTLINED_FUNCTION_12_1();
  v42[25].n128_u64[1] = v70;
  v42[26].n128_u64[0] = 0xD000000000000013;
  OUTLINED_FUNCTION_56_9(v71);
  OUTLINED_FUNCTION_37_10();
  v42[28].n128_u64[1] = v70;
  v42[29].n128_u64[0] = v72;
  OUTLINED_FUNCTION_25_17();
  v42[31].n128_u64[1] = v70;
  v42[32].n128_u64[0] = v73;
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_181_0(v74);
  LOBYTE(v75) = *(v1 + v75);
  v42[34].n128_u64[1] = v70;
  v42[33].n128_u8[0] = v75;
  OUTLINED_FUNCTION_300();
  OUTLINED_FUNCTION_144(v76);
  OUTLINED_FUNCTION_50_5(v77, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v102);
  if (v49)
  {
    sub_267B9F98C(v102, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_213();
  }

  else
  {
    v42[37].n128_u64[1] = v48;
    __swift_allocate_boxed_opaque_existential_0(&v42[36]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_261();
    v78();
  }

  OUTLINED_FUNCTION_107_3();
  OUTLINED_FUNCTION_127_1(v79);
  OUTLINED_FUNCTION_35_6(v80, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v103);
  if (v49)
  {
    sub_267B9F98C(v103, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_198();
  }

  else
  {
    v42[40].n128_u64[1] = v48;
    __swift_allocate_boxed_opaque_existential_0(&v42[39]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_218();
    v81();
  }

  OUTLINED_FUNCTION_61_10();
  OUTLINED_FUNCTION_178_0(v82);
  if (v103)
  {
    v83 = sub_267EF77C8();
    v84 = v103;
  }

  else
  {
    OUTLINED_FUNCTION_76_6();
  }

  OUTLINED_FUNCTION_264(v83, v84);
  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_112_4(v85);
  OUTLINED_FUNCTION_49_3(v86, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v104);
  if (v49)
  {

    sub_267B9F98C(v104, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_187_0();
  }

  else
  {
    v42[46].n128_u64[1] = v48;
    __swift_allocate_boxed_opaque_existential_0(&v42[45]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_260();
    v87();
  }

  OUTLINED_FUNCTION_70_6();
  v42[47].n128_u64[0] = v88;
  OUTLINED_FUNCTION_48_16();
  OUTLINED_FUNCTION_179_0(v89);
  v91 = *(v1 + v90);
  if (v91)
  {
    v92 = type metadata accessor for MessagesSpokenDialogContext();
    v93 = v91;
  }

  else
  {
    OUTLINED_FUNCTION_75_5();
  }

  OUTLINED_FUNCTION_313(v92, v93);
  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_143_1(v94);
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v95);
  OUTLINED_FUNCTION_29_15(v105);
  if (v49)
  {

    sub_267B9F98C(v105, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_197_0();
  }

  else
  {
    v42[52].n128_u64[1] = v48;
    __swift_allocate_boxed_opaque_existential_0(&v42[51]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_228();
    v96();
  }

  OUTLINED_FUNCTION_24_14();
  v42[55].n128_u64[1] = v70;
  v42[54].n128_u8[0] = v97;
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

void sub_267D3C70C()
{
  OUTLINED_FUNCTION_48_0();
  v5 = OUTLINED_FUNCTION_326();
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_10(v7, v91[0]);
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_1(v9, v10, v11, v12, v13, v14, v15, v16, v91[0]);
  v18 = MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_22(v18, v19, v20, v21, v22, v23, v24, v25, v91[0]);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v30);
  v32 = v91 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v34 = OUTLINED_FUNCTION_329(v33);
  OUTLINED_FUNCTION_64_7(v34, xmmword_267F05290);
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_23_15(v35, v36);
  OUTLINED_FUNCTION_244();
  sub_267C2FB6C(v37, v38, v39, &qword_267EFC0B0);
  v40 = sub_267EF79B8();
  OUTLINED_FUNCTION_29_15(v32);
  if (v41)
  {
    sub_267B9F98C(v32, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_169_0();
  }

  else
  {
    OUTLINED_FUNCTION_328();
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_244();
    v42();
  }

  OUTLINED_FUNCTION_12_1();
  v44 = OUTLINED_FUNCTION_230(v43);
  type metadata accessor for SearchForMessagesReadSpokenImageComponentParameters(v44);
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_35_6(v45, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v0);
  if (v41)
  {
    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_218();
    v46();
  }

  OUTLINED_FUNCTION_63_6("componentContext");
  v48 = *(v1 + v47);
  if (v48)
  {
    v49 = type metadata accessor for MessagesMessageComponentDialogContext();
    v50 = v48;
  }

  else
  {
    v49 = OUTLINED_FUNCTION_110_5();
  }

  OUTLINED_FUNCTION_111_2(v49, v50);
  OUTLINED_FUNCTION_50_5(v51, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v4);
  if (v41)
  {

    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_217();
  }

  else
  {
    v34[13].n128_u64[1] = v40;
    __swift_allocate_boxed_opaque_existential_0(&v34[12]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_261();
    v52();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_305();
  v34[14].n128_u64[0] = v4;
  v34[14].n128_u64[1] = v53;
  OUTLINED_FUNCTION_49_3(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v3);
  v54 = v91[1];
  if (v41)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_189_0();
  }

  else
  {
    v34[16].n128_u64[1] = v40;
    __swift_allocate_boxed_opaque_existential_0(&v34[15]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_260();
    v55();
  }

  OUTLINED_FUNCTION_12_1();
  v34[17].n128_u64[0] = v4 + 6;
  v34[17].n128_u64[1] = v56;
  v57 = MEMORY[0x277D839B0];
  v34[18].n128_u8[0] = 0;
  OUTLINED_FUNCTION_12_1();
  v34[19].n128_u64[1] = v57;
  v34[20].n128_u64[0] = v4 + 2;
  OUTLINED_FUNCTION_155_0(v58);
  OUTLINED_FUNCTION_37_10();
  v34[22].n128_u64[1] = v57;
  v34[23].n128_u64[0] = v59;
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_101_4(v60);
  OUTLINED_FUNCTION_38_13();
  v34[25].n128_u64[1] = v57;
  v34[26].n128_u64[0] = v61;
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_56_9(v62);
  OUTLINED_FUNCTION_12_1();
  v34[28].n128_u64[1] = v57;
  v34[29].n128_u64[0] = v63;
  v34[29].n128_u64[1] = v64;
  OUTLINED_FUNCTION_48_4(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v2);
  if (v41)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_242();
  }

  else
  {
    v34[31].n128_u64[1] = v40;
    __swift_allocate_boxed_opaque_existential_0(&v34[30]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_259();
    v65();
  }

  OUTLINED_FUNCTION_12_1();
  v34[32].n128_u64[0] = v4 + 2;
  OUTLINED_FUNCTION_181_0(v66);
  OUTLINED_FUNCTION_35_6(v67, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v54);
  v68 = v91[2];
  if (v41)
  {
    sub_267B9F98C(v54, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_227();
  }

  else
  {
    v34[34].n128_u64[1] = v40;
    __swift_allocate_boxed_opaque_existential_0(&v34[33]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_218();
    v69();
  }

  OUTLINED_FUNCTION_61_10();
  v34[35].n128_u64[0] = v70;
  OUTLINED_FUNCTION_180_0(0xE600000000000000);
  v72 = *(v1 + v71);
  v73 = v91[3];
  if (v72)
  {
    v74 = sub_267EF77C8();
    v75 = v72;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_137_0();
  }

  v34[36].n128_u64[0] = v75;
  v34[37].n128_u64[1] = v74;
  OUTLINED_FUNCTION_108_4();
  OUTLINED_FUNCTION_127_1(v76);
  OUTLINED_FUNCTION_48_4(v77, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v68);
  if (v41)
  {

    sub_267B9F98C(v68, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_198();
  }

  else
  {
    v34[40].n128_u64[1] = v40;
    __swift_allocate_boxed_opaque_existential_0(&v34[39]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_259();
    v78();
  }

  OUTLINED_FUNCTION_70_6();
  v34[41].n128_u64[0] = v79;
  OUTLINED_FUNCTION_48_16();
  OUTLINED_FUNCTION_185_0(v80);
  v82 = *(v1 + v81);
  if (v82)
  {
    v83 = type metadata accessor for MessagesSpokenDialogContext();
    v84 = v82;
  }

  else
  {
    OUTLINED_FUNCTION_76_6();
  }

  OUTLINED_FUNCTION_264(v83, v84);
  OUTLINED_FUNCTION_108_4();
  OUTLINED_FUNCTION_112_4(v85);
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v86);
  OUTLINED_FUNCTION_29_15(v73);
  if (v41)
  {

    sub_267B9F98C(v73, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_187_0();
  }

  else
  {
    v34[46].n128_u64[1] = v40;
    __swift_allocate_boxed_opaque_existential_0(&v34[45]);
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_228();
    v87();
  }

  OUTLINED_FUNCTION_35_14();
  v34[47].n128_u64[0] = v88;
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_179_0(v89);
  LOBYTE(v90) = *(v1 + v90);
  v34[49].n128_u64[1] = v57;
  v34[48].n128_u8[0] = v90;
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

void sub_267D3CD84()
{
  OUTLINED_FUNCTION_48_0();
  v7 = OUTLINED_FUNCTION_243();
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_10(v9, v111);
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_1(v11, v12, v13, v14, v15, v16, v17, v18, v112);
  v20 = MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_22(v20, v21, v22, v23, v24, v25, v26, v27, v113);
  v29 = MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_23(v29, v30, v31, v32, v33, v34, v35, v36, v114);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_194();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_177();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v43 = swift_allocObject();
  v44 = OUTLINED_FUNCTION_64_7(v43, xmmword_267F016C0);
  OUTLINED_FUNCTION_23_15(v44, v45);
  OUTLINED_FUNCTION_150_0();
  sub_267C2FB6C(v46, v47, v48, &qword_267EFC0B0);
  v49 = sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v4);
  if (v50)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_169_0();
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v51();
  }

  v52 = OUTLINED_FUNCTION_224();
  type metadata accessor for SearchForMessagesReadSpokenLinkComponentParameters(v52);
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v53);
  OUTLINED_FUNCTION_7_0(v3);
  if (v50)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v54();
  }

  OUTLINED_FUNCTION_12_1();
  *(v43 + 128) = 0xD000000000000011;
  *(v43 + 136) = v55;
  OUTLINED_FUNCTION_248(&unk_28022AE30, &qword_267EFC0B0, 8);
  OUTLINED_FUNCTION_7_0(v2);
  if (v50)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    OUTLINED_FUNCTION_283();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_170();
    v56();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_287(v57);
  if (v2)
  {
    type metadata accessor for MessagesMessageComponentDialogContext();
    v58 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v43 + 200) = 0;
    *(v43 + 208) = 0;
  }

  *(v43 + 192) = v58;
  OUTLINED_FUNCTION_12_1();
  *(v43 + 216) = v59;
  *(v43 + 224) = 0xD000000000000011;
  *(v43 + 232) = v60;
  OUTLINED_FUNCTION_35_6(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v50)
  {

    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_189_0();
  }

  else
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v61();
  }

  OUTLINED_FUNCTION_118_5();
  OUTLINED_FUNCTION_241(v62);
  OUTLINED_FUNCTION_229_0();
  if (v64)
  {
    v65 = 0;
    *(v43 + 296) = 0;
    *(v43 + 304) = 0;
    v66 = 0;
  }

  else
  {
    v66 = *v63;
    v65 = MEMORY[0x277D839F8];
  }

  *(v43 + 288) = v66;
  *(v43 + 312) = v65;
  *(v43 + 320) = 0x746365666665;
  *(v43 + 328) = 0xE600000000000000;
  OUTLINED_FUNCTION_50_5(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v6);
  if (v50)
  {
    sub_267B9F98C(v6, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_214();
  }

  else
  {
    OUTLINED_FUNCTION_274();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v67();
  }

  OUTLINED_FUNCTION_109_4();
  *(v43 + 368) = v69;
  *(v43 + 376) = v68;
  v70 = MEMORY[0x277D839B0];
  *(v43 + 384) = 0;
  OUTLINED_FUNCTION_107_3();
  *(v43 + 408) = v70;
  *(v43 + 416) = v71;
  OUTLINED_FUNCTION_56_9(v72);
  OUTLINED_FUNCTION_37_10();
  *(v43 + 456) = v70;
  *(v43 + 464) = v73;
  OUTLINED_FUNCTION_25_17();
  *(v43 + 504) = v70;
  *(v43 + 512) = v74;
  OUTLINED_FUNCTION_103_3(0xE900000000000079);
  *(v43 + 528) = v75;
  OUTLINED_FUNCTION_321();
  *(v43 + 560) = v76;
  OUTLINED_FUNCTION_180_0(0xE800000000000000);
  OUTLINED_FUNCTION_49_3(v77, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v5);
  if (v50)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_213();
  }

  else
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v78();
  }

  OUTLINED_FUNCTION_320();
  *(v43 + 608) = v79;
  OUTLINED_FUNCTION_183_0(0xEC00000061746164);
  v81 = *&v1[v80];
  if (v81)
  {
    v82 = type metadata accessor for MessagesLinkMetadata(0);
    v83 = v81;
  }

  else
  {
    OUTLINED_FUNCTION_117_4();
  }

  OUTLINED_FUNCTION_289(v82, v83);
  OUTLINED_FUNCTION_317();
  *(v43 + 656) = v84;
  *(v43 + 664) = 0xE900000000000065;
  LOBYTE(v84) = v1[*"LocationInfo"];
  *(v43 + 696) = v70;
  *(v43 + 672) = v84;
  OUTLINED_FUNCTION_109_4();
  OUTLINED_FUNCTION_112_4(v85);
  sub_267C2FB6C(&v1[v86], v115, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v115);
  if (v50)
  {

    sub_267B9F98C(v115, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_187_0();
  }

  else
  {
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v87();
  }

  OUTLINED_FUNCTION_107_3();
  OUTLINED_FUNCTION_115_2(v88);
  OUTLINED_FUNCTION_280(&unk_28022AE30, &qword_267EFC0B0, v89);
  OUTLINED_FUNCTION_4_38();
  if (v50)
  {
    sub_267B9F98C(v81, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_215();
  }

  else
  {
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v90();
  }

  OUTLINED_FUNCTION_61_10();
  *(v43 + 800) = v91;
  OUTLINED_FUNCTION_184_0(0xE600000000000000);
  v93 = *&v1[v92];
  if (v93)
  {
    v94 = sub_267EF77C8();
    v95 = v93;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_137_0();
  }

  *(v43 + 816) = v95;
  *(v43 + 840) = v94;
  OUTLINED_FUNCTION_104_4();
  *(v43 + 848) = v96;
  OUTLINED_FUNCTION_191_0(v97);
  OUTLINED_FUNCTION_49_3(v98, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v116);
  if (v50)
  {

    sub_267B9F98C(v116, &unk_28022AE30, &qword_267EFC0B0);
    *(v43 + 864) = 0u;
    *(v43 + 880) = 0u;
  }

  else
  {
    *(v43 + 888) = v49;
    __swift_allocate_boxed_opaque_existential_0((v43 + 864));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v99();
  }

  OUTLINED_FUNCTION_70_6();
  *(v43 + 896) = v100;
  OUTLINED_FUNCTION_48_16();
  *(v43 + 904) = v101;
  v102 = *(v1 - 0x10000000);
  if (v102)
  {
    v103 = type metadata accessor for MessagesSpokenDialogContext();
    v104 = v102;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_137_0();
  }

  *(v43 + 912) = v104;
  *(v43 + 936) = v103;
  OUTLINED_FUNCTION_104_4();
  *(v43 + 944) = v105;
  OUTLINED_FUNCTION_272(v106);
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v107);
  OUTLINED_FUNCTION_7_0(v117);
  if (v50)
  {

    sub_267B9F98C(v117, &unk_28022AE30, &qword_267EFC0B0);
    *(v43 + 960) = 0u;
    *(v43 + 976) = 0u;
  }

  else
  {
    *(v43 + 984) = v49;
    __swift_allocate_boxed_opaque_existential_0((v43 + 960));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v108();
  }

  OUTLINED_FUNCTION_35_14();
  *(v43 + 992) = v109;
  OUTLINED_FUNCTION_34_12();
  *(v43 + 1000) = v110;
  LOBYTE(v110) = *v1;
  *(v43 + 1032) = v70;
  *(v43 + 1008) = v110;
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

void sub_267D3D5B4()
{
  OUTLINED_FUNCTION_48_0();
  v6 = OUTLINED_FUNCTION_243();
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_10(v8, v102);
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_1(v10, v11, v12, v13, v14, v15, v16, v17, v103);
  v19 = MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_22(v19, v20, v21, v22, v23, v24, v25, v26, v104);
  v28 = MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_23(v28, v29, v30, v31, v32, v33, v34, v35, v105);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_194();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_141();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v42 = OUTLINED_FUNCTION_285(v41);
  v43 = OUTLINED_FUNCTION_64_7(v42, xmmword_267F01670);
  v45 = OUTLINED_FUNCTION_113_4(v43, v44);
  sub_267C2FB6C(v45, v46, v47, &qword_267EFC0B0);
  v48 = sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v3);
  if (v49)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_169_0();
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v50();
  }

  OUTLINED_FUNCTION_12_1();
  v52 = OUTLINED_FUNCTION_230(v51);
  type metadata accessor for SearchForMessagesReadSpokenLocationComponentParameters(v52);
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_248(&unk_28022AE30, &qword_267EFC0B0, v53);
  OUTLINED_FUNCTION_7_0(v2);
  if (v49)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_170();
    v54();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_192_0(v55);
  v57 = *(v1 + v56);
  if (v57)
  {
    type metadata accessor for MessagesMessageComponentDialogContext();
    v58 = v57;
  }

  else
  {
    OUTLINED_FUNCTION_110_5();
  }

  v42[9].n128_u64[0] = v58;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_253(v59, v60);
  OUTLINED_FUNCTION_35_6(v61, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v49)
  {

    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_217();
  }

  else
  {
    OUTLINED_FUNCTION_284();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v62();
  }

  OUTLINED_FUNCTION_12_1();
  v42[14].n128_u64[0] = 0xD000000000000017;
  v42[14].n128_u64[1] = v63;
  v64 = MEMORY[0x277D839B0];
  v42[15].n128_u8[0] = 0;
  OUTLINED_FUNCTION_12_1();
  v42[16].n128_u64[1] = v64;
  v42[17].n128_u64[0] = 0xD000000000000013;
  v42[17].n128_u64[1] = v65;
  v42[18].n128_u8[0] = *(v1 + 8);
  OUTLINED_FUNCTION_37_10();
  v42[19].n128_u64[1] = v64;
  v42[20].n128_u64[0] = v66;
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_155_0(v67);
  OUTLINED_FUNCTION_38_13();
  v42[22].n128_u64[1] = v64;
  v42[23].n128_u64[0] = v68;
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_101_4(v69);
  OUTLINED_FUNCTION_318();
  v42[25].n128_u64[1] = v64;
  v42[26].n128_u64[0] = v70;
  v42[26].n128_u64[1] = 0xE800000000000000;
  v71 = *(v1 + 0x8000000);
  if (v71)
  {
    sub_267EF75E8();
    v72 = v71;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v42[27].n128_u64[1] = 0;
    v42[28].n128_u64[0] = 0;
  }

  v42[27].n128_u64[0] = v72;
  OUTLINED_FUNCTION_12_1();
  v42[28].n128_u64[1] = v73;
  v42[29].n128_u64[0] = 0xD000000000000013;
  v42[29].n128_u64[1] = v74;
  OUTLINED_FUNCTION_50_5(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v5);
  if (v49)
  {

    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_242();
  }

  else
  {
    v42[31].n128_u64[1] = v48;
    __swift_allocate_boxed_opaque_existential_0(&v42[30]);
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v75();
  }

  OUTLINED_FUNCTION_12_1();
  v42[32].n128_u64[0] = 0xD000000000000017;
  OUTLINED_FUNCTION_181_0(v76);
  OUTLINED_FUNCTION_49_3(v77, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v4);
  if (v49)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_227();
  }

  else
  {
    OUTLINED_FUNCTION_331();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v78();
  }

  OUTLINED_FUNCTION_12_1();
  v42[35].n128_u64[0] = 0xD000000000000013;
  OUTLINED_FUNCTION_180_0(v79);
  OUTLINED_FUNCTION_35_6(v80, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v49)
  {
    sub_267B9F98C(v106, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_213();
  }

  else
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v81();
  }

  OUTLINED_FUNCTION_61_10();
  OUTLINED_FUNCTION_176_0(v82);
  if (v106)
  {
    v83 = sub_267EF77C8();
    v84 = v106;
  }

  else
  {
    OUTLINED_FUNCTION_117_4();
  }

  OUTLINED_FUNCTION_289(v83, v84);
  OUTLINED_FUNCTION_61_10();
  v42[41].n128_u64[0] = v85 & 0xFFFFFFFFFFFFLL | 0x7250000000000000;
  OUTLINED_FUNCTION_312_0();
  OUTLINED_FUNCTION_185_0(v86);
  OUTLINED_FUNCTION_48_4(v87, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v107);
  if (v49)
  {

    sub_267B9F98C(v107, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_216();
  }

  else
  {
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v88();
  }

  OUTLINED_FUNCTION_12_1();
  v42[44].n128_u64[0] = 0xD000000000000012;
  OUTLINED_FUNCTION_182_0(v89);
  sub_267C2FB6C(v1 + v90, v108, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v49)
  {
    sub_267B9F98C(v108, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_187_0();
  }

  else
  {
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v91();
  }

  OUTLINED_FUNCTION_70_6();
  v42[47].n128_u64[0] = v92;
  OUTLINED_FUNCTION_48_16();
  OUTLINED_FUNCTION_179_0(v93);
  v95 = *(v1 + v94);
  if (v95)
  {
    v96 = type metadata accessor for MessagesSpokenDialogContext();
    v97 = v95;
  }

  else
  {
    OUTLINED_FUNCTION_75_5();
  }

  v42[48].n128_u64[0] = v97;
  v42[49].n128_u64[1] = v96;
  OUTLINED_FUNCTION_12_1();
  v42[50].n128_u64[0] = 0xD000000000000012;
  OUTLINED_FUNCTION_184_0(v98);
  sub_267C2FB6C(v1 + v99, v109, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v109);
  if (v49)
  {

    sub_267B9F98C(v109, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_197_0();
  }

  else
  {
    OUTLINED_FUNCTION_276();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v100();
  }

  OUTLINED_FUNCTION_24_14();
  v42[55].n128_u64[1] = v64;
  v42[54].n128_u8[0] = v101;
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

void sub_267D3DCF8()
{
  OUTLINED_FUNCTION_48_0();
  v7 = OUTLINED_FUNCTION_243();
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_10(v9, v118);
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_1(v11, v12, v13, v14, v15, v16, v17, v18, v119);
  v20 = MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_22(v20, v21, v22, v23, v24, v25, v26, v27, v120);
  v29 = MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_23(v29, v30, v31, v32, v33, v34, v35, v36, v121);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_194();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_177();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v44 = OUTLINED_FUNCTION_330(v43);
  v45 = OUTLINED_FUNCTION_64_7(v44, xmmword_267F052A0);
  OUTLINED_FUNCTION_23_15(v45, v46);
  OUTLINED_FUNCTION_150_0();
  sub_267C2FB6C(v47, v48, v49, &qword_267EFC0B0);
  v50 = sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v4);
  if (v51)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_169_0();
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v52();
  }

  OUTLINED_FUNCTION_12_1();
  v54 = OUTLINED_FUNCTION_311(v53);
  type metadata accessor for SearchForMessagesReadSpokenPaymentComponentParameters(v54);
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v55);
  OUTLINED_FUNCTION_7_0(v3);
  if (v51)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v56();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_192_0(v57);
  v59 = *(v1 + v58);
  if (v59)
  {
    type metadata accessor for MessagesMessageComponentDialogContext();
    v60 = v59;
  }

  else
  {
    OUTLINED_FUNCTION_110_5();
  }

  v44[9].n128_u64[0] = v60;
  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_199_0(v61, v62);
  if (v64)
  {
    v65 = OUTLINED_FUNCTION_299();
  }

  else
  {
    v65 = *v63;
  }

  v44[12].n128_f64[0] = v65;
  OUTLINED_FUNCTION_202();
  v44[13].n128_u64[1] = v66;
  v44[14].n128_u64[0] = v4;
  v44[14].n128_u64[1] = v67;
  OUTLINED_FUNCTION_248(&unk_28022AE30, &qword_267EFC0B0, 8);
  OUTLINED_FUNCTION_7_0(v2);
  if (v51)
  {

    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_189_0();
  }

  else
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_170();
    v68();
  }

  OUTLINED_FUNCTION_105_5();
  OUTLINED_FUNCTION_241(v69);
  OUTLINED_FUNCTION_35_6(v70, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v51)
  {
    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_263();
  }

  else
  {
    v44[19].n128_u64[1] = v50;
    __swift_allocate_boxed_opaque_existential_0(&v44[18]);
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v71();
  }

  OUTLINED_FUNCTION_109_4();
  v44[20].n128_u64[0] = v73;
  v44[20].n128_u64[1] = v72;
  v74 = MEMORY[0x277D839B0];
  v44[21].n128_u8[0] = 0;
  OUTLINED_FUNCTION_107_3();
  v44[22].n128_u64[1] = v74;
  v44[23].n128_u64[0] = v75;
  OUTLINED_FUNCTION_101_4(v76);
  OUTLINED_FUNCTION_37_10();
  v44[25].n128_u64[1] = v74;
  v44[26].n128_u64[0] = v77;
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_56_9(v78);
  OUTLINED_FUNCTION_38_13();
  v44[28].n128_u64[1] = v74;
  v44[29].n128_u64[0] = v79;
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_49_11(v80);
  OUTLINED_FUNCTION_147_0();
  v44[31].n128_u64[1] = v74;
  v44[32].n128_u64[0] = v81 & 0xFFFFFFFFFFFFLL | 0x4174000000000000;
  OUTLINED_FUNCTION_310();
  OUTLINED_FUNCTION_181_0(v82);
  v84 = *(v1 + v83);
  if (v84)
  {
    v85 = sub_267EF7848();
    v86 = v84;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_137_0();
  }

  v44[33].n128_u64[0] = v86;
  v44[34].n128_u64[1] = v85;
  OUTLINED_FUNCTION_147_0();
  v44[35].n128_u64[0] = v87 & 0xFFFFFFFFFFFFLL | 0x4E74000000000000;
  OUTLINED_FUNCTION_180_0(0xEB0000000065746FLL);
  OUTLINED_FUNCTION_50_5(v88, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v6);
  if (v51)
  {

    sub_267B9F98C(v6, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_213();
  }

  else
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v89();
  }

  OUTLINED_FUNCTION_147_0();
  v44[38].n128_u64[0] = v90 & 0xFFFFFFFFFFFFLL | 0x5474000000000000;
  v44[38].n128_u64[1] = 0xEB00000000657079;
  OUTLINED_FUNCTION_49_3(0, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v5);
  if (v51)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_198();
  }

  else
  {
    OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v91();
  }

  OUTLINED_FUNCTION_109_4();
  OUTLINED_FUNCTION_145_0(v92);
  OUTLINED_FUNCTION_50_5(v93, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v122);
  if (v51)
  {
    sub_267B9F98C(v122, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_216();
  }

  else
  {
    OUTLINED_FUNCTION_279();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v94();
  }

  OUTLINED_FUNCTION_107_3();
  OUTLINED_FUNCTION_112_4(v95);
  OUTLINED_FUNCTION_35_6(v96, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v51)
  {
    sub_267B9F98C(v123, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_187_0();
  }

  else
  {
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v97();
  }

  OUTLINED_FUNCTION_61_10();
  v44[47].n128_u64[0] = v98;
  OUTLINED_FUNCTION_179_0(0xE600000000000000);
  v100 = *(v1 + v99);
  if (v100)
  {
    v101 = sub_267EF77C8();
    v102 = v100;
  }

  else
  {
    OUTLINED_FUNCTION_75_5();
  }

  OUTLINED_FUNCTION_313(v101, v102);
  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_143_1(v103);
  OUTLINED_FUNCTION_49_3(v104, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v124);
  if (v51)
  {

    sub_267B9F98C(v124, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_197_0();
  }

  else
  {
    OUTLINED_FUNCTION_276();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v105();
  }

  OUTLINED_FUNCTION_70_6();
  v44[53].n128_u64[0] = v106;
  OUTLINED_FUNCTION_48_16();
  OUTLINED_FUNCTION_191_0(v107);
  v109 = *(v1 + v108);
  if (v109)
  {
    v110 = type metadata accessor for MessagesSpokenDialogContext();
    v111 = v109;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_137_0();
  }

  v44[54].n128_u64[0] = v111;
  v44[55].n128_u64[1] = v110;
  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_210(v112);
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v113);
  OUTLINED_FUNCTION_7_0(v125);
  if (v51)
  {

    sub_267B9F98C(v125, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_262();
  }

  else
  {
    OUTLINED_FUNCTION_286();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v114();
  }

  OUTLINED_FUNCTION_35_14();
  v44[59].n128_u64[0] = v115;
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_272(v116);
  LOBYTE(v117) = *(v1 + v117);
  v44[61].n128_u64[1] = v74;
  v44[60].n128_u8[0] = v117;
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

void sub_267D3E4D4()
{
  OUTLINED_FUNCTION_48_0();
  v6 = OUTLINED_FUNCTION_326();
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_10(v8, v75);
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_1(v10, v11, v12, v13, v14, v15, v16, v17, v76);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_142();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v23 = swift_allocObject();
  v24 = OUTLINED_FUNCTION_64_7(v23, xmmword_267EFE500);
  OUTLINED_FUNCTION_23_15(v24, v25);
  OUTLINED_FUNCTION_218();
  sub_267C2FB6C(v26, v27, v28, &qword_267EFC0B0);
  v29 = sub_267EF79B8();
  OUTLINED_FUNCTION_29_15(v0);
  if (v30)
  {
    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_169_0();
  }

  else
  {
    OUTLINED_FUNCTION_328();
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_218();
    v31();
  }

  OUTLINED_FUNCTION_12_1();
  *(v23 + 80) = 0xD000000000000011;
  *(v23 + 88) = v32;
  type metadata accessor for SearchForMessagesReadSpokenReactionComponentParameters(0);
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_50_5(v33, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v5);
  if (v30)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_261();
    v34();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_305();
  *(v23 + 128) = v5;
  *(v23 + 136) = v35;
  OUTLINED_FUNCTION_49_3(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v4);
  if (v30)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    *(v23 + 168) = v29;
    __swift_allocate_boxed_opaque_existential_0((v23 + 144));
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_260();
    v36();
  }

  OUTLINED_FUNCTION_12_1();
  *(v23 + 176) = v5 + 6;
  *(v23 + 184) = v37;
  v38 = MEMORY[0x277D839B0];
  *(v23 + 192) = 0;
  OUTLINED_FUNCTION_12_1();
  *(v23 + 216) = v38;
  *(v23 + 224) = v5 + 2;
  *(v23 + 232) = v39;
  *(v23 + 240) = *(v1 + 0x8000000);
  OUTLINED_FUNCTION_37_10();
  *(v23 + 264) = v38;
  *(v23 + 272) = v40;
  OUTLINED_FUNCTION_36_13();
  *(v23 + 280) = v41;
  *(v23 + 288) = *(v1 + 8);
  OUTLINED_FUNCTION_38_13();
  *(v23 + 312) = v38;
  *(v23 + 320) = v42;
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_155_0(v43);
  OUTLINED_FUNCTION_308();
  *(v23 + 360) = v38;
  *(v23 + 368) = v44;
  OUTLINED_FUNCTION_307();
  *(v23 + 376) = v45;
  v46 = *(v1 + 8);
  if (v46)
  {
    type metadata accessor for MessagesReactionComponentDialogContext(0);
    v47 = v46;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v23 + 392) = 0;
    *(v23 + 400) = 0;
  }

  *(v23 + 384) = v47;
  OUTLINED_FUNCTION_12_1();
  *(v23 + 408) = v48;
  *(v23 + 416) = v5 + 6;
  *(v23 + 424) = v49;
  OUTLINED_FUNCTION_48_4(0x8000000, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_29_15(v3);
  if (v30)
  {

    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    *(v23 + 432) = 0u;
    *(v23 + 448) = 0u;
  }

  else
  {
    *(v23 + 456) = v29;
    __swift_allocate_boxed_opaque_existential_0((v23 + 432));
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_259();
    v50();
  }

  OUTLINED_FUNCTION_12_1();
  *(v23 + 464) = v5 + 2;
  *(v23 + 472) = v51;
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, 8);
  OUTLINED_FUNCTION_29_15(v2);
  if (v30)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_242();
  }

  else
  {
    *(v23 + 504) = v29;
    __swift_allocate_boxed_opaque_existential_0((v23 + 480));
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_228();
    v52();
  }

  OUTLINED_FUNCTION_61_10();
  *(v23 + 512) = v53 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  OUTLINED_FUNCTION_181_0(0xE700000000000000);
  v55 = *(v1 + v54);
  *(v23 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v23 + 528) = v55;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_144(v56);
  LOBYTE(v57) = *(v1 + v57);
  *(v23 + 600) = v38;
  *(v23 + 576) = v57;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_127_1(v58);
  LOBYTE(v59) = *(v1 + v59);
  *(v23 + 648) = v38;
  *(v23 + 624) = v59;
  OUTLINED_FUNCTION_108_4();
  OUTLINED_FUNCTION_145_0(v60);
  OUTLINED_FUNCTION_325(&unk_28022AE30, &qword_267EFC0B0, v61);
  OUTLINED_FUNCTION_29_15(v77);
  if (v30)
  {

    sub_267B9F98C(v77, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_216();
  }

  else
  {
    *(v23 + 696) = v29;
    __swift_allocate_boxed_opaque_existential_0((v23 + 672));
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_244();
    v62();
  }

  OUTLINED_FUNCTION_70_6();
  *(v23 + 704) = v63;
  OUTLINED_FUNCTION_48_16();
  OUTLINED_FUNCTION_182_0(v64);
  v66 = *(v1 + v65);
  if (v66)
  {
    v67 = type metadata accessor for MessagesSpokenDialogContext();
    v68 = v66;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_137_0();
  }

  *(v23 + 720) = v68;
  *(v23 + 744) = v67;
  OUTLINED_FUNCTION_108_4();
  OUTLINED_FUNCTION_115_2(v69);
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v70);
  OUTLINED_FUNCTION_29_15(v78);
  if (v30)
  {

    sub_267B9F98C(v78, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_215();
  }

  else
  {
    *(v23 + 792) = v29;
    __swift_allocate_boxed_opaque_existential_0((v23 + 768));
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_228();
    v71();
  }

  OUTLINED_FUNCTION_35_14();
  *(v23 + 800) = v72;
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_184_0(v73);
  LOBYTE(v74) = *(v1 + v74);
  *(v23 + 840) = v38;
  *(v23 + 816) = v74;
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

void sub_267D3EB3C()
{
  OUTLINED_FUNCTION_48_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_10(v8, v109);
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_1(v10, v11, v12, v13, v14, v15, v16, v17, v110);
  v19 = MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_22(v19, v20, v21, v22, v23, v24, v25, v26, v111);
  v28 = MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_23(v28, v29, v30, v31, v32, v33, v34, v35, v112);
  v37 = MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18_12(v37, v38, v39, v40, v41, v42, v43, v44, v113);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_77_0();
  v47 = v46;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_77_0();
  v115 = v49;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_77_0();
  v114 = v51;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_142();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v58 = OUTLINED_FUNCTION_330(v57);
  v59 = OUTLINED_FUNCTION_64_7(v58, xmmword_267F052A0);
  v59[2].n128_u64[0] = 0xD000000000000014;
  v59[2].n128_u64[1] = v60;
  OUTLINED_FUNCTION_36_5();
  sub_267C2FB6C(v61, v62, v63, &qword_267EFC0B0);
  v64 = sub_267EF79B8();
  OUTLINED_FUNCTION_0_11(v0);
  if (v65)
  {
    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_294_0();
  }

  else
  {
    *(v58 + 72) = v64;
    __swift_allocate_boxed_opaque_existential_0((v58 + 48));
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_36_5();
    v66();
  }

  OUTLINED_FUNCTION_12_1();
  *(v58 + 80) = 0xD000000000000011;
  *(v58 + 88) = v67;
  SpokenSafetySessionComponentParameters = type metadata accessor for SearchForMessagesReadSpokenSafetySessionComponentParameters(0);
  OUTLINED_FUNCTION_50_5(SpokenSafetySessionComponentParameters[5], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v5);
  if (v65)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_129_0();
  }

  else
  {
    *(v58 + 120) = v64;
    __swift_allocate_boxed_opaque_existential_0((v58 + 96));
    OUTLINED_FUNCTION_2_2();
    (*(v69 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v58 + 128) = 0xD000000000000011;
  *(v58 + 136) = v70;
  OUTLINED_FUNCTION_49_3(SpokenSafetySessionComponentParameters[6], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v4);
  if (v65)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_128_0();
  }

  else
  {
    *(v58 + 168) = v64;
    __swift_allocate_boxed_opaque_existential_0((v58 + 144));
    OUTLINED_FUNCTION_2_2();
    (*(v71 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v58 + 176) = 0xD000000000000010;
  *(v58 + 184) = v72;
  OUTLINED_FUNCTION_48_4(SpokenSafetySessionComponentParameters[7], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v3);
  if (v65)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 192) = 0u;
    *(v58 + 208) = 0u;
  }

  else
  {
    *(v58 + 216) = v64;
    __swift_allocate_boxed_opaque_existential_0((v58 + 192));
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_104_3();
    v73();
  }

  OUTLINED_FUNCTION_12_1();
  *(v58 + 224) = 0xD000000000000017;
  *(v58 + 232) = v74;
  *(v58 + 240) = 0;
  OUTLINED_FUNCTION_12_1();
  *(v58 + 264) = v75;
  *(v58 + 272) = 0xD000000000000013;
  *(v58 + 280) = v76;
  *(v58 + 288) = *(v1 + SpokenSafetySessionComponentParameters[8]);
  OUTLINED_FUNCTION_108_4();
  *(v58 + 312) = v78;
  *(v58 + 320) = v77;
  *(v58 + 328) = v79;
  *(v58 + 336) = *(v1 + SpokenSafetySessionComponentParameters[9]);
  OUTLINED_FUNCTION_37_10();
  *(v58 + 360) = v81;
  *(v58 + 368) = v80;
  OUTLINED_FUNCTION_36_13();
  *(v58 + 376) = v82;
  *(v58 + 384) = *(v1 + SpokenSafetySessionComponentParameters[10]);
  OUTLINED_FUNCTION_38_13();
  *(v58 + 408) = v84;
  *(v58 + 416) = v83;
  OUTLINED_FUNCTION_171_0();
  *(v58 + 424) = v85;
  *(v58 + 432) = *(v1 + SpokenSafetySessionComponentParameters[11]);
  OUTLINED_FUNCTION_12_1();
  *(v58 + 456) = v86;
  *(v58 + 464) = 0xD000000000000015;
  *(v58 + 472) = v87;
  OUTLINED_FUNCTION_325(&unk_28022AE30, &qword_267EFC0B0, SpokenSafetySessionComponentParameters[12]);
  OUTLINED_FUNCTION_0_11(v2);
  if (v65)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 480) = 0u;
    *(v58 + 496) = 0u;
  }

  else
  {
    *(v58 + 504) = v64;
    __swift_allocate_boxed_opaque_existential_0((v58 + 480));
    OUTLINED_FUNCTION_2_2();
    (*(v88 + 32))();
  }

  *(v58 + 512) = 0x546567617373656DLL;
  *(v58 + 520) = 0xEB00000000657079;
  OUTLINED_FUNCTION_281(&unk_28022AE30, &qword_267EFC0B0, SpokenSafetySessionComponentParameters[13]);
  OUTLINED_FUNCTION_0_11(v114);
  if (v65)
  {
    sub_267B9F98C(v114, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 528) = 0u;
    *(v58 + 544) = 0u;
  }

  else
  {
    *(v58 + 552) = v64;
    __swift_allocate_boxed_opaque_existential_0((v58 + 528));
    OUTLINED_FUNCTION_2_2();
    (*(v89 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v58 + 560) = 0xD000000000000017;
  *(v58 + 568) = v90;
  OUTLINED_FUNCTION_48_4(SpokenSafetySessionComponentParameters[14], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v115);
  if (v65)
  {
    sub_267B9F98C(v115, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 576) = 0u;
    *(v58 + 592) = 0u;
  }

  else
  {
    *(v58 + 600) = v64;
    __swift_allocate_boxed_opaque_existential_0((v58 + 576));
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_104_3();
    v91();
  }

  OUTLINED_FUNCTION_12_1();
  *(v58 + 608) = 0xD000000000000013;
  *(v58 + 616) = v92;
  OUTLINED_FUNCTION_35_6(SpokenSafetySessionComponentParameters[15], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v47);
  if (v65)
  {
    sub_267B9F98C(v47, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 624) = 0u;
    *(v58 + 640) = 0u;
  }

  else
  {
    *(v58 + 648) = v64;
    __swift_allocate_boxed_opaque_existential_0((v58 + 624));
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_36_5();
    v93();
  }

  OUTLINED_FUNCTION_61_10();
  *(v58 + 656) = v94;
  *(v58 + 664) = 0xE600000000000000;
  v95 = *(v1 + SpokenSafetySessionComponentParameters[16]);
  if (v95)
  {
    v96 = sub_267EF77C8();
    v97 = v95;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_137_0();
  }

  *(v58 + 672) = v97;
  *(v58 + 696) = v96;
  OUTLINED_FUNCTION_12_1();
  *(v58 + 704) = 0xD000000000000010;
  *(v58 + 712) = v98;
  sub_267C2FB6C(v1 + SpokenSafetySessionComponentParameters[17], v116, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v116);
  if (v65)
  {

    sub_267B9F98C(v116, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 720) = 0u;
    *(v58 + 736) = 0u;
  }

  else
  {
    *(v58 + 744) = v64;
    __swift_allocate_boxed_opaque_existential_0((v58 + 720));
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_104_3();
    v99();
  }

  strcpy((v58 + 752), "sessionEndTime");
  *(v58 + 767) = -18;
  OUTLINED_FUNCTION_49_3(SpokenSafetySessionComponentParameters[18], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v117);
  if (v65)
  {
    sub_267B9F98C(v117, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 768) = 0u;
    *(v58 + 784) = 0u;
  }

  else
  {
    *(v58 + 792) = v64;
    __swift_allocate_boxed_opaque_existential_0((v58 + 768));
    OUTLINED_FUNCTION_2_2();
    (*(v100 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v58 + 800) = 0xD000000000000012;
  *(v58 + 808) = v101;
  OUTLINED_FUNCTION_325(&unk_28022AE30, &qword_267EFC0B0, SpokenSafetySessionComponentParameters[19]);
  OUTLINED_FUNCTION_0_11(v118);
  if (v65)
  {
    sub_267B9F98C(v118, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 816) = 0u;
    *(v58 + 832) = 0u;
  }

  else
  {
    *(v58 + 840) = v64;
    __swift_allocate_boxed_opaque_existential_0((v58 + 816));
    OUTLINED_FUNCTION_2_2();
    (*(v102 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v58 + 848) = 0xD000000000000010;
  *(v58 + 856) = v103;
  OUTLINED_FUNCTION_281(&unk_28022AE30, &qword_267EFC0B0, SpokenSafetySessionComponentParameters[20]);
  OUTLINED_FUNCTION_0_11(v119);
  if (v65)
  {
    sub_267B9F98C(v119, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 864) = 0u;
    *(v58 + 880) = 0u;
  }

  else
  {
    *(v58 + 888) = v64;
    __swift_allocate_boxed_opaque_existential_0((v58 + 864));
    OUTLINED_FUNCTION_2_2();
    (*(v104 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v58 + 896) = 0xD000000000000012;
  *(v58 + 904) = v105;
  OUTLINED_FUNCTION_35_6(SpokenSafetySessionComponentParameters[21], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v120);
  if (v65)
  {
    sub_267B9F98C(v120, &unk_28022AE30, &qword_267EFC0B0);
    *(v58 + 912) = 0u;
    *(v58 + 928) = 0u;
  }

  else
  {
    *(v58 + 936) = v64;
    __swift_allocate_boxed_opaque_existential_0((v58 + 912));
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_36_5();
    v106();
  }

  OUTLINED_FUNCTION_35_14();
  *(v58 + 944) = v107;
  OUTLINED_FUNCTION_34_12();
  *(v58 + 952) = v108;
  LOBYTE(v108) = *(v1 + SpokenSafetySessionComponentParameters[22]);
  *(v58 + 984) = MEMORY[0x277D839B0];
  *(v58 + 960) = v108;
  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_47();
}

void sub_267D3F5A4()
{
  OUTLINED_FUNCTION_48_0();
  v7 = OUTLINED_FUNCTION_243();
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_10(v9, v124);
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_1(v11, v12, v13, v14, v15, v16, v17, v18, v125);
  v20 = MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_22(v20, v21, v22, v23, v24, v25, v26, v27, v126);
  v29 = MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_23(v29, v30, v31, v32, v33, v34, v35, v36, v127);
  v38 = MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_18_12(v38, v39, v40, v41, v42, v43, v44, v45, v128);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_77_0();
  v130 = v47;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_77_0();
  v129 = v49;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_194();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_142();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_267F052B0;
  *(v56 + 32) = 0x65646F4368747561;
  *(v56 + 40) = 0xE800000000000000;
  OUTLINED_FUNCTION_178();
  sub_267C2FB6C(v57, v58, v59, &qword_267EFC0B0);
  v60 = sub_267EF79B8();
  OUTLINED_FUNCTION_4_38();
  if (v61)
  {
    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_169_0();
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v62();
  }

  OUTLINED_FUNCTION_12_1();
  *(v56 + 80) = v63 + 1;
  *(v56 + 88) = v64;
  type metadata accessor for SearchForMessagesReadSpokenTextComponentParameters(0);
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_50_5(v65, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v6);
  if (v61)
  {
    sub_267B9F98C(v6, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_159_0();
    v66();
  }

  OUTLINED_FUNCTION_12_1();
  *(v56 + 128) = 0xD000000000000011;
  *(v56 + 136) = v67;
  OUTLINED_FUNCTION_49_3(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v5);
  if (v61)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    OUTLINED_FUNCTION_283();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v68();
  }

  OUTLINED_FUNCTION_12_1();
  *(v56 + 176) = 0xD000000000000010;
  *(v56 + 184) = v69;
  v70 = v1[0x1000000];
  if (v70)
  {
    type metadata accessor for MessagesMessageComponentDialogContext();
    v71 = v70;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v56 + 200) = 0;
    *(v56 + 208) = 0;
  }

  *(v56 + 192) = v71;
  OUTLINED_FUNCTION_119_3();
  *(v56 + 216) = v72;
  *(v56 + 224) = v73;
  *(v56 + 232) = 0xE700000000000000;
  OUTLINED_FUNCTION_48_4(8, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v4);
  if (v61)
  {

    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_189_0();
  }

  else
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v74();
  }

  OUTLINED_FUNCTION_12_1();
  *(v56 + 272) = 0xD000000000000013;
  *(v56 + 280) = v75;
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, 0x8000000);
  OUTLINED_FUNCTION_7_0(v3);
  if (v61)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_263();
  }

  else
  {
    *(v56 + 312) = v60;
    __swift_allocate_boxed_opaque_existential_0((v56 + 288));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v76();
  }

  OUTLINED_FUNCTION_12_1();
  *(v56 + 320) = 0xD000000000000013;
  *(v56 + 328) = v77;
  OUTLINED_FUNCTION_248(&unk_28022AE30, &qword_267EFC0B0, 8);
  OUTLINED_FUNCTION_7_0(v2);
  if (v61)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_214();
  }

  else
  {
    OUTLINED_FUNCTION_274();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_170();
    v78();
  }

  OUTLINED_FUNCTION_12_1();
  *(v56 + 368) = 0xD000000000000011;
  *(v56 + 376) = v79;
  sub_267C2FB6C((v1 + 0x1000000), v129, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v61)
  {
    sub_267B9F98C(v129, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_291();
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v80();
  }

  OUTLINED_FUNCTION_105_5();
  *(v56 + 416) = v81;
  *(v56 + 424) = 0xE600000000000000;
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, 8);
  OUTLINED_FUNCTION_7_0(v130);
  if (v61)
  {
    sub_267B9F98C(v130, &unk_28022AE30, &qword_267EFC0B0);
    *(v56 + 432) = 0u;
    *(v56 + 448) = 0u;
  }

  else
  {
    *(v56 + 456) = v60;
    __swift_allocate_boxed_opaque_existential_0((v56 + 432));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_136();
    v82();
  }

  OUTLINED_FUNCTION_12_1();
  *(v56 + 464) = 0xD000000000000017;
  *(v56 + 472) = v83;
  v84 = MEMORY[0x277D839B0];
  *(v56 + 480) = 0;
  OUTLINED_FUNCTION_12_1();
  *(v56 + 504) = v84;
  *(v56 + 512) = 0xD000000000000013;
  OUTLINED_FUNCTION_181_0(v85);
  LOBYTE(v86) = *(v1 + v86);
  *(v56 + 552) = v84;
  *(v56 + 528) = v86;
  OUTLINED_FUNCTION_37_10();
  *(v56 + 560) = v87;
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_180_0(v88);
  LOBYTE(v89) = *(v1 + v89);
  *(v56 + 600) = v84;
  *(v56 + 576) = v89;
  *(v56 + 608) = 0x654D676E6F4C7369;
  OUTLINED_FUNCTION_183_0(0xED00006567617373);
  LOBYTE(v90) = *(v1 + v90);
  *(v56 + 648) = v84;
  *(v56 + 624) = v90;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_145_0(v91);
  LOBYTE(v92) = *(v1 + v92);
  *(v56 + 696) = v84;
  *(v56 + 672) = v92;
  OUTLINED_FUNCTION_38_13();
  *(v56 + 704) = v93;
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_182_0(v94);
  LOBYTE(v95) = *(v1 + v95);
  *(v56 + 744) = v84;
  *(v56 + 720) = v95;
  OUTLINED_FUNCTION_304();
  *(v56 + 752) = v96;
  OUTLINED_FUNCTION_179_0(0xEC00000064657461);
  LOBYTE(v97) = *(v1 + v97);
  *(v56 + 792) = v84;
  *(v56 + 768) = v97;
  *(v56 + 800) = 0x536567617373656DLL;
  OUTLINED_FUNCTION_184_0(0xEE007972616D6D75);
  OUTLINED_FUNCTION_48_4(v98, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v131);
  if (v61)
  {
    sub_267B9F98C(v131, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_197_0();
  }

  else
  {
    OUTLINED_FUNCTION_276();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v99();
  }

  OUTLINED_FUNCTION_296();
  *(v56 + 848) = v100;
  OUTLINED_FUNCTION_191_0(0xEB00000000746E65);
  LOBYTE(v101) = *(v1 + v101);
  *(v56 + 888) = v84;
  *(v56 + 864) = v101;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_210(v102);
  OUTLINED_FUNCTION_248(&unk_28022AE30, &qword_267EFC0B0, v103);
  OUTLINED_FUNCTION_7_0(v132);
  if (v61)
  {
    sub_267B9F98C(v132, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_262();
  }

  else
  {
    OUTLINED_FUNCTION_286();
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_170();
    v104();
  }

  OUTLINED_FUNCTION_12_1();
  *(v56 + 944) = 0xD000000000000013;
  OUTLINED_FUNCTION_272(v105);
  OUTLINED_FUNCTION_35_6(v106, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_4_38();
  if (v61)
  {
    sub_267B9F98C(v133, &unk_28022AE30, &qword_267EFC0B0);
    *(v56 + 960) = 0u;
    *(v56 + 976) = 0u;
  }

  else
  {
    *(v56 + 984) = v60;
    __swift_allocate_boxed_opaque_existential_0((v56 + 960));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_178();
    v107();
  }

  OUTLINED_FUNCTION_61_10();
  *(v56 + 992) = v108;
  *(v56 + 1000) = 0xE600000000000000;
  v109 = *v1;
  if (*v1)
  {
    v110 = sub_267EF77C8();
    v111 = v109;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_137_0();
  }

  *(v56 + 1008) = v111;
  *(v56 + 1032) = v110;
  OUTLINED_FUNCTION_251_0();
  *(v56 + 1040) = v112 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
  *(v56 + 1048) = 0xEE0065646F436461;
  LOBYTE(v112) = *v1;
  *(v56 + 1080) = v84;
  *(v56 + 1056) = v112;
  OUTLINED_FUNCTION_12_1();
  *(v56 + 1088) = 0xD000000000000012;
  *(v56 + 1096) = v113;
  OUTLINED_FUNCTION_49_3(0x8000000, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v134);
  if (v61)
  {

    sub_267B9F98C(v134, &unk_28022AE30, &qword_267EFC0B0);
    *(v56 + 1104) = 0u;
    *(v56 + 1120) = 0u;
  }

  else
  {
    *(v56 + 1128) = v60;
    __swift_allocate_boxed_opaque_existential_0((v56 + 1104));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_158_1();
    v114();
  }

  OUTLINED_FUNCTION_70_6();
  *(v56 + 1136) = v115;
  OUTLINED_FUNCTION_48_16();
  *(v56 + 1144) = v116;
  v117 = *v1;
  if (*v1)
  {
    v118 = type metadata accessor for MessagesSpokenDialogContext();
    v119 = v117;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_137_0();
  }

  *(v56 + 1152) = v119;
  *(v56 + 1176) = v118;
  OUTLINED_FUNCTION_12_1();
  *(v56 + 1184) = 0xD000000000000012;
  *(v56 + 1192) = v120;
  sub_267C2FB6C((v1 + 0x1000000), v135, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v135);
  if (v61)
  {

    sub_267B9F98C(v135, &unk_28022AE30, &qword_267EFC0B0);
    *(v56 + 1200) = 0u;
    *(v56 + 1216) = 0u;
  }

  else
  {
    *(v56 + 1224) = v60;
    __swift_allocate_boxed_opaque_existential_0((v56 + 1200));
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_150_0();
    v121();
  }

  OUTLINED_FUNCTION_35_14();
  *(v56 + 1232) = v122;
  OUTLINED_FUNCTION_34_12();
  *(v56 + 1240) = v123;
  LOBYTE(v123) = *(v1 + 8);
  *(v56 + 1272) = v84;
  *(v56 + 1248) = v123;
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

__n128 *sub_267D40088(int a1, unint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_64_7(v6, xmmword_267F00200);
  v7[2].n128_u64[0] = 0xD000000000000019;
  v7[2].n128_u64[1] = v8;
  v9 = MEMORY[0x277D839B0];
  v7[3].n128_u8[0] = a1 & 1;
  OUTLINED_FUNCTION_266();
  *(v10 + 72) = v9;
  *(v10 + 80) = 0xD000000000000018;
  *(v10 + 88) = v11;
  *(v10 + 96) = BYTE1(a1) & 1;
  OUTLINED_FUNCTION_12_1();
  *(v12 + 120) = v9;
  *(v12 + 128) = 0xD00000000000001ALL;
  *(v12 + 136) = v13;
  *(v12 + 144) = BYTE2(a1) & 1;
  OUTLINED_FUNCTION_301();
  v14[21] = v9;
  v14[22] = v15;
  v14[23] = 0xED0000736E6F6974;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B208, &qword_267F05428);
  v6[12].n128_u64[0] = a2;
  OUTLINED_FUNCTION_12_1();
  v6[13].n128_u64[1] = v16;
  v6[14].n128_u64[0] = 0xD000000000000017;
  v6[14].n128_u64[1] = v17;
  v6[15].n128_u8[0] = 0;
  v6[16].n128_u64[1] = v9;
  strcpy(&v6[17], "requestContext");
  v6[17].n128_u8[15] = -18;
  if (a3)
  {
    v18 = type metadata accessor for MessagesReadingRequestDialogContext();
    v19 = a3;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_38();
    v6[18].n128_u64[1] = 0;
    v6[19].n128_u64[0] = 0;
  }

  v6[18].n128_u64[0] = v19;
  v6[19].n128_u64[1] = v18;

  return v6;
}

uint64_t sub_267D40204(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_267F01440;
  OUTLINED_FUNCTION_301();
  *(v9 + 32) = v10;
  *(v9 + 40) = 0xEC0000006E6F6974;
  if (a1)
  {
    type metadata accessor for MessagesGroup(0);
    v11 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
  }

  *(v8 + 48) = v11;
  OUTLINED_FUNCTION_266();
  *(v8 + 72) = v12;
  *(v8 + 80) = 0xD000000000000017;
  *(v8 + 88) = v13;
  *(v8 + 96) = 0;
  OUTLINED_FUNCTION_202();
  *(v8 + 120) = v14;
  *(v8 + 128) = 0xD00000000000002ALL;
  *(v8 + 136) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v8 + 144) = a2;
  OUTLINED_FUNCTION_12_1();
  *(v8 + 168) = v16;
  *(v8 + 176) = 0xD000000000000032;
  *(v8 + 184) = v17;
  if (a4)
  {
    a3 = 0;
    v18 = 0;
    *(v8 + 200) = 0;
    *(v8 + 208) = 0;
  }

  else
  {
    v18 = MEMORY[0x277D839F8];
  }

  *(v8 + 192) = a3;
  *(v8 + 216) = v18;

  return v8;
}

uint64_t sub_267D4034C()
{
  OUTLINED_FUNCTION_56();
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v5;
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_14_10(v6);

  return sub_267DEDA4C();
}

uint64_t sub_267D4040C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D40504()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v0 + 88) = v1;
  *(v0 + 96) = v3;
  *(v0 + 104) = sub_267D364F8(v1, v2, v3);
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BE8]);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_90_1(v4);
  v5 = OUTLINED_FUNCTION_28_2(35);

  return v6(v5);
}

uint64_t sub_267D405C8()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 128) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267D406E8()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_267D40774()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_4_3();
  v3 = *(v0 + 128);

  return v2(v3);
}

uint64_t sub_267D40800()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_267D4088C()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_267D408B4()
{
  OUTLINED_FUNCTION_62();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  swift_allocObject();
  OUTLINED_FUNCTION_12_1();
  *(OUTLINED_FUNCTION_256(v0, v1) + 72) = MEMORY[0x277D839B0];
  v2 = OUTLINED_FUNCTION_10(MEMORY[0x277D55BE8]);
  v4 = OUTLINED_FUNCTION_234_0(v2, v3);
  v5 = OUTLINED_FUNCTION_254(v4);
  *v5 = v6;
  v5[1] = sub_267D409A4;
  OUTLINED_FUNCTION_206();

  return v7();
}

uint64_t sub_267D409A4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_208();

    return v11(v10);
  }
}

uint64_t sub_267D40ACC()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 105) = v4;
  *(v1 + 104) = v5;
  Parameters = type metadata accessor for SearchForMessagesOfferFullMessageReadParameters(0);
  OUTLINED_FUNCTION_79_3(Parameters);
  *(v1 + 48) = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D40B50()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 105);
  v4 = *(v0 + 104);
  v5 = sub_267EF79B8();
  OUTLINED_FUNCTION_5_36();
  v6 = OUTLINED_FUNCTION_42_13(v2[6]);
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  OUTLINED_FUNCTION_31_14(v2[9]);
  v9 = OUTLINED_FUNCTION_42_13(v2[11]);
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
  v12 = OUTLINED_FUNCTION_42_13(v2[12]);
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v5);
  OUTLINED_FUNCTION_16_20(v2[13]);
  *(v1 + v15) = v4;
  *(v1 + v2[8]) = v3;
  OUTLINED_FUNCTION_1_3();
  v22 = v16;
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_134_0(v17);
  *v18 = v19;
  v20 = OUTLINED_FUNCTION_19_0(v18);

  return v22(v20);
}

uint64_t sub_267D40C7C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D40D74()
{
  OUTLINED_FUNCTION_56();
  sub_267D36624();
  OUTLINED_FUNCTION_131_1(v0);
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BE8]);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_135(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_55_2(v2);
  v4 = OUTLINED_FUNCTION_28_2(38);

  return v5(v4);
}

uint64_t sub_267D40E24()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267D40F44()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_96_4();
  sub_267BD6DA0(v1, v2);

  v3 = OUTLINED_FUNCTION_51_6();

  return v4(v3);
}

uint64_t sub_267D40FAC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_96_4();
  sub_267BD6DA0(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D41014()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_96_4();
  sub_267BD6DA0(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D4107C()
{
  OUTLINED_FUNCTION_12();
  v7 = OUTLINED_FUNCTION_8_29(v1, v2, v3, v4, v5, v6);
  v8 = type metadata accessor for SearchForMessagesOfferMultilingualReplyParameters(v7);
  OUTLINED_FUNCTION_79_3(v8);
  *(v0 + 48) = OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D410F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v15 = OUTLINED_FUNCTION_46_12();
  OUTLINED_FUNCTION_5_36();
  OUTLINED_FUNCTION_16_20(v13[6]);
  v17 = OUTLINED_FUNCTION_42_13(v16);
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v15);
  v20 = OUTLINED_FUNCTION_42_13(v13[12]);
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v15);
  OUTLINED_FUNCTION_15_21(v13[13]);
  OUTLINED_FUNCTION_14_25(v13[16]);
  OUTLINED_FUNCTION_231();
  *(v12 + v23) = v14;
  OUTLINED_FUNCTION_1_3();
  v37 = v24;
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_134_0(v25);
  *v26 = v27;
  OUTLINED_FUNCTION_19_0(v26);
  OUTLINED_FUNCTION_165();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, a11, a12);
}

uint64_t sub_267D411EC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D412E4()
{
  OUTLINED_FUNCTION_56();
  sub_267D36BF0();
  OUTLINED_FUNCTION_131_1(v0);
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BE8]);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_135(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_55_2(v2);
  v4 = OUTLINED_FUNCTION_28_2(40);

  return v5(v4);
}

uint64_t sub_267D41394()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267D414B4()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_95_4();
  sub_267BD6DA0(v1, v2);

  v3 = OUTLINED_FUNCTION_51_6();

  return v4(v3);
}

uint64_t sub_267D4151C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_95_4();
  sub_267BD6DA0(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D41584()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_95_4();
  sub_267BD6DA0(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D415EC()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 108) = v4;
  v9 = OUTLINED_FUNCTION_13_26(v5, v6, v7, v8);
  v10 = type metadata accessor for SearchForMessagesOfferReplyParameters(v9);
  OUTLINED_FUNCTION_79_3(v10);
  *(v1 + 48) = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267D4166C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v16 = OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_5_36();
  OUTLINED_FUNCTION_16_20(v13[6]);
  v18 = OUTLINED_FUNCTION_42_13(v17);
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  OUTLINED_FUNCTION_15_21(v13[13]);
  OUTLINED_FUNCTION_14_25(v13[16]);
  OUTLINED_FUNCTION_19_17(v13[18]);
  *(v12 + v21) = v15;
  OUTLINED_FUNCTION_146_0();
  *(v12 + v13[12]) = v14;
  OUTLINED_FUNCTION_1_3();
  v35 = v22;
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_134_0(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_19_0(v24);
  OUTLINED_FUNCTION_40();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, a10, a11, a12);
}

uint64_t sub_267D41768()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D41860()
{
  OUTLINED_FUNCTION_56();
  sub_267D3731C();
  OUTLINED_FUNCTION_131_1(v0);
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BE8]);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_135(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_55_2(v2);
  v4 = OUTLINED_FUNCTION_28_2(28);

  return v5(v4);
}

uint64_t sub_267D41910()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_94_4();
  sub_267BD6DA0(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D41978()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_94_4();
  sub_267BD6DA0(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D419E0()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 116) = v3;
  *(v1 + 115) = v4;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  *(v1 + 114) = v7;
  *(v1 + 113) = v8;
  *(v1 + 112) = v9;
  AggregatedReactionComponentParameters = type metadata accessor for SearchForMessagesReadAggregatedReactionComponentParameters(0);
  *(v1 + 48) = AggregatedReactionComponentParameters;
  OUTLINED_FUNCTION_18(AggregatedReactionComponentParameters);
  *(v1 + 56) = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267D41A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v16 = *(v14 + 48);
  v15 = *(v14 + 56);
  HIDWORD(a10) = *(v14 + 115);
  v33 = *(v14 + 116);
  v17 = *(v14 + 16);
  v18 = *(v14 + 114);
  v19 = *(v14 + 113);
  v20 = *(v14 + 112);
  v21 = v16[5];
  sub_267EF79B8();
  OUTLINED_FUNCTION_121_3(v15 + v21);
  OUTLINED_FUNCTION_121_3(v15 + v16[6]);
  OUTLINED_FUNCTION_121_3(v15 + v16[7]);
  OUTLINED_FUNCTION_121_3(v15 + v16[12]);
  OUTLINED_FUNCTION_121_3(v15 + v16[13]);
  OUTLINED_FUNCTION_121_3(v15 + v16[16]);
  OUTLINED_FUNCTION_121_3(v15 + v16[17]);
  *v15 = 0;
  *(v15 + v16[8]) = 0;
  *(v15 + v16[9]) = v20;
  *(v15 + v16[10]) = v19;
  *(v15 + v16[11]) = v18;
  *(v15 + v16[14]) = v17;
  *(v15 + v16[15]) = BYTE4(a10);
  *(v15 + v16[18]) = v33;

  OUTLINED_FUNCTION_1_3();
  v34 = v22;
  v23 = swift_task_alloc();
  *(v14 + 64) = v23;
  *v23 = v14;
  OUTLINED_FUNCTION_148_0(v23);
  OUTLINED_FUNCTION_64_3();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, v34, a12, a13, a14);
}

uint64_t sub_267D41BF0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D41CE8()
{
  OUTLINED_FUNCTION_56();
  sub_267D37A5C();
  *(v0 + 80) = v1;
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BE8]);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_90_1(v2);
  v3 = OUTLINED_FUNCTION_28_2(49);

  return v4(v3);
}

uint64_t sub_267D41DA0()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267D41EC0()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_93_3();
  sub_267BD6DA0(v1, v2);

  OUTLINED_FUNCTION_4_3();
  v4 = *(v0 + 104);

  return v3(v4);
}

uint64_t sub_267D41F30()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_93_3();
  sub_267BD6DA0(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267D41F9C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_93_3();
  sub_267BD6DA0(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267D42008()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 108) = v4;
  v9 = OUTLINED_FUNCTION_13_26(v5, v6, v7, v8);
  AudioComponentParameters = type metadata accessor for SearchForMessagesReadAudioComponentParameters(v9);
  OUTLINED_FUNCTION_79_3(AudioComponentParameters);
  *(v1 + 48) = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267D42088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v17 = OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_5_36();
  v18 = OUTLINED_FUNCTION_42_13(v13[7]);
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  OUTLINED_FUNCTION_15_21(v13[10]);
  v21 = OUTLINED_FUNCTION_42_13(v13[18]);
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
  OUTLINED_FUNCTION_6_29(v13[19]);
  *(v12 + v24) = 0;
  OUTLINED_FUNCTION_152_0(v13[8]);
  *(v12 + v13[9]) = 0;
  *(v12 + v13[11]) = v16;
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_245();
  *(v12 + v13[17]) = v15;
  *(v12 + v13[20]) = v14;
  OUTLINED_FUNCTION_1_3();
  v38 = v25;
  v26 = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_134_0(v26);
  *v27 = v28;
  OUTLINED_FUNCTION_19_0(v27);
  OUTLINED_FUNCTION_40();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, a10, a11, a12);
}

uint64_t sub_267D421AC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D422A4()
{
  OUTLINED_FUNCTION_56();
  sub_267D380F0();
  OUTLINED_FUNCTION_131_1(v0);
  OUTLINED_FUNCTION_10(MEMORY[0x277D55BE8]);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_135(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_55_2(v2);
  v4 = OUTLINED_FUNCTION_28_2(36);

  return v5(v4);
}

uint64_t sub_267D42354()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267D42474()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_92_4();
  sub_267BD6DA0(v1, v2);

  v3 = OUTLINED_FUNCTION_51_6();

  return v4(v3);
}

uint64_t sub_267D424DC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_92_4();
  sub_267BD6DA0(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D42544()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_92_4();
  sub_267BD6DA0(v0, v1);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D425AC()
{
  OUTLINED_FUNCTION_12();
  v7 = OUTLINED_FUNCTION_8_29(v1, v2, v3, v4, v5, v6);
  ConversationSummaryParameters = type metadata accessor for SearchForMessagesReadConversationSummaryParameters(v7);
  OUTLINED_FUNCTION_79_3(ConversationSummaryParameters);
  *(v0 + 48) = OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}