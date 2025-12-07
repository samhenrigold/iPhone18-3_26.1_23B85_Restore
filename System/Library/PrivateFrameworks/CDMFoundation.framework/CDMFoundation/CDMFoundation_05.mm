uint64_t sub_1DC30B4F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8C0, &qword_1DC523618);
  result = sub_1DC517EFC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_1DC30B664(*v15, *(v15 + 8), *(v15 + 16), v5))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_11:
      v15 = *(v3 + 48) + 24 * (v12 | (v6 << 6));
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    v16 = 1 << *(v3 + 32);
    if (v16 >= 64)
    {
      sub_1DC2A3304(0, (v16 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v16;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1DC30B664(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = HIDWORD(a1);
  sub_1DC5182FC();
  sub_1DC51832C();
  sub_1DC51832C();
  sub_1DC51831C();
  if (a3)
  {
    sub_1DC51769C();
  }

  sub_1DC51833C();
  result = sub_1DC517EDC();
  *(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v10 = *(a4 + 48) + 24 * result;
  *v10 = v7;
  *(v10 + 4) = v8;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3;
  ++*(a4 + 16);
  return result;
}

unint64_t sub_1DC30B760(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = HIDWORD(result);
  v12 = *(*v5 + 16);
  v13 = *(*v5 + 24);
  if (v13 <= v12 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_1DC30B4F4(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        result = sub_1DC30B954();
        goto LABEL_27;
      }

      sub_1DC30BAB8(v12 + 1);
    }

    v14 = *v5;
    sub_1DC5182FC();
    sub_1DC51832C();
    sub_1DC51832C();
    sub_1DC51831C();
    if (a3)
    {
      sub_1DC51769C();
    }

    result = sub_1DC51833C();
    v15 = v14 + 56;
    v16 = -1 << *(v14 + 32);
    a4 = result & ~v16;
    if ((*(v14 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v17 = ~v16;
      v18 = *(v14 + 48);
      do
      {
        v19 = v18 + 24 * a4;
        if (*v19 == v10 && *(v19 + 4) == v11)
        {
          v21 = *(v19 + 16);
          if (v21)
          {
            if (a3)
            {
              if (*(v19 + 8) == a2 && v21 == a3)
              {
                goto LABEL_30;
              }

              result = sub_1DC51825C();
              if (result)
              {
                goto LABEL_30;
              }
            }
          }

          else if (!a3)
          {
            goto LABEL_30;
          }
        }

        a4 = (a4 + 1) & v17;
      }

      while (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_27:
  v23 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v24 = *(v23 + 48) + 24 * a4;
  *v24 = v10;
  *(v24 + 4) = v11;
  *(v24 + 8) = a2;
  *(v24 + 16) = a3;
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_30:
    result = sub_1DC51828C();
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v27;
  }

  return result;
}

void *sub_1DC30B954()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8C0, &qword_1DC523618);
  v2 = *v0;
  v3 = sub_1DC517EEC();
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = (*(v4 + 48) + 8 * v17);
        *v21 = *v18;
        v21[1] = v20;
        v21[2] = v19;
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

uint64_t sub_1DC30BAB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8C0, &qword_1DC523618);
  result = sub_1DC517EFC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_1DC30B664(v15, v16, v17, v5))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = (*(v3 + 48) + 24 * (v11 | (v6 << 6)));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_13;
      }

      v13 = *(v3 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v5;
  }

  return result;
}

char *sub_1DC30BD10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8B0, &unk_1DC524040);
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
    if (v10 != a4 || &v13[24 * v8] <= v12)
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

void sub_1DC30BE28()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = *(v7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((v20 - v18) / v17);
LABEL_19:
  v7(0);
  OUTLINED_FUNCTION_24();
  if (v10)
  {
    sub_1DC30B244(v8 + v22, v14, v19 + v22, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC30BFDC(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1DC30C2D4(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_1DC30C0BC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_38_2();
  v4(v3);
  OUTLINED_FUNCTION_35();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return a2;
}

uint64_t sub_1DC30C114(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DC30C16C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DC30C1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7BB98;
  if (!qword_1ECC7BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BB98);
  }

  return result;
}

uint64_t sub_1DC30C20C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DC30C260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1DC30C2D4(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1DC51822C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v11 = sub_1DC517A4C();
        *(v11 + 16) = v10;
      }

      v12[0] = v11 + 32;
      v12[1] = v10;
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

uint64_t sub_1DC30C3E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 28);
        v11 = *(v9 + 32);
        *(v9 + 24) = *v9;
        *(v9 + 40) = *(v9 + 16);
        *v9 = v7;
        *(v9 + 4) = v10;
        *(v9 + 8) = v11;
        v9 -= 24;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DC30C468(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 16 * a3);
    v7 = result - a3;
    while (2)
    {
      v8 = *(v5 + 16 * v4);
      v15 = v7;
      v16 = v6;
      do
      {
        v9 = *(v6 - 2);

        v10 = sub_1DC329364(v8);
        v11 = sub_1DC329364(v9);

        if (v10 >= v11)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        v8 = *v6;
        v12 = v6[1];
        *v6 = *(v6 - 1);
        *(v6 - 1) = v12;
        *(v6 - 2) = v8;
        v6 -= 2;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v6 = v16 + 2;
      v7 = v15 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DC30C56C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v84 = result;
  v88 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v83 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9);
        v11 = (*a3 + 24 * v7);
        v12 = 24 * v7;
        v15 = *v11;
        v14 = v11 + 12;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 6;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 24 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *(v25 + 1);
                v28 = *v25;
                v29 = *(v26 - 24);
                v25[2] = *(v26 - 8);
                *v25 = v29;
                *(v26 - 24) = v28;
                *(v26 - 16) = v27;
              }

              ++v23;
              v21 -= 24;
              v12 += 24;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return result;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9 - 24;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *v35)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 28);
                v37 = *(v35 + 32);
                *(v35 + 24) = *v35;
                *(v35 + 40) = *(v35 + 16);
                *v35 = v33;
                *(v35 + 4) = v36;
                *(v35 + 8) = v37;
                v35 -= 24;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v85 = v9;
      if ((result & 1) == 0)
      {
        result = sub_1DC30B0C0(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v40 = *(v8 + 16);
      v39 = *(v8 + 24);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        result = sub_1DC30B0C0((v39 > 1), v40 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v41;
      v42 = v8 + 32;
      v43 = (v8 + 32 + 16 * v40);
      *v43 = v7;
      v43[1] = v85;
      v86 = *v84;
      if (!*v84)
      {
        goto LABEL_114;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = (v42 + 16 * (v41 - 1));
          v46 = (v8 + 16 * v41);
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = *(v8 + 32);
            v48 = *(v8 + 40);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_56:
            if (v50)
            {
              goto LABEL_96;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_99;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_104;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v41 < 2)
          {
            goto LABEL_98;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_71:
          if (v65)
          {
            goto LABEL_101;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_103;
          }

          if (v72 < v64)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v76 = (v42 + 16 * (v44 - 1));
          v77 = *v76;
          v78 = (v42 + 16 * v44);
          v79 = v78[1];
          result = sub_1DC30D264((*a3 + 24 * *v76), (*a3 + 24 * *v78), *a3 + 24 * v79, v86);
          if (v5)
          {
          }

          if (v79 < v77)
          {
            goto LABEL_91;
          }

          v80 = v8;
          v81 = *(v8 + 16);
          if (v44 > v81)
          {
            goto LABEL_92;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_93;
          }

          v41 = v81 - 1;
          result = memmove((v42 + 16 * v44), v78 + 2, 16 * (v81 - 1 - v44));
          *(v80 + 16) = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          v5 = 0;
          if (!v82)
          {
            goto LABEL_85;
          }
        }

        v51 = v42 + 16 * v41;
        v52 = *(v51 - 64);
        v53 = *(v51 - 56);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_94;
        }

        v56 = *(v51 - 48);
        v55 = *(v51 - 40);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_95;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_97;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_100;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_105;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v85;
      a4 = v83;
      if (v85 >= v6)
      {
        v88 = v8;
        break;
      }
    }
  }

  if (!*v84)
  {
    goto LABEL_115;
  }

  sub_1DC30D12C(&v88, *v84, a3);
}

uint64_t sub_1DC30CA80(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v107 = *v101;
    if (!*v101)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_93:
      v89 = (v8 + 16);
      v90 = *(v8 + 16);
      while (v90 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v91 = v8;
        v92 = (v8 + 16 * v90);
        v93 = *v92;
        v94 = &v89[2 * v90];
        v8 = v94[1];
        sub_1DC30D438((*a3 + 16 * *v92), (*a3 + 16 * *v94), (*a3 + 16 * v8), v107);
        if (v5)
        {
          break;
        }

        if (v8 < v93)
        {
          goto LABEL_117;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_118;
        }

        *v92 = v93;
        v92[1] = v8;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_119;
        }

        v90 = *v89 - 1;
        result = memmove(v94, v94 + 2, 16 * v95);
        *v89 = v90;
        v8 = v91;
      }
    }

LABEL_126:
    result = sub_1DC30D6B0(v8);
    v8 = result;
    goto LABEL_93;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v97 = v8;
      v98 = v5;
      v11 = (*a3 + 16 * v10);
      v12 = *v11;
      v8 = v11[1];
      v13 = (*a3 + 16 * v7);
      v102 = 16 * v7;
      v14 = *v13;
      v5 = v13[1];

      v107 = sub_1DC329364(v12);
      v104 = sub_1DC329364(v14);

      v15 = v13 + 3;
      v16 = v9 + 2;
      while (1)
      {
        v17 = v16;
        if (++v10 >= v6)
        {
          break;
        }

        v18 = v15 + 2;
        v8 = v15[2];
        v19 = *(v15 - 1);
        v20 = v15[1];

        v21 = sub_1DC329364(v20);
        v5 = sub_1DC329364(v19);

        v16 = v17 + 1;
        v15 = v18;
        if (v107 < v104 == v21 >= v5)
        {
          goto LABEL_9;
        }
      }

      v10 = v6;
LABEL_9:
      if (v107 >= v104)
      {
        v8 = v97;
        v5 = v98;
      }

      else
      {
        v22 = v9;
        if (v10 < v9)
        {
          goto LABEL_123;
        }

        if (v9 >= v10)
        {
          v8 = v97;
          v5 = v98;
        }

        else
        {
          if (v6 >= v17)
          {
            v23 = v17;
          }

          else
          {
            v23 = v6;
          }

          v24 = 16 * v23;
          v25 = v10;
          v8 = v97;
          v5 = v98;
          v26 = v102;
          do
          {
            if (v22 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_130;
              }

              v28 = (v27 + v26);
              v29 = v27 + v24;
              v30 = *v28;
              v31 = v28[1];
              *v28 = *(v29 - 16);
              *(v29 - 16) = v30;
              *(v29 - 8) = v31;
            }

            ++v22;
            v24 -= 16;
            v26 += 16;
          }

          while (v22 < v25);
        }
      }
    }

    v32 = a3[1];
    if (v10 < v32)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_122;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v10 < v9)
    {
      goto LABEL_121;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DC30B0C0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 16);
    v45 = *(v8 + 24);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_1DC30B0C0((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v47;
    v48 = v8 + 32;
    v49 = (v8 + 32 + 16 * v46);
    *v49 = v9;
    v49[1] = v10;
    v106 = *v101;
    if (!*v101)
    {
      goto LABEL_131;
    }

    v107 = v10;
    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        v51 = (v48 + 16 * (v47 - 1));
        v52 = (v8 + 16 * v47);
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v53 = *(v8 + 32);
          v54 = *(v8 + 40);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_59:
          if (v56)
          {
            goto LABEL_108;
          }

          v68 = *v52;
          v67 = v52[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_111;
          }

          v72 = v51[1];
          v73 = v72 - *v51;
          if (__OFSUB__(v72, *v51))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_116;
          }

          if (v70 + v73 >= v55)
          {
            if (v55 < v73)
            {
              v50 = v47 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v47 < 2)
        {
          goto LABEL_110;
        }

        v75 = *v52;
        v74 = v52[1];
        v63 = __OFSUB__(v74, v75);
        v70 = v74 - v75;
        v71 = v63;
LABEL_74:
        if (v71)
        {
          goto LABEL_113;
        }

        v77 = *v51;
        v76 = v51[1];
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v78 < v70)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v50 - 1 >= v47)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v82 = v8;
        v83 = (v48 + 16 * (v50 - 1));
        v84 = *v83;
        v85 = v50;
        v8 = v48 + 16 * v50;
        v86 = *(v8 + 8);
        sub_1DC30D438((*a3 + 16 * *v83), (*a3 + 16 * *v8), (*a3 + 16 * v86), v106);
        if (v5)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_103;
        }

        v5 = *(v82 + 16);
        if (v85 > v5)
        {
          goto LABEL_104;
        }

        *v83 = v84;
        v83[1] = v86;
        if (v85 >= v5)
        {
          goto LABEL_105;
        }

        v87 = v85;
        v47 = v5 - 1;
        result = memmove(v8, (v8 + 16), 16 * (v5 - 1 - v87));
        v8 = v82;
        *(v82 + 16) = v5 - 1;
        v88 = v5 > 2;
        v5 = 0;
        if (!v88)
        {
          goto LABEL_88;
        }
      }

      v57 = v48 + 16 * v47;
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_106;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_107;
      }

      v64 = v52[1];
      v65 = v64 - *v52;
      if (__OFSUB__(v64, *v52))
      {
        goto LABEL_109;
      }

      v63 = __OFADD__(v55, v65);
      v66 = v55 + v65;
      if (v63)
      {
        goto LABEL_112;
      }

      if (v66 >= v60)
      {
        v80 = *v51;
        v79 = v51[1];
        v63 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v63)
        {
          goto LABEL_120;
        }

        if (v55 < v81)
        {
          v50 = v47 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v6 = a3[1];
    v7 = v10;
    if (v10 >= v6)
    {
      goto LABEL_91;
    }
  }

  v33 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_124;
  }

  if (v33 >= v32)
  {
    v33 = a3[1];
  }

  if (v33 < v9)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v10 == v33)
  {
    goto LABEL_39;
  }

  v99 = v5;
  v34 = *a3;
  v35 = *a3 + 16 * v10;
  v100 = v9;
  v36 = v9 - v10;
  v103 = v33;
LABEL_32:
  v105 = v35;
  v107 = v10;
  v37 = *(v34 + 16 * v10);
  v38 = v36;
  v39 = v35;
  while (1)
  {
    v40 = *(v39 - 2);

    v41 = sub_1DC329364(v37);
    v42 = sub_1DC329364(v40);

    if (v41 >= v42)
    {
LABEL_37:
      ++v10;
      v35 = v105 + 16;
      --v36;
      if (v107 + 1 == v103)
      {
        v10 = v103;
        v5 = v99;
        v9 = v100;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v34)
    {
      break;
    }

    v37 = *v39;
    v43 = v39[1];
    *v39 = *(v39 - 1);
    *(v39 - 1) = v43;
    *(v39 - 2) = v37;
    v39 -= 2;
    if (__CFADD__(v38++, 1))
    {
      goto LABEL_37;
    }
  }

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
  return result;
}

uint64_t sub_1DC30D12C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DC30D6B0(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1DC30D264((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1DC30D264(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 24;
  v9 = (a3 - __dst) / 24;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      memmove(a4, __src, 24 * v8);
    }

    v11 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 24;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 24;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 24;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[24 * v9] <= a4)
  {
    memmove(a4, __dst, 24 * v9);
  }

  v11 = &v4[24 * v9];
LABEL_25:
  v17 = v6 - 24;
  for (v5 -= 24; v11 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v11 - 6) < *v17)
    {
      v14 = v5 + 24 == v6;
      v6 -= 24;
      if (!v14)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v20;
        v6 = v17;
      }

      goto LABEL_25;
    }

    if (v11 != (v5 + 24))
    {
      v19 = *(v11 - 24);
      *(v5 + 16) = *(v11 - 1);
      *v5 = v19;
    }

    v11 -= 24;
  }

LABEL_38:
  v21 = (v11 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

uint64_t sub_1DC30D438(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    for (i = &v4[2 * v8]; ; i = v14)
    {
      if (v4 >= i || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_37;
      }

      v13 = v7;
      v14 = i;
      v15 = *v6;
      v16 = v6;
      v17 = *v4;

      v18 = sub_1DC329364(v15);
      v19 = sub_1DC329364(v17);

      if (v18 >= v19)
      {
        break;
      }

      v20 = v6;
      v6 += 2;
      v21 = v13;
      if (v13 != v16)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 = (v21 + 2);
    }

    v20 = v4;
    v21 = v13;
    v22 = v13 == v4;
    v4 += 2;
    if (v22)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v21 = *v20;
    goto LABEL_17;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  i = &v4[2 * v9];
  v36 = v4;
  v35 = v7;
LABEL_24:
  v24 = v6 - 2;
  v5 -= 16;
  while (i > v4 && v6 > v7)
  {
    v26 = *(i - 2);
    v27 = v6;
    v28 = *(v6 - 2);

    v29 = sub_1DC329364(v26);
    v30 = sub_1DC329364(v28);

    v31 = v5 + 16;
    if (v29 < v30)
    {
      v6 -= 2;
      v7 = v35;
      v4 = v36;
      if (v31 != v27)
      {
        *v5 = *v24;
        v6 = v24;
      }

      goto LABEL_24;
    }

    if (i != v31)
    {
      *v5 = *(i - 1);
    }

    v5 -= 16;
    i -= 2;
    v7 = v35;
    v4 = v36;
  }

LABEL_37:
  v32 = (i - v4) / 16;
  if (v6 != v4 || v6 >= &v4[2 * v32])
  {
    memmove(v6, v4, 16 * v32);
  }

  return 1;
}

unint64_t sub_1DC30D6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7BCF8;
  if (!qword_1ECC7BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BCF8);
  }

  return result;
}

void *sub_1DC30D740(void *result, void *a2, unint64_t a3, uint64_t a4)
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = (*(a4 + 48) + 24 * (v16 | (v15 << 6)));
      v19 = v17[1];
      v18 = v17[2];
      *v11 = *v17;
      v11[1] = v19;
      v11[2] = v18;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 3;

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

unint64_t sub_1DC30D8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7BBA0;
  if (!qword_1ECC7BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BBA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_73_0(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE68F08](a1, a2, v2, v3);
}

uint64_t CDMClient.setup(with:embeddingVersion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DC30D93C, 0, 0);
}

uint64_t sub_1DC30D93C()
{
  OUTLINED_FUNCTION_1_0();
  [objc_opt_self() defaultDeallocationTimeout];
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1DC30D9F0;

  return CDMClient.setup(with:embeddingVersion:deallocationTime:)();
}

uint64_t sub_1DC30D9F0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v2 = v1;

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t CDMClient.setup(with:embeddingVersion:deallocationTime:)()
{
  OUTLINED_FUNCTION_1_0();
  v1[22] = v0;
  v1[21] = v2;
  v1[19] = v3;
  v1[20] = v4;
  v1[18] = v5;
  v1[23] = sub_1DC510C8C();
  OUTLINED_FUNCTION_6();
  v1[24] = v6;
  v1[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DC30DB94, 0, 0);
}

uint64_t sub_1DC30DB94()
{
  v1 = *(v0 + 25);
  v14 = *(v0 + 22);
  v2 = v0[21];
  v4 = *(v0 + 19);
  v3 = *(v0 + 20);
  (*(*(v0 + 24) + 16))(v1, *(v0 + 18), *(v0 + 23));
  v5 = [objc_opt_self() graphNameForEmbedding];
  v6 = sub_1DC51772C();
  v8 = v7;

  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v10 = objc_allocWithZone(CDMClientSetup);

  v11 = sub_1DC30E9EC(v1, v4, v3, 0, 0, v6, v8, v9);
  *(v0 + 26) = v11;
  *(v0 + 2) = v0;
  *(v0 + 3) = sub_1DC30DD8C;
  v12 = swift_continuation_init();
  *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE70, &qword_1DC523630);
  *(v0 + 10) = MEMORY[0x1E69E9820];
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = sub_1DC30DF70;
  *(v0 + 13) = &block_descriptor_0;
  *(v0 + 14) = v12;
  [v14 setup:v11 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DC30DD8C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 216) = v2;
  if (v2)
  {
    v3 = sub_1DC30DEF8;
  }

  else
  {
    v3 = sub_1DC30DE94;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DC30DE94()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC30DEF8(uint64_t a1)
{
  v2 = *(v1 + 208);
  swift_willThrow();

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t sub_1DC30DF70(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_1DC30DFD4(*v3, a2);
  }

  v5 = *v3;

  return j__swift_continuation_throwingResume(v5);
}

uint64_t sub_1DC30DFD4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t CDMClient.processEmbeddingRequest(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_1(v3);
  *v4 = v5;
  v4[1] = sub_1DC29F200;

  return CDMClient.processEmbeddingRequest(with:requestId:)();
}

uint64_t CDMClient.processEmbeddingRequest(with:requestId:)()
{
  OUTLINED_FUNCTION_1_0();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v1[19] = v5;
  sub_1DC51670C();
  v1[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C4A0, &qword_1DC5231D0);
  v1[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DC30E1DC, 0, 0);
}

uint64_t sub_1DC30E1DC()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = sub_1DC5176FC();
  v0[26] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DC30E318;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8C8, &qword_1DC523650);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DC30E680;
  v0[13] = &block_descriptor_8;
  v0[14] = v4;
  [v2 processEmbeddingRequest:v3 requestId:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DC30E318()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 216) = v2;
  if (v2)
  {
    v3 = sub_1DC30E5F8;
  }

  else
  {
    v3 = sub_1DC30E420;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DC30E420()
{
  v1 = *(v0 + 144);

  v2 = v1;
  result = sub_1DC30EB38(v2);
  if (v4 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1DC5138BC();
    sub_1DC5166FC();
    sub_1DC30EBA8();
    sub_1DC51677C();
    v6 = *(v0 + 200);
    v7 = *(v0 + 152);

    __swift_storeEnumTagSinglePayload(v6, 0, 1, v5);
    (*(*(v5 - 8) + 32))(v7, v6, v5);

    OUTLINED_FUNCTION_2_2();

    return v8();
  }

  return result;
}

uint64_t sub_1DC30E5F8(uint64_t a1)
{
  v2 = *(v1 + 208);
  swift_willThrow();

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t *sub_1DC30E680(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_1DC30DFD4(v6, a3);
  }

  if (a2)
  {
    v7 = a2;

    return sub_1DC30E044(v6, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC30E704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DC29F200;

  return CDMClient.setup(with:embeddingVersion:)(a1, a2, a3);
}

uint64_t sub_1DC30E7B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DC29F200;

  return CDMClient.setup(with:embeddingVersion:deallocationTime:)();
}

uint64_t sub_1DC30E874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DC29F120;

  return CDMClient.processEmbeddingRequest(with:)(a1, a2, a3);
}

uint64_t sub_1DC30E928()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DC29F200;

  return CDMClient.processEmbeddingRequest(with:requestId:)();
}

id sub_1DC30E9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v15 = sub_1DC510BFC();
  if (a3)
  {
    v16 = sub_1DC5176FC();

    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v16 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = sub_1DC5176FC();

  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_4:
  v18 = sub_1DC5176FC();

LABEL_8:
  v19 = [v9 initWithLocaleIdentifier:v15 embeddingVersion:v16 sandboxId:v17 activeServiceGraph:v18 deallocationTimeout:a8];

  v20 = sub_1DC510C8C();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v19;
}

uint64_t sub_1DC30EB38(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DC510A0C();

  return v3;
}

unint64_t sub_1DC30EBA8()
{
  result = qword_1ECC7C4B8;
  if (!qword_1ECC7C4B8)
  {
    sub_1DC5138BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7C4B8);
  }

  return result;
}

uint64_t sub_1DC30EC00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C4A0, &qword_1DC5231D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of CDMEmbeddingClient.setup(with:embeddingVersion:)()
{
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_6();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_5_9(v2);

  return v5(v3);
}

uint64_t dispatch thunk of CDMEmbeddingClient.setup(with:embeddingVersion:deallocationTime:)()
{
  OUTLINED_FUNCTION_0_8();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_5_9(v4);
  v6.n128_u64[0] = v2;

  return v8(v5, v6);
}

uint64_t dispatch thunk of CDMEmbeddingClient.processEmbeddingRequest(with:)()
{
  OUTLINED_FUNCTION_0_8();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_1(v7);
  *v8 = v9;
  v8[1] = sub_1DC29F120;

  return v11(v5, v3, v2, v1, v0);
}

uint64_t dispatch thunk of CDMEmbeddingClient.processEmbeddingRequest(with:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_6();
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_3_1(v13);
  *v14 = v15;
  v14[1] = sub_1DC29F200;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DC30F12C()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F718);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000015;
  v4[3] = 0x80000001DC53E5F0;
  v4[4] = 0x69746E4565746F4ELL;
  v4[5] = 0xEA00000000007974;
  *v3 = v4;
  OUTLINED_FUNCTION_7_1();
  v6 = *(v5 + 104);

  return v6(v3);
}

uint64_t sub_1DC30F204@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - v11;
  v13 = sub_1DC5172FC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC86250 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_1ECC86250);
  }

  __swift_project_value_buffer(v13, qword_1ECC8F718);
  v17 = sub_1DC5172DC();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v18 = sub_1DC5171EC();
    sub_1DC30F668(0x656C746974, 0xE500000000000000, v18, v12);

    v19 = sub_1DC5172AC();
    OUTLINED_FUNCTION_3_3(v12);
    if (v20)
    {
      sub_1DC30F72C(v12);
    }

    else
    {
      sub_1DC382AC0();
      v28 = v27;
      v30 = v29;
      OUTLINED_FUNCTION_7_1();
      (*(v31 + 8))(v12, v19);
      if (v30)
      {
LABEL_10:
        v32 = sub_1DC5171EC();
        sub_1DC30F668(0x6E6F697461657263, 0xEC00000065746144, v32, v10);

        OUTLINED_FUNCTION_3_3(v10);
        if (v20)
        {
          sub_1DC30F72C(v10);
        }

        else
        {
          sub_1DC382AC0();
          v23 = v33;
          v24 = v34;
          OUTLINED_FUNCTION_7_1();
          (*(v35 + 8))(v10, v19);
          if (v24)
          {
LABEL_15:
            v36 = sub_1DC5171EC();
            sub_1DC30F668(0x73746E65746E6F63, 0xE800000000000000, v36, v7);

            OUTLINED_FUNCTION_3_3(v7);
            if (v20)
            {
              sub_1DC30F72C(v7);
            }

            else
            {
              sub_1DC382AC0();
              v25 = v37;
              v26 = v38;
              OUTLINED_FUNCTION_7_1();
              (*(v39 + 8))(v7, v19);
              if (v26)
              {
                sub_1DC51721C();
                OUTLINED_FUNCTION_7_1();
                result = (*(v40 + 8))(a1);
                goto LABEL_21;
              }
            }

            sub_1DC51721C();
            OUTLINED_FUNCTION_7_1();
            (*(v41 + 8))(a1);

            v25 = 0;
            v26 = 0xE000000000000000;
            goto LABEL_21;
          }
        }

        v23 = 0;
        v24 = 0xE000000000000000;
        goto LABEL_15;
      }
    }

    v28 = 0;
    v30 = 0xE000000000000000;
    goto LABEL_10;
  }

  sub_1DC51721C();
  OUTLINED_FUNCTION_7_1();
  result = (*(v21 + 8))(a1);
  v28 = 0;
  v30 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
LABEL_21:
  *a2 = v28;
  a2[1] = v30;
  a2[2] = v23;
  a2[3] = v24;
  a2[4] = v25;
  a2[5] = v26;
  return result;
}

uint64_t sub_1DC30F668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DC2AEB04(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_1DC5172AC();
    (*(*(v10 - 8) + 16))(a4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = sub_1DC5172AC();
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t sub_1DC30F72C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC30F794()
{
  v1 = v0;
  sub_1DC517F4C();

  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0xD000000000000011, 0x80000001DC53E5D0);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  MEMORY[0x1E1296160](0x65746E6F43207C20, 0xED0000203A73746ELL);
  MEMORY[0x1E1296160](v1[4], v1[5]);
  return 0x203A656C746954;
}

uint64_t sub_1DC30F860@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86250 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_1ECC86250);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F718);
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

double sub_1DC30F8F4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DC30F204(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1DC30F94C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1DC30F98C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_1DC30FA4C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_34_5(v2 + 16, a2);
  *(v2 + 16) = a1;
}

uint64_t sub_1DC30FB04(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_34_5(v2 + 24, a2);
  *(v2 + 24) = a1;
  return result;
}

void sub_1DC30FB88()
{
  OUTLINED_FUNCTION_33();
  v2 = sub_1DC517BCC();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_113();
  v3 = sub_1DC517BEC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v7 = sub_1DC5173CC();
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_1DC312D80();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  sub_1DC5173AC();
  (*(v5 + 104))(v1, *MEMORY[0x1E69E8098], v3);
  sub_1DC312E24(&qword_1EDAC7FA8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD20, &qword_1DC525300);
  sub_1DC2C4B5C(&qword_1EDAC7FB0, &unk_1ECC7CD20, &qword_1DC525300);
  sub_1DC517E9C();
  *(v0 + 64) = sub_1DC517C1C();
  sub_1DC30FE2C();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC30FDAC()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_23_2();
  sub_1DC30FDE8(v1);
  return v0;
}

uint64_t sub_1DC30FDE8(void *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = a1;
  v2 = a1;
  sub_1DC30FE2C();

  return v1;
}

void sub_1DC30FE2C()
{
  OUTLINED_FUNCTION_33();
  sub_1DC51737C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v12 = sub_1DC5173CC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v13[4] = sub_1DC312DC4;
  v14 = v0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DC2AECB0;
  v13[3] = &block_descriptor_39;
  v9 = _Block_copy(v13);

  sub_1DC51739C();
  sub_1DC312E24(&qword_1EDAC7FE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
  sub_1DC2C4B5C(&qword_1EDAC7FC0, &unk_1ECC7CD40, &unk_1DC523860);
  sub_1DC517E9C();
  MEMORY[0x1E12964B0](0, v8, v1, v9);
  _Block_release(v9);
  v10 = OUTLINED_FUNCTION_30_6();
  v11(v10);
  (*(v4 + 8))(v8, v12);

  OUTLINED_FUNCTION_34();
}

void sub_1DC310088()
{
  type metadata accessor for SiriReferenceResolutionProxy();
  v0 = swift_allocObject();
  sub_1DC30FB88();
  qword_1ECC8F408 = v0;
}

uint64_t sub_1DC3100C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8D8, &qword_1DC523748);
  sub_1DC517BFC();
  return v2;
}

void sub_1DC310164()
{
  OUTLINED_FUNCTION_33();
  v86 = v2;
  v95 = v3;
  v90 = v4;
  v85 = sub_1DC5162DC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D330, &unk_1DC5283B0);
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v84 = v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - v15;
  v17 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v96 = v21;
  OUTLINED_FUNCTION_22();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v79 - v24;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_43_6();
  OUTLINED_FUNCTION_0();
  v88 = v27;
  v89 = v26;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v28 = sub_1DC37824C();
  v29 = *v28;
  v30 = v28[1];
  v31 = *(v28 + 16);
  v87 = v0;
  OUTLINED_FUNCTION_33_6(v29, v30, v31, v32, &unk_1F57F9698, &off_1F57F95E8);
  v33 = sub_1DC28D414();
  v34 = *(v19 + 16);
  v92 = v33;
  v93 = v19 + 16;
  v91 = v34;
  (v34)(v1);
  v35 = sub_1DC516F6C();
  v36 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_20_1(v36))
  {
    v37 = OUTLINED_FUNCTION_35_8();
    v83 = v25;
    *v37 = 0;
    OUTLINED_FUNCTION_9_4();
    _os_log_impl(v38, v39, v40, v41, v42, 2u);
    v25 = v83;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v44 = *(v19 + 8);
  v43 = v19 + 8;
  v94 = v44;
  v44(v1, v17);
  v45 = sub_1DC51713C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
  if (AFIsHorseman())
  {
    v82 = v45;
    v91(v25, v92, v17);
    v49 = v85;
    (*(v6 + 16))(v10, v86, v85);
    v50 = v10;
    v51 = sub_1DC516F6C();
    v52 = sub_1DC517B9C();
    if (os_log_type_enabled(v51, v52))
    {
      OUTLINED_FUNCTION_11();
      v53 = swift_slowAlloc();
      v81 = v43;
      v54 = v53;
      v79 = v53;
      OUTLINED_FUNCTION_19_3();
      v80 = swift_slowAlloc();
      v97 = v80;
      *v54 = 136315138;
      OUTLINED_FUNCTION_15_3();
      sub_1DC312E24(v55, v56, MEMORY[0x1E69D08E0]);
      v57 = sub_1DC51823C();
      v83 = v25;
      v59 = v58;
      (*(v6 + 8))(v50, v49);
      sub_1DC291244(v57, v59, &v97);
      OUTLINED_FUNCTION_23_2();

      v60 = v79;
      *(v79 + 4) = v50;
      _os_log_impl(&dword_1DC287000, v51, v52, "Creating filter for userId: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();

      v61 = v83;
    }

    else
    {

      (*(v6 + 8))(v50, v49);
      v61 = v25;
    }

    v94(v61, v17);
    sub_1DC5162BC();
    v62 = v84;
    sub_1DC51712C();
    sub_1DC2BE530(v16, &unk_1ECC7D330, &unk_1DC5283B0);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v82);
    sub_1DC312B94(v62, v16);
  }

  OUTLINED_FUNCTION_12_0();
  v67 = (*(v66 + 336))(v16);
  v69 = v68;
  sub_1DC3112A8(v67, v68 & 1);
  v91(v96, v92, v17);

  v70 = sub_1DC516F6C();
  v71 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_20_1(v71))
  {
    OUTLINED_FUNCTION_11();
    v72 = swift_slowAlloc();
    OUTLINED_FUNCTION_44_4(v72, 3.852e-34);
    OUTLINED_FUNCTION_9_4();
    _os_log_impl(v73, v74, v75, v76, v77, 0xCu);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    sub_1DC312B88(v67, v69 & 1);
  }

  else
  {
    sub_1DC312B88(v67, v69 & 1);
  }

  v94(v96, v17);
  sub_1DC2BE530(v16, &unk_1ECC7D330, &unk_1DC5283B0);
  sub_1DC3107D4();
  OUTLINED_FUNCTION_23_2();

  *v90 = v70;
  v78 = v87;
  static SignpostLogger.end(_:_:)(v87, *v28, v28[1], *(v28 + 16));
  (*(v88 + 8))(v78, v89);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3107D4()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8E0, &unk_1DC523750);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - v4;
  v6 = sub_1DC5118BC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v49 = v10;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v44 = v12;
  OUTLINED_FUNCTION_12();
  v13 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v47 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v45 = v8;
  v46 = v17 - v16;
  v18 = 0;
  v19 = *(v1 + 16);
  v48 = (v8 + 32);
  v20 = MEMORY[0x1E69E7CC0];
  while (v19 != v18)
  {
    v21 = *(sub_1DC516FCC() - 8);
    sub_1DC3114B8(v1 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v5);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_1DC2BE530(v5, &qword_1ECC7C8E0, &unk_1DC523750);
      ++v18;
    }

    else
    {
      v42 = v20;
      v43 = v13;
      v22 = *v48;
      v23 = v44;
      (*v48)(v44, v5, v6);
      v41 = v22;
      v22(v49, v23, v6);
      v24 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DC312824(0, v24[2] + 1, 1, v24);
      }

      v26 = v24[2];
      v25 = v24[3];
      v27 = v24;
      if (v26 >= v25 >> 1)
      {
        v27 = sub_1DC312824((v25 > 1), v26 + 1, 1, v24);
      }

      ++v18;
      v27[2] = v26 + 1;
      v20 = v27;
      v41(v27 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v26, v49, v6);
      v13 = v43;
    }
  }

  v28 = sub_1DC28D414();
  v29 = v46;
  v30 = v47;
  (*(v47 + 16))(v46, v28, v13);

  v31 = v20;
  v32 = sub_1DC516F6C();
  v33 = sub_1DC517B9C();
  if (os_log_type_enabled(v32, v33))
  {
    OUTLINED_FUNCTION_11();
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v31[2];

    OUTLINED_FUNCTION_40_8();
    _os_log_impl(v35, v36, v37, v38, v39, v40);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  else
  {
  }

  (*(v30 + 8))(v29, v13);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC310BC0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8D0, &qword_1DC523740);
  sub_1DC517BFC();
  return v2;
}

void sub_1DC310C38()
{
  OUTLINED_FUNCTION_33();
  v86 = v3;
  v87 = v2;
  v91 = v4;
  v5 = sub_1DC5162DC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v83 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D330, &unk_1DC5283B0);
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v84 = v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - v15;
  v17 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_23_1();
  v85 = v25;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_43_6();
  OUTLINED_FUNCTION_0();
  v89 = v28;
  v90 = v27;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v29 = sub_1DC378258();
  v30 = *v29;
  v31 = v29[1];
  v32 = *(v29 + 16);
  v88 = v0;
  OUTLINED_FUNCTION_33_6(v30, v31, v32, v33, &unk_1F57F9698, &off_1F57F95E8);
  v34 = sub_1DC28D414();
  v35 = *(v19 + 16);
  v94 = v34;
  v95 = v19 + 16;
  v93 = v35;
  (v35)(v1);
  v36 = sub_1DC516F6C();
  v37 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_20_1(v37))
  {
    v38 = OUTLINED_FUNCTION_35_8();
    v96 = v16;
    *v38 = 0;
    OUTLINED_FUNCTION_9_4();
    _os_log_impl(v39, v40, v41, v42, v43, 2u);
    v16 = v96;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v96 = *(v19 + 8);
  (v96)(v1, v17);
  sub_1DC51713C();
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v36);
  v47 = AFIsHorseman();
  v92 = v19 + 8;
  if (v47)
  {
    v82 = v36;
    v93(v85, v94, v17);
    v48 = v83;
    (*(v7 + 16))(v83, v86, v5);
    v49 = sub_1DC516F6C();
    v50 = sub_1DC517B9C();
    if (os_log_type_enabled(v49, v50))
    {
      OUTLINED_FUNCTION_11();
      v51 = swift_slowAlloc();
      v81 = v23;
      v52 = v51;
      OUTLINED_FUNCTION_19_3();
      v80 = swift_slowAlloc();
      v97 = v80;
      *v52 = 136315138;
      OUTLINED_FUNCTION_15_3();
      sub_1DC312E24(v53, v54, MEMORY[0x1E69D08E0]);
      HIDWORD(v79) = v50;
      v55 = sub_1DC51823C();
      (*(v7 + 8))(v48, v5);
      v56 = OUTLINED_FUNCTION_31_0();
      sub_1DC291244(v56, v57, v58);
      OUTLINED_FUNCTION_23_2();

      *(v52 + 4) = v55;
      _os_log_impl(&dword_1DC287000, v49, BYTE4(v79), "Creating filter for userId: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      v23 = v81;
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    else
    {

      (*(v7 + 8))(v48, v5);
    }

    (v96)(v85, v17);
    sub_1DC5162BC();
    sub_1DC51712C();
    sub_1DC2BE530(v16, &unk_1ECC7D330, &unk_1DC5283B0);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v82);
    v62 = OUTLINED_FUNCTION_31_0();
    sub_1DC312B94(v62, v63);
  }

  OUTLINED_FUNCTION_12_0();
  v65 = v16;
  v66 = (*(v64 + 336))(v16);
  v68 = v67;
  v69 = sub_1DC3112A8(v66, v67 & 1);
  v93(v23, v94, v17);

  v70 = sub_1DC516F6C();
  v71 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_20_1(v71))
  {
    OUTLINED_FUNCTION_11();
    v72 = swift_slowAlloc();
    OUTLINED_FUNCTION_44_4(v72, 3.852e-34);
    OUTLINED_FUNCTION_9_4();
    _os_log_impl(v73, v74, v75, v76, v77, 0xCu);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    sub_1DC312B88(v66, v68 & 1);
  }

  else
  {
    sub_1DC312B88(v66, v68 & 1);
  }

  (v96)(v23, v17);
  sub_1DC2BE530(v65, &unk_1ECC7D330, &unk_1DC5283B0);
  *v91 = v69;
  v78 = v88;
  static SignpostLogger.end(_:_:)(v88, *v29, v29[1], *(v29 + 16));
  (*(v89 + 8))(v78, v90);
  OUTLINED_FUNCTION_34();
}

void *sub_1DC3112A8(void *a1, char a2)
{
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  if (a2)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_10_7();
    v11(v7);
    v12 = sub_1DC516F6C();
    v13 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_25_0(v13))
    {
      v14 = OUTLINED_FUNCTION_35_8();
      *v14 = 0;
      _os_log_impl(&dword_1DC287000, v12, v13, "Entity callback from RRaSS failed", v14, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    a1 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    sub_1DC28D414();
    OUTLINED_FUNCTION_10_7();
    v15(v10);

    v12 = sub_1DC516F6C();
    v16 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v16))
    {
      OUTLINED_FUNCTION_11();
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = a1[2];
      sub_1DC312B88(a1, 0);
      OUTLINED_FUNCTION_9_4();
      _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    else
    {
      sub_1DC312B88(a1, 0);
    }
  }

  v23 = OUTLINED_FUNCTION_30_6();
  v24(v23);
  return a1;
}

uint64_t sub_1DC3114B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a2;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v141 = v4;
  v142 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v155 = v6 - v5;
  OUTLINED_FUNCTION_12();
  v143 = sub_1DC511B0C();
  OUTLINED_FUNCTION_0();
  v128 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v126 = v10;
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC51663C();
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v132 = v14 - v13;
  OUTLINED_FUNCTION_12();
  v149 = sub_1DC5118BC();
  OUTLINED_FUNCTION_0();
  v136 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v138 = v18 - v17;
  OUTLINED_FUNCTION_12();
  v135 = sub_1DC51128C();
  OUTLINED_FUNCTION_0();
  v134 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v144 = v22;
  OUTLINED_FUNCTION_12();
  v23 = sub_1DC51665C();
  v24 = OUTLINED_FUNCTION_10(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v139 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8F8, &qword_1DC523848);
  OUTLINED_FUNCTION_10(v27);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  v145 = v125 - v29;
  OUTLINED_FUNCTION_12();
  v140 = sub_1DC516FFC();
  OUTLINED_FUNCTION_0();
  v137 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1();
  v130 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C900, &unk_1DC523850);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_62();
  v147 = v38;
  OUTLINED_FUNCTION_12();
  sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v153 = v39;
  v154 = v40;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_8();
  v43 = v41 - v42;
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = v125 - v46;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_62();
  v152 = v48;
  OUTLINED_FUNCTION_12();
  v49 = sub_1DC51711C();
  OUTLINED_FUNCTION_0();
  v51 = v50;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_8();
  v55 = v53 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v58 = v125 - v57;
  v146 = a1;
  sub_1DC516FBC();
  sub_1DC51710C();
  v61 = *(v51 + 8);
  v59 = v51 + 8;
  v60 = v61;
  v61(v58, v49);
  v62 = sub_1DC5147AC();

  v148 = v62;
  v63 = v151;
  sub_1DC51391C();
  if (v63)
  {
    v64 = sub_1DC28D414();
    v66 = v141;
    v65 = v142;
    (*(v141 + 16))(v155, v64, v142);
    v67 = v63;
    v68 = sub_1DC516F6C();
    v69 = sub_1DC517BAC();

    if (os_log_type_enabled(v68, v69))
    {
      OUTLINED_FUNCTION_11();
      v70 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v71 = swift_slowAlloc();
      v157 = v71;
      *v70 = 136315138;
      v156 = v63;
      v72 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
      v73 = sub_1DC51777C();
      v75 = sub_1DC291244(v73, v74, &v157);

      *(v70 + 4) = v75;
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_40_8();
      _os_log_impl(v76, v77, v78, v79, v80, v81);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    else
    {
    }

    (*(v66 + 8))(v155, v65);
    OUTLINED_FUNCTION_19();
    return __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
  }

  v142 = v43;
  v155 = 0;
  (*(v154 + 32))(v152, v47, v153);
  v82 = v147;
  OUTLINED_FUNCTION_19();
  v83 = v143;
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v143);
  sub_1DC516FBC();
  v87 = v145;
  sub_1DC5170EC();
  v151 = v60;
  v60(v55, v49);
  v88 = v140;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v87, 1, v140);
  v90 = v83;
  v91 = v82;
  v92 = v49;
  v125[1] = v59;
  if (EnumTagSinglePayload != 1)
  {
    v101 = v130;
    (*(v137 + 32))(v130, v145, v88);
    v102 = v129;
    sub_1DC511AFC();
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v90);
    sub_1DC312C74(v102, v91);
    v106 = __swift_getEnumTagSinglePayload(v91, 1, v90);
    v93 = v138;
    if (!v106)
    {
      sub_1DC516FDC();
      sub_1DC5177AC();

      v91 = v147;
      sub_1DC511AEC();
    }

    v107 = __swift_getEnumTagSinglePayload(v91, 1, v90);
    v94 = v144;
    v95 = v154;
    if (v107)
    {
      goto LABEL_14;
    }

    result = sub_1DC516FEC();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (result <= 0x7FFFFFFF)
    {
      sub_1DC511ACC();
      v88 = v140;
LABEL_14:
      (*(v137 + 8))(v101, v88);
      goto LABEL_15;
    }

    __break(1u);
    return result;
  }

  sub_1DC2BE530(v145, &qword_1ECC7C8F8, &qword_1DC523848);
  v93 = v138;
  v94 = v144;
  v95 = v154;
LABEL_15:
  sub_1DC516FBC();
  sub_1DC5170FC();
  v108 = OUTLINED_FUNCTION_23_2();
  v109 = v151;
  v151(v108, v92);
  sub_1DC3B8EB4(v58, v94);

  sub_1DC5118AC();
  (*(v95 + 16))(v142, v152, v153);
  sub_1DC51183C();
  sub_1DC516FAC();
  sub_1DC517B2C();
  sub_1DC51181C();
  sub_1DC516FBC();
  sub_1DC5170DC();
  v109(v58, v92);
  sub_1DC5177AC();

  sub_1DC51187C();
  sub_1DC516FBC();
  sub_1DC5170CC();
  v109(v58, v92);
  sub_1DC5177AC();

  sub_1DC5117EC();
  v110 = v147;
  v111 = v131;
  sub_1DC312C04(v147, v131);
  v112 = v143;
  if (__swift_getEnumTagSinglePayload(v111, 1, v143) == 1)
  {
    sub_1DC2BE530(v111, &qword_1ECC7C900, &unk_1DC523850);
  }

  else
  {
    v113 = v128;
    v114 = v126;
    v115 = OUTLINED_FUNCTION_30_6();
    v116(v115);
    (*(v113 + 16))(v127, v114, v112);
    sub_1DC51185C();
    (*(v113 + 8))(v114, v112);
  }

  v117 = v136;
  v118 = v135;
  v119 = v134;
  v120 = v144;
  (*(v134 + 16))(v133, v144, v135);
  sub_1DC51189C();

  (*(v119 + 8))(v120, v118);
  (*(v154 + 8))(v152, v153);
  v121 = v149;
  (*(v117 + 32))(v150, v93, v149);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v121);
  return sub_1DC2BE530(v110, &qword_1ECC7C900, &unk_1DC523850);
}

id sub_1DC312028(uint64_t a1)
{
  v1 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_12_0();
  if ((*(v8 + 120))())
  {
    v9 = sub_1DC516E1C();
  }

  else
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_10_7();
    v10(v7);
    v11 = sub_1DC516F6C();
    v12 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_25_0(v12))
    {
      OUTLINED_FUNCTION_11();
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1DC291244(0xD000000000000028, 0x80000001DC53E680, &v23);
      OUTLINED_FUNCTION_40_8();
      _os_log_impl(v15, v16, v17, v18, v19, v20);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    (*(v3 + 8))(v7, v1);
    v21 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    return OUTLINED_FUNCTION_18_6();
  }

  return v9;
}

uint64_t sub_1DC312214()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D330, &unk_1DC5283B0);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_40();
  sub_1DC51713C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = (*(*v0 + 272))(v1, 0, 0);
  v9 = OUTLINED_FUNCTION_30_6();
  sub_1DC2BE530(v9, v10, &unk_1DC5283B0);
  v11 = v0[8];
  OUTLINED_FUNCTION_27_5();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  *(v12 + 24) = v8;
  OUTLINED_FUNCTION_27_5();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1DC312B0C;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1DC292A1C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_5_0();
  aBlock[2] = v14;
  aBlock[3] = &block_descriptor_13;
  v15 = _Block_copy(aBlock);

  dispatch_sync(v11, v15);
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC312400()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8E8, &qword_1DC523760);
  sub_1DC517BFC();
  return v1;
}

uint64_t sub_1DC312474()
{
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_27_5();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DC312B6C;
  *(v2 + 24) = v0;
  v6[4] = sub_1DC292A1C;
  v6[5] = v2;
  OUTLINED_FUNCTION_13_1();
  v6[1] = 1107296256;
  OUTLINED_FUNCTION_5_0();
  v6[2] = v3;
  v6[3] = &block_descriptor_20;
  v4 = _Block_copy(v6);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC312580()
{

  sub_1DC2B5848(*(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t sub_1DC3125BC()
{
  sub_1DC312580();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

id sub_1DC312744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1DC5176FC();

  if (a4)
  {
    v8 = sub_1DC51760C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

void *sub_1DC312824(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1DC312910(v8, v7);
  v10 = *(sub_1DC5118BC() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1DC312A0C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1DC312910(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8F0, &qword_1DC523840);
  v4 = *(sub_1DC5118BC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC312A0C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1DC5118BC(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1DC5118BC();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DC312B0C()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

void sub_1DC312B88(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1DC312B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D330, &unk_1DC5283B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC312C04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C900, &unk_1DC523850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC312C74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C900, &unk_1DC523850);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC312CE4(void *a1, char a2)
{
  v3 = *(v2 + 24);
  v4 = sub_1DC3112A8(a1, a2 & 1);
  OUTLINED_FUNCTION_34_5(v3 + 16, v5);
  *(v3 + 16) = v4;

  return sub_1DC517D1C();
}

void sub_1DC312D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

unint64_t sub_1DC312D80()
{
  result = qword_1EDAC7FA0;
  if (!qword_1EDAC7FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAC7FA0);
  }

  return result;
}

uint64_t sub_1DC312DC4()
{
  sub_1DC516E4C();
  v1 = sub_1DC516E3C();
  v2 = *(*v0 + 128);

  return v2(v1);
}

uint64_t sub_1DC312E24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DC312E7C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v6 = MEMORY[0x1E69D02F8];
      goto LABEL_6;
    case 2:
      v6 = MEMORY[0x1E69D02D8];
      goto LABEL_6;
    case 3:
      v6 = MEMORY[0x1E69D02F0];
LABEL_6:
      v7 = *v6;
      v8 = sub_1DC5157EC();
      (*(*(v8 - 8) + 104))(a2, v7, v8);
      v4 = a2;
      v5 = 0;
      v3 = v8;
      break;
    default:
      v3 = sub_1DC5157EC();
      v4 = a2;
      v5 = 1;
      break;
  }

  return __swift_storeEnumTagSinglePayload(v4, v5, 1, v3);
}

unint64_t sub_1DC312F68(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DC51808C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DC312FB4(char a1)
{
  result = 6710863;
  switch(a1)
  {
    case 1:
      result = 0x72656E6E616C50;
      break;
    case 2:
      result = 0x5869726953;
      break;
    case 3:
      result = 0x6372616553415150;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DC31303C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x64656C6261736944;
  }

  else
  {
    v3 = 0x64656C62616E45;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x64656C6261736944;
  }

  else
  {
    v5 = 0x64656C62616E45;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC3130DC(unsigned __int8 a1, char a2)
{
  v2 = 6710863;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6710863;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x72656E6E616C50;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x5869726953;
      break;
    case 3:
      v5 = 0x6372616553415150;
      v3 = 0xE900000000000068;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x72656E6E616C50;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x5869726953;
      break;
    case 3:
      v2 = 0x6372616553415150;
      v6 = 0xE900000000000068;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC31322C(uint64_t a1)
{
  v1 = a1;
  sub_1DC5182FC();
  sub_1DC313288(v3, v1);
  return sub_1DC51833C();
}

uint64_t sub_1DC313288(uint64_t a1, char a2)
{
  sub_1DC51769C();
}

uint64_t sub_1DC313338(uint64_t a1, char a2)
{
  sub_1DC51769C();
}

uint64_t sub_1DC3133AC(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC31342C(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  sub_1DC313288(v4, a2);
  return sub_1DC51833C();
}

unint64_t sub_1DC313470@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC312F68(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DC3134A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC312FB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DC3134CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DC51808C();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DC313520(char a1)
{
  if (a1)
  {
    return 0x64656C6261736944;
  }

  else
  {
    return 0x64656C62616E45;
  }
}

uint64_t sub_1DC31357C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC3134CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DC3135AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC313520(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1DC313670()
{
  sub_1DC343138();

  return OUTLINED_FUNCTION_43();
}

uint64_t sub_1DC3136DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v16 = type metadata accessor for HeuristicRulesUserDefault(0, a8, a3, a4);
  result = (*(*(a8 - 8) + 32))(&a9[v16[7]], a3, a8);
  *&a9[v16[8]] = a4;
  v18 = &a9[v16[9]];
  *v18 = a5;
  *(v18 + 1) = a6;
  *&a9[v16[10]] = a7;
  return result;
}

uint64_t sub_1DC3137AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a1;
  v91 = a2;
  v3 = a1 - 8;
  v89 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_8();
  v82 = (v4 - v5);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v78 - v7;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v78 - v9;
  v10 = *(v3 + 24);
  v11 = sub_1DC517D8C();
  OUTLINED_FUNCTION_2_3();
  v87 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v78 - v18;
  OUTLINED_FUNCTION_2_3();
  v92 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  v83 = (v22 - v23);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v24);
  v88 = &v78 - v25;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v26);
  v81 = &v78 - v27;
  OUTLINED_FUNCTION_22();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v78 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v86 = &v78 - v32;
  v33 = *(v2 + *(v3 + 48));
  v34 = *v2;
  v35 = v2[1];
  v36 = sub_1DC5176FC();
  v37 = [v33 objectForKey_];

  if (v37)
  {
    sub_1DC517E8C();
    swift_unknownObjectRelease();
    sub_1DC291F78(v94, v93);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_10_8(v19, 0);
      v38 = v92;
      v39 = v86;
      v87 = *(v92 + 32);
      v88 = (v92 + 32);
      (v87)(v86, v19, v10);
      v40 = sub_1DC517B9C();
      v41 = v90;
      v42 = *(v2 + *(v90 + 32));
      v43 = *(v89 + 16);
      v43(v84, v2, v90);
      v43(v85, v2, v41);
      v44 = *(v38 + 16);
      v82 = v10;
      v83 = v31;
      v44(v31, v39, v10);
      LODWORD(v79) = v40;
      v80 = v42;
      if (os_log_type_enabled(v42, v40))
      {
        v45 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v93[0] = v78;
        *v45 = 136315650;
        v46 = v84;
        v47 = v44;
        v48 = v92;
        v49 = *(v89 + 8);

        v49(v46, v41);
        v50 = OUTLINED_FUNCTION_6_7();

        *(v45 + 4) = v50;
        *(v45 + 12) = 2080;
        v51 = v85;

        v49(v51, v41);
        v52 = OUTLINED_FUNCTION_6_7();

        *(v45 + 14) = v52;
        *(v45 + 22) = 2080;
        v53 = v82;
        v54 = v83;
        v47(v81, v83, v82);
        OUTLINED_FUNCTION_43();
        sub_1DC51777C();
        (*(v48 + 8))(v54, v53);
        v55 = OUTLINED_FUNCTION_6_7();

        *(v45 + 24) = v55;
        _os_log_impl(&dword_1DC287000, v80, v79, "defaults read %s %s -> %s", v45, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_66();
      }

      else
      {
        v53 = v82;
        (*(v92 + 8))(v83, v82);
        v77 = *(v89 + 8);
        v77(v85, v41);
        v77(v84, v41);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v94);
      return (v87)(v91, v86, v53);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v94);
    OUTLINED_FUNCTION_10_8(v19, 1);
    (*(v87 + 8))(v19, v11);
  }

  sub_1DC41DAEC(v34, v35, v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3F0, &qword_1DC5238B0);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_10_8(v16, 0);
    v56 = v92;
    v57 = v88;
    v86 = *(v92 + 32);
    v87 = v92 + 32;
    (v86)(v88, v16, v10);
    v58 = sub_1DC517B9C();
    v59 = v89;
    v60 = v90;
    v61 = *(v2 + *(v90 + 32));
    v62 = v82;
    (*(v89 + 16))(v82, v2, v90);
    v63 = v83;
    v80 = *(v56 + 16);
    (v80)(v83, v57, v10);
    LODWORD(v84) = v58;
    v85 = v61;
    if (os_log_type_enabled(v61, v58))
    {
      v64 = swift_slowAlloc();
      *&v94[0] = swift_slowAlloc();
      *v64 = 136315394;
      v65 = v62[1];
      v79 = *v62;
      v66 = v56;
      v67 = *(v59 + 8);

      v67(v62, v60);
      v68 = sub_1DC291244(v79, v65, v94);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2080;
      v69 = v83;
      (v80)(v81, v83, v10);
      v70 = sub_1DC51777C();
      v72 = v71;
      (*(v66 + 8))(v69, v10);
      v73 = sub_1DC291244(v70, v72, v94);

      *(v64 + 14) = v73;
      _os_log_impl(&dword_1DC287000, v85, v84, "heuristic rule configured by asset: %s -> %s", v64, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_66();
      v74 = v10;
      OUTLINED_FUNCTION_66();
    }

    else
    {
      v76 = v63;
      v74 = v10;
      (*(v56 + 8))(v76, v10);
      (*(v59 + 8))(v62, v60);
    }

    return (v86)(v91, v88, v74);
  }

  else
  {
    OUTLINED_FUNCTION_10_8(v16, 1);
    (*(v87 + 8))(v16, v11);
    return (*(v92 + 16))(v91, v2 + *(v90 + 28), v10);
  }
}

uint64_t sub_1DC31405C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3F0, &qword_1DC5238B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DC3140C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7C908;
  if (!qword_1ECC7C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7C908);
  }

  return result;
}

unint64_t sub_1DC314120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7C910;
  if (!qword_1ECC7C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7C910);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeuristicRoutingOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
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
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_41_0((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_41_0(v8);
}

_BYTE *storeEnumTagSinglePayload for HeuristicRoutingOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HeuristicRewriteOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DC3143B8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1DC298C74(319, &qword_1EDAC7F90, 0x1E69E9BF8);
    if (v3 <= 0x3F)
    {
      result = sub_1DC298C74(319, &qword_1ECC7B9B0, 0x1E695E000);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DC314488(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = OUTLINED_FUNCTION_41_0(v8 + (v11 | v16));
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DC3145DC(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
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
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v20 = (a1 + v10 + 16) & ~v10;

            __swift_storeEnumTagSinglePayload(v20, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            a1[1] = 0;
          }

          else
          {
            a1[1] = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = OUTLINED_FUNCTION_43();
      bzero(v18, v19);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DC314820()
{
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0](0);
  return sub_1DC51833C();
}

uint64_t sub_1DC314874(uint64_t a1)
{
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0](0);
  return sub_1DC51833C();
}

uint64_t NLRouterBridge.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_1DC28FB9C(a3, v20);
  v18 = type metadata accessor for NLRouterClientProvider();
  v19 = &off_1F57F6D58;
  v17[0] = swift_allocObject();
  sub_1DC28FB9C(a6, v16);
  v15[3] = type metadata accessor for BackgroundTaskScheduler();
  v15[4] = &off_1F57F88A0;
  v15[0] = sub_1DC2BA4FC();
  v13 = (*(v6 + class metadata base offset for NLRouterBridge + 112))(a1, a2, v20, a4, a5, v17, v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v13;
}

void sub_1DC3149E4()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  swift_allocObject();
  sub_1DC314A68(v15, v13, v11, v9, v7, v5, v3, v1);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC314A68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v13 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  *(v8 + _MergedGlobals) = 0;
  *(v8 + qword_1EDAC7D98) = 0;
  *(v8 + qword_1EDAC7DA0) = 0;
  sub_1DC28FB9C(a6, v8 + qword_1EDAC7DA8);
  sub_1DC28FB9C(a8, v8 + qword_1EDAC7DB0);
  sub_1DC28FB9C(a3, v37);
  sub_1DC28FB9C(a7, v36);
  swift_unknownObjectRetain();
  v20 = a5;
  v21 = sub_1DC29120C();
  (*(v15 + 16))(v19, v21, v13);
  v22 = sub_1DC51692C();
  *(v22 + qword_1EDAC7D98) = 0;

  *(v22 + qword_1EDAC7DA0) = 0;

  sub_1DC315228();
  sub_1DC28FB9C(v22 + qword_1EDAC7DB0, v37);
  v23 = v38;
  v24 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v25 = *sub_1DC3590F4();
  v26 = sub_1DC3590E8();
  v28 = *v26;
  v27 = v26[1];
  v29 = *(v24 + 8);

  v29(v28, v27, v23, v24, v25);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a8);
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  return v22;
}

uint64_t sub_1DC314CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v86 = a7;
  v87 = a8;
  v81 = a6;
  v84 = a4;
  v85 = a2;
  v82 = a3;
  v83 = a1;
  v10 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v79 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C918, &qword_1DC523AB0);
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v72 - v18;
  v19 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  v31 = *(v9 + _MergedGlobals);
  if (v31)
  {
    v32 = *(v27 + 16);
    v78 = v30;
    v32();

    v33 = sub_1DC516AAC();
    v76 = v34;
    v77 = v33;
    (*(v21 + 16))(v25, v31 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionLocale, v19);
    sub_1DC516A8C();
    v75 = sub_1DC516A7C();
    sub_1DC28FB9C(v31 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionState, v94);
    sub_1DC28FB9C(v31 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionStoreConversationHistoryProvider, v93);
    v35 = type metadata accessor for UserDefaultsRoutingDecisionOverrideProvider();
    v36 = sub_1DC2BA4FC();
    v92[3] = v35;
    v92[4] = &off_1F57F90D8;
    v92[0] = v36;
    sub_1DC28FB9C(v31 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_nlRouterClient, v91);
    sub_1DC28FB9C(v31 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_nlRouterExperimentController, v90);
    v37 = *(v31 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_queryDecorationClient);
    v89[3] = sub_1DC5151AC();
    v89[4] = &off_1F57F9B00;
    v89[0] = v37;
    v38 = *(v31 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_contextRetrievalClient);

    v74 = v38;

    v73 = sub_1DC3B5114(0, v39, v40);
    v72 = sub_1DC3B5114(0, v41, v42);
    sub_1DC51735C();
    v43 = v80;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
    v50 = 0;
    if (sub_1DC3B5114(1, v48, v49))
    {
      v50 = sub_1DC2D14F0();
    }

    v79 = v25;
    sub_1DC316BEC();
    if (v51)
    {
      sub_1DC316BEC();
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    v80 = type metadata accessor for NLRouterRequestProcessor(0);
    v63 = *(v9 + qword_1EDAC7DA0);

    sub_1DC36549C();
    v64 = sub_1DC3654E8();
    v65 = v87;

    v66 = v85;

    v67 = v84;

    HIBYTE(v71) = v53 & 1;
    LOBYTE(v71) = v50 & 1;
    HIBYTE(v70) = v72 & 1;
    LOBYTE(v70) = v73 & 1;
    sub_1DC365514(v82, v67, v78, v83, v66, v86, v65, v77, v76, v79, v81 & 1, v95, v75, v94, v93, v92, v91, v90, v89, v74, v70, v43, 0, 1, &v88, v64, v71, v63);
    v15 = v68;
  }

  else
  {
    v54 = sub_1DC29120C();
    v55 = v79;
    (*(v79 + 16))(v15, v54, v10);
    v56 = sub_1DC516F6C();
    v57 = sub_1DC517BAC();
    if (os_log_type_enabled(v56, v57))
    {
      OUTLINED_FUNCTION_17_4();
      v58 = swift_slowAlloc();
      OUTLINED_FUNCTION_31_2(v58);
      _os_log_impl(&dword_1DC287000, v56, v57, "sessionContext should have been created when we received SessionStartedMessage and should never be nil here.", v21, 2u);
      v59 = OUTLINED_FUNCTION_7_7();
      MEMORY[0x1E1298840](v59);
    }

    v60 = (*(v55 + 8))(v15, v10);
    sub_1DC316FBC(v60, v61, v62);
    swift_allocError();
    swift_willThrow();
  }

  return v15;
}

void sub_1DC315228()
{
  OUTLINED_FUNCTION_33();
  v0 = sub_1DC516A0C();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  sub_1DC5153FC();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  sub_1DC51529C();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  sub_1DC5152EC();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  v7 = *(v2 + 104);
  v8 = OUTLINED_FUNCTION_4_8();
  v7(v8);
  sub_1DC515B7C();
  type metadata accessor for NLRouterRequestProcessor(0);
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v9 = *(v2 + 8);
  v10 = OUTLINED_FUNCTION_36();
  v9(v10);
  v11 = OUTLINED_FUNCTION_4_8();
  v7(v11);
  sub_1DC515ABC();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v12 = OUTLINED_FUNCTION_36();
  v9(v12);
  (v7)(v6, *MEMORY[0x1E69D2B10], v0);
  sub_1DC515C2C();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v13 = OUTLINED_FUNCTION_36();
  v9(v13);
  v14 = OUTLINED_FUNCTION_4_8();
  v7(v14);
  sub_1DC515BBC();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v15 = OUTLINED_FUNCTION_36();
  v9(v15);
  v16 = OUTLINED_FUNCTION_4_8();
  v7(v16);
  sub_1DC515AFC();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v17 = OUTLINED_FUNCTION_36();
  v9(v17);
  v18 = OUTLINED_FUNCTION_4_8();
  v7(v18);
  sub_1DC515C4C();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v19 = OUTLINED_FUNCTION_36();
  v9(v19);
  v20 = *MEMORY[0x1E69D2B18];
  (v7)(v6, v20, v0);
  sub_1DC5152DC();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v21 = OUTLINED_FUNCTION_36();
  v9(v21);
  (v7)(v6, v20, v0);
  sub_1DC515A9C();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v22 = OUTLINED_FUNCTION_36();
  v9(v22);
  v23 = OUTLINED_FUNCTION_4_8();
  v7(v23);
  sub_1DC515CFC();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v24 = OUTLINED_FUNCTION_36();
  v9(v24);
  v25 = OUTLINED_FUNCTION_4_8();
  v7(v25);
  sub_1DC515B9C();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v26 = OUTLINED_FUNCTION_36();
  v9(v26);
  v27 = OUTLINED_FUNCTION_4_8();
  v7(v27);
  sub_1DC51539C();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v28 = OUTLINED_FUNCTION_36();
  v9(v28);
  v29 = OUTLINED_FUNCTION_4_8();
  v7(v29);
  sub_1DC515D5C();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v30 = OUTLINED_FUNCTION_36();
  v9(v30);
  v31 = OUTLINED_FUNCTION_4_8();
  v7(v31);
  sub_1DC515D4C();
  OUTLINED_FUNCTION_1_4();
  sub_1DC51691C();
  v32 = OUTLINED_FUNCTION_36();
  v9(v32);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC315A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1DC28F358(a3, v24 - v10, &unk_1ECC7D050, &qword_1DC523AC0);
  v12 = sub_1DC517AAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1DC28EB30(v11, &unk_1ECC7D050, &qword_1DC523AC0);
  }

  else
  {
    sub_1DC517A9C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1DC517A7C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1DC51779C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1DC28EB30(a3, &unk_1ECC7D050, &qword_1DC523AC0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DC28EB30(a3, &unk_1ECC7D050, &qword_1DC523AC0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_1DC315CE8()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v51 - v6;
  v8 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = sub_1DC29120C();
  (*(v10 + 16))(v14, v15, v8);
  v16 = v3;
  v17 = sub_1DC516F6C();
  v18 = sub_1DC517B9C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v52 = v7;
    v20 = v19;
    v21 = swift_slowAlloc();
    v51[1] = v1;
    v22 = v21;
    v53 = v21;
    *v20 = 136315138;
    v23 = [v16 description];
    v24 = sub_1DC51772C();
    v26 = v25;

    v27 = sub_1DC291244(v24, v26, &v53);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_1DC287000, v17, v18, "Received handleTypingStartedMessage msg: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    v7 = v52;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  (*(v10 + 8))(v14, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C930, &qword_1DC523AE8);
  v28 = sub_1DC516AFC();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  v32 = *(v31 + 72);
  v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1DC523AA0;
  v35 = v34 + v33;
  v36 = *(v30 + 104);
  (v36)(v35, *MEMORY[0x1E69A9008], v28);
  (v36)(v35 + v32, *MEMORY[0x1E69A9078], v28);
  (v36)(v35 + 2 * v32, *MEMORY[0x1E69A9068], v28);
  v37 = OUTLINED_FUNCTION_42_7(3 * v32);
  v36(v37);
  (v36)(v35 + 4 * v32, *MEMORY[0x1E69A9048], v28);
  v38 = OUTLINED_FUNCTION_42_7(5 * v32);
  v36(v38);
  (v36)(v35 + 6 * v32, *MEMORY[0x1E69A8FD8], v28);
  v39 = OUTLINED_FUNCTION_42_7(7 * v32);
  v36(v39);
  (v36)(v35 + 8 * v32, *MEMORY[0x1E69A8FC8], v28);
  v40 = OUTLINED_FUNCTION_42_7(9 * v32);
  v36(v40);
  (v36)(v35 + 10 * v32, *MEMORY[0x1E69A8FF0], v28);
  (v36)(v35 + 11 * v32, *MEMORY[0x1E69A9000], v28);
  (v36)(v35 + 12 * v32, *MEMORY[0x1E69A8FE0], v28);
  (v36)(v35 + 13 * v32, *MEMORY[0x1E69A9080], v28);
  (v36)(v35 + 14 * v32, *MEMORY[0x1E69A9020], v28);
  sub_1DC517AAC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = swift_allocObject();
  v46[2] = 0;
  v46[3] = 0;
  v46[4] = v45;
  v46[5] = v34;
  v47 = OUTLINED_FUNCTION_27_7();
  sub_1DC315A04(v47, v48, v7, v49, v50);

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC316214()
{
  OUTLINED_FUNCTION_1_0();
  v0[5] = v1;
  v0[6] = v2;
  v3 = sub_1DC516F7C();
  v0[7] = v3;
  OUTLINED_FUNCTION_52(v3);
  v0[8] = v4;
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1DC3162F4()
{
  OUTLINED_FUNCTION_37_4();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (!Strong)
  {
    v18 = v0 + 13;
    sub_1DC29120C();
    v19 = OUTLINED_FUNCTION_8_4();
    v20(v19);
    v21 = sub_1DC516F6C();
    v22 = sub_1DC517BAC();
    v23 = OUTLINED_FUNCTION_25_0(v22);
    v24 = v0[8];
    if (v23)
    {
      OUTLINED_FUNCTION_17_4();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_43_7(&dword_1DC287000, v25, v26, "handleTypingStartedMessage: Unexpected! NLRouterBridge deallocated before calling context retrieval refresh");
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    goto LABEL_13;
  }

  v2 = *(Strong + _MergedGlobals);
  v0[15] = v2;
  v3 = v0[7];
  v4 = v0[8];
  if (v2)
  {
    v5 = v0[11];

    v6 = sub_1DC29120C();
    v0[16] = v6;
    v7 = *(v4 + 16);
    v0[17] = v7;
    v0[18] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v5, v6, v3);
    v8 = sub_1DC516F6C();
    v9 = sub_1DC517B8C();
    if (OUTLINED_FUNCTION_25_0(v9))
    {
      OUTLINED_FUNCTION_17_4();
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DC287000, v8, v9, "Calling Context Retrieval refresh", v10, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v11 = v0[11];
    v12 = v0[7];
    v13 = v0[8];
    v14 = v0[6];

    v15 = *(v13 + 8);
    v0[19] = v15;
    v15(v11, v12);
    v16 = OBJC_IVAR____TtC13CDMFoundation14SessionContext_contextRetrievalClient;
    v0[20] = OBJC_IVAR____TtC13CDMFoundation14SessionContext_contextRetrievalClient;
    v0[21] = *(*(v2 + v16) + 16);

    v17 = swift_task_alloc();
    v0[22] = v17;
    *v17 = v0;
    v17[1] = sub_1DC316654;

    return MEMORY[0x1EEE12050](v14);
  }

  v18 = v0 + 12;
  v27 = v0[12];
  v28 = sub_1DC29120C();
  (*(v4 + 16))(v27, v28, v3);
  v21 = sub_1DC516F6C();
  v29 = sub_1DC517BAC();
  v30 = OUTLINED_FUNCTION_25_0(v29);
  v24 = v0[8];
  if (!v30)
  {

LABEL_13:

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_17_4();
  v31 = swift_slowAlloc();
  *v31 = 0;
  _os_log_impl(&dword_1DC287000, v21, v29, "handleTypingStartedMessage: SessionContext should have been created when we received SessionStartedMessage and should never be nil here.", v31, 2u);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x1E1298840]();

LABEL_14:
  (*(v24 + 8))(*v18, v0[7]);

  OUTLINED_FUNCTION_2_2();

  return v32();
}

uint64_t sub_1DC316654()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v3 + 184) = v0;

  if (v0)
  {
    v6 = sub_1DC3168E8;
  }

  else
  {

    v6 = sub_1DC316760;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DC316760()
{
  v1 = *(v0 + 136);
  v2 = *(**(*(v0 + 120) + *(v0 + 160)) + 104);

  v2(1);

  v3 = OUTLINED_FUNCTION_36();
  v1(v3);
  v4 = sub_1DC516F6C();
  v5 = sub_1DC517B8C();
  if (OUTLINED_FUNCTION_20_1(v5))
  {
    OUTLINED_FUNCTION_17_4();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_31_2(v6);
    OUTLINED_FUNCTION_16_2(&dword_1DC287000, v7, v8, "Context Retrieval refresh finished");
    v9 = OUTLINED_FUNCTION_7_7();
    MEMORY[0x1E1298840](v9);
  }

  else
  {
  }

  (*(v0 + 152))(*(v0 + 80), *(v0 + 56));

  OUTLINED_FUNCTION_2_2();

  return v10();
}

uint64_t sub_1DC3168E8()
{
  OUTLINED_FUNCTION_37_4();
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  v1(v3, v2, v4);
  v5 = sub_1DC516F6C();
  v6 = sub_1DC517BAC();
  v7 = OUTLINED_FUNCTION_20_1(v6);
  v8 = *(v0 + 184);
  if (v7)
  {
    OUTLINED_FUNCTION_17_4();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_31_2(v9);
    OUTLINED_FUNCTION_16_2(&dword_1DC287000, v10, v11, "Calling Context Retrieval refresh failed. This will result in stale context downstream");
    v12 = OUTLINED_FUNCTION_7_7();
    MEMORY[0x1E1298840](v12);
  }

  else
  {
  }

  (*(v0 + 152))(*(v0 + 72), *(v0 + 56));

  OUTLINED_FUNCTION_2_2();

  return v13();
}

uint64_t sub_1DC316A40()
{
  OUTLINED_FUNCTION_37_4();
  v1 = v0[16];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_1DC29F384(v0[13]);
  v5 = sub_1DC29120C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1DC516F6C();
  v8 = sub_1DC517BAC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[16];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1DC287000, v7, v8, "error calling nlRouterClient.setupNLRouter %{public}@", v11, 0xCu);
    sub_1DC28EB30(v12, &qword_1ECC7DFE0, &qword_1DC5227F0);
    v15 = OUTLINED_FUNCTION_7_7();
    MEMORY[0x1E1298840](v15);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  OUTLINED_FUNCTION_44_5();

  OUTLINED_FUNCTION_2_2();

  return v16();
}

void sub_1DC316BEC()
{
  OUTLINED_FUNCTION_33();
  v27 = *MEMORY[0x1E69E9840];
  v0 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = (v4 - v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v25 = 0;
  v26 = 0;
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer)
  {
    v11 = domain_answer;
    v12 = sub_1DC29120C();
    (*(v2 + 16))(v6, v12, v0);
    v13 = sub_1DC516F6C();
    v14 = sub_1DC517B9C();
    if (!OUTLINED_FUNCTION_25_0(v14))
    {
      goto LABEL_9;
    }

    v15 = swift_slowAlloc();
    *(OUTLINED_FUNCTION_38_7(v15, 3.8521e-34) + 14) = v11;
    _os_log_impl(&dword_1DC287000, v13, v14, "OS eligibility: Unable to determine eligibility of %llu due to error %d. Defaulting to ineligible", v15, 0x12u);
  }

  else
  {
    v17 = v25;
    v16 = v26;
    v18 = sub_1DC29120C();
    (*(v2 + 16))(v9, v18, v0);
    v13 = sub_1DC516F6C();
    v19 = sub_1DC517B9C();
    if (!OUTLINED_FUNCTION_25_0(v19))
    {
      v6 = v9;
      goto LABEL_9;
    }

    v20 = v16 == 4;
    HIDWORD(v24) = v17 == 2;
    v21 = swift_slowAlloc();
    v22 = OUTLINED_FUNCTION_38_7(v21, 3.8523e-34);
    *(v22 + 14) = v20;
    *(v22 + 18) = v23;
    *(v22 + 20) = v17 == 1;
    *(v22 + 24) = v23;
    *(v22 + 26) = HIDWORD(v24);
    _os_log_impl(&dword_1DC287000, v13, v19, "OS eligibility: Domain %llu Eligible %{BOOL}d, Computed: %{BOOL}d, Forced: %{BOOL}d", v21, 0x1Eu);
    v6 = v9;
  }

  OUTLINED_FUNCTION_8_0();
  MEMORY[0x1E1298840]();
LABEL_9:

  (*(v2 + 8))(v6, v0);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC316EB4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC7DA8));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC7DB0));
}

uint64_t NLRouterBridge.deinit()
{
  v0 = sub_1DC51694C();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC7DA8));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC7DB0));

  return v0;
}

uint64_t NLRouterBridge.__deallocating_deinit()
{
  v0 = NLRouterBridge.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

unint64_t sub_1DC316FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7C920;
  if (!qword_1ECC7C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7C920);
  }

  return result;
}

void sub_1DC317010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_33();
  v49 = v21;
  v50 = v22;
  v51 = v23;
  v52 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v48 = v33;
  v35 = *(v27 + 24);
  v34 = *(v27 + 32);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v27, v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1();
  v39 = v38 - v37;
  (*(v40 + 16))(v38 - v37);
  v42 = v26[3];
  v41 = v26[4];
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v26, v42);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_1();
  v46 = v45 - v44;
  (*(v47 + 16))(v45 - v44);
  a21(v32, v30, v39, v48, v50, v46, v51, v52, v49, v42, v35, v41, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3171D8(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v37 = a7;
  v38 = a8;
  v35 = a4;
  v36 = a5;
  v33 = a1;
  v34 = a2;
  v14 = *(a10 - 8);
  v32 = a12;
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v31 - v19;
  v21 = *(a11 - 8);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v31 - v25;
  (*(v21 + 32))(&v31 - v25, v27, a11);
  (*(v14 + 32))(v20, a6, a10);
  type metadata accessor for SessionContext(0);
  v28 = swift_allocObject();
  (*(v21 + 16))(v24, v26, a11);
  (*(v14 + 16))(v17, v20, a10);
  v29 = sub_1DC3174E0(v33, v34, v24, v35, v36, v17, v37, v38, v28, a10, a11, v32, a13);
  (*(v14 + 8))(v20, a10);
  (*(v21 + 8))(v26, a11);
  return v29;
}

uint64_t sub_1DC317450()
{
  OUTLINED_FUNCTION_1_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  v1[1] = sub_1DC29F200;

  return sub_1DC316214();
}

uint64_t sub_1DC3174E0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = (a9 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionStoreConversationHistoryProvider);
  v19[3] = a11;
  v19[4] = a13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a11 - 8) + 32))(boxed_opaque_existential_1, a3, a11);
  v21 = (a9 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_nlRouterExperimentController);
  v21[3] = a10;
  v21[4] = a12;
  v22 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a10 - 8) + 32))(v22, a6, a10);
  v23 = OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionId;
  v24 = sub_1DC510B6C();
  (*(*(v24 - 8) + 32))(a9 + v23, a1, v24);
  v25 = OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionLocale;
  v26 = sub_1DC510C8C();
  (*(*(v26 - 8) + 32))(a9 + v25, a2, v26);
  sub_1DC28F9B0(a4, a9 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionState);
  sub_1DC28F9B0(a5, a9 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_nlRouterClient);
  *(a9 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_queryDecorationClient) = a7;
  *(a9 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_contextRetrievalClient) = a8;
  return a9;
}

unint64_t sub_1DC3176A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7C938;
  if (!qword_1ECC7C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7C938);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NLRouterBridge.NLRouterBridgeError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for NLRouterBridge.NLRouterBridgeError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DC3178A0(uint64_t a1)
{
  result = sub_1DC510B6C();
  if (v2 <= 0x3F)
  {
    result = sub_1DC510C8C();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DC31798C()
{
  OUTLINED_FUNCTION_41_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_19_2(v1);

  return v4(v3);
}

void sub_1DC317E1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v174 = a1;
  v172 = a2;
  v155 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v149 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v158 = v5 - v4;
  OUTLINED_FUNCTION_12();
  v168 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v148 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v154 = v8;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v166 = v10;
  OUTLINED_FUNCTION_12();
  v167 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v175 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v157 = v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v136 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C178, qword_1DC523CB0);
  v18 = OUTLINED_FUNCTION_10(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v156 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v159 = v21;
  OUTLINED_FUNCTION_12();
  v153 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v151 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v152 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v27 = OUTLINED_FUNCTION_10(v26);
  MEMORY[0x1EEE9AC00](v27);
  v165 = &v136 - v28;
  OUTLINED_FUNCTION_12();
  v173 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v162 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  v150 = v31;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v32);
  v160 = &v136 - v33;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_62();
  v161 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v136 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v41 = OUTLINED_FUNCTION_10(v40);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v136 - v42;
  v44 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_1();
  v163 = v47 - v46;
  OUTLINED_FUNCTION_12();
  v171 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v49 = v48;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_1();
  v53 = v52 - v51;
  v54 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v55 = sub_1DC2BE518();
  v56 = OUTLINED_FUNCTION_130();
  v169 = v54;
  v170 = v53;
  sub_1DC2A2ED0("HeuristicRules.NotificationRule", 31, 2, v55, v56 & 1, v53);

  v57 = v174;
  v58 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v57 + *(v58 + 32), v39, &qword_1ECC7C158, &unk_1DC5234A0);
  v59 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v39, 1, v59) == 1)
  {
    sub_1DC28EB30(v39, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v44);
LABEL_4:
    sub_1DC28EB30(v43, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_19();
LABEL_5:
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
    v68 = v170;
    v67 = v171;
LABEL_6:
    v69 = sub_1DC2BE518();
    sub_1DC2B8848(v68, "HeuristicRules.NotificationRule", 31, 2, v69);

    (*(v49 + 8))(v68, v67);
    return;
  }

  sub_1DC28F358(v39, v43, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v39, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
  {
    goto LABEL_4;
  }

  v70 = v163;
  sub_1DC2E53A4(v43, v163);
  v71 = *(type metadata accessor for HeuristicRoutingRequest(0) + 20);
  sub_1DC32DBF4();
  v72 = v173;
  if (v73)
  {
    OUTLINED_FUNCTION_4();
    sub_1DC2E5408(v70, v74);
    OUTLINED_FUNCTION_19();
    v66 = v72;
    goto LABEL_5;
  }

  v76 = v161;
  v75 = v162;
  (*(v162 + 16))(v161, v57 + v71, v173);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v77 = sub_1DC344F60();
  v79 = v78;
  v80 = v160;
  (*(v75 + 104))(v160, *MEMORY[0x1E69D02F0], v72);
  v147 = v71;
  v81 = sub_1DC5157DC();
  v82 = *(v75 + 8);
  v146 = v75 + 8;
  v145 = v82;
  v82(v80, v72);
  if ((v81 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v77 == sub_1DC312FB4(0) && v79 == v83)
  {

LABEL_17:

LABEL_18:
    v86 = v163;
LABEL_19:
    v87 = sub_1DC5157DC();
    OUTLINED_FUNCTION_4();
    sub_1DC2E5408(v86, v88);
    if (v87)
    {
      OUTLINED_FUNCTION_9_6();
      v89();
      v90 = 1;
      v68 = v170;
      v67 = v171;
      v91 = v172;
    }

    else
    {
      v91 = v172;
      (*(v75 + 32))(v172, v76, v72);
      v90 = 0;
      v68 = v170;
      v67 = v171;
    }

    __swift_storeEnumTagSinglePayload(v91, v90, 1, v72);
    goto LABEL_6;
  }

  v85 = sub_1DC51825C();

  if (v85)
  {
    goto LABEL_17;
  }

  v92 = sub_1DC312F68(v77, v79);
  v86 = v163;
  if (v92 == 4)
  {
    v93 = v165;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v72);
LABEL_26:
    sub_1DC28EB30(v93, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_19;
  }

  v93 = v165;
  sub_1DC312E7C(v92, v165);
  if (__swift_getEnumTagSinglePayload(v93, 1, v72) == 1)
  {
    goto LABEL_26;
  }

  v97 = *(v75 + 32);
  v140 = v75 + 32;
  v139 = v97;
  v97(v150, v93, v72);
  v98 = v167;
  v142 = *(*v86 + 16);
  if (!v142)
  {
LABEL_44:
    v72 = v173;
    OUTLINED_FUNCTION_9_6();
    v129();
    goto LABEL_18;
  }

  v99 = 0;
  OUTLINED_FUNCTION_24();
  v102 = v100 + v101;
  v164 = v175 + 16;
  v148 += 8;
  v103 = (v175 + 8);
  v144 = v175 + 32;
  v149 += 8;
  v141 = v104 + 8;
  v138 = v100;
  v137 = v100 + v101;
  v136 = v104 + 16;
  while (2)
  {
    if (v99 < *(v100 + 16))
    {
      (*(v151 + 16))(v152, v102 + *(v151 + 72) * v99, v153);
      v143 = v99 + 1;
      v105 = sub_1DC5111AC();

      v165 = 0;
      while (2)
      {
        v106 = *(v105 + 16);
        for (i = v165; ; ++i)
        {
          if (v106 == i)
          {
            v115 = 1;
            v165 = v106;
            goto LABEL_40;
          }

          if (v165 < 0)
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          if (i >= *(v105 + 16))
          {
            goto LABEL_46;
          }

          OUTLINED_FUNCTION_24();
          (*(v109 + 16))(v16, v105 + v108 + *(v109 + 72) * i, v98);
          if (sub_1DC5114CC())
          {
            v110 = v49;
            v111 = v166;
            sub_1DC51154C();
            v112 = sub_1DC51177C();
            OUTLINED_FUNCTION_37();
            v113 = v111;
            v49 = v110;
            v98 = v167;
            v114(v113, v168);
            if (v112)
            {
              break;
            }
          }

          (*v103)(v16, v98);
        }

        OUTLINED_FUNCTION_37();
        v116(v159, v16, v98);
        v115 = 0;
        v165 = i + 1;
LABEL_40:
        v117 = v159;
        __swift_storeEnumTagSinglePayload(v159, v115, 1, v98);
        v118 = v156;
        sub_1DC318B74(v117, v156);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v118, 1, v98);
        v121 = v157;
        v120 = v158;
        if (EnumTagSinglePayload != 1)
        {
          OUTLINED_FUNCTION_37();
          v122(v121, v118, v98);
          v123 = v154;
          sub_1DC51154C();
          sub_1DC51178C();
          OUTLINED_FUNCTION_37();
          v124(v123, v168);
          sub_1DC5138FC();
          OUTLINED_FUNCTION_37();
          v125(v120, v155);
          (*v103)(v121, v98);
          v126 = sub_1DC318BE4();

          if ((v126 & 1) == 0)
          {
            continue;
          }

          OUTLINED_FUNCTION_37();
          v130 = OUTLINED_FUNCTION_12_1();
          v131(v130);

          v132 = v160;
          v76 = v161;
          v133 = v150;
          sub_1DC32DE40();
          v134 = v133;
          v72 = v173;
          v135 = v145;
          v145(v134, v173);
          v135(v76, v72);
          v139(v76, v132, v72);
          v75 = v162;
          goto LABEL_18;
        }

        break;
      }

      OUTLINED_FUNCTION_37();
      v127 = OUTLINED_FUNCTION_12_1();
      v128(v127);

      v99 = v143;
      v76 = v161;
      v75 = v162;
      v100 = v138;
      v102 = v137;
      if (v143 != v142)
      {
        continue;
      }

      goto LABEL_44;
    }

    break;
  }

LABEL_47:
  __break(1u);
}

uint64_t sub_1DC318B74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C178, qword_1DC523CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DC318BE4()
{
  sub_1DC514ECC();
  OUTLINED_FUNCTION_0();
  v50 = v2;
  v51 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v49 = v4 - v3;
  OUTLINED_FUNCTION_12();
  v58 = sub_1DC514E7C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_1DC514E3C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v53 = v15;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A0, &qword_1DC522F80);
  v20 = OUTLINED_FUNCTION_10(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v54 = v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v55 = v23;
  v52 = v0;
  result = sub_1DC514EEC();
  v25 = result;
  v26 = 0;
  v27 = *(result + 16);
  v28 = (v6 + 8);
  v56 = (v13 + 8);
  v57 = v13 + 16;
  while (1)
  {
    if (v27 == v26)
    {

      v36 = 1;
      v37 = v55;
      goto LABEL_13;
    }

    if (v26 >= *(v25 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_24();
    v30 = v11;
    (*(v13 + 16))(v18, v25 + v29 + *(v13 + 72) * v26, v11);
    sub_1DC514E0C();
    v31 = sub_1DC514E6C();
    v33 = v32;
    (*v28)(v10, v58);
    if (v31 == 1802723700 && v33 == 0xE400000000000000)
    {
      break;
    }

    v35 = sub_1DC51825C();

    if (v35)
    {
      goto LABEL_12;
    }

    v11 = v30;
    result = (*v56)(v18, v30);
    ++v26;
  }

LABEL_12:

  v37 = v55;
  v11 = v30;
  (*(v13 + 32))(v55, v18, v30);
  v36 = 0;
LABEL_13:
  v38 = v54;
  __swift_storeEnumTagSinglePayload(v37, v36, 1, v11);
  sub_1DC28F358(v37, v38, &qword_1ECC7C1A0, &qword_1DC522F80);
  if (__swift_getEnumTagSinglePayload(v38, 1, v11) == 1)
  {
    sub_1DC28EB30(v37, &qword_1ECC7C1A0, &qword_1DC522F80);
    sub_1DC28EB30(v38, &qword_1ECC7C1A0, &qword_1DC522F80);
    return 0;
  }

  (*(v13 + 32))(v53, v38, v11);
  v40 = sub_1DC514EFC();
  result = sub_1DC514E1C();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if (result < *(v40 + 16))
  {
    v42 = v49;
    v41 = v50;
    OUTLINED_FUNCTION_24();
    v45 = v11;
    v46 = v51;
    (*(v41 + 16))(v42, v40 + v43 + *(v41 + 72) * v44, v51);

    MEMORY[0x1EEE9AC00](v47);
    *(&v48 - 2) = v42;
    v39 = sub_1DC2CF098(sub_1DC3191F8, (&v48 - 4), &unk_1F57F6E70);
    (*v56)(v53, v45);
    sub_1DC28EB30(v37, &qword_1ECC7C1A0, &qword_1DC522F80);
    (*(v41 + 8))(v42, v46);
    return v39;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DC3190FC(uint64_t *a1)
{
  v1 = sub_1DC514E7C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  sub_1DC514EBC();
  sub_1DC514E6C();
  (*(v3 + 8))(v7, v1);
  v8 = sub_1DC51795C();

  return v8 & 1;
}

uint64_t sub_1DC319228@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t sub_1DC319260(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1DC5109BC(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1DC5109BC();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DC319334()
{
  v0 = [objc_opt_self() sharedStream];
  type metadata accessor for NLRouterBridgeInstrumentationUtil();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_1ECC8F3F0 = result;
  return result;
}

uint64_t sub_1DC319390(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t *sub_1DC3193C4()
{
  if (qword_1ECC7EE38 != -1)
  {
    OUTLINED_FUNCTION_24_3(&qword_1ECC7EE38);
  }

  return &qword_1ECC8F3F0;
}

id sub_1DC319404(void *a1, uint64_t a2)
{
  v5 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = [a1 eventMetadata];
  if (v12 && (v13 = v12, v14 = [v12 requestId], v13, v14))
  {

    v15 = *(v2 + 16);

    return [v15 emitMessage:a1 timestamp:a2];
  }

  else
  {
    v17 = sub_1DC29120C();
    (*(v7 + 16))(v11, v17, v5);
    v18 = sub_1DC516F6C();
    v19 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v19))
    {
      v20 = OUTLINED_FUNCTION_35_8();
      *v20 = 0;
      OUTLINED_FUNCTION_28_8();
      _os_log_impl(v21, v22, v23, v24, v20, 2u);
      OUTLINED_FUNCTION_66();
    }

    return (*(v7 + 8))(v11, v5);
  }
}

void sub_1DC3195B8()
{
  OUTLINED_FUNCTION_33();
  v2 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_36_9();
  if (!v7())
  {
    v15 = sub_1DC29120C();
    (*(v4 + 16))(v1, v15, v2);
    v16 = sub_1DC516F6C();
    v17 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v17))
    {
      v18 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v18);
      OUTLINED_FUNCTION_28_8();
      OUTLINED_FUNCTION_56_4(v19, v20, v21, v22);
      OUTLINED_FUNCTION_66();
    }

    (*(v4 + 8))(v1, v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_0();
  v9 = *(v8 + 184);
  v11 = v10;
  if (!v9())
  {

    sub_1DC29120C();
    v23 = OUTLINED_FUNCTION_21_1();
    v24(v23);
    v25 = sub_1DC516F6C();
    v26 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v26))
    {
      v27 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_31_2(v27);
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_55_6(v28, v29, v30, v31);
      OUTLINED_FUNCTION_66();
    }

    (*(v4 + 8))(v0, v2);
LABEL_12:
    OUTLINED_FUNCTION_34();
    return;
  }

  OUTLINED_FUNCTION_12_0();
  (*(v12 + 96))();

  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_34();
}

void sub_1DC319818()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_12_0();
  v5 = OUTLINED_FUNCTION_22_5();
  if (!v6(v5))
  {
    sub_1DC29120C();
    v14 = OUTLINED_FUNCTION_10_9();
    v15(v14);
    v16 = sub_1DC516F6C();
    v17 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v17))
    {
      v18 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_5(v18);
      OUTLINED_FUNCTION_13_7(&dword_1DC287000, v19, v0, "Empty metadata, skipping SELF logging");
      OUTLINED_FUNCTION_14_5();
    }

    v20 = OUTLINED_FUNCTION_41_6();
    v21(v20);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_0();
  v8 = *(v7 + 192);
  v10 = v9;
  if (!v8())
  {

    sub_1DC29120C();
    v22 = OUTLINED_FUNCTION_5_11();
    v23(v22);
    v24 = sub_1DC516F6C();
    v25 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v25))
    {
      v26 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_5(v26);
      OUTLINED_FUNCTION_11_9(&dword_1DC287000, v27, v28, "Error during SELF log creation process for NLRouterBridgeEnded");
      OUTLINED_FUNCTION_14_5();
    }

    v29 = OUTLINED_FUNCTION_33_7();
    v30(v29, v2);
LABEL_12:
    OUTLINED_FUNCTION_34();
    return;
  }

  OUTLINED_FUNCTION_12_0();
  (*(v11 + 96))();

  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_34();
}

void sub_1DC319A4C()
{
  OUTLINED_FUNCTION_33();
  v6 = OUTLINED_FUNCTION_43_8(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_12_0();
  v11 = OUTLINED_FUNCTION_50_6();
  if (!v12(v11))
  {
    sub_1DC29120C();
    OUTLINED_FUNCTION_32_5();
    v20(v0);
    v21 = sub_1DC516F6C();
    v22 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v22))
    {
      v23 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v23);
      OUTLINED_FUNCTION_28_8();
      OUTLINED_FUNCTION_56_4(v24, v25, v26, v27);
      OUTLINED_FUNCTION_66();
    }

    (*(v8 + 8))(v0, v6);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_0();
  v14 = *(v13 + 200);
  v16 = v15;
  if (!v14())
  {

    sub_1DC29120C();
    v28 = OUTLINED_FUNCTION_21_1();
    v29(v28);
    v30 = sub_1DC516F6C();
    v31 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v31))
    {
      v32 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_31_2(v32);
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_55_6(v33, v34, v35, v36);
      OUTLINED_FUNCTION_66();
    }

    v37 = OUTLINED_FUNCTION_33_7();
    v38(v37, v6);
LABEL_12:
    OUTLINED_FUNCTION_34();
    return;
  }

  OUTLINED_FUNCTION_12_0();
  (*(v17 + 96))();

  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_34();
}

void sub_1DC319CA4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_12_0();
  v5 = OUTLINED_FUNCTION_22_5();
  if (!v6(v5))
  {
    sub_1DC29120C();
    v14 = OUTLINED_FUNCTION_10_9();
    v15(v14);
    v16 = sub_1DC516F6C();
    v17 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v17))
    {
      v18 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_5(v18);
      OUTLINED_FUNCTION_13_7(&dword_1DC287000, v19, v0, "Empty metadata, skipping SELF logging");
      OUTLINED_FUNCTION_14_5();
    }

    v20 = OUTLINED_FUNCTION_41_6();
    v21(v20);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_0();
  v8 = *(v7 + 208);
  v10 = v9;
  if (!v8())
  {

    sub_1DC29120C();
    v22 = OUTLINED_FUNCTION_5_11();
    v23(v22);
    v24 = sub_1DC516F6C();
    v25 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v25))
    {
      v26 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_5(v26);
      OUTLINED_FUNCTION_11_9(&dword_1DC287000, v27, v28, "Error during SELF log creation process for NLRouterBridgeSubComponentStarted");
      OUTLINED_FUNCTION_14_5();
    }

    v29 = OUTLINED_FUNCTION_33_7();
    v30(v29, v2);
LABEL_12:
    OUTLINED_FUNCTION_34();
    return;
  }

  OUTLINED_FUNCTION_12_0();
  (*(v11 + 96))();

  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_34();
}

void sub_1DC319ED8()
{
  OUTLINED_FUNCTION_33();
  v6 = OUTLINED_FUNCTION_43_8(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_12_0();
  v11 = OUTLINED_FUNCTION_50_6();
  if (!v12(v11))
  {
    sub_1DC29120C();
    OUTLINED_FUNCTION_32_5();
    v20(v0);
    v21 = sub_1DC516F6C();
    v22 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v22))
    {
      v23 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v23);
      OUTLINED_FUNCTION_28_8();
      OUTLINED_FUNCTION_56_4(v24, v25, v26, v27);
      OUTLINED_FUNCTION_66();
    }

    (*(v8 + 8))(v0, v6);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_0();
  v14 = *(v13 + 216);
  v16 = v15;
  if (!v14())
  {

    sub_1DC29120C();
    v28 = OUTLINED_FUNCTION_21_1();
    v29(v28);
    v30 = sub_1DC516F6C();
    v31 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v31))
    {
      v32 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_31_2(v32);
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_55_6(v33, v34, v35, v36);
      OUTLINED_FUNCTION_66();
    }

    v37 = OUTLINED_FUNCTION_33_7();
    v38(v37, v6);
LABEL_12:
    OUTLINED_FUNCTION_34();
    return;
  }

  OUTLINED_FUNCTION_12_0();
  (*(v17 + 96))();

  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_34();
}

void sub_1DC31A130()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_12_0();
  v5 = OUTLINED_FUNCTION_22_5();
  if (!v6(v5))
  {
    sub_1DC29120C();
    v14 = OUTLINED_FUNCTION_10_9();
    v15(v14);
    v16 = sub_1DC516F6C();
    v17 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v17))
    {
      v18 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_5(v18);
      OUTLINED_FUNCTION_13_7(&dword_1DC287000, v19, v0, "Empty metadata, skipping SELF logging");
      OUTLINED_FUNCTION_14_5();
    }

    v20 = OUTLINED_FUNCTION_41_6();
    v21(v20);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_0();
  v8 = *(v7 + 224);
  v10 = v9;
  if (!v8())
  {

    sub_1DC29120C();
    v22 = OUTLINED_FUNCTION_5_11();
    v23(v22);
    v24 = sub_1DC516F6C();
    v25 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v25))
    {
      v26 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_5(v26);
      OUTLINED_FUNCTION_11_9(&dword_1DC287000, v27, v28, "Error during SELF log creation process for NLRouterBridgeSubComponentFailed");
      OUTLINED_FUNCTION_14_5();
    }

    v29 = OUTLINED_FUNCTION_33_7();
    v30(v29, v2);
LABEL_12:
    OUTLINED_FUNCTION_34();
    return;
  }

  OUTLINED_FUNCTION_12_0();
  (*(v11 + 96))();

  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC31A364()
{
  OUTLINED_FUNCTION_1_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1DC516F7C();
  v1[6] = v5;
  OUTLINED_FUNCTION_52(v5);
  v1[7] = v6;
  v1[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v7);
  v1[9] = swift_task_alloc();
  v8 = sub_1DC510B6C();
  v1[10] = v8;
  OUTLINED_FUNCTION_52(v8);
  v1[11] = v9;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DC31A4B4()
{
  v42 = v0;
  v1 = v0[9];
  v2 = v0[10];
  sub_1DC510B5C();
  sub_1DC510B0C();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[14];
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[10];
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];
    sub_1DC2BE530(v0[9], &unk_1ECC7CA30, &qword_1DC522A00);
    v10 = sub_1DC29120C();
    (*(v8 + 16))(v7, v10, v9);
    (*(v5 + 16))(v4, v3, v6);

    v11 = sub_1DC516F6C();
    v12 = sub_1DC517BAC();

    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[10];
    v18 = v0[7];
    v17 = v0[8];
    v19 = v0[6];
    if (v13)
    {
      v36 = v0[3];
      v37 = v0[4];
      v39 = v0[6];
      v20 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v20 = 136315394;
      sub_1DC31CE00();
      v21 = sub_1DC51823C();
      v38 = v17;
      v23 = v22;
      (*(v15 + 8))(v14, v16);
      v24 = sub_1DC291244(v21, v23, &v41);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_1DC291244(v36, v37, &v41);
      _os_log_impl(&dword_1DC287000, v11, v12, "Emitting trace %s failed. %s is not a valid UUID", v20, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      (*(v18 + 8))(v38, v39);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
      (*(v18 + 8))(v17, v19);
    }

    (*(v0[11] + 32))(v0[2], v0[14], v0[10]);

    OUTLINED_FUNCTION_39_5();

    return v35();
  }

  else
  {
    v25 = v0[13];
    v26 = v0[10];
    v27 = v0[11];
    v28 = v0[9];
    v29 = *(v27 + 32);
    v0[15] = v29;
    v0[16] = (v27 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v29(v25, v28, v26);
    OUTLINED_FUNCTION_12_0();
    v40 = (*(v30 + 160) + **(v30 + 160));
    v31 = swift_task_alloc();
    v0[17] = v31;
    *v31 = v0;
    v31[1] = sub_1DC31A8C4;
    v33 = v0[13];
    v32 = v0[14];

    return v40(v33, v32);
  }
}

uint64_t sub_1DC31A8C4()
{
  OUTLINED_FUNCTION_1_0();
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1DC31AA98;
  }

  else
  {
    v2 = sub_1DC31A9D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DC31A9D4()
{
  (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
  (*(v0 + 120))(*(v0 + 16), *(v0 + 112), *(v0 + 80));

  OUTLINED_FUNCTION_39_5();

  return v1();
}

uint64_t sub_1DC31AA98()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = *(v0[11] + 8);
  v3(v0[13], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DC31AB70(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_47();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DC31AB9C()
{
  v0[5] = mach_absolute_time();
  OUTLINED_FUNCTION_12_0();
  v6 = (*(v1 + 168) + **(v1 + 168));
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1DC31ACC0;
  v3 = v0[3];
  v4 = v0[2];

  return v6(v4, v3);
}

uint64_t sub_1DC31ACC0()
{
  OUTLINED_FUNCTION_1_0();
  *(*v0 + 56) = v1;

  v2 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1DC31ADB4()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[7];
  if (v1)
  {
    [*(v0[4] + 16) emitMessage:v0[7] timestamp:v0[5]];
  }

  else
  {
    v2 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v1 = sub_1DC296DBC();
    sub_1DC516F0C(v2, &dword_1DC287000, v1, "Error during SELF log creation process for NLRouter IntelligenceFlowRequestLink", 79, 2, MEMORY[0x1E69E7CC0]);
  }

  OUTLINED_FUNCTION_39_5();

  return v3();
}

uint64_t sub_1DC31AE84()
{
  OUTLINED_FUNCTION_1_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1DC510B6C();
  v0[4] = v3;
  OUTLINED_FUNCTION_52(v3);
  v0[5] = v4;
  v0[6] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DC31AF30()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69CF5E8]) init];
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x1E69CF5F8]);
    v3 = v1;
    v4 = [v2 init];
    [v3 setTarget_];

    v5 = [v3 target];
    if (v5)
    {
      v6 = v5;
      [v5 setComponent_];
    }

    v7 = [v3 target];
    v8 = &off_1E8630000;
    if (v7)
    {
      v9 = v7;
      v11 = v0[5];
      v10 = v0[6];
      v13 = v0[3];
      v12 = v0[4];
      sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
      (*(v11 + 16))(v10, v13, v12);
      v8 = &off_1E8630000;
      v14 = sub_1DC299428(v10);
      [v9 setUuid_];
    }

    v15 = objc_allocWithZone(MEMORY[0x1E69CF5F8]);
    v16 = v3;
    v17 = [v15 init];
    [v16 setSource_];

    v18 = [v16 source];
    if (v18)
    {
      v19 = v18;
      [v18 setComponent_];
    }

    v20 = [v16 source];
    if (v20)
    {
      v21 = v20;
      v23 = v0[5];
      v22 = v0[6];
      v24 = v0[4];
      v25 = v0[2];
      sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
      (*(v23 + 16))(v22, v25, v24);
      v26 = sub_1DC299428(v22);
      [v21 v8[254]];
    }
  }

  v27 = v0[1];

  return v27(v1);
}

void sub_1DC31B1D8()
{
  OUTLINED_FUNCTION_33();
  v34 = v2;
  v35 = v1;
  v3 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v10);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  sub_1DC510B0C();
  if (__swift_getEnumTagSinglePayload(v0, 1, v12) == 1)
  {
    sub_1DC2BE530(v0, &unk_1ECC7CA30, &qword_1DC522A00);
    v22 = sub_1DC29120C();
    v23 = v3;
    (*(v5 + 16))(v9, v22, v3);
    v24 = sub_1DC516F6C();
    v25 = sub_1DC517B9C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v26);
      OUTLINED_FUNCTION_56_4(&dword_1DC287000, v24, v25, "Invalid UUID string for RequestID");
      OUTLINED_FUNCTION_66();
    }

    (*(v5 + 8))(v9, v23);
  }

  else
  {
    (*(v14 + 32))(v21, v0, v12);
    v27 = [objc_allocWithZone(MEMORY[0x1E69CF318]) init];
    if (v27)
    {
      sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
      (*(v14 + 16))(v18, v21, v12);
      v28 = v27;
      v29 = sub_1DC299428(v18);
      [v28 setRequestId_];
    }

    v30 = v34;
    v31 = v35;
    v32 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v32 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v32 && v27)
    {
      v33 = v27;
      sub_1DC31CE58(v31, v30, v33);
    }

    (*(v14 + 8))(v21, v12);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC31B50C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v36 = v4;
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v35 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v14 = [objc_allocWithZone(MEMORY[0x1E69CF380]) init];
  v15 = v14;
  if (v14)
  {
    OUTLINED_FUNCTION_46_5(v14, sel_setExists_);
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69CF360]) init];
  [v16 setStartedOrChanged_];
  sub_1DC31CEB0(v2);
  if (v17)
  {
    sub_1DC510B0C();

    OUTLINED_FUNCTION_18_8();
    if (v18)
    {
      sub_1DC2BE530(v0, &unk_1ECC7CA30, &qword_1DC522A00);
    }

    else
    {
      v19 = OUTLINED_FUNCTION_8_6();
      v20(v19);
      if (v16)
      {
        sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
        OUTLINED_FUNCTION_36_9();
        v21();
        v22 = v16;
        v23 = sub_1DC299428(v12);
        [v22 setTrpId_];
      }

      v24 = OUTLINED_FUNCTION_89();
      v25(v24);
    }
  }

  v26 = [objc_allocWithZone(MEMORY[0x1E69CF310]) init];
  if (v26)
  {
    OUTLINED_FUNCTION_57_6([v26 setEventMetadata_], sel_setNlRouterBridgeContext_);
  }

  else
  {
    v27 = sub_1DC29120C();
    (*(v36 + 16))(v35, v27, v37);
    v28 = sub_1DC516F6C();
    v29 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v29))
    {
      v30 = OUTLINED_FUNCTION_35_8();
      *v30 = 0;
      OUTLINED_FUNCTION_17_6();
      _os_log_impl(v31, v32, v33, v34, v30, 2u);
      OUTLINED_FUNCTION_66();
    }

    else
    {
    }

    (*(v36 + 8))(v35, v37);
  }

  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_34();
}

void sub_1DC31B884()
{
  OUTLINED_FUNCTION_33();
  v64 = v1;
  v3 = v2;
  v5 = v4;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v62 = v7;
  v63 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_9(v8, v59);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v59 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v20);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - v22;
  v24 = [objc_allocWithZone(MEMORY[0x1E69CF368]) init];
  v25 = [objc_allocWithZone(MEMORY[0x1E69CF378]) init];
  [v25 setRoutingDecisionSource_];
  if (v25)
  {
    type metadata accessor for NLRouterClientInstrumentationUtil();
    v26 = v25;
    v60 = v11;
    v27 = v24;
    v28 = v19;
    v29 = v13;
    v30 = v5;
    v31 = v26;
    v32 = sub_1DC38A7DC();
    v33 = sub_1DC38A81C();
    v34 = sub_1DC38A870(v32, v33);
    v35 = sub_1DC5157EC();
    (*(*(v35 - 8) + 16))(v23, v64, v35);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v35);
    v36 = (*(*v34 + 408))(v23);

    sub_1DC2BE530(v23, &qword_1ECC7CA40, &unk_1DC5233A0);
    [v31 setRouterDecisionType_];

    v5 = v30;
    v13 = v29;
    v19 = v28;
    v24 = v27;
    v11 = v60;
  }

  [v24 setRoutingDecision_];
  v37 = [objc_allocWithZone(MEMORY[0x1E69CF360]) init];
  [v37 setEnded_];
  sub_1DC31CEB0(v5);
  if (v38)
  {
    sub_1DC510B0C();

    if (__swift_getEnumTagSinglePayload(v0, 1, v11) == 1)
    {
      sub_1DC2BE530(v0, &unk_1ECC7CA30, &qword_1DC522A00);
    }

    else
    {
      (*(v13 + 32))(v19, v0, v11);
      if (v37)
      {
        sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
        v39 = v59;
        OUTLINED_FUNCTION_36_9();
        v40();
        v41 = v5;
        v42 = v37;
        v43 = sub_1DC299428(v39);
        [v42 setTrpId_];

        v5 = v41;
      }

      v44 = OUTLINED_FUNCTION_89();
      v45(v44);
    }
  }

  v46 = [objc_allocWithZone(MEMORY[0x1E69CF310]) init];
  if (v46)
  {
    v47 = v46;
    [v46 setEventMetadata_];
    [v47 setNlRouterBridgeContext_];
  }

  else
  {
    v48 = sub_1DC29120C();
    v50 = v61;
    v49 = v62;
    v51 = v63;
    (*(v62 + 16))(v61, v48, v63);
    v52 = sub_1DC516F6C();
    v53 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v53))
    {
      v54 = OUTLINED_FUNCTION_35_8();
      *v54 = 0;
      OUTLINED_FUNCTION_28_8();
      _os_log_impl(v55, v56, v57, v58, v54, 2u);
      OUTLINED_FUNCTION_66();
    }

    else
    {
    }

    (*(v49 + 8))(v50, v51);
  }

  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_34();
}

void sub_1DC31BDD4()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v55 = v5;
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - v8;
  v10 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v20 = [objc_allocWithZone(MEMORY[0x1E69CF370]) init];
  v57 = v1;
  v21 = v1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
  if (OUTLINED_FUNCTION_53_6(v22, v23, v24, &type metadata for NLRouterBridgeError))
  {
    if (v20)
    {
      v25 = v60;
      [v20 setErrorDomain_];
      v26 = v20;
      if (v25)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

LABEL_21:
      [v26 setErrorCode_];
    }
  }

  else
  {
    v60 = v1;
    v28 = v1;
    if (swift_dynamicCast())
    {
      switch(v59)
      {
        case 1:
          v36 = sub_1DC31CF24(v57, v58, 1u);
          if (v20)
          {
            OUTLINED_FUNCTION_46_5(v36, sel_setErrorDomain_);
            v26 = v20;
            v27 = 301;
            goto LABEL_21;
          }

          break;
        case 2:
          v34 = sub_1DC31CF24(v57, v58, 2u);
          if (v20)
          {
            OUTLINED_FUNCTION_46_5(v34, sel_setErrorDomain_);
            [v20 setErrorCode_];
          }

          break;
        case 3:
          v35 = sub_1DC31CF24(v57, v58, 3u);
          if (v20)
          {
            OUTLINED_FUNCTION_46_5(v35, sel_setErrorDomain_);
            [v20 setErrorCode_];
          }

          break;
        default:
          v29 = sub_1DC31CF24(v57, v58, 0);
          if (v20)
          {
            OUTLINED_FUNCTION_46_5(v29, sel_setErrorDomain_);
            [v20 setErrorCode_];
          }

          break;
      }
    }

    else
    {
      v57 = v1;
      v30 = v1;
      if (OUTLINED_FUNCTION_53_6(v30, v31, v32, &type metadata for NLRouterServiceError))
      {
        sub_1DC31CF14(v60);
        if (v20)
        {
          OUTLINED_FUNCTION_46_5(v33, sel_setErrorDomain_);
          [v20 setErrorCode_];
        }
      }

      else if (v20)
      {
        [v20 setErrorDomain_];
      }
    }
  }

  v37 = [objc_allocWithZone(MEMORY[0x1E69CF360]) init];
  [v37 setFailed_];
  sub_1DC31CEB0(v3);
  if (v38)
  {
    sub_1DC510B0C();

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_1DC2BE530(v9, &unk_1ECC7CA30, &qword_1DC522A00);
    }

    else
    {
      (*(v12 + 32))(v19, v9, v10);
      if (v37)
      {
        sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
        (*(v12 + 16))(v16, v19, v10);
        v39 = v37;
        v40 = sub_1DC299428(v16);
        [v39 setTrpId_];
      }

      (*(v12 + 8))(v19, v10);
    }
  }

  v41 = [objc_allocWithZone(MEMORY[0x1E69CF310]) init];
  if (v41)
  {
    v42 = v41;
    [v41 setEventMetadata_];
    [v42 setNlRouterBridgeContext_];
  }

  else
  {
    sub_1DC29120C();
    v43 = v56;
    v44 = OUTLINED_FUNCTION_21_1();
    v45(v44);
    v46 = sub_1DC516F6C();
    v47 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v47))
    {
      v48 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_31_2(v48);
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_55_6(v49, v50, v51, v52);
      OUTLINED_FUNCTION_66();
    }

    else
    {
    }

    v53 = OUTLINED_FUNCTION_33_7();
    v54(v53, v43);
  }

  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_34();
}

void sub_1DC31C338()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v39 = v5;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_9(v7, v38);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_55_2();
  v13 = [objc_allocWithZone(MEMORY[0x1E69CF3A0]) init];
  [v13 setNlRouterSubComponent_];
  v14 = [objc_allocWithZone(MEMORY[0x1E69CF388]) init];
  [v14 setStartedOrChanged_];
  if (v14)
  {
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v15 = OUTLINED_FUNCTION_7_8();
    v16(v15, v2, v10);
    v17 = v14;
    v18 = OUTLINED_FUNCTION_49_7();
    OUTLINED_FUNCTION_48_5(v18, sel_setTraceId_);
  }

  v19 = v39;
  sub_1DC31CEB0(v39);
  if (v20)
  {
    sub_1DC510B0C();

    OUTLINED_FUNCTION_18_8();
    if (v21)
    {
      sub_1DC2BE530(v0, &unk_1ECC7CA30, &qword_1DC522A00);
    }

    else
    {
      v22 = OUTLINED_FUNCTION_8_6();
      v23(v22);
      if (v14)
      {
        sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
        OUTLINED_FUNCTION_7_8();
        OUTLINED_FUNCTION_36_9();
        v24();
        v25 = v14;
        v26 = OUTLINED_FUNCTION_49_7();
        OUTLINED_FUNCTION_48_5(v26, sel_setTrpId_);

        v19 = v39;
      }

      v27 = OUTLINED_FUNCTION_89();
      v28(v27);
    }
  }

  v29 = [objc_allocWithZone(MEMORY[0x1E69CF310]) init];
  if (v29)
  {
    OUTLINED_FUNCTION_57_6([v29 setEventMetadata_], sel_setNlRouterBridgeSubComponentContext_);
  }

  else
  {
    sub_1DC29120C();
    v30 = OUTLINED_FUNCTION_6_9();
    v31(v30);
    v32 = sub_1DC516F6C();
    v33 = sub_1DC517B9C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_5(v34);
      OUTLINED_FUNCTION_13_7(&dword_1DC287000, v35, v33, "Unable to create a NLRouterBridge wrapper SELF event for ORCHSchemaORCHNLRouterBridgeStarted");
      OUTLINED_FUNCTION_14_5();
    }

    else
    {
    }

    v36 = OUTLINED_FUNCTION_40_10();
    v37(v36);
  }

  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_34();
}

void sub_1DC31C6B4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v39 = v3;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_9(v5, v38);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_55_2();
  v11 = [objc_allocWithZone(MEMORY[0x1E69CF390]) init];
  v12 = v11;
  if (v11)
  {
    OUTLINED_FUNCTION_46_5(v11, sel_setExists_);
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E69CF388]) init];
  [v13 setEnded_];
  if (v13)
  {
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v14 = OUTLINED_FUNCTION_7_8();
    v15(v14, v2, v8);
    v16 = v13;
    v17 = OUTLINED_FUNCTION_49_7();
    OUTLINED_FUNCTION_48_5(v17, sel_setTraceId_);
  }

  v18 = v39;
  sub_1DC31CEB0(v39);
  if (v19)
  {
    sub_1DC510B0C();

    OUTLINED_FUNCTION_18_8();
    if (v20)
    {
      sub_1DC2BE530(v0, &unk_1ECC7CA30, &qword_1DC522A00);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_8_6();
      v22(v21);
      if (v13)
      {
        sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
        OUTLINED_FUNCTION_7_8();
        OUTLINED_FUNCTION_36_9();
        v23();
        v24 = v13;
        v25 = OUTLINED_FUNCTION_49_7();
        OUTLINED_FUNCTION_48_5(v25, sel_setTrpId_);

        v18 = v39;
      }

      v26 = OUTLINED_FUNCTION_89();
      v27(v26);
    }
  }

  v28 = [objc_allocWithZone(MEMORY[0x1E69CF310]) init];
  if (v28)
  {
    OUTLINED_FUNCTION_57_6([v28 setEventMetadata_], sel_setNlRouterBridgeSubComponentContext_);
  }

  else
  {
    sub_1DC29120C();
    v29 = OUTLINED_FUNCTION_6_9();
    v30(v29);
    v31 = sub_1DC516F6C();
    v32 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v32))
    {
      v33 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_5(v33);
      OUTLINED_FUNCTION_11_9(&dword_1DC287000, v34, v35, "Unable to create a NLRouterBridge wrapper SELF event for ORCHSchemaORCHNLRouterBridgeEnded");
      OUTLINED_FUNCTION_14_5();
    }

    else
    {
    }

    v36 = OUTLINED_FUNCTION_40_10();
    v37(v36);
  }

  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_34();
}

void sub_1DC31CA1C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  v42 = v6;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_9(v8, v41);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_55_2();
  v14 = [objc_allocWithZone(MEMORY[0x1E69CF398]) init];
  v15 = v14;
  if (v3)
  {
    if (v3 == 1)
    {
      if (!v14)
      {
        goto LABEL_10;
      }

      v16 = 2;
    }

    else
    {
      if (!v14)
      {
        goto LABEL_10;
      }

      v16 = 3;
    }
  }

  else
  {
    if (!v14)
    {
      goto LABEL_10;
    }

    v16 = 1;
  }

  [v14 setErrorCode_];
LABEL_10:
  v17 = [objc_allocWithZone(MEMORY[0x1E69CF388]) init];
  [v17 setFailed_];
  if (v17)
  {
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    OUTLINED_FUNCTION_32_5();
    v18(v1, v5, v11);
    v19 = v17;
    v20 = OUTLINED_FUNCTION_49_7();
    OUTLINED_FUNCTION_48_5(v20, sel_setTraceId_);
  }

  v21 = v42;
  sub_1DC31CEB0(v42);
  if (v22)
  {
    sub_1DC510B0C();

    OUTLINED_FUNCTION_18_8();
    if (v23)
    {
      sub_1DC2BE530(v0, &unk_1ECC7CA30, &qword_1DC522A00);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_8_6();
      v25(v24);
      if (v17)
      {
        sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
        OUTLINED_FUNCTION_32_5();
        OUTLINED_FUNCTION_36_9();
        v26();
        v27 = v17;
        v28 = OUTLINED_FUNCTION_49_7();
        OUTLINED_FUNCTION_48_5(v28, sel_setTrpId_);

        v21 = v42;
      }

      v29 = OUTLINED_FUNCTION_89();
      v30(v29);
    }
  }

  v31 = [objc_allocWithZone(MEMORY[0x1E69CF310]) init];
  if (v31)
  {
    OUTLINED_FUNCTION_57_6([v31 setEventMetadata_], sel_setNlRouterBridgeSubComponentContext_);
  }

  else
  {
    sub_1DC29120C();
    v32 = OUTLINED_FUNCTION_6_9();
    v33(v32);
    v34 = sub_1DC516F6C();
    v35 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v35))
    {
      v36 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_5(v36);
      OUTLINED_FUNCTION_11_9(&dword_1DC287000, v37, v38, "Unable to create a NLRouterBridge wrapper SELF event for ORCHSchemaORCHNLRouterBridgeEnded");
      OUTLINED_FUNCTION_14_5();
    }

    else
    {
    }

    v39 = OUTLINED_FUNCTION_40_10();
    v40(v39);
  }

  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC31CDC8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

unint64_t sub_1DC31CE00()
{
  result = qword_1ECC7BE90;
  if (!qword_1ECC7BE90)
  {
    sub_1DC510B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BE90);
  }

  return result;
}

void sub_1DC31CE58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();
  [a3 setResultCandidateId_];
}

uint64_t sub_1DC31CEB0(void *a1)
{
  v1 = [a1 resultCandidateId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DC51772C();

  return v3;
}

void sub_1DC31CF14(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_1DC31CF24(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1DC31CF60(char a1)
{
  v1 = 0x6D6574737973;
  switch(a1)
  {
    case 1:
      v1 = 1919251317;
      break;
    case 2:
      v1 = 0x65746972776572;
      break;
    case 3:
      v1 = 0x6E61747369737361;
      break;
    default:
      break;
  }

  sub_1DC428688(5);

  v2 = OUTLINED_FUNCTION_65_1();
  MEMORY[0x1E1296160](v2);

  v3 = OUTLINED_FUNCTION_15_5();
  MEMORY[0x1E1296160](v3);

  return v1;
}

uint64_t sub_1DC31D060(char a1)
{
  result = 0x6D6574737973;
  switch(a1)
  {
    case 1:
      result = 1919251317;
      break;
    case 2:
      result = 0x65746972776572;
      break;
    case 3:
      result = 0x6E61747369737361;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DC31D0DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DC51808C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DC31D140(unsigned __int8 a1, char a2)
{
  v2 = 0x6D6574737973;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6D6574737973;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1919251317;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x65746972776572;
      break;
    case 3:
      v5 = 0x6E61747369737361;
      v3 = 0xE900000000000074;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1919251317;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x65746972776572;
      break;
    case 3:
      v2 = 0x6E61747369737361;
      v6 = 0xE900000000000074;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC31D288(uint64_t a1)
{
  v1 = a1;
  sub_1DC5182FC();
  sub_1DC31D324(v3, v1);
  return sub_1DC51833C();
}

uint64_t sub_1DC31D2D0(char a1)
{
  sub_1DC5182FC();
  sub_1DC51831C();
  return sub_1DC51833C();
}

uint64_t sub_1DC31D324(uint64_t a1, char a2)
{
  sub_1DC51769C();
}

uint64_t sub_1DC31D408(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  sub_1DC51831C();
  return sub_1DC51833C();
}

uint64_t sub_1DC31D450(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  sub_1DC31D324(v4, a2);
  return sub_1DC51833C();
}

unint64_t sub_1DC31D494@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC31D0DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DC31D4C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC31D060(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1DC31D50C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v60 = v3;
  v61 = v4;
  v64 = v5;
  sub_1DC51072C();
  OUTLINED_FUNCTION_0();
  v58 = v7;
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v57 = v8;
  OUTLINED_FUNCTION_12();
  sub_1DC51514C();
  OUTLINED_FUNCTION_0();
  v63 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_54_0();
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v55 = v12;
  v56 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  v13 = sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v14 = sub_1DC296DBC();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = OUTLINED_FUNCTION_63();
    v16 = OUTLINED_FUNCTION_82();
    v66[0] = v16;
    *v15 = 136315138;
    type metadata accessor for NLRouterModelFeatureSet();
    sub_1DC327C2C(&qword_1ECC7BC10, type metadata accessor for NLRouterModelFeatureSet, &unk_1DC52F170);
    v17 = sub_1DC51823C();
    v19 = sub_1DC291244(v17, v18, v66);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1DC287000, v14, v13, "NLRouterServicePromptGenerationUtil.makePrompt using prompt features: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  v20 = sub_1DC39908C();
  v21 = *(v20 + 16);
  v22 = sub_1DC296DBC();
  v54 = v0;
  v23 = OUTLINED_FUNCTION_65_1();
  sub_1DC2A2ED0(v23, v24, v21, v22, 1, v25);

  v26 = sub_1DC31D9DC(v64, v60, v61, v2);
  v28 = v27;

  v62 = v26;
  sub_1DC51515C();
  v29 = sub_1DC51513C();
  v30 = *(v63 + 8);
  v31 = OUTLINED_FUNCTION_46_6();
  v30(v31);

  OUTLINED_FUNCTION_45_2();
  sub_1DC51515C();
  v32 = sub_1DC51513C();
  v33 = OUTLINED_FUNCTION_46_6();
  v30(v33);
  if (__OFADD__(v29, v32))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for NLRouterServiceRequest(0);
    if (!__OFSUB__(512, v29 + v32))
    {
      sub_1DC31E530();
      v35 = v34;
      v37 = v36;
      v38 = OUTLINED_FUNCTION_45_2();
      sub_1DC31FFA4(v38, v39, v40, v41, v42);
      v66[0] = v62;
      v66[1] = v28;
      MEMORY[0x1E1296160](v35, v37);

      v43 = OUTLINED_FUNCTION_45_2();
      MEMORY[0x1E1296160](v43);

      v44 = OUTLINED_FUNCTION_15_5();
      MEMORY[0x1E1296160](v44);
      sub_1DC428688(5);
      OUTLINED_FUNCTION_10_10();
      v65 = v45;
      MEMORY[0x1E1296160]();

      v46 = OUTLINED_FUNCTION_15_5();
      MEMORY[0x1E1296160](v46);

      MEMORY[0x1E1296160](v65, 0xE700000000000000);

      v47 = sub_1DC51070C();
      sub_1DC2A32B0(v47, v48, v49);
      sub_1DC517E0C();
      OUTLINED_FUNCTION_75_0();
      (*(v58 + 8))(v57, v59);

      v50 = *v20;
      v51 = v20[1];
      v52 = *(v20 + 16);
      v53 = sub_1DC296DBC();
      sub_1DC2B8848(v54, v50, v51, v52, v53);

      (*(v55 + 8))(v54, v56);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_34();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1DC31D9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for NLRouterPromptSignals(0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v137 = v12;
  v138 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v17 = sub_1DC399098();
  v18 = *v17;
  v19 = v17[1];
  v20 = *(v17 + 16);
  v21 = sub_1DC296DBC();
  v136 = v15;
  v22 = v15;
  v23 = v4;
  v24 = v16;
  sub_1DC2A2ED0(v18, v19, v20, v21, 1, v22);

  sub_1DC323978();
  (*(*a3 + 152))(v23, a2);
  sub_1DC320514();
  v139 = v26;
  v141 = v25;
  v27 = *(a1 + *(type metadata accessor for NLRouterServiceRequest(0) + 36));
  if (!v27)
  {
    sub_1DC517B9C();
    v44 = sub_1DC296DBC();
    v45 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v45, v46, v47, v48, 60, 2);

LABEL_17:
    v56 = 0;
    v57 = 0;
    goto LABEL_18;
  }

  v28 = *(*a4 + 96);
  v29 = v27;
  if ((v28(1) & 1) == 0)
  {
    v49 = sub_1DC517B9C();
    v50 = sub_1DC296DBC();
    sub_1DC516F0C(v49, &dword_1DC287000, v50, "Spans in prompt disabled, model incompatible", 44, 2, MEMORY[0x1E69E7CC0]);

    goto LABEL_17;
  }

  v30 = sub_1DC517B8C();
  v31 = sub_1DC296DBC();
  sub_1DC516F0C(v30, &dword_1DC287000, v31, "QD output received and span prompt is enabled. Embedding entity spans in prompt", 79, 2, MEMORY[0x1E69E7CC0]);

  v32 = v29;
  v33 = sub_1DC516D7C();

  if (!v33)
  {
    sub_1DC517B8C();
    v51 = sub_1DC296DBC();
    v52 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v52, v53, v54, v55, 59, 2);

    goto LABEL_17;
  }

  v133 = a4;
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v34 = sub_1DC332630();
  v35 = sub_1DC3E768C(v34);
  v36 = 3;
  if (v35 == 4)
  {
    v37 = 3;
  }

  else
  {
    v37 = v35;
  }

  sub_1DC332714();
  v39 = v38;
  v134 = sub_1DC332818();
  v40 = sub_1DC332908();
  if (v39)
  {
    v5 = v40;
    if (sub_1DC51778C() == 0x6D6F646E6172 && v41 == 0xE600000000000000)
    {

      goto LABEL_41;
    }

    v43 = sub_1DC51825C();

    if (v43)
    {
      swift_bridgeObjectRelease_n();
LABEL_41:
      v36 = 0;
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_49_8();
    if (sub_1DC51778C() == 1802530676 && v114 == 0xE400000000000000)
    {
    }

    else
    {
      v116 = sub_1DC51825C();

      if ((v116 & 1) == 0)
      {
        LODWORD(v131) = v37;
        a4 = v33;
        OUTLINED_FUNCTION_49_8();
        v117 = sub_1DC51778C();
        v119 = v118;

        if (v117 == 0xD000000000000011 && 0x80000001DC53F330 == v119)
        {
LABEL_67:

          v33 = a4;
        }

        else
        {
          OUTLINED_FUNCTION_62_2();
          v121 = sub_1DC51825C();

          if ((v121 & 1) == 0)
          {
            v122 = sub_1DC517B8C();
            v123 = sub_1DC296DBC();
            if (os_log_type_enabled(v123, v122))
            {
              v124 = OUTLINED_FUNCTION_63();
              v135 = OUTLINED_FUNCTION_82();
              v142[0] = v135;
              *v124 = 136315138;
              v125 = OUTLINED_FUNCTION_49_8();
              v128 = v32;
              v129 = sub_1DC291244(v125, v126, v127);

              *(v124 + 4) = v129;
              v32 = v128;
              _os_log_impl(&dword_1DC287000, v123, v122, "Unknown span filter strategy: %s, defaulting to none", v124, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v135);
              OUTLINED_FUNCTION_66();
              v33 = a4;
              OUTLINED_FUNCTION_66();
            }

            else
            {
            }

            v134 = 0;
            v36 = 3;
            goto LABEL_71;
          }
        }

        v134 = LODWORD(v5);
        v36 = 2;
LABEL_71:
        v37 = v131;
        goto LABEL_42;
      }
    }

    swift_bridgeObjectRelease_n();
    v36 = 1;
    goto LABEL_42;
  }

  v134 = 0;
LABEL_42:
  v95 = sub_1DC332A10();
  v132 = v36;
  if (v95)
  {
    v96 = v95;
  }

  else
  {
    if (sub_1DC29F950(10))
    {
      v97 = sub_1DC3E7A08();
    }

    else
    {
      v97 = sub_1DC3E7860();
    }

    v96 = *v97;
    swift_bridgeObjectRetain_n();
  }

  v98 = sub_1DC517B9C();
  v99 = sub_1DC296DBC();
  if (os_log_type_enabled(v99, v98))
  {
    v100 = OUTLINED_FUNCTION_63();
    v131 = v33;
    v101 = OUTLINED_FUNCTION_82();
    v142[0] = v101;
    *v100 = 136315138;
    v102 = MEMORY[0x1E12962D0](v96, MEMORY[0x1E69E6158]);
    v130 = v24;
    v103 = v37;
    v104 = v32;
    v106 = v105;

    v107 = sub_1DC291244(v102, v106, v142);
    v32 = v104;
    v37 = v103;
    v24 = v130;

    *(v100 + 4) = v107;
    OUTLINED_FUNCTION_28_8();
    _os_log_impl(v108, v109, v110, v111, v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    v33 = v131;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  else
  {
  }

  v112 = sub_1DC322E3C(v96);
  v56 = sub_1DC3E5104(v33, v37, v134, v132, v112);
  v57 = v113;

  a4 = v133;
LABEL_18:
  v32 = sub_1DC3215D0(v23, a4);
  v59 = v58;
  if (((*(*a4 + 96))(0) & 1) == 0)
  {
    v67 = sub_1DC517B9C();
    v68 = sub_1DC296DBC();
    sub_1DC516F0C(v67, &dword_1DC287000, v68, "updatableCorrection disabled", 28, 2, MEMORY[0x1E69E7CC0]);

LABEL_23:
    v64 = 0;
    v66 = 0;
    goto LABEL_24;
  }

  sub_1DC408C50();
  if ((v60 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_1DC408F2C();
  if ((v61 & 1) == 0)
  {
    goto LABEL_23;
  }

  LOBYTE(v142[0]) = 25;
  sub_1DC30D6EC(v61, v62, v63);
  v64 = sub_1DC51823C();
  v66 = v65;
LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CAD8, &qword_1DC525850);
  inited = swift_initStackObject();
  v23 = 0;
  *(inited + 16) = xmmword_1DC523DA0;
  *(inited + 32) = v141;
  *(inited + 40) = v139;
  *(inited + 48) = v56;
  *(inited + 56) = v57;
  *(inited + 64) = v32;
  *(inited + 72) = v59;
  *(inited + 80) = v64;
  *(inited + 88) = v66;
  v70 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v71 = 16 * v23 + 40;
  while (v23 != 4)
  {
    if (v23 > 3)
    {
      __break(1u);
      goto LABEL_67;
    }

    ++v23;
    v72 = v71 + 16;
    v73 = *(inited + v71);
    v71 += 16;
    if (v73)
    {
      v74 = *(inited + v72 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = OUTLINED_FUNCTION_13_0();
        v70 = sub_1DC2ACCD4(v78, v79, v80, v70);
      }

      v76 = *(v70 + 2);
      v75 = *(v70 + 3);
      if (v76 >= v75 >> 1)
      {
        v81 = OUTLINED_FUNCTION_26(v75);
        v70 = sub_1DC2ACCD4(v81, v76 + 1, 1, v70);
      }

      *(v70 + 2) = v76 + 1;
      v77 = &v70[16 * v76];
      *(v77 + 4) = v74;
      *(v77 + 5) = v73;
      goto LABEL_25;
    }
  }

  swift_setDeallocating();
  sub_1DC323EA8();
  if (*(v70 + 2) || ((*(*a4 + 96))(4) & 1) != 0)
  {
    sub_1DC428688(5);
    v142[0] = 0x6D6574737973;
    v142[1] = 0xE600000000000000;
    MEMORY[0x1E1296160]();

    v82 = OUTLINED_FUNCTION_15_5();
    MEMORY[0x1E1296160](v82);

    v83 = OUTLINED_FUNCTION_56_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v83, v84);
    OUTLINED_FUNCTION_1_6();
    sub_1DC327B3C(v85, &qword_1ECC7C130, &unk_1DC5240F0, v86);
    OUTLINED_FUNCTION_15_5();
    sub_1DC5176AC();

    v87 = OUTLINED_FUNCTION_65_1();
    MEMORY[0x1E1296160](v87);

    sub_1DC30D6EC(v88, v89, v90);
    v91 = sub_1DC51823C();
    MEMORY[0x1E1296160](v91);

    v92 = OUTLINED_FUNCTION_15_5();
    MEMORY[0x1E1296160](v92);
  }

  else
  {
  }

  sub_1DC327BD8();
  v93 = sub_1DC296DBC();
  OUTLINED_FUNCTION_68_1();

  (*(v137 + 8))(v136, v138);
  return OUTLINED_FUNCTION_63_0();
}

void sub_1DC31E530()
{
  OUTLINED_FUNCTION_33();
  v260 = v0;
  v292 = v1;
  v314 = v2;
  v259 = sub_1DC51514C();
  OUTLINED_FUNCTION_0();
  v258 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v6 = OUTLINED_FUNCTION_14(v5);
  v304 = type metadata accessor for TurnSummary.ExecutionSource(v6);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v8);
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFB8, &unk_1DC52A4C0);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v13);
  v265 = sub_1DC51072C();
  OUTLINED_FUNCTION_0();
  v313 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v16);
  v277 = sub_1DC5119DC();
  OUTLINED_FUNCTION_0();
  v302 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v20);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v23);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v25);
  v310 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v29);
  v294 = sub_1DC5161CC();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v253 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v253 - v40;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_23_1();
  v303 = v43;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_62();
  v309 = v45;
  v46 = OUTLINED_FUNCTION_12();
  v311 = type metadata accessor for TurnSummary(v46);
  OUTLINED_FUNCTION_0();
  v308 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_2_1();
  v315 = v49;
  OUTLINED_FUNCTION_12();
  v257 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v256 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_1();
  v54 = v53 - v52;
  v55 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v56 = sub_1DC3990A4();
  v57 = *v56;
  v58 = v56[1];
  v254 = v56;
  v59 = *(v56 + 16);
  v60 = sub_1DC296DBC();
  v255 = v54;
  v61 = v57;
  v62 = v41;
  v63 = v304;
  v283 = v55;
  sub_1DC2A2ED0(v61, v58, v59, v60, 1, v54);

  v64 = v314;

  v65 = sub_1DC3217EC(5, v64);
  v281 = v66;
  v68 = v67;
  v263 = v313 + 8;
  v288 = v31 + 32;
  v274 = v27 + 32;
  v273 = v27 + 8;
  v272 = *MEMORY[0x1E69D0728];
  v271 = v31 + 104;
  v293 = v31 + 8;
  v301 = v302 + 16;
  v300 = v302 + 8;
  v282 = v69 >> 1;
  v70 = (v69 >> 1) - v67;
  v71 = __OFSUB__(v69 >> 1, v67);
  v280 = v71;
  v278 = v70 - 1;
  v72 = __OFSUB__(v70, 1);
  v279 = v72;
  v261 = v65;
  swift_unknownObjectRetain();
  v262 = 0;
  v73 = 0;
  v297 = MEMORY[0x1E69E7CC0];
  v295 = v35;
  v266 = v62;
  while (v68 != v282)
  {
    if (v68 >= v282)
    {
      goto LABEL_131;
    }

    if (__OFADD__(v73, 1))
    {
      goto LABEL_132;
    }

    v285 = v73;
    v286 = v73 + 1;
    v287 = v68;
    v74 = (v281 + 48 * v68);
    v75 = v74[1];
    v76 = v74[2];
    v77 = v74[3];
    v78 = v74[4];
    v322 = 0;
    v323 = 0xE000000000000000;

    v284 = v75;

    sub_1DC428688(5);
    v316 = 1919251317;
    v317 = 0xE400000000000000;
    MEMORY[0x1E1296160]();

    v79 = OUTLINED_FUNCTION_15_5();
    MEMORY[0x1E1296160](v79);

    v291 = v76;
    if (v77)
    {
      v80 = v76;
    }

    else
    {
      v80 = 0;
    }

    if (v77)
    {
      v81 = v77;
    }

    else
    {
      v81 = 0xE000000000000000;
    }

    v296 = v77;

    MEMORY[0x1E1296160](v80, v81);
    v82 = v310;

    LOBYTE(v320) = 0;
    v298 = sub_1DC30D6EC(v83, v84, v85);
    sub_1DC51823C();
    OUTLINED_FUNCTION_53_7();

    OUTLINED_FUNCTION_64_0();

    v86 = v309;
    v87 = v311;
    v307 = *(v78 + 16);
    if (v307)
    {
      OUTLINED_FUNCTION_24();
      v306 = v78 + v88;

      v89 = 0;
      v90 = v298;
      v305 = v78;
      while (v89 < *(v78 + 16))
      {
        v314 = v89;
        OUTLINED_FUNCTION_28_9();
        v91 = v315;
        sub_1DC327A94();
        v92 = v91[2];
        v93 = v91[3];
        sub_1DC2DB2AC();
        OUTLINED_FUNCTION_39(v86, 1, v63);
        if (v132)
        {
          OUTLINED_FUNCTION_83_0();

LABEL_23:
          v316 = 0x3E656761733CLL;
          OUTLINED_FUNCTION_32_6(0xE600000000000000);
          OUTLINED_FUNCTION_89();
          sub_1DC51823C();
          OUTLINED_FUNCTION_53_7();

          OUTLINED_FUNCTION_72_3();
LABEL_24:
          v94 = v90;
        }

        else
        {
          v95 = v303;
          OUTLINED_FUNCTION_59_2();
          sub_1DC2DB2AC();
          v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v95, 4, v96);
          v91 = &qword_1ECC7CA40;
          v98 = v299;
          switch(EnumTagSinglePayload)
          {
            case 1:
              v130 = *v315;
              v91 = v315[1];
              v312 = v92;
              if (v296)
              {
                if (!v91 || ((OUTLINED_FUNCTION_70_2(), v131 == v130) ? (v132 = v296 == v91) : (v132 = 0), !v132 && (sub_1DC51825C() & 1) == 0))
                {
LABEL_50:
                  v316 = 0x203E78697269733CLL;
                  v317 = 0xE800000000000000;
                  if (v91)
                  {
                    v138 = v130;
                  }

                  else
                  {
                    v138 = 0;
                  }

                  v94 = v90;
                  if (v91)
                  {
                    v139 = v91;
                  }

                  else
                  {
                    v139 = 0xE000000000000000;
                  }

                  MEMORY[0x1E1296160](v138, v139);

                  OUTLINED_FUNCTION_72_3();
                  goto LABEL_57;
                }
              }

              else if (v91)
              {
                goto LABEL_50;
              }

              v316 = 0x3E78697269733CLL;
              OUTLINED_FUNCTION_32_6(0xE700000000000000);

              OUTLINED_FUNCTION_89();
              sub_1DC51823C();
              OUTLINED_FUNCTION_53_7();

              OUTLINED_FUNCTION_72_3();
LABEL_46:
              v94 = v90;
LABEL_57:
              v82 = v93;
              break;
            case 2:
              OUTLINED_FUNCTION_83_0();

              OUTLINED_FUNCTION_27_8();
              sub_1DC327BD8();
              goto LABEL_23;
            case 3:
              v312 = v92;
              v316 = 0x3E656761733CLL;
              OUTLINED_FUNCTION_32_6(0xE600000000000000);

              OUTLINED_FUNCTION_89();
              sub_1DC51823C();
              OUTLINED_FUNCTION_53_7();

              OUTLINED_FUNCTION_72_3();
              goto LABEL_46;
            case 4:
              v112 = sub_1DC321880(v297);
              if (!v113)
              {
                goto LABEL_90;
              }

              v316 = v112;
              v317 = v113;
              sub_1DC428688(0);
              v312 = sub_1DC2A32B0(v114, v115, v116);
              v117 = sub_1DC517E6C();

              v118 = 0;
              v313 = *(v117 + 16);
              v119 = (v117 + 56);
              while (2)
              {
                if (v313 == v118)
                {
                  goto LABEL_89;
                }

                if (v118 >= *(v117 + 16))
                {
                  goto LABEL_129;
                }

                v120 = *(v119 - 3);
                v121 = *(v119 - 2);
                v123 = *(v119 - 1);
                v122 = *v119;
                v316 = v120;
                v317 = v121;
                v318 = v123;
                v319 = v122;

                sub_1DC428688(5);
                OUTLINED_FUNCTION_10_10();
                OUTLINED_FUNCTION_85_1(v124);

                v125 = OUTLINED_FUNCTION_15_5();
                MEMORY[0x1E1296160](v125);

                sub_1DC327AE8(v126, v127, v128);
                v129 = sub_1DC517E5C();

                if ((v129 & 1) == 0)
                {

                  ++v118;
                  v119 += 4;
                  continue;
                }

                break;
              }

              v316 = v120;
              v317 = v121;
              v318 = v123;
              v319 = v122;
              OUTLINED_FUNCTION_33_8();
              v320 = v140;
              v321 = 0xE700000000000000;
              if (sub_1DC517E5C())
              {
                v316 = v120;
                v317 = v121;
                v318 = v123;
                v319 = v122;
                v141 = v264;
                sub_1DC5106FC();
                sub_1DC517E0C();
                v143 = v142;
                OUTLINED_FUNCTION_37();
                v144(v141, v265);

                sub_1DC428688(5);
                OUTLINED_FUNCTION_10_10();
                v316 = v145;
                v317 = 0xE700000000000000;
                MEMORY[0x1E1296160]();

                v146 = OUTLINED_FUNCTION_15_5();
                MEMORY[0x1E1296160](v146);

                sub_1DC51783C();

                v147 = OUTLINED_FUNCTION_30_6();
                v149 = sub_1DC303EB0(v147, v148, v143);
                v313 = MEMORY[0x1E1296060](v149);
                v91 = v150;

                v312 = 0;
                goto LABEL_78;
              }

LABEL_89:

              v90 = v298;
LABEL_90:
              v182 = sub_1DC517B9C();
              v183 = sub_1DC296DBC();
              sub_1DC516F0C(v182, &dword_1DC287000, v183, "got .intelligeceFlow executionSource without a previous GenAI turn in the prompt. Unexpected.", 93, 2, MEMORY[0x1E69E7CC0]);

              OUTLINED_FUNCTION_33_8();
              v316 = v184;
              OUTLINED_FUNCTION_32_6(0xE700000000000000);
              OUTLINED_FUNCTION_89();
              sub_1DC51823C();
              OUTLINED_FUNCTION_53_7();

              v82 = 0;
              v91 = v317;
              v312 = 0;
              v313 = v316;
              goto LABEL_24;
            default:
              OUTLINED_FUNCTION_37();
              v99 = v294;
              v100(v295, v303, v294);
              sub_1DC2DB2AC();
              OUTLINED_FUNCTION_39(v98, 1, v82);
              if (v132)
              {

                OUTLINED_FUNCTION_59_2();
                sub_1DC28EB30(v101, v102, v103);
                OUTLINED_FUNCTION_37();
                v104(v275, v272, v99);
                v105 = sub_1DC5161BC();
                OUTLINED_FUNCTION_37();
                v106 = OUTLINED_FUNCTION_56_0();
                v107(v106);
                if (v105)
                {
                  sub_1DC428688(28);
                  v109 = v108;
                  v111 = v110;
                }

                else
                {
                  v109 = 0;
                  v111 = 0xE000000000000000;
                }

                v151 = v295;
                v152 = v290;
              }

              else
              {
                OUTLINED_FUNCTION_37();
                v133 = OUTLINED_FUNCTION_74();
                v134(v133);

                sub_1DC32DBF4();
                if (v135)
                {
                  sub_1DC428688(28);
                  v109 = v136;
                  v111 = v137;
                }

                else
                {
                  v109 = 0;
                  v111 = 0xE000000000000000;
                }

                v151 = v295;
                v152 = v290;
                OUTLINED_FUNCTION_37();
                v153(v289, v310);
              }

              OUTLINED_FUNCTION_33_8();
              v316 = v154;
              v317 = 0xE700000000000000;
              MEMORY[0x1E1296160](v109, v111);

              sub_1DC3318A0();
              if (v156)
              {
                v157 = v156;
              }

              else
              {
                v155 = 0;
                v157 = 0xE000000000000000;
              }

              MEMORY[0x1E1296160](v155, v157);

              LOBYTE(v320) = 8;
              sub_1DC51823C();
              OUTLINED_FUNCTION_53_7();

              v158 = v316;
              v82 = v317;
              OUTLINED_FUNCTION_40_11();
              sub_1DC2DB2AC();
              v159 = type metadata accessor for NLRouterTurnContext(0);
              OUTLINED_FUNCTION_39(v152, 1, v159);
              v313 = v158;
              if (v132)
              {
                OUTLINED_FUNCTION_37();
                v160(v151, v294);

                sub_1DC28EB30(v152, &qword_1ECC7BFD0, &unk_1DC522550);
              }

              else
              {
                v161 = *(v152 + 16);

                OUTLINED_FUNCTION_4_9();
                sub_1DC327BD8();
                v162 = 0;
                v163 = *(v161 + 16);
                v164 = v277;
                v165 = v276;
                while (v163 != v162)
                {
                  if (v162 >= *(v161 + 16))
                  {
                    goto LABEL_130;
                  }

                  OUTLINED_FUNCTION_22_0();
                  (*(v167 + 16))(v165, v161 + v166 + *(v167 + 72) * v162, v164);
                  if (sub_1DC51191C())
                  {
                    v170 = v82;
                    OUTLINED_FUNCTION_83_0();

                    OUTLINED_FUNCTION_37();
                    v173(v165, v164);
                    goto LABEL_80;
                  }

                  ++v162;
                  v168 = sub_1DC51195C();
                  OUTLINED_FUNCTION_37();
                  v169(v165, v164);
                  if (v168)
                  {
                    v170 = v82;
                    OUTLINED_FUNCTION_83_0();

LABEL_80:
                    OUTLINED_FUNCTION_37();
                    v174 = OUTLINED_FUNCTION_80_2();
                    v175(v174);
                    v94 = v298;
                    v91 = v170;
                    goto LABEL_81;
                  }
                }

                OUTLINED_FUNCTION_37();
                v171 = OUTLINED_FUNCTION_80_2();
                v172(v171);
              }

              v312 = 0;
              v91 = v82;
LABEL_78:
              v82 = 0;
              v94 = v298;
              break;
          }
        }

LABEL_81:
        v89 = v314 + 1;
        v86 = v309;
        sub_1DC28EB30(v309, &qword_1ECC7BFC8, &unk_1DC524050);
        v316 = 32;
        v317 = 0xE100000000000000;
        sub_1DC428688(5);
        OUTLINED_FUNCTION_10_10();
        OUTLINED_FUNCTION_85_1(v176);

        v177 = OUTLINED_FUNCTION_15_5();
        MEMORY[0x1E1296160](v177);

        MEMORY[0x1E1296160](v320, v321);

        MEMORY[0x1E1296160](v313, v91);

        OUTLINED_FUNCTION_84_0();
        OUTLINED_FUNCTION_53_7();

        OUTLINED_FUNCTION_64_0();

        v316 = 32;
        v317 = 0xE100000000000000;
        sub_1DC428688(5);
        v320 = 0x6E61747369737361;
        v321 = 0xE900000000000074;
        MEMORY[0x1E1296160]();

        v178 = OUTLINED_FUNCTION_15_5();
        MEMORY[0x1E1296160](v178);

        MEMORY[0x1E1296160](v320, v321);

        if (v82)
        {
          v179 = v312;
        }

        else
        {
          v179 = 0;
        }

        if (v82)
        {
          v180 = v82;
        }

        else
        {
          v180 = 0xE000000000000000;
        }

        MEMORY[0x1E1296160](v179, v180);

        OUTLINED_FUNCTION_84_0();
        OUTLINED_FUNCTION_53_7();

        OUTLINED_FUNCTION_64_0();

        v181 = OUTLINED_FUNCTION_15_5();
        MEMORY[0x1E1296160](v181);
        OUTLINED_FUNCTION_24_4();
        sub_1DC327BD8();
        v82 = v310;
        v87 = v311;
        v63 = v304;
        v78 = v305;
        v90 = v94;
        if (v89 == v307)
        {

          goto LABEL_91;
        }
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
      goto LABEL_133;
    }

LABEL_91:
    if (v280)
    {
      goto LABEL_135;
    }

    if (v279)
    {
      goto LABEL_136;
    }

    if (v285 != v278)
    {

      goto LABEL_112;
    }

    v185 = v266;
    if (*(v78 + 16))
    {
      OUTLINED_FUNCTION_28_9();
      v186 = v267;
      sub_1DC327A94();
      v187 = 0;
    }

    else
    {
      v187 = 1;
      v186 = v267;
    }

    __swift_storeEnumTagSinglePayload(v186, v187, 1, v87);

    v188 = OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_39(v188, v189, v87);
    v190 = v268;
    if (v132)
    {
      sub_1DC28EB30(v186, &qword_1ECC7BFC0, &unk_1DC522540);
      __swift_storeEnumTagSinglePayload(v270, 1, 1, v63);
    }

    else
    {
      OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_24_4();
      sub_1DC327BD8();
    }

    v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    __swift_storeEnumTagSinglePayload(v185, 1, 4, v191);
    __swift_storeEnumTagSinglePayload(v185, 0, 1, v63);
    v192 = *(v269 + 48);
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_39(v190, 1, v63);
    if (v132)
    {
      OUTLINED_FUNCTION_40_11();
      sub_1DC28EB30(v193, v194, v195);
      OUTLINED_FUNCTION_40_11();
      sub_1DC28EB30(v196, v197, v198);
      OUTLINED_FUNCTION_39(v190 + v192, 1, v63);
      if (!v132)
      {
        goto LABEL_109;
      }

      OUTLINED_FUNCTION_40_11();
      sub_1DC28EB30(v199, v200, v201);
LABEL_111:
      sub_1DC3218C8();
      v262 = v210;
      MEMORY[0x1E1296160]();
LABEL_112:

      goto LABEL_113;
    }

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_39(v190 + v192, 1, v63);
    if (v202)
    {
      OUTLINED_FUNCTION_40_11();
      sub_1DC28EB30(v203, v204, v205);
      OUTLINED_FUNCTION_40_11();
      sub_1DC28EB30(v206, v207, v208);
      OUTLINED_FUNCTION_27_8();
      sub_1DC327BD8();
LABEL_109:
      sub_1DC28EB30(v190, &qword_1ECC7BFB8, &unk_1DC52A4C0);
      goto LABEL_113;
    }

    sub_1DC327B84();
    sub_1DC327C2C(&qword_1ECC7BD58, type metadata accessor for TurnSummary.ExecutionSource, &protocol conformance descriptor for TurnSummary.ExecutionSource);
    v209 = sub_1DC5176CC();
    sub_1DC327BD8();
    sub_1DC28EB30(v185, &qword_1ECC7BFC8, &unk_1DC524050);
    sub_1DC28EB30(v270, &qword_1ECC7BFC8, &unk_1DC524050);
    sub_1DC327BD8();
    sub_1DC28EB30(v190, &qword_1ECC7BFC8, &unk_1DC524050);
    if (v209)
    {
      goto LABEL_111;
    }

LABEL_113:
    v211 = v322;
    v212 = v323;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v214 = v287;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v219 = OUTLINED_FUNCTION_13_0();
      v297 = sub_1DC2ACCD4(v219, v220, v221, v222);
    }

    v216 = *(v297 + 2);
    v215 = *(v297 + 3);
    if (v216 >= v215 >> 1)
    {
      v223 = OUTLINED_FUNCTION_26(v215);
      v297 = sub_1DC2ACCD4(v223, v216 + 1, 1, v297);
    }

    v68 = v214 + 1;
    v217 = v297;
    *(v297 + 2) = v216 + 1;
    v218 = &v217[16 * v216];
    *(v218 + 4) = v211;
    *(v218 + 5) = v212;
    v73 = v286;
  }

  swift_unknownObjectRelease();
  v224 = *(v297 + 2);
  v225 = 0;
  v226 = 0;
  v227 =  + 16 * v224 + 24;
  v315 = v224;
  v228 = v260;
  if (v224)
  {
    while (v224 <= *(v297 + 2))
    {

      OUTLINED_FUNCTION_63_0();
      sub_1DC51515C();
      v229 = sub_1DC51513C();
      v230 = OUTLINED_FUNCTION_55_7();
      v231(v230);
      v232 = __OFADD__(v226, v229);
      v226 += v229;
      if (v232)
      {
        goto LABEL_134;
      }

      if (v226 > v228)
      {
        v233 = v225;
        goto LABEL_125;
      }

      ++v225;
      v227 -= 16;
      v224 = (v224 - 1);
      if (!v224)
      {
        goto LABEL_123;
      }
    }

LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    return;
  }

LABEL_123:
  v233 = v315;
LABEL_125:
  v234 = sub_1DC517B9C();
  v235 = sub_1DC296DBC();
  if (os_log_type_enabled(v235, v234))
  {
    v236 = OUTLINED_FUNCTION_63();
    *v236 = 134217984;
    *(v236 + 4) = v233;
    OUTLINED_FUNCTION_28_8();
    _os_log_impl(v237, v238, v239, v240, v236, 0xCu);
    OUTLINED_FUNCTION_66();
  }

  v241 = v297;

  v316 = sub_1DC3217EC(v233, v241);
  v317 = v242;
  v318 = v243;
  v319 = v244;
  v245 = OUTLINED_FUNCTION_74();
  __swift_instantiateConcreteTypeFromMangledNameV2(v245, v246);
  sub_1DC327B3C(&qword_1ECC7B910, &qword_1ECC7CAD0, &unk_1DC524060, MEMORY[0x1E69E6958]);
  OUTLINED_FUNCTION_71_2();
  sub_1DC5176AC();
  OUTLINED_FUNCTION_75_0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v247 = v254[1];
  v248 = *(v254 + 16);
  v249 = sub_1DC296DBC();
  v250 = v255;
  v251 = OUTLINED_FUNCTION_63_0();
  sub_1DC2B8848(v251, v252, v247, v248, v249);

  (*(v256 + 8))(v250, v257);
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_34();
}