char *Array<A>.collectOversizeColumnNames(_:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = a3 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1DB164AE0(v5, v23);
    v8 = v24;
    v9 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v10 = Expressible.columnName.getter(v8, v9);
    v12 = v11;
    v13 = v27;
    v14 = __swift_project_boxed_opaque_existential_1(v26, v27);
    v22[3] = v13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v14, v13);
    v16 = a1(v10, v12, v22);
    v18 = v17;

    sub_1DB1445E0(v22, &qword_1ECC26F30, &unk_1DB2BFA90);
    sub_1DB164B3C(v23);
    if (v18)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1DB1572F0(0, *(v6 + 2) + 1, 1, v6);
      }

      v20 = *(v6 + 2);
      v19 = *(v6 + 3);
      if (v20 >= v19 >> 1)
      {
        v6 = sub_1DB1572F0((v19 > 1), v20 + 1, 1, v6);
      }

      *(v6 + 2) = v20 + 1;
      v7 = &v6[16 * v20];
      *(v7 + 4) = v16;
      *(v7 + 5) = v18;
    }

    v5 += 80;
    --v3;
  }

  while (v3);
  return v6;
}

uint64_t sub_1DB21E634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v6 = a5[9];
  v12[8] = a5[8];
  v12[9] = v6;
  v12[10] = a5[10];
  v7 = a5[5];
  v12[4] = a5[4];
  v12[5] = v7;
  v8 = a5[7];
  v12[6] = a5[6];
  v12[7] = v8;
  v9 = a5[1];
  v12[0] = *a5;
  v12[1] = v9;
  v10 = a5[3];
  v12[2] = a5[2];
  v12[3] = v10;
  return sub_1DB21D488(a1, a2, a3, a4, v12, *v5);
}

uint64_t Dictionary<>.collectOversizeColumnNames(_:)(uint64_t (*a1)(uint64_t, uint64_t, _BYTE *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = v12 | (v11 << 6);
      v14 = (*(a3 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      sub_1DB1446A4(*(a3 + 56) + 32 * v13, v29, &qword_1ECC26F30, &unk_1DB2BFA90);
      v28[0] = v15;
      v28[1] = v16;

      v17 = a1(v15, v16, v29);
      v19 = v18;
      result = sub_1DB1445E0(v28, &qword_1ECC283A0, &unk_1DB2C5E10);
      if (v19)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DB1572F0(0, *(v27 + 16) + 1, 1, v27);
      v27 = result;
    }

    v22 = *(v27 + 16);
    v21 = *(v27 + 24);
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      v25 = *(v27 + 16);
      v26 = v22 + 1;
      result = sub_1DB1572F0((v21 > 1), v22 + 1, 1, v27);
      v22 = v25;
      v23 = v26;
      v27 = result;
    }

    *(v27 + 16) = v23;
    v24 = v27 + 16 * v22;
    *(v24 + 32) = v17;
    *(v24 + 40) = v19;
  }

  while (v8);
LABEL_6:
  while (1)
  {
    v20 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v20 >= v9)
    {

      return v27;
    }

    v8 = *(v5 + 8 * v20);
    ++v11;
    if (v8)
    {
      v11 = v20;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB21E86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v6 = a5[9];
  v12[8] = a5[8];
  v12[9] = v6;
  v12[10] = a5[10];
  v7 = a5[5];
  v12[4] = a5[4];
  v12[5] = v7;
  v8 = a5[7];
  v12[6] = a5[6];
  v12[7] = v8;
  v9 = a5[1];
  v12[0] = *a5;
  v12[1] = v9;
  v10 = a5[3];
  v12[2] = a5[2];
  v12[3] = v10;
  return sub_1DB21DB04(a1, a2, a3, a4, v12, *v5);
}

unint64_t sub_1DB21E8CC(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v7 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v8 = *(a2 + 56);
  v8(a1, a2);
  if (swift_dynamicCast())
  {
    if ((v13 & 0x1000000000000000) != 0)
    {
      v11 = sub_1DB2BAF34();

      return v11;
    }

    else
    {

      if ((v13 & 0x2000000000000000) != 0)
      {
        return HIBYTE(v13) & 0xF;
      }

      else
      {
        return v12 & 0xFFFFFFFFFFFFLL;
      }
    }
  }

  else
  {
    v8(a1, a2);
    if (swift_dynamicCast())
    {
      v10 = *(v12 + 16);

      return v10;
    }

    else
    {
      v8(a1, a2);
      if (swift_dynamicCast())
      {
        return 8;
      }

      else
      {
        v8(a1, a2);
        if (swift_dynamicCast())
        {
          return 8;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

uint64_t sub_1DB21EB60(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  v8 = sub_1DB2BBA54();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1DB2BB924() & 1) != 0)
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

    sub_1DB21F214(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DB21ECB0(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1DB2BB9F4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1DB21F394(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1DB21ED90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC283B8, &qword_1DB2C5EA8);
  result = sub_1DB2BB4A4();
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
      sub_1DB2BBA04();
      sub_1DB2BAE84();
      result = sub_1DB2BBA54();
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

uint64_t sub_1DB21EFF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC283B0, &qword_1DB2C5EA0);
  result = sub_1DB2BB4A4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      result = sub_1DB2BB9F4();
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB21F214(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DB21ED90(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DB21F4B4();
      goto LABEL_16;
    }

    sub_1DB21F750(v8 + 1);
  }

  v10 = *v4;
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  result = sub_1DB2BBA54();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1DB2BB924();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1DB2BB974();
  __break(1u);
  return result;
}

uint64_t sub_1DB21F394(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DB21EFF0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1DB21F610();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1DB21F988(v5 + 1);
  }

  v8 = *v3;
  result = sub_1DB2BB9F4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
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
  result = sub_1DB2BB974();
  __break(1u);
  return result;
}

void *sub_1DB21F4B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC283B8, &qword_1DB2C5EA8);
  v2 = *v0;
  v3 = sub_1DB2BB494();
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

  return result;
}

void *sub_1DB21F610()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC283B0, &qword_1DB2C5EA0);
  v2 = *v0;
  v3 = sub_1DB2BB494();
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

uint64_t sub_1DB21F750(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC283B8, &qword_1DB2C5EA8);
  result = sub_1DB2BB4A4();
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
      sub_1DB2BBA04();

      sub_1DB2BAE84();
      result = sub_1DB2BBA54();
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

uint64_t sub_1DB21F988(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC283B0, &qword_1DB2C5EA0);
  result = sub_1DB2BB4A4();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_1DB2BB9F4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DB21FB80(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E1283780](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1DB21EB60(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1DB21FC18(uint64_t a1)
{
  result = sub_1DB1688F0(&qword_1ECC283A8, &qword_1ECC26DB0, &qword_1DB2C3B10, MEMORY[0x1E69E6340]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DB21FC6C(uint64_t a1)
{
  result = sub_1DB1688F0(&qword_1EE13E6D0, &qword_1ECC27CC0, &unk_1DB2C3850, MEMORY[0x1E69E5E60]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DB21FCFC(uint64_t a1, __int128 *a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = v11 | (v10 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      sub_1DB1446A4(*(a1 + 56) + 32 * v12, v28, &qword_1ECC26F30, &unk_1DB2BFA90);
      v27[0] = v14;
      v27[1] = v15;

      v16 = sub_1DB21E010(v14, v15, v28, a2);
      v18 = v17;
      result = sub_1DB1445E0(v27, &qword_1ECC283A0, &unk_1DB2C5E10);
      if (v18)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DB1572F0(0, *(v26 + 16) + 1, 1, v26);
      v26 = result;
    }

    v21 = *(v26 + 16);
    v20 = *(v26 + 24);
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      v24 = *(v26 + 16);
      v25 = v21 + 1;
      result = sub_1DB1572F0((v20 > 1), v21 + 1, 1, v26);
      v21 = v24;
      v22 = v25;
      v26 = result;
    }

    *(v26 + 16) = v22;
    v23 = v26 + 16 * v21;
    *(v23 + 32) = v16;
    *(v23 + 40) = v18;
  }

  while (v7);
LABEL_6:
  while (1)
  {
    v19 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v19 >= v8)
    {

      return v26;
    }

    v7 = *(v4 + 8 * v19);
    ++v10;
    if (v7)
    {
      v10 = v19;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

void sub_1DB21FED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

uint64_t sub_1DB21FF14(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E1283780](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1DB21ECB0(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1DB21FF88(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return sub_1DB286324(a1, a2);
  }
}

double sub_1DB220078@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 6)
  {
    if (a1 > 9)
    {
      if (a1 == 10)
      {
        v2 = 0xD000000000000011;
        v3 = 0x80000001DB2D5190;
        v4 = 0x80000001DB2D5110;
        v5 = 0x80000001DB2D51B0;
        v6 = 0xD00000000000001ALL;
        v7 = 0xD000000000000023;
        goto LABEL_18;
      }

      if (a1 == 11)
      {
        v6 = 0xD000000000000011;
        v3 = 0x80000001DB2D5130;
        v4 = 0x80000001DB2D5110;
        v5 = 0x80000001DB2D5150;
        v7 = 0xD000000000000033;
        v2 = 0xD000000000000011;
        goto LABEL_18;
      }

      v2 = 0xD000000000000011;
      v3 = 0x80000001DB2D50F0;
      v4 = 0x80000001DB2D5110;
      v5 = 0x80000001DB2D4D60;
      v6 = 0xD00000000000001ELL;
      v7 = 0xD000000000000034;
      v8 = a1 == 12;
    }

    else
    {
      v2 = 0xD000000000000011;
      if (a1 == 7)
      {
        v3 = 0x80000001DB2D5280;
        v4 = 0x80000001DB2D5110;
        v5 = 0x80000001DB2D52A0;
        v6 = 0xD000000000000010;
        v7 = 0xD000000000000019;
        goto LABEL_18;
      }

      if (a1 == 8)
      {
        v3 = 0x80000001DB2D5230;
        v4 = 0x80000001DB2D5110;
        v5 = 0x80000001DB2D5250;
        v6 = 0xD000000000000019;
        v7 = 0xD000000000000023;
        goto LABEL_18;
      }

      v3 = 0x80000001DB2D51E0;
      v4 = 0x80000001DB2D5110;
      v5 = 0x80000001DB2D5200;
      v6 = 0xD000000000000018;
      v7 = 0xD000000000000021;
      v8 = a1 == 9;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    if (a1 > 3)
    {
      if (a1 == 4)
      {
        v3 = 0x80000001DB2D5360;
        v4 = 0x80000001DB2D5110;
        v5 = 0x80000001DB2D4EF0;
        v6 = 0xD000000000000015;
        v7 = 0xD000000000000024;
        goto LABEL_18;
      }

      if (a1 == 5)
      {
        v3 = 0x80000001DB2D5310;
        v4 = 0x80000001DB2D5110;
        v5 = 0x80000001DB2D5330;
        v6 = 0xD000000000000013;
        v7 = 0xD000000000000027;
        goto LABEL_18;
      }

      v3 = 0x80000001DB2D52C0;
      v4 = 0x80000001DB2D5110;
      v5 = 0x80000001DB2D52E0;
      v6 = 0xD000000000000014;
      v7 = 0xD000000000000028;
      v8 = a1 == 6;
    }

    else
    {
      if (a1 == 1)
      {
        v3 = 0x80000001DB2D53C0;
        v4 = 0x80000001DB2D5110;
        v5 = 0x80000001DB2D53E0;
        v6 = 0xD000000000000012;
        v7 = 0xD00000000000001CLL;
        goto LABEL_18;
      }

      if (a1 == 2)
      {
        v3 = 0x80000001DB2D53A0;
        v4 = 0x80000001DB2D5110;
        v5 = 0x80000001DB2D4F50;
        v6 = 0xD000000000000012;
        v7 = 0xD00000000000001FLL;
        goto LABEL_18;
      }

      v3 = 0x80000001DB2D5380;
      v4 = 0x80000001DB2D5110;
      v5 = 0x80000001DB2D4F20;
      v6 = 0xD000000000000015;
      v7 = 0xD000000000000021;
      v8 = a1 == 3;
    }
  }

  if (!v8)
  {
    v6 = 0;
    v3 = 0;
    v2 = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

LABEL_18:
  *a2 = v6;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  *(a2 + 24) = v4;
  *(a2 + 32) = v7;
  *(a2 + 40) = v5;
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  return result;
}

uint64_t AccessCredential.Error.errorCode.getter()
{
  v1 = *(v0 + 24);
  if (v1 <= 3)
  {
    v3 = 201;
    v4 = 206;
    if (v1 != 2)
    {
      v4 = 207;
    }

    if (*(v0 + 24))
    {
      v3 = 205;
    }

    if (*(v0 + 24) <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else if (*(v0 + 24) <= 5u)
  {
    if (v1 == 4)
    {
      return 208;
    }

    else
    {
      return 209;
    }
  }

  else if (v1 == 6)
  {
    return 210;
  }

  else if (v1 == 7)
  {
    return 211;
  }

  else
  {
    v5 = *v0;
    if (v0[1] | v0[2] | *v0)
    {
      if (v5 == 1 && *(v0 + 1) == 0)
      {
        return 203;
      }

      else if (*(v0 + 1) == 0 && v5 == 2)
      {
        return 204;
      }

      else
      {
        return 212;
      }
    }

    else
    {
      return 202;
    }
  }
}

unint64_t AccessCredential.Error.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v4 <= 3)
  {
    if (*(v0 + 24) > 1u)
    {
      if (v4 != 2)
      {
        sub_1DB2BB4F4();
        MEMORY[0x1E1283490](0xD00000000000001BLL, 0x80000001DB2D4E70);
        sub_1DB2BB674();
        return 0;
      }

      v12 = 0;
      sub_1DB2BB4F4();
      v7 = "The rate limit is invalid: ";
      v8 = 0xD00000000000002ALL;
    }

    else
    {
      if (!*(v0 + 24))
      {
        sub_1DB2BB4F4();

        v12 = 0xD00000000000001FLL;
        MEMORY[0x1E1283490](v1, v2);
        v5 = 10542;
        v6 = 0xE200000000000000;
LABEL_23:
        MEMORY[0x1E1283490](v5, v6);
        return v12;
      }

      v12 = 0;
      sub_1DB2BB4F4();
      v7 = "ate timestamp is invalid: ";
      v8 = 0xD000000000000029;
    }

    MEMORY[0x1E1283490](v8, v7 | 0x8000000000000000);
    sub_1DB2BB1B4();
    return v12;
  }

  if (*(v0 + 24) <= 5u)
  {
    if (v4 != 4)
    {
      sub_1DB2BB4F4();

      v9 = 0xD000000000000023;
      goto LABEL_21;
    }

LABEL_12:
    sub_1DB2BB4F4();

    v9 = 0xD000000000000025;
LABEL_21:
    v12 = v9;
    goto LABEL_22;
  }

  if (v4 == 6)
  {
    goto LABEL_12;
  }

  if (v4 == 7)
  {
    v12 = 0;
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0xD000000000000035, 0x80000001DB2D4DA0);
LABEL_22:
    v5 = v1;
    v6 = v2;
    goto LABEL_23;
  }

  result = 0xD00000000000001FLL;
  v11 = v3 | v2;
  if (v3 | v2 | v1)
  {
    if (v1 != 1 || v11)
    {
      if (v1 != 2 || v11)
      {
        return 0xD000000000000034;
      }

      else
      {
        return 0xD000000000000024;
      }
    }

    else
    {
      return 0xD000000000000021;
    }
  }

  return result;
}

uint64_t sub_1DB220834()
{
  v1 = *(v0 + 24);
  if (v1 <= 3)
  {
    v3 = 201;
    v4 = 206;
    if (v1 != 2)
    {
      v4 = 207;
    }

    if (*(v0 + 24))
    {
      v3 = 205;
    }

    if (*(v0 + 24) <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else if (*(v0 + 24) <= 5u)
  {
    if (v1 == 4)
    {
      return 208;
    }

    else
    {
      return 209;
    }
  }

  else if (v1 == 6)
  {
    return 210;
  }

  else if (v1 == 7)
  {
    return 211;
  }

  else
  {
    v5 = *v0;
    if (v0[1] | v0[2] | *v0)
    {
      if (v5 == 1 && *(v0 + 1) == 0)
      {
        return 203;
      }

      else if (*(v0 + 1) == 0 && v5 == 2)
      {
        return 204;
      }

      else
      {
        return 212;
      }
    }

    else
    {
      return 202;
    }
  }
}

uint64_t AccessCredential.requestId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

__n128 AccessCredential.rateLimit.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[8].n128_u64[0];
  v3 = v1[8].n128_u8[8];
  result = v1[7];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

BOOL AccessCredential.isExpired(at:)()
{
  v1 = *(v0 + 64);
  sub_1DB2BA8D4();
  return v1 <= v2;
}

Swift::Bool __swiftcall AccessCredential.containsDataDeletionTrigger(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + 104);
  v5 = (v4 + 40);
  v6 = *(v4 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    if (*(v5 - 1) == countAndFlagsBits && *v5 == object)
    {
      break;
    }

    v5 += 2;
  }

  while ((sub_1DB2BB924() & 1) == 0);
  return v6 != 0;
}

void AccessCredential.isCompatibleWithCurrentOs.getter()
{
  if (*(v0 + 160))
  {
    v2[3] = *(v0 + 160);
    v1 = [objc_opt_self() processInfo];
    [v1 operatingSystemVersion];

    if (((v2[1] | v2[0] | v2[2]) & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      sub_1DB237368(v2, 0);
    }
  }
}

uint64_t AccessCredential.ownershipList.getter()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    v1 = *(v0 + 32);
    if (v1)
    {
    }

    else
    {
      v1 = MEMORY[0x1E69E7CC0];
    }
  }

  return v1;
}

uint64_t sub_1DB220BB4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v8 = *(v2 + 120);
  v9 = *(v2 + 128);
  v10 = *(v2 + 136);
  v11 = *(v2 + 160);
  v12 = *(v2 + 168);
  if (v5 && !*(v5 + 16))
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v15 = 8;
    *(a2 + 24) = 8;
    v20 = 0uLL;
    v21 = 0.0;
    goto LABEL_11;
  }

  if (!*(*(v2 + 40) + 16))
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 1;
    *(a2 + 24) = 8;
    v21 = 0.0;
    v20 = 1uLL;
    v22 = 8;
LABEL_12:
    sub_1DB171870();
    return swift_willThrowTypedImpl();
  }

  v19 = *(v2 + 112);
  sub_1DB2BA8D4();
  if (v7 <= v13)
  {
    *a2 = v7;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v15 = 2;
    *(a2 + 24) = 2;
    *&v20 = v7;
    goto LABEL_9;
  }

  sub_1DB2BA8D4();
  if (v14 < v6)
  {
    *a2 = v6;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v15 = 1;
    *(a2 + 24) = 1;
    *&v20 = v6;
LABEL_9:
    *(&v20 + 1) = 0;
    v21 = 0.0;
LABEL_11:
    v22 = v15;
    goto LABEL_12;
  }

  v23 = v12;

  sub_1DB227C1C(&v20);
  if (v3)
  {

    v17 = v21;
    v18 = v22;
    *a2 = v20;
    *(a2 + 16) = v17;
    *(a2 + 24) = v18;
  }

  else
  {

    if ((v10 & 1) != 0 || v19 && v8 > 0.0 && v9 > 0.0)
    {
      v23 = v11;

      sub_1DB2375F4(&v20);
    }

    else
    {
      *&v20 = v19;
      *(&v20 + 1) = v8;
      v21 = v9;
      v22 = 3;
      sub_1DB171870();
      result = swift_willThrowTypedImpl();
      *a2 = v19;
      *(a2 + 8) = v8;
      *(a2 + 16) = v9;
      *(a2 + 24) = 3;
    }
  }

  return result;
}

__n128 AccessCredential.init(from:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s19OnDeviceStorageCore3JWTV4fromACSS_tAC5ErrorOYKcfC(a1, a2, &v13, v16);
  if (v3)
  {
    v5 = v13;
    v6 = v14;
    sub_1DB225318();
    swift_allocError();
    *v8 = v5;
    *(v8 + 16) = v6;
  }

  else
  {
    v13 = v16[0];
    v14 = v16[1];
    v15 = v16[2];
    AccessCredential.init(from:)(&v13, v17);
    v9 = v17[9];
    *(a3 + 128) = v17[8];
    *(a3 + 144) = v9;
    *(a3 + 160) = v17[10];
    v10 = v17[5];
    *(a3 + 64) = v17[4];
    *(a3 + 80) = v10;
    v11 = v17[7];
    *(a3 + 96) = v17[6];
    *(a3 + 112) = v11;
    v12 = v17[1];
    *a3 = v17[0];
    *(a3 + 16) = v12;
    result = v17[3];
    *(a3 + 32) = v17[2];
    *(a3 + 48) = result;
  }

  return result;
}

uint64_t AccessCredential.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = sub_1DB2BA904();
  *&v50 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v98 = 1;
  *&v83 = v8;
  *(&v83 + 1) = v7;
  v51 = v10;
  *&v84 = v10;
  v105 = v9;
  *(&v84 + 1) = v9;
  *&v85 = v11;
  *(&v85 + 1) = v12;
  v77[0] = 0uLL;
  JWT.verifySignature(secret:)(v77);
  if (v2)
  {

    sub_1DB207494(v51, v105);
    sub_1DB207494(v11, v12);
  }

  v45 = v7;
  v46 = v8;
  v47 = v11;
  v48 = v12;
  v44 = v6;
  sub_1DB2BA5C4();
  swift_allocObject();
  sub_1DB2BA5B4();
  sub_1DB22536C();
  v13 = v51;
  v14 = v105;
  sub_1DB2BA5A4();
  v43 = v4;

  sub_1DB207494(v13, v14);
  sub_1DB207494(v47, v48);
  v101 = v85;
  v102 = v86;
  v103 = v87;
  v16 = v89;
  v104 = v88;
  v99 = v83;
  v100 = v84;
  v17 = v90;
  v18 = v91;
  v45 = v92;
  v46 = 0;
  v42 = v93;
  v19 = v94;
  v20 = v95;
  v97[0] = *v96;
  v21 = *&v96[15];
  *(v97 + 7) = *&v96[7];
  v22 = *&v96[23];
  v23 = *&v96[31];
  swift_bridgeObjectRelease_n();
  v98 = v20;
  v77[2] = v101;
  v77[3] = v102;
  v77[4] = v103;
  v77[0] = v99;
  v77[1] = v100;
  *&v78 = v104;
  v51 = v16;
  *(&v78 + 1) = v16;
  v24 = v21;
  v40 = v19;
  v41 = v17;
  *&v79 = v17;
  v25 = v45;
  v26 = v42;
  v48 = v18;
  *(&v79 + 1) = v18;
  *&v80 = v45;
  *(&v80 + 1) = v42;
  *&v81[0] = v19;
  BYTE8(v81[0]) = v20;
  *(v81 + 9) = v97[0];
  *&v81[1] = *(v97 + 7);
  *(&v81[1] + 1) = v24;
  v105 = v22;
  *&v82 = v22;
  v47 = v23;
  *(&v82 + 1) = v23;
  v74 = v81[0];
  v75 = v81[1];
  v76 = v82;
  v70 = v103;
  v71 = v78;
  v72 = v79;
  v73 = v80;
  v66 = v99;
  v67 = v100;
  v68 = v101;
  v69 = v102;
  sub_1DB1F8988(v77, &v55);
  v27 = v44;
  _s19OnDeviceStorageCore16AccessCredentialV9isExpired2atSb10Foundation4DateV_tFfA__0();
  v28 = v46;
  sub_1DB220BB4(v27, &v52);
  if (v28)
  {
    (*(v50 + 8))(v27, v43);
    v63 = v74;
    v64 = v75;
    v65 = v76;
    v59 = v70;
    v60 = v71;
    v61 = v72;
    v62 = v73;
    v55 = v66;
    v56 = v67;
    v57 = v68;
    v58 = v69;
    sub_1DB1F89E4(&v55);
    v50 = v52;
    v29 = v53;
    v30 = v54;
    sub_1DB171870();
    swift_allocError();
    *v31 = v50;
    *(v31 + 16) = v29;
    *(v31 + 24) = v30;
  }

  (*(v50 + 8))(v27, v43);
  v63 = v74;
  v64 = v75;
  v65 = v76;
  v59 = v70;
  v60 = v71;
  v61 = v72;
  v62 = v73;
  v55 = v66;
  v56 = v67;
  v57 = v68;
  v58 = v69;
  result = sub_1DB1F89E4(&v55);
  v32 = v98;
  v33 = v102;
  v34 = v49;
  *(v49 + 32) = v101;
  *(v34 + 48) = v33;
  *(v34 + 64) = v103;
  v35 = v104;
  v36 = v100;
  *v34 = v99;
  *(v34 + 16) = v36;
  v37 = v51;
  *(v34 + 80) = v35;
  *(v34 + 88) = v37;
  v38 = v48;
  *(v34 + 96) = v41;
  *(v34 + 104) = v38;
  *(v34 + 112) = v25;
  *(v34 + 120) = v26;
  *(v34 + 128) = v40;
  *(v34 + 136) = v32;
  *(v34 + 137) = v97[0];
  *(v34 + 144) = *(v97 + 7);
  *(v34 + 152) = v24;
  v39 = v47;
  *(v34 + 160) = v105;
  *(v34 + 168) = v39;
  return result;
}

__n128 AccessCredential.init(from:verifySignature:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  _s19OnDeviceStorageCore3JWTV4fromACSS_tAC5ErrorOYKcfC(a1, a2, &v15, v18);
  if (v4)
  {
    v7 = v15;
    v8 = v16;
    sub_1DB225318();
    swift_allocError();
    *v10 = v7;
    *(v10 + 16) = v8;
  }

  else
  {
    v15 = v18[0];
    v16 = v18[1];
    v17 = v18[2];
    AccessCredential.init(from:verifySignature:)(&v15, a3 & 1, v19);
    v11 = v19[9];
    *(a4 + 128) = v19[8];
    *(a4 + 144) = v11;
    *(a4 + 160) = v19[10];
    v12 = v19[5];
    *(a4 + 64) = v19[4];
    *(a4 + 80) = v12;
    v13 = v19[7];
    *(a4 + 96) = v19[6];
    *(a4 + 112) = v13;
    v14 = v19[1];
    *a4 = v19[0];
    *(a4 + 16) = v14;
    result = v19[3];
    *(a4 + 32) = v19[2];
    *(a4 + 48) = result;
  }

  return result;
}

uint64_t AccessCredential.init(from:verifySignature:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v6 = sub_1DB2BA904();
  v46 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v93 = a1[5];
  if (a2)
  {
    *&v72 = v9;
    *(&v72 + 1) = v8;
    *&v73 = v10;
    *(&v73 + 1) = v11;
    *&v74 = v12;
    *(&v74 + 1) = v93;
    v62 = 0uLL;
    v13 = v8;
    JWT.verifySignature(secret:)(&v62);
    if (v3)
    {

LABEL_8:

      sub_1DB207494(v10, v11);
      sub_1DB207494(v12, v93);
    }

    v47 = v13;
  }

  else
  {
    v47 = v8;
  }

  v48 = v9;
  sub_1DB2BA5C4();
  swift_allocObject();
  sub_1DB2BA5B4();
  sub_1DB22536C();
  sub_1DB2BA5A4();
  if (v3)
  {

    *&v62 = 0;
    *(&v62 + 1) = 0xE000000000000000;
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0xD000000000000029, 0x80000001DB2D4F90);
    swift_getErrorValue();
    sub_1DB2BB914();
    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v14 = v62;
    *&v63 = 0;
    BYTE8(v63) = 0;
    sub_1DB171870();
    swift_willThrowTypedImpl();
    MEMORY[0x1E1284A10](v3);
    swift_allocError();
    *v15 = v14;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;

    goto LABEL_8;
  }

  v43 = v6;

  sub_1DB207494(v10, v11);
  sub_1DB207494(v12, v93);
  v89 = v74;
  v90 = v75;
  v91 = v76;
  v17 = v78;
  v92 = v77;
  v87 = v72;
  v88 = v73;
  v18 = v79;
  v19 = v80;
  v39 = v82;
  v40 = v81;
  v20 = v83;
  v41 = v84;
  v21 = *&v85[15];
  *(v86 + 7) = *&v85[7];
  v86[0] = *v85;
  v22 = *&v85[23];
  v23 = *&v85[31];
  swift_bridgeObjectRelease_n();
  v64 = v89;
  v65 = v90;
  v66 = v91;
  v62 = v87;
  v63 = v88;
  *&v67 = v92;
  v47 = v19;
  v48 = v17;
  *(&v67 + 1) = v17;
  v24 = v21;
  v37 = v20;
  v38 = v18;
  *&v68 = v18;
  v26 = v39;
  v25 = v40;
  *(&v68 + 1) = v19;
  *&v69 = v40;
  *(&v69 + 1) = v39;
  *&v70[0] = v20;
  LOBYTE(v20) = v41;
  BYTE8(v70[0]) = v41;
  *(v70 + 9) = v86[0];
  *&v70[1] = *(v86 + 7);
  *(&v70[1] + 1) = v24;
  v93 = v22;
  *&v71 = v22;
  v42 = v23;
  *(&v71 + 1) = v23;
  v59 = v70[0];
  v60 = v70[1];
  v61 = v71;
  v55 = v91;
  v56 = v67;
  v57 = v68;
  v58 = v69;
  v51 = v87;
  v52 = v88;
  v53 = v89;
  v54 = v90;
  sub_1DB1F8988(&v62, v50);
  v27 = v45;
  _s19OnDeviceStorageCore16AccessCredentialV9isExpired2atSb10Foundation4DateV_tFfA__0();
  sub_1DB220BB4(v27, &v49);
  (*(v46 + 8))(v27, v43);
  v50[8] = v59;
  v50[9] = v60;
  v50[10] = v61;
  v50[4] = v55;
  v50[5] = v56;
  v50[6] = v57;
  v50[7] = v58;
  v50[0] = v51;
  v50[1] = v52;
  v50[2] = v53;
  v50[3] = v54;
  result = sub_1DB1F89E4(v50);
  v28 = v90;
  v29 = v44;
  *(v44 + 32) = v89;
  *(v29 + 48) = v28;
  *(v29 + 64) = v91;
  v30 = v92;
  v31 = v88;
  *v29 = v87;
  *(v29 + 16) = v31;
  v32 = v48;
  *(v29 + 80) = v30;
  *(v29 + 88) = v32;
  v33 = v47;
  *(v29 + 96) = v38;
  *(v29 + 104) = v33;
  *(v29 + 112) = v25;
  *(v29 + 120) = v26;
  *(v29 + 128) = v37;
  *(v29 + 136) = v20;
  v34 = v86[0];
  *(v29 + 144) = *(v86 + 7);
  *(v29 + 152) = v24;
  *(v29 + 137) = v34;
  v35 = v42;
  *(v29 + 160) = v93;
  *(v29 + 168) = v35;
  return result;
}

uint64_t sub_1DB221B1C(char a1)
{
  result = 6911082;
  switch(a1)
  {
    case 1:
      result = 6580594;
      break;
    case 2:
      result = 6580578;
      break;
    case 3:
      result = 7630437;
      break;
    case 4:
      result = 7695972;
      break;
    case 5:
      result = 7627113;
      break;
    case 6:
      result = 7370853;
      break;
    case 7:
      result = 25459;
      break;
    case 8:
      result = 29793;
      break;
    case 9:
      result = 7496806;
      break;
    case 10:
      result = 7627876;
      break;
    case 11:
      result = 27762;
      break;
    case 12:
      result = 27492;
      break;
    case 13:
      result = 29551;
      break;
    case 14:
      result = 100;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DB221C04(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DB221B1C(*a1);
  v5 = v4;
  if (v3 == sub_1DB221B1C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB2BB924();
  }

  return v8 & 1;
}

uint64_t sub_1DB221C8C()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB221B1C(v1);
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB221CF0(uint64_t a1)
{
  sub_1DB221B1C(*v1);
  sub_1DB2BAE84();
}

uint64_t sub_1DB221D44(uint64_t a1)
{
  v2 = *v1;
  sub_1DB2BBA04();
  sub_1DB221B1C(v2);
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

unint64_t sub_1DB221DA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB226954(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DB221DD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB221B1C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DB221E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB226954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB221E50(uint64_t a1)
{
  v2 = sub_1DB225BD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB221E8C(uint64_t a1)
{
  v2 = sub_1DB225BD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessCredential.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC283C8, &unk_1DB2C5EB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = *(v1 + 16);
  v37 = *(v1 + 24);
  v38 = v5;
  v6 = *(v1 + 32);
  v35 = *(v1 + 40);
  v36 = v6;
  v44 = *(v1 + 48);
  v34 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v32 = *(v1 + 96);
  v33 = v7;
  v9 = *(v1 + 112);
  v30 = *(v1 + 104);
  v31 = v8;
  v26 = v9;
  v10 = *(v1 + 120);
  v28 = *(v1 + 128);
  v29 = v10;
  v27 = *(v1 + 136);
  v11 = *(v1 + 152);
  v24 = *(v1 + 144);
  v25 = v11;
  v12 = *(v1 + 168);
  v23 = *(v1 + 160);
  v13 = a1[3];
  v14 = a1;
  v16 = &v21 - v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1DB225BD8();
  sub_1DB2BBA94();
  LOBYTE(v40) = 0;
  v17 = v39;
  sub_1DB2BB864();
  if (v17)
  {
    return (*(v4 + 8))(v16, v3);
  }

  v20 = v35;
  v19 = v36;
  v22 = v12;
  v39 = v4;
  LOBYTE(v40) = 1;
  sub_1DB2BB864();
  v40 = v19;
  v45 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB1518BC(&qword_1EE13E618, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1DB2BB854();
  v40 = v20;
  v45 = 3;
  sub_1DB2BB8A4();
  LOBYTE(v40) = 4;
  sub_1DB2BB874();
  LOBYTE(v40) = 5;
  sub_1DB2BB884();
  LOBYTE(v40) = 6;
  sub_1DB2BB884();
  LOBYTE(v40) = v34;
  v45 = 7;
  sub_1DB1519D0();
  sub_1DB2BB8A4();
  v40 = v33;
  v45 = 8;
  sub_1DB225C2C();
  sub_1DB2BB8A4();
  v40 = v31;
  v41 = v32;
  v45 = 9;
  sub_1DB225C80();

  sub_1DB2BB854();

  v40 = v30;
  v45 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC283D0, &qword_1DB2C5EC0);
  sub_1DB225ECC(&qword_1EE13E628, sub_1DB225CD4, MEMORY[0x1E69E6300]);
  sub_1DB2BB8A4();
  v40 = v26;
  v41 = v29;
  v42 = v28;
  v43 = v27;
  v45 = 11;
  sub_1DB225D28();
  sub_1DB2BB854();
  LOBYTE(v40) = 12;
  sub_1DB2BB824();
  v40 = v23;
  v45 = 13;
  sub_1DB225D7C();

  sub_1DB2BB854();

  v40 = v22;
  v45 = 14;
  sub_1DB225DD0();

  sub_1DB2BB8A4();

  return (*(v39 + 8))(v16, v3);
}

uint64_t AccessCredential.hash(into:)(uint64_t a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v6 = *(v1 + 56);
  v5 = *(v1 + 64);
  v7 = *(v1 + 88);
  v8 = *(v1 + 104);
  v19 = *(v1 + 136);
  v18 = *(v1 + 80);
  v20 = *(v1 + 152);
  v21 = *(v1 + 160);
  v22 = *(v1 + 168);
  sub_1DB2BAE84();
  sub_1DB2BAE84();
  if (v4)
  {
    sub_1DB2BBA24();
    MEMORY[0x1E1283FC0](*(v4 + 16));
    v9 = *(v4 + 16);
    if (v9)
    {
      v10 = v4 + 40;
      do
      {

        sub_1DB2BAE84();

        v10 += 16;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    sub_1DB2BBA24();
  }

  MEMORY[0x1E1283FC0](*(v3 + 16));
  v11 = *(v3 + 16);
  if (v11)
  {
    v12 = v3 + 40;
    do
    {

      sub_1DB2BAE84();

      v12 += 16;
      --v11;
    }

    while (v11);
  }

  sub_1DB2BBA24();
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1E1283FE0](*&v13);
  if (v5 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v5;
  }

  MEMORY[0x1E1283FE0](*&v14);
  sub_1DB2BAE84();

  MEMORY[0x1E1283FC0](v18);
  sub_1DB2BBA24();
  if (v7)
  {

    ForwardDeletionRules.hash(into:)(a1);
  }

  MEMORY[0x1E1283FC0](*(v8 + 16));
  v15 = *(v8 + 16);
  if (v15)
  {
    v16 = v8 + 40;
    do
    {

      sub_1DB2BAE84();

      v16 += 16;
      --v15;
    }

    while (v15);
  }

  sub_1DB2BBA24();
  if ((v19 & 1) == 0)
  {
    RateLimit.hash(into:)();
  }

  if (v20)
  {
    sub_1DB2BBA24();
    sub_1DB2BAE84();
    if (v21)
    {
LABEL_25:
      sub_1DB2BBA24();
      sub_1DB2257C0(a1, v21);
      goto LABEL_28;
    }
  }

  else
  {
    sub_1DB2BBA24();
    if (v21)
    {
      goto LABEL_25;
    }
  }

  sub_1DB2BBA24();
LABEL_28:

  return sub_1DB2253C0(a1, v22);
}

uint64_t AccessCredential.hashValue.getter()
{
  sub_1DB2BBA04();
  AccessCredential.hash(into:)(v1);
  return sub_1DB2BBA54();
}

uint64_t AccessCredential.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC283D8, &qword_1DB2C5EC8);
  v5 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v7 = &v33 - v6;
  v89 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB225BD8();
  sub_1DB2BBA84();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v61) = 0;
    v8 = sub_1DB2BB774();
    v48 = v5;
    v49 = v9;
    LOBYTE(v61) = 1;
    v10 = sub_1DB2BB774();
    v12 = v11;
    v44 = v10;
    v45 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    LOBYTE(v50) = 2;
    sub_1DB1518BC(&qword_1EE13F670, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1DB2BB764();
    v47 = v61;
    LOBYTE(v50) = 3;
    sub_1DB2BB7B4();
    v42 = v61;
    LOBYTE(v61) = 4;
    LODWORD(v8) = sub_1DB2BB784();
    LOBYTE(v61) = 5;
    sub_1DB2BB794();
    v41 = v8;
    v14 = v13;
    LOBYTE(v61) = 6;
    sub_1DB2BB794();
    v16 = v15;
    LOBYTE(v50) = 7;
    sub_1DB151C78();
    sub_1DB2BB7B4();
    v40 = v61;
    LOBYTE(v50) = 8;
    sub_1DB225E24();
    sub_1DB2BB7B4();
    v46 = v12;
    v39 = v61;
    LOBYTE(v50) = 9;
    sub_1DB225E78();
    sub_1DB2BB764();
    v17 = v61;
    v38 = v62;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC283D0, &qword_1DB2C5EC0);
    LOBYTE(v50) = 10;
    sub_1DB225ECC(&qword_1EE13F680, sub_1DB225F44, MEMORY[0x1E69E6330]);
    sub_1DB2BB7B4();
    v43 = v61;
    LOBYTE(v50) = 11;
    sub_1DB225F98();
    sub_1DB2BB764();
    v36 = v62;
    v37 = v61;
    v35 = v63;
    v89 = v64;
    LOBYTE(v61) = 12;
    v34 = sub_1DB2BB734();
    v19 = v18;
    LOBYTE(v50) = 13;
    sub_1DB225FEC();
    sub_1DB2BB764();
    v20 = v61;

    v86 = 14;
    sub_1DB226040();
    sub_1DB2BB7B4();
    v41 &= 1u;
    v21 = v41;
    (*(v48 + 8))(v7, v92);
    v92 = v87;
    v22 = v46;
    *&v50 = v45;
    *(&v50 + 1) = v49;
    *&v51 = v44;
    *(&v51 + 1) = v46;
    *&v52 = v47;
    *(&v52 + 1) = v42;
    LOBYTE(v53) = v21;
    *(&v53 + 1) = v14;
    *&v54 = v16;
    BYTE8(v54) = v40;
    *&v55 = v39;
    *(&v55 + 1) = v17;
    v23 = v43;
    *&v56 = v38;
    *(&v56 + 1) = v43;
    *&v57 = v37;
    *(&v57 + 1) = v36;
    *&v58 = v35;
    LODWORD(v48) = v89;
    BYTE8(v58) = v89;
    HIDWORD(v58) = *&v88[3];
    *(&v58 + 9) = *v88;
    *&v59 = v34;
    *(&v59 + 1) = v19;
    *&v60 = v20;
    *(&v60 + 1) = v87;
    v24 = v51;
    *a2 = v50;
    a2[1] = v24;
    v25 = v52;
    v26 = v53;
    v27 = v55;
    a2[4] = v54;
    a2[5] = v27;
    a2[2] = v25;
    a2[3] = v26;
    v28 = v56;
    v29 = v57;
    v30 = v60;
    a2[9] = v59;
    a2[10] = v30;
    v31 = v58;
    a2[7] = v29;
    a2[8] = v31;
    a2[6] = v28;
    sub_1DB1F8988(&v50, &v61);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v61 = v45;
    v62 = v49;
    v63 = v44;
    v64 = v22;
    v65 = v47;
    v66 = v42;
    v67 = v41;
    *v68 = v91[0];
    *&v68[3] = *(v91 + 3);
    v69 = v14;
    v70 = v16;
    v71 = v40;
    *v72 = *v90;
    *&v72[3] = *&v90[3];
    v73 = v39;
    v74 = v17;
    v75 = v38;
    v76 = v23;
    v77 = v37;
    v78 = v36;
    v79 = v35;
    v80 = v48;
    *v81 = *v88;
    *&v81[3] = *&v88[3];
    v82 = v34;
    v83 = v19;
    v84 = v20;
    v85 = v92;
    return sub_1DB1F89E4(&v61);
  }
}

uint64_t sub_1DB22317C()
{
  sub_1DB2BBA04();
  AccessCredential.hash(into:)(v1);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB2231C0(uint64_t a1)
{
  sub_1DB2BBA04();
  AccessCredential.hash(into:)(v2);
  return sub_1DB2BBA54();
}

uint64_t _s19OnDeviceStorageCore16AccessCredentialV39fromPayloadWithoutSignatureVerificationAC10Foundation4DataV_tAC5ErrorOYKcfC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = sub_1DB2BA904();
  v49 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    sub_1DB2BA5C4();
    swift_allocObject();
    sub_1DB2BA5B4();
    sub_1DB22536C();
    sub_1DB2BA5A4();
    if (v4)
    {

      *&v63 = 0;
      *(&v63 + 1) = 0xE000000000000000;
      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](0xD000000000000029, 0x80000001DB2D4F90);
      swift_getErrorValue();
      sub_1DB2BB914();
      MEMORY[0x1E1283490](41, 0xE100000000000000);
      v12 = v63;
      *&v64 = 0;
      BYTE8(v64) = 0;
      sub_1DB171870();
      swift_willThrowTypedImpl();
      sub_1DB207494(a1, a2);
      MEMORY[0x1E1284A10](v4);
      *a3 = v12;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
    }

    else
    {
      v36 = a4;
      v38 = a3;
      v43 = a1;
      v45 = a2;

      v90 = v75;
      v91 = v76;
      v92 = v77;
      v13 = v79;
      v93 = v78;
      v88 = v73;
      v89 = v74;
      v14 = v80;
      v42 = v10;
      v15 = v81;
      v16 = v83;
      v40 = v82;
      v41 = v84;
      v17 = v85;
      v18 = *&v86[15];
      *(v87 + 7) = *&v86[7];
      v87[0] = *v86;
      v19 = *&v86[23];
      v39 = *&v86[31];
      swift_bridgeObjectRelease_n();
      v65 = v90;
      v66 = v91;
      v67 = v92;
      v63 = v88;
      v64 = v89;
      *&v68 = v93;
      v48 = v13;
      *(&v68 + 1) = v13;
      v37 = v14;
      *&v69 = v14;
      v20 = v40;
      v44 = v15;
      *(&v69 + 1) = v15;
      *&v70 = v40;
      v35 = v16;
      *(&v70 + 1) = v16;
      v21 = v41;
      v22 = v42;
      *&v71[0] = v41;
      HIDWORD(v34) = v17;
      BYTE8(v71[0]) = v17;
      *(v71 + 9) = v87[0];
      *&v71[1] = *(v87 + 7);
      v46 = v18;
      v47 = v19;
      *(&v71[1] + 1) = v18;
      *&v72 = v19;
      v23 = v39;
      *(&v72 + 1) = v39;
      v60 = v71[0];
      v61 = v71[1];
      v62 = v72;
      v56 = v92;
      v57 = v68;
      v58 = v69;
      v59 = v70;
      v52 = v88;
      v53 = v89;
      v54 = v90;
      v55 = v91;
      sub_1DB1F8988(&v63, v51);
      _s19OnDeviceStorageCore16AccessCredentialV9isExpired2atSb10Foundation4DateV_tFfA__0();
      sub_1DB220BB4(v22, &v50);
      sub_1DB207494(v43, v45);
      (*(v49 + 8))(v22, v94);
      v51[8] = v60;
      v51[9] = v61;
      v51[10] = v62;
      v51[4] = v56;
      v51[5] = v57;
      v51[6] = v58;
      v51[7] = v59;
      v51[0] = v52;
      v51[1] = v53;
      v51[2] = v54;
      v51[3] = v55;
      result = sub_1DB1F89E4(v51);
      v25 = v91;
      v26 = v36;
      *(v36 + 32) = v90;
      *(v26 + 48) = v25;
      *(v26 + 64) = v92;
      v27 = v93;
      v28 = v89;
      *v26 = v88;
      *(v26 + 16) = v28;
      v29 = v48;
      *(v26 + 80) = v27;
      *(v26 + 88) = v29;
      v30 = v44;
      *(v26 + 96) = v37;
      *(v26 + 104) = v30;
      v31 = v35;
      *(v26 + 112) = v20;
      *(v26 + 120) = v31;
      *(v26 + 128) = v21;
      *(v26 + 136) = BYTE4(v34);
      v32 = v87[0];
      *(v26 + 144) = *(v87 + 7);
      *(v26 + 137) = v32;
      v33 = v47;
      *(v26 + 152) = v46;
      *(v26 + 160) = v33;
      *(v26 + 168) = v23;
    }
  }

  else
  {
    result = sub_1DB2BB684();
    __break(1u);
  }

  return result;
}

uint64_t AccessCredential.withDataSpecification(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = v2[9];
  v18[8] = v2[8];
  v18[9] = v5;
  v18[10] = v2[10];
  v6 = v2[5];
  v18[4] = v2[4];
  v18[5] = v6;
  v7 = v2[7];
  v18[6] = v2[6];
  v18[7] = v7;
  v8 = v2[1];
  v18[0] = *v2;
  v18[1] = v8;
  v9 = v2[3];
  v18[2] = v2[2];
  v18[3] = v9;
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    v11 = v2[9];
    *(a2 + 128) = v2[8];
    *(a2 + 144) = v11;
    *(a2 + 160) = v2[10];
    v12 = v2[5];
    *(a2 + 64) = v2[4];
    *(a2 + 80) = v12;
    v13 = v2[7];
    *(a2 + 96) = v2[6];
    *(a2 + 112) = v13;
    v14 = v2[1];
    *a2 = *v2;
    *(a2 + 16) = v14;
    v15 = v2[3];
    *(a2 + 32) = v2[2];
    *(a2 + 48) = v15;
    sub_1DB1F8988(v18, v17);

    *(a2 + 168) = v4;
  }

  else
  {
    result = sub_1DB2BB684();
    __break(1u);
  }

  return result;
}

uint64_t AccessCredential.withRequestId(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[9];
  v20[8] = v3[8];
  v20[9] = v7;
  v20[10] = v3[10];
  v8 = v3[5];
  v20[4] = v3[4];
  v20[5] = v8;
  v9 = v3[7];
  v20[6] = v3[6];
  v20[7] = v9;
  v10 = v3[1];
  v20[0] = *v3;
  v20[1] = v10;
  v11 = v3[3];
  v20[2] = v3[2];
  v20[3] = v11;
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    v13 = v3[9];
    *(a3 + 128) = v3[8];
    *(a3 + 144) = v13;
    *(a3 + 160) = v3[10];
    v14 = v3[5];
    *(a3 + 64) = v3[4];
    *(a3 + 80) = v14;
    v15 = v3[7];
    *(a3 + 96) = v3[6];
    *(a3 + 112) = v15;
    v16 = v3[1];
    *a3 = *v3;
    *(a3 + 16) = v16;
    v17 = v3[3];
    *(a3 + 32) = v3[2];
    *(a3 + 48) = v17;
    sub_1DB1F8988(v20, v19);

    *(a3 + 16) = a1;
    *(a3 + 24) = a2;
  }

  else
  {
    result = sub_1DB2BB684();
    __break(1u);
  }

  return result;
}

uint64_t AccessCredential.withBundleIds(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[9];
  v18[8] = v2[8];
  v18[9] = v5;
  v18[10] = v2[10];
  v6 = v2[5];
  v18[4] = v2[4];
  v18[5] = v6;
  v7 = v2[7];
  v18[6] = v2[6];
  v18[7] = v7;
  v8 = v2[1];
  v18[0] = *v2;
  v18[1] = v8;
  v9 = v2[3];
  v18[2] = v2[2];
  v18[3] = v9;
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    v11 = v2[9];
    a2[8] = v2[8];
    a2[9] = v11;
    a2[10] = v2[10];
    v12 = v2[5];
    a2[4] = v2[4];
    a2[5] = v12;
    v13 = v2[7];
    a2[6] = v2[6];
    a2[7] = v13;
    v14 = v2[1];
    *a2 = *v2;
    a2[1] = v14;
    v15 = v2[3];
    a2[2] = v2[2];
    a2[3] = v15;
    sub_1DB1F8988(v18, v17);

    *(a2 + 4) = a1;
  }

  else
  {
    result = sub_1DB2BB684();
    __break(1u);
  }

  return result;
}

uint64_t AccessCredential.withEntitlements(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[9];
  v18[8] = v2[8];
  v18[9] = v5;
  v18[10] = v2[10];
  v6 = v2[5];
  v18[4] = v2[4];
  v18[5] = v6;
  v7 = v2[7];
  v18[6] = v2[6];
  v18[7] = v7;
  v8 = v2[1];
  v18[0] = *v2;
  v18[1] = v8;
  v9 = v2[3];
  v18[2] = v2[2];
  v18[3] = v9;
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    v11 = v2[9];
    *(a2 + 128) = v2[8];
    *(a2 + 144) = v11;
    *(a2 + 160) = v2[10];
    v12 = v2[5];
    *(a2 + 64) = v2[4];
    *(a2 + 80) = v12;
    v13 = v2[7];
    *(a2 + 96) = v2[6];
    *(a2 + 112) = v13;
    v14 = v2[1];
    *a2 = *v2;
    *(a2 + 16) = v14;
    v15 = v2[3];
    *(a2 + 32) = v2[2];
    *(a2 + 48) = v15;
    sub_1DB1F8988(v18, v17);

    *(a2 + 40) = a1;
  }

  else
  {
    result = sub_1DB2BB684();
    __break(1u);
  }

  return result;
}

uint64_t AccessCredential.withAccessType(_:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  v5 = v2[9];
  v18[8] = v2[8];
  v18[9] = v5;
  v18[10] = v2[10];
  v6 = v2[5];
  v18[4] = v2[4];
  v18[5] = v6;
  v7 = v2[7];
  v18[6] = v2[6];
  v18[7] = v7;
  v8 = v2[1];
  v18[0] = *v2;
  v18[1] = v8;
  v9 = v2[3];
  v18[2] = v2[2];
  v18[3] = v9;
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    v11 = v2[9];
    a2[8] = v2[8];
    a2[9] = v11;
    a2[10] = v2[10];
    v12 = v2[5];
    a2[4] = v2[4];
    a2[5] = v12;
    v13 = v2[7];
    a2[6] = v2[6];
    a2[7] = v13;
    v14 = v2[1];
    *a2 = *v2;
    a2[1] = v14;
    v15 = v2[3];
    a2[2] = v2[2];
    a2[3] = v15;
    *(a2 + 10) = v4;
    return sub_1DB1F8988(v18, v17);
  }

  else
  {
    result = sub_1DB2BB684();
    __break(1u);
  }

  return result;
}

uint64_t AccessCredential.withIsDiagnosticsAndUsageRequired(_:)@<X0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  v5 = v2[9];
  v18[8] = v2[8];
  v18[9] = v5;
  v18[10] = v2[10];
  v6 = v2[5];
  v18[4] = v2[4];
  v18[5] = v6;
  v7 = v2[7];
  v18[6] = v2[6];
  v18[7] = v7;
  v8 = v2[1];
  v18[0] = *v2;
  v18[1] = v8;
  v9 = v2[3];
  v18[2] = v2[2];
  v18[3] = v9;
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    v11 = v2[9];
    a2[8] = v2[8];
    a2[9] = v11;
    a2[10] = v2[10];
    v12 = v2[5];
    a2[4] = v2[4];
    a2[5] = v12;
    v13 = v2[7];
    a2[6] = v2[6];
    a2[7] = v13;
    v14 = v2[1];
    *a2 = *v2;
    a2[1] = v14;
    v15 = v2[3];
    a2[2] = v2[2];
    a2[3] = v15;
    *(a2 + 48) = a1 & 1;
    return sub_1DB1F8988(v18, v17);
  }

  else
  {
    result = sub_1DB2BB684();
    __break(1u);
  }

  return result;
}

uint64_t AccessCredential.withIssuedAt(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = v2[9];
  v18[8] = v2[8];
  v18[9] = v5;
  v18[10] = v2[10];
  v6 = v2[5];
  v18[4] = v2[4];
  v18[5] = v6;
  v7 = v2[7];
  v18[6] = v2[6];
  v18[7] = v7;
  v8 = v2[1];
  v18[0] = *v2;
  v18[1] = v8;
  v9 = v2[3];
  v18[2] = v2[2];
  v18[3] = v9;
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    v11 = v2[9];
    *(a1 + 128) = v2[8];
    *(a1 + 144) = v11;
    *(a1 + 160) = v2[10];
    v12 = v2[5];
    *(a1 + 64) = v2[4];
    *(a1 + 80) = v12;
    v13 = v2[7];
    *(a1 + 96) = v2[6];
    *(a1 + 112) = v13;
    v14 = v2[1];
    *a1 = *v2;
    *(a1 + 16) = v14;
    v15 = v2[3];
    *(a1 + 32) = v2[2];
    *(a1 + 48) = v15;
    *(a1 + 56) = a2;
    return sub_1DB1F8988(v18, v17);
  }

  else
  {
    result = sub_1DB2BB684();
    __break(1u);
  }

  return result;
}

uint64_t AccessCredential.withExpiresAt(_:)@<X0>(double *a1@<X8>, double a2@<D0>)
{
  v5 = v2[9];
  v18[8] = v2[8];
  v18[9] = v5;
  v18[10] = v2[10];
  v6 = v2[5];
  v18[4] = v2[4];
  v18[5] = v6;
  v7 = v2[7];
  v18[6] = v2[6];
  v18[7] = v7;
  v8 = v2[1];
  v18[0] = *v2;
  v18[1] = v8;
  v9 = v2[3];
  v18[2] = v2[2];
  v18[3] = v9;
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    v11 = v2[9];
    *(a1 + 8) = v2[8];
    *(a1 + 9) = v11;
    *(a1 + 10) = v2[10];
    v12 = v2[5];
    *(a1 + 4) = v2[4];
    *(a1 + 5) = v12;
    v13 = v2[7];
    *(a1 + 6) = v2[6];
    *(a1 + 7) = v13;
    v14 = v2[1];
    *a1 = *v2;
    *(a1 + 1) = v14;
    v15 = v2[3];
    *(a1 + 2) = v2[2];
    *(a1 + 3) = v15;
    a1[8] = a2;
    return sub_1DB1F8988(v18, v17);
  }

  else
  {
    result = sub_1DB2BB684();
    __break(1u);
  }

  return result;
}

uint64_t AccessCredential.withForwardDeletionRules(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v2[9];
  v19[8] = v2[8];
  v19[9] = v6;
  v19[10] = v2[10];
  v7 = v2[5];
  v19[4] = v2[4];
  v19[5] = v7;
  v8 = v2[7];
  v19[6] = v2[6];
  v19[7] = v8;
  v9 = v2[1];
  v19[0] = *v2;
  v19[1] = v9;
  v10 = v2[3];
  v19[2] = v2[2];
  v19[3] = v10;
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    v12 = v2[9];
    *(a2 + 128) = v2[8];
    *(a2 + 144) = v12;
    *(a2 + 160) = v2[10];
    v13 = v2[5];
    *(a2 + 64) = v2[4];
    *(a2 + 80) = v13;
    v14 = v2[7];
    *(a2 + 96) = v2[6];
    *(a2 + 112) = v14;
    v15 = v2[1];
    *a2 = *v2;
    *(a2 + 16) = v15;
    v16 = v2[3];
    *(a2 + 32) = v2[2];
    *(a2 + 48) = v16;
    sub_1DB1F8988(v19, v18);

    *(a2 + 88) = v4;
    *(a2 + 96) = v5;
  }

  else
  {
    result = sub_1DB2BB684();
    __break(1u);
  }

  return result;
}

uint64_t AccessCredential.withDataDeletionTriggers(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[9];
  v18[8] = v2[8];
  v18[9] = v5;
  v18[10] = v2[10];
  v6 = v2[5];
  v18[4] = v2[4];
  v18[5] = v6;
  v7 = v2[7];
  v18[6] = v2[6];
  v18[7] = v7;
  v8 = v2[1];
  v18[0] = *v2;
  v18[1] = v8;
  v9 = v2[3];
  v18[2] = v2[2];
  v18[3] = v9;
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    v11 = v2[9];
    *(a2 + 128) = v2[8];
    *(a2 + 144) = v11;
    *(a2 + 160) = v2[10];
    v12 = v2[5];
    *(a2 + 64) = v2[4];
    *(a2 + 80) = v12;
    v13 = v2[7];
    *(a2 + 96) = v2[6];
    *(a2 + 112) = v13;
    v14 = v2[1];
    *a2 = *v2;
    *(a2 + 16) = v14;
    v15 = v2[3];
    *(a2 + 32) = v2[2];
    *(a2 + 48) = v15;
    sub_1DB1F8988(v18, v17);

    *(a2 + 104) = a1;
  }

  else
  {
    result = sub_1DB2BB684();
    __break(1u);
  }

  return result;
}

uint64_t AccessCredential.withRateLimit(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = v2[9];
  v21[8] = v2[8];
  v21[9] = v8;
  v21[10] = v2[10];
  v9 = v2[5];
  v21[4] = v2[4];
  v21[5] = v9;
  v10 = v2[7];
  v21[6] = v2[6];
  v21[7] = v10;
  v11 = v2[1];
  v21[0] = *v2;
  v21[1] = v11;
  v12 = v2[3];
  v21[2] = v2[2];
  v21[3] = v12;
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    v14 = v2[9];
    *(a2 + 128) = v2[8];
    *(a2 + 144) = v14;
    *(a2 + 160) = v2[10];
    v15 = v2[5];
    *(a2 + 64) = v2[4];
    *(a2 + 80) = v15;
    v16 = v2[7];
    *(a2 + 96) = v2[6];
    *(a2 + 112) = v16;
    v17 = v2[1];
    *a2 = *v2;
    *(a2 + 16) = v17;
    v18 = v2[3];
    *(a2 + 32) = v2[2];
    *(a2 + 48) = v18;
    *(a2 + 112) = v4;
    *(a2 + 120) = v5;
    *(a2 + 128) = v6;
    *(a2 + 136) = v7;
    return sub_1DB1F8988(v21, v20);
  }

  else
  {
    result = sub_1DB2BB684();
    __break(1u);
  }

  return result;
}

uint64_t AccessCredential.withOsRequirements(_:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  v5 = v2[9];
  v18[8] = v2[8];
  v18[9] = v5;
  v18[10] = v2[10];
  v6 = v2[5];
  v18[4] = v2[4];
  v18[5] = v6;
  v7 = v2[7];
  v18[6] = v2[6];
  v18[7] = v7;
  v8 = v2[1];
  v18[0] = *v2;
  v18[1] = v8;
  v9 = v2[3];
  v18[2] = v2[2];
  v18[3] = v9;
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    v11 = v2[9];
    a2[8] = v2[8];
    a2[9] = v11;
    a2[10] = v2[10];
    v12 = v2[5];
    a2[4] = v2[4];
    a2[5] = v12;
    v13 = v2[7];
    a2[6] = v2[6];
    a2[7] = v13;
    v14 = v2[1];
    *a2 = *v2;
    a2[1] = v14;
    v15 = v2[3];
    a2[2] = v2[2];
    a2[3] = v15;
    sub_1DB1F8988(v18, v17);

    *(a2 + 20) = v4;
  }

  else
  {
    result = sub_1DB2BB684();
    __break(1u);
  }

  return result;
}

uint64_t AccessCredential.ValidationResult.jwt.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v6;

  sub_1DB226094(v4, v5);

  return sub_1DB226094(v7, v6);
}

uint64_t AccessCredential.ValidationResult.credentialResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 160);
  v25 = *(v1 + 176);
  v26 = v2;
  v4 = *(v1 + 192);
  v27 = *(v1 + 208);
  v5 = *(v1 + 128);
  v7 = *(v1 + 96);
  v21 = *(v1 + 112);
  v6 = v21;
  v22 = v5;
  v8 = *(v1 + 128);
  v9 = *(v1 + 160);
  v23 = *(v1 + 144);
  v10 = v23;
  v24 = v9;
  v11 = *(v1 + 64);
  v18[0] = *(v1 + 48);
  v18[1] = v11;
  v12 = *(v1 + 96);
  v14 = *(v1 + 48);
  v13 = *(v1 + 64);
  v19 = *(v1 + 80);
  v15 = v19;
  v20 = v12;
  *(a1 + 128) = v25;
  *(a1 + 144) = v4;
  *(a1 + 160) = *(v1 + 208);
  *(a1 + 64) = v6;
  *(a1 + 80) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v3;
  *a1 = v14;
  *(a1 + 16) = v13;
  v28 = *(v1 + 224);
  *(a1 + 176) = *(v1 + 224);
  *(a1 + 32) = v15;
  *(a1 + 48) = v7;
  return sub_1DB2260E8(v18, v17);
}

void *AccessCredential.ValidationResult.signatureResult.getter()
{
  v1 = *(v0 + 232);
  sub_1DB226158(v1, *(v0 + 240));
  return v1;
}

uint64_t AccessCredential.ValidationResult.certificates.getter()
{
  v1 = *(v0 + 8);
  if (*(v1 + 16) && (v2 = sub_1DB141B30(6501752, 0xE300000000000000), (v3 & 1) != 0) && (sub_1DB1444CC(*(v1 + 56) + 32 * v2, v6), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC283E8, &qword_1DB2C5ED8), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60), (swift_dynamicCast() & 1) != 0))
  {
    return v5;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t AccessCredential.ValidationResult.hasErrors.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v29 = *(v0 + 176);
  v30 = v1;
  v3 = *(v0 + 192);
  v31 = *(v0 + 208);
  v4 = *(v0 + 128);
  v5 = *(v0 + 96);
  v25 = *(v0 + 112);
  v26 = v4;
  v6 = *(v0 + 128);
  v7 = *(v0 + 160);
  v27 = *(v0 + 144);
  v28 = v7;
  v8 = *(v0 + 64);
  v21 = *(v0 + 48);
  v22 = v8;
  v9 = *(v0 + 96);
  v11 = *(v0 + 48);
  v10 = *(v0 + 64);
  v23 = *(v0 + 80);
  v24 = v9;
  v33[8] = v29;
  v33[9] = v3;
  v33[10] = *(v0 + 208);
  v33[4] = v25;
  v33[5] = v6;
  v33[6] = v27;
  v33[7] = v2;
  v33[0] = v11;
  v33[1] = v10;
  v32 = *(v0 + 224);
  v12 = *(v0 + 232);
  v13 = *(v0 + 240);
  v34 = *(v0 + 224);
  v33[2] = v23;
  v33[3] = v5;
  if (sub_1DB226164(v33) == 1)
  {
    nullsub_1();
  }

  else
  {
    nullsub_1();
    if ((v13 & 1) == 0)
    {
      v14 = 0;
      goto LABEL_6;
    }
  }

  v14 = 1;
LABEL_6:
  v17[8] = v29;
  v17[9] = v30;
  v17[10] = v31;
  v18 = v32;
  v17[4] = v25;
  v17[5] = v26;
  v17[6] = v27;
  v17[7] = v28;
  v17[0] = v21;
  v17[1] = v22;
  v17[2] = v23;
  v17[3] = v24;
  v19 = v12;
  v20 = v13;
  sub_1DB226158(v12, v13);
  sub_1DB2260E8(&v21, v16);
  sub_1DB22616C(v17);
  return v14;
}

char *static AccessCredential.validateToken(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D48, &qword_1DB2C3A00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;

  _s19OnDeviceStorageCore3JWTV4fromACSS_tAC5ErrorOYKcfC(a1, a2, v66, v68);
  if (v3)
  {
    v11 = v66[0];
    v12 = v66[1];
    v13 = v67;
    sub_1DB225318();
    result = swift_allocError();
    *v15 = v11;
    *(v15 + 8) = v12;
    *(v15 + 16) = v13;
  }

  else
  {
    v33 = a1;
    v34 = v8;
    v73 = v68[0];
    v39 = v68[1];
    v16 = v69;
    v17 = v70;
    v35 = v71;
    v37 = v72;
    sub_1DB226094(v69, v70);
    v38 = v17;
    _s19OnDeviceStorageCore16AccessCredentialV39fromPayloadWithoutSignatureVerificationAC10Foundation4DataV_tAC5ErrorOYKcfC(v16, v17, &v41, &v42);
    sub_1DB226298(&v42);
    v62 = v50;
    v63 = v51;
    v64 = v52;
    v65 = v53;
    v58 = v46;
    v59 = v47;
    v60 = v48;
    v61 = v49;
    v54 = v42;
    v55 = v43;
    v56 = v44;
    v57 = v45;
    *&v42 = v73;
    *(&v42 + 1) = v39;
    v36 = v16;
    *&v43 = v16;
    *(&v43 + 1) = v38;
    v18 = v35;
    *&v44 = v35;
    *(&v44 + 1) = v37;
    v40[0] = 0;
    v40[1] = 0;
    JWT.verifySignature(secret:)(v40);
    *&v42 = v33;
    *(&v42 + 1) = a2;
    sub_1DB2BA9C4();
    sub_1DB2261E0();
    sub_1DB226234();
    v19 = sub_1DB2BAD14();
    result = (*(v34 + 8))(v10, v7);
    v20 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      result = sub_1DB1572F0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v20 = result;
      v22 = *(result + 2);
      v21 = *(result + 3);
      if (v22 >= v21 >> 1)
      {
        result = sub_1DB1572F0((v21 > 1), v22 + 1, 1, result);
        v20 = result;
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[16 * v22];
      *(v23 + 4) = 0xD000000000000048;
      *(v23 + 5) = 0x80000001DB2D5050;
    }

    v24 = v39;
    *a3 = v73;
    *(a3 + 8) = v24;
    v25 = v37;
    v26 = v38;
    *(a3 + 16) = v36;
    *(a3 + 24) = v26;
    *(a3 + 32) = v18;
    *(a3 + 40) = v25;
    v27 = v63;
    *(a3 + 176) = v62;
    *(a3 + 192) = v27;
    *(a3 + 208) = v64;
    *(a3 + 224) = v65;
    v28 = v59;
    *(a3 + 112) = v58;
    *(a3 + 128) = v28;
    v29 = v61;
    *(a3 + 144) = v60;
    *(a3 + 160) = v29;
    v30 = v55;
    *(a3 + 48) = v54;
    *(a3 + 64) = v30;
    v31 = v57;
    *(a3 + 80) = v56;
    *(a3 + 96) = v31;
    *(a3 + 232) = 0;
    *(a3 + 240) = 0;
    *(a3 + 248) = v20;
  }

  return result;
}

uint64_t JWT.payloadDescription.getter()
{
  v9[4] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = sub_1DB2BA884();
  v9[0] = 0;
  v2 = [v0 JSONObjectWithData:v1 options:0 error:v9];

  if (v2)
  {
    v3 = v9[0];
    sub_1DB2BB404();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28400, &qword_1DB2C5EF0);
    if (swift_dynamicCast())
    {
      v4 = sub_1DB224FE4(v8);
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else
  {
    v5 = v9[0];
    v6 = sub_1DB2BA7C4();

    swift_willThrow();
    swift_getErrorValue();
    v4 = sub_1DB2BB994();
    MEMORY[0x1E1284A10](v6);
  }

  return v4;
}

uint64_t sub_1DB224FE4(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1DB2BADE4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = objc_opt_self();
  v3 = sub_1DB2BACB4();
  v15[0] = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:v15];

  v5 = v15[0];
  if (v4)
  {
    v6 = sub_1DB2BA8B4();
    v8 = v7;

    sub_1DB2BADD4();
    v9 = sub_1DB2BADB4();
    v11 = v10;
    sub_1DB207494(v6, v8);
    if (v11)
    {
      return v9;
    }
  }

  else
  {
    v13 = v5;
    v14 = sub_1DB2BA7C4();

    swift_willThrow();
    MEMORY[0x1E1284A10](v14);
  }

  return 0xD000000000000025;
}

uint64_t Dictionary<>.prettyPrinted.getter(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1DB2BADE4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = objc_opt_self();
  v4 = sub_1DB2BACB4();
  v16[0] = 0;
  v5 = [v3 dataWithJSONObject:v4 options:1 error:v16];

  v6 = v16[0];
  if (v5)
  {
    v7 = sub_1DB2BA8B4();
    v9 = v8;

    sub_1DB2BADD4();
    v10 = sub_1DB2BADB4();
    v12 = v11;
    sub_1DB207494(v7, v9);
    if (v12)
    {
      return v10;
    }
  }

  else
  {
    v14 = v6;
    v15 = sub_1DB2BA7C4();

    swift_willThrow();
    MEMORY[0x1E1284A10](v15);
  }

  return 0xD000000000000025;
}

unint64_t sub_1DB225318()
{
  result = qword_1ECC283C0;
  if (!qword_1ECC283C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC283C0);
  }

  return result;
}

unint64_t sub_1DB22536C()
{
  result = qword_1EE13FA70;
  if (!qword_1EE13FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA70);
  }

  return result;
}

uint64_t sub_1DB2253C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E1283FC0](v3);
  v14 = v3;
  if (v3)
  {
    v5 = 0;
    v13 = a2 + 32;
    do
    {
      v15 = v5;
      v6 = *(v13 + 24 * v5 + 16);

      sub_1DB2BAE84();
      MEMORY[0x1E1283FC0](*(v6 + 16));
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = v6 + 40;
        do
        {
          v10 = *(v8 + 8);
          v11 = *(v8 + 24);
          v12 = *(v8 + 32);

          sub_1DB2BAE84();
          MEMORY[0x1E1283FC0](v10);
          sub_1DB2BAE84();

          if (v12 == 1)
          {
            sub_1DB2BBA24();
          }

          else
          {
            sub_1DB2BBA24();
            if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v9 = v11;
            }

            else
            {
              v9 = 0;
            }

            MEMORY[0x1E1283FE0](v9);
          }

          v8 += 56;
          sub_1DB2269A0();
          sub_1DB2BB174();

          --v7;
        }

        while (v7);
      }

      v5 = v15 + 1;
    }

    while (v15 + 1 != v14);
  }

  return result;
}

uint64_t sub_1DB22558C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E1283FC0](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {
      v6 = *(v5 + 8);
      v7 = *(v5 + 24);
      v8 = *(v5 + 32);

      sub_1DB2BAE84();
      MEMORY[0x1E1283FC0](v6);
      sub_1DB2BAE84();

      if (v8 == 1)
      {
        sub_1DB2BBA24();
      }

      else
      {
        sub_1DB2BBA24();
        if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v9 = v7;
        }

        else
        {
          v9 = 0;
        }

        MEMORY[0x1E1283FE0](v9);
      }

      v5 += 56;
      sub_1DB2269A0();
      sub_1DB2BB174();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DB2256C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E1283FC0](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 8);
      v8 = *v5;

      sub_1DB2BAE84();
      if (v7 >> 6)
      {
        if (v7 >> 6 != 1)
        {
          v9 = (v6 | v7 ^ 0x80) != 0;
          goto LABEL_12;
        }

        MEMORY[0x1E1283FC0](3);
        if ((v7 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        MEMORY[0x1E1283FC0](2);
        if ((v7 & 1) == 0)
        {
LABEL_10:
          sub_1DB2BBA24();
          v9 = v6;
LABEL_12:
          MEMORY[0x1E1283FC0](v9);
          goto LABEL_4;
        }
      }

      sub_1DB2BBA24();
LABEL_4:
      v5 += 5;
      MEMORY[0x1E1283FC0](v8);

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DB2257C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E1283FC0](v3);
  if (v3)
  {
    v5 = a2 + 64;
    do
    {
      v6 = *(v5 - 24);
      v7 = *(v5 - 16);
      v8 = *(v5 - 8);
      v5 += 40;
      sub_1DB2BAE84();

      MEMORY[0x1E1283FC0](v6);
      MEMORY[0x1E1283FC0](v7);
      MEMORY[0x1E1283FC0](v8);
      result = sub_1DB2BBA24();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s19OnDeviceStorageCore16AccessCredentialV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v4 = *(a1 + 3);
  v3 = *(a1 + 4);
  v5 = *(a1 + 5);
  v46 = *(a1 + 48);
  v7 = a1[7];
  v6 = a1[8];
  v45 = *(a1 + 72);
  v44 = *(a1 + 10);
  v42 = *(a1 + 11);
  v8 = a1[12];
  v40 = *(a1 + 13);
  v33 = *(a1 + 14);
  v30 = a1[16];
  v31 = a1[15];
  v38 = *(a1 + 136);
  v27 = *(a1 + 18);
  v35 = *(a1 + 19);
  v29 = *(a1 + 20);
  v25 = *(a1 + 21);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v15 = *(a2 + 56);
  v14 = *(a2 + 64);
  v16 = *(a2 + 72);
  v43 = *(a2 + 80);
  v41 = *(a2 + 88);
  v17 = *(a2 + 96);
  v39 = *(a2 + 104);
  v32 = *(a2 + 112);
  v19 = *(a2 + 120);
  v18 = *(a2 + 128);
  v37 = *(a2 + 136);
  v26 = *(a2 + 144);
  v34 = *(a2 + 152);
  v28 = *(a2 + 160);
  v36 = *(a2 + 168);
  if ((*a1 != *a2 || *(a1 + 1) != *(a2 + 8)) && (sub_1DB2BB924() & 1) == 0 || (v2 != v9 || v4 != v10) && (sub_1DB2BB924() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    if (!v11 || (sub_1DB1375FC(v3, v11) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v11)
  {
    goto LABEL_12;
  }

  v22 = sub_1DB1375FC(v5, v12);
  v20 = 0;
  if ((v22 & 1) != 0 && v46 == v13 && v7 == v15 && v6 == v14)
  {
    v20 = 0;
    if ((sub_1DB236A6C(v45, v16) & 1) != 0 && v44 == v43)
    {
      if (v42)
      {
        if (!v41)
        {
          goto LABEL_47;
        }

        v20 = 0;
        if ((sub_1DB1375FC(v42, v41) & 1) == 0 || v8 != v17)
        {
          return v20 & 1;
        }
      }

      else
      {
        if (v41)
        {
          goto LABEL_47;
        }
      }

      if ((sub_1DB1375FC(v40, v39) & 1) == 0)
      {
        goto LABEL_12;
      }

      if (v38)
      {
        if ((v37 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v37)
        {
          goto LABEL_12;
        }

        v20 = 0;
        if (v33 != v32 || v31 != v19 || v30 != v18)
        {
          return v20 & 1;
        }
      }

      if (v35)
      {
        v23 = v36;
        if (!v34 || (v27 != v26 || v35 != v34) && (sub_1DB2BB924() & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v23 = v36;
        if (v34)
        {
          goto LABEL_12;
        }
      }

      if (v29)
      {
        if (v28)
        {
          swift_bridgeObjectRetain_n();

          v24 = sub_1DB137B2C(v29, v28);
          swift_bridgeObjectRelease_n();

          if (v24)
          {
            goto LABEL_51;
          }

LABEL_12:
          v20 = 0;
          return v20 & 1;
        }
      }

      else if (!v28)
      {

LABEL_51:

        v20 = sub_1DB13768C(v25, v23);
        goto LABEL_48;
      }

LABEL_47:

      v20 = 0;
LABEL_48:
    }
  }

  return v20 & 1;
}

unint64_t sub_1DB225BD8()
{
  result = qword_1EE13FA88;
  if (!qword_1EE13FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA88);
  }

  return result;
}

unint64_t sub_1DB225C2C()
{
  result = qword_1EE13F198;
  if (!qword_1EE13F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F198);
  }

  return result;
}

unint64_t sub_1DB225C80()
{
  result = qword_1EE13E940;
  if (!qword_1EE13E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E940);
  }

  return result;
}

unint64_t sub_1DB225CD4()
{
  result = qword_1EE13E950;
  if (!qword_1EE13E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E950);
  }

  return result;
}

unint64_t sub_1DB225D28()
{
  result = qword_1EE13E7B0;
  if (!qword_1EE13E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E7B0);
  }

  return result;
}

unint64_t sub_1DB225D7C()
{
  result = qword_1EE13E9C0;
  if (!qword_1EE13E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E9C0);
  }

  return result;
}

unint64_t sub_1DB225DD0()
{
  result = qword_1EE13E958;
  if (!qword_1EE13E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E958);
  }

  return result;
}

unint64_t sub_1DB225E24()
{
  result = qword_1EE1401E8;
  if (!qword_1EE1401E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1401E8);
  }

  return result;
}

unint64_t sub_1DB225E78()
{
  result = qword_1EE13F7D8;
  if (!qword_1EE13F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F7D8);
  }

  return result;
}

uint64_t sub_1DB225ECC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC283D0, &qword_1DB2C5EC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB225F44()
{
  result = qword_1EE13F810;
  if (!qword_1EE13F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F810);
  }

  return result;
}

unint64_t sub_1DB225F98()
{
  result = qword_1EE13F6E0;
  if (!qword_1EE13F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F6E0);
  }

  return result;
}

unint64_t sub_1DB225FEC()
{
  result = qword_1EE13FA90;
  if (!qword_1EE13FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA90);
  }

  return result;
}

unint64_t sub_1DB226040()
{
  result = qword_1EE13F898;
  if (!qword_1EE13F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F898);
  }

  return result;
}

uint64_t sub_1DB226094(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1DB2260E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC283E0, &qword_1DB2C5ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1DB226158(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1DB22616C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC283F0, &unk_1DB2C5EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DB2261E0()
{
  result = qword_1ECC283F8;
  if (!qword_1ECC283F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC283F8);
  }

  return result;
}

unint64_t sub_1DB226234()
{
  result = qword_1EE13F280;
  if (!qword_1EE13F280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC27D48, &qword_1DB2C3A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F280);
  }

  return result;
}

unint64_t sub_1DB2262A0(void *a1)
{
  a1[1] = sub_1DB219160();
  a1[2] = sub_1DB2262D8();
  result = sub_1DB22632C();
  a1[3] = result;
  return result;
}

unint64_t sub_1DB2262D8()
{
  result = qword_1ECC28408;
  if (!qword_1ECC28408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28408);
  }

  return result;
}

unint64_t sub_1DB22632C()
{
  result = qword_1ECC28410;
  if (!qword_1ECC28410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28410);
  }

  return result;
}

unint64_t sub_1DB226388()
{
  result = qword_1ECC28418;
  if (!qword_1ECC28418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28418);
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1DB226410(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB226458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19OnDeviceStorageCore16AccessCredentialV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 24) & 0xF;
  }
}

uint64_t sub_1DB2264F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 25))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 24);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DB226538(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DB226580(uint64_t result, unsigned int a2)
{
  v2 = a2 - 8;
  if (a2 >= 8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 8;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_1DB226624(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB22666C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessCredential.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessCredential.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DB226850()
{
  result = qword_1ECC28420;
  if (!qword_1ECC28420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28420);
  }

  return result;
}

unint64_t sub_1DB2268A8()
{
  result = qword_1EE13FA78;
  if (!qword_1EE13FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA78);
  }

  return result;
}

unint64_t sub_1DB226900()
{
  result = qword_1EE13FA80;
  if (!qword_1EE13FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA80);
  }

  return result;
}

unint64_t sub_1DB226954(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB2BB6F4();

  if (v2 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DB2269A0()
{
  result = qword_1ECC28428;
  if (!qword_1ECC28428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28428);
  }

  return result;
}

uint64_t AccessType.description.getter()
{
  v1 = *v0;
  if (*v0)
  {
    MEMORY[0x1E1283490](115, 0xE100000000000000);
    if ((v1 & 2) == 0)
    {
LABEL_3:
      if ((v1 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      MEMORY[0x1E1283490](117, 0xE100000000000000);
      if ((v1 & 8) == 0)
      {
        return 0;
      }

      goto LABEL_5;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_3;
  }

  MEMORY[0x1E1283490](105, 0xE100000000000000);
  if ((v1 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v1 & 8) != 0)
  {
LABEL_5:
    MEMORY[0x1E1283490](100, 0xE100000000000000);
  }

  return 0;
}

uint64_t sub_1DB226AE0()
{
  v0 = sub_1DB2BA614();
  __swift_allocate_value_buffer(v0, qword_1EE1401F8);
  __swift_project_value_buffer(v0, qword_1EE1401F8);
  return sub_1DB2BA604();
}

uint64_t AccessType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v4 = sub_1DB2BA614();
  v36 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v26 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2BBA74();
  if (v2)
  {
    goto LABEL_8;
  }

  v26 = v7;
  v27 = v12;
  v28 = v10;
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v13 = sub_1DB2BB934();
  v15 = v14;
  v16 = v27;
  sub_1DB2BA604();
  if (qword_1EE1401F0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_1EE1401F8);
  v17 = v36;
  (*(v36 + 16))(v26, v16, v4);
  sub_1DB227180(&qword_1EE1402A8, MEMORY[0x1E69680D0]);
  v18 = v28;
  sub_1DB2BB434();
  sub_1DB227180(&unk_1EE1402B0, MEMORY[0x1E69680C8]);
  v19 = sub_1DB2BAD54();
  v20 = *(v17 + 8);
  v20(v18, v4);
  v20(v16, v4);
  if ((v19 & 1) == 0)
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0xD000000000000033, 0x80000001DB2D5400);
    MEMORY[0x1E1283490](v13, v15);

    sub_1DB2BB564();
    swift_allocError();
    sub_1DB2BB534();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v35);
    a1 = v29;
LABEL_8:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v33 = v13;
  v34 = v15;
  v31 = 115;
  v32 = 0xE100000000000000;
  sub_1DB143508();
  if (sub_1DB2BB3F4())
  {
    v21 = 1;
  }

  else
  {
    v33 = v13;
    v34 = v15;
    v31 = 114;
    v32 = 0xE100000000000000;
    v21 = sub_1DB2BB3F4() & 1;
  }

  v33 = v13;
  v34 = v15;
  v31 = 105;
  v32 = 0xE100000000000000;
  if (sub_1DB2BB3F4())
  {
    v21 |= 2uLL;
  }

  v33 = v13;
  v34 = v15;
  v31 = 117;
  v32 = 0xE100000000000000;
  if (sub_1DB2BB3F4())
  {
    v21 |= 4uLL;
  }

  v33 = v13;
  v34 = v15;
  v31 = 100;
  v32 = 0xE100000000000000;
  if (sub_1DB2BB3F4())
  {
    v21 |= 8uLL;
  }

  v33 = v13;
  v34 = v15;
  v31 = 119;
  v32 = 0xE100000000000000;
  v24 = sub_1DB2BB3F4();

  if (v24)
  {
    v25 = v21 | 0xE;
  }

  else
  {
    v25 = v21;
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  v22 = v29;
  *v30 = v25;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t AccessType.encode(to:)(uint64_t a1)
{
  AccessType.description.getter();
  sub_1DB2BAEF4();
}

uint64_t sub_1DB22705C(uint64_t a1)
{
  AccessType.description.getter();
  sub_1DB2BAEF4();
}

uint64_t sub_1DB2270C8()
{
  v1 = *v0;
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v1);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB22713C(uint64_t a1)
{
  v2 = *v1;
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v2);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB227180(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DB2BA614();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB2271C8()
{
  result = qword_1ECC28430;
  if (!qword_1ECC28430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28430);
  }

  return result;
}

unint64_t sub_1DB227220()
{
  result = qword_1ECC28438;
  if (!qword_1ECC28438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28438);
  }

  return result;
}

unint64_t sub_1DB227274()
{
  result = qword_1EE13F190;
  if (!qword_1EE13F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F190);
  }

  return result;
}

unint64_t sub_1DB2272CC()
{
  result = qword_1EE13F188;
  if (!qword_1EE13F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F188);
  }

  return result;
}

uint64_t DataDeletionTrigger.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DataDeletionTrigger.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2BBA74();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = sub_1DB2BB934();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static DataDeletionTrigger.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB2BB924();
  }
}

uint64_t DataDeletionTrigger.hashValue.getter()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  return sub_1DB2BBA54();
}

uint64_t sub_1DB2274C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2BBA74();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = sub_1DB2BB934();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB2275A8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB2BB924();
  }
}

uint64_t sub_1DB2275D8()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  return sub_1DB2BBA54();
}

uint64_t sub_1DB22762C(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  return sub_1DB2BBA54();
}

unint64_t sub_1DB227678()
{
  result = qword_1ECC28440;
  if (!qword_1ECC28440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28440);
  }

  return result;
}

uint64_t sub_1DB2276CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB227714(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB227760@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void _s19OnDeviceStorageCore17DataSpecificationV05tableF03for2inAC9NamespaceV5TableVSS_SStAA16AccessCredentialV5ErrorOYKF(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4;
  v33 = *v6;
  DataSpecification.subscript.getter(a3, a4, &v26);
  v13 = v27;
  if (v27)
  {
    v24 = v8;
    v14 = v26;
    v15 = v28;
    v33 = v26;
    v34 = v27;
    v35 = v28;
    DataSpecification.Namespace.subscript.getter(a1, a2, &v26);
    v16 = v27;
    if (v27)
    {
      v25 = v32;
      v23 = v31;
      v17 = v30;
      v18 = v29;
      v19 = v28;
      v20 = v26;
      sub_1DB1718E4(v14, v13, v15);
      *a6 = v20;
      *(a6 + 8) = v16;
      *(a6 + 16) = v19;
      *(a6 + 24) = v18 & 1;
      *(a6 + 32) = v17;
      *(a6 + 40) = v23 & 1;
      *(a6 + 48) = v25;
      return;
    }

    sub_1DB1718E4(v14, v13, v15);
    v8 = v24;
  }

  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1DB2BB4F4();
  MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
  MEMORY[0x1E1283490](a1, a2);
  MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
  MEMORY[0x1E1283490](a3, v8);
  v21 = v26;
  v22 = v27;
  *a5 = v26;
  *(a5 + 8) = v22;
  *(a5 + 16) = 0;
  *(a5 + 24) = 5;
  v26 = v21;
  v27 = v22;
  v28 = 0;
  v29 = 5;
  sub_1DB171870();
  swift_willThrowTypedImpl();
}

uint64_t DataSpecification.Namespace.Table.columnSpecs(for:)(uint64_t result)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = 0;
  v20 = result + 32;
  v21 = *(v1 + 48);
  v4 = MEMORY[0x1E69E7CC0];
  v22 = *(result + 16);
  while (2)
  {
    v23 = v4;
LABEL_4:
    if (v3 >= v2)
    {
      __break(1u);
    }

    else
    {
      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        v6 = (v21 + 64);
        v7 = (v20 + 16 * v3);
        v8 = *v7;
        v9 = v7[1];
        v24 = v3 + 1;
        v10 = *(v21 + 16) + 1;
        while (1)
        {
          if (!--v10)
          {
            v2 = v22;
            v4 = v23;
            v3 = v24;
            if (v5 != v22)
            {
              goto LABEL_4;
            }

            return v4;
          }

          v12 = *(v6 - 4);
          v11 = *(v6 - 3);
          v13 = *(v6 - 2);
          v14 = *(v6 - 8);
          v15 = *v6;
          if (v12 == v8 && v11 == v9)
          {
            break;
          }

          v6 += 5;
          result = sub_1DB2BB924();
          if (result)
          {
            goto LABEL_17;
          }
        }

        v12 = v8;
LABEL_17:

        v4 = v23;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1DB157674(0, *(v23 + 16) + 1, 1, v23);
          v4 = result;
        }

        v18 = *(v4 + 16);
        v17 = *(v4 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_1DB157674((v17 > 1), v18 + 1, 1, v4);
          v4 = result;
        }

        *(v4 + 16) = v18 + 1;
        v19 = v4 + 40 * v18;
        *(v19 + 32) = v12;
        *(v19 + 40) = v11;
        *(v19 + 48) = v13;
        *(v19 + 56) = v14;
        *(v19 + 64) = v15;
        v2 = v22;
        v3 = v24;
        if (v5 != v22)
        {
          continue;
        }

        return v4;
      }
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB227B48(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1DB2BAFD4();
  }

  else
  {
    return 0;
  }
}

uint64_t DataSpecification.Namespace.Table.Column.Datatype.sizeLimit.getter()
{
  v1 = v0[8] >> 6;
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *v0;
  }

  if (v1 == 1)
  {
    return *v0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB227C1C(uint64_t result)
{
  v2 = result;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    *result = 0xD000000000000018;
    *(result + 8) = 0x80000001DB2D5870;
    *(result + 16) = 0;
    *(result + 24) = 5;
LABEL_15:
    sub_1DB171870();
    return swift_willThrowTypedImpl();
  }

  v4 = 0;
  while (2)
  {
    v5 = (*v1 + 32 + 24 * v4);
    v6 = v5[2];
    v7 = *(v6 + 16);
    if (!v7)
    {
      v19 = *v5;
      v20 = v5[1];

      sub_1DB2BB4F4();

      v21 = 0xD000000000000024;
      v22 = 0x80000001DB2D5840;
      MEMORY[0x1E1283490](v19, v20);
LABEL_14:

      *v2 = v21;
      *(v2 + 8) = v22;
      *(v2 + 16) = 0;
      *(v2 + 24) = 5;
      goto LABEL_15;
    }

    ++v4;
    v8 = (v6 + 32);
    v9 = v7 + 1;
    while (--v9)
    {
      if (!*(v8[6] + 16))
      {
        v15 = *v5;
        v14 = v5[1];
        v12 = *v8;
        v13 = v8[1];

        v21 = 0;
        v22 = 0xE000000000000000;
        sub_1DB2BB4F4();
        MEMORY[0x1E1283490](0xD000000000000021, 0x80000001DB2D5810);
        MEMORY[0x1E1283490](v12, v13);
        goto LABEL_13;
      }

      v10 = v8 + 7;
      v11 = v8[2];
      v8 += 7;
      if (v11 <= 0)
      {
        v15 = *v5;
        v14 = v5[1];
        v17 = *(v10 - 7);
        v16 = *(v10 - 6);

        v21 = 0;
        v22 = 0xE000000000000000;
        sub_1DB2BB4F4();
        MEMORY[0x1E1283490](0xD000000000000013, 0x80000001DB2D57F0);
        v18 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v18);

        MEMORY[0x1E1283490](0x617420726F66202CLL, 0xED0000203A656C62);
        MEMORY[0x1E1283490](v17, v16);
LABEL_13:

        MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
        MEMORY[0x1E1283490](v15, v14);
        goto LABEL_14;
      }
    }

    if (v4 != v3)
    {
      continue;
    }

    return result;
  }
}

OnDeviceStorageCore::DataSpecification::Namespace::Table::EvictionPolicy_optional __swiftcall DataSpecification.Namespace.Table.EvictionPolicy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t DataSpecification.Namespace.Table.EvictionPolicy.rawValue.getter()
{
  if (*v0)
  {
    return 0x65726F6E6769;
  }

  else
  {
    return 7697004;
  }
}

uint64_t sub_1DB227FA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65726F6E6769;
  }

  else
  {
    v3 = 7697004;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x65726F6E6769;
  }

  else
  {
    v5 = 7697004;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB2BB924();
  }

  return v8 & 1;
}

uint64_t sub_1DB228044()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB2280BC(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB228120(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB2281A0(uint64_t *a1@<X8>)
{
  v2 = 7697004;
  if (*v1)
  {
    v2 = 0x65726F6E6769;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t DataSpecification.Namespace.Table.Column.Datatype.description.getter()
{
  v1 = *(v0 + 8);
  if (!(v1 >> 6))
  {
    if (v1)
    {
      return 116;
    }

    v3 = 116;
    goto LABEL_13;
  }

  if (v1 >> 6 == 1)
  {
    if (v1)
    {
      return 98;
    }

    v3 = 98;
LABEL_13:
    v5 = v3;
    v4 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v4);

    return v5;
  }

  if (*v0 | v1 ^ 0x80)
  {
    return 114;
  }

  else
  {
    return 105;
  }
}

uint64_t sub_1DB228354@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  MEMORY[0x1E1283490]();

  MEMORY[0x1E1283490](34, 0xE100000000000000);
  v6 = sub_1DB2B73AC(34, 0xE100000000000000);
  v8 = v7;
  sub_1DB2BA5C4();
  swift_allocObject();
  sub_1DB2BA5B4();
  sub_1DB22F0C4();
  sub_1DB2BA5A4();
  if (v3)
  {

    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0xD000000000000028, 0x80000001DB2D57C0);
    swift_getErrorValue();
    sub_1DB2BB914();
    MEMORY[0x1E1283490](41, 0xE100000000000000);
    *a2 = 0;
    *(a2 + 8) = 0xE000000000000000;
    *(a2 + 16) = 0;
    *(a2 + 24) = 6;
    sub_1DB171870();
    swift_willThrowTypedImpl();
    sub_1DB207494(v6, v8);
    return MEMORY[0x1E1284A10](v3);
  }

  else
  {
    sub_1DB207494(v6, v8);

    *a3 = 34;
    *(a3 + 8) = 0;
  }

  return result;
}

unsigned __int8 *_s19OnDeviceStorageCore17DataSpecificationV9NamespaceV5TableV6ColumnV8DatatypeO4fromAKs7Decoder_p_tAA16AccessCredentialV5ErrorOYKcfC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2BBA74();
  if (v3)
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0xD00000000000002ALL, 0x80000001DB2D5440);
    swift_getErrorValue();
    sub_1DB2BB914();
    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v7 = v54;
    v8 = v55;
    *a2 = v54;
    *(a2 + 8) = v8;
    *(a2 + 16) = 0;
    *(a2 + 24) = 6;
    v54 = v7;
    v55 = v8;
    v56 = 0;
    LOBYTE(v57) = 6;
    sub_1DB171870();
    swift_willThrowTypedImpl();
    MEMORY[0x1E1284A10](v3);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(&v54, v57);
  v10 = sub_1DB2BB934();
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_1(&v54);
  v13 = sub_1DB227B48(v10, v12);
  if (!v14)
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1DB2BB4F4();

    v54 = 0xD00000000000002DLL;
    v55 = 0x80000001DB2D5470;
    v34 = v10;
LABEL_80:
    MEMORY[0x1E1283490](v34, v12);
    goto LABEL_81;
  }

  v52 = v13;
  v53 = v14;

  v51 = v10;
  v15 = sub_1DB22DFB4(1uLL, v10, v12);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = MEMORY[0x1E12833E0](v15, v17, v19, v21);
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  v26 = v22 & 0xFFFFFFFFFFFFLL;
  if ((v24 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v24) & 0xF;
  }

  else
  {
    v27 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    if ((v24 & 0x1000000000000000) == 0)
    {
      if ((v24 & 0x2000000000000000) != 0)
      {
        v54 = v22;
        v55 = v24 & 0xFFFFFFFFFFFFFFLL;
        if (v22 == 43)
        {
          if (v25)
          {
            v29 = v22;
            if (--v25)
            {
              v30 = 0;
              v39 = &v54 + 1;
              while (1)
              {
                v40 = *v39 - 48;
                if (v40 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v30, 0xAuLL))
                {
                  break;
                }

                v33 = __CFADD__(10 * v30, v40);
                v30 = 10 * v30 + v40;
                if (v33)
                {
                  break;
                }

                ++v39;
                if (!--v25)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_70;
          }

LABEL_105:
          __break(1u);
          return result;
        }

        if (v22 != 45)
        {
          v29 = v22;
          if (v25)
          {
            v30 = 0;
            v42 = &v54;
            while (1)
            {
              v43 = *v42 - 48;
              if (v43 > 9)
              {
                break;
              }

              if (!is_mul_ok(v30, 0xAuLL))
              {
                break;
              }

              v33 = __CFADD__(10 * v30, v43);
              v30 = 10 * v30 + v43;
              if (v33)
              {
                break;
              }

              v42 = (v42 + 1);
              if (!--v25)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

        if (v25)
        {
          v29 = v22;
          if (--v25)
          {
            v30 = 0;
            v35 = &v54 + 1;
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                break;
              }

              if (!is_mul_ok(v30, 0xAuLL))
              {
                break;
              }

              v33 = 10 * v30 >= v36;
              v30 = 10 * v30 - v36;
              if (!v33)
              {
                break;
              }

              ++v35;
              if (!--v25)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }
      }

      else
      {
        if ((v22 & 0x1000000000000000) != 0)
        {
          result = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          result = sub_1DB2BB5B4();
        }

        v28 = *result;
        if (v28 == 43)
        {
          if (v26 >= 1)
          {
            v29 = v22;
            v25 = v26 - 1;
            if (v26 != 1)
            {
              v30 = 0;
              if (result)
              {
                v37 = result + 1;
                while (1)
                {
                  v38 = *v37 - 48;
                  if (v38 > 9)
                  {
                    goto LABEL_70;
                  }

                  if (!is_mul_ok(v30, 0xAuLL))
                  {
                    goto LABEL_70;
                  }

                  v33 = __CFADD__(10 * v30, v38);
                  v30 = 10 * v30 + v38;
                  if (v33)
                  {
                    goto LABEL_70;
                  }

                  ++v37;
                  if (!--v25)
                  {
                    goto LABEL_71;
                  }
                }
              }

              goto LABEL_62;
            }

            goto LABEL_70;
          }

          goto LABEL_104;
        }

        if (v28 != 45)
        {
          v29 = v22;
          if (v26)
          {
            v30 = 0;
            if (result)
            {
              while (1)
              {
                v41 = *result - 48;
                if (v41 > 9)
                {
                  goto LABEL_70;
                }

                if (!is_mul_ok(v30, 0xAuLL))
                {
                  goto LABEL_70;
                }

                v33 = __CFADD__(10 * v30, v41);
                v30 = 10 * v30 + v41;
                if (v33)
                {
                  goto LABEL_70;
                }

                ++result;
                if (!--v26)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_62;
          }

LABEL_70:
          v30 = 0;
          LOBYTE(v25) = 1;
LABEL_71:
          if (v25)
          {
LABEL_72:

            v54 = 0;
            v55 = 0xE000000000000000;
            sub_1DB2BB4F4();

            v54 = 0xD000000000000025;
            v55 = 0x80000001DB2D54A0;
            MEMORY[0x1E1283490](v29, v24);
LABEL_81:

            v47 = v54;
            v48 = v55;
            *a2 = v54;
            *(a2 + 8) = v48;
            *(a2 + 16) = 0;
            *(a2 + 24) = 6;
            v54 = v47;
            v55 = v48;
            v56 = 0;
            LOBYTE(v57) = 6;
            sub_1DB171870();
            swift_willThrowTypedImpl();
            return __swift_destroy_boxed_opaque_existential_1(a1);
          }

          goto LABEL_74;
        }

        if (v26 >= 1)
        {
          v29 = v22;
          v25 = v26 - 1;
          if (v26 != 1)
          {
            v30 = 0;
            if (result)
            {
              v31 = result + 1;
              while (1)
              {
                v32 = *v31 - 48;
                if (v32 > 9)
                {
                  goto LABEL_70;
                }

                if (!is_mul_ok(v30, 0xAuLL))
                {
                  goto LABEL_70;
                }

                v33 = 10 * v30 >= v32;
                v30 = 10 * v30 - v32;
                if (!v33)
                {
                  goto LABEL_70;
                }

                ++v31;
                if (!--v25)
                {
                  goto LABEL_71;
                }
              }
            }

LABEL_62:
            LOBYTE(v25) = 0;
            goto LABEL_71;
          }

          goto LABEL_70;
        }

        __break(1u);
      }

      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v29 = v22;
    v30 = sub_1DB22D764(v22, v24, 10);
    v50 = v44;

    if (v50)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v30 = 0;
  }

LABEL_74:

  if (v52 == 105 && v53 == 0xE100000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    if (v27)
    {
      v54 = 0;
      v55 = 0xE000000000000000;
      sub_1DB2BB4F4();
      v45 = "ted for REAL datatype: ";
      v46 = 0xD00000000000003ALL;
LABEL_79:
      MEMORY[0x1E1283490](v46, v45 | 0x8000000000000000);
      v34 = v51;
      goto LABEL_80;
    }

    v30 = 0;
    v49 = 0x80;
  }

  else if (v52 == 114 && v53 == 0xE100000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    if (v27)
    {
      v54 = 0;
      v55 = 0xE000000000000000;
      sub_1DB2BB4F4();
      v45 = "e for column datatype: ";
      v46 = 0xD000000000000037;
      goto LABEL_79;
    }

    v49 = 0x80;
    v30 = 1;
  }

  else
  {

    if (v52 == 116 && v53 == 0xE100000000000000 || (sub_1DB2BB924() & 1) != 0)
    {
      v49 = v27 == 0;
    }

    else
    {
      if ((v52 != 98 || v53 != 0xE100000000000000) && (sub_1DB2BB924() & 1) == 0)
      {
        v54 = 0;
        v55 = 0xE000000000000000;
        sub_1DB2BB4F4();

        v54 = 0xD000000000000027;
        v55 = 0x80000001DB2D54D0;
        MEMORY[0x1E1283490](v52, v53);
        goto LABEL_81;
      }

      if (v27)
      {
        v49 = 64;
      }

      else
      {
        v49 = 65;
      }
    }
  }

  *a3 = v30;
  *(a3 + 8) = v49;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DataSpecification.Namespace.Table.Column.Datatype.encode(to:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!(v2 >> 6))
  {
    if (v2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v2 >> 6 == 1 && (v2 & 1) == 0)
  {
LABEL_8:
    v3 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v3);
  }

LABEL_9:
  sub_1DB2BAEF4();
}

uint64_t DataSpecification.Namespace.Table.Column.Datatype.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 >> 6)
  {
    if (v2 >> 6 != 1)
    {
      v4 = (v1 | v2 ^ 0x80) != 0;
      return MEMORY[0x1E1283FC0](v4);
    }

    MEMORY[0x1E1283FC0](3);
    if (v2)
    {
      return sub_1DB2BBA24();
    }
  }

  else
  {
    MEMORY[0x1E1283FC0](2);
    if (v2)
    {
      return sub_1DB2BBA24();
    }
  }

  sub_1DB2BBA24();
  v4 = v1;
  return MEMORY[0x1E1283FC0](v4);
}

uint64_t DataSpecification.Namespace.Table.Column.Datatype.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1DB2BBA04();
  if (v2 >> 6)
  {
    if (v2 >> 6 != 1)
    {
      v4 = (v1 | v2 ^ 0x80) != 0;
      goto LABEL_9;
    }

    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  MEMORY[0x1E1283FC0](v3);
  if ((v2 & 1) == 0)
  {
    sub_1DB2BBA24();
    v4 = v1;
LABEL_9:
    MEMORY[0x1E1283FC0](v4);
    return sub_1DB2BBA54();
  }

  sub_1DB2BBA24();
  return sub_1DB2BBA54();
}

__n128 sub_1DB228F44@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s19OnDeviceStorageCore17DataSpecificationV9NamespaceV5TableV6ColumnV8DatatypeO4fromAKs7Decoder_p_tAA16AccessCredentialV5ErrorOYKcfC(a1, &v8, a2);
  if (v2)
  {
    v7 = v8;
    v4 = v9;
    v5 = v10;
    sub_1DB171870();
    swift_allocError();
    result = v7;
    *v6 = v7;
    v6[1].n128_u64[0] = v4;
    v6[1].n128_u8[8] = v5;
  }

  return result;
}

uint64_t sub_1DB228FB4(uint64_t a1)
{
  DataSpecification.Namespace.Table.Column.Datatype.description.getter();
  sub_1DB2BAEF4();
}

uint64_t sub_1DB22903C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1DB2BBA04();
  if (v3 >> 6)
  {
    if (v3 >> 6 != 1)
    {
      v5 = (v2 | v3 ^ 0x80) != 0;
      goto LABEL_9;
    }

    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  MEMORY[0x1E1283FC0](v4);
  if ((v3 & 1) == 0)
  {
    sub_1DB2BBA24();
    v5 = v2;
LABEL_9:
    MEMORY[0x1E1283FC0](v5);
    return sub_1DB2BBA54();
  }

  sub_1DB2BBA24();
  return sub_1DB2BBA54();
}

uint64_t DataSpecification.Namespace.Table.Column.Attributes.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    if ((v1 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    MEMORY[0x1E1283490](117, 0xE100000000000000);
    if ((v1 & 4) == 0)
    {
      return 0;
    }

    goto LABEL_4;
  }

  MEMORY[0x1E1283490](112, 0xE100000000000000);
  if ((v1 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v1 & 4) != 0)
  {
LABEL_4:
    MEMORY[0x1E1283490](110, 0xE100000000000000);
  }

  return 0;
}

uint64_t sub_1DB2291A8@<X0>(uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  MEMORY[0x1E1283490]();

  MEMORY[0x1E1283490](34, 0xE100000000000000);
  v6 = sub_1DB2B73AC(34, 0xE100000000000000);
  v8 = v7;
  sub_1DB2BA5C4();
  swift_allocObject();
  sub_1DB2BA5B4();
  sub_1DB22F070();
  sub_1DB2BA5A4();
  if (v3)
  {

    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0xD00000000000002ALL, 0x80000001DB2D5790);
    swift_getErrorValue();
    sub_1DB2BB914();
    MEMORY[0x1E1283490](41, 0xE100000000000000);
    *a2 = 0;
    *(a2 + 8) = 0xE000000000000000;
    *(a2 + 16) = 0;
    *(a2 + 24) = 6;
    sub_1DB171870();
    swift_willThrowTypedImpl();
    sub_1DB207494(v6, v8);
    return MEMORY[0x1E1284A10](v3);
  }

  else
  {
    sub_1DB207494(v6, v8);

    *a3 = 34;
  }

  return result;
}

uint64_t sub_1DB22935C()
{
  v0 = sub_1DB2BA614();
  __swift_allocate_value_buffer(v0, qword_1EE13F8D0);
  __swift_project_value_buffer(v0, qword_1EE13F8D0);
  return sub_1DB2BA604();
}

uint64_t _s19OnDeviceStorageCore17DataSpecificationV9NamespaceV5TableV6ColumnV10AttributesV4fromAKs7Decoder_p_tAA16AccessCredentialV5ErrorOYKcfC@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v43 = a3;
  v44 = a2;
  v5 = sub_1DB2BA614();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  v15 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1DB2BBA74();
  if (v3)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0xD00000000000002CLL, 0x80000001DB2D5580);
    swift_getErrorValue();
    sub_1DB2BB914();
    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v17 = v48;
    v18 = v49;
    v19 = v44;
    *v44 = v48;
    v19[1] = v18;
    v19[2] = 0;
    *(v19 + 24) = 6;
    v48 = v17;
    v49 = v18;
    v50 = 0;
    LOBYTE(v51) = 6;
    sub_1DB171870();
    swift_willThrowTypedImpl();
    MEMORY[0x1E1284A10](v3);
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v39 = v14;
  v40 = v9;
  v41 = v12;
  v42 = v6;
  __swift_project_boxed_opaque_existential_1(&v48, v51);
  v16 = sub_1DB2BB934();
  v22 = v21;
  v23 = v16;
  __swift_destroy_boxed_opaque_existential_1(&v48);
  v24 = v39;
  v38 = v23;
  sub_1DB2BA604();
  if (qword_1EE13F8C8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_1EE13F8D0);
  v25 = v42;
  (*(v42 + 16))(v40, v24, v5);
  sub_1DB227180(&qword_1EE1402A8, MEMORY[0x1E69680D0]);
  v26 = v41;
  sub_1DB2BB434();
  sub_1DB227180(&unk_1EE1402B0, MEMORY[0x1E69680C8]);
  v27 = sub_1DB2BAD54();
  v28 = *(v25 + 8);
  v28(v26, v5);
  v28(v24, v5);
  if ((v27 & 1) == 0)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0xD000000000000033, 0x80000001DB2D55B0);
    MEMORY[0x1E1283490](v38, v22);

    v35 = v48;
    v36 = v49;
    v37 = v44;
    *v44 = v48;
    v37[1] = v36;
    v37[2] = 0;
    *(v37 + 24) = 6;
    v48 = v35;
    v49 = v36;
    goto LABEL_16;
  }

  v29 = v38;
  v48 = v38;
  v49 = v22;
  v46 = 112;
  v47 = 0xE100000000000000;
  sub_1DB143508();
  v30 = sub_1DB2BB3F4();
  v31 = v30 & 1;
  v48 = v29;
  v49 = v22;
  v46 = 117;
  v47 = 0xE100000000000000;
  if (sub_1DB2BB3F4())
  {
    v31 = v30 & 1 | 2;
  }

  v48 = v29;
  v49 = v22;
  v46 = 110;
  v47 = 0xE100000000000000;
  v32 = sub_1DB2BB3F4();

  v33 = v31 | 4;
  if ((v32 & 1) == 0)
  {
    v33 = v31;
  }

  if (v33 >= 4 && (v33 & 1) != 0)
  {
    v34 = v44;
    *v44 = 0xD000000000000055;
    v34[1] = 0x80000001DB2D55F0;
    v34[2] = 0;
    *(v34 + 24) = 6;
    v48 = 0xD000000000000055;
    v49 = 0x80000001DB2D55F0;
LABEL_16:
    v50 = 0;
    LOBYTE(v51) = 6;
    sub_1DB171870();
    swift_willThrowTypedImpl();
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  *v43 = v33;
  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t DataSpecification.Namespace.Table.Column.Attributes.encode(to:)(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    MEMORY[0x1E1283490](117, 0xE100000000000000);
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  MEMORY[0x1E1283490](112, 0xE100000000000000);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v2 & 4) != 0)
  {
LABEL_4:
    MEMORY[0x1E1283490](110, 0xE100000000000000);
  }

LABEL_5:
  sub_1DB2BAEF4();
}

__n128 sub_1DB229960@<Q0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  _s19OnDeviceStorageCore17DataSpecificationV9NamespaceV5TableV6ColumnV10AttributesV4fromAKs7Decoder_p_tAA16AccessCredentialV5ErrorOYKcfC(a1, v8.n128_u64, a2);
  if (v2)
  {
    v7 = v8;
    v4 = v9;
    v5 = v10;
    sub_1DB171870();
    swift_allocError();
    result = v7;
    *v6 = v7;
    v6[1].n128_u64[0] = v4;
    v6[1].n128_u8[8] = v5;
  }

  return result;
}

uint64_t sub_1DB2299D0(uint64_t a1)
{
  DataSpecification.Namespace.Table.Column.Attributes.description.getter();
  sub_1DB2BAEF4();
}

uint64_t DataSpecification.Namespace.Table.Column.name.getter()
{
  v1 = *v0;

  return v1;
}

void DataSpecification.Namespace.Table.Column.datatype.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t DataSpecification.Namespace.Table.Column.description.getter()
{
  v1 = *v0;
  v2 = v0[4];
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    MEMORY[0x1E1283490](117, 0xE100000000000000);
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  MEMORY[0x1E1283490](112, 0xE100000000000000);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v2 & 4) != 0)
  {
LABEL_4:
    MEMORY[0x1E1283490](110, 0xE100000000000000);
  }

LABEL_5:

  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v3 = DataSpecification.Namespace.Table.Column.Datatype.description.getter();
  MEMORY[0x1E1283490](v3);

  MEMORY[0x1E1283490](0, 0xE000000000000000);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  return v1;
}

uint64_t _s19OnDeviceStorageCore17DataSpecificationV9NamespaceV5TableV6ColumnV4fromAIs7Decoder_p_tAA16AccessCredentialV5ErrorOYKcfC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2BBA74();
  if (v3)
  {
    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0xD000000000000028, 0x80000001DB2D5650);
    swift_getErrorValue();
    sub_1DB2BB914();
    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v7 = v42;
    *a2 = v42;
    *(a2 + 16) = 0;
    *(a2 + 24) = 6;
    v42 = v7;
    v43 = 0;
    LOBYTE(v44) = 6;
    sub_1DB171870();
    swift_willThrowTypedImpl();
    MEMORY[0x1E1284A10](v3);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(&v42, v44);
  v9 = sub_1DB2BB934();
  v11 = v10;

  __swift_destroy_boxed_opaque_existential_1(&v42);
  *&v42 = v9;
  *(&v42 + 1) = v11;
  v40 = 40;
  v41 = 0xE100000000000000;
  sub_1DB143508();
  v12 = sub_1DB2BB3A4();

  v13 = v12[2];
  if (v13 - 1 > 1)
  {

    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    sub_1DB2BB4F4();

    v29 = 0x80000001DB2D5680;
    v30 = 0xD00000000000001DLL;
LABEL_18:
    *&v42 = v30;
    *(&v42 + 1) = v29;
    MEMORY[0x1E1283490](v9, v11);
LABEL_19:

LABEL_20:
    v31 = v42;
    *a2 = v42;
    *(a2 + 16) = 0;
    *(a2 + 24) = 6;
    v42 = v31;
    v43 = 0;
    LOBYTE(v44) = 6;
    sub_1DB171870();
    swift_willThrowTypedImpl();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v12[5];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12[4] & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    sub_1DB2BB4F4();

    v29 = 0x80000001DB2D5730;
    v30 = 0xD000000000000026;
    goto LABEL_18;
  }

  v38 = v12[4];
  v39 = v12[5];

  if (v13 > v12[2])
  {
    __break(1u);
    goto LABEL_26;
  }

  v16 = &v12[2 * v13 + 4];
  v17 = *(v16 - 16);
  v18 = *(v16 - 8);

  if ((sub_1DB2BAF94() & 1) == 0)
  {

    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0xD000000000000029, 0x80000001DB2D56A0);
    MEMORY[0x1E1283490](v17, v18);

    MEMORY[0x1E1283490](0xD00000000000001DLL, 0x80000001DB2D56D0);
    goto LABEL_20;
  }

  v37 = v17;
  v19 = sub_1DB22E064(1, v17, v18);
  v21 = v20;
  v23 = v22;
  v25 = v24;

  *&v42 = v19;
  *(&v42 + 1) = v21;
  v43 = v23;
  v44 = v25;
  v40 = 44;
  v41 = 0xE100000000000000;
  sub_1DB22E130();
  v26 = sub_1DB2BB3A4();

  v27 = *(v26 + 16);
  if ((v27 - 1) > 1)
  {

    *&v42 = 0;
    *(&v42 + 1) = 0xE000000000000000;
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0xD000000000000029, 0x80000001DB2D56A0);
    MEMORY[0x1E1283490](v37, v18);

    MEMORY[0x1E1283490](0xD000000000000036, 0x80000001DB2D56F0);
    v32 = *(v26 + 16);

    v40 = v32;
    v33 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v33);
    goto LABEL_19;
  }

  v28 = *(v26 + 16);
  if (!v28)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v27 != 2)
  {

    v34 = 0;
    goto LABEL_24;
  }

  if (v28 != 1)
  {

    sub_1DB2291A8(&v42, &v40);
    v34 = v40;
LABEL_24:
    sub_1DB228354(&v42, &v40);
    v35 = v40;
    v36 = v41;
    *a3 = v38;
    *(a3 + 8) = v39;
    *(a3 + 16) = v35;
    *(a3 + 24) = v36;
    *(a3 + 32) = v34;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t DataSpecification.Namespace.Table.Column.encode(to:)(uint64_t a1)
{
  DataSpecification.Namespace.Table.Column.description.getter();
  sub_1DB2BAEF4();
}

uint64_t DataSpecification.Namespace.Table.Column.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_1DB2BAE84();
  if (!(v3 >> 6))
  {
    MEMORY[0x1E1283FC0](2);
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (v3 >> 6 != 1)
  {
    v5 = (v2 | v3 ^ 0x80) != 0;
    goto LABEL_8;
  }

  MEMORY[0x1E1283FC0](3);
  if ((v3 & 1) == 0)
  {
LABEL_6:
    sub_1DB2BBA24();
    v5 = v2;
LABEL_8:
    MEMORY[0x1E1283FC0](v5);
    return MEMORY[0x1E1283FC0](v4);
  }

LABEL_4:
  sub_1DB2BBA24();
  return MEMORY[0x1E1283FC0](v4);
}

uint64_t DataSpecification.Namespace.Table.Column.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *&v5[72] = *v0;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  sub_1DB2BBA04();
  DataSpecification.Namespace.Table.Column.hash(into:)(v5);
  return sub_1DB2BBA54();
}

__n128 sub_1DB22A424@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s19OnDeviceStorageCore17DataSpecificationV9NamespaceV5TableV6ColumnV4fromAIs7Decoder_p_tAA16AccessCredentialV5ErrorOYKcfC(a1, &v8, a2);
  if (v2)
  {
    v7 = v8;
    v4 = v9;
    v5 = v10;
    sub_1DB171870();
    swift_allocError();
    result = v7;
    *v6 = v7;
    v6[1].n128_u64[0] = v4;
    v6[1].n128_u8[8] = v5;
  }

  return result;
}

uint64_t sub_1DB22A494(uint64_t a1)
{
  DataSpecification.Namespace.Table.Column.description.getter();
  sub_1DB2BAEF4();
}

uint64_t sub_1DB22A524()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *&v5[72] = *v0;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  sub_1DB2BBA04();
  DataSpecification.Namespace.Table.Column.hash(into:)(v5);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB22A58C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *&v6[72] = *v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  sub_1DB2BBA04();
  DataSpecification.Namespace.Table.Column.hash(into:)(v6);
  return sub_1DB2BBA54();
}

uint64_t DataSpecification.Namespace.Table.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DataSpecification.Namespace.Table.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v7 = *(v3 + 48);
  v8 = (v7 + 64);
  v9 = *(v7 + 16) + 1;
  while (1)
  {
    if (!--v9)
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v11 = *(v8 - 4);
    v10 = *(v8 - 3);
    v12 = *(v8 - 2);
    v13 = *(v8 - 8);
    v14 = *v8;
    if (v11 == v5 && v10 == a2)
    {
      break;
    }

    v8 += 5;
    result = sub_1DB2BB924();
    if (result)
    {
      goto LABEL_11;
    }
  }

  v11 = v5;
LABEL_11:
  *a3 = v11;
  *(a3 + 8) = v10;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
}

uint64_t sub_1DB22A740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[4];
  v43 = *(v3 + 40);
  v10 = v3[6];
  v46 = *(v3 + 24);
  v11 = *(v10 + 16);

  if (v11)
  {
    v13 = v11;
    v14 = 0;
    v15 = v10 + 64;
    v34 = v11 - 1;
    v16 = MEMORY[0x1E69E7CC0];
    v17 = v10;
    v18 = a2;
    v39 = v6;
    v40 = a3;
    v37 = v8;
    v38 = v7;
    v35 = v10 + 64;
    v36 = v9;
    do
    {
      v41 = v16;
      v19 = (v15 + 40 * v14);
      v20 = v14;
      while (1)
      {
        if (v20 >= *(v17 + 16))
        {
          __break(1u);
          return result;
        }

        v21 = *(v19 - 4);
        v22 = *(v19 - 3);
        v23 = v21 == a1 && v22 == v18;
        if (!v23)
        {
          v24 = *v19;
          v25 = *(v19 - 8);
          v26 = *(v19 - 2);
          v27 = v13;
          v28 = v17;
          result = sub_1DB2BB924();
          v18 = a2;
          v17 = v28;
          v13 = v27;
          if ((result & 1) == 0)
          {
            break;
          }
        }

        ++v20;
        v19 += 5;
        if (v13 == v20)
        {
          v6 = v39;
          a3 = v40;
          v8 = v37;
          v7 = v38;
          v9 = v36;
          v16 = v41;
          goto LABEL_20;
        }
      }

      v16 = v41;
      result = swift_isUniquelyReferenced_nonNull_native();
      v45 = v41;
      if ((result & 1) == 0)
      {
        result = sub_1DB138700(0, *(v41 + 16) + 1, 1);
        v16 = v41;
      }

      v15 = v35;
      v30 = *(v16 + 16);
      v29 = *(v16 + 24);
      v31 = v30 + 1;
      v17 = v28;
      v18 = a2;
      if (v30 >= v29 >> 1)
      {
        v42 = v30 + 1;
        v33 = *(v16 + 16);
        result = sub_1DB138700((v29 > 1), v30 + 1, 1);
        v31 = v42;
        v30 = v33;
        v15 = v35;
        v18 = a2;
        v16 = v45;
        v17 = v28;
      }

      v14 = v20 + 1;
      *(v16 + 16) = v31;
      v32 = v16 + 40 * v30;
      *(v32 + 32) = v21;
      *(v32 + 40) = v22;
      *(v32 + 48) = v26;
      *(v32 + 56) = v25;
      *(v32 + 64) = v24;
      v23 = v34 == v20;
      v6 = v39;
      a3 = v40;
      v8 = v37;
      v7 = v38;
      v9 = v36;
      v13 = v27;
    }

    while (!v23);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

LABEL_20:

  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v46;
  *(a3 + 32) = v9;
  *(a3 + 40) = v43;
  *(a3 + 48) = v16;
  return result;
}

uint64_t sub_1DB22A99C()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB22AA48(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB22AAE0(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

unint64_t sub_1DB22AB88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB22EFD0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DB22ABB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 110;
  v5 = 0xE200000000000000;
  v6 = 28773;
  v7 = 0xE300000000000000;
  v8 = 7107700;
  if (v2 != 3)
  {
    v8 = 99;
    v7 = 0xE100000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 27762;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DB22AC20()
{
  v1 = *v0;
  v2 = 110;
  v3 = 28773;
  v4 = 7107700;
  if (v1 != 3)
  {
    v4 = 99;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 27762;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1DB22AC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB22EFD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB22ACAC(uint64_t a1)
{
  v2 = sub_1DB22E184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB22ACE8(uint64_t a1)
{
  v2 = sub_1DB22E184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DataSpecification.Namespace.Table.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28448, &qword_1DB2C69B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v17 = *(v1 + 16);
  v16 = *(v1 + 24);
  v15 = *(v1 + 32);
  v14 = *(v1 + 40);
  v13 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB22E184();
  v7 = v3;
  sub_1DB2BBA94();
  v25 = 0;
  v8 = v18;
  sub_1DB2BB864();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v10 = v16;
  v11 = v13;
  v24 = 1;
  sub_1DB2BB894();
  v23 = v10;
  v22 = 2;
  sub_1DB22E1D8();
  sub_1DB2BB8A4();
  v21 = 3;
  sub_1DB2BB834();
  v19 = v11;
  v20 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28450, &qword_1DB2C69B8);
  sub_1DB22E2D4(&qword_1EE13E638, sub_1DB22E22C, MEMORY[0x1E69E6300]);
  sub_1DB2BB8A4();
  return (*(v4 + 8))(v6, v7);
}

uint64_t DataSpecification.Namespace.Table.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  sub_1DB2BAE84();
  MEMORY[0x1E1283FC0](v3);
  sub_1DB2BAE84();

  if (v5 == 1)
  {
    sub_1DB2BBA24();
  }

  else
  {
    sub_1DB2BBA24();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x1E1283FE0](v7);
  }

  return sub_1DB2256C4(a1, v6);
}

uint64_t DataSpecification.Namespace.Table.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  *&v7[72] = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  sub_1DB2BBA04();
  DataSpecification.Namespace.Table.hash(into:)(v7);
  return sub_1DB2BBA54();
}

uint64_t DataSpecification.Namespace.Table.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28458, &qword_1DB2C69C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB22E184();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v9 = sub_1DB2BB774();
  v11 = v10;
  v12 = v9;
  v27 = 1;
  v21 = sub_1DB2BB7A4();
  v25 = 2;
  sub_1DB22E280();
  sub_1DB2BB7B4();
  v20 = v26;
  v24 = 3;
  v13 = sub_1DB2BB744();
  v19 = v14;
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28450, &qword_1DB2C69B8);
  v23 = 4;
  sub_1DB22E2D4(&qword_1EE13F698, sub_1DB22E34C, MEMORY[0x1E69E6330]);
  sub_1DB2BB7B4();
  (*(v6 + 8))(v8, v5);
  v16 = v21;
  v17 = v22;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 24) = v20;
  *(a2 + 32) = v18;
  *(a2 + 40) = v19 & 1;
  *(a2 + 48) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB22B4D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  *&v7[72] = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  sub_1DB2BBA04();
  DataSpecification.Namespace.Table.hash(into:)(v7);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB22B548(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *&v8[72] = *v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  sub_1DB2BBA04();
  DataSpecification.Namespace.Table.hash(into:)(v8);
  return sub_1DB2BBA54();
}

uint64_t DataSpecification.Namespace.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DataSpecification.Namespace.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v5 = *(v3 + 16);
  v6 = *(v5 + 16) + 1;
  v7 = (v5 + 40);
  while (1)
  {
    if (!--v6)
    {
      *(a3 + 48) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return result;
    }

    v9 = *(v7 - 1);
    v8 = *v7;
    v10 = v7[1];
    v11 = *(v7 + 16);
    v12 = v7[3];
    v13 = *(v7 + 32);
    v14 = v7[5];
    if (v9 == v4 && v8 == a2)
    {
      break;
    }

    v7 += 7;
    result = sub_1DB2BB924();
    if (result)
    {
      goto LABEL_11;
    }
  }

  v9 = v4;
LABEL_11:
  *a3 = v9;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
  *(a3 + 40) = v13;
  *(a3 + 48) = v14;
}

uint64_t sub_1DB22B704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = *(v7 + 16);

  if (v8)
  {
    v10 = 0;
    v11 = v7 + 80;
    v36 = a3;
    v37 = MEMORY[0x1E69E7CC0];
    v12 = v7;
    v14 = a1;
    v13 = a2;
    v34 = v6;
    v35 = v5;
    v32 = v7 + 80;
    v33 = v8;
    do
    {
      v15 = v8 - v10;
      v16 = (v11 + 56 * v10);
      while (1)
      {
        if (v10 >= *(v12 + 16))
        {
          __break(1u);
          return result;
        }

        result = *(v16 - 6);
        v17 = *(v16 - 5);
        if (result != v14 || v17 != v13)
        {
          v19 = *v16;
          v20 = *(v16 - 8);
          v21 = *(v16 - 2);
          v22 = *(v16 - 24);
          v23 = *(v16 - 4);
          v24 = v12;
          v38 = *(v16 - 6);
          result = sub_1DB2BB924();
          v14 = a1;
          v13 = a2;
          v12 = v24;
          if ((result & 1) == 0)
          {
            break;
          }
        }

        v16 += 7;
        ++v10;
        if (!--v15)
        {
          v5 = v35;
          a3 = v36;
          v6 = v34;
          goto LABEL_19;
        }
      }

      v31 = v23;

      v25 = v37;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DB138720(0, *(v37 + 16) + 1, 1);
        v25 = v37;
      }

      v26 = v20;
      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      v29 = v28 + 1;
      v12 = v24;
      v14 = a1;
      v13 = a2;
      if (v28 >= v27 >> 1)
      {
        result = sub_1DB138720((v27 > 1), v28 + 1, 1);
        v29 = v28 + 1;
        v26 = v20;
        v14 = a1;
        v13 = a2;
        v12 = v24;
        v25 = v37;
      }

      ++v10;
      *(v25 + 16) = v29;
      v37 = v25;
      v30 = v25 + 56 * v28;
      *(v30 + 32) = v38;
      *(v30 + 40) = v17;
      *(v30 + 48) = v31;
      *(v30 + 56) = v22;
      *(v30 + 64) = v21;
      *(v30 + 72) = v26;
      *(v30 + 80) = v19;
      v5 = v35;
      a3 = v36;
      v8 = v33;
      v6 = v34;
      v11 = v32;
    }

    while (v15 != 1);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

LABEL_19:

  *a3 = v5;
  a3[1] = v6;
  a3[2] = v37;
  return result;
}

uint64_t sub_1DB22B934(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 116;
  }

  else
  {
    v2 = 110;
  }

  if (*a2)
  {
    v3 = 116;
  }

  else
  {
    v3 = 110;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1DB2BB924();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1DB22B9A4()
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB22BA04(uint64_t a1)
{
  sub_1DB2BAE84();
}

uint64_t sub_1DB22BA48(uint64_t a1)
{
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB22BAB0(uint64_t *a1@<X8>)
{
  v2 = 110;
  if (*v1)
  {
    v2 = 116;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_1DB22BAD0()
{
  if (*v0)
  {
    return 116;
  }

  else
  {
    return 110;
  }
}

uint64_t sub_1DB22BAEC@<X0>(char *a3@<X8>)
{
  v4 = sub_1DB2BB6F4();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1DB22BB50(uint64_t a1)
{
  v2 = sub_1DB22E3A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB22BB8C(uint64_t a1)
{
  v2 = sub_1DB22E3A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static DataSpecification.Namespace.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DB2BB924() & 1) == 0)
  {
    return 0;
  }

  return sub_1DB13778C(v2, v3);
}

uint64_t DataSpecification.Namespace.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28460, &qword_1DB2C69C8);
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB22E3A0();
  sub_1DB2BBA94();
  v13 = 0;
  sub_1DB2BB864();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28468, &qword_1DB2C69D0);
    sub_1DB22E3F4();
    sub_1DB2BB8A4();
  }

  return (*(v10 + 8))(v6, v4);
}

uint64_t DataSpecification.Namespace.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1DB2BAE84();

  return sub_1DB22558C(a1, v3);
}

uint64_t DataSpecification.Namespace.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  sub_1DB22558C(v3, v1);
  return sub_1DB2BBA54();
}

uint64_t DataSpecification.Namespace.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28470, &qword_1DB2C69D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB22E3A0();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_1DB2BB774();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28468, &qword_1DB2C69D0);
  v16 = 1;
  sub_1DB22E4CC();
  sub_1DB2BB7B4();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB22C0E0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DB2BB924() & 1) == 0)
  {
    return 0;
  }

  return sub_1DB13778C(v2, v3);
}

uint64_t sub_1DB22C154()
{
  v1 = *(v0 + 16);
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  sub_1DB22558C(v3, v1);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB22C1B8(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1DB2BAE84();

  return sub_1DB22558C(a1, v3);
}

uint64_t sub_1DB22C1FC(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  sub_1DB22558C(v4, v2);
  return sub_1DB2BBA54();
}

uint64_t DataSpecification.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = result;
  v7 = *(*v3 + 16);
  v8 = (*v3 + 48);
  v9 = v7 + 1;
  while (1)
  {
    if (!--v9)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      return result;
    }

    v11 = *(v8 - 2);
    v10 = *(v8 - 1);
    v12 = *v8;
    if (v11 == v5 && v10 == a2)
    {
      break;
    }

    v8 += 3;
    result = sub_1DB2BB924();
    if (result)
    {
      goto LABEL_11;
    }
  }

  v11 = v5;
LABEL_11:
  *a3 = v11;
  a3[1] = v10;
  a3[2] = v12;
}

uint64_t _s19OnDeviceStorageCore17DataSpecificationV4fromACs7Decoder_p_tAA16AccessCredentialV5ErrorOYKcfC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2BBA74();
  if (v3)
  {
    v11 = 0;
    v12 = 0xE000000000000000;
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0xD000000000000025, 0x80000001DB2D5760);
    swift_getErrorValue();
    sub_1DB2BB914();
    MEMORY[0x1E1283490](41, 0xE100000000000000);
    v7 = v11;
    v8 = v12;
    *a2 = v11;
    *(a2 + 8) = v8;
    *(a2 + 16) = 0;
    *(a2 + 24) = 6;
    v11 = v7;
    v12 = v8;
    v13 = 0;
    LOBYTE(v14) = 6;
    sub_1DB171870();
    swift_willThrowTypedImpl();
    MEMORY[0x1E1284A10](v3);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&v11, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28478, &qword_1DB2C69E0);
    sub_1DB22E5A4();
    sub_1DB2BB944();
    __swift_destroy_boxed_opaque_existential_1(&v11);
    *a3 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DataSpecification.hashValue.getter()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2253C0(v3, v1);
  return sub_1DB2BBA54();
}

__n128 sub_1DB22C594@<Q0>(void *a1@<X0>, void *a2@<X8>)
{
  _s19OnDeviceStorageCore17DataSpecificationV4fromACs7Decoder_p_tAA16AccessCredentialV5ErrorOYKcfC(a1, &v8, a2);
  if (v2)
  {
    v7 = v8;
    v4 = v9;
    v5 = v10;
    sub_1DB171870();
    swift_allocError();
    result = v7;
    *v6 = v7;
    v6[1].n128_u64[0] = v4;
    v6[1].n128_u8[8] = v5;
  }

  return result;
}

uint64_t sub_1DB22C660()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2253C0(v3, v1);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB22C6B0(uint64_t a1)
{
  v2 = *v1;
  sub_1DB2BBA04();
  sub_1DB2253C0(v4, v2);
  return sub_1DB2BBA54();
}

uint64_t DataSpecification.Namespace.Table.Column.Datatype.sqlDatatype.getter()
{
  v1 = *(v0 + 8);
  if (!(v1 >> 6))
  {
    return 1415071060;
  }

  if (v1 >> 6 == 1)
  {
    return 1112493122;
  }

  if (*v0 | v1 ^ 0x80)
  {
    return 1279346002;
  }

  return 0x52454745544E49;
}

OnDeviceStorageCore::DataSpecification __swiftcall DataSpecification.removingColumn(_:for:in:)(Swift::String _, Swift::String a2, Swift::String in)
{
  v52 = _;
  v5 = *v4;
  v6 = *(*v4 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    object = in._object;
    countAndFlagsBits = in._countAndFlagsBits;
    v43 = v3;
    v65 = MEMORY[0x1E69E7CC0];
    sub_1DB138740(0, v6, 0);
    v10 = 0;
    v11 = v65;
    v12 = v5 + 32;
    v46 = countAndFlagsBits;
    v47 = object;
    v44 = v5 + 32;
    v45 = v6;
    do
    {
      v13 = (v12 + 24 * v10);
      v14 = *v13;
      v53 = v13[2];
      v15 = *v13 == countAndFlagsBits && v13[1] == object;
      v50 = v11;
      v51 = v13[1];
      if (v15 || (sub_1DB2BB924() & 1) != 0)
      {
        v16 = countAndFlagsBits;
        v17 = object;
        v18 = v7;
        v19 = *(v53 + 16);
        if (v19)
        {
          v48 = v10;
          v49 = v14;
          v64 = v18;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          sub_1DB138720(0, v19, 0);
          v20 = 0;
          v21 = v64;
          v22 = v53;
          do
          {
            v55 = v19;
            v23 = v21;
            v24 = *(v22 + v20 + 32);
            v25 = *(v22 + v20 + 40);
            v26 = *(v22 + v20 + 56);
            v27 = *(v22 + v20 + 64);
            v28 = *(v22 + v20 + 72);
            v29 = *(v22 + v20 + 80);
            v30 = v24 == a2._countAndFlagsBits && v25 == a2._object;
            if (v30 || (v31 = *(v22 + v20 + 48), (sub_1DB2BB924() & 1) != 0))
            {

              sub_1DB22A740(v52._countAndFlagsBits, v52._object, &v57);
              v22 = v53;

              v24 = v57;
              v25 = v58;
              v32 = v59;
              v26 = v60;
              v27 = v61;
              v28 = v62;
              v29 = v63;
            }

            else
            {
              v57 = v24;
              v58 = v25;
              v59 = v31;
              v60 = v26;
              v61 = v27;
              v62 = v28;
              v63 = v29;

              v32 = v31;
            }

            v21 = v23;
            v64 = v23;
            v33 = *(v23 + 16);
            v34 = *(v21 + 24);
            if (v33 >= v34 >> 1)
            {
              v42 = v32;
              sub_1DB138720((v34 > 1), v33 + 1, 1);
              v32 = v42;
              v22 = v53;
              v21 = v64;
            }

            *(v21 + 16) = v33 + 1;
            v35 = v21 + 56 * v33;
            *(v35 + 32) = v24;
            *(v35 + 40) = v25;
            *(v35 + 48) = v32;
            *(v35 + 56) = v26;
            *(v35 + 64) = v27;
            *(v35 + 72) = v28;
            *(v35 + 80) = v29;
            v20 += 56;
            v19 = v55 - 1;
          }

          while (v55 != 1);
          v36 = v21;

          _._countAndFlagsBits = swift_bridgeObjectRelease_n();
          v37 = v36;
          countAndFlagsBits = v46;
          object = v47;
          v7 = MEMORY[0x1E69E7CC0];
          v12 = v44;
          v6 = v45;
          v10 = v48;
          v14 = v49;
        }

        else
        {

          v7 = v18;
          v37 = v18;
          object = v17;
          countAndFlagsBits = v16;
        }
      }

      else
      {

        v37 = _._countAndFlagsBits;
      }

      v11 = v50;
      v65 = v50;
      v39 = *(v50 + 16);
      v38 = *(v50 + 24);
      if (v39 >= v38 >> 1)
      {
        v56 = v37;
        _._countAndFlagsBits = sub_1DB138740((v38 > 1), v39 + 1, 1);
        v37 = v56;
        v11 = v65;
      }

      ++v10;
      *(v11 + 16) = v39 + 1;
      v40 = (v11 + 24 * v39);
      v40[4] = v14;
      v40[5] = v51;
      v40[6] = v37;
    }

    while (v10 != v6);
    v3 = v43;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  *v3 = v11;
  return _._countAndFlagsBits;
}

OnDeviceStorageCore::DataSpecification __swiftcall DataSpecification.removingTable(_:in:)(Swift::String _, Swift::String in)
{
  object = _._object;
  v4 = *v3;
  v5 = *(*v3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = in._object;
    countAndFlagsBits = in._countAndFlagsBits;
    v9 = _._countAndFlagsBits;
    v18 = v2;
    v24 = MEMORY[0x1E69E7CC0];
    sub_1DB138740(0, v5, 0);
    v6 = v24;
    v10 = (v4 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = v11 == countAndFlagsBits && *v10 == v7;
      if (v12 || (v20 = *v10, (sub_1DB2BB924() & 1) != 0))
      {

        sub_1DB22B704(v9, object, &v22);

        v11 = v22;
        v13 = v23;
      }

      else
      {
        v22 = v11;
        v23 = v20;

        v13 = v20;
      }

      v24 = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        v21 = v13;
        _._countAndFlagsBits = sub_1DB138740((v14 > 1), v15 + 1, 1);
        v13 = v21;
        v6 = v24;
      }

      *(v6 + 16) = v15 + 1;
      v16 = v6 + 24 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v10 += 3;
      --v5;
    }

    while (v5);
    v2 = v18;
  }

  *v2 = v6;
  return _._countAndFlagsBits;
}

OnDeviceStorageCore::DataSpecification __swiftcall DataSpecification.renamingNamespace(_:to:)(Swift::String _, Swift::String to)
{
  v21 = _;
  countAndFlagsBits = to._countAndFlagsBits;
  v4 = *v3;
  v5 = *(*v3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    object = to._object;
    v20 = v2;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1DB138740(0, v5, 0);
    v6 = v23;
    v8 = (v4 + 48);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = v9 == v21._countAndFlagsBits && v10 == v21._object;
      v12 = *v8;
      v13 = object;
      v14 = countAndFlagsBits;
      if (!v11)
      {
        v15 = (sub_1DB2BB924() & 1) == 0;
        if (v15)
        {
          v13 = v10;
        }

        else
        {
          v13 = object;
        }

        if (v15)
        {
          v14 = v9;
        }

        else
        {
          v14 = countAndFlagsBits;
        }
      }

      v17 = *(v23 + 16);
      v16 = *(v23 + 24);
      if (v17 >= v16 >> 1)
      {
        _._countAndFlagsBits = sub_1DB138740((v16 > 1), v17 + 1, 1);
      }

      *(v23 + 16) = v17 + 1;
      v18 = (v23 + 24 * v17);
      v18[4] = v14;
      v18[5] = v13;
      v18[6] = v12;
      v8 += 3;
      --v5;
    }

    while (v5);
    v2 = v20;
  }

  *v2 = v6;
  return _._countAndFlagsBits;
}

OnDeviceStorageCore::DataSpecification __swiftcall DataSpecification.withRowLimit(_:for:in:)(OnDeviceStorageCore::DataSpecification _, Swift::String a2, Swift::String in)
{
  rawValue = _.namespaces._rawValue;
  v5 = *v4;
  v6 = *(*v4 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    object = in._object;
    countAndFlagsBits = in._countAndFlagsBits;
    v32 = v3;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1DB138740(0, v6, 0);
    v10 = 0;
    v11 = v46;
    v12 = v5 + 32;
    v35 = countAndFlagsBits;
    v36 = object;
    v33 = v5 + 32;
    v34 = v6;
    do
    {
      v13 = (v12 + 24 * v10);
      v14 = v13[2];
      v15 = *v13 == countAndFlagsBits && v13[1] == object;
      v37 = *v13;
      v38 = v11;
      v39 = v13[1];
      if (v15 || (sub_1DB2BB924() & 1) != 0)
      {
        v16 = *(v14 + 16);
        if (v16)
        {
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          sub_1DB138720(0, v16, 0);
          v17 = 0;
          v18 = v7;
          v40 = v14;
          do
          {
            v19 = v14 + v17;
            v20 = *(v14 + v17 + 32);
            v21 = *(v14 + v17 + 40);
            v45 = *(v19 + 56);
            v44 = *(v19 + 64);
            v43 = *(v19 + 72);
            v22 = *(v19 + 80);
            v23 = v20 == a2._countAndFlagsBits && v21 == a2._object;
            v24 = rawValue;
            if (!v23)
            {
              v25 = *(v19 + 48);
              if (sub_1DB2BB924())
              {
                v24 = rawValue;
              }

              else
              {
                v24 = v25;
              }
            }

            v27 = *(v18 + 16);
            v26 = *(v18 + 24);

            if (v27 >= v26 >> 1)
            {
              sub_1DB138720((v26 > 1), v27 + 1, 1);
            }

            *(v18 + 16) = v27 + 1;
            v28 = v18 + 56 * v27;
            *(v28 + 32) = v20;
            *(v28 + 40) = v21;
            *(v28 + 48) = v24;
            *(v28 + 56) = v45;
            *(v28 + 64) = v44;
            *(v28 + 72) = v43;
            *(v28 + 80) = v22;
            v17 += 56;
            --v16;
            v14 = v40;
          }

          while (v16);

          _.namespaces._rawValue = swift_bridgeObjectRelease_n();
          countAndFlagsBits = v35;
          object = v36;
          v7 = MEMORY[0x1E69E7CC0];
          v12 = v33;
          v6 = v34;
        }

        else
        {

          v18 = v7;
        }
      }

      else
      {

        v18 = v14;
      }

      v11 = v38;
      v30 = *(v38 + 16);
      v29 = *(v38 + 24);
      if (v30 >= v29 >> 1)
      {
        _.namespaces._rawValue = sub_1DB138740((v29 > 1), v30 + 1, 1);
        v11 = v38;
      }

      ++v10;
      *(v11 + 16) = v30 + 1;
      v31 = (v11 + 24 * v30);
      v31[4] = v37;
      v31[5] = v39;
      v31[6] = v18;
    }

    while (v10 != v6);
    v3 = v32;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  *v3 = v11;
  return _;
}

OnDeviceStorageCore::DataSpecification __swiftcall DataSpecification.withEvictionPolicy(_:for:in:)(OnDeviceStorageCore::DataSpecification::Namespace::Table::EvictionPolicy _, Swift::String a2, Swift::String in)
{
  v5 = *v4;
  v6 = *(*v4 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    object = in._object;
    countAndFlagsBits = in._countAndFlagsBits;
    v31 = v3;
    v40 = *_;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1DB138740(0, v6, 0);
    v10 = 0;
    v11 = v46;
    v12 = v5 + 32;
    v34 = countAndFlagsBits;
    v35 = object;
    v32 = v5 + 32;
    v33 = v6;
    do
    {
      v13 = (v12 + 24 * v10);
      v14 = v13[2];
      v15 = *v13 == countAndFlagsBits && v13[1] == object;
      v36 = *v13;
      v37 = v11;
      v38 = v13[1];
      if (v15 || (sub_1DB2BB924() & 1) != 0)
      {
        v16 = *(v14 + 16);
        if (v16)
        {
          v45 = v7;
          swift_bridgeObjectRetain_n();
          v39 = v14;
          swift_bridgeObjectRetain_n();
          sub_1DB138720(0, v16, 0);
          v17 = 0;
          v14 = v45;
          do
          {
            v19 = *(v39 + v17 + 32);
            v18 = *(v39 + v17 + 40);
            v42 = *(v39 + v17 + 48);
            v44 = *(v39 + v17 + 64);
            v43 = *(v39 + v17 + 72);
            v20 = *(v39 + v17 + 80);
            v21 = v19 == a2._countAndFlagsBits && v18 == a2._object;
            v22 = v40;
            if (!v21)
            {
              v23 = *(v39 + v17 + 56);
              if (sub_1DB2BB924())
              {
                v22 = v40;
              }

              else
              {
                v22 = v23;
              }
            }

            v25 = *(v45 + 16);
            v24 = *(v45 + 24);

            if (v25 >= v24 >> 1)
            {
              sub_1DB138720((v24 > 1), v25 + 1, 1);
            }

            *(v45 + 16) = v25 + 1;
            v26 = v45 + 56 * v25;
            *(v26 + 32) = v19;
            *(v26 + 40) = v18;
            *(v26 + 48) = v42;
            *(v26 + 56) = v22 & 1;
            *(v26 + 64) = v44;
            *(v26 + 72) = v43;
            *(v26 + 80) = v20;
            v17 += 56;
            --v16;
          }

          while (v16);

          *&_ = swift_bridgeObjectRelease_n();
          countAndFlagsBits = v34;
          object = v35;
          v7 = MEMORY[0x1E69E7CC0];
          v12 = v32;
          v6 = v33;
        }

        else
        {

          v14 = v7;
        }
      }

      else
      {
      }

      v11 = v37;
      v28 = *(v37 + 16);
      v27 = *(v37 + 24);
      if (v28 >= v27 >> 1)
      {
        *&_ = sub_1DB138740((v27 > 1), v28 + 1, 1);
        v11 = v37;
      }

      ++v10;
      *(v11 + 16) = v28 + 1;
      v29 = (v11 + 24 * v28);
      v29[4] = v36;
      v29[5] = v38;
      v29[6] = v14;
    }

    while (v10 != v6);
    v3 = v31;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  *v3 = v11;
  LOBYTE(result.namespaces._rawValue) = _;
  return result;
}

uint64_t sub_1DB22D36C(uint64_t a1, unint64_t a2)
{
  v2 = sub_1DB2BB004();
  v6 = sub_1DB22D3EC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1DB22D3EC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1DB2BB384();
    if (!v9 || (v10 = v9, v11 = sub_1DB13832C(v9, 0), v12 = sub_1DB22D544(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1DB2BAE74();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1DB2BAE74();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1DB2BB5B4();
LABEL_4:

  return sub_1DB2BAE74();
}

unint64_t sub_1DB22D544(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1DB23D3A8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1DB2BAF74();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1DB2BB5B4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1DB23D3A8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1DB2BAF44();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1DB22D764(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1DB2BAFF4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DB22D36C(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DB2BB5B4();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}