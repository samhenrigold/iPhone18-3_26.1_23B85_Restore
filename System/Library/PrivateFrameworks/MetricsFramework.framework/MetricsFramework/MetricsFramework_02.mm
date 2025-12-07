uint64_t sub_258E05190(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v17 = v6 - 5;
    v5 -= 40;
    v18 = v12;
    do
    {
      v19 = (v5 + 40);
      v20 = *(v18 - 40);
      v18 -= 40;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          v23 = *v17;
          v24 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v23;
          *(v5 + 16) = v24;
        }

        if (v12 <= v4 || (v6 -= 5, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v19 != v12)
      {
        v21 = *v18;
        v22 = *(v18 + 16);
        *(v5 + 32) = *(v18 + 32);
        *v5 = v21;
        *(v5 + 16) = v22;
      }

      v5 -= 40;
      v12 = v18;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v25 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v26 = (v25 >> 4) + (v25 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v26])
  {
    memmove(v6, v4, 40 * v26);
  }

  return 1;
}

uint64_t sub_258E053CC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_258F0AD80() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_258F0AD80() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_258E055F4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_258E05680(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_258E05694(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for AssetPenetrationData(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_258E05778(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988878, &unk_258F0D3B0);
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

uint64_t sub_258E0587C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_258F0AA30();

    if (v8)
    {

      sub_258F0A390();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_258F0AA20();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_258E05F4C(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_258E06180(v17 + 1);
    }

    sub_258E069D0(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_258F0A390();
  sub_258E08FDC(&qword_27F988CA0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
  v10 = sub_258F0A440();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_258E06AB8(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_258E08FDC(&qword_27F988CA8, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
  while ((sub_258F0A4B0() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_258E05B1C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_258F0AE40();
  sub_258F0A5B0();
  v8 = sub_258F0AE90();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_258F0AD80() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_258E06CA0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_258E05C6C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_258F09A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_258E08FDC(&qword_27F988CC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v34 = a2;
  v12 = sub_258F0A440();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_258E08FDC(&qword_27F988CD0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v22 = sub_258F0A4B0();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_258E06E20(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_258E05F4C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CB0, &qword_258F0D3D8);
    v2 = sub_258F0AAB0();
    v15 = v2;
    sub_258F0AA10();
    if (sub_258F0AA40())
    {
      sub_258F0A390();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_258E06180(v9 + 1);
        }

        v2 = v15;
        sub_258E08FDC(&qword_27F988CA0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
        result = sub_258F0A440();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_258F0AA40());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_258E06180(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CB0, &qword_258F0D3D8);
  result = sub_258F0AAA0();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_258F0A390();
      sub_258E08FDC(&qword_27F988CA0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
      result = sub_258F0A440();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero(v7, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_258E06414(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C80, &qword_258F0D3C0);
  result = sub_258F0AAA0();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_258F0AE40();
      sub_258F0A5B0();
      result = sub_258F0AE90();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_258E06674(uint64_t a1)
{
  v2 = v1;
  v37 = sub_258F09A70();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CC0, &qword_258F0D3E8);
  result = sub_258F0AAA0();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_258E08FDC(&qword_27F988CC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_258F0A440();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
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

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

unint64_t sub_258E069D0(uint64_t a1, uint64_t a2)
{
  sub_258F0A390();
  sub_258E08FDC(&qword_27F988CA0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
  sub_258F0A440();
  result = sub_258F0AA00();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_258E06AB8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_258E06180(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_258E070C4();
      goto LABEL_12;
    }

    sub_258E075A8(v6 + 1);
  }

  v8 = *v3;
  sub_258F0A390();
  sub_258E08FDC(&qword_27F988CA0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
  result = sub_258F0A440();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_258E08FDC(&qword_27F988CA8, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
    do
    {
      result = sub_258F0A4B0();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_258F0ADB0();
  __break(1u);
  return result;
}

void sub_258E06CA0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_258E06414(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_258E07214();
      goto LABEL_16;
    }

    sub_258E07820(v8 + 1);
  }

  v10 = *v4;
  sub_258F0AE40();
  sub_258F0A5B0();
  v11 = sub_258F0AE90();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_258F0AD80() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_258F0ADB0();
  __break(1u);
}

uint64_t sub_258E06E20(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_258F09A70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_258E06674(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_258E07370();
      goto LABEL_12;
    }

    sub_258E07A58(v11 + 1);
  }

  v13 = *v3;
  sub_258E08FDC(&qword_27F988CC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v14 = sub_258F0A440();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_258E08FDC(&qword_27F988CD0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v22 = sub_258F0A4B0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_258F0ADB0();
  __break(1u);
  return result;
}

void *sub_258E070C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CB0, &qword_258F0D3D8);
  v2 = *v0;
  v3 = sub_258F0AA90();
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

void sub_258E07214()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C80, &qword_258F0D3C0);
  v2 = *v0;
  v3 = sub_258F0AA90();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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
}

void *sub_258E07370()
{
  v1 = v0;
  v2 = sub_258F09A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CC0, &qword_258F0D3E8);
  v7 = *v0;
  v8 = sub_258F0AA90();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_258E075A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CB0, &qword_258F0D3D8);
  result = sub_258F0AAA0();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_258F0A390();
      sub_258E08FDC(&qword_27F988CA0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);

      result = sub_258F0A440();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_258E07820(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C80, &qword_258F0D3C0);
  result = sub_258F0AAA0();
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_258F0AE40();

      sub_258F0A5B0();
      result = sub_258F0AE90();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_258E07A58(uint64_t a1)
{
  v2 = v1;
  v34 = sub_258F09A70();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CC0, &qword_258F0D3E8);
  v8 = sub_258F0AAA0();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v16 = v8 + 56;
    v30 = (v3 + 32);
    v31 = result;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v33 + 72);
      (*(v33 + 16))(v6, *(result + 48) + v21 * (v18 | (v10 << 6)), v34);
      sub_258E08FDC(&qword_27F988CC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_258F0A440();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v30)(*(v8 + 48) + v17 * v21, v6, v34);
      ++*(v8 + 16);
      result = v31;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v2 = v8;
  }

  return result;
}

void *sub_258E07D74(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_258E07F1C(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 40;
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (v5 + 16 * v3);
  while (1)
  {
    if (v4 == v3)
    {
      return v6;
    }

    if (v3 >= v4)
    {
      break;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_21;
    }

    v9 = *v7;
    if (*(a2 + 56))
    {
      v10 = 0.0;
    }

    else
    {
      v10 = *(a2 + 48);
    }

    if ((*(a2 + 56) & 1) == 0 && (*(a2 + 48) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      goto LABEL_22;
    }

    if (v10 <= -1.0)
    {
      goto LABEL_23;
    }

    if (v10 >= 1.84467441e19)
    {
      goto LABEL_24;
    }

    ++v3;
    v7 += 2;
    if (v9 <= v10)
    {
      v14 = *(v7 - 3);
      result = swift_isUniquelyReferenced_nonNull_native();
      v15 = v5;
      if ((result & 1) == 0)
      {
        result = sub_258E14B88(0, *(v6 + 16) + 1, 1);
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_258E14B88((v11 > 1), v12 + 1, 1);
      }

      *(v6 + 16) = v12 + 1;
      v13 = v6 + 16 * v12;
      v5 = v15;
      *(v13 + 32) = v14;
      *(v13 + 40) = v9;
      v3 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_258E080A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CD8, &qword_258F0D3F0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v47 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v47 - v14;
  v63 = type metadata accessor for AssetPenetrationData(0);
  v16 = *(v63 - 8);
  v18 = MEMORY[0x28223BE20](v63, v17);
  v55 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v54 = (&v47 - v21);
  v64[0] = a1;

  sub_258E02FCC(v64);
  v22 = v64[0];
  v64[0] = a2;

  sub_258E03074(v64);
  v23 = v64[0];
  v24 = *(v22 + 16);
  if (v24 >= *(v64[0] + 16))
  {
    v25 = *(v64[0] + 16);
  }

  else
  {
    v25 = *(v22 + 16);
  }

  v56 = sub_258DE230C(0, v25, 0, MEMORY[0x277D84F90]);
  v59 = *(v23 + 16);
  if (!v59)
  {
LABEL_30:

    return v56;
  }

  v26 = 0;
  v52 = v23 + 32;
  v53 = v24;
  v58 = *(v22 + 16);
  v27 = (v16 + 56);
  v48 = v24 - 1;
  v49 = (v16 + 48);
  v50 = v23;
  v51 = v15;
  v47 = (v16 + 56);
  while (1)
  {
    if (v26 >= *(v23 + 16))
    {
      goto LABEL_35;
    }

    v24 = *v27;
    if (!v58)
    {
      (v24)(v15, 1, 1, v63);
      goto LABEL_7;
    }

    v28 = v52 + 40 * v26;
    v29 = *v28;
    v30 = *(v28 + 16);
    v57 = *(v28 + 8);
    v32 = *(v28 + 24);
    v31 = *(v28 + 32);
    (v24)(v12, 1, 1, v63);
    v61 = v30;
    v62 = v31;
    v60 = v32;
    if (v53)
    {
      break;
    }

LABEL_25:
    v15 = v51;
    sub_258E09024(v12, v51);
    if ((*v49)(v15, 1, v63) != 1)
    {
      v38 = v54;
      sub_258E09094(v15, v54);
      sub_258E090F8(v38[2], v38[3], v38[4], v38[5]);
      v40 = v60;
      v39 = v61;
      v38[2] = v57;
      v38[3] = v39;
      v41 = v62;
      v38[4] = v40;
      v38[5] = v41;
      sub_258E02EF8(v38, v55);
      v43 = v56[2];
      v42 = v56[3];
      v24 = (v43 + 1);
      v23 = v50;
      if (v43 >= v42 >> 1)
      {
        v56 = sub_258DE230C((v42 > 1), v43 + 1, 1, v56);
      }

      v44 = v55;
      v45 = v56;
      v56[2] = v24;
      sub_258E09094(v44, v45 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v43);
      sub_258E02F5C(v54);
      goto LABEL_8;
    }

    v23 = v50;
LABEL_7:
    sub_258DE2184(v15, &qword_27F988CD8, &qword_258F0D3F0);
LABEL_8:
    if (++v26 == v59)
    {
      goto LABEL_30;
    }
  }

  v33 = v22 + ((*(v16 + 80) + 32) & ~*(v16 + 80));

  v27 = v47;

  v34 = 0;
  v35 = v48;
  while (!__OFSUB__(v35, v34))
  {
    v36 = v34 + &v35[-v34] / 2;
    if (__OFADD__(v34, &v35[-v34] / 2))
    {
      goto LABEL_32;
    }

    if ((v36 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    if (v36 >= *(v22 + 16))
    {
      goto LABEL_34;
    }

    v37 = v33 + *(v16 + 72) * v36;
    if (*(v37 + 56))
    {
      if (v29 < 0.0)
      {
        goto LABEL_23;
      }
    }

    else if (*(v37 + 48) > v29)
    {
LABEL_23:
      v35 = (v36 - 1);
      goto LABEL_14;
    }

    sub_258E02EF8(v37, v8);
    sub_258DE2184(v12, &qword_27F988CD8, &qword_258F0D3F0);
    (v24)(v8, 0, 1, v63);
    sub_258E09024(v8, v12);
    v34 = v36 + 1;
LABEL_14:
    if (v35 < v34)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_258E085A0()
{
  result = qword_27F988BD0;
  if (!qword_27F988BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988BD0);
  }

  return result;
}

uint64_t sub_258E085F4(uint64_t a1)
{
  result = sub_258E08FDC(&qword_27F988BD8, type metadata accessor for AssetPenetrationCalculator, &unk_258F0D1C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E0864C(uint64_t a1)
{
  result = sub_258E08FDC(&qword_27F988BE0, type metadata accessor for AssetPenetrationCalculator, &protocol conformance descriptor for AssetPenetrationCalculator);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258E086A4()
{
  result = qword_27F988BE8;
  if (!qword_27F988BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988BE8);
  }

  return result;
}

void sub_258E08710(uint64_t a1)
{
  sub_258F0A370();
  if (v1 <= 0x3F)
  {
    sub_258DE3B74(319);
    if (v2 <= 0x3F)
    {
      sub_258F09B00();
      if (v3 <= 0x3F)
      {
        sub_258F09A70();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of AssetPenetrationCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 160) + **(*v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of AssetEventsBiomeClientProtocol.getGmsEvents(startTimeInterval:eventType:useCase:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v20 = (*(a7 + 8) + **(a7 + 8));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_258E08B24;
  v18.n128_f64[0] = a8;

  return v20(a1, a2, a3, a4, a5, a6, a7, v18);
}

uint64_t sub_258E08B24(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of AssetEventsBiomeClientProtocol.getUafEvents(startTimeInterval:useCase:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v16 = (*(a5 + 16) + **(a5 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_258E09150;
  v14.n128_f64[0] = a6;

  return v16(a1, a2, a3, a4, a5, v14);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_258E08DA0(void *a1)
{
  v3 = *(sub_258F0A370() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C68, &qword_258F0D398);
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_258E01F40(a1, v1 + v4, v6, v7);
}

uint64_t sub_258E08EC8(void **a1)
{
  v3 = *(sub_258F0A370() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C90, &qword_258F0D3D0);
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_258E00BA8(a1, v6, v1 + v4, v7, v8);
}

uint64_t sub_258E08FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258E09024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CD8, &qword_258F0D3F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E09094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPenetrationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258E090F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_258E09164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258F0A370();
  v90 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v93 = v8;
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_258F09A70();
  v10 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v11);
  v105 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CD8, &qword_258F0D3F0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v98 = &v89 - v15;
  v104 = type metadata accessor for AssetPenetrationData(0);
  v96 = *(v104 - 8);
  v17 = MEMORY[0x28223BE20](v104, v16);
  v103 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v102 = &v89 - v20;
  v108 = a3;
  v21 = sub_258F0A350();
  v22 = sub_258F0A810();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = a1;
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = 5;
    _os_log_impl(&dword_258DD8000, v21, v22, "--- Start Biome SQL Row Iteration (Logging first %ld) ---", v24, 0xCu);
    v25 = v24;
    a1 = v23;
    MEMORY[0x259C9EF40](v25, -1, -1);
  }

  v27 = 0;
  if (sub_258F0A070())
  {
    v100 = (v90 + 16);
    v101 = (v10 + 16);
    v107 = MEMORY[0x277D84F90];
    v99 = (v96 + 48);
    *&v26 = 134217984;
    v89 = v26;
    *&v26 = 134218242;
    v91 = v26;
    v28 = v98;
    v92 = v6;
    v95 = a1;
    while (1)
    {
      v29 = __OFADD__(v27++, 1);
      if (v29)
      {
        break;
      }

      if (v27 <= 5)
      {
        v30 = sub_258F0A060();
        if (v30)
        {
          v31 = v30;
          if (*(v30 + 16))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B58, &unk_258F0D720);
            v32 = sub_258F0ABD0();
          }

          else
          {
            v32 = MEMORY[0x277D84F98];
          }

          v130 = v32;
          swift_bridgeObjectRetain_n();
          sub_258EA3354(v31, v31, &v124);
          swift_bridgeObjectRetain_n();
          while (1)
          {
            sub_258EA33C0(&v120);
            if (!*(&v121 + 1))
            {
              break;
            }

            v111 = v120;
            v112 = v121;
            v113 = v122;
            sub_258DEB8B8(&v123, v110);
            v37 = sub_258E2EA2C(&v111);
            v39 = v32[2];
            v40 = (v38 & 1) == 0;
            v29 = __OFADD__(v39, v40);
            v41 = v39 + v40;
            if (v29)
            {
              __break(1u);
LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

            v42 = v38;
            if (v32[3] < v41)
            {
              sub_258ED5164(v41, 1);
              v32 = v130;
              v37 = sub_258E2EA2C(&v111);
              if ((v42 & 1) != (v43 & 1))
              {
                goto LABEL_47;
              }
            }

            if (v42)
            {
              goto LABEL_45;
            }

            v32[(v37 >> 6) + 8] |= 1 << v37;
            v44 = v32[6] + 40 * v37;
            v45 = v111;
            v46 = v112;
            *(v44 + 32) = v113;
            *v44 = v45;
            *(v44 + 16) = v46;
            sub_258DEB8B8(v110, (v32[7] + 32 * v37));
            v47 = v32[2];
            v29 = __OFADD__(v47, 1);
            v48 = v47 + 1;
            if (v29)
            {
              goto LABEL_43;
            }

            v32[2] = v48;
          }

          v117 = v127;
          v118 = v128;
          v119 = v129;
          v114 = v124;
          v115 = v125;
          v116 = v126;
          sub_258DE2184(&v114, &qword_27F988D98, &qword_258F14070);
          swift_bridgeObjectRelease_n();

          v49 = sub_258F0A350();
          v50 = sub_258F0A810();

          v97 = v49;
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            *&v111 = v94;
            *v51 = v91;
            *(v51 + 4) = v27;
            *(v51 + 12) = 2080;
            v52 = a2;
            v53 = sub_258F0A420();
            v55 = v54;

            v56 = v53;
            a2 = v52;
            v57 = sub_258DE3018(v56, v55, &v111);
            v6 = v92;

            *(v51 + 14) = v57;
            v58 = v97;
            _os_log_impl(&dword_258DD8000, v97, v50, "Row %ld: %s", v51, 0x16u);
            v59 = v94;
            __swift_destroy_boxed_opaque_existential_1Tm(v94);
            MEMORY[0x259C9EF40](v59, -1, -1);
            MEMORY[0x259C9EF40](v51, -1, -1);
          }

          else
          {
          }

          v28 = v98;
        }

        else
        {
          v33 = sub_258F0A350();
          v34 = sub_258F0A810();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = v89;
            *(v35 + 4) = v27;
            _os_log_impl(&dword_258DD8000, v33, v34, "Row %ld: Failed to get row data for logging.", v35, 0xCu);
            v36 = v35;
            v28 = v98;
            MEMORY[0x259C9EF40](v36, -1, -1);
          }
        }
      }

      v60 = v105;
      (*v101)(v105, a2, v106);
      (*v100)(v9, v108, v6);

      sub_258E0A358(v61, v60, v9, v28);
      if ((*v99)(v28, 1, v104) == 1)
      {
        sub_258DE2184(v28, &qword_27F988CD8, &qword_258F0D3F0);
        v62 = sub_258F0A350();
        v63 = sub_258F0A800();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_258DD8000, v62, v63, "Encountered row with assetSetPayload empty.", v64, 2u);
          v65 = v64;
          v28 = v98;
          MEMORY[0x259C9EF40](v65, -1, -1);
        }
      }

      else
      {
        v66 = v102;
        sub_258E09094(v28, v102);
        sub_258E02EF8(v66, v103);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_258DE230C(0, v107[2] + 1, 1, v107);
        }

        v68 = v107[2];
        v67 = v107[3];
        if (v68 >= v67 >> 1)
        {
          v107 = sub_258DE230C((v67 > 1), v68 + 1, 1, v107);
        }

        sub_258E02F5C(v102);
        v69 = v107;
        v107[2] = v68 + 1;
        sub_258E09094(v103, v69 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v68);
      }

      if ((sub_258F0A070() & 1) == 0)
      {
        goto LABEL_37;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    v32 = swift_allocError();
    swift_willThrow();
    v109 = v32;
    v88 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
    if (swift_dynamicCast())
    {
      *&v114 = 0;
      *(&v114 + 1) = 0xE000000000000000;
      sub_258F0AAE0();
      MEMORY[0x259C9DEB0](0xD00000000000001BLL, 0x8000000258F19CC0);
      sub_258F0AB70();
      MEMORY[0x259C9DEB0](39, 0xE100000000000000);
      sub_258F0AB90();
      __break(1u);
LABEL_47:
      sub_258F0ADC0();
      __break(1u);
    }

    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1Tm(v110);
    sub_258E0F590(&v111);
    v117 = v127;
    v118 = v128;
    v119 = v129;
    v114 = v124;
    v115 = v125;
    v116 = v126;
    sub_258DE2184(&v114, &qword_27F988D98, &qword_258F14070);

    swift_unexpectedError();
    __break(1u);

    __break(1u);
  }

  else
  {
    v107 = MEMORY[0x277D84F90];
LABEL_37:
    v70 = sub_258F0A350();
    v71 = sub_258F0A810();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 134217984;
      *(v72 + 4) = v27;
      _os_log_impl(&dword_258DD8000, v70, v71, "--- End Biome SQL Row Iteration (Total rows processed: %ld) ---", v72, 0xCu);
      MEMORY[0x259C9EF40](v72, -1, -1);
    }

    v73 = v9;

    *&v124 = v107;

    sub_258E0DAB0(&v124);

    KeyPath = swift_getKeyPath();
    v75 = v90;
    v76 = *(v90 + 16);
    v106 = v90 + 16;
    v107 = v76;
    v77 = v108;
    (v76)(v73, v108, v6);
    v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v79 = swift_allocObject();
    v105 = *(v75 + 32);
    (v105)(v79 + v78, v73, v6);
    sub_258E0B654(KeyPath, sub_258E0F42C, v79);

    v80 = swift_getKeyPath();
    (v107)(v73, v77, v6);
    v81 = swift_allocObject();
    (v105)(v81 + v78, v73, v6);
    sub_258E0BAC0(v80, sub_258E0F444);

    v82 = swift_getKeyPath();
    (v107)(v73, v77, v6);
    v83 = swift_allocObject();
    (v105)(v83 + v78, v73, v6);
    sub_258E0BAC0(v82, sub_258E0F4E4);

    v84 = sub_258F0A350();
    v85 = sub_258F0A810();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_258DD8000, v84, v85, "--- End Forward & Backward fill for device aggregation IDs. ---", v86, 2u);
      MEMORY[0x259C9EF40](v86, -1, -1);
    }

    return v124;
  }

  return result;
}

unint64_t sub_258E09EC8(char a1)
{
  result = 0x7465537465737361;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x69745F746E657665;
      break;
    case 3:
      result = 0x745F656369766564;
      break;
    case 4:
      result = 0x625F6D6574737973;
      break;
    case 5:
      result = 0x5F6D6172676F7270;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD00000000000002CLL;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x644964646FLL;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0xD000000000000029;
      break;
    case 12:
      result = 0xD00000000000002BLL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_258E0A084(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_258E09EC8(*a1);
  v5 = v4;
  if (v3 == sub_258E09EC8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_258F0AD80();
  }

  return v8 & 1;
}

uint64_t sub_258E0A10C()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258E09EC8(v1);
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E0A170(uint64_t a1)
{
  sub_258E09EC8(*v1);
  sub_258F0A5B0();
}

uint64_t sub_258E0A1C4(uint64_t a1)
{
  v2 = *v1;
  sub_258F0AE40();
  sub_258E09EC8(v2);
  sub_258F0A5B0();

  return sub_258F0AE90();
}

unint64_t sub_258E0A224@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_258E0F3E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_258E0A254@<X0>(unint64_t *a1@<X8>)
{
  result = sub_258E09EC8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_258E0A29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258E0F3E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258E0A2E0(uint64_t a1)
{
  v2 = sub_258E0ED2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E0A31C(uint64_t a1)
{
  v2 = sub_258E0ED2C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_258E0A358(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AssetPenetrationData(0);
  v163 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v133[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v133[-v15];
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  *v16 = 0u;
  v17 = &v133[v14[15] - v15];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v133[v14[16] - v15];
  *v18 = 0;
  v18[8] = 1;
  *&v16[v14[17]] = 0;
  v19 = sub_258F0A060();
  if (v19)
  {
    v164 = v19;
    *&v166 = 0xD000000000000015;
    *(&v166 + 1) = 0x8000000258F189D0;
    sub_258F0AA80();
    if (*(v164 + 16) && (v20 = sub_258E2EA2C(v178), (v21 & 1) != 0))
    {
      sub_258DE4090(*(v164 + 56) + 32 * v20, &v166);
      sub_258E0F590(v178);
      v22 = swift_dynamicCast();
      if (v22)
      {
        v23 = *&v175[0];
      }

      else
      {
        v23 = 0;
      }

      if (v22)
      {
        v24 = *(&v175[0] + 1);
      }

      else
      {
        v24 = 0;
      }

      v154 = v24;
      v155 = v23;
    }

    else
    {
      sub_258E0F590(v178);
      v154 = 0;
      v155 = 0;
    }

    *&v166 = 0x69745F746E657665;
    *(&v166 + 1) = 0xEF706D617473656DLL;
    sub_258F0AA80();
    if (*(v164 + 16) && (v25 = sub_258E2EA2C(v178), (v26 & 1) != 0))
    {
      sub_258DE4090(*(v164 + 56) + 32 * v25, &v166);
      sub_258E0F590(v178);
      v27 = swift_dynamicCast();
      v28 = *&v175[0];
      if (!v27)
      {
        v28 = 0;
      }

      v153 = v28;
      v29 = v27 ^ 1;
    }

    else
    {
      sub_258E0F590(v178);
      v153 = 0;
      v29 = 1;
    }

    v152 = v29;
    strcpy(&v166, "device_type");
    HIDWORD(v166) = -352321536;
    sub_258F0AA80();
    if (*(v164 + 16) && (v30 = sub_258E2EA2C(v178), (v31 & 1) != 0))
    {
      sub_258DE4090(*(v164 + 56) + 32 * v30, &v166);
      sub_258E0F590(v178);
      v32 = swift_dynamicCast();
      if (v32)
      {
        v33 = *&v175[0];
      }

      else
      {
        v33 = 0;
      }

      if (v32)
      {
        v34 = *(&v175[0] + 1);
      }

      else
      {
        v34 = 0;
      }

      v150 = v34;
      v151 = v33;
    }

    else
    {
      sub_258E0F590(v178);
      v150 = 0;
      v151 = 0;
    }

    strcpy(&v166, "system_build");
    BYTE13(v166) = 0;
    HIWORD(v166) = -5120;
    sub_258F0AA80();
    if (*(v164 + 16) && (v35 = sub_258E2EA2C(v178), (v36 & 1) != 0))
    {
      sub_258DE4090(*(v164 + 56) + 32 * v35, &v166);
      sub_258E0F590(v178);
      v37 = swift_dynamicCast();
      if (v37)
      {
        v38 = *&v175[0];
      }

      else
      {
        v38 = 0;
      }

      if (v37)
      {
        v39 = *(&v175[0] + 1);
      }

      else
      {
        v39 = 0;
      }

      v148 = v39;
      v149 = v38;
    }

    else
    {
      sub_258E0F590(v178);
      v148 = 0;
      v149 = 0;
    }

    strcpy(&v166, "program_code");
    BYTE13(v166) = 0;
    HIWORD(v166) = -5120;
    sub_258F0AA80();
    if (*(v164 + 16) && (v40 = sub_258E2EA2C(v178), (v41 & 1) != 0))
    {
      sub_258DE4090(*(v164 + 56) + 32 * v40, &v166);
      sub_258E0F590(v178);
      v42 = swift_dynamicCast();
      if (v42)
      {
        v43 = *&v175[0];
      }

      else
      {
        v43 = 0;
      }

      if (v42)
      {
        v44 = *(&v175[0] + 1);
      }

      else
      {
        v44 = 0;
      }

      v146 = v44;
      v147 = v43;
    }

    else
    {
      sub_258E0F590(v178);
      v146 = 0;
      v147 = 0;
    }

    *&v166 = 0xD000000000000011;
    *(&v166 + 1) = 0x8000000258F18A30;
    sub_258F0AA80();
    if (*(v164 + 16) && (v45 = sub_258E2EA2C(v178), (v46 & 1) != 0))
    {
      sub_258DE4090(*(v164 + 56) + 32 * v45, &v166);
      sub_258E0F590(v178);
      v47 = swift_dynamicCast();
      if (v47)
      {
        v48 = *&v175[0];
      }

      else
      {
        v48 = 0;
      }

      if (v47)
      {
        v49 = *(&v175[0] + 1);
      }

      else
      {
        v49 = 0;
      }

      v144 = v49;
      v145 = v48;
    }

    else
    {
      sub_258E0F590(v178);
      v144 = 0;
      v145 = 0;
    }

    *&v166 = 0xD000000000000013;
    *(&v166 + 1) = 0x8000000258F18A80;
    sub_258F0AA80();
    if (*(v164 + 16) && (v50 = sub_258E2EA2C(v178), (v51 & 1) != 0))
    {
      sub_258DE4090(*(v164 + 56) + 32 * v50, &v166);
      sub_258E0F590(v178);
      v52 = swift_dynamicCast();
      if (v52)
      {
        v53 = *&v175[0];
      }

      else
      {
        v53 = 0;
      }

      if (v52)
      {
        v54 = *(&v175[0] + 1);
      }

      else
      {
        v54 = 0;
      }

      v142 = v54;
      v143 = v53;
    }

    else
    {
      sub_258E0F590(v178);
      v142 = 0;
      v143 = 0;
    }

    *&v166 = 0xD000000000000019;
    *(&v166 + 1) = 0x8000000258F18AA0;
    sub_258F0AA80();
    if (*(v164 + 16) && (v55 = sub_258E2EA2C(v178), (v56 & 1) != 0))
    {
      sub_258DE4090(*(v164 + 56) + 32 * v55, &v166);
      sub_258E0F590(v178);
      v57 = swift_dynamicCast();
      if (v57)
      {
        v58 = *&v175[0];
      }

      else
      {
        v58 = 0;
      }

      if (v57)
      {
        v59 = *(&v175[0] + 1);
      }

      else
      {
        v59 = 0;
      }

      v140 = v59;
      v141 = v58;
    }

    else
    {
      sub_258E0F590(v178);
      v140 = 0;
      v141 = 0;
    }

    *&v166 = 0xD00000000000002CLL;
    *(&v166 + 1) = 0x8000000258F18A50;
    sub_258F0AA80();
    if (*(v164 + 16) && (v60 = sub_258E2EA2C(v178), (v61 & 1) != 0))
    {
      sub_258DE4090(*(v164 + 56) + 32 * v60, &v166);
      sub_258E0F590(v178);
      v62 = swift_dynamicCast();
      v63 = *&v175[0];
      if (!v62)
      {
        v63 = 0;
      }

      v139 = v63;
      v64 = v62 ^ 1;
    }

    else
    {
      sub_258E0F590(v178);
      v139 = 0;
      v64 = 1;
    }

    v138 = v64;
    *&v166 = 0xD000000000000029;
    *(&v166 + 1) = 0x8000000258F18AC0;
    sub_258F0AA80();
    if (*(v164 + 16) && (v65 = sub_258E2EA2C(v178), (v66 & 1) != 0))
    {
      sub_258DE4090(*(v164 + 56) + 32 * v65, &v166);
      sub_258E0F590(v178);
      v67 = swift_dynamicCast();
      v68 = *&v175[0];
      if (!v67)
      {
        v68 = 0;
      }

      v137 = v68;
      v69 = v67 ^ 1;
    }

    else
    {
      sub_258E0F590(v178);
      v137 = 0;
      v69 = 1;
    }

    v136 = v69;
    *&v166 = 0xD00000000000002BLL;
    *(&v166 + 1) = 0x8000000258F18AF0;
    sub_258F0AA80();
    v70 = *(v164 + 16);
    v161 = a4;
    v162 = v8;
    v157 = v12;
    if (v70 && (v71 = sub_258E2EA2C(v178), (v72 & 1) != 0))
    {
      sub_258DE4090(*(v164 + 56) + 32 * v71, &v166);
      sub_258E0F590(v178);
      v73 = swift_dynamicCast();
      v74 = *&v175[0];
      if (!v73)
      {
        v74 = 0;
      }

      v135 = v74;
      v75 = v73 ^ 1;
    }

    else
    {
      sub_258E0F590(v178);
      v135 = 0;
      v75 = 1;
    }

    v134 = v75;
    v156 = a1;
    v158 = a3;
    v159 = a2;
    v76 = v164;
    v77 = *(v164 + 16);
    v180 = MEMORY[0x277D84F90];
    swift_bridgeObjectRetain_n();
    sub_258E14BA8(0, v77, 0);
    v78 = v180;
    sub_258EA3354(v76, v76, v178);
    v160 = v16;
    if (v77)
    {

      while (1)
      {
        sub_258EA33C0(&v166);
        if (!*(&v167 + 1))
        {
          break;
        }

        sub_258DE4090(v168 + 8, v175);
        if (swift_dynamicCast())
        {

          *&v175[0] = 0;
          *(&v175[0] + 1) = 0xE000000000000000;
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
          sub_258F0AB70();
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
        }

        else
        {
          *&v175[0] = 0;
          *(&v175[0] + 1) = 0xE000000000000000;
          sub_258F0AB70();
        }

        v79 = v175[0];
        *&v175[0] = 34;
        *(&v175[0] + 1) = 0xE100000000000000;
        v80 = sub_258F0AA50();
        MEMORY[0x259C9DEB0](v80);

        MEMORY[0x259C9DEB0](2112034, 0xE300000000000000);
        MEMORY[0x259C9DEB0](v79, *(&v79 + 1));

        v81 = v175[0];
        sub_258DE2184(&v166, &qword_27F988DA0, &unk_258F0FFA0);
        v180 = v78;
        v83 = *(v78 + 16);
        v82 = *(v78 + 24);
        if (v83 >= v82 >> 1)
        {
          sub_258E14BA8((v82 > 1), v83 + 1, 1);
          v78 = v180;
        }

        *(v78 + 16) = v83 + 1;
        *(v78 + 16 * v83 + 32) = v81;
        if (!--v77)
        {
          goto LABEL_112;
        }
      }

      __break(1u);
    }

    else
    {

LABEL_112:
      sub_258EA33C0(&v170);
      while (*(&v171 + 1))
      {
        v176[0] = v172;
        v176[1] = v173;
        v177 = v174;
        v175[0] = v170;
        v175[1] = v171;
        sub_258DE4090(v176 + 8, &v166);
        if (swift_dynamicCast())
        {

          *&v166 = 0;
          *(&v166 + 1) = 0xE000000000000000;
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
          sub_258F0AB70();
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
        }

        else
        {
          *&v166 = 0;
          *(&v166 + 1) = 0xE000000000000000;
          sub_258F0AB70();
        }

        v90 = v166;
        *&v166 = 34;
        *(&v166 + 1) = 0xE100000000000000;
        v91 = sub_258F0AA50();
        MEMORY[0x259C9DEB0](v91);

        MEMORY[0x259C9DEB0](2112034, 0xE300000000000000);
        MEMORY[0x259C9DEB0](v90, *(&v90 + 1));

        v92 = v166;
        sub_258DE2184(v175, &qword_27F988DA0, &unk_258F0FFA0);
        v180 = v78;
        v94 = *(v78 + 16);
        v93 = *(v78 + 24);
        if (v94 >= v93 >> 1)
        {
          sub_258E14BA8((v93 > 1), v94 + 1, 1);
          v78 = v180;
        }

        *(v78 + 16) = v94 + 1;
        *(v78 + 16 * v94 + 32) = v92;
        sub_258EA33C0(&v170);
      }

      swift_bridgeObjectRelease_n();
      v168[0] = v178[2];
      v168[1] = v178[3];
      v168[2] = v178[4];
      v169 = v179;
      v166 = v178[0];
      v167 = v178[1];
      sub_258DE2184(&v166, &qword_27F988D98, &qword_258F14070);
      sub_258DE2184(&v170, &qword_27F988DA8, &unk_258F0D740);
      v165 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
      sub_258E0F5E4(&qword_27F988DB8, &qword_27F988DB0, &unk_258F13940, MEMORY[0x277D83958]);
      v95 = sub_258F0A490();
      v97 = v96;

      v98 = v158;
      v99 = sub_258F0A350();
      v100 = sub_258F0A840();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v165 = v102;
        *v101 = 136315138;
        v103 = sub_258DE3018(v95, v97, &v165);

        *(v101 + 4) = v103;
        _os_log_impl(&dword_258DD8000, v99, v100, "Asset Set Status query result yielded: \n{%s}", v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v102);
        MEMORY[0x259C9EF40](v102, -1, -1);
        MEMORY[0x259C9EF40](v101, -1, -1);
      }

      else
      {
      }

      v104 = sub_258F0A370();
      (*(*(v104 - 8) + 8))(v98, v104);
      v106 = v161;
      v105 = v162;
      v108 = v159;
      v107 = v160;
      v109 = v154;
      v110 = v153;
      v111 = v152;
      v113 = v150;
      v112 = v151;
      v115 = v148;
      v114 = v149;
      v117 = v146;
      v116 = v147;
      v119 = v144;
      v118 = v145;
      v121 = v142;
      v120 = v143;
      v123 = v140;
      v122 = v141;
      v124 = v139;
      v125 = v138;
      v126 = v137;
      v127 = v157;
      *v157 = v155;
      *(v127 + 8) = v109;
      *(v127 + 16) = 0u;
      *(v127 + 32) = 0u;
      *(v127 + 48) = v110;
      *(v127 + 56) = v111;
      *(v127 + 64) = v112;
      *(v127 + 72) = v113;
      *(v127 + 80) = v114;
      *(v127 + 88) = v115;
      *(v127 + 96) = v116;
      *(v127 + 104) = v117;
      *(v127 + 112) = v118;
      *(v127 + 120) = v119;
      *(v127 + 128) = v120;
      *(v127 + 136) = v121;
      *(v127 + 144) = v124;
      *(v127 + 152) = v125;
      v128 = v105[13];
      v129 = sub_258F09A70();
      (*(*(v129 - 8) + 32))(v127 + v128, v108, v129);
      v130 = (v127 + v105[14]);
      *v130 = v122;
      v130[1] = v123;
      v131 = v127 + v105[15];
      *v131 = v126;
      *(v131 + 8) = v136;
      v132 = v127 + v105[16];
      *v132 = v135;
      *(v132 + 8) = v134;
      *(v127 + v105[17]) = 0;
      sub_258E090F8(v107[2], v107[3], v107[4], v107[5]);
      sub_258E09094(v127, v107);
      sub_258E02EF8(v107, v106);
      (*(v163 + 56))(v106, 0, 1, v105);
      sub_258E02F5C(v107);
    }
  }

  else
  {
    v84 = sub_258F0A350();
    v85 = sub_258F0A840();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_258DD8000, v84, v85, "failed to get row", v86, 2u);
      MEMORY[0x259C9EF40](v86, -1, -1);
    }

    v87 = sub_258F0A370();
    (*(*(v87 - 8) + 8))(a3, v87);
    v88 = sub_258F09A70();
    (*(*(v88 - 8) + 8))(a2, v88);
    sub_258E090F8(*(v16 + 2), *(v16 + 3), *(v16 + 4), *(v16 + 5));
    v89 = *(v163 + 56);

    v89(a4, 1, 1, v8);
  }
}

void sub_258E0B4B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPenetrationData(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258E02EF8(a2, v7);
  v8 = sub_258F0A350();
  v9 = sub_258F0A800();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 134218242;
    *(v10 + 4) = a1;
    *(v10 + 12) = 2080;
    if (v7[1])
    {
      v12 = *v7;
      v13 = v7[1];
    }

    else
    {
      v13 = 0xE300000000000000;
      v12 = 7104878;
    }

    sub_258E02F5C(v7);
    v14 = sub_258DE3018(v12, v13, &v16);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_258DD8000, v8, v9, "Filled value at row %ld: %s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x259C9EF40](v11, -1, -1);
    MEMORY[0x259C9EF40](v10, -1, -1);
  }

  else
  {

    sub_258E02F5C(v7);
  }
}

uint64_t sub_258E0B654(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v44[2] = a3;
  v47 = a2;
  v53 = a1;
  v4 = type metadata accessor for AssetPenetrationData(0);
  v49 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v45 = v44 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v50 = v44 - v13;
  v46 = v3;
  v14 = *v3;
  v15 = *(*v3 + 16);
  if (v15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      do
      {
        if (v16 >= v14[2])
        {
          goto LABEL_36;
        }

        v52 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v51 = *(v49 + 72);
        v19 = v14 + v52 + v51 * v16;
        sub_258E02EF8(v19, v8);
        v20 = swift_readAtKeyPath();
        v22 = *v21;
        v23 = v21[1];

        v20(&v54, 0);
        sub_258E02F5C(v8);
        if (v23)
        {

          v17 = v22;
          v18 = v23;
        }

        else if (v18)
        {
          v54 = v17;
          v55 = v18;
          v24 = v14[2];
          swift_bridgeObjectRetain_n();
          if (v16 >= v24)
          {
            goto LABEL_37;
          }

          swift_setAtWritableKeyPath();
          if (v47)
          {
            if (v16 >= v14[2])
            {
              goto LABEL_38;
            }

            v25 = v19;
            v26 = v45;
            sub_258E02EF8(v25, v45);
            v47(v16, v26);

            sub_258E02F5C(v26);
          }

          else
          {
          }
        }

        ++v16;
      }

      while (v15 != v16);
      v44[1] = v18;
      *v46 = v14;
      v27 = v14[2];
      if (!v27)
      {
        break;
      }

      v48 = 0;
      v49 = v27;
      v15 = 0;
      v28 = v27 - 1;
      while (1)
      {
        v29 = sub_258E0ED04(&v54, v28);
        v31 = *v30;
        (v29)(&v54, 0);
        if ((v31 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (v31 >= v14[2])
        {
          goto LABEL_32;
        }

        v32 = v14;
        v33 = v51 * v31;
        v34 = v14 + v52 + v51 * v31;
        v35 = v50;
        sub_258E02EF8(v34, v50);
        v36 = swift_readAtKeyPath();
        v38 = *v37;
        v8 = v37[1];

        v36(&v54, 0);
        sub_258E02F5C(v35);
        if (v8)
        {

          v48 = v38;
          v15 = v8;
LABEL_17:
          v14 = v32;
          goto LABEL_18;
        }

        if (!v15)
        {
          goto LABEL_17;
        }

        v54 = v48;
        v55 = v15;
        swift_bridgeObjectRetain_n();
        v14 = v32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_258E02FB8(v32);
        }

        if (v31 >= v14[2])
        {
          break;
        }

        v39 = v14 + v52;
        swift_setAtWritableKeyPath();
        v40 = v47;
        *v46 = v14;
        if (v40)
        {
          if (v31 >= v14[2])
          {
            goto LABEL_35;
          }

          v41 = &v39[v33];
          v42 = v45;
          sub_258E02EF8(v41, v45);
          v47(v31, v42);

          sub_258E02F5C(v42);
        }

        else
        {
        }

LABEL_18:
        if (--v28 == -1)
        {
          goto LABEL_33;
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
      v14 = sub_258E02FB8(v14);
    }
  }

LABEL_33:
}

uint64_t sub_258E0BAC0(uint64_t a1, void (*a2)(unint64_t, uint64_t))
{
  v43 = a2;
  v47 = a1;
  v3 = type metadata accessor for AssetPenetrationData(0);
  v44 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v41 = &v40 - v10;
  result = MEMORY[0x28223BE20](v9, v11);
  v14 = &v40 - v13;
  v42 = v2;
  v15 = *v2;
  v40 = *(*v2 + 16);
  if (v40)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_41:
      v15 = sub_258E02FB8(v15);
    }

    v16 = 0;
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 >= v15[2])
      {
        goto LABEL_38;
      }

      v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v45 = *(v44 + 72);
      v19 = v15 + v46 + v45 * v16;
      sub_258E02EF8(v19, v7);
      v20 = swift_readAtKeyPath();
      v22 = *v21;
      v23 = *(v21 + 8);
      v20(&v48, 0);
      result = sub_258E02F5C(v7);
      if (v23)
      {
        v24 = v17;
      }

      else
      {
        v24 = v22;
      }

      if (v18 & 1 | ((v23 & 1) == 0))
      {
        v18 &= v23;
        v17 = v24;
      }

      else
      {
        v48 = v17;
        v49 = 0;
        if (v16 >= v15[2])
        {
          goto LABEL_39;
        }

        result = swift_setAtWritableKeyPath();
        if (v43)
        {
          if (v16 >= v15[2])
          {
            goto LABEL_40;
          }

          v25 = v41;
          sub_258E02EF8(v19, v41);
          v43(v16, v25);
          result = sub_258E02F5C(v25);
        }

        v18 = 0;
      }

      ++v16;
    }

    while (v40 != v16);
    *v42 = v15;
    v44 = v15[2];
    if (v44)
    {
      v26 = 0;
      v7 = (v44 - 1);
      v27 = 1;
      while (1)
      {
        v28 = sub_258E0ED04(&v48, v7);
        v30 = *v29;
        (v28)(&v48, 0);
        if ((v30 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v30 >= v15[2])
        {
          goto LABEL_35;
        }

        v31 = v45 * v30;
        sub_258E02EF8(v15 + v46 + v45 * v30, v14);
        v32 = swift_readAtKeyPath();
        v34 = *v33;
        v35 = *(v33 + 8);
        v32(&v48, 0);
        result = sub_258E02F5C(v14);
        if (v35)
        {
          v36 = v26;
        }

        else
        {
          v36 = v34;
        }

        if (v27 & 1 | ((v35 & 1) == 0))
        {
          v27 &= v35;
          v26 = v36;
        }

        else
        {
          v48 = v26;
          v49 = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_258E02FB8(v15);
          }

          if (v30 >= v15[2])
          {
            goto LABEL_36;
          }

          v37 = v15 + v46;
          result = swift_setAtWritableKeyPath();
          v38 = v43;
          *v42 = v15;
          if (v38)
          {
            if (v30 >= v15[2])
            {
              goto LABEL_37;
            }

            v39 = v41;
            sub_258E02EF8(&v37[v31], v41);
            v43(v30, v39);
            result = sub_258E02F5C(v39);
          }

          v27 = 0;
        }

        if (--v7 == -1)
        {
          return result;
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
      goto LABEL_41;
    }
  }

  return result;
}

void *Array.fill<A>(_:logger:)(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v110 = a3;
  v115 = a2;
  v137 = a1;
  v7 = MEMORY[0x28223BE20](a1, a2);
  v114 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v103 - v11;
  v13 = *(a4 + 16);
  v117 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v10, v14);
  v129 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v109 = &v103 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v133 = &v103 - v22;
  v118 = v23;
  v138 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v113 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v119 = &v103 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v120 = &v103 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v130 = &v103 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v111 = &v103 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v42 = (&v103 - v41);
  v44 = MEMORY[0x28223BE20](v40, v43);
  v128 = &v103 - v45;
  MEMORY[0x28223BE20](v44, v46);
  v104 = v47;
  v48 = *(v47 + 56);
  v108 = &v103 - v49;
  v131 = v50;
  v123 = v47 + 56;
  v122 = v48;
  v48();
  *&v140 = *v4;
  WitnessTable = swift_getWitnessTable();
  v116 = a4;
  v103 = WitnessTable;
  result = sub_258F0A7E0();
  v53 = v142;
  v132 = v4;
  v136 = v13;
  if (v142 != v143)
  {
    if (v143 < v142)
    {
      __break(1u);
    }

    else if (v142 < v143)
    {
      v82 = (v138 + 16);
      v135 = (v117 + 8);
      v127 = (v104 + 48);
      v125 = (v138 + 8);
      v124 = (v104 + 32);
      v106 = (v104 + 16);
      v105 = (v104 + 8);
      v121 = v42;
      v112 = (v138 + 16);
      v126 = v143;
      v107 = v12;
      v83 = v131;
      do
      {
        v86 = v133;
        sub_258F0A720();
        v87 = swift_readAtKeyPath();
        v88 = *v82;
        v89 = v128;
        v90 = v118;
        (*v82)(v128);
        v87(&v142, 0);
        v134 = *v135;
        v134(v86, v13);
        v91 = *v127;
        v92 = (*v127)(v89, 1, v83);
        v93 = *v125;
        if (v92 == 1)
        {
          v93(v89, v90);
          v94 = v121;
          (v88)(v121, v108, v90);
          if (v91(v94, 1, v83) == 1)
          {
            v93(v94, v90);
            v5 = v132;
            v85 = v126;
          }

          else
          {
            v95 = v107;
            (*v124)(v107, v94, v83);
            v96 = v111;
            (*v106)(v111, v95, v83);
            (v122)(v96, 0, 1, v83);
            v5 = v132;
            sub_258F0A6E0();
            v97 = v136;
            sub_258E0DA5C(v53, *v5, v136);
            _swift_isClassOrObjCExistentialType();
            swift_setAtWritableKeyPath();
            v98 = v115;
            v85 = v126;
            if (v115)
            {
              v99 = v109;
              sub_258F0A720();
              v98(v53, v99);
              v100 = v99;
              v5 = v132;
              v134(v100, v97);
            }

            (*v105)(v95, v83);
          }

          v82 = v112;
        }

        else
        {
          v84 = v108;
          v93(v108, v90);
          (*v124)(v84, v89, v83);
          (v122)(v84, 0, 1, v83);
          v5 = v132;
          v85 = v126;
        }

        ++v53;
        v13 = v136;
      }

      while (v85 != v53);
      goto LABEL_2;
    }

    __break(1u);
    return result;
  }

LABEL_2:
  (v122)(v130, 1, 1, v131);
  v141 = *v5;
  sub_258F0A7E0();
  v139 = v140;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CE0, &qword_258F0D400);
  v55 = sub_258E0D97C();
  MEMORY[0x259C9DD40](&v142, v54, v55);
  v56 = v142;
  if (v143 == v142)
  {
    v101 = *(v138 + 8);
    v59 = v118;
  }

  else
  {
    v57 = (v138 + 16);
    v134 = (v117 + 8);
    v125 = (v104 + 48);
    v121 = (v104 + 32);
    v112 = (v104 + 16);
    v111 = (v104 + 8);
    v58 = v143;
    v59 = v118;
    v60 = v120;
    v126 = (v138 + 16);
    v127 = v143;
    v128 = v142;
    v138 += 8;
    while (v56 < v58)
    {
      v62 = sub_258E0ED04(&v142, --v58);
      v64 = *v63;
      (v62)(&v142, 0);
      v65 = v129;
      v135 = v64;
      v66 = v136;
      sub_258F0A720();
      v67 = swift_readAtKeyPath();
      v68 = *v57;
      (*v57)(v60);
      v67(&v142, 0);
      v133 = *v134;
      (v133)(v65, v66);
      v69 = *v125;
      v70 = v131;
      v71 = (*v125)(v60, 1, v131);
      v72 = *v138;
      v124 = *v138;
      if (v71 == 1)
      {
        v72(v60, v59);
        v73 = v119;
        (v68)(v119, v130, v59);
        if ((v69)(v73, 1, v70) == 1)
        {
          v72(v73, v59);
        }

        else
        {
          v74 = v114;
          (*v121)(v114, v73, v70);
          v75 = v113;
          (*v112)(v113, v74, v70);
          (v122)(v75, 0, 1, v70);
          v76 = v70;
          v77 = v132;
          sub_258F0A6E0();
          v78 = v135;
          v79 = v136;
          sub_258E0DA5C(v135, *v77, v136);
          _swift_isClassOrObjCExistentialType();
          swift_setAtWritableKeyPath();
          v80 = v115;
          if (v115)
          {
            v81 = v109;
            sub_258F0A720();
            v80(v78, v81);
            (v133)(v81, v79);
          }

          (*v111)(v74, v76);
          v59 = v118;
        }

        v60 = v120;
      }

      else
      {
        v61 = v130;
        v72(v130, v59);
        (*v121)(v61, v60, v70);
        (v122)(v61, 0, 1, v70);
      }

      v56 = v128;
      v57 = v126;
      if (v128 == v58)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_27:
    v101 = v124;
  }

  v102 = v101;
  v101(v130, v59);
  return v102(v108, v59);
}

void sub_258E0CB64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPenetrationData(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258E02EF8(a2, v7);
  v8 = sub_258F0A350();
  v9 = sub_258F0A800();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    *(v10 + 4) = a1;
    *(v10 + 12) = 2048;
    v11 = &v7[*(v4 + 60)];
    if (v11[8])
    {
      v12 = 0;
    }

    else
    {
      v12 = *v11;
    }

    sub_258E02F5C(v7);
    *(v10 + 14) = v12;
    _os_log_impl(&dword_258DD8000, v8, v9, "Filled value at row %ld: %llu", v10, 0x16u);
    MEMORY[0x259C9EF40](v10, -1, -1);
  }

  else
  {
    sub_258E02F5C(v7);
  }
}

void sub_258E0CCA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPenetrationData(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258E02EF8(a2, v7);
  v8 = sub_258F0A350();
  v9 = sub_258F0A800();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    *(v10 + 4) = a1;
    *(v10 + 12) = 2048;
    v11 = &v7[*(v4 + 64)];
    if (v11[8])
    {
      v12 = 0;
    }

    else
    {
      v12 = *v11;
    }

    sub_258E02F5C(v7);
    *(v10 + 14) = v12;
    _os_log_impl(&dword_258DD8000, v8, v9, "Filled value at row %ld: %llu", v10, 0x16u);
    MEMORY[0x259C9EF40](v10, -1, -1);
  }

  else
  {
    sub_258E02F5C(v7);
  }
}

uint64_t AssetPenetrationData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CF8, &qword_258F0D408);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E0ED2C();
  sub_258F0AEE0();
  LOBYTE(v15) = 0;
  sub_258F0ACA0();
  if (!v2)
  {
    v10 = v3[3];
    v11 = v3[4];
    v12 = v3[5];
    v15 = v3[2];
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v14[15] = 1;
    sub_258E0ED80(v15, v10, v11, v12);
    sub_258E0EDD0();
    sub_258F0ACD0();
    sub_258E090F8(v15, v16, v17, v18);
    LOBYTE(v15) = 2;
    sub_258F0ACC0();
    LOBYTE(v15) = 3;
    sub_258F0ACA0();
    LOBYTE(v15) = 4;
    sub_258F0ACA0();
    LOBYTE(v15) = 5;
    sub_258F0ACA0();
    LOBYTE(v15) = 6;
    sub_258F0ACA0();
    LOBYTE(v15) = 7;
    sub_258F0ACF0();
    LOBYTE(v15) = 8;
    sub_258F0ACA0();
    type metadata accessor for AssetPenetrationData(0);
    LOBYTE(v15) = 9;
    sub_258F09A70();
    sub_258E0EEC4(&qword_27F988D10, MEMORY[0x277CC95F8]);
    sub_258F0AD20();
    LOBYTE(v15) = 10;
    sub_258F0ACA0();
    LOBYTE(v15) = 11;
    sub_258F0ACF0();
    LOBYTE(v15) = 12;
    sub_258F0ACF0();
  }

  return (*(v6 + 8))(v9, v5);
}

void AssetPenetrationData.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_258F09A70();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988D18, &qword_258F0D410);
  v9 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v10);
  v12 = &v57 - v11;
  v13 = type metadata accessor for AssetPenetrationData(0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  v62 = a1;
  v63 = v15;
  *&v17[*(v15 + 68)] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E0ED2C();
  sub_258F0AED0();
  if (v2)
  {
    v64 = v2;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_4;
  }

  v18 = a2;
  LOBYTE(v65) = 0;
  v19 = v59;
  v20 = sub_258F0ABF0();
  v64 = 0;
  *v17 = v20;
  *(v17 + 1) = v21;
  v67 = 1;
  sub_258E0EE70();
  v28 = v64;
  sub_258F0AC20();
  v64 = v28;
  if (v28)
  {
    goto LABEL_21;
  }

  v29 = *(v17 + 2);
  v30 = *(v17 + 3);
  v31 = *(v17 + 4);
  v32 = *(v17 + 5);
  v57 = v66;
  v58 = v65;
  sub_258E090F8(v29, v30, v31, v32);
  v33 = v57;
  *(v17 + 1) = v58;
  *(v17 + 2) = v33;
  LOBYTE(v65) = 2;
  v34 = v64;
  v35 = sub_258F0AC10();
  if (v34)
  {
    v64 = v34;
LABEL_21:
    (*(v9 + 8))(v12, v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_4;
  }

  *(v17 + 6) = v35;
  v17[56] = v36 & 1;
  LOBYTE(v65) = 3;
  *(v17 + 8) = sub_258F0ABF0();
  *(v17 + 9) = v37;
  LOBYTE(v65) = 4;
  *(v17 + 10) = sub_258F0ABF0();
  *(v17 + 11) = v38;
  LOBYTE(v65) = 5;
  *(v17 + 12) = sub_258F0ABF0();
  *(v17 + 13) = v39;
  LOBYTE(v65) = 6;
  *(v17 + 14) = sub_258F0ABF0();
  *(v17 + 15) = v40;
  LOBYTE(v65) = 7;
  *(v17 + 18) = sub_258F0AC40();
  v17[152] = v41 & 1;
  LOBYTE(v65) = 8;
  v42 = sub_258F0ABF0();
  v64 = 0;
  *(v17 + 16) = v42;
  *(v17 + 17) = v43;
  LOBYTE(v65) = 9;
  sub_258E0EEC4(&qword_27F988D28, MEMORY[0x277CC9618]);
  v44 = v64;
  sub_258F0AC70();
  v64 = v44;
  if (v44)
  {
    (*(v9 + 8))(v12, v59);
    v27 = 0;
    v22 = 1;
    v23 = 1;
    v24 = 1;
    v25 = 1;
    v26 = 1;
  }

  else
  {
    (*(v60 + 32))(&v17[v63[13]], v8, v61);
    LOBYTE(v65) = 10;
    v45 = v64;
    v46 = sub_258F0ABF0();
    v64 = v45;
    if (!v45)
    {
      v48 = &v17[v63[14]];
      *v48 = v46;
      v48[1] = v47;
      LOBYTE(v65) = 11;
      v49 = sub_258F0AC40();
      v64 = 0;
      v50 = &v17[v63[15]];
      *v50 = v49;
      v50[8] = v51 & 1;
      LOBYTE(v65) = 12;
      v52 = sub_258F0AC40();
      v64 = 0;
      v53 = v52;
      v55 = v54;
      v56 = &v17[v63[16]];
      (*(v9 + 8))(v12, v59);
      *v56 = v53;
      v56[8] = v55 & 1;
      sub_258E02EF8(v17, v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      sub_258E02F5C(v17);
      return;
    }

    (*(v9 + 8))(v12, v59);
    v22 = 1;
    v23 = 1;
    v24 = 1;
    v25 = 1;
    v26 = 1;
    v27 = 1;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v62);

  sub_258E090F8(*(v17 + 2), *(v17 + 3), *(v17 + 4), *(v17 + 5));
  if (v22)
  {

    if (!v23)
    {
LABEL_6:
      if (!v24)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  if (!v24)
  {
LABEL_7:
    if (!v25)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:

  if (!v25)
  {
LABEL_8:
    if (!v26)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:

  if (!v26)
  {
LABEL_9:
    if (!v27)
    {
      return;
    }

LABEL_16:
    (*(v60 + 8))(&v17[v63[13]], v61);
    return;
  }

LABEL_15:

  if (v27)
  {
    goto LABEL_16;
  }
}

unint64_t sub_258E0D97C()
{
  result = qword_27F988CE8;
  if (!qword_27F988CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988CE0, &qword_258F0D400);
    sub_258E0DA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988CE8);
  }

  return result;
}

unint64_t sub_258E0DA08()
{
  result = qword_27F988CF0;
  if (!qword_27F988CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988CF0);
  }

  return result;
}

uint64_t sub_258E0DA5C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_258E0DAB0(uint64_t *a1)
{
  v2 = *(type metadata accessor for AssetPenetrationData(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_258E07ECC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_258E0DB58(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_258E0DB58(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_258F0AD50();
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
        type metadata accessor for AssetPenetrationData(0);
        v6 = sub_258F0A6F0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AssetPenetrationData(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_258E0DEA4(v8, v9, a1, v4);
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
    return sub_258E0DC84(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_258E0DC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AssetPenetrationData(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = (&v32 - v15);
  result = MEMORY[0x28223BE20](v14, v17);
  v21 = (&v32 - v20);
  v34 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v25 = -v23;
    v26 = a1 - a3;
    v33 = v23;
    v27 = v22 + v23 * a3;
LABEL_5:
    v37 = v24;
    v38 = a3;
    v35 = v27;
    v36 = v26;
    v28 = v26;
    while (1)
    {
      sub_258E02EF8(v27, v21);
      sub_258E02EF8(v24, v16);
      if (*(v21 + 56))
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v21[6];
      }

      if (*(v16 + 56))
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v16[6];
      }

      sub_258E02F5C(v16);
      result = sub_258E02F5C(v21);
      if (v29 >= v30)
      {
LABEL_4:
        a3 = v38 + 1;
        v24 = v37 + v33;
        v26 = v36 - 1;
        v27 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      sub_258E09094(v27, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_258E09094(v12, v24);
      v24 += v25;
      v27 += v25;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_258E0DEA4(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v127 = a1;
  v141 = type metadata accessor for AssetPenetrationData(0);
  v136 = *(v141 - 8);
  v10 = MEMORY[0x28223BE20](v141, v9);
  v130 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v140 = &v122 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = (&v122 - v17);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = (&v122 - v21);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v135 = &v122 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v134 = &v122 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v125 = &v122 - v31;
  result = MEMORY[0x28223BE20](v30, v32);
  v124 = &v122 - v34;
  v138 = a3;
  v35 = *(a3 + 8);
  if (v35 < 1)
  {
    v37 = MEMORY[0x277D84F90];
LABEL_113:
    v5 = *v127;
    if (!*v127)
    {
      goto LABEL_152;
    }

    a3 = v37;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_146:
      result = sub_258E05680(a3);
    }

    v142 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v138)
      {
        v118 = *(result + 16 * a3);
        v119 = result;
        v120 = *(result + 16 * (a3 - 1) + 40);
        sub_258E0E818(*v138 + *(v136 + 72) * v118, *v138 + *(v136 + 72) * *(result + 16 * (a3 - 1) + 32), *v138 + *(v136 + 72) * v120, v5);
        if (v6)
        {
        }

        if (v120 < v118)
        {
          goto LABEL_139;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_258E05680(v119);
        }

        if (a3 - 2 >= *(v119 + 2))
        {
          goto LABEL_140;
        }

        v121 = &v119[16 * a3];
        *v121 = v118;
        *(v121 + 1) = v120;
        v142 = v119;
        sub_258E055F4(a3 - 1);
        result = v142;
        a3 = *(v142 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_150;
    }
  }

  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  v126 = a4;
  while (1)
  {
    v38 = v36;
    v39 = v36 + 1;
    v131 = v37;
    v128 = v38;
    if (v39 >= v35)
    {
      v35 = v39;
    }

    else
    {
      a3 = *v138;
      v40 = *(v136 + 72);
      v5 = *v138 + v40 * v39;
      v41 = v38;
      v42 = v124;
      sub_258E02EF8(v5, v124);
      v43 = a3 + v40 * v41;
      v44 = v125;
      sub_258E02EF8(v43, v125);
      v45 = *(v42 + 56) ? 0.0 : *(v42 + 48);
      v46 = *(v44 + 56) ? 0.0 : *(v44 + 48);
      sub_258E02F5C(v44);
      result = sub_258E02F5C(v42);
      v47 = v128 + 2;
      v137 = v40;
      v48 = a3 + v40 * (v128 + 2);
      while (v35 != v47)
      {
        LODWORD(v139) = v45 < v46;
        v49 = v134;
        sub_258E02EF8(v48, v134);
        a3 = v6;
        v50 = v35;
        v51 = v135;
        sub_258E02EF8(v5, v135);
        if (*(v49 + 56))
        {
          v52 = 0.0;
        }

        else
        {
          v52 = *(v49 + 48);
        }

        if (*(v51 + 56))
        {
          v53 = 0.0;
        }

        else
        {
          v53 = *(v51 + 48);
        }

        v54 = v51;
        v35 = v50;
        v6 = a3;
        sub_258E02F5C(v54);
        result = sub_258E02F5C(v49);
        ++v47;
        v48 += v137;
        v5 += v137;
        if (((v139 ^ (v52 >= v53)) & 1) == 0)
        {
          v35 = v47 - 1;
          break;
        }
      }

      v38 = v128;
      a4 = v126;
      if (v45 < v46)
      {
        if (v35 < v128)
        {
          goto LABEL_143;
        }

        if (v128 < v35)
        {
          v123 = v6;
          v55 = v137 * (v35 - 1);
          v56 = v35 * v137;
          v139 = v35;
          v57 = v35;
          v58 = v128;
          v59 = v128 * v137;
          do
          {
            if (v58 != --v57)
            {
              a3 = *v138;
              if (!*v138)
              {
                goto LABEL_149;
              }

              v5 = a3 + v59;
              sub_258E09094(a3 + v59, v130);
              if (v59 < v55 || v5 >= a3 + v56)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v59 != v55)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_258E09094(v130, a3 + v55);
            }

            ++v58;
            v55 -= v137;
            v56 -= v137;
            v59 += v137;
          }

          while (v58 < v57);
          v6 = v123;
          a4 = v126;
          v38 = v128;
          v35 = v139;
        }
      }
    }

    v60 = v138[1];
    if (v35 < v60)
    {
      if (__OFSUB__(v35, v38))
      {
        goto LABEL_142;
      }

      if (v35 - v38 < a4)
      {
        if (__OFADD__(v38, a4))
        {
          goto LABEL_144;
        }

        if (v38 + a4 >= v60)
        {
          v61 = v138[1];
        }

        else
        {
          v61 = v38 + a4;
        }

        if (v61 < v38)
        {
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (v35 != v61)
        {
          break;
        }
      }
    }

    v62 = v35;
    if (v35 < v38)
    {
      goto LABEL_141;
    }

LABEL_45:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v37 = v131;
    }

    else
    {
      result = sub_258DE2334(0, *(v131 + 2) + 1, 1, v131);
      v37 = result;
    }

    a3 = *(v37 + 2);
    v63 = *(v37 + 3);
    v64 = a3 + 1;
    if (a3 >= v63 >> 1)
    {
      result = sub_258DE2334((v63 > 1), a3 + 1, 1, v37);
      v37 = result;
    }

    *(v37 + 2) = v64;
    v65 = &v37[16 * a3];
    *(v65 + 4) = v128;
    *(v65 + 5) = v62;
    v132 = v62;
    v5 = *v127;
    if (!*v127)
    {
      goto LABEL_151;
    }

    if (a3)
    {
      while (1)
      {
        v66 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v67 = *(v37 + 4);
          v68 = *(v37 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_64:
          if (v70)
          {
            goto LABEL_130;
          }

          v83 = &v37[16 * v64];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_133;
          }

          v89 = &v37[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_137;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v64 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v93 = &v37[16 * v64];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_78:
        if (v88)
        {
          goto LABEL_132;
        }

        v96 = &v37[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_135;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_85:
        a3 = v66 - 1;
        if (v66 - 1 >= v64)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v138)
        {
          goto LABEL_148;
        }

        v104 = v37;
        v105 = *&v37[16 * a3 + 32];
        v106 = *&v37[16 * v66 + 40];
        sub_258E0E818(*v138 + *(v136 + 72) * v105, *v138 + *(v136 + 72) * *&v37[16 * v66 + 32], *v138 + *(v136 + 72) * v106, v5);
        if (v6)
        {
        }

        if (v106 < v105)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_258E05680(v104);
        }

        if (a3 >= *(v104 + 2))
        {
          goto LABEL_127;
        }

        v107 = &v104[16 * a3];
        *(v107 + 4) = v105;
        *(v107 + 5) = v106;
        v142 = v104;
        result = sub_258E055F4(v66);
        v37 = v142;
        v64 = *(v142 + 16);
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v37[16 * v64 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_128;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_129;
      }

      v78 = &v37[16 * v64];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_131;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_134;
      }

      if (v82 >= v74)
      {
        v100 = &v37[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_138;
        }

        if (v69 < v103)
        {
          v66 = v64 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v35 = v138[1];
    v36 = v132;
    a4 = v126;
    if (v132 >= v35)
    {
      goto LABEL_113;
    }
  }

  v123 = v6;
  a3 = *v138;
  v108 = *(v136 + 72);
  v109 = *v138 + v108 * (v35 - 1);
  v110 = -v108;
  v111 = v38 - v35;
  v139 = v35;
  v129 = v108;
  v112 = a3 + v35 * v108;
  v132 = v61;
LABEL_97:
  v5 = v112;
  v133 = v111;
  v113 = v111;
  v137 = v109;
  while (1)
  {
    sub_258E02EF8(v5, v22);
    sub_258E02EF8(v109, v18);
    if (*(v22 + 56))
    {
      v114 = 0.0;
    }

    else
    {
      v114 = v22[6];
    }

    if (*(v18 + 56))
    {
      v115 = 0.0;
    }

    else
    {
      v115 = v18[6];
    }

    sub_258E02F5C(v18);
    result = sub_258E02F5C(v22);
    if (v114 >= v115)
    {
LABEL_96:
      v109 = v137 + v129;
      v62 = v132;
      v111 = v133 - 1;
      v112 += v129;
      if (++v139 != v132)
      {
        goto LABEL_97;
      }

      v6 = v123;
      if (v132 < v128)
      {
        goto LABEL_141;
      }

      goto LABEL_45;
    }

    if (!a3)
    {
      break;
    }

    v116 = v140;
    sub_258E09094(v5, v140);
    swift_arrayInitWithTakeFrontToBack();
    sub_258E09094(v116, v109);
    v109 += v110;
    v5 += v110;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_96;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
  return result;
}

uint64_t sub_258E0E818(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = type metadata accessor for AssetPenetrationData(0);
  v9 = MEMORY[0x28223BE20](v56, v8);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v54 = &v49 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = (&v49 - v16);
  result = MEMORY[0x28223BE20](v15, v18);
  v21 = (&v49 - v20);
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_73;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_74;
  }

  v25 = (a2 - a1) / v23;
  v58 = a4;
  v59 = a1;
  if (v25 >= v24 / v23)
  {
    v28 = v24 / v23 * v23;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v28;
    if (v28 >= 1)
    {
      v37 = -v23;
      v38 = a4 + v28;
      v52 = a4;
      v53 = a1;
      do
      {
        v50 = v36;
        v39 = a2;
        v40 = a2 + v37;
        while (1)
        {
          if (v39 <= v53)
          {
            v59 = v39;
            v36 = v50;
            goto LABEL_70;
          }

          v41 = a3;
          v51 = v36;
          v42 = v38 + v37;
          v43 = v54;
          sub_258E02EF8(v38 + v37, v54);
          v44 = v40;
          v45 = v55;
          sub_258E02EF8(v40, v55);
          v46 = *(v43 + 56) ? 0.0 : *(v43 + 48);
          v47 = *(v45 + 56) ? 0.0 : *(v45 + 48);
          v48 = v41 + v37;
          sub_258E02F5C(v45);
          sub_258E02F5C(v43);
          if (v46 < v47)
          {
            break;
          }

          v36 = v38 + v37;
          a3 = v41 + v37;
          if (v41 < v38 || v48 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v38 + v37;
            v40 = v44;
          }

          else
          {
            v40 = v44;
            if (v41 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
              v36 = v38 + v37;
            }
          }

          v38 = v36;
          if (v42 <= v52)
          {
            v59 = v39;
            goto LABEL_70;
          }
        }

        a3 = v41 + v37;
        if (v41 < v39 || v48 >= v39)
        {
          a2 = v44;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a2 = v44;
          if (v41 != v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v36 = v51;
      }

      while (v38 > v52);
    }

    v59 = a2;
LABEL_70:
    v57 = v36;
  }

  else
  {
    v26 = v23;
    v27 = v25 * v23;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v27;
    v57 = a4 + v27;
    if (v27 >= 1 && a2 < a3)
    {
      v31 = v26;
      do
      {
        sub_258E02EF8(a2, v21);
        sub_258E02EF8(a4, v17);
        if (*(v21 + 56))
        {
          v32 = 0.0;
        }

        else
        {
          v32 = v21[6];
        }

        if (*(v17 + 56))
        {
          v33 = 0.0;
        }

        else
        {
          v33 = v17[6];
        }

        sub_258E02F5C(v17);
        sub_258E02F5C(v21);
        if (v32 >= v33)
        {
          v35 = a4 + v31;
          if (a1 < a4 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58 = v35;
          a4 = v35;
        }

        else
        {
          v34 = a2 + v31;
          if (a1 < a2 || a1 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v34;
        }

        a1 += v26;
        v59 = a1;
        if (a4 >= v29)
        {
          break;
        }

        v31 = v26;
      }

      while (a2 < a3);
    }
  }

  sub_258E05694(&v59, &v58, &v57);
  return 1;
}

unint64_t sub_258E0ED2C()
{
  result = qword_27F988D00;
  if (!qword_27F988D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988D00);
  }

  return result;
}

double sub_258E0ED80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_258E0EDD0()
{
  result = qword_27F988D08;
  if (!qword_27F988D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988D08);
  }

  return result;
}

uint64_t type metadata accessor for AssetPenetrationData(uint64_t a1)
{
  result = qword_27F988D30;
  if (!qword_27F988D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_258E0EE70()
{
  result = qword_27F988D20;
  if (!qword_27F988D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988D20);
  }

  return result;
}

uint64_t sub_258E0EEC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_258F09A70();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258E0EF30(uint64_t a1)
{
  sub_258E0F074(319, &qword_27F988D40, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_258E0F074(319, &qword_27F988D48, &type metadata for AssetPenetrationPayload);
    if (v2 <= 0x3F)
    {
      sub_258E0F074(319, &qword_27F988D50, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        sub_258E0F074(319, &qword_27F988D58, MEMORY[0x277D84D38]);
        if (v4 <= 0x3F)
        {
          sub_258F09A70();
          if (v5 <= 0x3F)
          {
            sub_258E0F0C0(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_258E0F074(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_258F0A920();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258E0F0C0(uint64_t a1)
{
  if (!qword_27F988D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988D68, &qword_258F0D4A8);
    v1 = sub_258F0A920();
    if (!v2)
    {
      atomic_store(v1, &qword_27F988D60);
    }
  }
}

uint64_t getEnumTagSinglePayload for AssetPenetrationData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetPenetrationData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258E0F2DC()
{
  result = qword_27F988D80;
  if (!qword_27F988D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988D80);
  }

  return result;
}

unint64_t sub_258E0F334()
{
  result = qword_27F988D88;
  if (!qword_27F988D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988D88);
  }

  return result;
}

unint64_t sub_258E0F38C()
{
  result = qword_27F988D90;
  if (!qword_27F988D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988D90);
  }

  return result;
}

unint64_t sub_258E0F3E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_258F0ABE0();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

uint64_t objectdestroyTm()
{
  v1 = sub_258F0A370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_258E0F4FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_258F0A370() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_258E0F5E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void sub_258E0F638(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1;
  v7 = [a1 availableAssetDailyStatus];
  if (!v7)
  {
    goto LABEL_65;
  }

  v60 = v5;
  v61 = v7;
  v8 = [v7 assetSetStatus];
  sub_258DEB8C8(0, &qword_27F988E30, 0x277CF16B8);
  v9 = sub_258F0A6B0();

  if (v9 >> 62)
  {
    goto LABEL_63;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_64:

    v5 = v61;
LABEL_65:

    *a2 = 0u;
    *(a2 + 1) = 0u;
    return;
  }

  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x259C9E3B0](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_69;
      }

      v10 = *(v9 + 32);
    }

    v3 = v10;

    v11 = [v3 uafAssetSets];
    sub_258DEB8C8(0, &qword_27F988E38, 0x277CF16B0);
    v9 = sub_258F0A6B0();

    v2 = v9 >> 62 ? sub_258F0AA20() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = MEMORY[0x277D84F90];
    v65 = v3;
    v59 = a2;
    if (!v2)
    {
      break;
    }

    v79 = MEMORY[0x277D84F90];
    sub_258E14BE8(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
LABEL_73:
      __break(1u);
      return;
    }

    v12 = 0;
    a2 = 0;
    v13 = v79;
    v3 = (v9 & 0xFFFFFFFFFFFFFF8);
    v4 = (v2 - 1);
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = v13;
        v15 = MEMORY[0x259C9E3B0](v12, v9);
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v14 = v13;
        v15 = *(v9 + 8 * v12 + 32);
      }

      v16 = v15;
      v75 = v15;
      sub_258E13E08(&v75, v76);

      v13 = v14;
      v79 = v14;
      v18 = v14[2];
      v17 = v14[3];
      v2 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_258E14BE8((v17 > 1), v18 + 1, 1);
        v13 = v79;
      }

      v13[2] = v2;
      v19 = &v13[9 * v18];
      *(v19 + 2) = *v76;
      v20 = *&v76[16];
      v21 = *&v76[32];
      v22 = v77;
      *(v19 + 48) = v78;
      *(v19 + 4) = v21;
      *(v19 + 5) = v22;
      *(v19 + 3) = v20;
      if (v4 == v12)
      {
        v58 = v13;

        v3 = v65;
        v4 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }

      ++v12;
    }

    while (!__OFADD__(v12, 1));
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    if (!sub_258F0AA20())
    {
      goto LABEL_64;
    }
  }

  a2 = 0;
  v58 = MEMORY[0x277D84F90];
LABEL_24:
  v23 = [v3 uafAssetSubscriptions];
  sub_258DEB8C8(0, &qword_27F988E40, 0x277CF16D0);
  v2 = sub_258F0A6B0();

  if (!(v2 >> 62))
  {
    v24 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_70;
    }

    goto LABEL_26;
  }

LABEL_69:
  v24 = sub_258F0AA20();
  if (v24)
  {
LABEL_26:
    v79 = v4;
    sub_258E14BC8(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      goto LABEL_73;
    }

    v25 = 0;
    v66 = v24;
    v67 = v2 & 0xC000000000000001;
    v26 = v79;
    v62 = v2 + 32;
    v63 = v2 & 0xFFFFFFFFFFFFFF8;
    v64 = v2;
    while (1)
    {
      v9 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_59;
      }

      if (v67)
      {
        v27 = MEMORY[0x259C9E3B0]();
      }

      else
      {
        if (v25 >= *(v63 + 16))
        {
          goto LABEL_62;
        }

        v27 = *(v62 + 8 * v25);
      }

      v28 = v27;
      v29 = [v27 subscriberName];
      if (v29)
      {
        v30 = v29;
        v31 = sub_258F0A4F0();
        v33 = v32;
      }

      else
      {
        v33 = 0xE700000000000000;
        v31 = 0x6E776F6E6B6E75;
      }

      v69 = v28;
      v34 = [v28 subscriptions];
      sub_258DEB8C8(0, &qword_27F988E48, 0x277CF16C0);
      v35 = sub_258F0A6B0();

      if (v35 >> 62)
      {
        v36 = sub_258F0AA20();
      }

      else
      {
        v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v71 = v33;
      v72 = v9;
      v70 = v31;
      if (v36)
      {
        v73 = v35;
        v75 = v4;
        v37 = v36;
        sub_258E14C08(0, v36 & ~(v36 >> 63), 0);
        if (v37 < 0)
        {
          goto LABEL_60;
        }

        v68 = v26;
        v38 = 0;
        v39 = v75;
        v40 = v73;
        v4 = (v73 & 0xC000000000000001);
        while (1)
        {
          v2 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v4)
          {
            v41 = MEMORY[0x259C9E3B0](v38);
          }

          else
          {
            if (v38 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v41 = *(v40 + 8 * v38 + 32);
          }

          v42 = v41;
          v74[0] = v41;
          sub_258E14538(v74, v76);

          v9 = *v76;
          v43 = *&v76[8];
          v44 = *&v76[24];
          v75 = v39;
          v46 = v39[2];
          v45 = v39[3];
          v3 = (v46 + 1);
          if (v46 >= v45 >> 1)
          {
            v56 = *&v76[24];
            v57 = *&v76[8];
            sub_258E14C08((v45 > 1), v46 + 1, 1);
            v44 = v56;
            v43 = v57;
            v39 = v75;
          }

          v39[2] = v3;
          v47 = &v39[5 * v46];
          v47[4] = v9;
          *(v47 + 5) = v43;
          *(v47 + 7) = v44;
          ++v38;
          v40 = v73;
          if (v2 == v37)
          {

            v2 = v64;
            v3 = v65;
            v4 = MEMORY[0x277D84F90];
            v26 = v68;
            goto LABEL_51;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v39 = v4;
LABEL_51:
      v79 = v26;
      v49 = v26[2];
      v48 = v26[3];
      if (v49 >= v48 >> 1)
      {
        sub_258E14BC8((v48 > 1), v49 + 1, 1);
        v26 = v79;
      }

      v26[2] = v49 + 1;
      v50 = &v26[3 * v49];
      v50[4] = v70;
      v50[5] = v71;
      v50[6] = v39;
      v25 = v72;
      if (v72 == v66)
      {

        goto LABEL_71;
      }
    }
  }

LABEL_70:

  v26 = MEMORY[0x277D84F90];
LABEL_71:
  [v61 statusReason];
  v51 = BMAvailableAssetStatusReasonAsString();
  v52 = sub_258F0A4F0();
  v54 = v53;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988E50, &qword_258F0DB58);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_258F0B820;
  *(v55 + 32) = v58;
  *(v55 + 40) = v26;

  *v59 = v52;
  v59[1] = v54;
  v59[2] = v55;
  v59[3] = 0;
}

uint64_t sub_258E0FD3C()
{
  sub_258F0AE40();
  MEMORY[0x259C9E710](0);
  return sub_258F0AE90();
}

uint64_t sub_258E0FDA8(uint64_t a1)
{
  sub_258F0AE40();
  MEMORY[0x259C9E710](0);
  return sub_258F0AE90();
}

uint64_t sub_258E0FE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000258F19CE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_258F0AD80();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_258E0FEA4(uint64_t a1)
{
  v2 = sub_258E100B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E0FEE0(uint64_t a1)
{
  v2 = sub_258E100B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetPenetrationPayload.encode(to:)(void *a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DC0, &qword_258F0D750);
  v3 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v4);
  v6 = &v12 - v5;
  v7 = v1[1];
  v12 = *v1;
  v8 = v1[2];
  v9 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E100B4();

  sub_258F0AEE0();
  v14 = v12;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  sub_258E10108();
  v10 = v13;
  sub_258F0AD20();

  return (*(v3 + 8))(v6, v10);
}

unint64_t sub_258E100B4()
{
  result = qword_27F988DC8;
  if (!qword_27F988DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988DC8);
  }

  return result;
}

unint64_t sub_258E10108()
{
  result = qword_27F988DD0;
  if (!qword_27F988DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988DD0);
  }

  return result;
}

uint64_t AssetPenetrationPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DD8, &qword_258F0D758);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E100B4();
  sub_258F0AED0();
  if (!v2)
  {
    sub_258E102DC();
    sub_258F0AC70();
    (*(v6 + 8))(v9, v5);
    v10 = v15;
    v11 = v14;
    *a2 = v13;
    *(a2 + 8) = v11;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_258E102DC()
{
  result = qword_27F988DE0;
  if (!qword_27F988DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988DE0);
  }

  return result;
}

uint64_t sub_258E10360(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a5;
  v16 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988EB8, &qword_258F0DBA8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E15A3C();
  sub_258F0AEE0();
  LOBYTE(v18) = 0;
  sub_258F0AD00();
  if (!v5)
  {
    v12 = v15;
    v18 = v16;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988EC8, &qword_258F0DBB0);
    sub_258E15A90();
    sub_258F0AD20();
    v18 = v12;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988EE0, &qword_258F0DBB8);
    sub_258E15B68();
    sub_258F0ACD0();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_258E10554()
{
  v1 = 0x7465537465737361;
  if (*v0 != 1)
  {
    v1 = 0x63617073656D616ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6552737574617473;
  }
}

uint64_t sub_258E105D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_258E161B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_258E105F8(uint64_t a1)
{
  v2 = sub_258E15A3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E10634(uint64_t a1)
{
  v2 = sub_258E15A3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258E10670@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_258E162E0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_258E106C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988F98, &qword_258F0E248);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E16F38();
  sub_258F0AEE0();
  v14[0] = 0;
  sub_258F0AD00();
  if (!v2)
  {
    v10 = *(v3 + 32);
    *v14 = *(v3 + 16);
    *&v14[16] = v10;
    v15 = *(v3 + 48);
    v13 = 1;
    sub_258E16F8C();
    sub_258F0AD20();
    *v14 = *(v3 + 56);
    *&v14[13] = *(v3 + 69);
    v13 = 2;
    sub_258E16FE0();
    sub_258F0AD20();
    *v14 = *(v3 + 80);
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988FB8, &qword_258F0E250);
    sub_258E17034();
    sub_258F0ACD0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_258E108E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9892B0, &qword_258F0EE40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1BD3C();
  sub_258F0AEE0();
  LOBYTE(v12[0]) = 0;
  sub_258F0AD00();
  if (!v2)
  {
    v12[0] = *(v3 + 16);
    *(v12 + 13) = *(v3 + 29);
    v11[15] = 1;
    sub_258E16FE0();
    sub_258F0AD20();
    LOBYTE(v12[0]) = 2;
    sub_258F0AD00();
    LOBYTE(v12[0]) = 3;
    sub_258F0AD00();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_258E10AB4()
{
  v1 = 0x6D614E6C61697274;
  v2 = 0xD00000000000001DLL;
  if (*v0 != 2)
  {
    v2 = 0x737465737361;
  }

  if (*v0)
  {
    v1 = 0x74756F6C6C6F72;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_258E10B3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_258E1710C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_258E10B64(uint64_t a1)
{
  v2 = sub_258E16F38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E10BA0(uint64_t a1)
{
  v2 = sub_258E16F38();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_258E10BDC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_258E1727C(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_258E10C50()
{
  v1 = 0x636F4C7465737361;
  v2 = 0x6D614E7465737361;
  if (*v0 != 2)
  {
    v2 = 0x6D614E6C61697274;
  }

  if (*v0)
  {
    v1 = 0x7265567465737361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_258E10CEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_258E17708(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_258E10D14(uint64_t a1)
{
  v2 = sub_258E1BD3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E10D50(uint64_t a1)
{
  v2 = sub_258E1BD3C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_258E10D8C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_258E17884(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_258E10DF8(void *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9892A0, &qword_258F0EE38);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1BCE8();
  sub_258F0AEE0();
  v15 = 0;
  sub_258F0ACE0();
  if (v4)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v14 = 1;
  sub_258F0ACE0();
  v13 = 2;
  sub_258F0ACE0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_258E10FC4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989290, &qword_258F0EE30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1BC94();
  sub_258F0AEE0();
  v9[15] = 0;
  sub_258F0AD30();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v9[14] = 1;
  sub_258F0AD00();
  v9[13] = 2;
  sub_258F0AD00();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_258E1117C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_258E17C1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_258E111A4(uint64_t a1)
{
  v2 = sub_258E1BCE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E111E0(uint64_t a1)
{
  v2 = sub_258E1BCE8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_258E1121C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_258E17D28(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = BYTE4(result) & 1;
    *(a1 + 8) = v5;
    *(a1 + 12) = BYTE4(v5) & 1;
    *(a1 + 16) = v6;
    *(a1 + 20) = BYTE4(v6) & 1;
  }

  return result;
}

uint64_t sub_258E112C4()
{
  v1 = 0x4974756F6C6C6F72;
  if (*v0 != 1)
  {
    v1 = 0x6150726F74636166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D796F6C706564;
  }
}

uint64_t sub_258E11328@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_258E17F24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_258E11350(uint64_t a1)
{
  v2 = sub_258E1BC94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E1138C(uint64_t a1)
{
  v2 = sub_258E1BC94();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_258E113C8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_258E18054(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_258E11428(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988F58, &qword_258F0E230);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E16D34();
  sub_258F0AEE0();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988F68, &qword_258F0E238);
  sub_258E16D88();
  sub_258F0AD20();
  if (!v3)
  {
    v15 = a3;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988F80, &qword_258F0E240);
    sub_258E16E60();
    sub_258F0ACD0();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_258E115E8()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x7465737341666175;
  }
}

uint64_t sub_258E11630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7465737341666175 && a2 == 0xEC00000073746553;
  if (v6 || (sub_258F0AD80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000258F19D20 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_258F0AD80();

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

uint64_t sub_258E11718(uint64_t a1)
{
  v2 = sub_258E16D34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E11754(uint64_t a1)
{
  v2 = sub_258E16D34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258E11790@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_258E18268(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_258E117D8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9890A0, &qword_258F0E2A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1A2DC();
  sub_258F0AEE0();
  LOBYTE(v12) = 0;
  sub_258F0ACA0();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_258F0AD00();
    v12 = *(v3 + 32);
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989070, &qword_258F0E290);
    sub_258E1A548();
    sub_258F0ACD0();
    LOBYTE(v12) = 3;
    sub_258F0ACA0();
    v12 = *(v3 + 56);
    HIBYTE(v11) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989088, &qword_258F0E298);
    sub_258E1A620();
    sub_258F0ACD0();
    LOBYTE(v12) = 5;
    sub_258F0ACB0();
    LOBYTE(v12) = 6;
    sub_258F0ACB0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_258E11A80()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x737465737361;
    if (v1 == 1)
    {
      v5 = 0x7465537465737361;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x7465537465737361;
    }
  }

  else
  {
    v2 = 0xD000000000000022;
    if (v1 == 5)
    {
      v2 = 0xD00000000000001CLL;
    }

    v3 = 0xD000000000000025;
    if (v1 == 3)
    {
      v3 = 0x65636E6569647561;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_258E11B54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_258E18810(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_258E11B88(uint64_t a1)
{
  v2 = sub_258E1A2DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E11BC4(uint64_t a1)
{
  v2 = sub_258E1A2DC();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_258E11C00@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_258E18A60(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_258E11C6C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x756F537465737361;
    v6 = 0x6570537465737361;
    if (a1 != 2)
    {
      v6 = 0x6D614E7465737361;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD00000000000001ALL;
    v2 = 0x7461507465737361;
    if (a1 != 7)
    {
      v2 = 0x636F4C7465737361;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000018;
    if (a1 == 4)
    {
      v3 = 0x7265567465737361;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_258E11DC0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989038, &qword_258F0E270);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E196C4();
  sub_258F0AEE0();
  LOBYTE(v13) = 0;
  sub_258F0AD00();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_258F0AD10();
    LOBYTE(v13) = 2;
    sub_258F0ACA0();
    LOBYTE(v13) = 3;
    sub_258F0AD00();
    LOBYTE(v13) = 4;
    sub_258F0ACA0();
    LOBYTE(v13) = 5;
    sub_258F0AD40();
    LOBYTE(v13) = 6;
    sub_258F0AD40();
    LOBYTE(v13) = 7;
    sub_258F0ACA0();
    v10 = *(v3 + 120);
    v13 = *(v3 + 104);
    v14 = v10;
    v12[15] = 8;
    sub_258E197D4();
    sub_258F0AD20();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_258E120B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9890F0, &qword_258F0E2B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1A6F8();
  sub_258F0AEE0();
  v14 = 0;
  sub_258F0AD00();
  if (!v4)
  {
    v12[1] = v12[0];
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9890D8, &qword_258F0E2B0);
    sub_258E1A824();
    sub_258F0AD20();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_258E12260@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_258E18EC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_258E12294(uint64_t a1)
{
  v2 = sub_258E196C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E122D0(uint64_t a1)
{
  v2 = sub_258E196C4();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_258E1230C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_258E191CC(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9;
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_258E12390()
{
  if (*v0)
  {
    return 0x437972746E756F63;
  }

  else
  {
    return 0x65676175676E616CLL;
  }
}

uint64_t sub_258E123DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43;
  if (v6 || (sub_258F0AD80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_258F0AD80();

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

uint64_t sub_258E124C0(uint64_t a1)
{
  v2 = sub_258E1BDF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E124FC(uint64_t a1)
{
  v2 = sub_258E1BDF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258E125D4()
{
  if (*v0)
  {
    return 0x7069726373627573;
  }

  else
  {
    return 0x6269726373627573;
  }
}

uint64_t sub_258E12628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6269726373627573 && a2 == 0xEE00656D614E7265;
  if (v6 || (sub_258F0AD80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7069726373627573 && a2 == 0xED0000736E6F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_258F0AD80();

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

uint64_t sub_258E12714(uint64_t a1)
{
  v2 = sub_258E1A6F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E12750(uint64_t a1)
{
  v2 = sub_258E1A6F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258E1278C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_258E19828(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_258E127DC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989188, &qword_258F0E300);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1A9A4();
  sub_258F0AEE0();
  LOBYTE(v12) = 0;
  sub_258F0AD00();
  if (!v2)
  {
    v12 = v3[2];
    HIBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989148, &qword_258F0F400);
    sub_258E1ABA8(&qword_27F989190, MEMORY[0x277D84CC8], MEMORY[0x277D83948]);
    sub_258F0AD20();
    v12 = v3[3];
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989158, &qword_258F0E2F0);
    sub_258E1AC14();
    sub_258F0ACD0();
    v12 = v3[4];
    HIBYTE(v11) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989170, &qword_258F0E2F8);
    sub_258E1ACEC();
    sub_258F0ACD0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_258E12AD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), uint64_t a9)
{
  v21[2] = a3;
  v21[0] = a4;
  v21[1] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v21 - v14;
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (a8)(v16, v17, v18);
  sub_258F0AEE0();
  v23 = 0;
  v19 = v21[3];
  sub_258F0AD00();
  if (!v19)
  {
    v22 = 1;
    sub_258F0AD00();
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_258E12C68(void *a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989058, &qword_258F0E280);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1A288();
  sub_258F0AEE0();
  v10[15] = 0;
  sub_258F0AD30();
  if (!v2)
  {
    v10[14] = 1;
    sub_258F0AD30();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_258E12DE8()
{
  v1 = 0x7465537465737361;
  v2 = 0x696C416567617375;
  if (*v0 == 2)
  {
    v2 = 0x7465537465737361;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_258E12E78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_258E19A2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_258E12EA0(uint64_t a1)
{
  v2 = sub_258E1A9A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E12EDC(uint64_t a1)
{
  v2 = sub_258E1A9A4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_258E12F18@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_258E19BB0(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_258E12F78()
{
  if (*v0)
  {
    return 0x6C61566567617375;
  }

  else
  {
    return 0x6D614E6567617375;
  }
}

uint64_t sub_258E12FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E6567617375 && a2 == 0xE900000000000065;
  if (v6 || (sub_258F0AD80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C61566567617375 && a2 == 0xEA00000000006575)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_258F0AD80();

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

uint64_t sub_258E130A8(uint64_t a1)
{
  v2 = sub_258E1A8FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E130E4(uint64_t a1)
{
  v2 = sub_258E1A8FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258E13164@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = sub_258E19EF0(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
    a6[3] = v11;
  }

  return result;
}

uint64_t sub_258E131FC()
{
  if (*v0)
  {
    return 0x6D614E7361696C61;
  }

  else
  {
    return 0x6C61567361696C61;
  }
}

uint64_t sub_258E13240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61567361696C61 && a2 == 0xEA00000000006575;
  if (v6 || (sub_258F0AD80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D614E7361696C61 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_258F0AD80();

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

uint64_t sub_258E1332C(uint64_t a1)
{
  v2 = sub_258E1A950();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E13368(uint64_t a1)
{
  v2 = sub_258E1A950();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258E13440()
{
  if (*v0)
  {
    return 0x63634F73656D6974;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_258E1348C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001CLL && 0x8000000258F19DC0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x63634F73656D6974 && a2 == 0xED00006465727275)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_258F0AD80();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_258E1357C(uint64_t a1)
{
  v2 = sub_258E1A288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E135B8(uint64_t a1)
{
  v2 = sub_258E1A288();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_258E135F4@<X0>(unint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_258E1A0E0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_258E1363C()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x656D695478696E75;
  }
}

uint64_t sub_258E13688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D695478696E75 && a2 == 0xED0000706D617473;
  if (v6 || (sub_258F0AD80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000258F19D00 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_258F0AD80();

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

uint64_t sub_258E13774(uint64_t a1)
{
  v2 = sub_258E13978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E137B0(uint64_t a1)
{
  v2 = sub_258E13978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GMAssetAvailability.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DE8, &qword_258F0D760);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v10 - v7;
  v10[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E13978();
  sub_258F0AEE0();
  v12 = 0;
  sub_258F0AD40();
  if (!v2)
  {
    v11 = 1;
    sub_258F0AD40();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_258E13978()
{
  result = qword_27F988DF0;
  if (!qword_27F988DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988DF0);
  }

  return result;
}

uint64_t GMAssetAvailability.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DF8, &qword_258F0D768);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E13978();
  sub_258F0AED0();
  if (!v2)
  {
    v15 = 0;
    v10 = sub_258F0AC90();
    v14 = 1;
    v11 = sub_258F0AC90();
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_258E13BFC()
{
  result = qword_27F988E00;
  if (!qword_27F988E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988E00);
  }

  return result;
}

unint64_t sub_258E13C54()
{
  result = qword_27F988E08;
  if (!qword_27F988E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988E08);
  }

  return result;
}

unint64_t sub_258E13CAC()
{
  result = qword_27F988E10;
  if (!qword_27F988E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988E10);
  }

  return result;
}

unint64_t sub_258E13D04()
{
  result = qword_27F988E18;
  if (!qword_27F988E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988E18);
  }

  return result;
}

unint64_t sub_258E13D5C()
{
  result = qword_27F988E20;
  if (!qword_27F988E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988E20);
  }

  return result;
}

unint64_t sub_258E13DB4()
{
  result = qword_27F988E28;
  if (!qword_27F988E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988E28);
  }

  return result;
}

char *sub_258E13E08@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 assetSetId];
  if (v4)
  {
    v5 = v4;
    v6 = sub_258F0A4F0();
    v52 = v7;
    v53 = v6;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v8 = [v3 assetSetName];
  if (v8)
  {
    v9 = v8;
    v50 = sub_258F0A4F0();
    v51 = v10;
  }

  else
  {
    v50 = 0x676E697373696DLL;
    v51 = 0xE700000000000000;
  }

  v11 = [v3 assets];
  sub_258DEB8C8(0, &qword_27F988E98, 0x277CF16A8);
  v12 = sub_258F0A6B0();

  if (v12 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_258F0AA20())
  {
    v14 = MEMORY[0x277D84F90];
    v54 = a2;
    v55 = v3;
    if (!i)
    {
      break;
    }

    v61 = MEMORY[0x277D84F90];
    result = sub_258E14C48(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      goto LABEL_44;
    }

    v16 = 0;
    a2 = v61;
    v17 = i - 1;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x259C9E3B0](v16, v12);
      }

      else
      {
        if (v16 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v18 = *(v12 + 8 * v16 + 32);
      }

      v19 = v18;
      v58 = v18;
      sub_258E1428C(&v58, v59);

      v61 = a2;
      v21 = *(a2 + 16);
      v20 = *(a2 + 24);
      v3 = (v21 + 1);
      if (v21 >= v20 >> 1)
      {
        sub_258E14C48((v20 > 1), v21 + 1, 1);
        a2 = v61;
      }

      *(a2 + 16) = v3;
      v22 = a2 + 136 * v21;
      *(v22 + 32) = v59[0];
      v23 = v59[1];
      v24 = v59[2];
      v25 = v59[4];
      *(v22 + 80) = v59[3];
      *(v22 + 96) = v25;
      *(v22 + 48) = v23;
      *(v22 + 64) = v24;
      v26 = v59[5];
      v27 = v59[6];
      v28 = v59[7];
      *(v22 + 160) = v60;
      *(v22 + 128) = v27;
      *(v22 + 144) = v28;
      *(v22 + 112) = v26;
      if (v17 == v16)
      {

        v3 = v55;
        v14 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }

      ++v16;
    }

    while (!__OFADD__(v16, 1));
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  a2 = MEMORY[0x277D84F90];
LABEL_24:
  v29 = [v3 audienceId];
  if (v29)
  {
    v30 = v29;
    v31 = sub_258F0A4F0();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = [v3 mobileAssetDownloadErrorCodeFrequency];
  sub_258DEB8C8(0, &qword_27F988EA0, 0x277CF16E0);
  v35 = sub_258F0A6B0();

  if (!(v35 >> 62))
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_29;
    }

LABEL_41:

LABEL_42:
    v47 = [v3 fromPreSoftwareUpdateStaging];
    result = [v3 expensiveCellularDownloadRequested];
    *v54 = v53;
    *(v54 + 8) = v52;
    *(v54 + 16) = v50;
    *(v54 + 24) = v51;
    *(v54 + 32) = a2;
    *(v54 + 40) = v31;
    *(v54 + 48) = v33;
    *(v54 + 56) = v14;
    *(v54 + 64) = v47;
    *(v54 + 65) = result;
    return result;
  }

  v36 = sub_258F0AA20();
  if (!v36)
  {
    goto LABEL_41;
  }

LABEL_29:
  *&v59[0] = v14;
  result = sub_258E14C28(0, v36 & ~(v36 >> 63), 0);
  if ((v36 & 0x8000000000000000) == 0)
  {
    v48 = v33;
    v49 = v31;
    v37 = 0;
    v14 = *&v59[0];
    v38 = v35;
    v56 = v35 & 0xC000000000000001;
    v57 = v35;
    v39 = v36;
    do
    {
      if (v56)
      {
        v40 = MEMORY[0x259C9E3B0](v37, v38);
      }

      else
      {
        v40 = *(v38 + 8 * v37 + 32);
      }

      v41 = v40;
      v42 = [v40 mobileAssetDownloadErrorCode];
      v43 = [v41 timesOccurred];

      *&v59[0] = v14;
      v45 = *(v14 + 16);
      v44 = *(v14 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_258E14C28((v44 > 1), v45 + 1, 1);
        v14 = *&v59[0];
      }

      ++v37;
      *(v14 + 16) = v45 + 1;
      v46 = v14 + 8 * v45;
      *(v46 + 32) = v42;
      *(v46 + 36) = v43;
      v38 = v57;
    }

    while (v39 != v37);

    v3 = v55;
    v33 = v48;
    v31 = v49;
    goto LABEL_42;
  }

LABEL_44:
  __break(1u);
  return result;
}

void sub_258E1428C(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  [*a1 assetSource];
  v4 = BMUAFAssetUAFAssetSourceAsString();
  v5 = sub_258F0A4F0();
  v44 = v6;
  v45 = v5;

  v43 = [v3 isAssetPathValid];
  v7 = [v3 assetSpecifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_258F0A4F0();
    v41 = v10;
    v42 = v9;
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  v11 = [v3 assetName];
  if (v11)
  {
    v12 = v11;
    v39 = sub_258F0A4F0();
    v40 = v13;
  }

  else
  {
    v39 = 0x676E697373696DLL;
    v40 = 0xE700000000000000;
  }

  v14 = [v3 assetVersion];
  if (v14)
  {
    v15 = v14;
    v16 = sub_258F0A4F0();
    v37 = v17;
    v38 = v16;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v36 = [v3 assetDownloadSizeInBytes];
  v35 = [v3 assetUnarchivedSizeInBytes];
  v18 = [v3 assetPath];
  if (v18)
  {
    v19 = v18;
    v20 = sub_258F0A4F0();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = 0x4E574F4E4B4E55;
  v24 = [v3 assetLocale];
  if (v24 && (v25 = v24, v26 = [v24 languageCode], v25, v26))
  {
    v27 = sub_258F0A4F0();
    v29 = v28;
  }

  else
  {
    v29 = 0xE700000000000000;
    v27 = 0x4E574F4E4B4E55;
  }

  v30 = [v3 assetLocale];
  if (v30 && (v31 = v30, v32 = [v30 countryCode], v31, v32))
  {
    v23 = sub_258F0A4F0();
    v34 = v33;
  }

  else
  {
    v34 = 0xE700000000000000;
  }

  *a2 = v45;
  *(a2 + 8) = v44;
  *(a2 + 16) = v43;
  *(a2 + 24) = v42;
  *(a2 + 32) = v41;
  *(a2 + 40) = v39;
  *(a2 + 48) = v40;
  *(a2 + 56) = v38;
  *(a2 + 64) = v37;
  *(a2 + 72) = v36;
  *(a2 + 80) = v35;
  *(a2 + 88) = v20;
  *(a2 + 96) = v22;
  *(a2 + 104) = v27;
  *(a2 + 112) = v29;
  *(a2 + 120) = v23;
  *(a2 + 128) = v34;
}

uint64_t sub_258E14538@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = [*a1 subscriptionName];
  if (v3)
  {
    v4 = v3;
    v60 = sub_258F0A4F0();
    v61 = v5;
  }

  else
  {
    v60 = 0x6E776F6E6B6E75;
    v61 = 0xE700000000000000;
  }

  v63 = v2;
  v6 = [v2 assetSetIndices];
  sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
  v7 = sub_258F0A6B0();

  if (v7 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_258F0AA20())
  {
    if (i)
    {
      v74 = MEMORY[0x277D84F90];
      result = sub_258E14CD8(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        return result;
      }

      v10 = 0;
      v11 = v74;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x259C9E3B0](v10, v7);
        }

        else
        {
          v12 = *(v7 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = sub_258F0AEA0();

        v16 = *(v74 + 16);
        v15 = *(v74 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_258E14CD8((v15 > 1), v16 + 1, 1);
        }

        ++v10;
        *(v74 + 16) = v16 + 1;
        *(v74 + 4 * v16 + 32) = v14;
      }

      while (i != v10);
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }

    v17 = v63;
    v18 = [v63 assetSetUsages];
    sub_258DEB8C8(0, &qword_27F988E60, 0x277CF16C8);
    v19 = sub_258F0A6B0();

    v71 = v11;
    if (v19 >> 62)
    {
      break;
    }

    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_40;
    }

LABEL_19:
    v75 = MEMORY[0x277D84F90];
    result = sub_258E14CA0(0, v20 & ~(v20 >> 63), 0);
    if (v20 < 0)
    {
      goto LABEL_66;
    }

    v21 = 0;
    v22 = v75;
    v72 = v19 & 0xC000000000000001;
    v65 = v19 & 0xFFFFFFFFFFFFFF8;
    v67 = v20;
    v69 = v19;
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v72)
      {
        v24 = v22;
        v25 = MEMORY[0x259C9E3B0](v21, v19);
      }

      else
      {
        if (v21 >= *(v65 + 16))
        {
          goto LABEL_37;
        }

        v24 = v22;
        v25 = *(v19 + 8 * v21 + 32);
      }

      v26 = v25;
      v27 = [v25 usageName];
      if (v27)
      {
        v28 = v27;
        v29 = sub_258F0A4F0();
        v31 = v30;
      }

      else
      {
        v31 = 0xE700000000000000;
        v29 = 0x6E776F6E6B6E75;
      }

      v32 = [v26 usageValue];
      if (v32)
      {
        v33 = v32;
        v34 = sub_258F0A4F0();
        v7 = v35;
      }

      else
      {

        v7 = 0xE700000000000000;
        v34 = 0x6E776F6E6B6E75;
      }

      v22 = v24;
      v76 = v24;
      v36 = *(v24 + 16);
      v37 = *(v22 + 24);
      if (v36 >= v37 >> 1)
      {
        sub_258E14CA0((v37 > 1), v36 + 1, 1);
        v22 = v76;
      }

      *(v22 + 16) = v36 + 1;
      v38 = (v22 + 32 * v36);
      v38[4] = v29;
      v38[5] = v31;
      v38[6] = v34;
      v38[7] = v7;
      ++v21;
      v19 = v69;
      if (v23 == v67)
      {
        v59 = v22;

        v11 = v71;
        v17 = v63;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v20 = sub_258F0AA20();
  if (v20)
  {
    goto LABEL_19;
  }

LABEL_40:

  v59 = MEMORY[0x277D84F90];
LABEL_41:
  v39 = [v17 usageAliases];
  sub_258DEB8C8(0, &qword_27F988E68, 0x277CF16D8);
  v40 = sub_258F0A6B0();

  if (v40 >> 62)
  {
    goto LABEL_62;
  }

  for (j = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_258F0AA20())
  {
    v77 = MEMORY[0x277D84F90];
    result = sub_258E14C68(0, j & ~(j >> 63), 0);
    if (j < 0)
    {
      goto LABEL_67;
    }

    v42 = 0;
    v43 = v77;
    v68 = v40;
    v70 = v40 & 0xC000000000000001;
    v64 = (v40 & 0xFFFFFFFFFFFFFF8);
    v66 = j;
    while (1)
    {
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v70)
      {
        v45 = MEMORY[0x259C9E3B0](v42, v40);
      }

      else
      {
        if (v42 >= v64[2])
        {
          goto LABEL_61;
        }

        v45 = *(v40 + 8 * v42 + 32);
      }

      v46 = v45;
      v47 = [v45 aliasValue];
      if (v47)
      {
        v48 = v47;
        v49 = sub_258F0A4F0();
        v73 = v50;
      }

      else
      {
        v73 = 0xE700000000000000;
        v49 = 0x6E776F6E6B6E75;
      }

      v51 = [v46 aliasName];
      if (v51)
      {
        v52 = v51;
        v53 = sub_258F0A4F0();
        v55 = v54;
      }

      else
      {

        v55 = 0xE700000000000000;
        v53 = 0x6E776F6E6B6E75;
      }

      v57 = *(v77 + 16);
      v56 = *(v77 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_258E14C68((v56 > 1), v57 + 1, 1);
      }

      *(v77 + 16) = v57 + 1;
      v58 = (v77 + 32 * v57);
      v11 = v71;
      v58[4] = v49;
      v58[5] = v73;
      v58[6] = v53;
      v58[7] = v55;
      ++v42;
      v40 = v68;
      if (v44 == v66)
      {

        goto LABEL_64;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_64:
  *a2 = v60;
  a2[1] = v61;
  a2[2] = v11;
  a2[3] = v59;
  a2[4] = v43;
  return result;
}

char *sub_258E14B68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258E14DFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258E14B88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258E14F24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258E14BA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258E15028(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258E14BC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258E152A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258E14BE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258E153C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258E14C08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258E154E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258E14C28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258E15608(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258E14C48(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258E1570C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258E14C68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258E1582C(a1, a2, a3, *v3, &qword_27F988E70, &qword_258F0DB68, &type metadata for UsageAlias);
  *v3 = result;
  return result;
}

char *sub_258E14CA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258E1582C(a1, a2, a3, *v3, &qword_27F988E78, &qword_258F0DB70, &type metadata for AssetSetUsage);
  *v3 = result;
  return result;
}

char *sub_258E14CD8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258E15938(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_258E14CF8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258E15EA4(a1, a2, a3, *v3, &qword_27F988F20, &qword_258F0DBD0, &qword_27F988F28, &qword_258F0DBD8);
  *v3 = result;
  return result;
}

void *sub_258E14D38(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258E15EA4(a1, a2, a3, *v3, &qword_27F988F30, &unk_258F0DBE0, &qword_27F988F38, &unk_258F0F3F0);
  *v3 = result;
  return result;
}

char *sub_258E14D78(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258E15C40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258E14D98(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258E15D60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_258E14DB8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258E15FD8(a1, a2, a3, *v3, &qword_27F9888C8, &unk_258F0C070, type metadata accessor for SpeakerIdSamplingData);
  *v3 = result;
  return result;
}

char *sub_258E14DFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988950, &qword_258F0DC10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 792);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[792 * v8])
    {
      memmove(v12, v13, 792 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258E14F24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988930, &unk_258F0DBF0);
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

char *sub_258E15028(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888D0, &qword_258F0DBA0);
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

void *sub_258E1515C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988880, &unk_258F0C030);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988888, &unk_258F0DC00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258E152A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988E88, &qword_258F0DB80);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258E153C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988E90, &qword_258F0DB88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258E154E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988E58, &qword_258F0DB60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258E15608(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988EA8, &qword_258F0DB90);
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

char *sub_258E1570C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988EB0, &qword_258F0DB98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_258E1582C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_258E15938(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988E80, &qword_258F0DB78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

unint64_t sub_258E15A3C()
{
  result = qword_27F988EC0;
  if (!qword_27F988EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988EC0);
  }

  return result;
}

unint64_t sub_258E15A90()
{
  result = qword_27F988ED0;
  if (!qword_27F988ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988EC8, &qword_258F0DBB0);
    sub_258E15B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988ED0);
  }

  return result;
}

unint64_t sub_258E15B14()
{
  result = qword_27F988ED8;
  if (!qword_27F988ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988ED8);
  }

  return result;
}

unint64_t sub_258E15B68()
{
  result = qword_27F988EE8;
  if (!qword_27F988EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988EE0, &qword_258F0DBB8);
    sub_258E15BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988EE8);
  }

  return result;
}

unint64_t sub_258E15BEC()
{
  result = qword_27F988EF0;
  if (!qword_27F988EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988EF0);
  }

  return result;
}

char *sub_258E15C40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988918, &qword_258F0C0C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}