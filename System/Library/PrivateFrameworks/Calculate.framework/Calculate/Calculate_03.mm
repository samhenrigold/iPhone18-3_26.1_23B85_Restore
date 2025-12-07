uint64_t sub_1C1EAD988(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211F0, &qword_1C1F568E0);
  result = sub_1C1F52A14();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1C1F52CD4();
      (*(*v17 + 168))(v26);
      result = sub_1C1F52CF4();
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

unint64_t sub_1C1EADBF8(uint64_t a1, uint64_t a2)
{
  sub_1C1F52CD4();
  (*(*a1 + 168))(v5);
  sub_1C1F52CF4();
  result = sub_1C1F52974();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1C1EADCBC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1C1EAD4D0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C1EADFB4();
      goto LABEL_16;
    }

    sub_1C1EAE3A0(v8 + 1);
  }

  v10 = *v4;
  sub_1C1F52CD4();
  sub_1C1F524A4();
  result = sub_1C1F52CF4();
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

      result = sub_1C1F52C64();
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
  result = sub_1C1F52C94();
  __break(1u);
  return result;
}

uint64_t sub_1C1EADE3C(uint64_t result, unint64_t a2, char a3)
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
    sub_1C1EAD988(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1C1EAE250();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1C1EAE800(v5 + 1);
  }

  v8 = *v3;
  sub_1C1F52CD4();
  (*(*v4 + 168))(v16);
  result = sub_1C1F52CF4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = result & ~v9;
    result = type metadata accessor for CalculateExpression.RichExpression();
    a2 = v11;
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
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C1F52C94();
  __break(1u);
  return result;
}

void *sub_1C1EADFB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21220, &qword_1C1F56920);
  v2 = *v0;
  v3 = sub_1C1F52A04();
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

void *sub_1C1EAE110()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21218, &qword_1C1F56918);
  v2 = *v0;
  v3 = sub_1C1F52A04();
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

void *sub_1C1EAE250()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211F0, &qword_1C1F568E0);
  v2 = *v0;
  v3 = sub_1C1F52A04();
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

uint64_t sub_1C1EAE3A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21220, &qword_1C1F56920);
  result = sub_1C1F52A14();
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
      sub_1C1F52CD4();

      sub_1C1F524A4();
      result = sub_1C1F52CF4();
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

uint64_t sub_1C1EAE5D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21218, &qword_1C1F56918);
  result = sub_1C1F52A14();
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
      v23 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1C1E90258();
      result = sub_1C1F523B4();
      v16 = -1 << *(v5 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v11 + 8 * v18);
          if (v22 != -1)
          {
            v12 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v23;
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

        v2 = v1;
        goto LABEL_26;
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

uint64_t sub_1C1EAE800(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211F0, &qword_1C1F568E0);
  result = sub_1C1F52A14();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
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
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1C1F52CD4();
      v18 = *(*v17 + 168);

      v18(v27);
      result = sub_1C1F52CF4();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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
        v10 = (v16 - 1) & v16;
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

void *sub_1C1EAEA50()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1C1EAECE0(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_1C1EAEA9C(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_1C1EAECE0((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1C1EAEAE0(uint64_t result, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= result)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  v3 = sub_1C1F52994();
  result = v2;
  if (v3 < v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (result < 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C1EAEB4C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1C1EAEE14(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1C1EAEC20(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1C1EAEC20(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 8 * a2);
      if (result != v12 || result >= v12 + 8 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 8 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

void *sub_1C1EAECE0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211F8, &qword_1C1F568E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21200, &qword_1C1F568F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1EAEE14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211A8, &qword_1C1F56898);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C1EAEF18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21210, &unk_1C1F56900);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1C1EAF018(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1EAF038(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1EAF038(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211C0, &qword_1C1F568B0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1C1EAF144(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  if ((a3 & 0xC000000000000001) == 0)
  {
    goto LABEL_4;
  }

  if (a2 < result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result == a2)
  {
LABEL_4:

LABEL_8:
    if (a3 >> 62)
    {

      return sub_1C1F52BA4();
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      return a3 & 0xFFFFFFFFFFFFFF8;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (result < a2)
  {
    type metadata accessor for CalculateExpression.Token();

    result = v5;
    do
    {
      v6 = result + 1;
      sub_1C1F52AA4();
      result = v6;
    }

    while (a2 != v6);
    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_1C1EAF22C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_1C1EB0E00((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

uint64_t sub_1C1EAF27C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21208, &qword_1C1F568F8);
  result = sub_1C1F52BC4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      result = sub_1C1F52CC4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1C1EAF4E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211E0, &qword_1C1F568D0);
  v35 = v4;
  result = sub_1C1F52BC4();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1C1EB1C58(v22, v36);
      }

      else
      {
        sub_1C1EB0E00(v22, v36);
        v23 = v21;
      }

      sub_1C1F52454();
      sub_1C1F52CD4();
      sub_1C1F524A4();
      v24 = sub_1C1F52CF4();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_1C1EB1C58(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_1C1EAF7B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21208, &qword_1C1F568F8);
  v2 = *v0;
  v3 = sub_1C1F52BB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1C1EAF8FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211E0, &qword_1C1F568D0);
  v2 = *v0;
  v3 = sub_1C1F52BB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        sub_1C1EB0E00(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1C1EB1C58(v19, (*(v4 + 56) + 32 * v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_1C1EAFAA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for CalculateExpression.RichToken(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_1C1EAFB88()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1C1E98444(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1EAFBEC(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for CalculateExpression.Operation();
  sub_1C1E758CC(&qword_1EDC2CA88, 255, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);
  return sub_1C1F52414() & 1;
}

id sub_1C1EAFC80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_1C1EB0E00(*(v3 + 56) + 32 * v13, &v18);
    *&v21[0] = v14;
    sub_1C1EB1C58(&v18, (v21 + 8));
    result = v14;
    v16 = *&v21[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18 = v16;
      v19 = *(v21 + 8);
      v20 = *(&v21[1] + 8);
      v17(&v18);
      return sub_1C1E83580(&v18, &qword_1EBF211E8, &qword_1C1F568D8);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v21, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1C1EAFDD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21230, &unk_1C1F56930);
    v3 = sub_1C1F52BE4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1C1EAC150(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1EAFEDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211C8, &qword_1C1F568B8);
    v3 = sub_1C1F52BE4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C1EAC150(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1EAFFF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211E0, &qword_1C1F568D0);
    v3 = sub_1C1F52BE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1EB1D18(v4, &v11, &qword_1EBF21180, &qword_1C1F564D0);
      v5 = v11;
      result = sub_1C1E81EB0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C1EB1C58(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1EB0118(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211D0, &qword_1C1F568C0);
    v3 = sub_1C1F52BE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1EB1D18(v4, v13, &qword_1EBF211D8, &qword_1C1F568C8);
      result = sub_1C1EAC20C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1C1EB1C58(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C1EB0254(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  *(v2 + 24) = 16777473;
  *(v2 + 28) = 1;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = 0;
  *(v2 + 40) = v4;
  *(v2 + 48) = 0;
  *(v2 + 50) = 0;
  swift_beginAccess();
  *(v2 + 40) = a1;
  (*(*v2 + 232))(0);
  swift_beginAccess();
  *(v2 + 25) = 0;
  swift_beginAccess();
  swift_weakAssign();
  return v2;
}

_BYTE *sub_1C1EB0340(_BYTE *a1)
{
  v2 = v1;
  v4 = swift_weakInit();
  *(v1 + 24) = 16777473;
  *(v1 + 28) = 1;
  v5 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0;
  *(v1 + 40) = v5;
  v6 = (v1 + 40);
  *(v1 + 48) = 0;
  *(v1 + 50) = 0;
  v7 = (*(*a1 + 392))(v4);
  swift_beginAccess();
  *v6 = v7;

  (*(*a1 + 176))(v8);
  swift_beginAccess();
  swift_weakAssign();

  v10 = (*(*a1 + 224))(v9);
  v11 = (*(*v2 + 232))(v10 & 1);
  LOBYTE(v7) = (*(*a1 + 248))(v11);
  v12 = swift_beginAccess();
  v2[25] = v7 & 1;
  (*(*a1 + 272))(v15, v12);
  LOBYTE(v7) = v15[0];
  v13 = swift_beginAccess();
  v2[26] = v7;
  LOBYTE(v7) = (*(*a1 + 296))(v13);
  swift_beginAccess();
  v2[27] = v7 & 1;
  v2[28] = a1[28];
  v2[48] = a1[48];
  v2[49] = a1[49];
  v2[50] = a1[50];
  return v2;
}

unint64_t sub_1C1EB05DC()
{
  result = qword_1EBF21160;
  if (!qword_1EBF21160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF21160);
  }

  return result;
}

unint64_t sub_1C1EB0630()
{
  result = qword_1EDC2CC10;
  if (!qword_1EDC2CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC2CC10);
  }

  return result;
}

uint64_t sub_1C1EB0684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21168, &unk_1C1F564C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1EB06F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1C6911AC0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1C1EACF44(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1C1EB078C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = (*a1 + 264);
  v5 = *v4;
  v6 = (*v4)();
  if (v6 >> 62)
  {
    v7 = sub_1C1F52994();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < v7)
  {
    *a2 = ++v3;
  }

  v9 = (v5)(v8);
  if (v9 >> 62)
  {
    v10 = sub_1C1F52994();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < v10)
  {
    result = (v5)(result);
    if ((result & 0xC000000000000001) == 0)
    {
      if (v3 < 0)
      {
        __break(1u);
      }

      else if (v3 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(result + 8 * v3 + 32);

        goto LABEL_12;
      }

      __break(1u);
      return result;
    }

    v12 = MEMORY[0x1C6911DB0](v3, result);
LABEL_12:

    v13 = *(v12 + 48);

    v15 = v13;
    v14 = 17;
    result = static CalculateExpression.TokenType.== infix(_:_:)(&v15, &v14);
    if (result)
    {
      *a2 = v3 + 1;
    }
  }

  return result;
}

uint64_t sub_1C1EB0924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = a4;
  v6 = a3;
  v9 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v8 = &v7[a1 + 4];
  a6(a5);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13)
  {
    v12 = v14 >> 62;
    if (!(v14 >> 62))
    {
      result = v7[2];
      v17 = result - v9;
      if (!__OFSUB__(result, v9))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1C1F52994();
    v17 = result - v9;
    if (!__OFSUB__(result, v9))
    {
LABEL_6:
      v18 = &v8[v6];
      v19 = &v11[v9];
      if (v18 != v19 || v18 >= &v19[8 * v17])
      {
        memmove(v18, v19, 8 * v17);
      }

      if (v12)
      {
        result = sub_1C1F52994();
      }

      else
      {
        result = v7[2];
      }

      if (!__OFADD__(result, v13))
      {
        v7[2] = result + v13;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v6 > 0)
  {
    *v8 = v10;

    if (v6 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1C1EB0A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a5;
    v8 = a4;
    v9 = a3;
    v10 = a2;
    v11 = a1;
    v12 = *v7;
    v13 = *v7 >> 62;
    if (!v13)
    {
      result = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1C1F52994();
  if (result < v10)
  {
    goto LABEL_13;
  }

LABEL_4:
  v15 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = 1 - v15;
  if (__OFSUB__(1, v15))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13)
  {
    v17 = sub_1C1F52994();
  }

  else
  {
    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = __OFADD__(v17, v16);
  result = v17 + v16;
  if (!v18)
  {
    sub_1C1E8CFBC(result, 1);
    return sub_1C1EB0924(v11, v10, 1, v9, v8, v6);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1C1EB0B40(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1C1F524E4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1C1F525F4();
}

unint64_t sub_1C1EB0BF0(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1C1F52994();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211F0, &qword_1C1F568E0);
      result = sub_1C1F52A34();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1C1F52994();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  while ((v1 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1C6911DB0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_1C1F52CD4();
    (*(*v8 + 168))(v18);
    result = sub_1C1F52CF4();
    v10 = ~(-1 << *(v3 + 32));
    v11 = result & v10;
    v12 = (result & v10) >> 6;
    v13 = *(v7 + 8 * v12);
    v14 = 1 << (result & v10);
    v15 = *(v3 + 48);
    if ((v14 & v13) != 0)
    {
      while (*(v15 + 8 * v11) != v8)
      {
        v11 = (v11 + 1) & v10;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_20;
        }
      }

      if (v6 == v5)
      {
        return v3;
      }
    }

    else
    {
LABEL_20:
      *(v7 + 8 * v12) = v14 | v13;
      *(v15 + 8 * v11) = v8;
      v16 = *(v3 + 16);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_24;
      }

      *(v3 + 16) = v17;
      if (v6 == v5)
      {
        return v3;
      }
    }
  }

  if (v6 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

  v8 = *(v1 + 32 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C1EB0E00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1C1EB0E7C()
{
  result = qword_1EBF21170;
  if (!qword_1EBF21170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF21170);
  }

  return result;
}

unint64_t sub_1C1EB0ED0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_1C1EAFC80(&v40);
  v12 = v40;
  if (!v40)
  {
    goto LABEL_25;
  }

  sub_1C1EB1C58(v41, v39);
  v13 = *a5;
  result = sub_1C1E81EB0(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1C1EAF4E0(v19, a4 & 1);
    result = sub_1C1E81EB0(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CalculateKey();
    result = sub_1C1F52CA4();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_1C1EAF8FC();
    result = v25;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = result;

    v24 = (v22[7] + 32 * v23);
    __swift_destroy_boxed_opaque_existential_0(v24);
    sub_1C1EB1C58(v39, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 8 * result) = v12;
  result = sub_1C1EB1C58(v39, (v22[7] + 32 * result));
  v26 = v22[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v22[2] = v27;
LABEL_15:
    sub_1C1EAFC80(&v40);
    v12 = v40;
    if (v40)
    {
      v20 = 1;
      do
      {
        sub_1C1EB1C58(v41, v39);
        v30 = *a5;
        result = sub_1C1E81EB0(v12);
        v32 = v30[2];
        v33 = (v31 & 1) == 0;
        v18 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v31;
        if (v30[3] < v34)
        {
          sub_1C1EAF4E0(v34, 1);
          result = sub_1C1E81EB0(v12);
          if ((a4 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        v36 = *a5;
        if (a4)
        {
          v28 = result;

          v29 = (v36[7] + 32 * v28);
          __swift_destroy_boxed_opaque_existential_0(v29);
          sub_1C1EB1C58(v39, v29);
        }

        else
        {
          v36[(result >> 6) + 8] |= 1 << result;
          *(v36[6] + 8 * result) = v12;
          result = sub_1C1EB1C58(v39, (v36[7] + 32 * result));
          v37 = v36[2];
          v18 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v36[2] = v38;
        }

        sub_1C1EAFC80(&v40);
        v12 = v40;
      }

      while (v40);
    }

LABEL_25:
    sub_1C1E96B60(v42);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1C1EB1200()
{
  result = qword_1EDC2E8D8;
  if (!qword_1EDC2E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC2E8D8);
  }

  return result;
}

unint64_t sub_1C1EB1258()
{
  result = qword_1EBF21188;
  if (!qword_1EBF21188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF21188);
  }

  return result;
}

uint64_t _s9OperationC4ModeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9OperationC4ModeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

_OWORD *sub_1C1EB1C58(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C1EB1D18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C1EB1D90(uint64_t a1)
{
  v3 = qword_1EDC30828;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = sub_1C1EB4BE4(a1);
  if (v6)
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1C1EB1E28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21238, &qword_1C1F56970);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-v3];
  v5 = sub_1C1F52034();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();

  sub_1C1F52394();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1C1EB5BCC(v4);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = qword_1EDC30828;
    swift_beginAccess();
    v10 = *(v1 + v9);
    if (*(v10 + 16))
    {

      v11 = sub_1C1EB4BE4(v8);
      if (v12)
      {
        v13 = *(*(v10 + 56) + 8 * v11);
        v14 = *(v6 + 8);

        v14(v8, v5);

        return v13;
      }
    }

    (*(v6 + 8))(v8, v5);
  }

  return 0;
}

uint64_t sub_1C1EB2098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = *v2;
  v5 = *(*v2 + 552);
  v6 = sub_1C1F52034();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_1C1F528D4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = qword_1EDC30830;
  swift_beginAccess();
  v23 = *(v2 + v12);
  v19 = v5;
  v20 = *(v4 + 560);
  v21 = *(v4 + 568);
  v22 = a1;
  sub_1C1F52384();

  swift_getWitnessTable();
  sub_1C1F52634();

  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v11, 1, TupleTypeMetadata2) == 1)
  {
    (*(v9 + 8))(v11, v8);
    return (*(*(v5 - 8) + 56))(v18, 1, 1, v5);
  }

  else
  {
    v14 = *(TupleTypeMetadata2 + 48);
    v15 = *(v5 - 8);
    v16 = v18;
    (*(v15 + 32))(v18, v11, v5);
    (*(v15 + 56))(v16, 0, 1, v5);
    return (*(*(v6 - 8) + 8))(&v11[v14], v6);
  }
}

uint64_t sub_1C1EB23B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1C1F52034();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  CalculateExpression.id.getter(v6);
  v7 = sub_1C1F52014();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

uint64_t sub_1C1EB24B8(uint64_t a1, uint64_t a2)
{
  sub_1C1EB2A34(a1);
  sub_1C1EB2EC4(a2);

  sub_1C1EB2774(a1, a2);

  sub_1C1ED9080(v5);
  return sub_1C1EB25E8(v2, a2);
}

uint64_t sub_1C1EB2520(uint64_t a1, uint64_t a2)
{
  result = sub_1C1EB2EC4(a1);
  if (result)
  {
    (*(*v2 + 656))(result, a2);
  }

  return result;
}

uint64_t sub_1C1EB25A8(uint64_t a1)
{
  v3 = sub_1C1EB2EC4(a1);
  sub_1C1EB25E8(v1, a1);
  return v3;
}

uint64_t sub_1C1EB25E8(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 552);
  v5 = sub_1C1F528D4();
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v4 - 8);
  (*(v10 + 16))(&v12 - v8, a2, v4, v7);
  (*(v10 + 56))(v9, 0, 1, v4);
  (*(*a1 + 808))(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1C1EB2774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v22 = a2;
  v23 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21238, &qword_1C1F56970);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v21 = *(v5 + 552);
  v9 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = sub_1C1F52034();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  CalculateExpression.id.getter(v16);
  v17 = qword_1EDC30828;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v3 + v17);
  *(v3 + v17) = 0x8000000000000000;
  sub_1C1EB56C8(a1, v16, isUniquelyReferenced_nonNull_native);
  (*(v14 + 8))(v16, v13);
  *(v3 + v17) = v24;
  swift_endAccess();
  (*(v9 + 16))(v12, v22, v21);
  CalculateExpression.id.getter(v8);
  (*(v14 + 56))(v8, 0, 1, v13);
  swift_beginAccess();
  sub_1C1F52384();
  sub_1C1F523A4();
  return swift_endAccess();
}

uint64_t sub_1C1EB2A34(uint64_t a1)
{
  v2 = v1;
  v26 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21238, &qword_1C1F56970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v25 = &v22 - v5;
  v6 = *(v26 + 552);
  v7 = sub_1C1F528D4();
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = sub_1C1F52034();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  CalculateExpression.id.getter(v17);
  swift_beginAccess();
  sub_1C1EB2DFC(v17);
  (*(v15 + 8))(v17, v14);
  swift_endAccess();

  v18 = CalculateExpression.document.getter();
  if (v18)
  {
    v19 = v18;

    if (v19 == v2)
    {
      sub_1C1ED9080(0);
    }
  }

  (*(*v2 + 648))(a1);
  if ((*(v10 + 48))(v9, 1, v6) == 1)
  {
    return (*(v23 + 8))(v9, v24);
  }

  (*(v10 + 32))(v13, v9, v6);
  swift_beginAccess();
  sub_1C1F52384();
  v21 = v25;
  sub_1C1F52364();
  sub_1C1EB5BCC(v21);
  swift_endAccess();
  return (*(v10 + 8))(v13, v6);
}

uint64_t sub_1C1EB2DFC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C1EB4BE4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1C1EB594C();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_1C1F52034();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1C1EB53C0(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_1C1EB2EC4(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21238, &qword_1C1F56970);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_1C1F52034();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1C1F52384();
  sub_1C1F52364();
  swift_endAccess();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1C1EB5BCC(v5);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    swift_beginAccess();
    v10 = sub_1C1EB2DFC(v9);
    swift_endAccess();
    if (v10)
    {

      v11 = CalculateExpression.document.getter();
      if (v11)
      {
        v12 = v11;

        if (v12 == v2)
        {
          sub_1C1ED9080(0);
        }
      }
    }

    (*(v7 + 8))(v9, v6);
  }

  return v10;
}

uint64_t sub_1C1EB3118(uint64_t a1)
{
  v7 = (*(*v1 + 728))();
  v2 = sub_1C1F52804();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1C6911910](&v6, v2, WitnessTable);

  sub_1C1F52A84();
  swift_getWitnessTable();
  v4 = sub_1C1F52674();

  v7 = v4;
  sub_1C1F52754();
  swift_getWitnessTable();
  return sub_1C1F52644();
}

uint64_t sub_1C1EB32E4(uint64_t a1)
{
  *&v11 = (*(*v1 + 728))();
  v2 = sub_1C1F52804();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1C6911910](&v8, v2, WitnessTable);

  v10 = v8;
  sub_1C1F52A84();
  swift_getWitnessTable();
  v4 = sub_1C1F52674();

  *&v11 = v4;
  v5 = sub_1C1F52754();
  v6 = swift_getWitnessTable();
  MEMORY[0x1C69116C0](&v8, v5, v6);
  v10 = v8;
  sub_1C1F52B84();
  swift_getWitnessTable();
  sub_1C1F52824();
  v8 = v11;
  v9 = v12;
  sub_1C1F52CB4();
  swift_getWitnessTable();
  return sub_1C1F52654();
}

uint64_t sub_1C1EB3578@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 600);
  swift_beginAccess();
  v4 = sub_1C1F528D4();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C1EB3624(uint64_t a1)
{
  v3 = *(*v1 + 600);
  swift_beginAccess();
  v4 = sub_1C1F528D4();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void sub_1C1EB36D8(uint64_t (*a1)(uint64_t))
{
  v3 = v1;
  v5 = *(*(*v1 + 552) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v25 - v6;
  v33 = v8;
  v9 = sub_1C1F528D4();
  MEMORY[0x1EEE9AC00](v9);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v16 = &v25 - v12;
  if (*(v3 + qword_1EDC30820))
  {
    __break(1u);
  }

  else
  {
    v28 = v7;
    v29 = v14;
    v31 = v13;
    v32 = v11;
    v30 = v5;
    v17 = *(v5 + 56);
    v17(&v25 - v12, 1, 1, v33, v15);
    v18 = sub_1C1EB3624(v16);
    *(v3 + qword_1EDC30820) = 1;
    a1(v18);
    if (!v2)
    {
      v26 = v17;
      v27 = 0;
      *(v3 + qword_1EDC30820) = 0;
      v19 = v29;
      sub_1C1EB3578(v29);
      v20 = v30;
      if ((*(v30 + 48))(v19, 1, v33) == 1)
      {
        (*(v31 + 8))(v19, v32);
      }

      else
      {
        v21 = v28;
        v22 = v19;
        v23 = v33;
        (*(v20 + 32))(v28, v22, v33);
        (*(v20 + 16))(v16, v21, v23);
        v24 = v26;
        v26(v16, 0, 1, v23);
        (*(*v3 + 808))(v16);
        (*(v31 + 8))(v16, v32);
        v24(v16, 1, 1, v23);
        sub_1C1EB3624(v16);
        (*(v20 + 8))(v21, v23);
      }
    }
  }
}

uint64_t sub_1C1EB3A20(uint64_t a1)
{
  v2 = v1;
  v90 = a1;
  v3 = *v1;
  v4 = *(v3 + 552);
  v91 = sub_1C1F528D4();
  v5 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  WitnessTable = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v88 = v79 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v84 = v79 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v86 = v79 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v79 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v79 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v79 - v20;
  v22 = v4;
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v83 = v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v79 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = v79 - v31;
  v89 = v3;
  if ((*(v3 + 360))(v30))
  {
    v33 = *(*v2 + 488);

    return v33();
  }

  else
  {
    v82 = v28;
    v35 = *(v2 + qword_1EDC30820);
    v85 = v5;
    v36 = *(v5 + 16);
    v37 = (v23 + 48);
    v38 = v23;
    if ((v35 & 1) == 0)
    {
      v42 = v91;
      v36(v21, v90, v91);
      v43 = v22;
      if ((*v37)(v21, 1, v22) == 1)
      {
        v44 = (*(v85 + 8))(v21, v42);
        v45 = (*(*v2 + 728))(v44);
        v46 = v89;
        v47 = *(v89 + 568);
      }

      else
      {
        v38[4](v32, v21, v22);
        sub_1C1EB4B70(v22, v22);
        swift_allocObject();
        v55 = sub_1C1F526C4();
        v56 = v38;
        v57 = v55;
        v58 = v56;
        v56[2](v59, v32, v43);
        sub_1C1F52754();
        v60 = sub_1C1F52734();
        v46 = v89;
        if (v60)
        {
          sub_1C1EB5C68(v57, v43, *(v89 + 568));
        }

        v92 = (*(*v2 + 744))(v32);
        v47 = *(v46 + 568);
        swift_getWitnessTable();
        v45 = sub_1C1F527E4();
        (v58[1])(v32, v43);
      }

      v92 = v45;

      MEMORY[0x1EEE9AC00](v65);
      v66 = *(v46 + 560);
      v79[-6] = v43;
      v79[-5] = v66;
      v89 = v66;
      v79[-4] = v47;
      v79[-3] = sub_1C1EB63C0;
      v79[-2] = v2;
      v91 = v47;
      v67 = sub_1C1F52804();
      v68 = type metadata accessor for CalculateExpression(0);
      WitnessTable = swift_getWitnessTable();
      v88 = v67;
      v90 = v68;
      v69 = sub_1C1F52614();

      if (v69 >> 62)
      {
        goto LABEL_36;
      }

      v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v70)
      {
LABEL_37:

        v92 = (*(*v2 + 728))(v74);
        v75 = v89;
        v76 = sub_1C1F52674();

        v92 = v76;

        MEMORY[0x1EEE9AC00](v77);
        v79[-6] = v43;
        v79[-5] = v75;
        v79[-4] = v91;
        v79[-3] = sub_1C1EB63C0;
        v79[-2] = v2;
        sub_1C1F52754();
        swift_getWitnessTable();
        v78 = sub_1C1F52614();

        return (*(*v2 + 344))(v78);
      }

LABEL_26:
      v71 = 0;
      while (1)
      {
        if ((v69 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C6911DB0](v71, v69);
          v72 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v71 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v72 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            v70 = sub_1C1F52994();
            if (!v70)
            {
              goto LABEL_37;
            }

            goto LABEL_26;
          }
        }

        v73 = sub_1C1E7DD60();
        CalculateExpression.setNeedsEvaluation(rebuild:)(v73 & 1);

        ++v71;
        if (v72 == v70)
        {
          goto LABEL_37;
        }
      }
    }

    v81 = *(v5 + 16);
    v36(v15, v90, v91);
    v39 = *v37;
    v40 = v22;
    if ((*v37)(v15, 1, v22) == 1)
    {
      v41 = *(*v2 + 728);
      v80 = v38;
      v92 = v41();
      sub_1C1F52804();
      swift_getWitnessTable();
      sub_1C1F52664();
      v38 = v80;
      v40 = v22;

      if (v39(v15, 1, v22) != 1)
      {
        (*(v85 + 8))(v15, v91);
      }
    }

    else
    {
      v38[4](v18, v15, v22);
      (v38[7])(v18, 0, 1, v22);
    }

    if (v39(v18, 1, v40) != 1)
    {
      v48 = v38[4];
      v48(v82, v18, v40);
      v18 = v86;
      v49 = v38;
      sub_1C1EB3578(v86);
      v79[1] = v37;
      v80 = v39;
      if (v39(v18, 1, v40) != 1)
      {
        v61 = v83;
        v48(v83, v18, v40);
        v62 = v84;
        v63 = v82;
        sub_1C1F52C84();
        (v49[7])(v62, 0, 1, v40);
        sub_1C1EB3624(v62);
        v64 = v49[1];
        (v64)(v61, v40);
        return (v64)(v63, v40);
      }

      (v38[1])(v82, v40);
      v39 = v80;
    }

    v50 = *(v85 + 8);
    v51 = v91;
    v85 += 8;
    v50(v18, v91);
    v52 = WitnessTable;
    v81(WitnessTable, v90, v51);
    if (v39(v52, 1, v40) == 1)
    {
      v53 = (*(*v2 + 728))();
      v80 = v39;
      v92 = v53;
      sub_1C1F52804();
      swift_getWitnessTable();
      v54 = v88;
      sub_1C1F52664();

      if ((v80)(v52, 1, v40) != 1)
      {
        v50(v52, v51);
      }
    }

    else
    {
      v54 = v88;
      v38[4](v88, v52, v40);
      (v38[7])(v54, 0, 1, v40);
    }

    return sub_1C1EB3624(v54);
  }
}

uint64_t CalculateIndexedDocument.init()()
{
  v1 = *v0;
  v2 = qword_1EDC30828;
  *(v0 + v2) = sub_1C1E74A5C(MEMORY[0x1E69E7CC0]);
  v3 = qword_1EDC30830;
  v4 = *(v1 + 552);
  v5 = sub_1C1F52034();
  swift_getTupleTypeMetadata2();
  v6 = sub_1C1F526F4();
  v7 = sub_1C1E74FE8(v6, v4, v5, *(v1 + 568));

  *(v0 + v3) = v7;
  *(v0 + qword_1EDC30820) = 0;
  v8 = (*(*(v4 - 8) + 56))(v0 + *(*v0 + 600), 1, 1, v4);

  return CalculateDocument.init()(v8);
}

uint64_t CalculateIndexedDocument.init(expressions:options:)(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = qword_1EDC30828;
  *(v2 + v6) = sub_1C1E74A5C(MEMORY[0x1E69E7CC0]);
  v7 = qword_1EDC30830;
  v8 = *(v5 + 552);
  v9 = sub_1C1F52034();
  swift_getTupleTypeMetadata2();
  v10 = sub_1C1F526F4();
  v11 = sub_1C1E74FE8(v10, v8, v9, *(v5 + 568));

  *(v2 + v7) = v11;
  *(v2 + qword_1EDC30820) = 0;
  (*(*(v8 - 8) + 56))(v2 + *(*v2 + 600), 1, 1, v8);

  return CalculateDocument.init(expressions:options:)(a1, a2);
}

uint64_t sub_1C1EB49B4()
{

  v1 = *(*v0 + 600);
  v2 = sub_1C1F528D4();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t CalculateIndexedDocument.deinit()
{
  v0 = CalculateDocument.deinit();

  v1 = *(*v0 + 600);
  v2 = sub_1C1F528D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CalculateIndexedDocument.__deallocating_deinit()
{
  v0 = CalculateIndexedDocument.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C1EB4B70(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

unint64_t sub_1C1EB4BE4(uint64_t a1)
{
  sub_1C1F52034();
  sub_1C1EB62F4(&qword_1EDC2E8F8, MEMORY[0x1E69695B8]);
  v2 = sub_1C1F523B4();

  return sub_1C1EB4CC4(a1, v2);
}

unint64_t sub_1C1EB4C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1F523B4();

  return sub_1C1EB4E70(a1, v6, a2, a3);
}

unint64_t sub_1C1EB4CC4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1C1F52034();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1C1EB62F4(&qword_1EDC2E8F0, MEMORY[0x1E69695C8]);
      v16 = sub_1C1F52414();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1C1EB4E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1C1F52414();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1C1EB4FF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1C1F52034();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21240, &qword_1C1F569D0);
  v39 = v4;
  result = sub_1C1F52BC4();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1C1EB62F4(&qword_1EDC2E8F8, MEMORY[0x1E69695B8]);
      result = sub_1C1F523B4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_1C1EB53C0(int64_t a1, uint64_t a2)
{
  v38 = sub_1C1F52034();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1C1F52964();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1C1EB62F4(&qword_1EDC2E8F8, MEMORY[0x1E69695B8]);
      v22 = sub_1C1F523B4();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_1C1EB56C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1C1F52034();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1C1EB4BE4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1C1EB594C();
      goto LABEL_7;
    }

    sub_1C1EB4FF8(v17, a3 & 1);
    v22 = sub_1C1EB4BE4(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1C1EB5894(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1C1F52CA4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1C1EB5894(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1C1F52034();
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

char *sub_1C1EB594C()
{
  v1 = v0;
  v33 = sub_1C1F52034();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21240, &qword_1C1F569D0);
  v3 = *v0;
  v4 = sub_1C1F52BB4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_1C1EB5BCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21238, &qword_1C1F56970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1EB5C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v38 - v10;
  v39 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  if (sub_1C1F52734())
  {
    sub_1C1F52A44();
    v15 = sub_1C1F52A34();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  v43 = sub_1C1F52734();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_1C1F52714();
    sub_1C1F526D4();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1C1F52AB4();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_1C1F523B4();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v8, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_1C1F52414();
        v32 = *v47;
        (*v47)(v8, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1C1EB60AC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C1EB62F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C1F52034();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1EB6338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21248, &qword_1C1F58400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CalculateExpression.ClearOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EB6450(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EB7428, &v87);
  v3 = v87;
  if (!v87)
  {
    return 0;
  }

  v4 = &v87;
  v6 = v88;
  v5 = v89;
  v7 = v90;
  v8 = *(*v87 + 568);
  sub_1C1EB74E0(v87, v88, v89, v90);

  if (((v8)(v9) & 1) == 0 && ((*(*v3 + 576))() & 1) == 0)
  {
    sub_1C1EB77EC(v3, v6, v79);
    sub_1C1E98278(v3, v6, v5, v7);
    if ((v79[0] & 1) == 0)
    {
LABEL_10:

      goto LABEL_11;
    }

    v10 = v85;
    v11 = v86;
    if (v86 < v85)
    {
      __break(1u);
    }

    else
    {
      v2 = v86 + 1;
      if (!__OFADD__(v86, 1))
      {
        v12 = v83;
        v8 = v84;
        if (sub_1C1EB7558(v3, v85, v86 + 1))
        {
          goto LABEL_10;
        }

        v77 = v12;
        v76 = *(*v3 + 416);
        v14 = (v76)(v10);
        if (v14)
        {
          v15 = *(v14 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          if (v15 != 53)
          {
            LOBYTE(v87) = v15;
            v78[0] = 15;
            sub_1C1E9019C();
            if (sub_1C1F52414())
            {
              v16 = (v76)(v11);
              if (v16)
              {
                v17 = *(v16 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

                if (v17 != 53)
                {
                  LOBYTE(v87) = v17;
                  v78[0] = 16;
                  if (sub_1C1F52414())
                  {
                    if (__OFSUB__(v11, 1))
                    {
LABEL_115:
                      __break(1u);
                      goto LABEL_116;
                    }

                    sub_1C1EB77EC(v3, v11 - 1, &v87);
                    if ((v87 & 1) == 0)
                    {
                      goto LABEL_10;
                    }

                    if ((v87 & 0x100) != 0 && v10 >= v88)
                    {
                      v72 = v92;
                      v71 = v89 ^ v91;
                      if ((v89 ^ v91))
                      {
                        v18 = (v76)(v77);
                        if (v18)
                        {
                          v19 = *(v18 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

                          if (v19 != 53)
                          {
                            v78[0] = v19;
                            if (sub_1C1F52414())
                            {
                              v20 = (*v3 + 408);
                              v10 = *v20;
                              v21 = (*v20)(v78);
                              sub_1C1E98338(v11);

                              v21(v78, 0);
                              v8 = v77 + 1;
                              if (!__OFADD__(v77, 1))
                              {
                                if (v72 >= v8)
                                {
                                  v22 = v10;
                                  v23 = (v10)(v78);
                                  sub_1C1E98F60(v8, v72);
                                  v23(v78, 0);
                                  type metadata accessor for CalculateExpression.RichToken(0);
                                  v78[0] = 3;
                                  v24 = sub_1C1E7DD60();
                                  v8 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v78, v24 & 1);
                                  v25 = v22(v78);
                                  v27 = v26;
                                  v10 = *v26;
                                  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
                                  *v27 = v10;
                                  if (!isUniquelyReferenced_nonNull_bridgeObject || v10 < 0 || (v10 & 0x4000000000000000) != 0)
                                  {
                                    v10 = sub_1C1E98444(v10);
                                    *v27 = v10;
                                  }

                                  if ((v77 & 0x8000000000000000) == 0)
                                  {
                                    if (v77 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                    {
                                      *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v77 + 0x20) = v8;

                                      v25(v78, 0);
LABEL_71:

                                      sub_1C1E98278(v3, v6, v5, v7);
                                      return 1;
                                    }

                                    goto LABEL_130;
                                  }

LABEL_129:
                                  __break(1u);
LABEL_130:
                                  __break(1u);
                                  goto LABEL_131;
                                }

LABEL_128:
                                __break(1u);
                                goto LABEL_129;
                              }

LABEL_127:
                              __break(1u);
                              goto LABEL_128;
                            }
                          }
                        }

                        if (v8)
                        {
                          v49 = (*v3 + 408);
                          v8 = *v49;
                          v50 = (*v49)(v78);
                          sub_1C1E98338(v11);

                          v50(v78, 0);
                          v10 = v77 + 1;
                          if (!__OFADD__(v77, 1))
                          {
                            if (v72 >= v10)
                            {
                              v51 = (v8)(v78);
                              sub_1C1E98F60(v10, v72);
                              v51(v78, 0);
                              v52 = (v76)(v77);
                              if (v52)
                              {
                                v53 = *(v52 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

                                v78[0] = v53;
                                if (CalculateExpression.TokenType.isBasicOperator.getter())
                                {
                                  goto LABEL_71;
                                }
                              }

                              if (v77 < 0)
                              {
                                goto LABEL_71;
                              }

                              type metadata accessor for CalculateExpression.RichToken(0);
                              v78[0] = 3;
                              v54 = sub_1C1E7DD60();
                              v11 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v78, v54 & 1);
                              v8 = (v8)(v78);
                              if (!(*v55 >> 62))
                              {
                                if (*((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v10)
                                {
                                  goto LABEL_80;
                                }

                                goto LABEL_125;
                              }

LABEL_124:
                              if (sub_1C1F52994() >= v10)
                              {
LABEL_80:
                                if ((v10 & 0x8000000000000000) == 0)
                                {
                                  v56 = v10;
                                  v57 = v10;
LABEL_98:
                                  sub_1C1E98664(v56, v57, v11);
                                  goto LABEL_49;
                                }

LABEL_126:
                                __break(1u);
                                goto LABEL_127;
                              }

LABEL_125:
                              __break(1u);
                              goto LABEL_126;
                            }

LABEL_123:
                            __break(1u);
                            goto LABEL_124;
                          }

LABEL_122:
                          __break(1u);
                          goto LABEL_123;
                        }

                        v58 = (v76)(v77);
                        if (v58)
                        {
                          v59 = *(v58 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

                          if (v59 != 53)
                          {
                            v78[0] = v59;
                            if (sub_1C1F52414())
                            {
                              v60 = (*v3 + 408);
                              v61 = *v60;
                              v8 = (*v60)(v78);
                              sub_1C1E98338(v11);

                              (v8)(v78, 0);
                              if (v72 >= v77)
                              {
                                v62 = v61(v78);
                                sub_1C1E98F60(v77, v72);
                                v62(v78, 0);
                                type metadata accessor for CalculateExpression.RichToken(0);
                                v78[0] = 4;
                                v63 = sub_1C1E7DD60();
                                v10 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v78, v63 & 1);
                                v8 = v61(v78);
                                if (!(*v64 >> 62))
                                {
                                  result = *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                  goto LABEL_88;
                                }

LABEL_132:
                                result = sub_1C1F52994();
LABEL_88:
                                if (result < v77)
                                {
                                  __break(1u);
                                }

                                else if ((v77 & 0x8000000000000000) == 0)
                                {
                                  sub_1C1E98664(v77, v77, v10);
                                  goto LABEL_49;
                                }

                                __break(1u);
                                return result;
                              }

LABEL_131:
                              __break(1u);
                              goto LABEL_132;
                            }
                          }
                        }
                      }

                      v65 = (*v3 + 408);
                      v66 = *v65;
                      v8 = (*v65)(v78);
                      sub_1C1E98338(v11);

                      (v8)(v78, 0);
                      v11 = v72;
                      if (v72 >= v10)
                      {
                        v67 = v66(v78);
                        v76 = v10;
                        sub_1C1E98F60(v10, v72);
                        v67(v78, 0);
                        if ((v71 & 1) == 0)
                        {
                          goto LABEL_71;
                        }

                        type metadata accessor for CalculateExpression.RichToken(0);
                        v78[0] = 4;
                        v68 = sub_1C1E7DD60();
                        v11 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v78, v68 & 1);
                        v8 = v66(v78);
                        if (!(*v69 >> 62))
                        {
                          v70 = *((*v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_95:
                          if (v70 < v76)
                          {
                            __break(1u);
                          }

                          else if ((v76 & 0x8000000000000000) == 0)
                          {
                            v56 = v76;
                            v57 = v76;
                            goto LABEL_98;
                          }

                          __break(1u);
                          goto LABEL_122;
                        }

LABEL_119:
                        v70 = sub_1C1F52994();
                        goto LABEL_95;
                      }

LABEL_118:
                      __break(1u);
                      goto LABEL_119;
                    }
                  }
                }
              }
            }
          }
        }

        if (v79[1])
        {
          v29 = v81;
          v11 = v82;
          v75 = v80;
          v30 = (v76)();
          if (!v30 || (v31 = *(v30 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v31 == 53) || (v78[0] = v31, sub_1C1E9019C(), (sub_1C1F52414() & 1) == 0))
          {
            if (v8)
            {
              if (v29)
              {
                v8 = v75 + 1;
                if (!__OFADD__(v75, 1))
                {
                  if (v10 >= v8)
                  {
                    v73 = *(*v3 + 408);
                    v39 = v73(v78);
                    v77 = v75 + 1;
                    sub_1C1E98F60(v8, v10);
                    v39(v78, 0);
                    v40 = (v76)(v75);
                    if (v40)
                    {
                      v41 = *(v40 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

                      v78[0] = v41;
                      if (CalculateExpression.TokenType.isBasicOperator.getter())
                      {
                        goto LABEL_71;
                      }
                    }

                    if (v75 < 0)
                    {
                      goto LABEL_71;
                    }

                    type metadata accessor for CalculateExpression.RichToken(0);
                    v78[0] = 3;
                    v42 = sub_1C1E7DD60();
                    v11 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v78, v42 & 1);
                    v10 = v73(v78);
                    if (!(*v43 >> 62))
                    {
                      v44 = *((*v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_59:
                      if (v44 < v77)
                      {
                        __break(1u);
                      }

                      else if ((v77 & 0x8000000000000000) == 0)
                      {
                        sub_1C1E98664(v77, v77, v11);

                        (v10)(v78, 0);
                        goto LABEL_71;
                      }

                      __break(1u);
                      goto LABEL_115;
                    }

LABEL_112:
                    v44 = sub_1C1F52994();
                    goto LABEL_59;
                  }

LABEL_111:
                  __break(1u);
                  goto LABEL_112;
                }

LABEL_110:
                __break(1u);
                goto LABEL_111;
              }

              v45 = (v76)(v75);
              if (v45)
              {
                v46 = *(v45 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

                if (v46 != 53)
                {
                  v78[0] = v46;
                  sub_1C1E9019C();
                  if (sub_1C1F52414())
                  {
                    v8 = v77 + 1;
                    if (!__OFADD__(v77, 1))
                    {
                      if (v8 >= v75)
                      {
                        v47 = (*(*v3 + 408))(v78);
                        sub_1C1E98F60(v75, v8);
                        v47(v78, 0);
                        goto LABEL_71;
                      }

                      goto LABEL_117;
                    }

LABEL_116:
                    __break(1u);
LABEL_117:
                    __break(1u);
                    goto LABEL_118;
                  }
                }
              }
            }

            v8 = v77 + 1;
            if (!__OFADD__(v77, 1))
            {
              if (v8 >= v11)
              {
                v48 = (*(*v3 + 408))(v78);
                sub_1C1E98F60(v11, v8);
                v48(v78, 0);
                goto LABEL_71;
              }

              goto LABEL_109;
            }

LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }
        }

        v11 = type metadata accessor for CalculateExpression.RichToken(0);
        v78[0] = 16;
        v32 = sub_1C1E7DD60();
        v4 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v78, v32 & 1);
        v74 = *(*v3 + 408);
        v8 = v74(v78);
        if (!(*v33 >> 62))
        {
          if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v2)
          {
            goto LABEL_43;
          }

          goto LABEL_102;
        }

LABEL_101:
        if (sub_1C1F52994() >= v2)
        {
LABEL_43:
          v76 = v10;
          if ((v2 & 0x8000000000000000) == 0)
          {
            sub_1C1E98664(v2, v2, v4);

            (v8)(v78, 0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
            v2 = swift_allocObject();
            *(v2 + 16) = xmmword_1C1F56430;
            v78[0] = 1;
            v34 = sub_1C1E7DD60();
            *(v2 + 32) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(49, 0xE100000000000000, v78, v34 & 1);
            v78[0] = 6;
            v35 = sub_1C1E7DD60();
            *(v2 + 40) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v78, v35 & 1);
            v10 = v74;
            v8 = v74(v78);
            sub_1C1E9B764(v76, v76, v2);

            (v8)(v78, 0);
            v78[0] = 15;
            v36 = sub_1C1E7DD60();
            v37 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v78, v36 & 1);
            v11 = v77 + 1;
            if (!__OFADD__(v77, 1))
            {
              v2 = v37;
              v8 = v74(v78);
              if (!(*v38 >> 62))
              {
                if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v11)
                {
                  goto LABEL_47;
                }

                goto LABEL_106;
              }

LABEL_105:
              if (sub_1C1F52994() >= v11)
              {
LABEL_47:
                if ((v11 & 0x8000000000000000) == 0)
                {
                  sub_1C1E98664(v11, v11, v2);
LABEL_49:

                  (v8)(v78, 0);
                  goto LABEL_71;
                }

                goto LABEL_107;
              }

LABEL_106:
              __break(1u);
LABEL_107:
              __break(1u);
              goto LABEL_108;
            }

LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

LABEL_102:
        __break(1u);
        goto LABEL_103;
      }
    }

    __break(1u);
    goto LABEL_101;
  }

  sub_1C1E98278(v3, v6, v5, v7);
LABEL_11:
  sub_1C1E98278(v3, v6, v5, v7);
  return 0;
}

uint64_t sub_1C1EB7428(uint64_t *a1)
{
  v1 = *a1;
  if ((*(**a1 + 464))() & 1) != 0 || ((*(*v1 + 568))())
  {
    return 1;
  }

  else
  {
    return (*(*v1 + 576))() & 1;
  }
}

uint64_t sub_1C1EB74E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t CalculateExpression.ReciprocalOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EB7558(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    goto LABEL_31;
  }

  v5 = *(*result + 416);
  do
  {
    v6 = v5(a2);
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = *(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v7 == 53)
    {
      goto LABEL_13;
    }

    sub_1C1E9019C();
    if ((sub_1C1F52414() & 1) == 0)
    {
      goto LABEL_13;
    }

    v8 = v5(v3);
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = *(v8 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v9 == 53)
    {
      goto LABEL_13;
    }

    result = sub_1C1F52414();
    if ((result & 1) == 0)
    {
      goto LABEL_13;
    }

    if (__OFADD__(a2, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    ++a2;
    v10 = __OFSUB__(v3--, 1);
  }

  while (!v10);
  __break(1u);
LABEL_13:
  v11 = v5(a2);
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v12 != 53)
    {
      sub_1C1E9019C();
      result = sub_1C1F52414();
      if (result)
      {
        v10 = __OFADD__(a2++, 1);
        if (v10)
        {
          goto LABEL_32;
        }
      }
    }
  }

  if (a2 != v3)
  {
    return 0;
  }

  v13 = v5(v3);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v19 = *(v13 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v18 = 1;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v19, &v18) & 1) == 0)
  {

    return 0;
  }

  if ((*(*v14 + 232))() != 49 || v15 != 0xE100000000000000)
  {
    v17 = sub_1C1F52C64();

    return (v17 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1C1EB77EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  result = sub_1C1EBA588(&v56);
  v51 = v56;
  v8 = v56 - 1;
  if (__OFSUB__(v56, 1))
  {
    __break(1u);
    goto LABEL_75;
  }

  v9 = (*a1 + 416);
  v10 = *v9;
  v11 = (*v9)(v56 - 1);
  v12 = &OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  if (v11)
  {
    v13 = *(v11 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v13 != 53)
    {
      LOBYTE(v55) = v13;
      v54 = 17;
      sub_1C1E9019C();
      result = sub_1C1F52414();
      if (result)
      {
        v14 = __OFSUB__(v8--, 1);
        if (v14)
        {
          goto LABEL_76;
        }
      }
    }
  }

  v15 = v10(v8);
  if (!v15)
  {
    goto LABEL_27;
  }

  v16 = *(v15 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  if (v16 == 53)
  {
    goto LABEL_27;
  }

  LOBYTE(v55) = v16;
  v54 = 4;
  v3 = sub_1C1E9019C();
  result = sub_1C1F52414();
  if ((result & 1) == 0)
  {
    goto LABEL_27;
  }

  v17 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v18 = v10(v8 - 1);
  if (v18)
  {
    v19 = *(v18 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v19 != 53)
    {
      LOBYTE(v55) = v19;
      v54 = 17;
      result = sub_1C1F52414();
      if (result)
      {
        v14 = __OFSUB__(v17, 1);
        v17 = v8 - 2;
        if (v14)
        {
          goto LABEL_82;
        }
      }
    }
  }

  if (v10(v17))
  {

    v20 = v10(v17);
    if (!v20 || (v21 = *(v20 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v21 == 53) || (LOBYTE(v55) = v21, v54 = 15, (sub_1C1F52414() & 1) == 0))
    {
      v22 = v10(v17);
      if (!v22 || (v23 = *(v22 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , LOBYTE(v55) = v23, (CalculateExpression.TokenType.isOperator.getter() & 1) == 0))
      {
LABEL_27:
        v49 = 0;
        v26 = v8 - 1;
        if (!__OFSUB__(v8, 1))
        {
          goto LABEL_28;
        }

        goto LABEL_70;
      }
    }
  }

  v24 = v10(v17);
  if (!v24 || (v25 = *(v24 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v25 == 53) || (LOBYTE(v55) = v25, v54 = 17, result = sub_1C1F52414(), (result & 1) == 0))
  {
    v49 = 1;
    v8 = v17;
    v14 = __OFSUB__(v17, 1);
    v26 = v17 - 1;
    if (!v14)
    {
      goto LABEL_28;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v8 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
LABEL_85:
    __break(1u);
    return result;
  }

  v49 = 1;
  v26 = v17 - 2;
  if (__OFSUB__(v8, 1))
  {
    goto LABEL_70;
  }

LABEL_28:
  v55 = v26;
  result = sub_1C1EBA588(&v55);
  v3 = v55 - 1;
  if (__OFSUB__(v55, 1))
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v50 = v55;
  v27 = v10(v55 - 1);
  if (v27)
  {
    v28 = *(v27 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v28 != 53)
    {
      v54 = v28;
      v53 = 17;
      sub_1C1E9019C();
      result = sub_1C1F52414();
      if (result)
      {
        v14 = __OFSUB__(v3--, 1);
        if (v14)
        {
          goto LABEL_78;
        }
      }
    }
  }

  v29 = v10(v3);
  v48 = a2;
  if (!v29 || (v30 = *(v29 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v30 == 53) || (v54 = v30, v53 = 4, sub_1C1E9019C(), result = sub_1C1F52414(), (result & 1) == 0))
  {
    v47 = v3;
    v39 = 0;
    goto LABEL_53;
  }

  v12 = (v3 - 1);
  if (__OFSUB__(v3, 1))
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v31 = v10(v3 - 1);
  if (v31)
  {
    v32 = *(v31 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v32 != 53)
    {
      v54 = v32;
      v53 = 17;
      result = sub_1C1F52414();
      if (result)
      {
        v14 = __OFSUB__(v12, 1);
        v12 = (v3 - 2);
        if (v14)
        {
          goto LABEL_83;
        }
      }
    }
  }

  if (!v10(v12))
  {
    goto LABEL_47;
  }

  v33 = v10(v12);
  if (v33)
  {
    v34 = *(v33 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v34 != 53)
    {
      v54 = v34;
      v53 = 15;
      if (sub_1C1F52414())
      {
        goto LABEL_47;
      }
    }
  }

  v35 = v10(v12);
  if (!v35)
  {
LABEL_71:
    if (v49)
    {
      goto LABEL_47;
    }

LABEL_72:
    v47 = v3;
    v39 = 0;
    goto LABEL_53;
  }

  v36 = *(v35 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  v54 = v36;
  if (((v49 | CalculateExpression.TokenType.isOperator.getter()) & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_47:
  v37 = v10(v12);
  if (v37 && (v38 = *(v37 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v38 != 53) && (v54 = v38, v53 = 17, result = sub_1C1F52414(), (result & 1) != 0))
  {
    v47 = v12 - 1;
    if (__OFSUB__(v12, 1))
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v39 = 1;
  }

  else
  {
    v39 = 1;
    v47 = v12;
  }

LABEL_53:
  v40 = v10(v8);
  if (!v40 || (v41 = *(v40 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v41 == 53) || (v54 = v41, v53 = 6, sub_1C1E9019C(), result = sub_1C1F52414(), (result & 1) == 0))
  {
    v42 = v8;
    v43 = 0;
    goto LABEL_60;
  }

  if (v26 < v50)
  {
    goto LABEL_80;
  }

  if (__OFADD__(v26, 1))
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v42 = v8;
  v43 = sub_1C1EB7558(a1, v50, v26 + 1);
LABEL_60:
  result = v10(v51);
  if (result)
  {
    v44 = result;
    v45 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
    v54 = *(result + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    if (CalculateExpression.TokenType.isOperand.getter() & 1) != 0 || (v53 = *(v44 + v45), v52 = 15, (static CalculateExpression.TokenType.== infix(_:_:)(&v53, &v52)))
    {

      v46 = 1;
    }

    else
    {
      v54 = *(v44 + v45);
      v53 = 10;
      v46 = static CalculateExpression.TokenType.== infix(_:_:)(&v54, &v53);
    }
  }

  else
  {
    v46 = 0;
  }

  *a3 = v46 & 1;
  *(a3 + 1) = v43 & 1;
  *(a3 + 8) = v47;
  *(a3 + 16) = v39;
  *(a3 + 24) = v50;
  *(a3 + 32) = v26;
  *(a3 + 40) = v42;
  *(a3 + 48) = v49;
  *(a3 + 56) = v51;
  *(a3 + 64) = v48;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C1EB7F7C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[72])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C1EB7FD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1EB8040(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C1EB8094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C1EB80E8@<X0>(char *a1@<X8>)
{
  result = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = 3;
  if (result)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4 == 0xE000000000000000;
  }

  if (!v6)
  {
    result = sub_1C1F52C64();
    if (result)
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1C1EB813C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  v3 = v2;
  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EB8CEC, v72);
  v5 = v72[0];
  if (!v72[0])
  {
    return 0;
  }

  v7 = v72[1];
  v6 = v72[2];
  v8 = v72[3];
  v9 = *(*v72[0] + 416);

  v10 = v9(v7);
  if (!v10)
  {

    v14 = v5;
    v15 = v7;
    v16 = v6;
LABEL_7:
    v17 = v8;
LABEL_52:
    sub_1C1E98278(v14, v15, v16, v17);
    return 0;
  }

  v11 = v10;
  v67 = a1;
  v68 = v6;
  v12 = &OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  v13 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v72[0]) = *(v10 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  LOBYTE(v71) = 18;
  v65 = sub_1C1E9019C();
  if (sub_1C1F52414())
  {

    sub_1C1E98278(v5, v7, v68, v8);

    return 0;
  }

  v71 = v7;
  LOBYTE(v72[0]) = *(v11 + v13);
  v18 = v72;
  v66 = v11;
  if (CalculateExpression.TokenType.isOperand.getter())
  {
    v11 = v7;
    goto LABEL_10;
  }

  v70 = *(v11 + v13);
  v69 = 7;
  if (static CalculateExpression.TokenType.== infix(_:_:)(&v70, &v69))
  {
    if (__OFSUB__(v7, 1))
    {
      goto LABEL_111;
    }

    v22 = v9(v7 - 1);
    if (v22)
    {
      v23 = *(v22 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      v70 = v23;
      v18 = &v70;
      v11 = v7;
      if (CalculateExpression.TokenType.isOperand.getter())
      {
LABEL_10:
        while (1)
        {
          v13 = v11;
          v19 = __OFSUB__(v11--, 1);
          if (v19)
          {
            break;
          }

          v20 = v9(v11);
          if (v20)
          {
            v21 = *(v20 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

            LOBYTE(v72[0]) = v21;
            v18 = v72;
            if (CalculateExpression.TokenType.isOperand.getter())
            {
              continue;
            }
          }

          goto LABEL_22;
        }

        __break(1u);
        goto LABEL_100;
      }
    }
  }

  LOBYTE(v72[0]) = *(v66 + v13);
  v70 = 16;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v72, &v70) & 1) == 0 && (LOBYTE(v72[0]) = *(v66 + v13), v70 = 7, (static CalculateExpression.TokenType.== infix(_:_:)(v72, &v70) & 1) == 0) && (LOBYTE(v72[0]) = *(v66 + v13), v70 = 8, (static CalculateExpression.TokenType.== infix(_:_:)(v72, &v70) & 1) == 0) || (sub_1C1EBA588(&v71), v13 = v71, v71 < 0))
  {

    v14 = v5;
    v15 = v7;
    v16 = v68;
    goto LABEL_7;
  }

LABEL_22:
  v18 = v67;
  if ((*(*v67 + 224))())
  {
LABEL_23:
    v13 = 0;
    goto LABEL_32;
  }

  v11 = v13 - 1;
  v18 = v5;
  v24 = v9(v13 - 1);
  if (v24)
  {
    v18 = *(v24 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v18 != 53)
    {
      LOBYTE(v72[0]) = v18;
      v70 = 4;
      v18 = &type metadata for CalculateExpression.TokenType;
      if (sub_1C1F52414())
      {
        if (v13 == 1)
        {
          goto LABEL_23;
        }

        result = v13 - 2;
        if (__OFSUB__(v13, 2))
        {
LABEL_116:
          __break(1u);
          return result;
        }

        v18 = v5;
        v26 = v9(result);
        if (v26)
        {
          v12 = *(v26 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          LOBYTE(v72[0]) = v12;
          v18 = v72;
          if (CalculateExpression.TokenType.isOperator.getter())
          {
            --v13;
          }
        }
      }
    }
  }

LABEL_32:
  v65 = v8;
  if (v7 < v13)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v8 = 0;
  v12 = v13;
  while (1)
  {
    v18 = v5;
    v27 = v9(v12);
    if (v27)
    {
      v18 = v27;
      v11 = (*(*v27 + 352))(v27);

      if (v11 > v8)
      {
        v8 = v11;
      }
    }

    else if (v8 <= 0)
    {
      v8 = 0;
    }

    if (v7 == v12)
    {
      break;
    }

    v19 = __OFADD__(v12++, 1);
    if (v19)
    {
      __break(1u);
      break;
    }
  }

  v28 = v8 + v68;
  if (__OFADD__(v68, v8))
  {
    goto LABEL_101;
  }

  v12 = (v28 + 1);
  v18 = v65;
  if (__OFADD__(v28, 1))
  {
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (v12 >= *sub_1C1ED528C())
  {

    v14 = v5;
    v15 = v7;
    v16 = v68;
    v17 = v65;
    goto LABEL_52;
  }

  v12 = type metadata accessor for CalculateExpression.RichToken(0);
  LOBYTE(v72[0]) = 7;
  v29 = sub_1C1E7DD60();
  v8 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v72, v29 & 1);
  v9 = *(v3 + 16);
  v30 = *(v3 + 24);
  v62 = v30;
  if (v9 == 101 && v30 == 0xE100000000000000 || (sub_1C1F52C64() & 1) != 0)
  {
    LOBYTE(v72[0]) = 13;
    v31 = sub_1C1E7DD60() & 1;
    v32 = 0;
    v33 = 0;
  }

  else
  {
    if (!v9 && v30 == 0xE000000000000000 || (sub_1C1F52C64() & 1) != 0)
    {
      v34 = 18;
    }

    else
    {
      v34 = 1;
    }

    LOBYTE(v72[0]) = v34;

    v31 = sub_1C1E7DD60() & 1;
    v32 = v9;
    v33 = v30;
  }

  v64 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v32, v33, v72, v31);
  v18 = v5;
  v35 = (*(*v5 + 392))();
  v3 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    goto LABEL_103;
  }

  v18 = v35;
  v11 = v35 >> 62;
  if (!(v35 >> 62))
  {
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13)
    {
      goto LABEL_65;
    }

LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

LABEL_104:
  if (sub_1C1F52994() < v13)
  {
    goto LABEL_105;
  }

LABEL_65:
  if (v13 < 0)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  if (v11)
  {
    result = sub_1C1F52994();
  }

  else
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v3)
  {
    goto LABEL_107;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if ((v18 & 0xC000000000000001) == 0)
  {
    goto LABEL_74;
  }

  if (v3 < v13)
  {
    goto LABEL_112;
  }

  if (v13 == v3)
  {
LABEL_74:

    goto LABEL_78;
  }

  if (v13 >= v3)
  {
    __break(1u);
    goto LABEL_116;
  }

  v36 = v13;
  do
  {
    v37 = v36 + 1;
    sub_1C1F52AA4();
    v36 = v37;
  }

  while (v3 != v37);
LABEL_78:
  v61 = v9;
  v63 = v8;

  if (v11)
  {
    v12 = sub_1C1F52BA4();
    v8 = v38;
    v9 = v39;
    v11 = v40;
  }

  else
  {
    v12 = v18 & 0xFFFFFFFFFFFFFF8;
    v8 = ((v18 & 0xFFFFFFFFFFFFFF8) + 32);
    v11 = (2 * v3) | 1;
    v9 = v13;
  }

  if (v11)
  {
    sub_1C1F52C74();
    swift_unknownObjectRetain_n();
    v43 = swift_dynamicCastClass();
    if (!v43)
    {
      swift_unknownObjectRelease();
      v43 = MEMORY[0x1E69E7CC0];
    }

    v44 = *(v43 + 16);

    if (!__OFSUB__(v11 >> 1, v9))
    {
      if (v44 == (v11 >> 1) - v9)
      {
        v42 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v42)
        {
          goto LABEL_90;
        }

        v42 = MEMORY[0x1E69E7CC0];
        goto LABEL_89;
      }

      goto LABEL_114;
    }

    goto LABEL_113;
  }

  while (1)
  {
    sub_1C1EAFAA4(v12, v8, v9, v11);
    v42 = v41;
LABEL_89:
    swift_unknownObjectRelease();
LABEL_90:
    type metadata accessor for CalculateExpression.RichExpression();
    v45 = *(*v67 + 176);
    v46 = v45();
    v12 = CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v42, v46);
    LOBYTE(v72[0]) = 1;
    (*(*v12 + 280))(v72);
    v47 = *(*v63 + 312);

    v47(v48);
    v49 = (*v5 + 408);
    v60 = *v49;
    v50 = (*v49)(v72);
    sub_1C1E98F60(v13, v3);
    v50(v72, 0);
    if ((v61 || v62 != 0xE000000000000000) && (sub_1C1F52C64() & 1) == 0)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1C1F563C0;
    *(v51 + 32) = v64;

    v53 = (v45)(v52);
    v11 = CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v51, v53);
    v9 = v63;
    v54 = *(*v63 + 288);

    v54(v55);
    LOBYTE(v72[0]) = 3;
    (*(*v11 + 280))(v72);

    v8 = v60(v72);
    if (*v56 >> 62)
    {
LABEL_109:
      v57 = sub_1C1F52994();
    }

    else
    {
      v57 = *((*v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = v64;
    if (v57 >= v13)
    {
      sub_1C1E98664(v13, v13, v9);

      (v8)(v72, 0);

      goto LABEL_98;
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    swift_unknownObjectRelease_n();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1C1F56430;
  *(v58 + 32) = v64;
  *(v58 + 40) = v63;

  v59 = v60(v72);
  sub_1C1E9B764(v13, v13, v58);

  v59(v72, 0);
  (*(*v12 + 304))(0);
LABEL_98:

  sub_1C1E98278(v5, v7, v68, v65);
  return 1;
}

uint64_t sub_1C1EB8CEC(uint64_t *a1)
{
  v1 = *a1;
  if ((*(**a1 + 464))())
  {
    (*(*v1 + 272))(&v4);
    sub_1C1EB1200();
    v2 = sub_1C1F52414() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t CalculateExpression.ExponentialOperation.deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return v0;
}

uint64_t CalculateExpression.ExponentialOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1C1EB8E74(uint64_t a1)
{
  v2 = *(*a1 + 176);
  result = v2();
  if (result)
  {
    v4 = CalculateExpression.format.getter();

    if (v4 != 2)
    {
      return 0;
    }

    if (!(v2)(v5))
    {
      return 1;
    }

    v6 = CalculateExpression.postfixStack.getter();

    if (v6 >> 62)
    {
      v7 = sub_1C1F52994();
      if (v7)
      {
LABEL_6:
        v8 = __OFSUB__(v7, 1);
        result = v7 - 1;
        if (v8)
        {
          __break(1u);
        }

        else if ((v6 & 0xC000000000000001) == 0)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_22;
          }

          if (result >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

LABEL_11:

          v9 = CalculateExpression.rich.getter();
          v10 = (*(*v9 + 392))(v9);

          if (!(v10 >> 62))
          {
            v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:

            v12 = (*a1 + 408);
            v13 = *v12;
            v14 = (*v12)(v18);
            sub_1C1E98C40(v11);
            v14(v18, 0);
            v15 = *CalculateExpression.rich.getter();
            v16 = (*(v15 + 392))();

            v17 = v13(v18);
            sub_1C1E9B764(0, 0, v16);

            v17(v18, 0);
            (*(*a1 + 232))(0);
            (*(*a1 + 256))(1);

            return 1;
          }

LABEL_22:
          v11 = sub_1C1F52994();
          goto LABEL_13;
        }

        MEMORY[0x1C6911DB0](result, v6);
        goto LABEL_11;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }

  return result;
}

uint64_t CalculateExpression.RollInOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EB9210(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C1EB9260(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C1EB92F0;
}

void sub_1C1EB92F0(void **a1, char a2)
{
  v3 = *a1;
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

uint64_t sub_1C1EB9370(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1C1EB94E4(a1);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1C1EB93BC(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 104))();
  v4 = (*(*a2 + 104))();
  if (!v3)
  {
    if (!v4)
    {
      v5 = 1;
      return v5 & 1;
    }

LABEL_6:
    swift_unknownObjectRelease();
    v5 = 0;
    return v5 & 1;
  }

  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = sub_1C1F52414();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t sub_1C1EB94A0()
{
  MEMORY[0x1C6912D40](v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C1EB94E4(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t *sub_1C1EB953C()
{
  if (qword_1EDC2FA00 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA08;
}

uint64_t *sub_1C1EB958C()
{
  if (qword_1EDC2F9F0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F9F8;
}

uint64_t *sub_1C1EB95DC()
{
  if (qword_1EDC2F9E0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F9E8;
}

uint64_t *sub_1C1EB962C()
{
  if (qword_1EDC2F9D0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F9D8;
}

uint64_t *sub_1C1EB967C()
{
  if (qword_1EDC2F9C0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F9C8;
}

uint64_t *sub_1C1EB96CC()
{
  if (qword_1EDC2F9B0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F9B8;
}

uint64_t *sub_1C1EB971C()
{
  if (qword_1EDC2F930 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F938;
}

uint64_t *sub_1C1EB976C()
{
  if (qword_1EDC2F920 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F928;
}

uint64_t *sub_1C1EB97BC()
{
  if (qword_1EDC2FBA0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FBA8;
}

uint64_t *sub_1C1EB980C()
{
  if (qword_1EDC2FBD0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FBD8;
}

uint64_t *sub_1C1EB985C()
{
  if (qword_1EDC2FB70 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB78;
}

uint64_t *sub_1C1EB98AC()
{
  if (qword_1EDC2FB50 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB58;
}

uint64_t *sub_1C1EB98FC()
{
  if (qword_1EDC2FB90 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB98;
}

uint64_t *sub_1C1EB994C()
{
  if (qword_1EDC2F870 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F878;
}

uint64_t *sub_1C1EB999C()
{
  if (qword_1EDC2FDA0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FDA8;
}

uint64_t *sub_1C1EB99EC()
{
  if (qword_1EDC2FD00 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD08;
}

uint64_t *sub_1C1EB9A3C()
{
  if (qword_1EDC2FC80 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC88;
}

uint64_t *sub_1C1EB9A8C()
{
  if (qword_1EDC2FDC0 != -1)
  {
    swift_once();
  }

  return qword_1EDC2FDC8;
}

uint64_t *sub_1C1EB9ADC()
{
  if (qword_1EDC2FD50 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD58;
}

uint64_t *sub_1C1EB9B2C()
{
  if (qword_1EDC2FCA0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FCA8;
}

uint64_t *sub_1C1EB9B7C()
{
  if (qword_1EDC2FC50 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC58;
}

uint64_t *sub_1C1EB9BCC()
{
  if (qword_1EDC2F8D0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F8D8;
}

uint64_t *sub_1C1EB9C1C()
{
  if (qword_1EDC2F890 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F898;
}

uint64_t *sub_1C1EB9C6C()
{
  if (qword_1EDC2FB60 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB68;
}

uint64_t *sub_1C1EB9CBC()
{
  if (qword_1EDC2FB80 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB88;
}

uint64_t sub_1C1EB9D88(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v7 = a4;
    v8 = a3;
    swift_once();
    a3 = v8;
    a4 = v7;
  }

  *a4 = *a3;
}

uint64_t *sub_1C1EB9E0C()
{
  if (qword_1EDC2FB30 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB38;
}

uint64_t *sub_1C1EB9E5C()
{
  if (qword_1EDC2FB00 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB08;
}

uint64_t *sub_1C1EB9EAC()
{
  if (qword_1EDC2F960 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F968;
}

uint64_t *sub_1C1EB9EFC()
{
  if (qword_1EDC2F900 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F908;
}

uint64_t *sub_1C1EB9F4C()
{
  if (qword_1EDC2FAE0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FAE8;
}

uint64_t *sub_1C1EB9F9C()
{
  if (qword_1EDC2FD60 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD68;
}

uint64_t CalculateExpression.Operation.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](v1);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1EBA07C()
{
  (*(*v0 + 80))(&var1);
  v1 = var1;
  if (!var1)
  {
    v1 = 0;
  }

  if (var1 - 2 >= 2)
  {
    return v1;
  }

  else
  {
    return 2;
  }
}

uint64_t CalculateExpression.Operation.hashValue.getter()
{
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](v0);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1EBA190()
{
  v1 = *v0;
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](v1);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1EBA204@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CalculateExpression.Operation();
  result = sub_1C1F52A74();
  *a2 = result;
  return result;
}

uint64_t sub_1C1EBA244(uint64_t a1, uint64_t a2)
{
  v9 = *(a2 + 8);
  v10 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a1;
  v3 = *a2;
  v22 = v9 - 1;
  v11 = (*(*v3 + 416))(v9 - 1);
  if (!v11 || (v12 = *(v11 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v12 == 53) || (v21[0] = v12, sub_1C1E9019C(), result = sub_1C1F52414(), (result & 1) == 0))
  {
LABEL_7:
    sub_1C1EBA588(&v22);
    v10 = type metadata accessor for CalculateExpression.RichToken(0);
    v21[0] = 16;
    v14 = sub_1C1E7DD60();
    v15 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v21, v14 & 1);
    v6 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      v5 = v15;
      v16 = (*v3 + 408);
      v8 = *v16;
      v7 = (*v16)(v21);
      if (!(*v17 >> 62))
      {
        if (*((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v6)
        {
          goto LABEL_10;
        }

        goto LABEL_22;
      }

LABEL_21:
      if (sub_1C1F52994() >= v6)
      {
LABEL_10:
        if ((v6 & 0x8000000000000000) == 0)
        {
          sub_1C1E98664(v6, v6, v5);

          v7(v21, 0);
          v6 = v9 + 2;
          if (!__OFADD__(v9, 2))
          {
            v5 = v8(v21);
            if (!(*v18 >> 62))
            {
              if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v6)
              {
                goto LABEL_14;
              }

              goto LABEL_26;
            }

LABEL_25:
            if (sub_1C1F52994() >= v6)
            {
LABEL_14:
              if ((v6 & 0x8000000000000000) == 0)
              {

                sub_1C1E98664(v6, v6, v4);

                v5(v21, 0);
                v21[0] = 15;
                v19 = sub_1C1E7DD60();
                v4 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v21, v19 & 1);
                v10 = v22;
                v3 = v8(v21);
                if (!(*v20 >> 62))
                {
                  result = *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (result >= v10)
                  {
                    goto LABEL_17;
                  }

                  goto LABEL_29;
                }

LABEL_28:
                result = sub_1C1F52994();
                if (result >= v10)
                {
LABEL_17:
                  if ((v10 & 0x8000000000000000) == 0)
                  {
                    sub_1C1E98664(v10, v10, v4);

                    return v3(v21, 0);
                  }

                  goto LABEL_30;
                }

LABEL_29:
                __break(1u);
LABEL_30:
                __break(1u);
                goto LABEL_31;
              }

LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!__OFSUB__(v10, 1))
  {
    v22 = v9 - 2;
    goto LABEL_7;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C1EBA588(uint64_t *a1)
{
  v3 = *a1;
  v4 = (*v1 + 416);
  v5 = *v4;
  v6 = (*v4)(*a1);
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v7 != 53)
    {
      sub_1C1E9019C();
      if (sub_1C1F52414())
      {
        v8 = v5(v3);
        if (!v8 || (v9 = (*(*v8 + 280))(), v10 = , !v9) || (v11 = (*(*v9 + 576))(v10), , (v11 & 1) == 0))
        {
          result = v5(v3);
          if (!result || (v13 = (*(*result + 280))(), result = , !v13) || ((*(*v13 + 272))(&v24, result), result = , v24 == 4) || (BYTE2(v24) = v24, BYTE1(v24) = 3, sub_1C1EB1200(), result = sub_1C1F52414(), (result & 1) == 0))
          {
            v14 = __OFSUB__(v3--, 1);
            if (v14)
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            *a1 = v3;
            v15 = v5(v3);
            if (v15)
            {
              v16 = *(v15 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

              if (v16 != 53)
              {
                BYTE4(v24) = v16;
                BYTE3(v24) = 17;
                result = sub_1C1F52414();
                if (result)
                {
                  v14 = __OFSUB__(v3--, 1);
                  if (v14)
                  {
LABEL_39:
                    __break(1u);
                    return result;
                  }

                  *a1 = v3;
                }
              }
            }
          }
        }
      }
    }
  }

  v17 = v5(v3);
  if (v17)
  {
    v18 = *(v17 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v18 != 53)
    {
      BYTE6(v24) = v18;
      BYTE5(v24) = 8;
      sub_1C1E9019C();
      result = sub_1C1F52414();
      if (result)
      {
        v14 = __OFSUB__(v3--, 1);
        if (v14)
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        *a1 = v3;
        v19 = v5(v3);
        if (v19)
        {
          v20 = *(v19 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          if (v20 != 53)
          {
            v25 = v20;
            HIBYTE(v24) = 17;
            result = sub_1C1F52414();
            if (result)
            {
              v14 = __OFSUB__(v3--, 1);
              if (v14)
              {
LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

              *a1 = v3;
            }
          }
        }
      }
    }
  }

  result = v5(v3);
  if (!result)
  {
    return result;
  }

  v21 = *(result + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  if (v21 == 53)
  {
    return result;
  }

  v27 = v21;
  v26 = 16;
  sub_1C1E9019C();
  result = sub_1C1F52414();
  if ((result & 1) == 0)
  {
    return result;
  }

  result = sub_1C1EBAA5C(a1);
  v22 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    goto LABEL_36;
  }

  result = v5(*a1 - 1);
  if (result)
  {
    v23 = *(result + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v23 != 53)
    {
      v29 = v23;
      v28 = 10;
      result = sub_1C1F52414();
      if (result)
      {
        *a1 = v22;
      }
    }
  }

  return result;
}

uint64_t sub_1C1EBAA5C(uint64_t result)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    return result;
  }

  v2 = result;
  v3 = 0;
  v4 = *(*v1 + 392);
  for (i = *result + 4; ; --i)
  {
    v7 = i - 4;
    result = v4();
    if ((result & 0xC000000000000001) == 0)
    {
      break;
    }

    v8 = MEMORY[0x1C6911DB0](i - 4, result);
LABEL_8:

    v9 = *(v8 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    v15 = v9;
    v14 = 16;
    result = static CalculateExpression.TokenType.== infix(_:_:)(&v15, &v14);
    if (result)
    {
      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = v4();
      if ((result & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1C6911DB0](i - 4, result);
      }

      else
      {
        if (v7 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v10 = *(result + 8 * i);
      }

      v11 = *(v10 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      v13 = v11;
      v12 = 15;
      result = static CalculateExpression.TokenType.== infix(_:_:)(&v13, &v12);
      if (result)
      {
        v6 = __OFSUB__(v3--, 1);
        if (v6)
        {
          goto LABEL_22;
        }

        if (v3 < 1)
        {
          return result;
        }
      }
    }

    *v2 = i - 5;
    if (v7 <= 0)
    {
      return result;
    }
  }

  if (v7 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 8 * i);

    goto LABEL_8;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t CalculateExpression.RichExpression.editingToken(matching:)@<X0>(uint64_t (*a1)(void *)@<X0>, void *a3@<X8>)
{
  result = sub_1C1EBAF80(0);
  v4 = result;
  v5 = *(result + 16);
  if (v5)
  {
    v28 = result;
    while (v5 <= *(v4 + 16))
    {
      v7 = (v4 + 32 * v5);
      v8 = *v7;
      v9 = v7[1];
      v30 = v7[2];
      v10 = *(**v7 + 296);
      v31 = v7[3];

      if (v10(v11))
      {
        v36[0] = v8;
        v36[1] = v9;
        v36[2] = v30;
        v36[3] = v31;
        v6 = v9;
        if ((a1(v36) & 1) != 0 || ((*(*v8 + 272))(&v35), v34 = v35, v33 = 0, sub_1C1EBB52C(), sub_1C1F52684(), v12 = sub_1C1F52684(), v36[0] == v32))
        {
LABEL_26:

          *a3 = v8;
          a3[1] = v6;
          a3[2] = v30;
          a3[3] = v31;
          return result;
        }

        v29 = v9;
        v13 = (*v8 + 392);
        v14 = *v13;
        v15 = (*v13)(v12);
        v4 = v28;
        if (v15 >> 62)
        {
          v16 = sub_1C1F52994();
          v4 = v28;
        }

        else
        {
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v9 < v16 && (v9 & 0x8000000000000000) == 0)
        {
          v18 = 0;
          v19 = v9;
          do
          {
            v22 = v14(v17);
            if ((v22 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x1C6911DB0](v19, v22);
            }

            else
            {
              if (v19 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_28:
                __break(1u);
LABEL_29:
                __break(1u);
                goto LABEL_30;
              }

              v23 = *(v22 + 8 * v19 + 32);
            }

            v24 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
            LOBYTE(v36[0]) = *(v23 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
            LOBYTE(v32) = 16;
            if (static CalculateExpression.TokenType.== infix(_:_:)(v36, &v32))
            {

              v20 = __OFSUB__(v18--, 1);
              if (v20)
              {
                goto LABEL_28;
              }
            }

            else
            {
              LOBYTE(v36[0]) = *(v23 + v24);
              LOBYTE(v32) = 15;
              v25 = static CalculateExpression.TokenType.== infix(_:_:)(v36, &v32);

              if (v25)
              {
                v20 = __OFADD__(v18++, 1);
                if (v20)
                {
                  goto LABEL_29;
                }
              }
            }
          }

          while (v19-- >= 1);
          v4 = v28;
          v6 = v29;
          if (v18 >= 1)
          {
            goto LABEL_26;
          }
        }
      }

      --v5;

      if (!v5)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_30:

    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

uint64_t sub_1C1EBAF80(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*v1 + 392))();
  if (v4 >> 62)
  {
    v5 = sub_1C1F52994();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      do
      {
        v9 = (*(*v2 + 416))(--v5);
        if (!v9)
        {
          v7 = v5;
          goto LABEL_14;
        }

        v10 = v9;
        v11 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
        LOBYTE(v24) = *(v9 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        LOBYTE(v23) = 16;
        if (static CalculateExpression.TokenType.== infix(_:_:)(&v24, &v23) & 1) != 0 && ((*(*v10 + 256))())
        {
        }

        else
        {
          LOBYTE(v24) = *(v10 + v11);
          LOBYTE(v23) = 17;
          v8 = static CalculateExpression.TokenType.== infix(_:_:)(&v24, &v23);

          if ((v8 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        --v7;
      }

      while (v5 >= 1);
      v7 = -1;
    }

LABEL_14:
    v24 = v7;
    v12 = (*v2 + 416);
    v13 = *v12;
    v14 = (*v12)(v7);
    v15 = v7;
    if (v14)
    {
      v16 = v14;
      v17 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      LOBYTE(v23) = *(v14 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      sub_1C1E9019C();
      if (sub_1C1F52414() & 1) != 0 || (LOBYTE(v23) = *(v16 + v17), (sub_1C1F52414()))
      {

        v15 = v7;
      }

      else
      {
        sub_1C1EBA588(&v24);

        v15 = v24;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21250, &unk_1C1F56CE0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C1F56480;
    v19 = v13(v15);
    *(v18 + 32) = v2;
    *(v18 + 40) = v7;
    *(v18 + 48) = a1;
    *(v18 + 56) = v19;
    v23 = v18;

    v20 = v13(v15);
    if (!v20)
    {
      return v23;
    }

    v21 = v20;
    if ((*(*v20 + 280))())
    {
      result = a1 + 1;
      if (!__OFADD__(a1, 1))
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    if (!(*(*v21 + 304))())
    {
      goto LABEL_27;
    }

    result = a1 + 1;
    if (!__OFADD__(a1, 1))
    {
LABEL_26:
      v22 = sub_1C1EBAF80(result);
      sub_1C1EBB32C(v22);

LABEL_27:

      return v23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EBB32C(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C1EBB420(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1C1EBB420(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21250, &unk_1C1F56CE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1C1EBB52C()
{
  result = qword_1EDC2E8D0;
  if (!qword_1EDC2E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC2E8D0);
  }

  return result;
}

uint64_t sub_1C1EBB620(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C1EBB668(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1C1EBB6B8(uint64_t a1)
{
  if (MEMORY[0x1E69D4838])
  {
    v1 = MEMORY[0x1E69D4820] == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1 || MEMORY[0x1E69D4840] == 0 || MEMORY[0x1E69D4828] == 0 || MEMORY[0x1E69D4830] == 0)
  {
    v5 = type metadata accessor for StocksKitCurrencyCache();
  }

  else
  {
    v5 = type metadata accessor for StocksKitCurrencyCacheImpl();
  }

  result = [objc_allocWithZone(v5) init];
  qword_1EDC2F398 = result;
  return result;
}

id StocksKitCurrencyCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *sub_1C1EBB764()
{
  if (qword_1EDC2F390 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F398;
}

id static StocksKitCurrencyCache.shared.getter()
{
  if (qword_1EDC2F390 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC2F398;

  return v1;
}

BOOL static StocksKitCurrencyCache.isEnabled.getter()
{
  if (MEMORY[0x1E69D4828])
  {
    v0 = MEMORY[0x1E69D4830] == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0 && MEMORY[0x1E69D4840] != 0 && MEMORY[0x1E69D4820] != 0 && MEMORY[0x1E69D4838] != 0;
}

uint64_t sub_1C1EBBA80(const void *a1)
{
  v2 = _Block_copy(a1);
  v2[2](v2, 0);
  _Block_release(v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C1EBBC7C(const void *a1)
{
  v2 = _Block_copy(a1);
  v2[2](v2, 0);
  _Block_release(v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C1EBBD34()
{
  v1 = *(v0 + 16);
  v2 = sub_1C1F52004();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t StocksKitCurrencyCache.ProviderData.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t StocksKitCurrencyCache.ProviderData.logo.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StocksKitCurrencyCache.ProviderData(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_1C1EC2740(v4, v5, v6, v7);
}

uint64_t StocksKitCurrencyCache.ProviderLogo.light.getter()
{
  v1 = *v0;
  sub_1C1EC2790(*v0, *(v0 + 8));
  return v1;
}

uint64_t StocksKitCurrencyCache.ProviderLogo.dark.getter()
{
  v1 = *(v0 + 16);
  sub_1C1EC27E4(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1C1EBBFAC()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for StocksKitCurrencyCache.ProviderData(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

id StocksKitCurrencyCache.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StocksKitCurrencyCache();
  return objc_msgSendSuper2(&v3, sel_init);
}

id StocksKitCurrencyCache.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StocksKitCurrencyCache();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C1EBC114()
{
  v1 = sub_1C1F52304();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v2 = swift_task_alloc();
  v0[5] = v2;
  sub_1C1F52284();
  v0[6] = sub_1C1F52274();
  v3 = sub_1C1F52244();
  v0[7] = v3;
  v4 = *(v3 - 8);
  v0[8] = v4;
  v5 = swift_task_alloc();
  v0[9] = v5;
  (*(v4 + 104))();
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1C1EBC2D8;

  return MEMORY[0x1EEE42B58](v2, v5, 0x158E460913D00000, 1, 0);
}

uint64_t sub_1C1EBC2D8()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1C1EBC5C4;
  }

  else
  {

    v5 = sub_1C1EBC480;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C1EBC480()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = *(v0[2] + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  *(swift_task_alloc() + 16) = v2;
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1C1EC3D04(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));
  if (!v1)
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];

    (*(v7 + 8))(v6, v8);

    v9 = v0[1];
    v10 = v0[11] == 0;

    v9(v10);
  }
}

uint64_t sub_1C1EBC5C4()
{
  v1 = v0[11];
  v2 = v0[4];
  v4 = v0[2];
  v3 = v0[3];

  v5 = *(v4 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_1C1E83580(v5 + v6, &qword_1EBF21260, &qword_1C1F56D28);
  (*(v2 + 56))(v5 + v6, 1, 1, v3);
  os_unfair_lock_unlock((v5 + v7));

  v8 = v0[1];
  v9 = v0[11] == 0;

  return v8(v9);
}

uint64_t sub_1C1EBC868(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C1EC3D00;

  return StocksKitCurrencyCacheImpl.refresh()();
}

uint64_t StocksKitCurrencyCacheImpl.refresh(timeout:)(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C1EBC934, 0, 0);
}

uint64_t sub_1C1EBC934()
{
  v1 = sub_1C1F52304();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v2 = swift_task_alloc();
  v0[6] = v2;
  sub_1C1F52284();
  v0[7] = sub_1C1F52274();
  v3 = sub_1C1F52D04();
  v5 = v4;
  v6 = sub_1C1F52244();
  v0[8] = v6;
  v7 = *(v6 - 8);
  v0[9] = v7;
  v8 = swift_task_alloc();
  v0[10] = v8;
  (*(v7 + 104))();
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_1C1EBCB0C;

  return MEMORY[0x1EEE42B58](v2, v8, v3, v5, 0);
}

uint64_t sub_1C1EBCB0C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1C1EBCDF8;
  }

  else
  {

    v5 = sub_1C1EBCCB4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C1EBCCB4()
{
  v1 = v0[12];
  v2 = v0[6];
  v3 = *(v0[3] + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  *(swift_task_alloc() + 16) = v2;
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1C1EC3D04(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));
  if (!v1)
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];

    (*(v7 + 8))(v6, v8);

    v9 = v0[1];
    v10 = v0[12] == 0;

    v9(v10);
  }
}

uint64_t sub_1C1EBCDF8()
{
  v1 = v0[12];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];

  v5 = *(v4 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_1C1E83580(v5 + v6, &qword_1EBF21260, &qword_1C1F56D28);
  (*(v2 + 56))(v5 + v6, 1, 1, v3);
  os_unfair_lock_unlock((v5 + v7));

  v8 = v0[1];
  v9 = v0[12] == 0;

  return v8(v9);
}

uint64_t sub_1C1EBD0AC(const void *a1, void *a2, double a3)
{
  v3[2] = a2;
  v3[3] = _Block_copy(a1);
  a2;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1C1EBD164;

  return StocksKitCurrencyCacheImpl.refresh(timeout:)(a3);
}

uint64_t sub_1C1EBD164(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

Swift::Bool __swiftcall StocksKitCurrencyCacheImpl.refreshSynchronously(timeout:)(Swift::Double timeout)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21288, &qword_1C1F56D58);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21290, &qword_1C1F56D60);
  v6 = swift_allocObject();
  *(v6 + 20) = 0;
  *(v6 + 16) = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = sub_1C1F527A4();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = timeout;
  *(v9 + 40) = v1;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  v10 = v1;

  v11 = v7;
  sub_1C1EBE044(0, 0, v5, &unk_1C1F56D70, v9);

  sub_1C1F52884();
  os_unfair_lock_lock((v6 + 20));
  LOBYTE(v5) = *(v6 + 16);
  os_unfair_lock_unlock((v6 + 20));

  return v5;
}

uint64_t sub_1C1EBD440(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 24) = a5;
  *(v7 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C1EBD468, 0, 0);
}

uint64_t sub_1C1EBD468()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = sub_1C1F52304();
  *(v0 + 48) = v3;
  *(v0 + 56) = *(v3 - 8);
  *(v0 + 64) = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[9] = v4;
  sub_1C1F52284();
  v1[10] = sub_1C1F52274();
  if (v2 == 0.0)
  {
    v5 = sub_1C1F52244();
    v1[16] = v5;
    v6 = *(v5 - 8);
    v1[17] = v6;
    v7 = swift_task_alloc();
    v1[18] = v7;
    (*(v6 + 104))();
    v8 = swift_task_alloc();
    v1[19] = v8;
    *v8 = v1;
    v8[1] = sub_1C1EBDA74;
    v9 = 0x158E460913D00000;
    v10 = v4;
    v11 = v7;
    v12 = 1;
  }

  else
  {
    v13 = sub_1C1F52D04();
    v15 = v14;
    v16 = sub_1C1F52244();
    v1[11] = v16;
    v17 = *(v16 - 8);
    v1[12] = v17;
    v18 = swift_task_alloc();
    v1[13] = v18;
    (*(v17 + 104))();
    v19 = swift_task_alloc();
    v1[14] = v19;
    *v19 = v1;
    v19[1] = sub_1C1EBD74C;
    v10 = v4;
    v11 = v18;
    v9 = v13;
    v12 = v15;
  }

  return MEMORY[0x1EEE42B58](v10, v11, v9, v12, 0);
}

uint64_t sub_1C1EBD74C()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1C1EBDD9C;
  }

  else
  {

    v5 = sub_1C1EBD8F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C1EBD8F4()
{
  v1 = v0[15];
  v2 = v0[8];
  v3 = v0[3];
  (*(v0[7] + 32))(v2, v0[9], v0[6]);

  v4 = *(v3 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  *(swift_task_alloc() + 16) = v2;
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_1C1EC3CE8(v4 + v5);
  os_unfair_lock_unlock((v4 + v6));
  if (!v1)
  {
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];
    v10 = v0[4];

    os_unfair_lock_lock((v10 + 20));
    *(v10 + 16) = 1;
    os_unfair_lock_unlock((v10 + 20));
    (*(v8 + 8))(v7, v9);

    sub_1C1F52894();
    v11 = v0[1];

    v11();
  }
}

uint64_t sub_1C1EBDA74()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  *(*v1 + 160) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1C1EBDEF0;
  }

  else
  {

    v5 = sub_1C1EBDC1C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C1EBDC1C()
{
  v1 = v0[20];
  v2 = v0[8];
  v3 = v0[3];
  (*(v0[7] + 32))(v2, v0[9], v0[6]);

  v4 = *(v3 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  *(swift_task_alloc() + 16) = v2;
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_1C1EC3CE8(v4 + v5);
  os_unfair_lock_unlock((v4 + v6));
  if (!v1)
  {
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];
    v10 = v0[4];

    os_unfair_lock_lock((v10 + 20));
    *(v10 + 16) = 1;
    os_unfair_lock_unlock((v10 + 20));
    (*(v8 + 8))(v7, v9);

    sub_1C1F52894();
    v11 = v0[1];

    v11();
  }
}

uint64_t sub_1C1EBDD9C()
{
  v1 = v0[15];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];

  v6 = *(v5 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_1C1E83580(v6 + v7, &qword_1EBF21260, &qword_1C1F56D28);
  (*(v3 + 56))(v6 + v7, 1, 1, v2);
  os_unfair_lock_unlock((v6 + v8));
  os_unfair_lock_lock((v4 + 20));
  *(v4 + 16) = 0;
  os_unfair_lock_unlock((v4 + 20));

  sub_1C1F52894();
  v9 = v0[1];

  return v9();
}

uint64_t sub_1C1EBDEF0()
{
  v1 = v0[20];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];

  v6 = *(v5 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_1C1E83580(v6 + v7, &qword_1EBF21260, &qword_1C1F56D28);
  (*(v3 + 56))(v6 + v7, 1, 1, v2);
  os_unfair_lock_unlock((v6 + v8));
  os_unfair_lock_lock((v4 + 20));
  *(v4 + 16) = 0;
  os_unfair_lock_unlock((v4 + 20));

  sub_1C1F52894();
  v9 = v0[1];

  return v9();
}

uint64_t sub_1C1EBE044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21288, &qword_1C1F56D58);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C1EB1D18(a3, v25 - v10, &qword_1EBF21288, &qword_1C1F56D58);
  v12 = sub_1C1F527A4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C1E83580(v11, &qword_1EBF21288, &qword_1C1F56D58);
  }

  else
  {
    sub_1C1F52794();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C1F52764();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C1F52474() + 32;
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

      sub_1C1E83580(a3, &qword_1EBF21288, &qword_1C1F56D58);

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

  sub_1C1E83580(a3, &qword_1EBF21288, &qword_1C1F56D58);
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

Swift::Bool __swiftcall StocksKitCurrencyCacheImpl.initializeSynchronously()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21288, &qword_1C1F56D58);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21260, &qword_1C1F56D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = *&v0[OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock];
  v8 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_1C1EB1D18(v7 + v8, v6, &qword_1EBF21260, &qword_1C1F56D28);
  os_unfair_lock_unlock((v7 + v9));
  v10 = sub_1C1F52304();
  v11 = 1;
  LODWORD(v8) = (*(*(v10 - 8) + 48))(v6, 1, v10);
  sub_1C1E83580(v6, &qword_1EBF21260, &qword_1C1F56D28);
  if (v8 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21290, &qword_1C1F56D60);
    v12 = swift_allocObject();
    *(v12 + 20) = 0;
    *(v12 + 16) = 0;
    v13 = dispatch_semaphore_create(0);
    v14 = sub_1C1F527A4();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v0;
    v15[5] = v12;
    v15[6] = v13;
    v16 = v0;

    v17 = v13;
    sub_1C1EBE044(0, 0, v3, &unk_1C1F56D80, v15);

    sub_1C1F52884();
    os_unfair_lock_lock((v12 + 20));
    v11 = *(v12 + 16);
    os_unfair_lock_unlock((v12 + 20));
  }

  return v11;
}

uint64_t sub_1C1EBE638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C1EBE65C, 0, 0);
}

uint64_t sub_1C1EBE65C()
{
  v1 = sub_1C1F52304();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v2 = swift_task_alloc();
  v0[7] = v2;
  sub_1C1F52284();
  v0[8] = sub_1C1F52274();
  v3 = sub_1C1F52244();
  v0[9] = v3;
  v4 = *(v3 - 8);
  v0[10] = v4;
  v5 = swift_task_alloc();
  v0[11] = v5;
  (*(v4 + 104))();
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1C1EBE820;

  return MEMORY[0x1EEE42B58](v2, v5, 0x158E460913D00000, 1, 0);
}

uint64_t sub_1C1EBE820()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1C1EBEB24;
  }

  else
  {

    v5 = sub_1C1EBE9C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C1EBE9C8()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = *(v0[2] + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  *(swift_task_alloc() + 16) = v2;
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1C1EC3B4C(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));
  if (!v1)
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    v9 = v0[3];

    os_unfair_lock_lock((v9 + 20));
    *(v9 + 16) = 1;
    os_unfair_lock_unlock((v9 + 20));
    (*(v7 + 8))(v6, v8);

    sub_1C1F52894();
    v10 = v0[1];

    v10();
  }
}

uint64_t sub_1C1EBEB24()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  v6 = *(v5 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_1C1E83580(v6 + v7, &qword_1EBF21260, &qword_1C1F56D28);
  (*(v2 + 56))(v6 + v7, 1, 1, v3);
  os_unfair_lock_unlock((v6 + v8));
  os_unfair_lock_lock((v4 + 20));
  *(v4 + 16) = 0;
  os_unfair_lock_unlock((v4 + 20));

  sub_1C1F52894();
  v9 = v0[1];

  return v9();
}

uint64_t sub_1C1EBEC70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21260, &qword_1C1F56D28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1C1EB1D18(a1, &v11 - v5, &qword_1EBF21260, &qword_1C1F56D28);
  v7 = sub_1C1F52304();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  result = sub_1C1E83580(v6, &qword_1EBF21260, &qword_1C1F56D28);
  if (v9 == 1)
  {
    sub_1C1E83580(a1, &qword_1EBF21260, &qword_1C1F56D28);
    (*(v8 + 16))(a1, a2, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  return result;
}

uint64_t StocksKitCurrencyCacheImpl.needsRefresh.getter()
{
  v24 = sub_1C1F52004();
  v1 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21260, &qword_1C1F56D28);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  v14 = *(*v13 + *MEMORY[0x1E69E6B68] + 16);
  v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v13 + v15));
  sub_1C1EB1D18(v13 + v14, v12, &qword_1EBF21260, &qword_1C1F56D28);
  os_unfair_lock_unlock((v13 + v15));
  v16 = sub_1C1F52304();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v12, 1, v16) == 1)
  {
    sub_1C1E83580(v12, &qword_1EBF21260, &qword_1C1F56D28);
    v18 = 1;
  }

  else
  {
    sub_1C1F522E4();
    (*(v17 + 8))(v12, v16);
    v19 = v6;
    v20 = v24;
    (*(v1 + 32))(v9, v19, v24);
    sub_1C1F51FF4();
    v18 = sub_1C1F51FE4();
    v21 = *(v1 + 8);
    v21(v3, v20);
    v21(v9, v20);
  }

  return v18 & 1;
}

uint64_t StocksKitCurrencyCacheImpl.lastRefreshDate.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21270, &qword_1C1F56D38);
  v2[4] = swift_task_alloc();
  v3 = sub_1C1F52004();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C1EBF268, 0, 0);
}

uint64_t sub_1C1EBF268()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21260, &qword_1C1F56D28);
  v2 = swift_task_alloc();
  v3 = *(v1 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  v4 = MEMORY[0x1E69E6B68];
  v5 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v6));
  sub_1C1EB1D18(v3 + v5, v2, &qword_1EBF21260, &qword_1C1F56D28);
  os_unfair_lock_unlock((v3 + v6));
  v7 = sub_1C1F52304();
  *(v0 + 80) = v7;
  v8 = *(v7 - 8);
  *(v0 + 88) = v8;
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = *(v0 + 24);
    v11 = *(v0 + 32);
    sub_1C1E83580(v2, &qword_1EBF21260, &qword_1C1F56D28);

    v13 = *(v12 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_lastRefreshDateLock);
    *(v0 + 96) = v13;
    v14 = *v13;
    v15 = *(*v13 + *v4 + 16);
    *(v0 + 104) = v15;
    v16 = *(v14 + 48);
    *(v0 + 168) = v16;
    v17 = (v16 + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v13 + v17));
    sub_1C1EB1D18(v13 + v15, v11, &qword_1EBF21270, &qword_1C1F56D38);
    os_unfair_lock_unlock((v13 + v17));
    if ((*(v10 + 48))(v11, 1, v9) == 1)
    {
      sub_1C1E83580(*(v0 + 32), &qword_1EBF21270, &qword_1C1F56D38);
      v18 = swift_task_alloc();
      *(v0 + 112) = v18;
      sub_1C1F52284();
      *(v0 + 120) = sub_1C1F52274();
      v19 = sub_1C1F52244();
      *(v0 + 128) = v19;
      v20 = *(v19 - 8);
      *(v0 + 136) = v20;
      v21 = swift_task_alloc();
      *(v0 + 144) = v21;
      (*(v20 + 104))();
      v22 = swift_task_alloc();
      *(v0 + 152) = v22;
      *v22 = v0;
      v22[1] = sub_1C1EBF740;

      return MEMORY[0x1EEE42B58](v18, v21, 0x158E460913D00000, 1, 0);
    }

    v30 = *(v0 + 48);
    v29 = *(v0 + 56);
    v31 = *(v0 + 40);
    v32 = *(v0 + 16);
    v33 = *(v30 + 32);
    v33(v29, *(v0 + 32), v31);
    v33(v32, v29, v31);
    (*(v30 + 56))(v32, 0, 1, v31);
  }

  else
  {
    v24 = *(v0 + 64);
    v23 = *(v0 + 72);
    v25 = *(v0 + 40);
    v26 = *(v0 + 48);
    v27 = *(v0 + 16);
    sub_1C1F522F4();
    (*(v8 + 8))(v2, v7);

    v28 = *(v26 + 32);
    v28(v23, v24, v25);
    v28(v27, v23, v25);
    (*(v26 + 56))(v27, 0, 1, v25);
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1C1EBF740()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  *(*v1 + 160) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1C1EBFA50;
  }

  else
  {

    v5 = sub_1C1EBF8E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C1EBF8E8()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = (*(v0 + 168) + 3) & 0x1FFFFFFFCLL;
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock((v4 + v5));
  sub_1C1EC2AA0(v4 + v3);
  os_unfair_lock_unlock((v4 + v5));
  if (!v1)
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);

    (*(v8 + 8))(v6, v7);
    v9 = *(v0 + 104);
    v10 = *(v0 + 96);
    v11 = *(v0 + 16);
    v12 = (*(v0 + 168) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v10 + v12));
    sub_1C1EB1D18(v10 + v9, v11, &qword_1EBF21270, &qword_1C1F56D38);
    os_unfair_lock_unlock((v10 + v12));

    v13 = *(v0 + 8);

    v13();
  }
}

uint64_t sub_1C1EBFA50()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v0 + 16);
  v4 = (*(v0 + 168) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v2 + v4));
  sub_1C1EB1D18(v2 + v1, v3, &qword_1EBF21270, &qword_1C1F56D38);
  os_unfair_lock_unlock((v2 + v4));

  v5 = *(v0 + 8);

  return v5();
}

unint64_t StocksKitCurrencyCacheImpl.currencyData.getter()
{
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212A0, &qword_1C1F56D90);
  MEMORY[0x1EEE9AC00](v82);
  v81 = v66 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212A8, &qword_1C1F56D98);
  v69 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v66 - v3;
  v5 = sub_1C1F52304();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v78 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21260, &qword_1C1F56D28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v66 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);
  v12 = *(*v11 + *MEMORY[0x1E69E6B68] + 16);
  v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v11 + v13));
  sub_1C1EB1D18(v11 + v12, v10, &qword_1EBF21260, &qword_1C1F56D28);
  os_unfair_lock_unlock((v11 + v13));
  if ((*(v6 + 48))(v10, 1, v5) == 1)
  {
    sub_1C1E83580(v10, &qword_1EBF21260, &qword_1C1F56D28);
    return sub_1C1EC25F0(MEMORY[0x1E69E7CC0]);
  }

  v67 = v6;
  v68 = v5;
  v15 = v78;
  (*(v6 + 32))(v78, v10, v5);
  v16 = sub_1C1EC25F0(MEMORY[0x1E69E7CC0]);
  v17 = sub_1C1F522B4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v74 = v19;
  v20 = v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1F522C4();
  sub_1C1F52294();
  v21 = *(v18 + 8);
  v75 = v18 + 8;
  v76 = v17;
  v73 = v21;
  v21(v20, v17);
  swift_getOpaqueTypeConformance2();
  sub_1C1F52604();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212B0, &qword_1C1F56DA0);
  v66[1] = v66;
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v66 - v23;
  v14 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = v15;
  v71 = v4;
  v72 = v2;
  for (i = v24; ; v24 = i)
  {
    while (1)
    {
      sub_1C1F528F4();
      v28 = sub_1C1F52324();
      v29 = *(v28 - 8);
      v30 = (*(v29 + 48))(v24, 1, v28);
      if (v30 == 1)
      {
        (*(v69 + 8))(v4, v2);
        (*(v67 + 8))(v25, v68);
        return v14;
      }

      v82 = v14;
      v79 = v66;
      v31 = *(v29 + 64);
      v32 = MEMORY[0x1EEE9AC00](v30);
      v33 = v66 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 32))(v33, v24, v28, v32);
      v81 = sub_1C1F52064();
      v35 = v34;
      MEMORY[0x1EEE9AC00](v81);
      v37 = v66 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = sub_1C1F522C4();
      MEMORY[0x1EEE9AC00](v38);
      sub_1C1F52334();
      v39 = COERCE_DOUBLE(sub_1C1F522A4());
      v41 = v40;
      v80 = *(v29 + 8);
      v80(v33, v28);
      v73(v37, v76);
      v42 = (v41 & 1) != 0 ? 0.0 : v39;
      v43 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      if (v43)
      {
        break;
      }

      v14 = v82;
      v56 = sub_1C1EAC150(v81, v35);
      v58 = v57;

      if ((v58 & 1) == 0)
      {
        goto LABEL_5;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v14;
      v4 = v71;
      v2 = v72;
      v24 = i;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1C1EC2484();
        v14 = v83;
      }

      sub_1C1EC22D4(v56, v14);
      v80(v33, v28);
      v25 = v78;
    }

    v44 = v43;
    v45 = v82;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v45;
    v47 = v81;
    v49 = sub_1C1EAC150(v81, v35);
    v50 = *(v45 + 16);
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      break;
    }

    v53 = v48;
    if (*(v45 + 24) >= v52)
    {
      if (v46)
      {
        if (v48)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1C1EC2484();
        if (v53)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1C1EC2030(v52, v46);
      v54 = sub_1C1EAC150(v47, v35);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_31;
      }

      v49 = v54;
      if (v53)
      {
LABEL_4:

        v14 = v83;
        v26 = v83[7];
        v27 = *(v26 + 8 * v49);
        *(v26 + 8 * v49) = v44;

LABEL_5:
        v80(v33, v28);
        goto LABEL_6;
      }
    }

    v60 = v47;
    v14 = v83;
    v83[(v49 >> 6) + 8] |= 1 << v49;
    v61 = (v14[6] + 16 * v49);
    *v61 = v60;
    v61[1] = v35;
    *(v14[7] + 8 * v49) = v44;
    v80(v33, v28);
    v62 = v14[2];
    v63 = __OFADD__(v62, 1);
    v64 = v62 + 1;
    if (v63)
    {
      goto LABEL_30;
    }

    v14[2] = v64;
LABEL_6:
    v25 = v78;
    v4 = v71;
    v2 = v72;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1C1F52CA4();
  __break(1u);
  return result;
}

uint64_t sub_1C1EC0448()
{
  v1 = sub_1C1F52304();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21260, &qword_1C1F56D28);
  v2 = swift_task_alloc();
  v0[6] = v2;
  v0[7] = sub_1C1F52284();
  v0[8] = sub_1C1F52274();
  v3 = sub_1C1F52244();
  v0[9] = v3;
  v4 = *(v3 - 8);
  v0[10] = v4;
  v5 = swift_task_alloc();
  v0[11] = v5;
  (*(v4 + 104))();
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1C1EC0648;

  return MEMORY[0x1EEE42B58](v2, v5, 0x158E460913D00000, 1, 0);
}

uint64_t sub_1C1EC0648()
{
  v2 = *v1;

  v3 = v2[11];
  v4 = v2[10];
  v5 = v2[9];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1C1EC1298;
  }

  else
  {
    (*(v4 + 8))(v3, v5);

    v6 = sub_1C1EC080C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C1EC080C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  (*(v4 + 56))(v1, 0, 1, v3);
  (*(v4 + 32))(v2, v1, v3);

  v5 = sub_1C1F52204();
  v0[13] = v5;
  v6 = *(v5 - 8);
  v0[14] = v6;
  v7 = swift_task_alloc();
  v0[15] = v7;
  v8 = sub_1C1F52234();
  v0[16] = v8;
  v9 = *(v8 - 8);
  v0[17] = *(v9 + 64);
  v10 = swift_task_alloc();
  sub_1C1F522D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212B8, &qword_1C1F56DB0);
  v11 = swift_task_alloc();
  sub_1C1F52214();
  v12 = *(v9 + 8);
  v0[18] = v12;
  v0[19] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v10, v8);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_1C1E83580(v11, &qword_1EBF212B8, &qword_1C1F56DB0);

    v13 = v0[18];
    v14 = v0[16];
    v16 = v0[4];
    v15 = v0[5];
    v17 = v0[2];
    v31 = v0[3];

    v18 = swift_task_alloc();
    sub_1C1F522D4();
    v19 = sub_1C1F52224();
    v29 = v20;
    v30 = v19;
    v13(v18, v14);
    v21 = swift_task_alloc();
    sub_1C1F522D4();
    v22 = type metadata accessor for StocksKitCurrencyCache.ProviderData(0);
    sub_1C1F521B4();
    v13(v21, v14);
    (*(v16 + 8))(v15, v31);
    *v17 = v30;
    v17[1] = v29;
    v23 = v17 + *(v22 + 24);
    *v23 = xmmword_1C1F56CF0;
    *(v23 + 3) = 0;
    *(v23 + 4) = 0;
    *(v23 + 2) = 0;

    (*(*(v22 - 8) + 56))(v17, 0, 1, v22);

    v24 = v0[1];

    return v24();
  }

  else
  {
    (*(v6 + 32))(v7, v11, v5);

    v26 = sub_1C1F521F4();
    v0[20] = v26;
    v0[21] = *(v26 - 8);
    v0[22] = swift_task_alloc();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212C0, &qword_1C1F56DB8);
    v27 = swift_task_alloc();
    v0[23] = v27;
    v0[24] = sub_1C1F52274();
    v28 = swift_task_alloc();
    v0[25] = v28;
    *v28 = v0;
    v28[1] = sub_1C1EC0CEC;

    return MEMORY[0x1EEE42B60](v27, v7);
  }
}

uint64_t sub_1C1EC0CEC()
{

  if (v0)
  {

    v1 = sub_1C1EC0E34;
  }

  else
  {

    v1 = sub_1C1EC1040;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1C1EC0E34()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v3 + 56))(v1, 1, 1, v2);
  sub_1C1E83580(v1, &qword_1EBF212C0, &qword_1C1F56DB8);

  v4 = v0[18];
  v5 = v0[16];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v19 = v0[3];

  v9 = swift_task_alloc();
  sub_1C1F522D4();
  v10 = sub_1C1F52224();
  v17 = v11;
  v18 = v10;
  v4(v9, v5);
  v12 = swift_task_alloc();
  sub_1C1F522D4();
  v13 = type metadata accessor for StocksKitCurrencyCache.ProviderData(0);
  sub_1C1F521B4();
  v4(v12, v5);
  (*(v7 + 8))(v6, v19);
  *v8 = v18;
  v8[1] = v17;
  v14 = v8 + *(v13 + 24);
  *v14 = xmmword_1C1F56CF0;
  *(v14 + 3) = 0;
  *(v14 + 4) = 0;
  *(v14 + 2) = 0;

  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1C1EC1040()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];
  (*(v3 + 56))(v1, 0, 1, v4);
  (*(v3 + 32))(v2, v1, v4);

  v8 = sub_1C1F521D4();
  v32 = v9;
  v33 = v8;
  v10 = sub_1C1F521C4();
  v30 = v11;
  v31 = v10;
  sub_1C1F521E4();
  v13 = v12;
  (*(v3 + 8))(v2, v4);
  (*(v5 + 8))(v6, v7);
  v14 = v0[18];
  v15 = v0[16];
  v16 = v0[4];
  v17 = v0[5];
  v18 = v0[2];
  v29 = v0[3];

  v19 = swift_task_alloc();
  sub_1C1F522D4();
  v20 = sub_1C1F52224();
  v27 = v21;
  v28 = v20;
  v14(v19, v15);
  v22 = swift_task_alloc();
  sub_1C1F522D4();
  v23 = type metadata accessor for StocksKitCurrencyCache.ProviderData(0);
  sub_1C1F521B4();
  v14(v22, v15);
  (*(v16 + 8))(v17, v29);
  *v18 = v28;
  v18[1] = v27;
  v24 = (v18 + *(v23 + 24));
  *v24 = v33;
  v24[1] = v32;
  v24[2] = v31;
  v24[3] = v30;
  v24[4] = v13;

  (*(*(v23 - 8) + 56))(v18, 0, 1, v23);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1C1EC1298()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  (*(v3 + 56))(v1, 1, 1, v2);
  sub_1C1E83580(v1, &qword_1EBF21260, &qword_1C1F56D28);

  v5 = type metadata accessor for StocksKitCurrencyCache.ProviderData(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = v0[1];

  return v6();
}

id StocksKitCurrencyCacheImpl.init()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21270, &qword_1C1F56D38);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21260, &qword_1C1F56D28);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_1C1F52304();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21268, &qword_1C1F56D30);
  v10 = swift_allocObject();
  *(v10 + ((*(*v10 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v11 = MEMORY[0x1E69E6B68];
  sub_1C1EC281C(v8, v10 + *(*v10 + *MEMORY[0x1E69E6B68] + 16), &qword_1EBF21260, &qword_1C1F56D28);
  *&v0[v5] = v10;
  v12 = OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_lastRefreshDateLock;
  v13 = sub_1C1F52004();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21278, &qword_1C1F56D40);
  v14 = swift_allocObject();
  *(v14 + ((*(*v14 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1C1EC281C(v4, v14 + *(*v14 + *v11 + 16), &qword_1EBF21270, &qword_1C1F56D38);
  *&v0[v12] = v14;
  v16.receiver = v0;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_1C1EC16C4()
{
}

id StocksKitCurrencyCacheImpl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1EC1788(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1C1EC3D1C;

  return v6();
}

uint64_t sub_1C1EC1870(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C1EC1958;

  return v7();
}

uint64_t sub_1C1EC1958()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C1EC1A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21288, &qword_1C1F56D58);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1C1EB1D18(a3, v23 - v10, &qword_1EBF21288, &qword_1C1F56D58);
  v12 = sub_1C1F527A4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1C1E83580(v11, &qword_1EBF21288, &qword_1C1F56D58);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1C1F52794();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1C1F52764();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1C1F52474() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1C1E83580(a3, &qword_1EBF21288, &qword_1C1F56D58);

    return v21;
  }

LABEL_8:
  sub_1C1E83580(a3, &qword_1EBF21288, &qword_1C1F56D58);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}