uint64_t sub_1BB5ADD5C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1BB6BA844();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C278, &qword_1BB6BE2D0);
  result = sub_1BB6BB2B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1BB5B4694(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1BB6BAB74();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1BB5AE0B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C210, &qword_1BB6BE268);
  result = sub_1BB6BB2B4();
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
      result = sub_1BB6BB914();
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BB5AE2EC(uint64_t result, unint64_t a2, char a3)
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
    sub_1BB5AD55C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1BB5AEBEC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1BB5AF3C8(v5 + 1);
  }

  v8 = *v3;
  result = sub_1BB6BB914();
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
  result = sub_1BB6BB864();
  __break(1u);
  return result;
}

uint64_t sub_1BB5AE40C(uint64_t result, unint64_t a2, char a3)
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
    sub_1BB5AD780(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1BB5AED2C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1BB5AF5B8(v5 + 1);
  }

  v8 = *v3;
  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](v4);
  result = sub_1BB6BB964();
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
  result = sub_1BB6BB864();
  __break(1u);
  return result;
}

uint64_t sub_1BB5AE558(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_1BB5AD9D0(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1BB5AEE6C();
      goto LABEL_15;
    }

    sub_1BB5AF7D8(v10 + 1);
  }

  v12 = *v3;
  sub_1BB6BB924();
  sub_1BB6BA7F4();
  sub_1BB5B4694(&qword_1EBC5C280, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BB6BAB84();
  sub_1BB6BA844();
  sub_1BB5B4694(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BB6BAB84();
  v13 = sub_1BB6BB964();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v25 + 72);
    do
    {
      sub_1BB5B4570(*(v12 + 48) + v16 * a2, v9);
      if (sub_1BB6BA7C4())
      {
        v17 = sub_1BB6BA814();
        sub_1BB5B45D4(v9);
        if (v17)
        {
          sub_1BB6BB864();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_1BB5B45D4(v9);
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v18 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1BB5B4630(a1, *(v18 + 48) + *(v25 + 72) * a2);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1BB5AE81C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1BB6BA844();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
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
    sub_1BB5ADD5C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1BB5AF050();
      goto LABEL_12;
    }

    sub_1BB5AFB34(v11 + 1);
  }

  v13 = *v3;
  sub_1BB5B4694(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v14 = sub_1BB6BAB74();
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
      sub_1BB5B4694(&qword_1EBC5C298, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v22 = sub_1BB6BABE4();
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
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
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
  result = sub_1BB6BB864();
  __break(1u);
  return result;
}

unint64_t sub_1BB5AEAC0(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_1BB5AE0B8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_1BB5AF288();
      result = v7;
      goto LABEL_12;
    }

    sub_1BB5AFE50(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_1BB6BB914();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
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
  result = sub_1BB6BB864();
  __break(1u);
  return result;
}

void *sub_1BB5AEBEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2B8, &qword_1BB6BE2F8);
  v2 = *v0;
  v3 = sub_1BB6BB2A4();
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

void *sub_1BB5AED2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2F8, &qword_1BB6BE338);
  v2 = *v0;
  v3 = sub_1BB6BB2A4();
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

void *sub_1BB5AEE6C()
{
  v1 = v0;
  v2 = type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C290, &qword_1BB6BE2D8);
  v6 = *v0;
  v7 = sub_1BB6BB2A4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1BB5B4570(*(v6 + 48) + v21, v5);
        result = sub_1BB5B4630(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1BB5AF050()
{
  v1 = v0;
  v2 = sub_1BB6BA844();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C278, &qword_1BB6BE2D0);
  v6 = *v0;
  v7 = sub_1BB6BB2A4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1BB5AF288()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C210, &qword_1BB6BE268);
  v2 = *v0;
  v3 = sub_1BB6BB2A4();
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

uint64_t sub_1BB5AF3C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2B8, &qword_1BB6BE2F8);
  result = sub_1BB6BB2B4();
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
      result = sub_1BB6BB914();
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

uint64_t sub_1BB5AF5B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2F8, &qword_1BB6BE338);
  result = sub_1BB6BB2B4();
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
      sub_1BB6BB924();
      MEMORY[0x1BFB117B0](v16);
      result = sub_1BB6BB964();
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

        goto LABEL_28;
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

uint64_t sub_1BB5AF7D8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C290, &qword_1BB6BE2D8);
  result = sub_1BB6BB2B4();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = v6 + 56;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      sub_1BB5B4570(v20 + v21 * (v17 | (v9 << 6)), v5);
      sub_1BB6BB924();
      sub_1BB6BA7F4();
      sub_1BB5B4694(&qword_1EBC5C280, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1BB6BAB84();
      sub_1BB6BA844();
      sub_1BB5B4694(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1BB6BAB84();
      result = sub_1BB6BB964();
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

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1BB5B4630(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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

uint64_t sub_1BB5AFB34(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1BB6BA844();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C278, &qword_1BB6BE2D0);
  v7 = sub_1BB6BB2B4();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1BB5B4694(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1BB6BAB74();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1BB5AFE50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C210, &qword_1BB6BE268);
  result = sub_1BB6BB2B4();
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
      result = sub_1BB6BB914();
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

unint64_t sub_1BB5B0078(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C268, &unk_1BB6BE2C0);
    v3 = sub_1BB6BB594();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1BB6A1048(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 4 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1BB5B01E0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1BB6BB594();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v9 = *(i - 8);
      v15 = *i;
      result = a4(v9);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 16 * result) = v15;
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      if (!--v4)
      {
        return v7;
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

void *sub_1BB5B02F8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, __n128))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_1BB6BB594();
  LOBYTE(v8) = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = (a4)(v8);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  result = v9;
  v14 = (a1 + 56);
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    *(v7[6] + v12) = v8;
    *(v7[7] + 8 * v12) = result;
    v15 = v7[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v7[2] = v17;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v18 = v14 + 2;
    v8 = *(v14 - 8);
    v19 = *v14;

    v12 = (a4)(v8);
    v14 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1BB5B045C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, __n128))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_1BB6BB594();
  LOBYTE(v8) = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = (a4)(v8);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  result = v9;
  v14 = (a1 + 56);
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    *(v7[6] + v12) = v8;
    *(v7[7] + 8 * v12) = result;
    v15 = v7[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v7[2] = v17;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v18 = v14 + 2;
    v8 = *(v14 - 8);
    v19 = *v14;

    v12 = (a4)(v8);
    v14 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BB5B0570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C320, &qword_1BB6BE368);
    v3 = sub_1BB6BB594();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BB5982A0(v4, v13, &qword_1EBC5C318, &qword_1BB6BE360);
      result = sub_1BB6A1244(v13);
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
      result = sub_1BB5B4560(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1BB5B06AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2F0, &qword_1BB6BE330);
    v3 = sub_1BB6BB594();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1BB6A10FC(v5, v6);
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

unint64_t sub_1BB5B07C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2E8, &qword_1BB6BE328);
    v3 = sub_1BB6BB594();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1BB6A10FC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void *sub_1BB5B08C4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2C8, &unk_1BB6C0540);
  v3 = sub_1BB6BB594();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1BB6A1004(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1BB6A1004(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BB5B0A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C258, &unk_1BB6BE2B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C260, &unk_1BB6C5520);
    v7 = sub_1BB6BB594();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1BB5982A0(v9, v5, &qword_1EBC5C258, &unk_1BB6BE2B0);
      result = sub_1BB6A1288(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1BB6BA844();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_1BB5B0C54(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, __n128))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_1BB6BB594();
  LOBYTE(v8) = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = (a4)(v8);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  result = v9;
  v14 = (a1 + 56);
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    *(v7[6] + v12) = v8;
    *(v7[7] + 8 * v12) = result;
    v15 = v7[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v7[2] = v17;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v18 = v14 + 2;
    v8 = *(v14 - 8);
    v19 = *v14;

    v12 = (a4)(v8);
    v14 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BB5B0DB8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1BB6BB594();
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {
        return v7;
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

unint64_t sub_1BB5B0EA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2E0, &qword_1BB6BE320);
    v3 = sub_1BB6BB594();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1BB6A10FC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1BB5B0FA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C1F0, &qword_1BB6BE248);
    v3 = sub_1BB6BB594();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BB5982A0(v4, &v11, &qword_1EBC5C1F8, &qword_1BB6BE250);
      v5 = v11;
      result = sub_1BB6A138C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1BB5B4560(&v12, (v3[7] + 32 * result));
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

void *sub_1BB5B10CC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2B0, &qword_1BB6BE2F0);
  v3 = sub_1BB6BB594();
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v8 = sub_1BB6A1004(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v6;
  v12 = a1 + 11;
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + 8 * v10) = v4;
    v13 = (v3[7] + 24 * v10);
    *v13 = v5;
    v13[1] = v7;
    v13[2] = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 3);
    v5 = *(v12 - 2);
    v7 = *(v12 - 1);
    v18 = *v12;

    v10 = sub_1BB6A1004(v4);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BB5B11F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C200, &qword_1BB6BE258);
    v3 = sub_1BB6BB594();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1BB6A1004(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1BB5B12D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C208, &qword_1BB6BE260);
    v3 = sub_1BB6BB594();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1BB6A1004(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1BB5B13AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2A0, &qword_1BB6BE2E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C2A8, &qword_1BB6BE2E8);
    v7 = sub_1BB6BB594();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1BB5982A0(v9, v5, &qword_1EBC5C2A0, &qword_1BB6BE2E0);
      result = sub_1BB6A1288(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1BB6BA844();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1BB5B1594(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C228, &qword_1BB6BE280);
    v3 = sub_1BB6BB594();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      result = sub_1BB6A36B0();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_1BB5B167C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C218, &qword_1BB6BE270);
    v3 = sub_1BB6BB594();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BB5982A0(v4, &v13, &qword_1EBC5C220, &qword_1BB6BE278);
      v5 = v13;
      v6 = v14;
      result = sub_1BB6A10FC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BB5B4560(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1BB5B17AC(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1BB5B17BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[99] = v3;
  v4[98] = a3;
  v4[97] = a2;
  v4[96] = a1;
  v5 = sub_1BB6BA7F4();
  v4[100] = v5;
  v4[101] = *(v5 - 8);
  v4[102] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB5B1888, 0, 0);
}

uint64_t sub_1BB5B1888()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v6 = *(v0 + 776);
  v7 = *(v0 + 768);
  *(v4 + 256) = 0x2D000000500;
  *(v4 + 264) = 1;
  *(v4 + 272) = 0;
  v8 = *(v2 + 16);
  v8(v1, v5, v3);
  type metadata accessor for DKIntelligentTrackingInternalState(0);
  swift_allocObject();

  v9 = sub_1BB5D681C(v1, v7, v6);

  *(v4 + 16) = v9;
  v8(v1, v5, v3);
  type metadata accessor for DKIntelligentTrackingState(0);
  swift_allocObject();
  *(v4 + 40) = DKIntelligentTrackingState.init(time:)(v1);
  *(v4 + 24) = v7;
  type metadata accessor for DKIntelligentTrackingFSM();
  swift_allocObject();

  *(v4 + 32) = sub_1BB616208(v10);
  v11 = *(v4 + 16);
  v12 = *(v4 + 40);
  type metadata accessor for DKPreprocessTask(0);
  v13 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKPreprocessTask_lastMetadata) = 0;

  sub_1BB6BAA24();
  v13[2] = 0x65636F7270657270;
  v13[3] = 0xEA00000000007373;
  v13[4] = v7;
  v13[5] = v11;
  v13[6] = v12;
  *(v4 + 48) = v13;
  v14 = *(v4 + 16);
  v15 = *(v4 + 40);
  type metadata accessor for DKPrepareInputTask(0);
  v16 = swift_allocObject();
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastMetadata) = 0;
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_saveFaceCropToFile) = 0;
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_saveBodyCropToFile) = 0;
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_saveHandCropToFile) = 0;
  *(v16 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_saveImageToFile) = 0;

  sub_1BB6BA724();
  sub_1BB6BA724();
  sub_1BB6BA724();
  sub_1BB6BA724();
  sub_1BB6BAA24();
  strcpy((v16 + 16), "prepareInput");
  *(v16 + 29) = 0;
  *(v16 + 30) = -5120;
  *(v16 + 32) = v7;
  *(v16 + 40) = v14;
  *(v16 + 48) = v15;
  *(v4 + 56) = v16;
  v17 = *(v4 + 16);
  v18 = *(v4 + 40);
  type metadata accessor for DKSubjectGroupingTask(0);
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKSubjectGroupingTask_handAssociationThreshold) = 0xBFE0000000000000;

  sub_1BB6BAA24();
  v19[2] = 0x477463656A627573;
  v19[3] = 0xEF676E6970756F72;
  v19[4] = v7;
  v19[5] = v17;
  v19[6] = v18;
  *(v4 + 72) = v19;
  v20 = *(v4 + 16);
  v21 = *(v4 + 40);
  type metadata accessor for DKTrackerTask(0);
  v22 = swift_allocObject();

  sub_1BB6BAA24();
  v22[2] = 0x72656B63617274;
  v22[3] = 0xE700000000000000;
  v22[4] = v7;
  v22[5] = v20;
  v22[6] = v21;
  *(v4 + 88) = v22;
  v23 = *(v4 + 16);
  v24 = *(v4 + 40);
  type metadata accessor for DKSubjectSelectionTask(0);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_issModel;
  *(v25 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_issModel) = 0;
  v27 = v25 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_primaryTrackerId;
  *v27 = 0;
  v27[8] = 1;
  v28 = v25 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_subjectSelectionRequest;
  *v28 = 0;
  *(v28 + 1) = 0;
  v28[16] = -1;
  *(v25 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_useFramingFeedback) = 1;
  v29 = OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_legacySubjectSelection;
  type metadata accessor for LegacySubjectSelection();
  swift_allocObject();

  *(v25 + v29) = sub_1BB5D8C30();
  *(v25 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_overrideSelectionIdentities) = MEMORY[0x1E69E7CC0];
  *(v25 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_selectedSubjectExpiryInterval) = 0x4024000000000000;
  v30 = OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_savedHighestRankPersonUUID;
  v31 = sub_1BB6BA844();
  (*(*(v31 - 8) + 56))(v25 + v30, 1, 1, v31);
  v147 = v7;
  v32 = v4;
  v151 = v4;
  if (!*(v7 + 89))
  {
    type metadata accessor for DKISSModel(0);
    swift_allocObject();
    *(v25 + v26) = DKISSModel.init()();

    v32 = v4;
  }

  v146 = *(v0 + 808);
  v149 = *(v0 + 800);
  v33 = *(v0 + 792);
  v152 = v33;
  v34 = *(v0 + 768);
  type metadata accessor for DKSubjectClustering();
  *(v25 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_clustering) = swift_allocObject();
  sub_1BB6BAA24();
  v25[2] = 0xD000000000000010;
  v25[3] = 0x80000001BB6CB250;
  v25[4] = v34;
  v25[5] = v23;
  v25[6] = v24;
  v33[15] = v25;
  v35 = *(v32 + 16);
  v36 = *(v32 + 40);
  v37 = v32;
  type metadata accessor for DKFramingTask(0);
  v38 = swift_allocObject();

  sub_1BB6BAA24();
  v38[2] = 0x676E696D617266;
  v38[3] = 0xE700000000000000;
  v38[4] = v34;
  v39 = v34;
  v38[5] = v35;
  v38[6] = v36;
  v152[16] = v38;
  v40 = *(v37 + 16);
  v41 = *(v37 + 40);
  type metadata accessor for DKControlTask(0);
  swift_allocObject();

  v152[17] = sub_1BB593844(0x6C6F72746E6F63, 0xE700000000000000, v34, v40, v41);
  v42 = *(v37 + 16);
  v43 = *(v37 + 40);
  type metadata accessor for DKLoggingTask(0);
  v44 = swift_allocObject();
  v45 = OBJC_IVAR____TtC23IntelligentTrackingCore13DKLoggingTask_logRecorder;
  type metadata accessor for DKDataLogRecorder(0);
  swift_allocObject();

  *(v44 + v45) = DKDataLogRecorder.init()();
  sub_1BB6BAA24();
  v44[2] = 0x676E6967676F6CLL;
  v44[3] = 0xE700000000000000;
  v44[4] = v34;
  v44[5] = v42;
  v44[6] = v43;
  v152[18] = v44;
  v46 = v151[2];
  v47 = v151[5];
  type metadata accessor for DKUpdateStatesTask(0);
  v48 = swift_allocObject();

  sub_1BB6BAA24();
  strcpy((v48 + 16), "updateStates");
  *(v48 + 29) = 0;
  *(v48 + 30) = -5120;
  *(v48 + 32) = v34;
  *(v48 + 40) = v46;
  *(v48 + 48) = v47;
  v152[14] = v48;
  v49 = v151;
  v50 = v151[2];
  v51 = v151[5];
  type metadata accessor for DKCleanupTask(0);
  v52 = swift_allocObject();

  sub_1BB6BAA24();
  v52[2] = 0x70756E61656C63;
  v52[3] = 0xE700000000000000;
  v52[4] = v34;
  v52[5] = v50;
  v52[6] = v51;
  v152[19] = v52;
  v53 = v151[2];
  v54 = v151[5];
  type metadata accessor for DKStartupTask(0);
  v55 = swift_allocObject();
  *(v55 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKStartupTask_startupCommandIssued) = 0;
  (*(v146 + 56))(v55 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKStartupTask_startupTime, 1, 1, v149);

  sub_1BB6BAA24();
  v55[2] = 0x70757472617473;
  v55[3] = 0xE700000000000000;
  v55[4] = v34;
  v55[5] = v53;
  v55[6] = v54;
  v152[20] = v55;
  v56 = v151[2];
  v57 = v151[5];
  type metadata accessor for DKReturnToBaseTask(0);
  v58 = swift_allocObject();
  *(v58 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKReturnToBaseTask_returnToBaseIssued) = 0;

  sub_1BB6BAA24();
  strcpy((v58 + 16), "returnToBase");
  *(v58 + 29) = 0;
  *(v58 + 30) = -5120;
  *(v58 + 32) = v39;
  *(v58 + 40) = v56;
  *(v58 + 48) = v57;
  v152[21] = v58;
  v59 = v151[2];
  v60 = v151[5];
  type metadata accessor for DKSearchTask(0);
  v61 = swift_allocObject();
  *(v61 + OBJC_IVAR____TtC23IntelligentTrackingCore12DKSearchTask_searchIndex) = -1;
  v62 = OBJC_IVAR____TtC23IntelligentTrackingCore12DKSearchTask_searchWaypoints;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C300, &unk_1BB6BE340);
  v63 = swift_allocObject();
  *(v63 + 32) = 0x4008000000000000;
  *(v63 + 40) = &unk_1F3A483C0;
  *(v63 + 16) = xmmword_1BB6BDF30;
  *(v63 + 48) = 0x4024000000000000;
  *(v63 + 56) = &unk_1F3A483F8;
  *(v63 + 64) = 0x4008000000000000;
  *(v63 + 72) = &unk_1F3A48430;
  *(v63 + 80) = 0x4024000000000000;
  *(v63 + 88) = &unk_1F3A48468;
  *(v63 + 96) = 0x4008000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCC0, &unk_1BB6C29A0);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1BB6BC7F0;
  *(v64 + 32) = xmmword_1BB6BDF40;
  *(v64 + 48) = 0;
  *(v63 + 104) = v64;
  *(v63 + 112) = 0x4024000000000000;
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1BB6BC7F0;
  *(v65 + 32) = xmmword_1BB6BDF50;
  *(v65 + 48) = 0;
  *(v63 + 120) = v65;
  *(v63 + 128) = 0x4024000000000000;
  *(v63 + 136) = &unk_1F3A484A0;
  *(v61 + v62) = v63;

  sub_1BB6BAA24();
  v61[2] = 0x686372616573;
  v61[3] = 0xE600000000000000;
  v61[4] = v39;
  v61[5] = v59;
  v61[6] = v60;
  v152[22] = v61;
  v66 = v151[2];
  v67 = v151[5];
  type metadata accessor for DKFlip180Task(0);
  v68 = swift_allocObject();
  *(v68 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKFlip180Task_flip180Issued) = 0;

  sub_1BB6BAA24();
  v68[2] = 0x30383170696C66;
  v68[3] = 0xE700000000000000;
  v68[4] = v39;
  v68[5] = v66;
  v68[6] = v67;
  v152[23] = v68;
  v69 = *(v0 + 792);
  if (*(v147 + 89))
  {
    v70 = 0;
    v69[8] = 0;
    v69[10] = 0;
    v69[13] = 0;
    v71 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v72 = *(v0 + 768);
    v73 = v151[2];
    v74 = v151[5];
    type metadata accessor for DKPrintExtractionTask(0);
    v75 = swift_allocObject();

    sub_1BB6BAA24();
    v75[2] = 0x747845746E697270;
    v75[3] = 0xEF6E6F6974636172;
    v75[4] = v72;
    v75[5] = v73;
    v75[6] = v74;
    v69[8] = v75;
    v76 = v151[2];
    v77 = v151[5];
    type metadata accessor for DKVisualUnderstandingTask(0);
    v78 = swift_allocObject();
    *&v78[OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_cachedStreamingGallery] = 0;
    v79 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_cachedVUContext;
    v80 = sub_1BB6BA9B4();
    (*(*(v80 - 8) + 56))(&v78[v79], 1, 1, v80);
    v81 = MEMORY[0x1E69E7CC8];
    *&v78[OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_faceRecognitionFailureCount] = MEMORY[0x1E69E7CC8];
    *&v78[OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_bodyRecognitionFailureCount] = v81;
    *&v78[OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_faceIdMap] = v81;
    *&v78[OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_bodyIdMap] = v81;
    *&v78[OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_countToUpdate] = 100;
    *&v78[OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_identityCount] = 0;
    *&v78[OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_maxRecognitionFailures] = 10;
    *&v78[OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_minRecogntionSuccess] = 5;
    *&v78[OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_frameCount] = 0;
    *&v78[OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_vuMaxObservations] = 100;
    *&v78[OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_vuMaxIdentities] = 10;
    v82 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_vuLock;
    type metadata accessor for DKLockActor();
    v83 = swift_allocObject();

    swift_defaultActor_initialize();
    *&v78[v82] = v83;
    *(v83 + 112) = 1;
    v84 = MEMORY[0x1E69E7CC0];
    *(v83 + 120) = MEMORY[0x1E69E7CC0];
    *&v78[OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_faceIdentityConfidenceMap] = v81;
    *&v78[OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_bodyIdentityConfidenceMap] = v81;
    sub_1BB6BAA24();
    *(v78 + 2) = 0xD000000000000013;
    *(v78 + 3) = 0x80000001BB6CB200;
    *(v78 + 4) = v72;
    *(v78 + 5) = v76;
    *(v78 + 6) = v77;
    v69[10] = v78;
    v85 = v151[2];
    v86 = v151[5];
    type metadata accessor for DKBodyPoseExtractionTask(0);
    v87 = swift_allocObject();
    v148 = OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_session;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C310, &qword_1BB6BE358);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BB6BD520;
    *(v0 + 752) = sub_1BB6BAC34();
    *(v0 + 760) = v89;

    sub_1BB6BB294();
    *(inited + 96) = MEMORY[0x1E69E6370];
    *(inited + 72) = 1;
    sub_1BB5B0570(inited);
    swift_setDeallocating();
    sub_1BB598308(inited + 32, &qword_1EBC5C318, &qword_1BB6BE360);
    v90 = objc_allocWithZone(MEMORY[0x1E69AE220]);
    v91 = sub_1BB6BAAE4();
    v71 = v84;
    v49 = v151;

    v92 = [v90 initWithOptions_];

    *(v87 + v148) = v92;
    *(v87 + OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_minPeriod) = 0x3FC999999999999ALL;
    *(v87 + OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_lastProcessedTime) = 0;
    *(v87 + OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_latestAssociations) = v71;
    sub_1BB6BAA24();
    v87[2] = 0x65736F5079646F62;
    v87[3] = 0xE800000000000000;
    v87[4] = v72;
    v87[5] = v85;
    v87[6] = v86;
    v69[13] = v87;
    v93 = v151[2];
    v94 = v151[5];
    type metadata accessor for DKSpeakerDetectionTask(0);
    v70 = swift_allocObject();
    *(v70 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSpeakerDetectionTask_cachedModel) = 0;
    *(v70 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSpeakerDetectionTask_timeoutDuration) = 0x4000000000000000;

    sub_1BB6BAA24();
    v70[2] = 0xD000000000000010;
    v70[3] = 0x80000001BB6CB220;
    v70[4] = v72;
    v70[5] = v93;
    v70[6] = v94;
  }

  v150 = *(v0 + 792);
  *(v150 + 96) = v70;
  *(v0 + 696) = v49[6];
  *(v0 + 704) = v152[20];

  v95 = 0;
  v96 = v71;
  while (v95 != 2)
  {
    if (*(v0 + 8 * v95++ + 696))
    {

      MEMORY[0x1BFB10C80](v98);
      if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BB6BAE64();
      }

      sub_1BB6BAEB4();
      v96 = v71;
    }
  }

  v99 = *(v0 + 792);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C308, &qword_1BB6BE350);
  swift_arrayDestroy();
  *(v99 + 192) = v96;
  v100 = v49[6];
  *(v0 + 744) = v100;
  v153 = v71;

  if (v100)
  {

    MEMORY[0x1BFB10C80](v101);
    if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_85:
      sub_1BB6BAE64();
    }

    sub_1BB6BAEB4();
    v102 = v153;
  }

  else
  {
    v102 = v71;
  }

  v103 = *(v0 + 792);
  sub_1BB598308(v0 + 744, &qword_1EBC5C308, &qword_1BB6BE350);
  v103[25] = v102;
  *(v0 + 48) = v49[6];
  *(v0 + 56) = v49[7];
  *(v0 + 64) = v49[9];
  *(v0 + 72) = v103[8];
  *(v0 + 80) = v103[10];
  v49 = v151[11];
  *(v0 + 88) = v49;
  *(v0 + 96) = *(v150 + 96);
  *(v0 + 104) = v103[13];
  *(v0 + 112) = v152[15];
  *(v0 + 120) = v152[14];
  *(v0 + 128) = v152[16];
  *(v0 + 136) = v152[17];
  *(v0 + 144) = v152[18];
  *(v0 + 152) = v152[19];
  v153 = MEMORY[0x1E69E7CC0];

  v104 = 0;
  v105 = MEMORY[0x1E69E7CC0];
LABEL_17:
  if (v104 <= 0xE)
  {
    v106 = 14;
  }

  else
  {
    v106 = v104;
  }

  while (v104 != 14)
  {
    if (v106 == v104)
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (*(v0 + 8 * v104++ + 48))
    {

      MEMORY[0x1BFB10C80](v108);
      if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BB6BAE64();
      }

      sub_1BB6BAEB4();
      v105 = v153;
      goto LABEL_17;
    }
  }

  v109 = *(v0 + 792);
  swift_arrayDestroy();
  *(v109 + 208) = v105;
  *(v0 + 192) = v151[6];
  *(v0 + 200) = v151[7];
  *(v0 + 208) = v151[9];
  *(v0 + 216) = v151[11];
  *(v0 + 224) = *(v150 + 96);
  *(v0 + 232) = v152[15];
  *(v0 + 240) = v152[14];
  v49 = v152[16];
  *(v0 + 248) = v49;
  *(v0 + 256) = v152[17];
  v150 = v152[18];
  *(v0 + 264) = v150;
  *(v0 + 272) = v152[19];
  v153 = MEMORY[0x1E69E7CC0];

  v110 = 0;
  v111 = MEMORY[0x1E69E7CC0];
LABEL_27:
  if (v110 <= 0xB)
  {
    v112 = 11;
  }

  else
  {
    v112 = v110;
  }

  while (v110 != 11)
  {
    if (v112 == v110)
    {
      goto LABEL_80;
    }

    if (*(v0 + 8 * v110++ + 192))
    {

      MEMORY[0x1BFB10C80](v114);
      if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BB6BAE64();
      }

      sub_1BB6BAEB4();
      v111 = v153;
      goto LABEL_27;
    }
  }

  v115 = *(v0 + 792);
  swift_arrayDestroy();
  *(v115 + 216) = v111;
  *(v0 + 312) = v151[6];
  *(v0 + 320) = v151[7];
  *(v0 + 328) = v151[9];
  *(v0 + 336) = v151[11];
  *(v0 + 344) = v152[15];
  *(v0 + 352) = v152[14];
  *(v0 + 360) = v152[16];
  *(v0 + 368) = v152[17];
  v49 = v152[18];
  *(v0 + 376) = v49;
  *(v0 + 384) = v152[19];
  v153 = MEMORY[0x1E69E7CC0];

  v116 = MEMORY[0x1E69E7CC0];

  v117 = 0;
  v118 = v116;
LABEL_37:
  if (v117 <= 0xA)
  {
    v119 = 10;
  }

  else
  {
    v119 = v117;
  }

  while (v117 != 10)
  {
    if (v119 == v117)
    {
      goto LABEL_81;
    }

    if (*(v0 + 8 * v117++ + 312))
    {

      MEMORY[0x1BFB10C80](v121);
      if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BB6BAE64();
      }

      sub_1BB6BAEB4();
      v118 = v153;
      goto LABEL_37;
    }
  }

  v122 = *(v0 + 792);
  swift_arrayDestroy();
  *(v122 + 224) = v118;
  *(v0 + 512) = xmmword_1BB6BC7F0;
  *(v0 + 528) = v151[6];
  *(v0 + 536) = v152[21];
  *(v0 + 544) = v152[18];
  v153 = v116;

  v123 = 0;
  v124 = v116;
LABEL_47:
  if (v123 <= 3)
  {
    v125 = 3;
  }

  else
  {
    v125 = v123;
  }

  while (v123 != 3)
  {
    if (v125 == v123)
    {
      goto LABEL_82;
    }

    if (*(v0 + 8 * v123++ + 528))
    {

      MEMORY[0x1BFB10C80](v127);
      if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BB6BAE64();
      }

      sub_1BB6BAEB4();
      v124 = v116;
      goto LABEL_47;
    }
  }

  v128 = *(v0 + 792);
  swift_arrayDestroy();
  *(v128 + 232) = v124;
  *(v0 + 568) = 3;
  *(v0 + 576) = 6;
  *(v0 + 584) = v151[6];
  *(v0 + 592) = v152[22];
  *(v0 + 600) = v152[18];
  v153 = v116;

  v129 = 0;
  v130 = v116;
LABEL_57:
  if (v129 <= 3)
  {
    v131 = 3;
  }

  else
  {
    v131 = v129;
  }

  while (v129 != 3)
  {
    if (v131 == v129)
    {
      goto LABEL_83;
    }

    if (*(v0 + 8 * v129++ + 584))
    {

      MEMORY[0x1BFB10C80](v133);
      if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BB6BAE64();
      }

      sub_1BB6BAEB4();
      v130 = v116;
      goto LABEL_57;
    }
  }

  v134 = *(v0 + 792);
  swift_arrayDestroy();
  *(v134 + 240) = v130;
  *(v0 + 624) = xmmword_1BB6BC7F0;
  *(v0 + 640) = v151[6];
  *(v0 + 648) = v152[23];
  *(v0 + 656) = v152[18];
  v153 = v116;

  v135 = 0;
LABEL_67:
  if (v135 <= 3)
  {
    v136 = 3;
  }

  else
  {
    v136 = v135;
  }

  while (v135 != 3)
  {
    if (v136 == v135)
    {
      goto LABEL_84;
    }

    if (*(v0 + 8 * v135++ + 640))
    {

      MEMORY[0x1BFB10C80](v138);
      if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BB6BAE64();
      }

      sub_1BB6BAEB4();
      v116 = v153;
      goto LABEL_67;
    }
  }

  v139 = *(v0 + 808);
  v140 = *(v0 + 800);
  v141 = *(v0 + 792);
  v142 = *(v0 + 784);
  swift_arrayDestroy();
  (*(v139 + 8))(v142, v140);
  *(v141 + 248) = v116;

  v143 = *(v0 + 8);
  v144 = *(v0 + 792);

  return v143(v144);
}

double sub_1BB5B3498(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1BB5B34AC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1BB5B34C0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1BB5B34C0(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return v3;
}

unint64_t sub_1BB5B34D8()
{
  result = qword_1EBC5C1E0;
  if (!qword_1EBC5C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C1E0);
  }

  return result;
}

uint64_t dispatch thunk of DKIntelligentTrackingSession.__allocating_init(config:camera:time:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(v3 + 448) + **(v3 + 448));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1BB5B46E4;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of DKIntelligentTrackingSession.getState()()
{
  v4 = (*(*v0 + 456) + **(*v0 + 456));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BB5B46E4;

  return v4();
}

uint64_t dispatch thunk of DKIntelligentTrackingSession.setSignal(signal:)(uint64_t a1)
{
  v6 = (*(*v1 + 464) + **(*v1 + 464));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB5B46DC;

  return v6(a1);
}

uint64_t dispatch thunk of DKIntelligentTrackingSession.update(input:)(uint64_t a1)
{
  v6 = (*(*v1 + 480) + **(*v1 + 480));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB5B46DC;

  return v6(a1);
}

uint64_t dispatch thunk of DKIntelligentTrackingSession.clear()()
{
  v4 = (*(*v0 + 496) + **(*v0 + 496));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BB5B46DC;

  return v4();
}

uint64_t dispatch thunk of DKIntelligentTrackingSession.selectSubject(request:)(uint64_t a1)
{
  v6 = (*(*v1 + 504) + **(*v1 + 504));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB5B3D14;

  return v6(a1);
}

uint64_t sub_1BB5B3D14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of DKIntelligentTrackingSession.setAspectRatio(aspectRatio:imageSize:)(double a1, double a2, double a3, double a4)
{
  v16 = (*(*v4 + 512) + **(*v4 + 512));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1BB5B3D14;
  v11.n128_f64[0] = a1;
  v12.n128_f64[0] = a2;
  v13.n128_f64[0] = a3;
  v14.n128_f64[0] = a4;

  return v16(v11, v12, v13, v14);
}

uint64_t dispatch thunk of DKIntelligentTrackingSession.setFramingMode(mode:horizontalFraming:verticalFraming:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 520) + **(*v3 + 520));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1BB5B46DC;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of DKIntelligentTrackingSession.setROI(roi:)(double a1, double a2, double a3, double a4)
{
  v16 = (*(*v4 + 528) + **(*v4 + 528));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1BB5B46DC;
  v11.n128_f64[0] = a1;
  v12.n128_f64[0] = a2;
  v13.n128_f64[0] = a3;
  v14.n128_f64[0] = a4;

  return v16(v11, v12, v13, v14);
}

uint64_t dispatch thunk of DKIntelligentTrackingSession.track(time:)(uint64_t a1)
{
  v6 = (*(*v1 + 536) + **(*v1 + 536));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB5B4300;

  return v6(a1);
}

uint64_t sub_1BB5B4300(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of DKIntelligentTrackingSession.reset(time:)(uint64_t a1)
{
  v6 = (*(*v1 + 552) + **(*v1 + 552));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB5B46DC;

  return v6(a1);
}

_OWORD *sub_1BB5B4560(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1BB5B4570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB5B45D4(uint64_t a1)
{
  v2 = type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BB5B4630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB5B4694(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BB5B46E8()
{
  v1 = v0;
  v2 = sub_1BB6BAA34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - v7;
  v10 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_cachedStreamingGallery;
  v11 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_cachedStreamingGallery);
  if (!v11)
  {
    v12 = *(v3 + 16);
    v23 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKIntelligentTrackingTask_logger;
    v24 = v12;
    v12(v21 - v7, v1 + OBJC_IVAR____TtC23IntelligentTrackingCore25DKIntelligentTrackingTask_logger, v2, v8);
    v13 = sub_1BB6BAA14();
    v14 = sub_1BB6BB084();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v22 = v3;
      v16 = v15;
      v17 = swift_slowAlloc();
      v21[1] = v5;
      v18 = v17;
      v26 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1BB6A0A5C(0xD000000000000010, 0x80000001BB6CB5B0, &v26);
      _os_log_impl(&dword_1BB58A000, v13, v14, "%s Initializing VU streaming gallery", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1BFB122F0](v18, -1, -1);
      v19 = v16;
      v3 = v22;
      MEMORY[0x1BFB122F0](v19, -1, -1);
    }

    v25 = *(v3 + 8);
    v25(v9, v2);
    sub_1BB6BA994();
    swift_allocObject();
    v11 = sub_1BB6BA924();
    *(v1 + v10) = v11;
  }

  return v11;
}

uint64_t sub_1BB5B4B10()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_vuLock;
  v0[3] = OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_vuLock;
  v3 = *(v1 + v2);
  v0[4] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BB5B4B94, v3, 0);
}

uint64_t sub_1BB5B4B94()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 112);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (v3)
  {

    v5 = *(v0 + 8);

    return v5(1);
  }

  else
  {
    *(v1 + 112) = v4;

    return MEMORY[0x1EEE6DFA0](sub_1BB5B4C44, 0, 0);
  }
}

uint64_t sub_1BB5B4C44()
{
  sub_1BB5B4E60();
  if (sub_1BB5B46E8())
  {
    if (!sub_1BB5B46E8())
    {
LABEL_5:

      goto LABEL_8;
    }

    v1 = v0[2];
    v2 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_countToUpdate;
    if ((*(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_countToUpdate) & 0x8000000000000000) != 0)
    {
    }

    else
    {
      v3 = sub_1BB6BA934();

      if (v3 <= 1000)
      {
        goto LABEL_5;
      }
    }

    sub_1BB6BA8E4();

    *(v1 + v2) = 100;
  }

LABEL_8:
  v4 = *(v0[2] + v0[3]);
  v0[5] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BB5B4D58, v4, 0);
}

uint64_t sub_1BB5B4D58()
{
  v2 = *(v0 + 40);
  v3 = *(v2 + 112);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = v1;
    v5 = *(v2 + 120);
    *(v2 + 112) = v4;
    if (!(v5 >> 62))
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }
  }

  if (sub_1BB6BB564())
  {
LABEL_4:
    sub_1BB5AAC24();
    *(v0 + 48) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C360, &qword_1BB6C5560);
    sub_1BB6BAF34();
  }

LABEL_7:

  v6 = *(v0 + 8);

  return v6(1);
}

uint64_t sub_1BB5B4E60()
{
  v1 = v0;
  v250 = sub_1BB6BAA34();
  v2 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v4 = &v215 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_1BB6BA964();
  v5 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267);
  v231 = (&v215 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v221 = &v215 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C368, &qword_1BB6BE3E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v266 = &v215 - v10;
  v270 = sub_1BB6BA914();
  v228 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v270);
  v269 = &v215 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370, &unk_1BB6BE3F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v235 = &v215 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v234 = &v215 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C358, &qword_1BB6BE3E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v227 = &v215 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v226 = &v215 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v233 = &v215 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v240 = &v215 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v215 - v25;
  v27 = sub_1BB5B46E8();
  if (!v27)
  {
    return v27 != 0;
  }

  v246 = v27;
  if (*(*(v0 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_groups))
  {
    v28 = *(*(v0 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_groups);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v252 = *(v28 + 16);
  if (!v252)
  {

    v213 = v246;

LABEL_178:

    v27 = v213;
    return v27 != 0;
  }

  v245 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_cachedVUContext;
  v239 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_faceIdentityConfidenceMap;
  v232 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_bodyIdentityConfidenceMap;
  v218 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_identityCount;
  v220 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_faceIdMap;
  v219 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_bodyIdMap;
  v217 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_faceRecognitionFailureCount;
  v225 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_bodyRecognitionFailureCount;
  v216 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_countToUpdate;
  v251 = v28 + 32;
  v238 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKIntelligentTrackingTask_logger;
  v263 = (v5 + 48);
  v264 = v228 + 16;
  v255 = (v5 + 8);
  v262 = (v228 + 8);
  v223 = (v5 + 104);
  v237 = v2 + 16;
  v236 = v2 + 8;
  v222 = *MEMORY[0x1E69E0558];

  v29 = 0;
  v30 = 0;
  *&v31 = 136315394;
  v229 = v31;
  v258 = v1;
  v247 = v4;
  v253 = v26;
  v32 = v28;
  v248 = v28;
  while (v29 < *(v32 + 16))
  {
    v33 = (v251 + 32 * v29);
    v34 = v33[1];
    if (v34)
    {
      v257 = *(v34 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId);
      v35 = *(v34 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId + 8);
    }

    else
    {
      v257 = 0;
      v35 = 1;
    }

    v261 = v35;
    v36 = v33[2];
    if (v36)
    {
      v256 = *&v36[OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId];
      v37 = v36[OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId + 8];
    }

    else
    {
      v256 = 0;
      v37 = 1;
    }

    v259 = v37;
    v265 = v33[3];
    v260 = v36;
    if (!v34 || !*(v34 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprint))
    {
      if (!v36)
      {
        goto LABEL_50;
      }

      if (!*&v36[OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprint])
      {

LABEL_50:

        goto LABEL_51;
      }
    }

    v38 = objc_allocWithZone(MEMORY[0x1E6984518]);

    v268 = [v38 init];
    if (v34)
    {
      v39 = *(v34 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprint);
    }

    else
    {
      v39 = 0;
    }

    [v268 setFaceprint_];

    if (v36)
    {
      v40 = *&v36[OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprint];
    }

    else
    {
      v40 = 0;
    }

    [v268 setTorsoprint_];

    if (v34)
    {
      v41 = *(v34 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprint);
      v254 = v29;
      if (!v36)
      {
        goto LABEL_30;
      }

LABEL_29:
      v36 = *&v36[OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprint];
      goto LABEL_30;
    }

    v41 = 0;
    v254 = v29;
    if (v36)
    {
      goto LABEL_29;
    }

LABEL_30:
    v42 = [objc_allocWithZone(MEMORY[0x1E6984520]) initWithFaceprint:v41 torsoprint:v36];

    [v268 setFaceTorsoprint_];
    v43 = v245;
    v44 = v240;
    sub_1BB5B7320(v1 + v245, v240);
    v45 = sub_1BB6BA9B4();
    v46 = *(v45 - 8);
    v243 = *(v46 + 48);
    v47 = v243(v44, 1, v45);
    v242 = v46;
    v244 = v46 + 48;
    if (v47 == 1)
    {
      sub_1BB598308(v44, &qword_1EBC5C358, &qword_1BB6BE3E0);
      v249 = v34;
      v48 = v30;
      v49 = v1;
      v50 = v234;
      sub_1BB6BA834();
      v51 = sub_1BB6BA844();
      v52 = *(*(v51 - 8) + 56);
      v52(v50, 0, 1, v51);
      v53 = v235;
      v52(v235, 1, 1, v51);
      v54 = v233;
      v55 = v50;
      v1 = v49;
      v30 = v48;
      v34 = v249;
      v4 = v247;
      v56 = v53;
      v26 = v253;
      MEMORY[0x1BFB10820](v55, v56);
      v241 = *(v46 + 56);
      v241(v54, 0, 1, v45);
      sub_1BB5B7390(v54, v1 + v43);
      sub_1BB5B7320(v1 + v43, v26);
    }

    else
    {
      (*(v46 + 32))(v26, v44, v45);
      v241 = *(v46 + 56);
      v241(v26, 0, 1, v45);
    }

    v29 = v254;
    v57 = sub_1BB6BA984();
    sub_1BB598308(v26, &qword_1EBC5C358, &qword_1BB6BE3E0);
    v230 = v45;
    if (v57)
    {
      v249 = v34;
      v58 = *(v57 + 16);
      if (v58)
      {
        v271 = MEMORY[0x1E69E7CC0];
        sub_1BB5E59C0(0, v58, 0);
        v59 = v271;
        v60 = (*(v228 + 80) + 32) & ~*(v228 + 80);
        v224 = v57;
        v61 = v57 + v60;
        v62 = *(v228 + 72);
        v63 = *(v228 + 16);
        v64 = v266;
        v65 = v267;
        while (1)
        {
          v63(v269, v61, v270);
          sub_1BB6BA8F4();
          if ((*v263)(v64, 1, v65) == 1)
          {
            break;
          }

          v66 = sub_1BB6BA954();
          v67 = v64;
          v68 = v66;
          v70 = v69;
          (*v255)(v67, v65);
          if (v70)
          {
            goto LABEL_42;
          }

LABEL_43:
          v71 = v269;
          sub_1BB6BA904();
          v73 = v72;
          (*v262)(v71, v270);
          v271 = v59;
          v75 = v59[2];
          v74 = v59[3];
          if (v75 >= v74 >> 1)
          {
            sub_1BB5E59C0((v74 > 1), v75 + 1, 1);
            v59 = v271;
          }

          v59[2] = v75 + 1;
          v76 = &v59[2 * v75];
          *(v76 + 4) = v68;
          v76[5] = v73;
          v61 += v62;
          --v58;
          v64 = v266;
          v65 = v267;
          if (!v58)
          {

            v1 = v258;
            v84 = v59[2];
            if (v84)
            {
              goto LABEL_68;
            }

LABEL_78:
            v86 = MEMORY[0x1E69E7CC0];
            goto LABEL_79;
          }
        }

        sub_1BB598308(v64, &qword_1EBC5C368, &qword_1BB6BE3E8);
LABEL_42:
        v68 = -1;
        goto LABEL_43;
      }

      v59 = MEMORY[0x1E69E7CC0];
      v84 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v84)
      {
        goto LABEL_78;
      }

LABEL_68:
      v85 = (v59 + 5);
      v86 = MEMORY[0x1E69E7CC0];
      do
      {
        v90 = *v85;
        if (*(*(v1 + 32) + 112) < *v85)
        {
          v91 = *(v85 - 1);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v271 = v86;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1BB5E59C0(0, *(v86 + 16) + 1, 1);
            v86 = v271;
          }

          v88 = *(v86 + 16);
          v87 = *(v86 + 24);
          if (v88 >= v87 >> 1)
          {
            sub_1BB5E59C0((v87 > 1), v88 + 1, 1);
            v86 = v271;
          }

          *(v86 + 16) = v88 + 1;
          v89 = v86 + 16 * v88;
          *(v89 + 32) = v91;
          *(v89 + 40) = v90;
          v1 = v258;
        }

        v85 += 2;
        --v84;
      }

      while (v84);
LABEL_79:

      v34 = v249;
      if ((v261 & 1) == 0)
      {

        v94 = v239;
        v95 = swift_isUniquelyReferenced_nonNull_native();
        v271 = *(v1 + v94);
        *(v1 + v94) = 0x8000000000000000;
        sub_1BB59A040(v86, v257, v95);
        *(v1 + v94) = v271;
      }

      v4 = v247;
      v32 = v248;
      v29 = v254;
      if ((v259 & 1) == 0)
      {

        v96 = v232;
        v97 = swift_isUniquelyReferenced_nonNull_native();
        v271 = *(v1 + v96);
        *(v1 + v96) = 0x8000000000000000;
        sub_1BB59A040(v86, v256, v97);
        *(v1 + v96) = v271;
      }

      if (*(v86 + 16))
      {
        v93 = *(v86 + 40);
      }

      else
      {
        v93 = 0.0;
      }

      v26 = v253;
    }

    else
    {
      v93 = 0.0;
      v32 = v248;
    }

    if (v93 >= *(*(v1 + 32) + 112))
    {
      v105 = v259;
      goto LABEL_94;
    }

    v98 = v261;
    if (sub_1BB5B6B7C(v257, v261, v256, v259))
    {
      v99 = *(v1 + v218);
      v100 = v99 + 1;
      v101 = v260;
      if (__OFADD__(v99, 1))
      {
        goto LABEL_181;
      }

      *(v1 + v218) = v100;
      if (v34)
      {
        v249 = *(v34 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId);
        v102 = *(v34 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId + 8);
        if (v101)
        {
          goto LABEL_92;
        }

LABEL_108:
        v103 = 0;
        v104 = 1;
      }

      else
      {
        v249 = 0;
        v102 = 1;
        if (!v101)
        {
          goto LABEL_108;
        }

LABEL_92:
        v103 = *&v101[OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId];
        v104 = v101[OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId + 8];
      }

      v133 = v225;
      if ((v102 & 1) == 0)
      {
        v134 = v103;
        v135 = v34;
        v136 = v220;
        v137 = swift_isUniquelyReferenced_nonNull_native();
        v271 = *(v1 + v136);
        v138 = v271;
        *(v1 + v136) = 0x8000000000000000;
        v139 = sub_1BB6A1004(v249);
        v141 = v138[2];
        v142 = (v140 & 1) == 0;
        v125 = __OFADD__(v141, v142);
        v143 = v141 + v142;
        if (v125)
        {
          goto LABEL_183;
        }

        v144 = v140;
        if (v138[3] >= v143)
        {
          if ((v137 & 1) == 0)
          {
            v194 = v139;
            sub_1BB5EB190();
            v139 = v194;
          }
        }

        else
        {
          sub_1BB5E8568(v143, v137);
          v139 = sub_1BB6A1004(v249);
          if ((v144 & 1) != (v145 & 1))
          {
            goto LABEL_191;
          }
        }

        v34 = v135;
        v149 = v271;
        v103 = v134;
        if (v144)
        {
          *(v271[7] + 8 * v139) = v100;
        }

        else
        {
          v271[(v139 >> 6) + 8] |= 1 << v139;
          *(v149[6] + 8 * v139) = v249;
          *(v149[7] + 8 * v139) = v100;
          v150 = v149[2];
          v125 = __OFADD__(v150, 1);
          v151 = v150 + 1;
          if (v125)
          {
            goto LABEL_185;
          }

          v149[2] = v151;
        }

        *(v1 + v220) = v149;

        v133 = v225;
      }

      if ((v104 & 1) == 0)
      {
        v152 = v219;
        v153 = swift_isUniquelyReferenced_nonNull_native();
        v271 = *(v1 + v152);
        v154 = v271;
        *(v1 + v152) = 0x8000000000000000;
        v155 = sub_1BB6A1004(v103);
        v157 = v154[2];
        v158 = (v156 & 1) == 0;
        v125 = __OFADD__(v157, v158);
        v159 = v157 + v158;
        if (v125)
        {
          goto LABEL_184;
        }

        v160 = v156;
        if (v154[3] >= v159)
        {
          if (v153)
          {
            goto LABEL_129;
          }

          v195 = v155;
          sub_1BB5EB190();
          v155 = v195;
          v162 = v271;
          if ((v160 & 1) == 0)
          {
            goto LABEL_161;
          }

LABEL_130:
          *(v162[7] + 8 * v155) = v100;
        }

        else
        {
          sub_1BB5E8568(v159, v153);
          v155 = sub_1BB6A1004(v103);
          if ((v160 & 1) != (v161 & 1))
          {
            goto LABEL_191;
          }

LABEL_129:
          v162 = v271;
          if (v160)
          {
            goto LABEL_130;
          }

LABEL_161:
          v162[(v155 >> 6) + 8] |= 1 << v155;
          *(v162[6] + 8 * v155) = v103;
          *(v162[7] + 8 * v155) = v100;
          v196 = v162[2];
          v125 = __OFADD__(v196, 1);
          v197 = v196 + 1;
          if (v125)
          {
            goto LABEL_186;
          }

          v162[2] = v197;
        }

        *(v1 + v219) = v162;

        v133 = v225;
      }

      v26 = v253;
      v32 = v248;
      v4 = v247;
      if ((v261 & 1) == 0)
      {
        v198 = sub_1BB6A1004(v257);
        v133 = v225;
        v199 = v217;
        if (v200)
        {
          v201 = v198;
          v202 = swift_isUniquelyReferenced_nonNull_native();
          v204 = *(v1 + v199);
          v271 = v204;
          *(v1 + v199) = 0x8000000000000000;
          if (!v202)
          {
            sub_1BB5EB190();
            v204 = v271;
          }

          sub_1BB63F598(v201, v204, v203);
          *(v1 + v199) = v204;

          v133 = v225;
        }
      }

      if (v259)
      {
        v105 = 1;
        v29 = v254;
      }

      else
      {
        v205 = v133;
        v206 = sub_1BB6A1004(v256);
        if (v207)
        {
          v208 = v206;
          v209 = swift_isUniquelyReferenced_nonNull_native();
          v211 = *(v1 + v205);
          v271 = v211;
          *(v1 + v205) = 0x8000000000000000;
          if (!v209)
          {
            sub_1BB5EB190();
            v211 = v271;
          }

          sub_1BB63F598(v208, v211, v210);
          *(v1 + v205) = v211;
        }

        v105 = 0;
        v29 = v254;
      }

      goto LABEL_94;
    }

    if ((v98 & 1) == 0)
    {

      v121 = v221;
      sub_1BB6BA724();
      v122 = sub_1BB6BA7F4();
      (*(*(v122 - 8) + 56))(v121, 0, 1, v122);
      v123 = v121;
      v32 = v248;
      sub_1BB6348A0(v123, v257);
    }

    if (v259)
    {
      v105 = 1;
    }

    else
    {

      v130 = v221;
      sub_1BB6BA724();
      v131 = sub_1BB6BA7F4();
      (*(*(v131 - 8) + 56))(v130, 0, 1, v131);
      v132 = v130;
      v32 = v248;
      sub_1BB6348A0(v132, v256);

      v105 = 0;
    }

LABEL_94:
    v106 = sub_1BB5B6AC4(v257, v261, v256, v105);
    if (v107)
    {

LABEL_47:
      v36 = v260;
      goto LABEL_51;
    }

    v108 = v231;
    *v231 = v106;
    (*v223)(v108, v222, v267);
    v109 = v227;
    sub_1BB5B7320(v1 + v245, v227);
    v110 = v230;
    if (v243(v109, 1, v230) == 1)
    {
      sub_1BB598308(v109, &qword_1EBC5C358, &qword_1BB6BE3E0);
      v111 = v1;
      v112 = v234;
      sub_1BB6BA834();
      v113 = sub_1BB6BA844();
      v114 = *(*(v113 - 8) + 56);
      v114(v112, 0, 1, v113);
      v115 = v235;
      v114(v235, 1, 1, v113);
      v116 = v233;
      v117 = v112;
      v1 = v111;
      v30 = 0;
      v4 = v247;
      v118 = v245;
      MEMORY[0x1BFB10820](v117, v115);
      v241(v116, 0, 1, v110);
      sub_1BB5B7390(v116, v1 + v118);
      v119 = v1 + v118;
      v120 = v226;
      sub_1BB5B7320(v119, v226);
    }

    else
    {
      v120 = v226;
      (*(v242 + 32))(v226, v109, v110);
      v241(v120, 0, 1, v110);
    }

    sub_1BB6BA944();
    sub_1BB598308(v120, &qword_1EBC5C358, &qword_1BB6BE3E0);
    v124 = *(v1 + v216);
    v125 = __OFSUB__(v124, 1);
    v126 = v124 - 1;
    if (v125)
    {
      goto LABEL_182;
    }

    *(v1 + v216) = v126;
    v127 = v231;
    v128 = sub_1BB6BA954();
    if (v129)
    {
      (*v255)(v127, v267);

      v26 = v253;
      v32 = v248;
      goto LABEL_47;
    }

    v146 = v128;
    v147 = v4;
    v32 = v248;
    if (v34)
    {
      v254 = *(v34 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId);
      v148 = *(v34 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId + 8);
    }

    else
    {
      v254 = 0;
      v148 = 1;
    }

    v163 = v231;
    v36 = v260;
    if (v260)
    {
      v249 = *&v260[OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId];
      v164 = v260[OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId + 8];
      if ((v148 & 1) == 0)
      {
        goto LABEL_137;
      }
    }

    else
    {
      v249 = 0;
      v164 = 1;
      if ((v148 & 1) == 0)
      {
LABEL_137:
        LODWORD(v244) = v164;
        v165 = v146;
        v166 = v34;
        v167 = v220;
        v168 = swift_isUniquelyReferenced_nonNull_native();
        v271 = *(v1 + v167);
        v169 = v271;
        *(v1 + v167) = 0x8000000000000000;
        v171 = sub_1BB6A1004(v254);
        v172 = v169[2];
        v173 = (v170 & 1) == 0;
        v174 = v172 + v173;
        if (__OFADD__(v172, v173))
        {
          goto LABEL_187;
        }

        v175 = v170;
        if (v169[3] >= v174)
        {
          v36 = v260;
          if ((v168 & 1) == 0)
          {
            sub_1BB5EB190();
            v36 = v260;
          }

          v147 = v247;
          v34 = v166;
        }

        else
        {
          sub_1BB5E8568(v174, v168);
          v176 = sub_1BB6A1004(v254);
          if ((v175 & 1) != (v177 & 1))
          {
            goto LABEL_191;
          }

          v171 = v176;
          v147 = v247;
          v34 = v166;
          v36 = v260;
        }

        v178 = v271;
        v146 = v165;
        if (v175)
        {
          *(v271[7] + 8 * v171) = v165;
        }

        else
        {
          v271[(v171 >> 6) + 8] |= 1 << v171;
          *(v178[6] + 8 * v171) = v254;
          *(v178[7] + 8 * v171) = v165;
          v179 = v178[2];
          v125 = __OFADD__(v179, 1);
          v180 = v179 + 1;
          if (v125)
          {
            goto LABEL_189;
          }

          v178[2] = v180;
        }

        v32 = v248;
        *(v1 + v220) = v178;

        v163 = v231;
        if ((v244 & 1) == 0)
        {
LABEL_149:
          v181 = v219;
          v182 = swift_isUniquelyReferenced_nonNull_native();
          v271 = *(v1 + v181);
          v183 = v271;
          *(v1 + v181) = 0x8000000000000000;
          v184 = sub_1BB6A1004(v249);
          v186 = v183[2];
          v187 = (v185 & 1) == 0;
          v125 = __OFADD__(v186, v187);
          v188 = v186 + v187;
          if (v125)
          {
            goto LABEL_188;
          }

          v189 = v185;
          v4 = v147;
          if (v183[3] >= v188)
          {
            if ((v182 & 1) == 0)
            {
              v212 = v184;
              sub_1BB5EB190();
              v184 = v212;
            }
          }

          else
          {
            sub_1BB5E8568(v188, v182);
            v184 = sub_1BB6A1004(v249);
            if ((v189 & 1) != (v190 & 1))
            {
              goto LABEL_191;
            }
          }

          v32 = v248;
          v191 = v271;
          if (v189)
          {
            *(v271[7] + 8 * v184) = v146;

            (*v255)(v231, v267);
          }

          else
          {
            v271[(v184 >> 6) + 8] |= 1 << v184;
            *(v191[6] + 8 * v184) = v249;
            *(v191[7] + 8 * v184) = v146;

            (*v255)(v231, v267);
            v192 = v191[2];
            v125 = __OFADD__(v192, 1);
            v193 = v192 + 1;
            if (v125)
            {
              goto LABEL_190;
            }

            v191[2] = v193;
          }

          v26 = v253;
          *(v1 + v219) = v191;

          goto LABEL_47;
        }

        goto LABEL_135;
      }
    }

    if ((v164 & 1) == 0)
    {
      goto LABEL_149;
    }

LABEL_135:
    (*v255)(v163, v267);

    v26 = v253;
    v4 = v147;
LABEL_51:
    v77 = v261;
    if (!v34)
    {
      v77 = 1;
    }

    if ((v77 & 1) == 0)
    {
      if (*(*(v1 + v239) + 16) && (sub_1BB6A1004(v257), (v78 & 1) != 0))
      {
      }

      else
      {
        v79 = MEMORY[0x1E69E7CC0];
      }

      *(v34 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityConfidences) = v79;

      v36 = v260;
    }

    if (v259)
    {
    }

    else
    {
      if (v36)
      {
        v80 = *(v1 + v232);
        if (*(v80 + 16) && (v81 = sub_1BB6A1004(v256), (v82 & 1) != 0))
        {
          v83 = *(*(v80 + 56) + 8 * v81);
        }

        else
        {
          v83 = MEMORY[0x1E69E7CC0];
        }

        *&v260[OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_identityConfidences] = v83;

        goto LABEL_9;
      }
    }

LABEL_9:
    if (++v29 == v252)
    {
      v213 = v246;

      goto LABEL_178;
    }
  }

  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  result = sub_1BB6BB874();
  __break(1u);
  return result;
}

uint64_t sub_1BB5B6AC4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      return 0;
    }

    v5 = *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_bodyIdMap);
    if (!*(v5 + 16))
    {
      return 0;
    }

LABEL_12:
    v8 = sub_1BB6A1004(a3);
    if (v12)
    {
      return *(*(v5 + 56) + 8 * v8);
    }

    return 0;
  }

  v6 = v4;
  v5 = *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_faceIdMap);
  v7 = *(v5 + 16);
  if (a4)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = sub_1BB6A1004(a1);
    if ((v9 & 1) == 0)
    {
      return 0;
    }

    return *(*(v5 + 56) + 8 * v8);
  }

  if (v7)
  {
    v10 = a3;
    v8 = sub_1BB6A1004(a1);
    a3 = v10;
    if (v11)
    {
      return *(*(v5 + 56) + 8 * v8);
    }
  }

  v5 = *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_bodyIdMap);
  if (*(v5 + 16))
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_1BB5B6B7C(uint64_t (*a1)(), char a2, uint64_t a3, char a4)
{
  v8 = v4;
  LOBYTE(v9) = a4;
  if (a2)
  {
    v11 = 0;
    if (a4)
    {
LABEL_3:
      sub_1BB58C41C(v11, 0);
    }

    else
    {
      while (1)
      {
        v29 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_bodyRecognitionFailureCount;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = *(v8 + v29);
        v47 = v30;
        *(v8 + v29) = 0x8000000000000000;
        v9 = sub_1BB6A1004(a3);
        v32 = *(v30 + 16);
        v33 = (v31 & 1) == 0;
        v34 = v32 + v33;
        if (!__OFADD__(v32, v33))
        {
          break;
        }

        while (1)
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          sub_1BB5EB190();
          v13 = v47;
LABEL_9:
          *(v8 + v7) = v13;

          v20 = *(v8 + v7);
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1BB5E952C(v5, v11, 0, *(v8 + v7));
          }

          v21 = *(v20 + 56);
          v22 = *(v21 + 8 * v5);
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (!v23)
          {
            break;
          }

LABEL_35:
          __break(1u);
        }

        *(v21 + 8 * v5) = v24;
        v25 = *(v8 + v7);
        v26 = *(v25 + 16);
        if (v26)
        {
          v27 = sub_1BB6A1004(v11);
          if (v28)
          {
            v26 = *(*(v25 + 56) + 8 * v27);
          }

          else
          {
            v26 = 0;
          }
        }

        if (*(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_maxRecognitionFailures) < v26)
        {
          return 1;
        }

        v11 = sub_1BB5B6E5C;
        if (v9)
        {
          goto LABEL_3;
        }
      }

      v5 = v31;
      if (*(v30 + 24) >= v34)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BB5EB190();
        }
      }

      else
      {
        sub_1BB5E8568(v34, isUniquelyReferenced_nonNull_native);
        v35 = sub_1BB6A1004(a3);
        if ((v5 & 1) != (v36 & 1))
        {
          goto LABEL_39;
        }

        v9 = v35;
      }

      *(v8 + v29) = v30;

      v37 = *(v8 + v29);
      if ((v5 & 1) == 0)
      {
        sub_1BB5E952C(v9, a3, 0, *(v8 + v29));
      }

      v38 = *(v37 + 56);
      v39 = *(v38 + 8 * v9);
      v23 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v38 + 8 * v9) = v40;
      v41 = *(v8 + v29);
      if (*(v41 + 16) && (v42 = sub_1BB6A1004(a3), (v43 & 1) != 0))
      {
        v44 = *(*(v41 + 56) + 8 * v42);
      }

      else
      {
        v44 = 0;
      }

      v45 = *(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_maxRecognitionFailures);
      sub_1BB58C41C(v11, 0);
      if (v45 < v44)
      {
        return 1;
      }
    }

    return 0;
  }

  else
  {
    v11 = a1;
    v7 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_faceRecognitionFailureCount;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v4 + v7);
    v47 = *(v8 + v7);
    *(v8 + v7) = 0x8000000000000000;
    v5 = sub_1BB6A1004(v11);
    v15 = *(v13 + 16);
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      __break(1u);
      goto LABEL_35;
    }

    LOBYTE(isUniquelyReferenced_nonNull_native) = v14;
    if (*(v13 + 24) >= v17)
    {
      if (v12)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }

    sub_1BB5E8568(v17, v12);
    v13 = v47;
    v18 = sub_1BB6A1004(v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == (v19 & 1))
    {
      v5 = v18;
      goto LABEL_9;
    }

LABEL_39:
    result = sub_1BB6BB874();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BB5B6E64()
{
  v1 = v0;
  if (sub_1BB5B46E8())
  {
    sub_1BB6BA974();
  }

  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_faceRecognitionFailureCount) = sub_1BB5B12D0(MEMORY[0x1E69E7CC0]);

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_bodyRecognitionFailureCount) = sub_1BB5B12D0(v2);

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_faceIdMap) = sub_1BB5B12D0(v2);

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_bodyIdMap) = sub_1BB5B12D0(v2);

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_countToUpdate) = 100;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_identityCount) = 0;
  return result;
}

uint64_t sub_1BB5B6F60()
{

  sub_1BB598308(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_cachedVUContext, &qword_1EBC5C358, &qword_1BB6BE3E0);
}

char *sub_1BB5B7020()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKIntelligentTrackingTask_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1BB598308(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore25DKVisualUnderstandingTask_cachedVUContext, &qword_1EBC5C358, &qword_1BB6BE3E0);

  return v0;
}

uint64_t sub_1BB5B7144()
{
  sub_1BB5B7020();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DKVisualUnderstandingTask(uint64_t a1)
{
  result = qword_1EBC5C340;
  if (!qword_1EBC5C340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BB5B71F0(uint64_t a1)
{
  sub_1BB5B72C8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BB5B72C8(uint64_t a1)
{
  if (!qword_1EBC5C350)
  {
    sub_1BB6BA9B4();
    v1 = sub_1BB6BB184();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBC5C350);
    }
  }
}

uint64_t sub_1BB5B7320(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C358, &qword_1BB6BE3E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB5B7390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C358, &qword_1BB6BE3E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB5B7400()
{
  v1[69] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C058, &qword_1BB6BD5E0);
  v1[70] = swift_task_alloc();
  v2 = sub_1BB6BA844();
  v1[71] = v2;
  v1[72] = *(v2 - 8);
  v1[73] = swift_task_alloc();
  v3 = sub_1BB6BAA04();
  v1[74] = v3;
  v1[75] = *(v3 - 8);
  v1[76] = swift_task_alloc();
  v4 = sub_1BB6BA654();
  v1[77] = v4;
  v1[78] = *(v4 - 8);
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C030, &unk_1BB6C5B20);
  v1[86] = swift_task_alloc();
  v5 = sub_1BB6BA7F4();
  v1[87] = v5;
  v1[88] = *(v5 - 8);
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v6 = type metadata accessor for DKCamera(0);
  v1[91] = v6;
  v1[92] = *(v6 - 8);
  v1[93] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0, &unk_1BB6BE450);
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB5B7738, 0, 0);
}

void sub_1BB5B7738()
{
  v356 = v0;
  v1 = *(v0 + 95);
  v2 = *(v0 + 92);
  v3 = *(v0 + 91);
  v4 = *(v0 + 69);
  v5 = *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastMetadata);
  v6 = *(v4 + 48);
  v349 = v4;
  v273 = v5;

  sub_1BB5D7A00(v1);

  (*(v2 + 56))(v1, 0, 1, v3);
  sub_1BB5BA0DC(v1, v6 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, &qword_1EBC5BCB0, &unk_1BB6BE450);

  if (v5)
  {
    v7 = *(v0 + 94);
    v8 = *(v0 + 92);
    v9 = *(v0 + 91);
    v10 = *(v349 + 48);
    sub_1BB5BA008(v10 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, v7);
    v11 = (*(v8 + 48))(v7, 1, v9);
    v12 = *(v0 + 94);
    if (v11 == 1)
    {

      sub_1BB598308(v12, &qword_1EBC5BCB0, &unk_1BB6BE450);
      goto LABEL_170;
    }

    sub_1BB5981C8(*(v0 + 94), *(v0 + 93));
    v13 = *&v273[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_image];
    v14 = *(v10 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image);
    *(v10 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image) = v13;
    v15 = v13;

    v351 = MEMORY[0x1E69E7CC0];
    v352 = MEMORY[0x1E69E7CC0];
    v353 = MEMORY[0x1E69E7CC0];
    v16 = *(*(v349 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image);
    v350 = v0;
    if (v16)
    {
      v17 = *(v0 + 69);
      if (*(v17 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_saveImageToFile) == 1)
      {
        v18 = *(v0 + 90);
        v19 = *(v0 + 89);
        v20 = *(v0 + 88);
        v21 = *(v0 + 87);
        v22 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_time;
        v23 = *(v20 + 16);
        v23(v18, &v273[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_time], v21);
        v339 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastImageSaveTime;
        v23(v19, (v17 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastImageSaveTime), v21);
        v344 = v16;
        sub_1BB6BA744();
        v25 = v24;
        v26 = *(v20 + 8);
        v26(v19, v21);
        v26(v18, v21);
        if (v25 <= 1.0)
        {
        }

        else
        {
          v324 = v26;
          v329 = v22;
          v334 = v23;
          v27 = *(v0 + 86);
          v28 = *(v0 + 85);
          v29 = v0;
          v30 = *(v0 + 78);
          v31 = *(v0 + 77);
          v32 = *(v0 + 76);
          v33 = *(v0 + 75);
          v34 = *(v29 + 74);
          sub_1BB6BA5E4();
          sub_1BB6BA9E4();
          sub_1BB6BA604();
          (*(v33 + 8))(v32, v34);
          (*(v30 + 8))(v28, v31);
          (*(v30 + 56))(v27, 0, 1, v31);
          v35 = _s23IntelligentTrackingCore11DKImageUtilC21pixelBufferToJpegFile6buffer3urlSSSgSo11CVBufferRefa_10Foundation3URLVSgtFZ_0(v344, v27);
          v37 = v36;
          sub_1BB598308(v27, &qword_1EBC5C030, &unk_1BB6C5B20);
          if (v37)
          {
            v354 = 6;
            strcpy(v355, "Saved image ");
            BYTE5(v355[1]) = 0;
            HIWORD(v355[1]) = -5120;
            MEMORY[0x1BFB10B60](v35, v37);

            v38 = sub_1BB6BB064();
            _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v354, v355[0], v355[1], v38);
          }

          else
          {
          }

          v0 = v350;
          v39 = *(v350 + 87);
          v324(v17 + v339, v39);
          v334(v17 + v339, &v273[v329], v39);
        }
      }
    }

    v292 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_observations;
    v40 = *&v273[OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_observations];
    v41 = MEMORY[0x1E69E7CC0];
    v355[0] = MEMORY[0x1E69E7CC0];
    v42 = *(v40 + 16);
    if (v42)
    {
      v43 = v40 + 32;

      v44 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1BB5BA078(v43, v0 + 16);
        sub_1BB593648(v0 + 1, v0 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C008, &unk_1BB6BD4F0);
        type metadata accessor for DKFaceObservation(0);
        if ((swift_dynamicCast() & 1) != 0 && *(v0 + 62))
        {
          MEMORY[0x1BFB10C80]();
          if (*((v355[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v355[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BB6BAE64();
          }

          sub_1BB6BAEB4();
          v44 = v355[0];
        }

        v43 += 40;
        --v42;
      }

      while (v42);

      v41 = v44;
    }

    if (v41 >> 62)
    {
      goto LABEL_191;
    }

    v45 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (2)
    {
      v46 = MEMORY[0x1E69E7CC0];
      v47 = MEMORY[0x1E69E7CC8];
      if (v45)
      {
        if (v45 >= 1)
        {
          v48 = 0;
          v49 = (v0 + 456);
          v50 = *(v0 + 93);
          v51 = *(v0 + 88);
          v345 = (v41 & 0xC000000000000001);
          v52 = *(v0 + 78);
          v308 = (v51 + 8);
          v312 = (v51 + 16);
          v269 = (*(v0 + 75) + 8);
          v284 = (v52 + 8);
          v53 = v50[1];
          v340 = *v50;
          v335 = *(v0 + 69);
          v330 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_saveFaceCropToFile;
          v301 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastCropSaveTime;
          v304 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_time;
          v262 = (v52 + 56);
          v266 = (v52 + 16);
          v54 = MEMORY[0x1E69E7CC0];
          v320 = v45;
          v325 = v41;
          v297 = v49;
          v288 = v53;
          while (1)
          {
            if (v345)
            {
              v55 = MEMORY[0x1BFB111F0](v48, v41);
            }

            else
            {
              v55 = *(v41 + 8 * v48 + 32);
            }

            v56 = (v55 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
            v57 = *(v55 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
            v58 = *(v55 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 8);
            v59 = *(v55 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 16);
            v60 = *(v55 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 24);
            v354 = v53;
            LOBYTE(v355[0]) = v340;
            sub_1BB5A4994(&v354, v355, v49, v57, v58, v59, v60);
            if ((*(v350 + 488) & 1) == 0)
            {
              break;
            }

LABEL_27:
            if (v45 == ++v48)
            {
              goto LABEL_56;
            }
          }

          v61 = v49[1];
          *v56 = *v49;
          v56[1] = v61;
          v62 = *(*(v349 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image);
          if (v62)
          {
            type metadata accessor for DKImageCrop();
            v63 = swift_allocObject();
            *(v63 + 56) = v47;
            *(v63 + 16) = v62;
            v64 = v62;
            Width = CVPixelBufferGetWidth(v64);
            Height = CVPixelBufferGetHeight(v64);
            v358.origin.x = v57;
            v358.origin.y = v58;
            v358.size.width = v59;
            v358.size.height = v60;
            *(v63 + 24) = VNImageRectForNormalizedRect(v358, Width, Height);
            *(v55 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_crop) = v63;

            if (*(v335 + v330) != 1)
            {

LABEL_51:
              v45 = v320;
              v41 = v325;
              goto LABEL_52;
            }

            v316 = v64;
            v67 = *(v350 + 90);
            v68 = *(v350 + 89);
            v69 = *(v350 + 87);
            v70 = *v312;
            (*v312)(v67, &v273[v304], v69);
            v41 = v70;
            v70(v68, v335 + v301, v69);
            sub_1BB6BA744();
            v72 = v71;
            v73 = *v308;
            (*v308)(v68, v69);
            v73(v67, v69);
            if (v72 > 1.0)
            {
              v74 = *(v350 + 83);
              v293 = *(v350 + 77);
              v75 = *(v350 + 76);
              v278 = *(v350 + 74);
              sub_1BB6BA5E4();
              v355[0] = 1701011814;
              v355[1] = 0xE400000000000000;
              if (*(v55 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId + 8))
              {
                v76 = 0;
              }

              else
              {
                v76 = *(v55 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId);
              }

              *(v350 + 68) = v76;
              v77 = sub_1BB6BB794();
              MEMORY[0x1BFB10B60](v77);

              MEMORY[0x1BFB10B60](0x6765706A2ELL, 0xE500000000000000);
              sub_1BB6BA9E4();
              sub_1BB6BA604();

              (*v269)(v75, v278);
              v0 = *v284;
              (*v284)(v74, v293);
              v78 = *(v63 + 24);
              v79 = *(v63 + 32);
              v80 = *(v63 + 40);
              v81 = *(v63 + 48);
              v359.origin.x = v78;
              v359.origin.y = v79;
              v359.size.width = v80;
              v359.size.height = v81;
              v82 = CGRectGetWidth(v359);
              if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                __break(1u);
LABEL_174:
                __break(1u);
LABEL_175:
                __break(1u);
LABEL_176:
                __break(1u);
LABEL_177:
                __break(1u);
LABEL_178:
                __break(1u);
LABEL_179:
                __break(1u);
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
LABEL_182:
                __break(1u);
LABEL_183:
                __break(1u);
LABEL_184:
                __break(1u);
LABEL_185:
                __break(1u);
LABEL_186:
                __break(1u);
LABEL_187:
                __break(1u);
LABEL_188:
                __break(1u);
LABEL_189:
                __break(1u);
LABEL_190:
                __break(1u);
LABEL_191:
                v45 = sub_1BB6BB564();
                continue;
              }

              if (v82 <= -9.22337204e18)
              {
                goto LABEL_174;
              }

              if (v82 >= 9.22337204e18)
              {
                goto LABEL_175;
              }

              v360.origin.x = v78;
              v360.origin.y = v79;
              v360.size.width = v80;
              v360.size.height = v81;
              v83 = CGRectGetHeight(v360);
              if ((*&v83 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_176;
              }

              if (v83 <= -9.22337204e18)
              {
                goto LABEL_177;
              }

              if (v83 >= 9.22337204e18)
              {
                goto LABEL_178;
              }

              v279 = v73;
              v84 = sub_1BB64F24C(v82, v83);
              v85 = *(v350 + 86);
              v86 = *(v350 + 84);
              v87 = *(v350 + 77);
              (*v266)(v85, v86, v87);
              (*v262)(v85, 0, 1, v87);
              v274 = _s23IntelligentTrackingCore11DKImageUtilC21pixelBufferToJpegFile6buffer3urlSSSgSo11CVBufferRefa_10Foundation3URLVSgtFZ_0(v84, v85);
              v89 = v88;

              sub_1BB598308(v85, &qword_1EBC5C030, &unk_1BB6C5B20);
              v0(v86, v87);
              v90 = v89;
              v49 = v297;
              if (v90)
              {
                v354 = 6;
                v355[0] = 0;
                v355[1] = 0xE000000000000000;
                sub_1BB6BB2F4();

                v355[0] = 0xD000000000000010;
                v355[1] = 0x80000001BB6CB740;
                MEMORY[0x1BFB10B60](v274, v90);

                v91 = v355[0];
                v92 = v355[1];
                v93 = sub_1BB6BB064();
                _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v354, v91, v92, v93);
              }

              else
              {
              }

              v46 = MEMORY[0x1E69E7CC0];
              v53 = v288;
              v94 = *(v350 + 87);
              v279(v335 + v301, v94);
              (v41)(v335 + v301, &v273[v304], v94);
              v47 = MEMORY[0x1E69E7CC8];
              goto LABEL_51;
            }

            v46 = MEMORY[0x1E69E7CC0];
            v45 = v320;
            v41 = v325;
            v47 = MEMORY[0x1E69E7CC8];
            v49 = v297;
            v53 = v288;
          }

LABEL_52:

          MEMORY[0x1BFB10C80](v95);
          if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BB6BAE64();
          }

          sub_1BB6BAEB4();

          v54 = v351;
          goto LABEL_27;
        }

        __break(1u);
        goto LABEL_194;
      }

      break;
    }

    v54 = MEMORY[0x1E69E7CC0];
LABEL_56:
    v255 = v54;

    v96 = *&v273[v292];
    v355[0] = v46;
    v97 = *(v96 + 16);
    if (v97)
    {
      v98 = v96 + 32;

      v99 = MEMORY[0x1E69E7CC0];
      v100 = v350;
      do
      {
        sub_1BB5BA078(v98, v350 + 96);
        sub_1BB593648(v350 + 6, v350 + 136);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C008, &unk_1BB6BD4F0);
        type metadata accessor for DKBodyObservation(0);
        if ((swift_dynamicCast() & 1) != 0 && *(v350 + 63))
        {
          MEMORY[0x1BFB10C80]();
          if (*((v355[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v355[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BB6BAE64();
          }

          sub_1BB6BAEB4();
          v99 = v355[0];
        }

        v98 += 40;
        --v97;
      }

      while (v97);

      v47 = MEMORY[0x1E69E7CC8];
      v46 = v99;
      if (!(v99 >> 62))
      {
        goto LABEL_65;
      }
    }

    else
    {
      v100 = v350;
      if (!(v46 >> 62))
      {
LABEL_65:
        v101 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_66;
      }
    }

    v101 = sub_1BB6BB564();
LABEL_66:
    v102 = MEMORY[0x1E69E7CC0];
    if (v101)
    {
      if (v101 < 1)
      {
LABEL_194:
        __break(1u);
        goto LABEL_195;
      }

      v103 = 0;
      v104 = *(v100 + 93);
      v105 = v104[1];
      v346 = *v104;
      v106 = *(v100 + 88);
      v341 = v46 & 0xC000000000000001;
      v309 = (v106 + 8);
      v313 = (v106 + 16);
      v280 = (*(v100 + 75) + 8);
      v107 = *(v100 + 78);
      v336 = *(v100 + 69);
      v331 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_saveBodyCropToFile;
      v285 = (v107 + 8);
      v275 = (v107 + 16);
      v270 = (v107 + 56);
      v302 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastBodyCropSaveTime;
      v305 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_time;
      v289 = v46;
      v326 = v101;
      v321 = v105;
      while (1)
      {
        if (v341)
        {
          v108 = MEMORY[0x1BFB111F0](v103, v46);
        }

        else
        {
          v108 = *(v46 + 8 * v103 + 32);
        }

        v109 = (v108 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect);
        v110 = *(v108 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect);
        v111 = *(v108 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 8);
        v112 = *(v108 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 16);
        v113 = *(v108 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 24);
        v354 = v105;
        LOBYTE(v355[0]) = v346;
        sub_1BB5A4994(&v354, v355, (v100 + 416), v110, v111, v112, v113);
        if ((v100[448] & 1) == 0)
        {
          break;
        }

LABEL_70:
        if (v101 == ++v103)
        {
          goto LABEL_98;
        }
      }

      v114 = *(v100 + 27);
      *v109 = *(v100 + 26);
      v109[1] = v114;
      v115 = *(*(v349 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image);
      if (v115)
      {
        type metadata accessor for DKImageCrop();
        v116 = swift_allocObject();
        *(v116 + 56) = v47;
        *(v116 + 16) = v115;
        v117 = v115;
        v118 = CVPixelBufferGetWidth(v117);
        v119 = CVPixelBufferGetHeight(v117);
        v361.origin.x = v110;
        v361.origin.y = v111;
        v361.size.width = v112;
        v361.size.height = v113;
        *(v116 + 24) = VNImageRectForNormalizedRect(v361, v118, v119);
        *(v108 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_crop) = v116;

        if (*(v336 + v331) == 1)
        {
          v317 = v117;
          v120 = *(v100 + 90);
          v121 = *(v100 + 89);
          v122 = *(v100 + 87);
          v123 = *v313;
          (*v313)(v120, &v273[v305], v122);
          v298 = v123;
          v123(v121, (v336 + v302), v122);
          sub_1BB6BA744();
          v125 = v124;
          v41 = *v309;
          (*v309)(v121, v122);
          (v41)(v120, v122);
          if (v125 > 1.0)
          {
            v126 = *(v100 + 81);
            v294 = *(v100 + 77);
            v127 = *(v100 + 76);
            v128 = *(v100 + 74);
            sub_1BB6BA5E4();
            v355[0] = 2036625250;
            v355[1] = 0xE400000000000000;
            if (*(v108 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId + 8))
            {
              v129 = 0;
            }

            else
            {
              v129 = *(v108 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId);
            }

            *(v100 + 67) = v129;
            v130 = sub_1BB6BB794();
            MEMORY[0x1BFB10B60](v130);

            MEMORY[0x1BFB10B60](0x6765706A2ELL, 0xE500000000000000);
            sub_1BB6BA9E4();
            sub_1BB6BA604();

            (*v280)(v127, v128);
            v0 = *v285;
            (*v285)(v126, v294);
            v131 = *(v116 + 24);
            v132 = *(v116 + 32);
            v133 = *(v116 + 40);
            v134 = *(v116 + 48);
            v362.origin.x = v131;
            v362.origin.y = v132;
            v362.size.width = v133;
            v362.size.height = v134;
            v135 = CGRectGetWidth(v362);
            if ((*&v135 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_179;
            }

            if (v135 <= -9.22337204e18)
            {
              goto LABEL_180;
            }

            if (v135 >= 9.22337204e18)
            {
              goto LABEL_181;
            }

            v363.origin.x = v131;
            v363.origin.y = v132;
            v363.size.width = v133;
            v363.size.height = v134;
            v136 = CGRectGetHeight(v363);
            if ((*&v136 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_182;
            }

            if (v136 <= -9.22337204e18)
            {
              goto LABEL_183;
            }

            if (v136 >= 9.22337204e18)
            {
              goto LABEL_184;
            }

            v137 = sub_1BB64F24C(v135, v136);
            v138 = *(v350 + 86);
            v139 = *(v350 + 82);
            v140 = *(v350 + 77);
            v141 = v137;
            (*v275)(v138, v139, v140);
            (*v270)(v138, 0, 1, v140);
            v263 = _s23IntelligentTrackingCore11DKImageUtilC21pixelBufferToJpegFile6buffer3urlSSSgSo11CVBufferRefa_10Foundation3URLVSgtFZ_0(v141, v138);
            v143 = v142;

            sub_1BB598308(v138, &qword_1EBC5C030, &unk_1BB6C5B20);
            v0(v139, v140);
            if (v143)
            {
              v354 = 6;
              v355[0] = 0;
              v355[1] = 0xE000000000000000;
              sub_1BB6BB2F4();

              v355[0] = 0xD000000000000010;
              v355[1] = 0x80000001BB6CB720;
              MEMORY[0x1BFB10B60](v263, v143);

              v144 = v355[0];
              v145 = v355[1];
              v146 = sub_1BB6BB064();
              _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v354, v144, v145, v146);
            }

            else
            {
            }

            v100 = v350;
            v47 = MEMORY[0x1E69E7CC8];
            v46 = v289;
            v147 = *(v350 + 87);
            (v41)(v336 + v302, v147);
            v298(v336 + v302, &v273[v305], v147);
            v101 = v326;
            v105 = v321;
            goto LABEL_95;
          }

          v47 = MEMORY[0x1E69E7CC8];
          v46 = v289;
        }

        else
        {
        }

        v101 = v326;
        v105 = v321;
      }

LABEL_95:

      MEMORY[0x1BFB10C80](v148);
      if (*((v352 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v352 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BB6BAE64();
      }

      sub_1BB6BAEB4();

      v102 = v352;
      goto LABEL_70;
    }

LABEL_98:
    v254 = v102;

    v149 = *&v273[v292];
    v150 = MEMORY[0x1E69E7CC0];
    v355[0] = MEMORY[0x1E69E7CC0];
    v151 = *(v149 + 16);
    if (v151)
    {
      v152 = v149 + 32;

      do
      {
        sub_1BB5BA078(v152, (v100 + 176));
        sub_1BB593648(v100 + 11, (v100 + 216));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C008, &unk_1BB6BD4F0);
        type metadata accessor for DKHandObservation(0);
        if ((swift_dynamicCast() & 1) != 0 && *(v100 + 64))
        {
          MEMORY[0x1BFB10C80]();
          if (*((v355[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v355[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BB6BAE64();
          }

          sub_1BB6BAEB4();
          v150 = v355[0];
        }

        v152 += 40;
        --v151;
      }

      while (v151);
    }

    if (v150 >> 62)
    {
      v153 = sub_1BB6BB564();
    }

    else
    {
      v153 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v153)
    {
      if (v153 < 1)
      {
LABEL_195:
        __break(1u);
        goto LABEL_196;
      }

      v154 = 0;
      v155 = v100;
      v156 = v100 + 376;
      v157 = v155[93];
      v158 = v157[1];
      v159 = v155[88];
      v160 = v150 & 0xC000000000000001;
      v161 = v155[78];
      v310 = (v159 + 8);
      v314 = (v159 + 16);
      v271 = (v155[75] + 8);
      v286 = (v161 + 8);
      v347 = *v157;
      v337 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_saveHandCropToFile;
      v342 = v155[69];
      v306 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_time;
      v264 = (v161 + 56);
      v267 = (v161 + 16);
      v162 = MEMORY[0x1E69E7CC0];
      v303 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastHandCropSaveTime;
      v299 = v150;
      v332 = v153;
      v327 = v158;
      v322 = v150 & 0xC000000000000001;
      v290 = v156;
      while (1)
      {
        if (v160)
        {
          v163 = MEMORY[0x1BFB111F0](v154, v150);
        }

        else
        {
          v163 = *(v150 + 8 * v154 + 32);
        }

        v164 = (v163 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect);
        v165 = *(v163 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect);
        v166 = *(v163 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect + 8);
        v167 = *(v163 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect + 16);
        v168 = *(v163 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect + 24);
        v354 = v158;
        LOBYTE(v355[0]) = v347;
        sub_1BB5A4994(&v354, v355, v156, v165, v166, v167, v168);
        if ((*(v350 + 408) & 1) == 0)
        {
          break;
        }

LABEL_113:
        if (v153 == ++v154)
        {
          goto LABEL_144;
        }
      }

      v169 = v156[1];
      *v164 = *v156;
      v164[1] = v169;
      v170 = *(*(v349 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image);
      if (v170)
      {
        type metadata accessor for DKImageCrop();
        v171 = swift_allocObject();
        v171[2] = 0.0;
        v172 = v170;
        *(v171 + 7) = sub_1BB5B0EA0(MEMORY[0x1E69E7CC0]);
        v173 = *(v171 + 2);
        *(v171 + 2) = v170;
        v174 = v172;

        v175 = CVPixelBufferGetWidth(v174);
        v176 = CVPixelBufferGetHeight(v174);
        v364.origin.x = v165;
        v364.origin.y = v166;
        v364.size.width = v167;
        v364.size.height = v168;
        v365 = VNImageRectForNormalizedRect(v364, v175, v176);
        x = v365.origin.x;
        y = v365.origin.y;
        v179 = v365.size.width;
        v180 = v365.size.height;

        v171[3] = x;
        v171[4] = y;
        v171[5] = v179;
        v171[6] = v180;
        *(v163 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_crop) = v171;

        if (*(v342 + v337) != 1)
        {

          v153 = v332;
          v158 = v327;
LABEL_137:
          v160 = v322;
          goto LABEL_138;
        }

        v318 = v174;
        v181 = *(v350 + 90);
        v182 = *(v350 + 89);
        v183 = *(v350 + 87);
        v184 = *v314;
        (*v314)(v181, &v273[v306], v183);
        v184(v182, (v342 + v303), v183);
        sub_1BB6BA744();
        v186 = v185;
        v41 = *v310;
        (*v310)(v182, v183);
        (v41)(v181, v183);
        if (v186 > 1.0)
        {
          v187 = *(v350 + 79);
          v295 = *(v350 + 77);
          v188 = *(v350 + 76);
          v281 = *(v350 + 74);
          sub_1BB6BA5E4();
          v355[0] = 1684955496;
          v355[1] = 0xE400000000000000;
          if (*(v163 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_trackerId + 8))
          {
            v189 = 0;
          }

          else
          {
            v189 = *(v163 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_trackerId);
          }

          *(v350 + 66) = v189;
          v190 = sub_1BB6BB794();
          MEMORY[0x1BFB10B60](v190);

          MEMORY[0x1BFB10B60](0x6765706A2ELL, 0xE500000000000000);
          sub_1BB6BA9E4();
          sub_1BB6BA604();

          (*v271)(v188, v281);
          v0 = *v286;
          (*v286)(v187, v295);
          v191 = v171[3];
          v192 = v171[4];
          v193 = v171[5];
          v194 = v171[6];
          v366.origin.x = v191;
          v366.origin.y = v192;
          v366.size.width = v193;
          v366.size.height = v194;
          v195 = CGRectGetWidth(v366);
          if ((*&v195 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_185;
          }

          if (v195 <= -9.22337204e18)
          {
            goto LABEL_186;
          }

          if (v195 >= 9.22337204e18)
          {
            goto LABEL_187;
          }

          v367.origin.x = v191;
          v367.origin.y = v192;
          v367.size.width = v193;
          v367.size.height = v194;
          v196 = CGRectGetHeight(v367);
          if ((*&v196 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_188;
          }

          if (v196 <= -9.22337204e18)
          {
            goto LABEL_189;
          }

          if (v196 >= 9.22337204e18)
          {
            goto LABEL_190;
          }

          v282 = v184;
          v197 = sub_1BB64F24C(v195, v196);
          v198 = *(v350 + 86);
          v199 = *(v350 + 80);
          v200 = *(v350 + 77);
          v201 = v197;
          (*v267)(v198, v199, v200);
          (*v264)(v198, 0, 1, v200);
          v276 = _s23IntelligentTrackingCore11DKImageUtilC21pixelBufferToJpegFile6buffer3urlSSSgSo11CVBufferRefa_10Foundation3URLVSgtFZ_0(v201, v198);
          v203 = v202;

          sub_1BB598308(v198, &qword_1EBC5C030, &unk_1BB6C5B20);
          v0(v199, v200);
          v204 = v203;
          v156 = v290;
          if (v204)
          {
            v354 = 6;
            v355[0] = 0;
            v355[1] = 0xE000000000000000;
            sub_1BB6BB2F4();

            v355[0] = 0xD000000000000010;
            v355[1] = 0x80000001BB6CB700;
            MEMORY[0x1BFB10B60](v276, v204);

            v205 = v355[0];
            v206 = v355[1];
            v207 = sub_1BB6BB064();
            _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v354, v205, v206, v207);
          }

          else
          {
          }

          v153 = v332;
          v158 = v327;
          v208 = *(v350 + 87);
          (v41)(v342 + v303, v208);
          v282(v342 + v303, &v273[v306], v208);
          v150 = v299;
          goto LABEL_137;
        }

        v150 = v299;
        v153 = v332;
        v158 = v327;
        v160 = v322;
        v156 = v290;
      }

LABEL_138:

      MEMORY[0x1BFB10C80](v209);
      if (*((v353 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v353 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BB6BAE64();
      }

      sub_1BB6BAEB4();

      v162 = v353;
      goto LABEL_113;
    }

    v162 = MEMORY[0x1E69E7CC0];
LABEL_144:
    v253 = v162;

    v210 = *&v273[v292];
    v355[0] = MEMORY[0x1E69E7CC0];
    v211 = *(v210 + 16);
    if (v211)
    {
      v0 = v350;
      v212 = v210 + 32;

      v213 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1BB5BA078(v212, v350 + 256);
        sub_1BB593648(v350 + 16, v350 + 296);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C008, &unk_1BB6BD4F0);
        type metadata accessor for DKObjectObservation(0);
        if ((swift_dynamicCast() & 1) != 0 && *(v350 + 65))
        {
          MEMORY[0x1BFB10C80]();
          if (*((v355[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v355[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BB6BAE64();
          }

          sub_1BB6BAEB4();
          v213 = v355[0];
        }

        v212 += 40;
        --v211;
      }

      while (v211);

      if (!(v213 >> 62))
      {
LABEL_153:
        v214 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v214)
        {
          goto LABEL_169;
        }

        goto LABEL_154;
      }
    }

    else
    {
      v213 = MEMORY[0x1E69E7CC0];
      v0 = v350;
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
        goto LABEL_153;
      }
    }

    v214 = sub_1BB6BB564();
    if (!v214)
    {
      goto LABEL_169;
    }

LABEL_154:
    if (v214 < 1)
    {
LABEL_196:
      __break(1u);
      return;
    }

    v215 = *(v0 + 93);
    v265 = v215[1];
    v261 = *v215;
    v216 = *(v0 + 88);
    v217 = *(v0 + 72);
    v259 = (v216 + 16);
    v260 = v213 & 0xC000000000000001;
    v257 = (v216 + 32);
    v258 = (v217 + 16);
    v256 = (v217 + 32);
    v268 = v214;
    v272 = v213;
    v218 = 0;
    do
    {
      v348 = v218;
      if (v260)
      {
        v219 = MEMORY[0x1BFB111F0]();
      }

      else
      {
        v219 = *(v213 + 8 * v218 + 32);
      }

      v328 = *(v0 + 90);
      v333 = *(v0 + 87);
      v220 = *(v0 + 73);
      v221 = *(v0 + 71);
      v311 = v220;
      v315 = v221;
      v307 = *(v0 + 70);
      (*v259)();
      (*v258)(v220, v219 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_uuid, v221);
      v222 = (v219 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_rect);
      v343 = *(v219 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_trackerId);
      v338 = *(v219 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_trackerId + 8);
      v323 = *(v219 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_groupId);
      v319 = *(v219 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_groupId + 8);
      v223 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
      v291 = *(*(v223 - 8) + 56);
      v296 = v222[1];
      v300 = *v222;
      v291(v307, 1, 1, v223);
      type metadata accessor for DKFaceObservation(0);
      v224 = swift_allocObject();
      v225 = v224 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId;
      v226 = v224 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_groupId;
      v227 = v224 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_yaw;
      v228 = v224 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_pitch;
      v229 = v224 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_roll;
      v230 = v224 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_distance;
      v283 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_isObjectType;
      *(v224 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_isObjectType) = 0;
      v277 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_crop;
      *(v224 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_crop) = 0;
      *(v224 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprint) = 0;
      v287 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_isFrontal;
      v231 = v224 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprintConfidence;
      *v231 = 0;
      *(v231 + 8) = 1;
      v232 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityProbabilities;
      v291(v224 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityProbabilities, 1, 1, v223);
      (*v257)(v224 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_time, v328, v333);
      (*v256)(v224 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_uuid, v311, v315);
      v233 = (v224 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
      *v233 = v300;
      *(v233 + 1) = v296;
      *(v224 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_identityConfidences) = MEMORY[0x1E69E7CC0];
      *v225 = v343;
      *(v225 + 8) = v338;
      *v226 = v323;
      *(v226 + 8) = v319;
      *v227 = 0;
      *(v227 + 8) = 1;
      *v228 = 0;
      *(v228 + 8) = 1;
      v0 = v350;
      *v229 = 0;
      *(v229 + 8) = 1;
      *v230 = 0x3FF0000000000000;
      *(v230 + 8) = 0;
      *(v224 + v287) = 2;
      sub_1BB5BA0DC(v307, v224 + v232, &qword_1EBC5C058, &qword_1BB6BD5E0);
      v234 = *v233;
      v235 = v233[1];
      v236 = v233[2];
      v237 = v233[3];
      v354 = v265;
      LOBYTE(v355[0]) = v261;
      sub_1BB5A4994(&v354, v355, v350 + 336, v234, v235, v236, v237);
      if (*(v350 + 368))
      {
      }

      else
      {
        v238 = *(v350 + 22);
        *v233 = *(v350 + 21);
        *(v233 + 1) = v238;
        v239 = *(*(v349 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image);
        if (v239)
        {
          type metadata accessor for DKImageCrop();
          v240 = swift_allocObject();
          v240[2] = 0.0;
          v241 = v239;
          *(v240 + 7) = sub_1BB5B0EA0(MEMORY[0x1E69E7CC0]);
          v242 = *(v240 + 2);
          *(v240 + 2) = v239;
          v243 = v241;

          v244 = CVPixelBufferGetWidth(v243);
          v245 = CVPixelBufferGetHeight(v243);
          v368.origin.x = v234;
          v368.origin.y = v235;
          v368.size.width = v236;
          v368.size.height = v237;
          v369 = VNImageRectForNormalizedRect(v368, v244, v245);
          v246 = v369.origin.x;
          v247 = v369.origin.y;
          v248 = v369.size.width;
          v249 = v369.size.height;

          v240[3] = v246;
          v240[4] = v247;
          v240[5] = v248;
          v240[6] = v249;
          *(v224 + v277) = v240;
        }

        *(v224 + v283) = 1;

        MEMORY[0x1BFB10C80](v250);
        if (*((v351 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v351 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BB6BAE64();
        }

        sub_1BB6BAEB4();

        v255 = v351;
      }

      v213 = v272;
      v218 = v348 + 1;
    }

    while (v268 != v348 + 1);
LABEL_169:
    v251 = *(v0 + 93);

    sub_1BB59822C(v251);
    *(*(v349 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedFaces) = v255;

    *(*(v349 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedBodies) = v254;

    *(*(v349 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedHands) = v253;
  }

LABEL_170:

  v252 = *(v0 + 1);

  v252(1);
}

uint64_t sub_1BB5B9C7C()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastCropSaveTime;
  v2 = sub_1BB6BA7F4();
  v5 = *(*(v2 - 8) + 8);
  (v5)((v2 - 8), v0 + v1, v2);
  v5(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastBodyCropSaveTime, v2);
  v5(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastHandCropSaveTime, v2);
  v3 = v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastImageSaveTime;

  return (v5)(v3, v2);
}

char *sub_1BB5B9D70()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKIntelligentTrackingTask_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastCropSaveTime;
  v4 = sub_1BB6BA7F4();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastBodyCropSaveTime, v4);
  v5(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastHandCropSaveTime, v4);
  v5(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKPrepareInputTask_lastImageSaveTime, v4);
  return v0;
}

uint64_t sub_1BB5B9EAC()
{
  sub_1BB5B9D70();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DKPrepareInputTask(uint64_t a1)
{
  result = qword_1EBC5C380;
  if (!qword_1EBC5C380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB5B9F58(uint64_t a1)
{
  result = sub_1BB6BA7F4();
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

uint64_t sub_1BB5BA008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0, &unk_1BB6BE450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB5BA078(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BB5BA0DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BB5BA144(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1BB6BB004();
  if (!v19)
  {
    return sub_1BB6BAE84();
  }

  v41 = v19;
  v45 = sub_1BB6BB444();
  v32 = sub_1BB6BB454();
  sub_1BB6BB3F4();
  result = sub_1BB6BAFF4();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1BB6BB024();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1BB6BB434();
      result = sub_1BB6BB014();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DKBinaryProbabilityFilter.__allocating_init(alpha:beta:threshold:initialProbability:lowThreshold:time:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, double a6, double a7, double a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - v17;
  v19 = swift_allocObject();
  v20 = v19;
  *(v19 + 49) = 0;
  if (a2)
  {
    v21 = 0.5;
  }

  else
  {
    v21 = *&a1;
  }

  *(v19 + 24) = v21;
  sub_1BB5BA930(a5, v18);
  type metadata accessor for DKSmoothingFilter(0);
  v22 = swift_allocObject();
  *(v22 + 48) = xmmword_1BB6BE460;
  v23 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v24 = sub_1BB6BA7F4();
  (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
  v25 = v22 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  v26 = v22 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v22 + 16) = a6;
  *(v22 + 24) = a7;
  *(v22 + 32) = 0;
  sub_1BB5A1908(a5);
  *(v22 + 40) = v21;
  *(v22 + 33) = 1;
  sub_1BB5BF3C4(v18, v22 + v23);
  *v25 = 0;
  *(v25 + 8) = 1;
  *v26 = 0;
  *(v26 + 8) = 1;
  *(v20 + 16) = v22;
  *(v20 + 32) = a8;
  *(v20 + 40) = a3;
  *(v20 + 48) = a4 & 1;
  return v20;
}

uint64_t DKBinaryProbabilityFilter.init(alpha:beta:threshold:initialProbability:lowThreshold:time:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, double a6, double a7, double a8)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v27 - v18;
  *(v8 + 49) = 0;
  if (a2)
  {
    v20 = 0.5;
  }

  else
  {
    v20 = *&a1;
  }

  *(v8 + 24) = v20;
  sub_1BB5BA930(a5, &v27 - v18);
  type metadata accessor for DKSmoothingFilter(0);
  v21 = swift_allocObject();
  *(v21 + 33) = 0;
  *(v21 + 40) = 0;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0x3FF0000000000000;
  v22 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v23 = sub_1BB6BA7F4();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  v24 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v25 = 0;
  *(v25 + 8) = 1;
  *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v21 + 16) = a6;
  *(v21 + 24) = a7;
  *(v21 + 32) = 0;
  sub_1BB5A1908(a5);
  *(v21 + 40) = v20;
  *(v21 + 33) = 1;
  sub_1BB5BF3C4(v19, v21 + v22);
  *v24 = 0;
  *(v24 + 8) = 1;
  *v25 = 0;
  *(v25 + 8) = 1;
  *(v8 + 16) = v21;
  *(v8 + 32) = a8;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4 & 1;
  return v8;
}

uint64_t sub_1BB5BA930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB5BA9A0(uint64_t a1, char a2, uint64_t a3, char a4, double a5)
{
  if (a2)
  {

    v7 = a5;
    v8 = 0x3FF0000000000000;
  }

  else
  {

    v7 = a5;
    v8 = a3;
    if (a4)
    {
      v11 = 1;
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_6:
  sub_1BB6ABB40(v8, v11, a1, v7);
}

long double sub_1BB5BAA54()
{
  v1 = *(v0 + 16);
  if (*(v1 + 33) != 1)
  {
    return *(v0 + 24);
  }

  if (*(v1 + 32) == 1)
  {
    return atan2(*(v1 + 48), *(v1 + 56));
  }

  return *(v1 + 40);
}

uint64_t sub_1BB5BAA88()
{
  *(v0 + 49) = 0;
  v1 = *(v0 + 16);
  *(v1 + 33) = 0;
  v2 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;

  sub_1BB5A1908(v1 + v2);
  v3 = sub_1BB6BA7F4();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
}

uint64_t sub_1BB5BAB20()
{
  v1 = *(v0 + 16);
  if (*(v1 + 33) == 1)
  {
    if (*(v1 + 32) == 1)
    {
      v2 = atan2(*(v1 + 48), *(v1 + 56));
    }

    else
    {
      v2 = *(v1 + 40);
    }
  }

  else
  {
    v2 = *(v0 + 24);
  }

  v3 = *(v0 + 32);
  if (*(v0 + 48))
  {
    if (v3 >= v2)
    {
LABEL_12:
      v4 = 0;
      *(v0 + 49) = 0;
      goto LABEL_14;
    }
  }

  else if (v3 >= v2)
  {
    if (v2 >= *(v0 + 40))
    {
      v4 = *(v0 + 49);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v4 = 1;
  *(v0 + 49) = 1;
LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C390, &qword_1BB6BE478);
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v2;
  return result;
}

uint64_t DKBinaryProbabilityFilter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DKMultivariateProbabilityFilter.__allocating_init(variableNames:alpha:beta:)(uint64_t a1, double a2, double a3)
{
  v6 = swift_allocObject();
  DKMultivariateProbabilityFilter.init(variableNames:alpha:beta:)(a1, a2, a3);
  return v6;
}

void *DKMultivariateProbabilityFilter.init(variableNames:alpha:beta:)(uint64_t a1, double a2, double a3)
{
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = &v33 - v9;
  v10 = *(v7 + 80);
  v43 = *(v10 - 8);
  v33 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for DKSmoothingFilter(255);
  swift_getTupleTypeMetadata2();
  v15 = sub_1BB6BAE84();
  v40 = *(v7 + 104);
  v41 = v14;
  v16 = sub_1BB5BF618(v15, v10, v14, v40);

  v34 = v3;
  v3[2] = v16;
  v3[3] = 0x3FE0000000000000;
  v17 = (v3 + 2);
  v17[2] = a2;
  v17[3] = a3;
  v39 = v17;
  v18 = sub_1BB6BAEC4();
  if (v18 < 1 || (v19 = v18, !sub_1BB6BAEC4()))
  {
LABEL_12:

    return v34;
  }

  v20 = 0;
  v21 = 1.0 / v19;
  v38 = (v43 + 16);
  v35 = xmmword_1BB6BE460;
  v36 = v10;
  v37 = a1;
  while (1)
  {
    v22 = sub_1BB6BAEA4();
    sub_1BB6BAE54();
    if (v22)
    {
      (*(v43 + 16))(v13, a1 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v20, v10);
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_11;
      }

      goto LABEL_6;
    }

    result = sub_1BB6BB364();
    if (v33 != 8)
    {
      break;
    }

    v44 = result;
    (*v38)(v13, &v44, v10);
    swift_unknownObjectRelease();
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

LABEL_6:
    v24 = sub_1BB6BA7F4();
    v25 = *(*(v24 - 8) + 56);
    v26 = v42;
    v25(v42, 1, 1, v24);
    v27 = swift_allocObject();
    *(v27 + 48) = v35;
    v28 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
    v25((v27 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v24);
    v29 = v27 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
    *v29 = 0;
    *(v29 + 8) = 1;
    v30 = v27 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
    *v30 = 0;
    *(v30 + 8) = 1;
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
    *(v27 + 16) = a2;
    *(v27 + 24) = a3;
    *(v27 + 32) = 256;
    *(v27 + 40) = v21;
    v31 = v26;
    v10 = v36;
    sub_1BB5BF3C4(v31, v27 + v28);
    *v29 = 0;
    *(v29 + 8) = 1;
    *v30 = 0;
    *(v30 + 8) = 1;
    a1 = v37;
    v44 = v27;
    sub_1BB6BAB14();
    sub_1BB6BAB34();
    ++v20;
    if (v23 == sub_1BB6BAEC4())
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1BB5BB0D0()
{
  v1 = *(*v0 + 80);
  v60[1] = type metadata accessor for DKSmoothingFilter(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v72 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v71 = v60 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v60 - v8;
  v78 = v1;
  v65 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v67 = v60 - v11;
  v12 = sub_1BB6BB184();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v60 - v13;
  v81 = 0;
  v82 = 0xE000000000000000;
  v15 = v0[2];
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = sub_1BB6BB4F4();
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v75 = v16 | 0x8000000000000000;
  }

  else
  {
    v20 = -1 << *(v15 + 32);
    v18 = ~v20;
    v17 = v15 + 64;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v15 + 64);
    v75 = v15;
  }

  v76 = (v65 + 32);
  v74 = (v3 + 56);
  v60[0] = v18;
  v23 = (v18 + 64) >> 6;
  v64 = v65 + 16;
  v73 = (v3 + 48);
  v68 = (v3 + 8);
  v69 = (v3 + 16);
  v62 = (v65 + 8);

  v24 = 0;
  v61 = xmmword_1BB6BC7E0;
  v66 = v17;
  v70 = v23;
  v63 = v14;
  v25 = v75;
  if ((v75 & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (sub_1BB6BB504())
  {
    v27 = v26;
    v28 = v67;
    v29 = v78;
    sub_1BB6BB7C4();
    swift_unknownObjectRelease();
    v79 = v27;
    swift_dynamicCast();
    v30 = v80;
    v31 = *(TupleTypeMetadata2 + 48);
    v32 = v28;
    v17 = v66;
    (*v76)(v14, v32, v29);
    *&v14[v31] = v30;
    (*v74)(v14, 0, 1, TupleTypeMetadata2);
    v33 = v24;
    v77 = v19;
LABEL_21:
    while ((*v73)(v14, 1, TupleTypeMetadata2) != 1)
    {
      v47 = *(TupleTypeMetadata2 + 48);
      v48 = *&v14[v47];
      (*v76)(v9, v14, v78);
      *&v9[v47] = v48;
      v49 = *v69;
      (*v69)(v71, v9, TupleTypeMetadata2);

      v50 = MEMORY[0x1E69E6530];
      if (swift_dynamicCast())
      {
        v51 = v80;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC5C398, &qword_1BB6BE480);
        v52 = swift_allocObject();
        *(v52 + 16) = v61;
        *(v52 + 56) = v50;
        *(v52 + 64) = MEMORY[0x1E69E65A8];
        *(v52 + 32) = v51;
        v53 = v72;
        v49(v72, v9, TupleTypeMetadata2);
        v54 = *&v53[*(TupleTypeMetadata2 + 48)];
        if (*(v54 + 33) == 1)
        {
          if (*(v54 + 32))
          {
            v55 = *(v54 + 48);
            v56 = *(v54 + 56);

            v57 = atan2(v55, v56);
          }

          else
          {
            v57 = *(v54 + 40);
          }
        }

        else
        {

          v57 = 0.0;
        }

        v23 = v70;
        v19 = v77;
        v58 = v78;
        *(v52 + 96) = MEMORY[0x1E69E63B0];
        *(v52 + 104) = MEMORY[0x1E69E6438];
        *(v52 + 72) = v57;
        (*v62)(v72, v58);
        v59 = sub_1BB6BAC64();
        MEMORY[0x1BFB10B60](v59);

        (*v68)(v9, TupleTypeMetadata2);
        v24 = v33;
        v25 = v75;
        if ((v75 & 0x8000000000000000) != 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        (*v68)(v9, TupleTypeMetadata2);
        v24 = v33;
        v19 = v77;
        v23 = v70;
        v25 = v75;
        if ((v75 & 0x8000000000000000) != 0)
        {
          goto LABEL_10;
        }
      }

LABEL_12:
      v34 = v19;
      v35 = v24;
      if (!v19)
      {
        if (v23 <= v24 + 1)
        {
          v36 = v24 + 1;
        }

        else
        {
          v36 = v23;
        }

        v33 = v36 - 1;
        v37 = v24;
        while (1)
        {
          v35 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v35 >= v23)
          {
            (*v74)(v14, 1, 1, TupleTypeMetadata2);
            v77 = 0;
            goto LABEL_21;
          }

          v34 = *(v17 + 8 * v35);
          ++v37;
          if (v34)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        return;
      }

LABEL_20:
      v77 = (v34 - 1) & v34;
      v38 = __clz(__rbit64(v34)) | (v35 << 6);
      v39 = v9;
      v40 = v65;
      v41 = v67;
      v42 = v78;
      (*(v65 + 16))(v67, *(v25 + 48) + *(v65 + 72) * v38, v78);
      v43 = *(*(v25 + 56) + 8 * v38);
      v44 = *(TupleTypeMetadata2 + 48);
      v45 = *(v40 + 32);
      v9 = v39;
      v14 = v63;
      v46 = v41;
      v17 = v66;
      v45(v63, v46, v42);
      *&v14[v44] = v43;
      (*v74)(v14, 0, 1, TupleTypeMetadata2);

      v33 = v35;
    }
  }

  else
  {
    (*v74)(v14, 1, 1, TupleTypeMetadata2);
  }

  sub_1BB593660(v75);
}

void sub_1BB5BB824()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_1BB6BB184();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v24 - v4;
  v6 = v0[2];
  v24[3] = type metadata accessor for DKSmoothingFilter(0);
  v25 = v0;
  v24[2] = *(v1 + 104);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = sub_1BB6BB4F4();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = v7 | 0x8000000000000000;
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v9 = ~v12;
    v8 = v6 + 64;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v10 = v14 & *(v6 + 64);
    v11 = v6;
  }

  v24[1] = v9;
  v15 = (v9 + 64) >> 6;

  v16 = 0;
  while ((v11 & 0x8000000000000000) != 0)
  {
    if (!sub_1BB6BB514())
    {
LABEL_20:
      (*(*(v2 - 8) + 56))(v5, 1, 1, v2);
      sub_1BB593660(v11);
      return;
    }

    sub_1BB6BB7C4();
    swift_unknownObjectRelease();
    v20 = *(v2 - 8);
LABEL_18:
    (*(v20 + 56))(v5, 0, 1, v2);

    sub_1BB6BAB24();

    (*(v20 + 8))(v5, v2);
    v21 = v26;
    if (v26)
    {
      *(v26 + 33) = 0;
      v22 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
      sub_1BB5A1908(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated);
      v23 = sub_1BB6BA7F4();
      (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
    }
  }

  v17 = v16;
  if (v10)
  {
    v18 = v16;
LABEL_15:
    v19 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v20 = *(v2 - 8);
    (*(v20 + 16))(v5, *(v11 + 48) + *(v20 + 72) * (v19 | (v18 << 6)), v2);
    goto LABEL_18;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_20;
    }

    v10 = *(v8 + 8 * v18);
    ++v17;
    if (v10)
    {
      v16 = v18;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1BB5BBBA0(uint64_t a1, double a2)
{
  v22[0] = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v22 - v6;
  v8 = *(v22[0] + 80);
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(v22 - v11, a1, v8, v10);
  v13 = v2[4];
  v14 = v2[5];
  v15 = sub_1BB6BA7F4();
  v16 = *(*(v15 - 8) + 56);
  v16(v7, 1, 1, v15);
  type metadata accessor for DKSmoothingFilter(0);
  v17 = swift_allocObject();
  *(v17 + 48) = xmmword_1BB6BE460;
  v18 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v16((v17 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v15);
  v19 = v17 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v17 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v17 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  *(v17 + 32) = 256;
  *(v17 + 40) = a2;
  sub_1BB5BF3C4(v7, v17 + v18);
  *v19 = 0;
  *(v19 + 8) = 1;
  *v20 = 0;
  *(v20 + 8) = 1;
  v22[1] = v17;
  sub_1BB6BAB14();
  return sub_1BB6BAB34();
}

double sub_1BB5BBE30(uint64_t a1)
{
  type metadata accessor for DKSmoothingFilter(255);
  sub_1BB6BAB14();
  sub_1BB6BAAF4();

  return result;
}

void sub_1BB5BBECC(unint64_t a1, char a2, int a3)
{
  v99 = a3;
  v120 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = v94 - v7;
  v8 = *(v120 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v95 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v96 = v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v102 = v94 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v118 = v94 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v100 = v94 - v15;
  v117 = type metadata accessor for DKSmoothingFilter(255);
  v16 = swift_getTupleTypeMetadata2();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v94 - v21;
  v123 = v8;
  v115 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v103 = v94 - v24;
  v25 = sub_1BB6BB184();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = v94 - v26;
  v127 = a1;
  v109 = v3;
  if (a2)
  {
    v116 = v27;
    v28 = v3[2];
    v108 = v22;
    v112 = a1;
    v104 = v19;
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = sub_1BB6BB4F4();
      v114 = 0;
      v30 = 0;
      v31 = 0;
      v119 = v29 | 0x8000000000000000;
    }

    else
    {
      v32 = -1 << *(v28 + 32);
      v30 = ~v32;
      v33 = *(v28 + 64);
      v114 = v28 + 64;
      v34 = -v32;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v31 = (v35 & v33);
      v119 = v28;
    }

    v121 = (v115 + 32);
    v111 = (v17 + 56);
    v94[1] = v30;
    v97 = (v30 + 64) >> 6;
    v101 = v115 + 16;
    v110 = (v17 + 48);
    v107 = (v17 + 16);
    v106 = (v115 + 8);
    v105 = (v17 + 8);

    v36 = 0;
    while (1)
    {
      v37 = v119;
      if ((v119 & 0x8000000000000000) != 0)
      {
        if (!sub_1BB6BB504())
        {
          (*v111)(v116, 1, 1, v16);
          v64 = v37;
          goto LABEL_30;
        }

        v52 = v51;
        v53 = v103;
        v54 = v123;
        sub_1BB6BB7C4();
        swift_unknownObjectRelease();
        v126 = v52;
        swift_dynamicCast();
        v55 = v124;
        v56 = *(v16 + 48);
        v43 = v116;
        (*v121)(v116, v53, v54);
        *&v43[v56] = v55;
        (*v111)(v43, 0, 1, v16);
        v41 = v36;
        v122 = v31;
      }

      else
      {
        v38 = v31;
        v39 = v36;
        if (!v31)
        {
          if (v97 <= v36 + 1)
          {
            v40 = v36 + 1;
          }

          else
          {
            v40 = v97;
          }

          v41 = v40 - 1;
          v42 = v36;
          v43 = v116;
          while (1)
          {
            v39 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              break;
            }

            if (v39 >= v97)
            {
              (*v111)(v116, 1, 1, v16);
              v122 = 0;
              goto LABEL_25;
            }

            v38 = *(v114 + 8 * v39);
            ++v42;
            if (v38)
            {
              v37 = v119;
              goto LABEL_21;
            }
          }

          __break(1u);
          goto LABEL_52;
        }

LABEL_21:
        v122 = ((v38 - 1) & v38);
        v44 = __clz(__rbit64(v38)) | (v39 << 6);
        v45 = v115;
        v46 = v103;
        v47 = v123;
        (*(v115 + 16))(v103, *(v37 + 48) + *(v115 + 72) * v44, v123);
        v48 = *(*(v37 + 56) + 8 * v44);
        v49 = *(v16 + 48);
        v50 = v116;
        (*(v45 + 32))(v116, v46, v47);
        *&v50[v49] = v48;
        v43 = v50;
        (*v111)(v50, 0, 1, v16);

        v41 = v39;
      }

LABEL_25:
      if ((*v110)(v43, 1, v16) == 1)
      {
        v64 = v119;
LABEL_30:
        sub_1BB593660(v64);
        goto LABEL_31;
      }

      v57 = *(v16 + 48);
      v58 = *&v43[v57];
      v59 = v108;
      v60 = v123;
      (*v121)(v108, v43, v123);
      *&v59[v57] = v58;
      v61 = *v107;
      v62 = v104;
      (*v107)(v104, v59, v16);

      sub_1BB6BAB24();
      v63 = v125;
      (*v106)(v62, v60);
      if (v63 == 1)
      {
        v61(v62, v59, v16);

        v124 = 0;
        v125 = 0;
        sub_1BB6BAB14();
        sub_1BB6BAB34();
      }

      (*v105)(v59, v16);
      v36 = v41;
      v31 = v122;
    }
  }

LABEL_31:
  v65 = 0;
  v67 = v127 + 64;
  v66 = *(v127 + 64);
  v119 = v127;
  v68 = 1 << *(v127 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & v66;
  v71 = (v68 + 63) >> 6;
  v116 = (v115 + 16);
  v114 = v115 + 32;
  v121 = (v115 + 8);
  v122 = (v95 + 16);
  v110 = (v95 + 8);
  v72 = v96;
  v111 = v71;
  v112 = v127 + 64;
  while (v70)
  {
    v73 = v65;
LABEL_41:
    v74 = __clz(__rbit64(v70)) | (v73 << 6);
    v75 = v119;
    v76 = v115;
    v77 = v100;
    v78 = v123;
    (*(v115 + 16))(v100, *(v119 + 48) + *(v115 + 72) * v74, v123);
    v79 = *(*(v75 + 56) + 8 * v74);
    v80 = TupleTypeMetadata2;
    v81 = *(TupleTypeMetadata2 + 48);
    v82 = *(v76 + 32);
    v83 = v118;
    v82(v118, v77, v78);
    *(v83 + v81) = v79;
    v84 = *v122;
    (*v122)(v102, v83, v80);

    sub_1BB6BAB24();

    v85 = v124;
    if (v124)
    {
    }

    v86 = *v121;
    v87 = v123;
    (*v121)(v102, v123);
    if (!v85)
    {
      sub_1BB5BBBA0(v118, 0.5);
    }

    v70 &= v70 - 1;
    v88 = v118;
    v89 = TupleTypeMetadata2;
    v84(v72, v118, TupleTypeMetadata2);

    sub_1BB6BAB24();

    if (v124)
    {
      v86(v72, v87);
      v90 = sub_1BB6BA7F4();
      v91 = v98;
      (*(*(v90 - 8) + 56))(v98, 1, 1, v90);
      if (v99)
      {
        v92 = 0x3FF0000000000000;
        v93 = 0;
      }

      else
      {
        v92 = 0;
        v93 = 1;
      }

      sub_1BB6ABB40(v92, v93, v91, v79);

      sub_1BB5A1908(v91);
      (*v110)(v118, TupleTypeMetadata2);
    }

    else
    {
      (*v110)(v88, v89);
      v86(v72, v87);
    }

    v65 = v73;
    v71 = v111;
    v67 = v112;
  }

  while (1)
  {
    v73 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v73 >= v71)
    {

      return;
    }

    v70 = *(v67 + 8 * v73);
    ++v65;
    if (v70)
    {
      goto LABEL_41;
    }
  }

LABEL_52:
  __break(1u);
}

uint64_t sub_1BB5BCA44(unint64_t a1, int a2)
{
  v3 = v2;
  v58 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = &v57[-v6];
  v67 = a1;
  v7 = v3[2];
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  isUniquelyReferenced_nonNull_native = 0;
  v65 = a1;
  v63 = a1;
  while (2)
  {
    if (v10)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v14 >= v11)
      {
        goto LABEL_15;
      }

      v10 = *(v7 + 64 + 8 * v14);
      ++v12;
    }

    while (!v10);
    v12 = v14;
LABEL_11:
    v15 = (v12 << 9) | (8 * __clz(__rbit64(v10)));
    v16 = *(*(v7 + 48) + v15);
    v17 = *(*(v7 + 56) + v15);

    if (v17)
    {
      v66[0] = v16;
      v66[1] = v17;
      MEMORY[0x1EEE9AC00](v18);
      *&v57[-16] = v66;
      if ((sub_1BB634AF0(sub_1BB5BFD00, &v57[-32], v65) & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C420, &unk_1BB6BE540);
        v19 = swift_allocObject();
        *(v19 + 16) = v16;
        *(v19 + 24) = 0;
        MEMORY[0x1BFB10C80]();
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v64 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1BB6BAE64();
        }

        sub_1BB6BAEB4();
        v63 = v67;
      }

      v10 &= v10 - 1;

      continue;
    }

    break;
  }

LABEL_15:

  isUniquelyReferenced_nonNull_native = v63;
  if (!(v63 >> 62))
  {
    v20 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = v62;
    if (v20)
    {
      goto LABEL_17;
    }
  }

LABEL_51:
  v20 = sub_1BB6BB564();
  v21 = v62;
  if (!v20)
  {
  }

LABEL_17:
  v22 = 0;
  v64 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v59 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v61 = xmmword_1BB6BE460;
  v60 = v20;
  while (1)
  {
    if (v64)
    {
      v23 = MEMORY[0x1BFB111F0](v22, isUniquelyReferenced_nonNull_native);
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (v22 >= *(v59 + 16))
      {
        goto LABEL_49;
      }

      v23 = *(isUniquelyReferenced_nonNull_native + 8 * v22 + 32);

      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_47;
      }
    }

    v25 = *(v23 + 16);
    if (!*(v3[2] + 16))
    {
      break;
    }

    sub_1BB6A1004(*(v23 + 16));
    if ((v26 & 1) == 0)
    {
      break;
    }

LABEL_40:
    if (*(v3[2] + 16) && (sub_1BB6A1004(*(v23 + 16)), (v51 & 1) != 0))
    {
      v52 = *(v23 + 24);
      v53 = sub_1BB6BA7F4();
      (*(*(v53 - 8) + 56))(v21, 1, 1, v53);

      if (v58)
      {
        v54 = 0x3FF0000000000000;
        v55 = 0;
      }

      else
      {
        v54 = 0;
        v55 = 1;
      }

      sub_1BB6ABB40(v54, v55, v21, v52);

      sub_1BB5A1908(v21);
    }

    else
    {
    }

    ++v22;
    if (v24 == v20)
    {
    }
  }

  v65 = v24;
  v27 = v3[4];
  v28 = v3[5];
  v29 = sub_1BB6BA7F4();
  v30 = *(*(v29 - 8) + 56);
  v30(v21, 1, 1, v29);
  type metadata accessor for DKSmoothingFilter(0);
  v31 = swift_allocObject();
  *(v31 + 48) = v61;
  v32 = v3;
  v33 = v21;
  v34 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v30(v31 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, 1, 1, v29);
  v35 = v31 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v35 = 0;
  *(v35 + 8) = 1;
  v36 = v31 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v36 = 0;
  *(v36 + 8) = 1;
  *(v31 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v31 + 16) = v27;
  *(v31 + 24) = v28;
  *(v31 + 32) = 256;
  *(v31 + 40) = 0x3FE0000000000000;
  v37 = v33;
  v3 = v32;
  sub_1BB5BF3C4(v37, v31 + v34);
  *v35 = 0;
  *(v35 + 8) = 1;
  *v36 = 0;
  *(v36 + 8) = 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66[0] = v32[2];
  v38 = v66[0];
  v32[2] = 0x8000000000000000;
  v40 = sub_1BB6A1004(v25);
  v41 = *(v38 + 16);
  v42 = (v39 & 1) == 0;
  v43 = v41 + v42;
  if (__OFADD__(v41, v42))
  {
    goto LABEL_48;
  }

  v44 = v39;
  if (*(v38 + 24) >= v43)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v47 = v66[0];
      if (v39)
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_1BB5E9BA4();
      v47 = v66[0];
      if (v44)
      {
        goto LABEL_35;
      }
    }

LABEL_37:
    v47[(v40 >> 6) + 8] |= 1 << v40;
    *(v47[6] + 8 * v40) = v25;
    *(v47[7] + 8 * v40) = v31;
    v48 = v47[2];
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (v49)
    {
      goto LABEL_50;
    }

    v47[2] = v50;
    goto LABEL_39;
  }

  sub_1BB5E624C(v43, isUniquelyReferenced_nonNull_native);
  v45 = sub_1BB6A1004(v25);
  if ((v44 & 1) == (v46 & 1))
  {
    v40 = v45;
    v47 = v66[0];
    if ((v44 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_35:
    *(v47[7] + 8 * v40) = v31;

LABEL_39:
    v32[2] = v47;

    v21 = v62;
    isUniquelyReferenced_nonNull_native = v63;
    v20 = v60;
    v24 = v65;
    goto LABEL_40;
  }

  result = sub_1BB6BB874();
  __break(1u);
  return result;
}

void sub_1BB5BD050(uint64_t a1, int a2)
{
  v86 = a2;
  v101 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v85 = &v81 - v5;
  v102 = v101[10];
  v6 = v102;
  v106 = type metadata accessor for DKSmoothingFilter(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v83 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v81 - v11;
  v87 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v81 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v98 = &v81 - v17;
  v18 = sub_1BB6BB184();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v81 - v19;
  v96 = a1;
  v109 = a1;
  v21 = v2[2];
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = sub_1BB6BB4F4();
    v97 = 0;
    v23 = 0;
    v24 = 0;
    v25 = v22 | 0x8000000000000000;
  }

  else
  {
    v26 = -1 << *(v21 + 32);
    v23 = ~v26;
    v27 = *(v21 + 64);
    v97 = v21 + 64;
    v28 = -v26;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v24 = v29 & v27;
    v25 = v21;
  }

  v100 = (v87 + 32);
  v94 = (v8 + 56);
  v81 = v23;
  v30 = (v23 + 64) >> 6;
  v84 = v87 + 16;
  v93 = (v8 + 48);
  v82 = (v8 + 16);
  v92 = (v8 + 8);

  v31 = 0;
  v32 = 0;
  v33 = v99;
  v95 = v25;
  v91 = TupleTypeMetadata2;
  v90 = v30;
  while (1)
  {
    v105 = v32;
    if ((v25 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v24)
    {
      v34 = v24;
      v35 = v31;
LABEL_21:
      v104 = (v34 - 1) & v34;
      v48 = __clz(__rbit64(v34)) | (v35 << 6);
      v49 = v87;
      v50 = v98;
      v51 = v102;
      (*(v87 + 16))(v98, *(v25 + 48) + *(v87 + 72) * v48, v102);
      v52 = *(*(v25 + 56) + 8 * v48);
      v53 = v91;
      v54 = *(v91 + 48);
      (*(v49 + 32))(v20, v50, v51);
      *&v20[v54] = v52;
      (*v94)(v20, 0, 1, v53);

      v44 = v35;
      v33 = v99;
      TupleTypeMetadata2 = v53;
      v30 = v90;
    }

    else
    {
      v45 = TupleTypeMetadata2;
      if (v30 <= v31 + 1)
      {
        v46 = v31 + 1;
      }

      else
      {
        v46 = v30;
      }

      v44 = v46 - 1;
      v47 = v31;
      while (1)
      {
        v35 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          __break(1u);
          return;
        }

        if (v35 >= v30)
        {
          break;
        }

        v34 = *(v97 + 8 * v35);
        ++v47;
        if (v34)
        {
          goto LABEL_21;
        }
      }

      TupleTypeMetadata2 = v45;
      (*v94)(v20, 1, 1, v45);
      v104 = 0;
    }

LABEL_22:
    if ((*v93)(v20, 1, TupleTypeMetadata2) == 1)
    {
      goto LABEL_27;
    }

    v103 = v44;
    v55 = *(TupleTypeMetadata2 + 48);
    v56 = *&v20[v55];
    v57 = v102;
    v58 = (*v100)(v33, v20, v102);
    *&v33[v55] = v56;
    v108 = v96;
    MEMORY[0x1EEE9AC00](v58);
    v59 = v101;
    v60 = v101[11];
    *(&v81 - 6) = v57;
    *(&v81 - 5) = v60;
    v61 = *(v59 + 6);
    *(&v81 - 2) = v61;
    *(&v81 - 2) = v33;
    type metadata accessor for DKProbabilityValue(255, v57, v60, v61);
    sub_1BB6BAF04();
    swift_getWitnessTable();
    v32 = v105;
    v62 = sub_1BB6BADA4();
    v33 = v99;
    if ((v62 & 1) == 0)
    {
      v63 = v83;
      (*v82)(v83, v99, TupleTypeMetadata2);

      v108 = DKProbabilityValue.__allocating_init(variable:probability:)(v63, 0.0);
      sub_1BB6BAED4();
    }

    (*v92)(v33, TupleTypeMetadata2);
    v31 = v103;
    v24 = v104;
    v25 = v95;
  }

  v36 = v31;
  if (sub_1BB6BB504())
  {
    v38 = v37;
    v39 = v24;
    v40 = v98;
    v41 = v102;
    sub_1BB6BB7C4();
    swift_unknownObjectRelease();
    v107 = v38;
    swift_dynamicCast();
    v42 = v108;
    TupleTypeMetadata2 = v91;
    v43 = *(v91 + 48);
    (*v100)(v20, v40, v41);
    *&v20[v43] = v42;
    (*v94)(v20, 0, 1, TupleTypeMetadata2);
    v30 = v90;
    v44 = v36;
    v104 = v39;
    goto LABEL_22;
  }

  (*v94)(v20, 1, 1, v91);
LABEL_27:
  sub_1BB593660(v95);
  v64 = v109;
  v65 = v102;
  v66 = type metadata accessor for DKProbabilityValue(0, v102, v101[11], v101[12]);
  if (!sub_1BB6BAEC4())
  {
    goto LABEL_44;
  }

  v67 = (v87 + 8);
  v68 = 4;
  v104 = v64;
  v105 = v66;
  while (2)
  {
    v69 = v68 - 4;
    v70 = sub_1BB6BAEA4();
    sub_1BB6BAE54();
    if (v70)
    {

      v71 = v68 - 3;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      goto LABEL_33;
    }

    sub_1BB6BB364();
    v71 = v68 - 3;
    if (!__OFADD__(v69, 1))
    {
LABEL_33:
      v72 = v88;
      sub_1BB6B7188(v88);

      sub_1BB6BAB24();

      v73 = *v67;
      (*v67)(v72, v65);
      if (v108)
      {
      }

      else
      {
        v74 = v98;
        sub_1BB6B7188(v98);
        sub_1BB5BBBA0(v74, 0.5);
        v73(v74, v65);
      }

      v75 = v89;
      sub_1BB6B7188(v89);

      sub_1BB6BAB24();

      v73(v75, v65);
      if (v108)
      {
        v76 = sub_1BB6B7274();
        v77 = sub_1BB6BA7F4();
        v78 = v85;
        (*(*(v77 - 8) + 56))(v85, 1, 1, v77);
        if (v86)
        {
          v79 = 0x3FF0000000000000;
          v80 = 0;
        }

        else
        {
          v79 = 0;
          v80 = 1;
        }

        sub_1BB6ABB40(v79, v80, v78, v76);

        sub_1BB5A1908(v78);
      }

      else
      {
      }

      ++v68;
      if (v71 == sub_1BB6BAEC4())
      {
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_44:
}

uint64_t sub_1BB5BDAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB6B7188(v9);
  v10 = sub_1BB6BABE4();
  (*(v7 + 8))(v9, a3);
  return v10 & 1;
}

void sub_1BB5BDBB0()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for DKSmoothingFilter(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v75 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v71 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v86 = v71 - v11;
  v76 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v82 = v71 - v13;
  v14 = sub_1BB6BB184();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v71 - v15;
  v91 = v0[2];
  v71[1] = v3;
  v17 = sub_1BB6BAB04();

  WitnessTable = swift_getWitnessTable();
  v20 = sub_1BB5BA144(sub_1BB5BF92C, v0, v17, MEMORY[0x1E69E63B0], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v19);

  v21 = *(v20 + 16);
  if (!v21)
  {

    return;
  }

  if (v21 <= 3)
  {
    v22 = 0;
    v23 = 0.0;
LABEL_8:
    v26 = v21 - v22;
    v27 = (v20 + 8 * v22 + 32);
    do
    {
      v28 = *v27++;
      v23 = v23 + v28;
      --v26;
    }

    while (v26);
    goto LABEL_10;
  }

  v22 = v21 & 0x7FFFFFFFFFFFFFFCLL;
  v24 = (v20 + 48);
  v23 = 0.0;
  v25 = v21 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v23 = v23 + *(v24 - 2) + *(v24 - 1) + *v24 + v24[1];
    v24 += 4;
    v25 -= 4;
  }

  while (v25);
  if (v21 != v22)
  {
    goto LABEL_8;
  }

LABEL_10:

  if (v23 > COERCE_DOUBLE(1))
  {
    v29 = v1[2];
    if ((v29 & 0xC000000000000001) != 0)
    {
      v30 = sub_1BB6BB4F4();
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v85 = v30 | 0x8000000000000000;
    }

    else
    {
      v34 = -1 << *(v29 + 32);
      v32 = ~v34;
      v31 = v29 + 64;
      v35 = -v34;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      else
      {
        v36 = -1;
      }

      v33 = v36 & *(v29 + 64);
      v85 = v29;
    }

    v88 = (v76 + 32);
    v84 = (v5 + 56);
    v71[0] = v32;
    v37 = v5;
    v38 = (v32 + 64) >> 6;
    v74 = v76 + 16;
    v83 = (v37 + 48);
    v80 = (v37 + 16);
    v73 = (v37 + 8);
    v79 = (v76 + 8);
    v72 = (v37 + 32);

    v39 = 0;
    v87 = v2;
    v81 = v9;
    v77 = v31;
    v78 = v38;
    v40 = v85;
    if ((v85 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_20:
    if (sub_1BB6BB504())
    {
      v42 = v41;
      v43 = v82;
      sub_1BB6BB7C4();
      swift_unknownObjectRelease();
      v90 = v42;
      swift_dynamicCast();
      v44 = v91;
      v45 = *(TupleTypeMetadata2 + 48);
      v46 = v43;
      v31 = v77;
      (*v88)(v16, v46, v2);
      *&v16[v45] = v44;
      (*v84)(v16, 0, 1, TupleTypeMetadata2);
      v47 = v39;
      v89 = v33;
      while (1)
      {
LABEL_31:
        if ((*v83)(v16, 1, TupleTypeMetadata2) == 1)
        {
          v70 = v85;
          goto LABEL_41;
        }

        v59 = *(TupleTypeMetadata2 + 48);
        v60 = *&v16[v59];
        v2 = v87;
        v61 = v86;
        (*v88)(v86, v16, v87);
        *&v61[v59] = v60;
        v62 = v61;
        v63 = v81;
        (*v80)(v81, v62, TupleTypeMetadata2);
        v64 = *&v63[*(TupleTypeMetadata2 + 48)];
        if (*(v64 + 33) == 1)
        {
          v38 = v78;
          if (*(v64 + 32) == 1)
          {
            v65 = *(v64 + 48);
            v66 = *(v64 + 56);

            v67 = atan2(v65, v66);
          }

          else
          {
            v67 = *(v64 + 40);
          }

          v68 = *v79;
          (*v79)(v63, v2);
          v69 = v75;
          (*v72)(v75, v62, TupleTypeMetadata2);
          *(*&v69[*(TupleTypeMetadata2 + 48)] + 40) = v67 / v23;

          v68(v69, v2);
          v39 = v47;
          v33 = v89;
          v40 = v85;
          if ((v85 & 0x8000000000000000) != 0)
          {
            goto LABEL_20;
          }
        }

        else
        {

          (*v73)(v62, TupleTypeMetadata2);
          (*v79)(v63, v2);
          v39 = v47;
          v33 = v89;
          v38 = v78;
          v40 = v85;
          if ((v85 & 0x8000000000000000) != 0)
          {
            goto LABEL_20;
          }
        }

LABEL_22:
        v48 = v33;
        v49 = v39;
        if (!v33)
        {
          break;
        }

LABEL_30:
        v89 = (v48 - 1) & v48;
        v52 = __clz(__rbit64(v48)) | (v49 << 6);
        v53 = v76;
        v54 = v82;
        v55 = v87;
        (*(v76 + 16))(v82, *(v40 + 48) + *(v76 + 72) * v52, v87);
        v56 = *(*(v40 + 56) + 8 * v52);
        v57 = *(TupleTypeMetadata2 + 48);
        v58 = *(v53 + 32);
        v31 = v77;
        v58(v16, v54, v55);
        *&v16[v57] = v56;
        (*v84)(v16, 0, 1, TupleTypeMetadata2);

        v47 = v49;
      }

      if (v38 <= v39 + 1)
      {
        v50 = v39 + 1;
      }

      else
      {
        v50 = v38;
      }

      v47 = v50 - 1;
      v51 = v39;
      while (1)
      {
        v49 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        if (v49 >= v38)
        {
          (*v84)(v16, 1, 1, TupleTypeMetadata2);
          v89 = 0;
          goto LABEL_31;
        }

        v48 = *(v31 + 8 * v49);
        ++v51;
        if (v48)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
    }

    else
    {
      (*v84)(v16, 1, 1, TupleTypeMetadata2);
      v70 = v40;
LABEL_41:
      sub_1BB593660(v70);
    }
  }
}

double sub_1BB5BE3AC(uint64_t a1)
{
  type metadata accessor for DKSmoothingFilter(0);

  sub_1BB6BAB24();

  v1 = 0.0;
  if (v5)
  {
    if (*(v5 + 33) == 1)
    {
      if (*(v5 + 32) == 1)
      {
        v2 = *(v5 + 48);
        v3 = *(v5 + 56);

        return atan2(v2, v3);
      }

      v1 = *(v5 + 40);
    }
  }

  return v1;
}

void sub_1BB5BE4A0(double a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v88 = a2;
  v82 = a1;
  v93 = a3;
  v4 = *(*v3 + 80);
  v96 = type metadata accessor for DKSmoothingFilter(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v86 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v82 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v82 - v12;
  v13 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v87 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v82 - v17;
  v18 = sub_1BB6BB184();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v82 - v19;
  v95 = sub_1BB6BB184();
  v21 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v92 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v98 = v13;
  v25 = *(v13 + 56);
  v94 = &v82 - v26;
  v111 = v4;
  v85 = v13 + 56;
  v84 = v25;
  v25(v24);
  v27 = v3[2];
  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = sub_1BB6BB4F4();
    v29 = 0;
    v30 = 0;
    v108 = 0;
    v109 = v28 | 0x8000000000000000;
  }

  else
  {
    v31 = -1 << *(v27 + 32);
    v29 = ~v31;
    v32 = *(v27 + 64);
    v108 = v27 + 64;
    v109 = v27;
    v33 = -v31;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v30 = v34 & v32;
  }

  v110 = (v98 + 32);
  v107 = (v6 + 56);
  v90 = v29;
  v35 = (v29 + 64) >> 6;
  v97 = v98 + 16;
  v104 = (v6 + 16);
  v101 = (v6 + 8);
  v105 = (v98 + 8);
  v106 = (v6 + 48);
  v91 = v21;
  v89 = (v21 + 8);
  v83 = (v6 + 32);

  v36 = 0;
  v37 = 0.0;
  v100 = v10;
  v38 = v102;
  v39 = v109;
  v103 = v35;
  v40 = v108;
  if ((v109 & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (sub_1BB6BB504())
  {
    v42 = v41;
    v43 = v99;
    v44 = v111;
    sub_1BB6BB7C4();
    swift_unknownObjectRelease();
    v113 = v42;
    swift_dynamicCast();
    v45 = v114;
    v46 = *(TupleTypeMetadata2 + 48);
    v47 = v44;
    v38 = v102;
    (*v110)(v20, v43, v47);
    *&v20[v46] = v45;
    (*v107)(v20, 0, 1, TupleTypeMetadata2);
    v48 = v36;
    v112 = v30;
    v10 = v100;
LABEL_21:
    while ((*v106)(v20, 1, TupleTypeMetadata2) != 1)
    {
      v61 = *(TupleTypeMetadata2 + 48);
      v62 = *&v20[v61];
      v63 = v111;
      v64 = *v110;
      (*v110)(v38, v20, v111);
      *&v38[v61] = v62;
      (*v104)(v10, v38, TupleTypeMetadata2);
      v65 = *&v10[*(TupleTypeMetadata2 + 48)];
      if (*(v65 + 33) == 1)
      {
        v35 = v103;
        if (*(v65 + 32) == 1)
        {
          v66 = *(v65 + 48);
          v67 = *(v65 + 56);

          v68 = atan2(v66, v67);
        }

        else
        {
          v68 = *(v65 + 40);
        }

        v39 = v109;
        (*v105)(v10, v63);
        if (v37 < v68)
        {
          v69 = v94;
          (*v89)(v94, v95);
          v70 = v86;
          (*v83)(v86, v102, TupleTypeMetadata2);

          v71 = v70;
          v38 = v102;
          v64(v69, v71, v63);
          v72 = v69;
          v39 = v109;
          (v84)(v72, 0, 1, v63);
          v37 = v68;
        }

        else
        {
          (*v101)(v38, TupleTypeMetadata2);
        }

        v36 = v48;
        v30 = v112;
        v40 = v108;
        if ((v39 & 0x8000000000000000) != 0)
        {
          goto LABEL_10;
        }
      }

      else
      {

        (*v101)(v38, TupleTypeMetadata2);
        (*v105)(v10, v63);
        v36 = v48;
        v30 = v112;
        v39 = v109;
        v35 = v103;
        v40 = v108;
        if ((v109 & 0x8000000000000000) != 0)
        {
          goto LABEL_10;
        }
      }

LABEL_12:
      v49 = v30;
      v50 = v36;
      if (!v30)
      {
        if (v35 <= v36 + 1)
        {
          v51 = v36 + 1;
        }

        else
        {
          v51 = v35;
        }

        v48 = v51 - 1;
        v52 = v36;
        while (1)
        {
          v50 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            break;
          }

          if (v50 >= v35)
          {
            (*v107)(v20, 1, 1, TupleTypeMetadata2);
            v112 = 0;
            goto LABEL_21;
          }

          v49 = *(v40 + 8 * v50);
          ++v52;
          if (v49)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        return;
      }

LABEL_20:
      v112 = (v49 - 1) & v49;
      v53 = __clz(__rbit64(v49)) | (v50 << 6);
      v54 = v98;
      v55 = v99;
      v56 = v111;
      (*(v98 + 16))(v99, *(v39 + 48) + *(v98 + 72) * v53, v111);
      v57 = *(*(v39 + 56) + 8 * v53);
      v58 = *(TupleTypeMetadata2 + 48);
      v59 = *(v54 + 32);
      v10 = v100;
      v60 = v56;
      v38 = v102;
      v59(v20, v55, v60);
      *&v20[v58] = v57;
      (*v107)(v20, 0, 1, TupleTypeMetadata2);

      v48 = v50;
    }
  }

  else
  {
    (*v107)(v20, 1, 1, TupleTypeMetadata2);
  }

  sub_1BB593660(v109);
  v73 = v92;
  v74 = v95;
  (*(v91 + 32))(v92, v94, v95);
  v75 = v111;
  if ((*(v98 + 48))(v73, 1, v111) == 1)
  {
    (*v89)(v73, v74);
LABEL_35:
    v76 = swift_getTupleTypeMetadata2();
    (*(*(v76 - 8) + 56))(v93, 1, 1, v76);
    return;
  }

  v77 = *v110;
  v78 = v87;
  (*v110)(v87, v73, v75);
  if ((v88 & 1) == 0 && v37 <= v82)
  {
    (*v105)(v78, v75);
    goto LABEL_35;
  }

  v79 = swift_getTupleTypeMetadata2();
  v80 = *(v79 + 48);
  v81 = v93;
  v77(v93, v78, v75);
  *&v81[v80] = v37;
  (*(*(v79 - 8) + 56))(v81, 0, 1, v79);
}

uint64_t sub_1BB5BEEC0()
{
  v1 = *v0;
  v11 = *(*v0 + 80);
  v2 = *(*v0 + 96);
  type metadata accessor for DKProbabilityDistribution(0, *(*v0 + 80), *(*v0 + 88), v2);
  v15 = v0[2];
  *&v3 = v2;
  *(&v3 + 1) = *(v1 + 104);
  v13 = v11;
  v14 = v3;
  type metadata accessor for DKSmoothingFilter(255);
  v4 = sub_1BB6BAB14();
  v5 = type metadata accessor for DKProbabilityValue(0, v11, *(&v11 + 1), v2);

  WitnessTable = swift_getWitnessTable();
  v8 = sub_1BB5BA144(sub_1BB5BF994, v12, v4, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  v9 = DKProbabilityDistribution.__allocating_init(variables:)(v8);
  sub_1BB6B7F60();
  return v9;
}

uint64_t sub_1BB5BF050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v24 = a5;
  type metadata accessor for DKSmoothingFilter(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v17 = *(v10 + 16);
  v17(&v23 - v15, a1, TupleTypeMetadata2, v14);

  (v17)(v12, a1, TupleTypeMetadata2);
  v18 = *&v12[*(TupleTypeMetadata2 + 48)];
  if (*(v18 + 33) == 1)
  {
    if (*(v18 + 32) == 1)
    {
      v19 = *(v18 + 48);
      v20 = *(v18 + 56);

      v21 = atan2(v19, v20);
    }

    else
    {
      v21 = *(v18 + 40);
    }
  }

  else
  {

    v21 = 0.0;
  }

  type metadata accessor for DKProbabilityValue(0, a2, a3, a4);
  (*(*(a2 - 8) + 8))(v12, a2);
  result = DKProbabilityValue.__allocating_init(variable:probability:)(v16, v21);
  *v24 = result;
  return result;
}

uint64_t DKMultivariateProbabilityFilter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BB5BF2B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1BB6BB404();
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v4 += 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C420, &unk_1BB6BE540);
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v6;
      sub_1BB6BB3D4();
      sub_1BB6BB414();
      sub_1BB6BB424();
      sub_1BB6BB3E4();
      --v1;
    }

    while (v1);
    v2 = v9;
  }

  sub_1BB5BCA44(v2, 0);
}

uint64_t sub_1BB5BF3C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BB5BF434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BB6BAB74();

  return sub_1BB5BF490(a1, v6, a2, a3);
}

unint64_t sub_1BB5BF490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v20 = sub_1BB6BABE4();
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

unint64_t sub_1BB5BF618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1BB6BAEC4())
  {
    sub_1BB6BB5A4();
    v13 = sub_1BB6BB594();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1BB6BAEC4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1BB6BAEA4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1BB6BB364();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1BB5BF434(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void sub_1BB5BF92C(uint64_t *a1@<X0>, long double *a2@<X8>)
{
  v2 = *a1;
  v3 = 0.5;
  if (*(*a1 + 33) == 1)
  {
    if (*(v2 + 32) == 1)
    {
      *a2 = atan2(*(v2 + 48), *(v2 + 56));
      return;
    }

    v3 = *(v2 + 40);
  }

  *a2 = v3;
}

uint64_t sub_1BB5BFD1C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_19:
    v5 = sub_1BB6BB564();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v11 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1BFB111F0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            return v11;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_15;
          }
        }

        v14 = v7;
        a1(&v13, &v14);
        if (v3)
        {
          goto LABEL_16;
        }

        if (v13)
        {
          MEMORY[0x1BFB10C80](v9);
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BB6BAE64();
          }

          sub_1BB6BAEB4();
          v11 = v15;
        }

        ++v6;
        if (v8 == v5)
        {
          return v11;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1BB5BFEF0(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_1BB6BB564();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x1BFB111F0](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_1BB6BB3D4();
          sub_1BB6BB414();
          v5 = v14;
          sub_1BB6BB424();
          v3 = &v18;
          sub_1BB6BB3E4();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v3;
}

double sub_1BB5C00B4(uint64_t a1)
{
  *(v1 + 16) = a1;

  return result;
}

double sub_1BB5C00EC(uint64_t a1)
{
  *(v1 + 24) = a1;

  return result;
}

double sub_1BB5C0124(uint64_t a1)
{
  *(v1 + 32) = a1;

  return result;
}

double sub_1BB5C015C(uint64_t a1)
{
  *(v1 + 48) = a1;

  return result;
}

uint64_t DKMultiSubjectTrackerConfiguration.__allocating_init()()
{
  v0 = swift_allocObject();
  DKMultiSubjectTrackerConfiguration.init()();
  return v0;
}

uint64_t DKMultiSubjectTrackerConfiguration.init()()
{
  type metadata accessor for DKFaceTrackerConfiguration();
  *(swift_allocObject() + 200) = xmmword_1BB6BE550;
  *(v0 + 16) = DKTrackerConfiguration.init()();
  type metadata accessor for DKBodyTrackerConfiguration();
  swift_allocObject();
  *(v0 + 24) = DKTrackerConfiguration.init()();
  type metadata accessor for DKHandTrackerConfiguration();
  *(swift_allocObject() + 200) = 0x3FB999999999999ALL;
  *(v0 + 32) = DKTrackerConfiguration.init()();
  type metadata accessor for DKPersonTrackerConfiguration();
  swift_allocObject();
  *(v0 + 40) = DKPersonTrackerConfiguration.init()();
  type metadata accessor for DKPersonGroupConfiguration();
  v1 = swift_allocObject();
  v1[1] = xmmword_1BB6BE560;
  v1[2] = xmmword_1BB6BE570;
  v1[3] = xmmword_1BB6BE580;
  *(v0 + 48) = v1;
  *(v0 + 56) = xmmword_1BB6BE590;
  *(v0 + 72) = xmmword_1BB6BE590;
  return v0;
}

void *DKMultiSubjectTrackerConfiguration.deinit()
{

  return v0;
}

uint64_t DKMultiSubjectTrackerConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DKMultiSubjectTracker.__allocating_init(configuration:camera:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DKMultiSubjectTracker.init(configuration:camera:)(a1, a2);
  return v4;
}

uint64_t DKMultiSubjectTracker.init(configuration:camera:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_lastTrackerId) = 0;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_lastPersonId) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_faceTrackers) = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_bodyTrackers) = v5;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_handTrackers) = v5;
  sub_1BB6BAA24();
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers) = v5;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_configuration) = a1;
  sub_1BB5CB610(a2, v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_camera, type metadata accessor for DKCamera);
  v6 = *(a1 + 48);
  type metadata accessor for DKPersonGroupFilter();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC8];
  v9 = MEMORY[0x1E69E7CD0];
  v7[4] = MEMORY[0x1E69E7CC8];
  v7[5] = v9;
  v7[6] = v8;
  v7[7] = v5;
  v7[8] = v9;
  v7[9] = v9;
  v7[10] = v9;
  v7[2] = v6;
  v7[3] = v8;

  sub_1BB5CB678(a2, type metadata accessor for DKCamera);
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_groupFilter) = v7;
  return v2;
}

uint64_t sub_1BB5C0594@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1BB5CB610(v12, v10, type metadata accessor for DKIdentityFilter.IdentityProbability);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1BB5CB678(v10, type metadata accessor for DKIdentityFilter.IdentityProbability);
      }

      if (v14)
      {
        break;
      }

      sub_1BB5CB678(v10, type metadata accessor for DKIdentityFilter.IdentityProbability);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1BB5CB5A8(v10, v18, type metadata accessor for DKIdentityFilter.IdentityProbability);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_1BB5C0760(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_1BB6BB564();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1BFB111F0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_1BB5C08A4(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370, &unk_1BB6BE3F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18[-v8];
  v10 = sub_1BB6BA844();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BB5982A0(a1, v9, &qword_1EBC5C370, &unk_1BB6BE3F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BB598308(v9, &qword_1EBC5C370, &unk_1BB6BE3F0);
    return 0;
  }

  else
  {
    v15 = (*(v11 + 32))(v13, v9, v10);
    v16 = *(v3 + *a2);
    MEMORY[0x1EEE9AC00](v15);
    *&v18[-16] = v13;

    v17 = sub_1BB5C0760(a3, &v18[-32], v16);

    (*(v11 + 8))(v13, v10);
    return v17;
  }
}

uint64_t sub_1BB5C0B9C(unint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t *), void (*a4)(uint64_t *__return_ptr, uint64_t *))
{
  v7 = a1;
  v8 = *a2;
  v9 = *(v4 + *a2);
  v23[2] = a1;

  v10 = a3;
  v11 = 0;
  *(v4 + v8) = sub_1BB5BFEF0(v10, v23, v9);

  v12 = *(v4 + v8);
  v24 = MEMORY[0x1E69E7CC0];
  if (v12 >> 62)
  {
LABEL_19:
    v13 = sub_1BB6BB564();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v19[4] = v11;
    v20 = v7;
    v21 = a4;
    v7 = 0;
    a4 = &qword_1EBC5EE28;
    v22 = v13;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1BFB111F0](v7, v12);
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v15 = v24;
          v7 = v20;
          a4 = v21;
          goto LABEL_17;
        }
      }

      else
      {
        if (v7 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v14 = *(v12 + 8 * v7 + 32);

        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      if (*(*(v14 + qword_1EBC5EE40) + 16) >= *(*(v14 + qword_1EBC5EE28) + 80))
      {
        sub_1BB6BB3D4();
        sub_1BB6BB414();
        sub_1BB6BB424();
        sub_1BB6BB3E4();
        v13 = v22;
      }

      else
      {
      }

      ++v7;
      if (v11 == v13)
      {
        goto LABEL_15;
      }
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_17:

  MEMORY[0x1EEE9AC00](v16);
  v19[2] = v7;
  v17 = sub_1BB5BFD1C(a4, v19, v15);

  return v17;
}

void sub_1BB5C0DF4(const char *a1)
{
  v74 = type metadata accessor for DKIdentityFilter.IdentityState(0);
  MEMORY[0x1EEE9AC00](v74);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C428, &unk_1BB6BE5D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v53 - v6;
  v8 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for SlidingWindowMaxIdentity.TimedProbability(0);
  v66 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v53 - v14;
  v15 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers;
  v16 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
  v73 = a1;
  v75[2] = a1;

  v17 = sub_1BB5BFEF0(sub_1BB5CA994, v75, v16);
  v59 = 0;
  *(v15 + v1) = v17;

  v58 = v15;
  v64 = v1;
  v19 = *(v15 + v1);
  if (v19 >> 62)
  {
    goto LABEL_53;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v20 >= 1)
  {
    v68 = v12;
    v62 = v8;
    v63 = v7;
    v72 = v19 & 0xC000000000000001;
    v70 = v19 + 32;
    v61 = (v9 + 48);
    v71 = 0x80000001BB6CB830;
    v56 = "IdentityFilterDebug: time: ";
    v55 = " rawSimilarity: ";
    v54 = " trackerConfidence: ";
    v53 = " firstValueTime: ";

    v12 = 0;
    v21 = v66;
    v67 = v19;
    v60 = v20;
    while (1)
    {
      if (v72)
      {
        v15 = MEMORY[0x1BFB111F0](v12, v19);
      }

      else
      {
        v15 = *(v70 + 8 * v12);
      }

      v22 = 0;
      ++v12;
      v23 = *(*(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identityFilterNew) + 24);
      v24 = 1 << *(v23 + 32);
      v25 = (v24 + 63) >> 6;
      v26 = 64;
      while (1)
      {
        v27 = *(v23 + v26);
        if (v27)
        {
          break;
        }

        v22 -= 64;
        v26 += 8;
        if (!--v25)
        {
          goto LABEL_18;
        }
      }

      v28 = __clz(__rbit64(v27));
      if (v28 - v24 == v22)
      {
        goto LABEL_18;
      }

      v29 = sub_1BB5CAB6C(v28 - v22, *(v23 + 36), 0, v23);
      v30 = *(*(v29 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_measurementHistory) + 16);
      if (!*(v30 + 16))
      {
        goto LABEL_18;
      }

      v31 = v29;
      v32 = v30 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
      v33 = v69;
      sub_1BB5CB610(v32, v69, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
      v34 = *(v30 + 16);
      if (!v34)
      {
        break;
      }

      sub_1BB5CB610(v32 + *(v21 + 72) * (v34 - 1), v68, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
      v35 = v63;
      sub_1BB5982A0(v31 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastValue, v63, &qword_1EBC5C428, &unk_1BB6BE5D0);
      if ((*v61)(v35, 1, v62) == 1)
      {
        sub_1BB5CB678(v68, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
        sub_1BB5CB678(v69, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
        sub_1BB598308(v35, &qword_1EBC5C428, &unk_1BB6BE5D0);
        v21 = v66;
        v19 = v67;
        v20 = v60;
LABEL_18:
        v79[0] = 1;
        v77 = 0;
        v78 = 0xE000000000000000;
        sub_1BB6BB2F4();

        v77 = 0xD00000000000001BLL;
        v78 = v71;
        sub_1BB6BA7F4();
        sub_1BB5CB47C(&qword_1EBC5C430, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v36 = sub_1BB6BB794();
        MEMORY[0x1BFB10B60](v36);

        MEMORY[0x1BFB10B60](0x72656B6361727420, 0xEB00000000206449);
        v76 = *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_trackerId);
        v37 = sub_1BB6BB794();
        MEMORY[0x1BFB10B60](v37);

        MEMORY[0x1BFB10B60](0x61746164206F6E20, 0xE800000000000000);
        v38 = v77;
        v39 = v78;
        v40 = sub_1BB6BB064();
        _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(v79, v38, v39, v40);

        if (v12 == v20)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_1BB5CB5A8(v35, v65, type metadata accessor for DKIdentityFilter.IdentityProbability);
        v79[0] = 1;
        v77 = 0;
        v78 = 0xE000000000000000;

        sub_1BB6BB2F4();
        MEMORY[0x1BFB10B60](0xD00000000000001BLL, v71);
        sub_1BB6BA7B4();
        sub_1BB6BAFB4();
        MEMORY[0x1BFB10B60](0x72656B6361727420, 0xEB00000000206449);
        v76 = *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_trackerId);
        v41 = sub_1BB6BB794();
        MEMORY[0x1BFB10B60](v41);

        MEMORY[0x1BFB10B60](0xD000000000000010, v56 | 0x8000000000000000);
        sub_1BB6BAFB4();
        MEMORY[0x1BFB10B60](0x72616C696D697320, 0xED0000203A797469);
        sub_1BB6BAFB4();
        MEMORY[0x1BFB10B60](0xD000000000000014, v55 | 0x8000000000000000);
        sub_1BB6BAFB4();
        MEMORY[0x1BFB10B60](0xD000000000000011, v54 | 0x8000000000000000);
        v42 = v69;
        sub_1BB6BA7B4();
        sub_1BB6BAFB4();
        MEMORY[0x1BFB10B60](0xD000000000000010, v53 | 0x8000000000000000);
        v43 = v68;
        sub_1BB6BA7B4();
        sub_1BB6BAFB4();
        v44 = v77;
        v45 = v78;
        v46 = sub_1BB6BB064();
        _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(v79, v44, v45, v46);

        sub_1BB5CB678(v65, type metadata accessor for DKIdentityFilter.IdentityProbability);
        sub_1BB5CB678(v43, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
        sub_1BB5CB678(v42, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
        v21 = v66;
        v19 = v67;
        v20 = v60;
        if (v12 == v60)
        {
LABEL_21:

          goto LABEL_22;
        }
      }
    }

    sub_1BB5CB678(v33, type metadata accessor for SlidingWindowMaxIdentity.TimedProbability);
    v19 = v67;
    goto LABEL_18;
  }

  __break(1u);
  do
  {
    v51 = sub_1BB6BB564();
    if (!v51)
    {
      goto LABEL_58;
    }

LABEL_40:
    v4 = 0;
    v7 = (v1 & 0xC000000000000001);
    while (v7)
    {
      v52 = MEMORY[0x1BFB111F0](v4, v1);
      v12 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        goto LABEL_49;
      }

LABEL_45:
      if (v4 >= *(*(*(*(v15 + v8) + 40) + 296) + 208))
      {
        *(v52 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState + *(v74 + 36)) = 0;
      }

      ++v4;
      if (v12 == v51)
      {
        goto LABEL_58;
      }
    }

    if (v4 >= *(v1 + 16))
    {
      goto LABEL_52;
    }

    v12 = (v4 + 1);
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_45;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v18 = sub_1BB6BB564();
    v20 = v18;
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_22:
    v47 = *(v58 + v64);
    MEMORY[0x1EEE9AC00](v18);
    *(&v53 - 2) = v73;

    v48 = v59;
    v9 = sub_1BB5BFD1C(sub_1BB5CABBC, (&v53 - 4), v47);

    v19 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
      v1 = sub_1BB6BB564();
    }

    else
    {
      v1 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    v7 = 0;
    while (v1 != v8)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1BFB111F0](v8, v9);
        if (__OFADD__(v8, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v12 = *(v9 + 8 * v8 + 32);

        if (__OFADD__(v8, 1))
        {
LABEL_34:
          __break(1u);
          break;
        }
      }

      v15 = type metadata accessor for DKIdentityFilter.IdentityState;
      sub_1BB5CB610(v12 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identityState, v4, type metadata accessor for DKIdentityFilter.IdentityState);

      v12 = v4[*(v74 + 36)];
      sub_1BB5CB678(v4, type metadata accessor for DKIdentityFilter.IdentityState);
      ++v8;
      v49 = __OFADD__(v7, v12);
      v7 += v12;
      if (v49)
      {
        goto LABEL_51;
      }
    }

    v8 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_configuration;
    v15 = v64;
    if (*(*(*(*(v64 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_configuration) + 40) + 296) + 208) >= v7)
    {
      return;
    }

    v77 = sub_1BB5CA4C8(v50, sub_1BB6A36AC, sub_1BB5CA56C);
    sub_1BB5C9278(&v77);
    if (v48)
    {

      __break(1u);
      return;
    }

    v1 = v77;
  }

  while ((v77 & 0x8000000000000000) != 0 || (v77 & 0x4000000000000000) != 0);
  v51 = *(v77 + 16);
  if (v51)
  {
    goto LABEL_40;
  }

LABEL_58:
}