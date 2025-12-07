uint64_t sub_2289DB2D4(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_22911CB6C();
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
    sub_2289DC1E4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2289DB3B4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_2289DD764(0, a3, a4, a5, a6);
    v10 = sub_22911C80C();
    v23 = v10;
    sub_22911C74C();
    if (sub_22911C7BC())
    {
      sub_2289B3D00(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_2289DB908(v17 + 1, a3, a4, a5, a6);
        }

        v10 = v23;
        result = sub_22911C6AC();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_22911C7BC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2289DB5CC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22911BE7C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_2289DD618(0);
  result = sub_22911C7FC();
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
      sub_2289DD5D4(&qword_27D862D58, MEMORY[0x277CCB438]);
      result = sub_22911C2FC();
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

uint64_t sub_2289DB908(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_2289DD764(0, a2, a3, a4, a5);
  result = sub_22911C7FC();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
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
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      result = sub_22911C6AC();
      v22 = -1 << *(v9 + 32);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_2289DBB24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2289DD70C();
  result = sub_22911C7FC();
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
      result = sub_22911CB6C();
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

unint64_t sub_2289DBD3C(uint64_t a1, uint64_t a2)
{
  sub_22911C6AC();
  result = sub_22911C72C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2289DBDC0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_22911BE7C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2289DB5CC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2289DC304();
      goto LABEL_12;
    }

    sub_2289DC7B4(v10 + 1);
  }

  v12 = *v3;
  sub_2289DD5D4(&qword_27D862D58, MEMORY[0x277CCB438]);
  v13 = sub_22911C2FC();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_2289DD5D4(&qword_27D863278, MEMORY[0x277CCB440]);
      v21 = sub_22911C33C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22911CB0C();
  __break(1u);
  return result;
}

void sub_2289DC03C(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_2289DB908(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2289DC52C(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_2289DCAB0(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = sub_22911C6AC();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_2289B3D00(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_22911C6BC();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22911CB0C();
  __break(1u);
}

uint64_t sub_2289DC1E4(uint64_t result, unint64_t a2, char a3)
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
    sub_2289DBB24(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2289DC680();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2289DCCB8(v5 + 1);
  }

  v8 = *v3;
  result = sub_22911CB6C();
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
  result = sub_22911CB0C();
  __break(1u);
  return result;
}

void *sub_2289DC304()
{
  v1 = v0;
  v2 = sub_22911BE7C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289DD618(0);
  v6 = *v0;
  v7 = sub_22911C7EC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
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
LABEL_17:
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
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

id sub_2289DC52C(unint64_t *a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v5 = v4;
  sub_2289DD764(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_22911C7EC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
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
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
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
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_2289DC680()
{
  v1 = v0;
  sub_2289DD70C();
  v2 = *v0;
  v3 = sub_22911C7EC();
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

uint64_t sub_2289DC7B4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22911BE7C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_2289DD618(0);
  v7 = sub_22911C7FC();
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
      sub_2289DD5D4(&qword_27D862D58, MEMORY[0x277CCB438]);
      result = sub_22911C2FC();
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

uint64_t sub_2289DCAB0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_2289DD764(0, a2, a3, a4, a5);
  result = sub_22911C7FC();
  v9 = result;
  if (*(v7 + 16))
  {
    v28 = v5;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      result = sub_22911C6AC();
      v21 = -1 << *(v9 + 32);
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
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v28;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
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
    *v6 = v9;
  }

  return result;
}

uint64_t sub_2289DCCB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2289DD70C();
  result = sub_22911C7FC();
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
      result = sub_22911CB6C();
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

uint64_t sub_2289DCE9C(uint64_t a1)
{
  v2 = sub_22911BE7C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_2289DD5D4(&qword_27D862D58, MEMORY[0x277CCB438]);
  result = MEMORY[0x22AAC60F0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_2289DADA0(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_2289DD048(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, unint64_t *a5)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22911C78C())
  {
    v11 = sub_2289B3D00(0, a2, a3);
    v12 = sub_2289B33F8(a4, a2, a3);
    result = MEMORY[0x22AAC60F0](i, v11, v12);
    v20 = result;
    if (j)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x22AAC6410](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * j + 32);
      }

      v17 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_2289DB058(&v19, v16, a2, a3, a5, a4);

      if (v17 == v14)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v15 = result;
  v14 = sub_22911C78C();
  result = v15;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_2289DD1B8()
{
  result = qword_27D863248;
  if (!qword_27D863248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D863248);
  }

  return result;
}

uint64_t sub_2289DD23C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2289DD328(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2289DD2A4()
{
  result = qword_27D863260;
  if (!qword_27D863260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D863260);
  }

  return result;
}

void sub_2289DD328(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for HDClinicalHealthLinkEntity.Property(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HDClinicalHealthLinkEntity.Property(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HDClinicalHealthLinkEntity.JoinedProperty(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HDClinicalHealthLinkEntity.JoinedProperty(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2289DD5D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22911BE7C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2289DD618(uint64_t a1)
{
  if (!qword_27D863280)
  {
    sub_22911BE7C();
    sub_2289DD5D4(&qword_27D862D58, MEMORY[0x277CCB438]);
    v1 = sub_22911C81C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D863280);
    }
  }
}

uint64_t sub_2289DD698(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AAC60F0](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_2289DB2D4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_2289DD70C()
{
  if (!qword_27D863288)
  {
    v0 = sub_22911C81C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D863288);
    }
  }
}

void sub_2289DD764(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_2289B3D00(255, a3, a4);
    sub_2289B33F8(a5, a3, a4);
    v9 = sub_22911C81C();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_2289DD7F0@<X0>(void *a1@<X8>)
{
  result = [type metadata accessor for HDHRIndicatorSnapshotEntity() defaultForeignKey];
  *a1 = 0xD00000000000001ALL;
  a1[1] = 0x8000000229183740;
  a1[2] = 0xD000000000000015;
  a1[3] = 0x8000000229183370;
  a1[4] = result;
  return result;
}

id HDHRIndicatorSnapshotMEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRIndicatorSnapshotMEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRIndicatorSnapshotMEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRIndicatorSnapshotMEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRIndicatorSnapshotMEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRIndicatorSnapshotMEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRIndicatorSnapshotMEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRIndicatorSnapshotMEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2289DDA64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CC9578];
  sub_2289DED0C(0, &qword_27D862B48, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_2289DF21C(a1 + *a3, &v15 - v7, &qword_27D862B48, v5);
  v9 = sub_22911B88C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_22911B84C();
    (*(v10 + 8))(v8, v9);
    v12 = v13;
  }

  return v12;
}

uint64_t sub_2289DDD6C(SEL *a1, SEL *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_data);
  if (![v4 *a1])
  {
    return 0;
  }

  [v4 *a2];
  return v5;
}

uint64_t sub_2289DDE04()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_data) strokeType];
  if ((v1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_229164EC8[(v1 - 1)];
  }
}

uint64_t sub_2289DDF14()
{
  v1 = MEMORY[0x277CC9578];
  sub_2289DED0C(0, &qword_27D862B48, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - v3;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_22911C83C();
  MEMORY[0x22AAC5FC0](0x6164207472617453, 0xEC000000203A6574);
  sub_2289DF21C(v0 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_startDate, v4, &qword_27D862B48, v1);
  v5 = sub_22911C3AC();
  MEMORY[0x22AAC5FC0](v5);

  MEMORY[0x22AAC5FC0](0x616420646E65202CLL, 0xEC000000203A6574);
  sub_2289DF21C(v0 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_endDate, v4, &qword_27D862B48, v1);
  v6 = sub_22911C3AC();
  MEMORY[0x22AAC5FC0](v6);

  MEMORY[0x22AAC5FC0](0x756F4370616C202CLL, 0xEC000000203A746ELL);
  v12 = *(v0 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_lapCount);
  v7 = sub_22911CAAC();
  MEMORY[0x22AAC5FC0](v7);

  MEMORY[0x22AAC5FC0](0x6E656D676553202CLL, 0xEB00000000203A74);
  v12 = *(v0 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_segment);
  v8 = sub_22911CAAC();
  MEMORY[0x22AAC5FC0](v8);

  MEMORY[0x22AAC5FC0](0x6E6174736944202CLL, 0xEC000000203A6563);
  sub_22911C4FC();
  MEMORY[0x22AAC5FC0](0x656B6F727453202CLL, 0xEF203A746E756F43);
  v12 = *(v0 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_strokeCount);
  v9 = sub_22911CAAC();
  MEMORY[0x22AAC5FC0](v9);

  return v13;
}

id HDCMSwimData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t type metadata accessor for HDCMSwimData(uint64_t a1)
{
  result = qword_27D8632B0;
  if (!qword_27D8632B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2289DE420(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_2289DF2E4();
    v4 = sub_22911C45C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2289DE500(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    type metadata accessor for HDCMSwimData(0);
    v5 = sub_22911C44C();
  }

  if (a2)
  {
    v6 = sub_22911B7EC();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_2289DE5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v8 = *(v7 + OBJC_IVAR____TtC12HealthDaemon15HDCMSwimTracker_tracker);
  if (v8)
  {
    if (a1)
    {
      v14 = *(a1 + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_data);
    }

    else
    {
      v14 = 0;
    }

    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v18[4] = a5;
    v18[5] = v15;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_2289DE420;
    v18[3] = a6;
    v16 = _Block_copy(v18);
    v17 = v8;

    [v17 *a7];
    _Block_release(v16);
  }
}

uint64_t sub_2289DE720(unint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (!a1)
  {
    v6 = 0;
LABEL_13:
    a3(v6, a2);
    goto LABEL_14;
  }

  if (a1 >> 62)
  {
    v13 = a2;
    v14 = sub_22911C78C();
    a2 = v13;
    v5 = v14;
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_13;
  }

  v15 = a2;
  v16 = MEMORY[0x277D84F90];
  result = sub_22911C8BC();
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x22AAC6410](v8, a1);
    }

    else
    {
      v9 = *(a1 + 8 * v8 + 32);
    }

    v10 = v9;
    ++v8;
    v11 = [objc_allocWithZone(HDSafeCMSwimData) initWithSwimData_];
    v12 = objc_allocWithZone(type metadata accessor for HDCMSwimData(0));
    sub_2289DEE2C(v10, v11);

    sub_22911C88C();
    sub_22911C8CC();
    sub_22911C8DC();
    sub_22911C89C();
  }

  while (v5 != v8);
  a3(v16, v15);
LABEL_14:
}

uint64_t sub_2289DE8E8(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(a3, a6, v12);
}

id HDCMSwimTracker.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC12HealthDaemon15HDCMSwimTracker_tracker] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HDCMSwimTracker();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_2289DEAB0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2289DEAF0(uint64_t a1)
{
  sub_2289DED0C(319, &qword_27D862B48, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    sub_2289DED0C(319, &qword_27D8630C0, MEMORY[0x277CC95F0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2289DED0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22911C6CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_2289DEE2C(void *a1, void *a2)
{
  sub_2289DED0C(0, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  sub_2289DED0C(0, &qword_27D862B48, MEMORY[0x277CC9578]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_data;
  *&v2[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_data] = a1;
  v15 = a1;
  v16 = [a2 startDate];
  if (v16)
  {
    v17 = v16;
    sub_22911B86C();

    v18 = sub_22911B88C();
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
  }

  else
  {
    v19 = sub_22911B88C();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  }

  sub_2289DF330(v13, &v2[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_startDate], &qword_27D862B48, MEMORY[0x277CC9578]);
  v20 = [a2 endDate];
  if (v20)
  {
    v21 = v20;
    sub_22911B86C();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_22911B88C();
  v24 = 1;
  (*(*(v23 - 8) + 56))(v11, v22, 1, v23);
  sub_2289DF330(v11, &v2[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_endDate], &qword_27D862B48, MEMORY[0x277CC9578]);
  v25 = [*&v2[v14] recordId];
  *&v2[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_recordId] = v25;
  v26 = [a2 sourceId];
  if (v26)
  {
    v27 = v26;
    sub_22911B8CC();

    v24 = 0;
  }

  v28 = sub_22911B8DC();
  (*(*(v28 - 8) + 56))(v7, v24, 1, v28);
  sub_2289DF330(v7, &v2[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_sourceId], &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v29 = [*&v2[v14] lapCount];
  *&v2[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_lapCount] = v29;
  v30 = [*&v2[v14] segment];
  *&v2[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_segment] = v30;
  [*&v2[v14] distance];
  *&v2[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_distance] = v31;
  v32 = [*&v2[v14] strokeCount];
  *&v2[OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_strokeCount] = v32;
  v33 = type metadata accessor for HDCMSwimData(0);
  v35.receiver = v2;
  v35.super_class = v33;
  return objc_msgSendSuper2(&v35, sel_init);
}

uint64_t sub_2289DF21C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2289DED0C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2289DF288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2289DED0C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2289DF2E4()
{
  result = qword_27D8632C0;
  if (!qword_27D8632C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8632C0);
  }

  return result;
}

uint64_t sub_2289DF330(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2289DED0C(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2289DF3B0@<X0>(uint64_t a1@<X8>)
{
  sub_2289DF604(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 record];
  v7 = [v6 recordID];

  v8 = [v7 recordName];
  sub_22911C35C();

  sub_22911C06C();
  v9 = [v1 record];
  v10 = [v9 modificationDate];

  if (v10)
  {
    sub_22911B86C();

    v11 = sub_22911B88C();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  }

  else
  {
    v12 = sub_22911B88C();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  }

  sub_2289DF65C(0);
  v14 = *(v13 + 64);
  sub_2289BE454(v5, a1 + *(v13 + 48));
  *(a1 + v14) = [v1 schemaVersion];
  v15 = *MEMORY[0x277CCB478];
  v16 = sub_22911BF0C();
  return (*(*(v16 - 8) + 104))(a1, v15, v16);
}

void sub_2289DF604(uint64_t a1)
{
  if (!qword_27D862B48)
  {
    sub_22911B88C();
    v1 = sub_22911C6CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D862B48);
    }
  }
}

void sub_2289DF65C(uint64_t a1)
{
  if (!qword_27D8632C8)
  {
    sub_22911C07C();
    sub_2289DF604(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D8632C8);
    }
  }
}

BOOL static HDDaemon.isUnitTesting()()
{
  v0 = sub_22911C34C();
  v1 = NSClassFromString(v0);

  return v1 != 0;
}

uint64_t sub_2289DF830(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id HDDatabaseAvailabilityCondition.init(_:loggingCategory:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDatabase:a1 loggingCategory:a2];

  return v4;
}

{
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR___HDDatabaseAvailabilityCondition_callback];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v2[OBJC_IVAR___HDDatabaseAvailabilityCondition_waitingStartTime] = 0;
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR___HDDatabaseAvailabilityCondition_loggingCategory] = a2;
  v9.receiver = v2;
  v9.super_class = HDDatabaseAvailabilityCondition;
  v6 = a2;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [a1 addProtectedDataObserver_];

  return v7;
}

void HDDatabaseAvailabilityCondition.setReadyCallback(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = [v2 db];
  if (v5 && (v6 = v5, v7 = [v5 isProtectedDataAvailable], v6, v7))
  {
    a1(1);
  }

  else
  {
    v8 = [objc_opt_self() now];
    if (v8)
    {
      v9 = v8;
      [v2 setWaitingStartTime_];

      v11[4] = a1;
      v11[5] = a2;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 1107296256;
      v11[2] = sub_2289DF830;
      v11[3] = &block_descriptor_8;
      v10 = _Block_copy(v11);

      [v2 setCallback_];
      _Block_release(v10);
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Bool __swiftcall HDDatabaseAvailabilityCondition.isConditionMet()()
{
  v1 = [v0 db];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 isProtectedDataAvailable];

  return v3;
}

id HDDatabaseAvailabilityCondition.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_2289DFF5C(char a1)
{
  v2 = v1;
  v4 = sub_22911B95C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22911B88C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v28 - v14;
  if (a1)
  {
    v16 = [v2 callback];
    if (v16)
    {
      v17 = v16;
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      v19 = swift_allocObject();
      *(v19 + 16) = sub_2289E057C;
      *(v19 + 24) = v18;
      [v2 setCallback_];
      sub_22911B87C();
      v20 = [v2 waitingStartTime];
      [v2 setWaitingStartTime_];
      if (v20)
      {
        sub_22911B86C();

        sub_22911B82C();
        v22 = v21;
        v23 = *(v9 + 8);
        v23(v12, v8);
        v23(v15, v8);
        v24 = [v2 loggingCategory];
        sub_22911B96C();
        v25 = sub_22911B94C();
        v26 = sub_22911C5DC();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 134349056;
          *(v27 + 4) = v22;
          _os_log_impl(&dword_228986000, v25, v26, "Database became available, took %{public}f", v27, 0xCu);
          MEMORY[0x22AAC9830](v27, -1, -1);
        }

        (*(v5 + 8))(v7, v4);
        (*(v19 + 16))(1);
        return sub_2289ACBE4(sub_2289E0540, v19);
      }

      else
      {
        result = sub_2289ACBE4(sub_2289E0540, v19);
        __break(1u);
      }
    }

    else
    {

      return [v2 setCallback_];
    }
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for HDDatabaseAvailabilityCondition()
{
  result = qword_27D8633B8;
  if (!qword_27D8633B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8633B8);
  }

  return result;
}

void sub_2289E0368(void *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = [a1 db];
  if (v5 && (v6 = v5, v7 = [v5 isProtectedDataAvailable], v6, (v7 & 1) != 0))
  {
    a2[2](a2, 1);
  }

  else
  {
    v8 = [objc_opt_self() now];
    if (v8)
    {
      v9 = v8;
      [a1 setWaitingStartTime_];

      v11[4] = sub_2289E0528;
      v11[5] = v4;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 1107296256;
      v11[2] = sub_2289DF830;
      v11[3] = &block_descriptor_5_0;
      v10 = _Block_copy(v11);

      [a1 setCallback_];
      _Block_release(v10);
    }

    else
    {
      _Block_release(a2);
      __break(1u);
    }
  }
}

uint64_t static QueryTaskServer.taskIdentifier.getter(uint64_t a1, uint64_t a2)
{
  sub_22911BE1C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = sub_22911C35C();

  return v4;
}

void QueryTaskServer.remote_query(encodedQueryDescriptor:completion:)(void *a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  sub_2289E09FC(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v4 profile];
  if (v11)
  {
    v12 = v11;
    v13 = sub_22911C4EC();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a1;
    v14[5] = v12;
    v14[6] = a2;
    v14[7] = a3;
    v15 = a1;

    sub_2289E126C(0, 0, v10, &unk_229164F48, v14);
  }

  else
  {
    v16 = sub_22911C0CC();
    sub_2289E1BCC(&qword_27D8633C0, MEMORY[0x277CCB548], MEMORY[0x277CCB550]);
    v17 = swift_allocError();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277CCB538], v16);
    a2(0, v17);
  }
}

void sub_2289E09FC(uint64_t a1)
{
  if (!qword_27D8630E8)
  {
    sub_22911C4EC();
    v1 = sub_22911C6CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8630E8);
    }
  }
}

uint64_t sub_2289E0A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = sub_22911C1AC();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2289E0B18, 0, 0);
}

uint64_t sub_2289E0B18()
{
  v1 = MEMORY[0x277CCB5E0];
  sub_2289E1BCC(&qword_27D8633C8, MEMORY[0x277CCB5E0], MEMORY[0x277CCB5F0]);
  sub_2289E1BCC(&qword_27D8633D0, v1, MEMORY[0x277CCB5E8]);
  sub_22911C0FC();
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_2289E0CBC;
  v3 = *(v0 + 56);

  return sub_2289E2214(v0 + 16, v3);
}

uint64_t sub_2289E0CBC()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2289E0F78, 0, 0);
  }

  else
  {
    *(v2 + 32) = *(v2 + 16);
    v3 = swift_task_alloc();
    *(v2 + 120) = v3;
    *v3 = v2;
    v3[1] = sub_2289E0E34;

    return sub_2289E4550((v2 + 32));
  }
}

uint64_t sub_2289E0E34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {

    v5 = sub_2289E10E8;
  }

  else
  {
    *(v4 + 136) = a1;

    v5 = sub_2289E1028;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2289E0F78()
{
  v1 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  v2 = v0[8];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2289E1028()
{
  v1 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v1;
  v5(v1, 0);

  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2289E10E8()
{
  v1 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  v2 = v0[8];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2289E1198(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2289D0EDC;

  return sub_2289E0A54(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2289E126C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2289E09FC(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289E199C(a3, v11);
  v12 = sub_22911C4EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2289E1A00(v11);
  }

  else
  {
    sub_22911C4DC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22911C4CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22911C3BC() + 32;
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

      sub_2289E1A00(a3);

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

  sub_2289E1A00(a3);
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

id QueryTaskServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2289E160C(void *a1, void *a2, void (**a3)(void, void, void))
{
  sub_2289E09FC(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  _Block_copy(a3);
  v10 = [a2 profile];
  if (v10)
  {
    v11 = v10;
    v12 = sub_22911C4EC();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a1;
    v13[5] = v11;
    v13[6] = sub_2289CBE08;
    v13[7] = v9;
    v14 = a1;

    sub_2289E126C(0, 0, v8, &unk_229164F78, v13);
  }

  else
  {
    v16 = sub_22911C0CC();
    sub_2289E1BCC(&qword_27D8633C0, MEMORY[0x277CCB548], MEMORY[0x277CCB550]);
    v17 = swift_allocError();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277CCB538], v16);
    v19 = sub_22911B7EC();
    (a3)[2](a3, 0, v19);
  }
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2289E18C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2289CFF80;

  return sub_2289E0A54(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2289E199C(uint64_t a1, uint64_t a2)
{
  sub_2289E09FC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2289E1A00(uint64_t a1)
{
  sub_2289E09FC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2289E1A5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2289D0EDC;

  return sub_2289D03A4(a1, v4);
}

uint64_t sub_2289E1B14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2289CFF80;

  return sub_2289D03A4(a1, v4);
}

uint64_t sub_2289E1BCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2289E1C14@<X0>(void *a1@<X8>)
{
  result = [type metadata accessor for HDHRIntroSnapshotEntity() defaultForeignKey];
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000229183BA0;
  a1[2] = 0xD000000000000011;
  a1[3] = 0x8000000229183420;
  a1[4] = result;
  return result;
}

id HDHRIntroSnapshotMEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRIntroSnapshotMEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRIntroSnapshotMEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRIntroSnapshotMEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRIntroSnapshotMEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRIntroSnapshotMEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRIntroSnapshotMEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRIntroSnapshotMEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t EncodedQueryDescriptor.evaluate(in:)(uint64_t a1)
{
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v2 + 56) = v4;
  *v4 = v2;
  v4[1] = sub_2289E1F00;

  return sub_2289E2214(v2 + 16, a1);
}

uint64_t sub_2289E1F00()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2289E21E4, 0, 0);
  }

  else
  {
    *(v2 + 32) = *(v2 + 16);
    v3 = swift_task_alloc();
    *(v2 + 72) = v3;
    *v3 = v2;
    v3[1] = sub_2289E2078;

    return sub_2289E4550((v2 + 32));
  }
}

uint64_t sub_2289E2078(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2289E21FC, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_2289E2214(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = sub_22911B9CC();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  v5 = sub_22911C0DC();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v6 = sub_22911C1AC();
  v3[40] = v6;
  v3[41] = *(v6 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2289E23FC, 0, 0);
}

uint64_t sub_2289E23FC()
{
  v1 = v0[46];
  v2 = v0[40];
  v3 = v0[41];
  v4 = *(v3 + 16);
  v4(v1, v0[28], v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == *MEMORY[0x277CCB5D0])
  {
    v6 = v0[46];
    v7 = v0[39];
    v8 = v0[32];
    v9 = v0[33];
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[29];
    (*(v0[41] + 96))(v6, v0[40]);
    sub_2289E4F54(0);
    v14 = *(v13 + 48);
    v15 = *(v9 + 32);
    v0[47] = v15;
    v0[48] = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v15(v7, v6, v8);
    (*(v11 + 32))(v10, v6 + v14, v12);
    EvaluatableType(for:)(v7, (v0 + 12));
    v38 = v0[15];
    v37 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v38);
    v39 = swift_task_alloc();
    v0[49] = v39;
    *v39 = v0;
    v39[1] = sub_2289E2964;
    v40 = v0[31];
    v41 = v0[27];

    return TypeEvaluatableInProfile.tryEvaluateErased(configuration:in:)((v0 + 25), v40, v41, v38, v37);
  }

  if (v5 == *MEMORY[0x277CCB5C8])
  {
    v16 = v0[45];
    v17 = v0[46];
    v18 = v0[44];
    v19 = v0[40];
    (*(v0[41] + 96))(v17, v19);
    v0[51] = *v17;
    sub_2289E4FC4(0);
    v21 = v20;
    v22 = swift_projectBox();
    v23 = *(v21 + 48);
    v4(v16, v22, v19);
    v4(v18, v22 + v23, v19);
    v24 = swift_task_alloc();
    v0[52] = v24;
    *v24 = v0;
    v24[1] = sub_2289E2C3C;
    v25 = v0[27];
    v26 = (v0 + 21);
LABEL_7:

    return sub_2289E2214(v26, v25);
  }

  if (v5 == *MEMORY[0x277CCB5D8])
  {
    v27 = v0[46];
    v29 = v0[42];
    v28 = v0[43];
    v30 = v0[40];
    (*(v0[41] + 96))(v27, v30);
    v0[58] = *v27;
    sub_2289E4FC4(0);
    v32 = v31;
    v33 = swift_projectBox();
    v34 = *(v32 + 48);
    v4(v28, v33, v30);
    v4(v29, v33 + v34, v30);
    v35 = swift_task_alloc();
    v0[59] = v35;
    *v35 = v0;
    v35[1] = sub_2289E360C;
    v25 = v0[27];
    v26 = (v0 + 17);
    goto LABEL_7;
  }

  v42 = v0[46];
  v44 = v0[40];
  v43 = v0[41];
  v45 = sub_22911C0CC();
  sub_2289E5294(&qword_27D8633C0, MEMORY[0x277CCB548], MEMORY[0x277CCB550]);
  swift_allocError();
  (*(*(v45 - 8) + 104))(v46, *MEMORY[0x277CCB538], v45);
  swift_willThrow();
  (*(v43 + 8))(v42, v44);

  v47 = v0[1];

  return v47();
}

uint64_t sub_2289E2964()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_2289E3EF8;
  }

  else
  {
    v2 = sub_2289E2A78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2289E2A78()
{
  v13 = v0[47];
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[30];
  v12 = v0[31];
  v6 = v0[29];
  v7 = v0[26];
  v14 = v0[25];
  (*(v4 + 16))(v1, v2, v3);
  sub_2289E523C(0);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_229163C40;
  v13(v9 + v8, v1, v3);
  (*(v5 + 8))(v12, v6);
  (*(v4 + 8))(v2, v3);
  *v7 = v14;
  v7[1] = v9;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2289E2C3C()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_2289E4038;
  }

  else
  {
    v2 = sub_2289E2D50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2289E2D50()
{
  *(v0 + 432) = *(v0 + 168);
  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  *v1 = v0;
  v1[1] = sub_2289E2DF4;
  v2 = *(v0 + 216);

  return sub_2289E2214(v0 + 184, v2);
}

uint64_t sub_2289E2DF4()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_2289E4174;
  }

  else
  {
    v2 = sub_2289E2F08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2289E2F08()
{
  v51 = v0;
  v1 = v0[55];
  v2 = v0[23];
  if (*(v1 + 16) != 1)
  {
    v14 = v0[44];
    v15 = v0[45];
    v17 = v0[40];
    v16 = v0[41];
    v18 = sub_22911C0CC();
    sub_2289E5294(&qword_27D8633C0, MEMORY[0x277CCB548], MEMORY[0x277CCB550]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277CCB540], v18);
    swift_willThrow();

    v20 = *(v16 + 8);
    v20(v14, v17);
    v20(v15, v17);

LABEL_10:

    goto LABEL_11;
  }

  if ((sub_2289E5028(v0[55], v0[24]) & 1) == 0)
  {
    v22 = v0[44];
    v21 = v0[45];
    v24 = v0[40];
    v23 = v0[41];
    v25 = sub_22911C0CC();
    sub_2289E5294(&qword_27D8633C0, MEMORY[0x277CCB548], MEMORY[0x277CCB550]);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277CCB540], v25);
    swift_willThrow();
    v27 = *(v23 + 8);
    v27(v22, v24);
    v27(v21, v24);

LABEL_9:

    goto LABEL_10;
  }

  if (!*(v1 + 16))
  {
    v28 = v0[44];
    v29 = v0[45];
    v31 = v0[40];
    v30 = v0[41];
    v32 = sub_22911C0CC();
    sub_2289E5294(&qword_27D8633C0, MEMORY[0x277CCB548], MEMORY[0x277CCB550]);
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277CCB540], v32);
    swift_willThrow();

    v34 = *(v30 + 8);
    v34(v28, v31);
    v34(v29, v31);
    goto LABEL_9;
  }

  v3 = v0[57];
  v4 = v0[36];
  v5 = v0[37];
  v6 = v0[32];
  v7 = v0[33];
  (*(v7 + 16))(v4, v0[55] + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
  (*(v7 + 32))(v5, v4, v6);
  EvaluatableType(for:)(v5, (v0 + 7));
  if (v3)
  {
    v47 = v0[45];
    v46 = v0[44];
    v9 = v0[40];
    v8 = v0[41];
    v10 = v0[37];
    v11 = v0[32];
    v12 = v0[33];

    (*(v12 + 8))(v10, v11);
    v13 = *(v8 + 8);
    v13(v46, v9);
    v13(v47, v9);
LABEL_11:

    v35 = v0[1];
    goto LABEL_12;
  }

  v37 = v0[54];
  (*(v0[33] + 8))(v0[37], v0[32]);
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v49 = v37;
  v50 = v2;

  TypeEvaluatableInProfile.concatenate(m1:m2:)(&v49, &v50, &v48);
  v38 = v0[55];
  v40 = v0[44];
  v39 = v0[45];
  v41 = v0[40];
  v42 = (v0[41] + 8);
  v43 = v0[26];

  v44 = *v42;
  (*v42)(v40, v41);
  v44(v39, v41);
  v45 = v48;

  *v43 = v45;
  v43[1] = v38;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v35 = v0[1];
LABEL_12:

  return v35();
}

uint64_t sub_2289E360C()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_2289E42C4;
  }

  else
  {
    v2 = sub_2289E3720;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2289E3720()
{
  *(v0 + 488) = *(v0 + 136);
  v1 = swift_task_alloc();
  *(v0 + 504) = v1;
  *v1 = v0;
  v1[1] = sub_2289E37C8;
  v2 = *(v0 + 216);

  return sub_2289E2214(v0 + 152, v2);
}

uint64_t sub_2289E37C8()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_2289E4400;
  }

  else
  {
    v2 = sub_2289E38DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2289E38DC()
{
  v46 = v0;
  v2 = v0[19];
  v1 = v0[20];
  if (*(v0[62] + 16) != 1)
  {
    v15 = v0[42];
    v16 = v0[43];
    v18 = v0[40];
    v17 = v0[41];
    v19 = sub_22911C0CC();
    sub_2289E5294(&qword_27D8633C0, MEMORY[0x277CCB548], MEMORY[0x277CCB550]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277CCB540], v19);
    swift_willThrow();

    v21 = *(v17 + 8);
    v21(v15, v18);
    v21(v16, v18);

LABEL_7:

    goto LABEL_8;
  }

  if (*(v1 + 16) != 1)
  {
    v22 = v0[42];
    v23 = v0[43];
    v25 = v0[40];
    v24 = v0[41];
    v26 = sub_22911C0CC();
    sub_2289E5294(&qword_27D8633C0, MEMORY[0x277CCB548], MEMORY[0x277CCB550]);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277CCB540], v26);
    swift_willThrow();

    v28 = *(v24 + 8);
    v28(v22, v25);
    v28(v23, v25);

    goto LABEL_7;
  }

  v3 = v0[64];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[32];
  v7 = v0[33];
  (*(v7 + 16))(v4, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
  (*(v7 + 32))(v5, v4, v6);
  EvaluatableType(for:)(v5, (v0 + 2));
  if (v3)
  {
    v8 = v0[42];
    v40 = v0[43];
    v10 = v0[40];
    v9 = v0[41];
    v11 = v0[35];
    v13 = v0[32];
    v12 = v0[33];

    (*(v12 + 8))(v11, v13);
    v14 = *(v9 + 8);
    v14(v8, v10);
    v14(v40, v10);
LABEL_8:

    v29 = v0[1];
    goto LABEL_9;
  }

  v31 = v0[61];
  (*(v0[33] + 8))(v0[35], v0[32]);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v44 = v2;
  v45 = v31;

  TypeEvaluatableInProfile.merge(mine:other:)(&v44, &v45, &v43);
  v32 = v0[62];
  v42 = v0[43];
  v41 = v0[42];
  v34 = v0[40];
  v33 = v0[41];
  v35 = v0[26];

  v36 = v43;
  v45 = v32;

  sub_228A100D4(v37);

  v38 = *(v33 + 8);
  v38(v41, v34);
  v38(v42, v34);
  v39 = v45;
  *v35 = v36;
  v35[1] = v39;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v29 = v0[1];
LABEL_9:

  return v29();
}

uint64_t sub_2289E3EF8()
{
  v1 = v0[39];
  v2 = v0[32];
  v3 = v0[33];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2289E4038()
{
  v1 = v0[45];
  v2 = v0[40];
  v3 = *(v0[41] + 8);
  v3(v0[44], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2289E4174()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[40];
  v4 = v0[41];

  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2289E42C4()
{
  v1 = v0[43];
  v2 = v0[40];
  v3 = *(v0[41] + 8);
  v3(v0[42], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2289E4400()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[40];
  v4 = v0[41];

  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2289E4550(_OWORD *a1)
{
  *(v2 + 136) = v1;
  v4 = sub_22911C0DC();
  *(v2 + 144) = v4;
  *(v2 + 152) = *(v4 - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  v5 = sub_22911C1AC();
  *(v2 + 200) = v5;
  *(v2 + 208) = *(v5 - 8);
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = *a1;

  return MEMORY[0x2822009F8](sub_2289E46A8, 0, 0);
}

uint64_t sub_2289E46A8()
{
  v51 = v0;
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0 + 25;
  v3 = v0[25];
  (*(v2 + 16))(v1, v0[17], v3);
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == *MEMORY[0x277CCB5D0])
  {
    v6 = v0[27];
    (*(v0[26] + 96))(v6, v0[25]);
    sub_2289E4F54(0);
    v8 = *(v7 + 48);
    v9 = sub_22911B9CC();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
    v10 = v0 + 19;
    v4 = v0 + 18;
    goto LABEL_5;
  }

  if (v5 == *MEMORY[0x277CCB5C8])
  {
    v10 = v0 + 26;
LABEL_5:
    v11 = v0[29];
    (*(*v10 + 8))(v0[27], *v4);
    if (*(v11 + 16) == 1)
    {
      v12 = v0 + 12;
      v13 = v0[23];
      v14 = v0[24];
      v15 = v0[18];
      v16 = v0[19];
      (*(v16 + 16))(v13, v0[29] + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v15);
      (*(v16 + 32))(v14, v13, v15);
      SerializableModelType(for:)(v14, v0 + 12);
      v24 = v0[28];
      (*(v0[19] + 8))(v0[24], v0[18]);
      v25 = v0[15];
      v26 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v25);
      *&v47 = v24;
      v27 = *(v26 + 16);

      v27(v50, &v47, v25, v26);

      v34 = (*(*v50[0] + 96))(v28);

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v5 != *MEMORY[0x277CCB5D8])
  {
    v30 = v0[26];
    v29 = v0[27];
    v31 = v0[25];
    v32 = sub_22911C0CC();
    sub_2289E5294(&qword_27D8633C0, MEMORY[0x277CCB548], MEMORY[0x277CCB550]);
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277CCB538], v32);
    swift_willThrow();
    (*(v30 + 8))(v29, v31);
    goto LABEL_13;
  }

  v17 = v0[29];
  (*(v0[26] + 8))(v0[27], v0[25]);
  if (*(v17 + 16) == 2)
  {
    v12 = v0 + 2;
    v18 = v0[21];
    v19 = v0[22];
    v20 = v0[18];
    v21 = v0[19];
    (*(v21 + 16))(v18, v0[29] + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v20);
    (*(v21 + 32))(v19, v18, v20);
    SerializableModelType(for:)(v19, v0 + 2);
    v37 = v0[20];
    v38 = *(v0[19] + 8);
    v46 = *(v0 + 14);
    v38(v0[22], v0[18]);
    v47 = v46;
    sub_2289E4E24(v37);
    SerializableModelType(for:)(v0[20], v0 + 7);
    v40 = v0[28];
    v38(v0[20], v0[18]);
    v45 = v0[11];
    *&v46 = v0[10];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v46);
    v49 = v40;
    v42 = v0[5];
    v41 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v42);
    *&v47 = v40;
    v43 = *(v41 + 16);
    swift_retain_n();
    v43(v50, &v47, v42, v41);

    *&v47 = v50[0];
    (*(v45 + 24))(&v48, &v49, &v47, v46);

    v34 = (*(*v48 + 96))(v44);

    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
LABEL_12:
    __swift_destroy_boxed_opaque_existential_0(v12);

    v39 = v0[1];

    return v39(v34);
  }

LABEL_10:
  v22 = sub_22911C0CC();
  sub_2289E5294(&qword_27D8633C0, MEMORY[0x277CCB548], MEMORY[0x277CCB550]);
  swift_allocError();
  (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277CCB540], v22);
  swift_willThrow();
LABEL_13:

  v35 = v0[1];

  return v35();
}

uint64_t sub_2289E4E24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  if (*(v3 + 16) >= 2uLL)
  {
    v7 = sub_22911C0DC();
    return (*(*(v7 - 8) + 16))(a1, v3 + *(*(v7 - 8) + 72) + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)), v7);
  }

  else
  {
    v4 = sub_22911C0CC();
    sub_2289E5294(&qword_27D8633C0, MEMORY[0x277CCB548], MEMORY[0x277CCB550]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277CCB540], v4);
    return swift_willThrow();
  }
}

void sub_2289E4F54(uint64_t a1)
{
  if (!qword_27D8633D8)
  {
    sub_22911C0DC();
    sub_22911B9CC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8633D8);
    }
  }
}

void sub_2289E4FC4(uint64_t a1)
{
  if (!qword_27D8633E0)
  {
    sub_22911C1AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8633E0);
    }
  }
}

uint64_t sub_2289E5028(uint64_t a1, uint64_t a2)
{
  v4 = sub_22911C0DC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_2289E5294(&qword_27D862AA0, MEMORY[0x277CCB558], MEMORY[0x277CCB568]);
    v21 = sub_22911C33C();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

void sub_2289E523C(uint64_t a1)
{
  if (!qword_27D8633E8)
  {
    sub_22911C0DC();
    v1 = sub_22911CABC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8633E8);
    }
  }
}

uint64_t sub_2289E5294(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__CFString *sub_2289E52DC()
{
  v1 = v0;
  sub_2289DF604(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v8 = [v1 type];
  if (v8 == 2)
  {
    v9 = @"Staging";
    v12 = @"Staging";
  }

  else if (v8 == 1)
  {
    v9 = @"DateRange";
    v11 = @"DateRange";
  }

  else if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v8];
  }

  else
  {
    v9 = @"Initial";
    v10 = @"Initial";
  }

  result = v9;
  if (result)
  {
    v14 = result;
    sub_22911C35C();

    v15 = [v1 startDate];
    if (v15)
    {
      v16 = v15;
      sub_22911B86C();

      v17 = sub_22911B88C();
      (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
    }

    else
    {
      v18 = sub_22911B88C();
      (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    }

    v19 = [v1 endDate];
    if (v19)
    {
      v20 = v19;
      sub_22911B86C();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = sub_22911B88C();
    (*(*(v22 - 8) + 56))(v5, v21, 1, v22);
    return sub_22911BF2C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static HDHealthEntity.withReadTransaction<A>(in:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v10 = sub_22911C6CC();
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v27 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v15 = *(a4 - 8);
  (*(v15 + 56))(&v26 - v13, 1, 1, a4);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = v5;
  v17[4] = v14;
  v17[5] = a2;
  v17[6] = a3;
  v18 = swift_allocObject();
  v18[2] = sub_2289E58D8;
  v18[3] = v17;
  aBlock[4] = sub_2289E5A64;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2289E5A90;
  aBlock[3] = &block_descriptor_9;
  v19 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v20 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:a1 error:aBlock block:v19];
  _Block_release(v19);
  v21 = aBlock[0];
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  if (v20)
  {
    v23 = v27;
    v22 = v28;
    v24 = v29;
    (*(v28 + 16))(v27, v14, v29);
    result = (*(v15 + 48))(v23, 1, a4);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v15 + 32))(v26, v23, a4);
      (*(v22 + 8))(v14, v24);
    }
  }

  else
  {
    sub_22911B7FC();

    swift_willThrow();
    (*(v28 + 8))(v14, v29);
  }

  return result;
}

id static HDHealthEntity.database(from:)(void *a1)
{
  result = [a1 databaseForEntityClass_];
  if (!result)
  {
    v3 = objc_opt_self();
    sub_22911C83C();

    v4 = sub_22911CBAC();
    MEMORY[0x22AAC5FC0](v4);

    MEMORY[0x22AAC5FC0](0xD000000000000023, 0x8000000229183C40);
    v5 = [a1 description];
    v6 = sub_22911C35C();
    v8 = v7;

    MEMORY[0x22AAC5FC0](v6, v8);

    v9 = sub_22911C34C();

    [v3 hk:3 error:v9 description:?];

    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t sub_2289E5A90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static HDHealthEntity.withWriteTransaction<A>(in:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v10 = sub_22911C6CC();
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v27 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v15 = *(a4 - 8);
  (*(v15 + 56))(&v26 - v13, 1, 1, a4);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = v5;
  v17[4] = v14;
  v17[5] = a2;
  v17[6] = a3;
  v18 = swift_allocObject();
  v18[2] = sub_2289E6030;
  v18[3] = v17;
  aBlock[4] = sub_2289E6028;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2289E5A90;
  aBlock[3] = &block_descriptor_13;
  v19 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v20 = [ObjCClassFromMetadata performWriteTransactionWithHealthDatabase:a1 error:aBlock block:v19];
  _Block_release(v19);
  v21 = aBlock[0];
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  if (v20)
  {
    v23 = v27;
    v22 = v28;
    v24 = v29;
    (*(v28 + 16))(v27, v14, v29);
    result = (*(v15 + 48))(v23, 1, a4);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v15 + 32))(v26, v23, a4);
      (*(v22 + 8))(v14, v24);
    }
  }

  else
  {
    sub_22911B7FC();

    swift_willThrow();
    (*(v28 + 8))(v14, v29);
  }

  return result;
}

uint64_t sub_2289E5E78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7)
{
  v11 = sub_22911C6CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  v15 = static HDHealthEntity.database(from:)(a1);
  v18 = a4;
  v16 = v15;
  a5();

  (*(*(a7 - 8) + 56))(v14, 0, 1, a7);
  (*(v12 + 40))(v18, v14, v11);
  return 1;
}

void sub_2289E6034(uint64_t *a1@<X8>)
{
  v3 = [v1 codableDeviceKeyValueEntry];
  v4 = [v3 key];

  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = sub_22911C35C();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  v8 = [v1 codableDeviceKeyValueEntry];
  v9 = [v8 value];

  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_2289E61F0(0);
  v10 = sub_22911B81C();
  v12 = v11;

  a1[2] = v10;
  a1[3] = v12;
  v13 = [v1 codableDeviceKeyValueEntry];
  [v13 modificationDate];

  v14 = HDDecodeDateForValue();
  sub_22911B86C();

  v15 = *MEMORY[0x277CCB470];
  v16 = sub_22911BF0C();
  v17 = *(*(v16 - 8) + 104);

  v17(a1, v15, v16);
}

void sub_2289E61F0(uint64_t a1)
{
  if (!qword_27D8633F0)
  {
    sub_22911B88C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D8633F0);
    }
  }
}

uint64_t sub_2289E6264(uint64_t a1)
{
  v3 = sub_22911B8DC();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v43 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = v34 - v6;
  v41 = sub_22911BE7C();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_22911C78C();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v53 = MEMORY[0x277D84F90];
  sub_2289FD348(0, v9 & ~(v9 >> 63), 0);
  v10 = v53;
  if (v45)
  {
    result = sub_22911C73C();
  }

  else
  {
    result = sub_22911C6FC();
    v12 = *(a1 + 36);
  }

  v50 = result;
  v51 = v12;
  v52 = v45 != 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
    v34[1] = v1;
    v13 = 0;
    v39 = v44 + 32;
    v40 = a1;
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v14 = a1;
    }

    v36 = a1 + 56;
    v37 = v14;
    v35 = a1 + 64;
    v38 = v9;
    while (v13 < v9)
    {
      if (__OFADD__(v13++, 1))
      {
        goto LABEL_37;
      }

      v48 = v50;
      v46 = v51;
      v47 = v52;
      sub_2289E6938(v50, v51, v52, a1, &qword_27D862A08, off_27860F5C8);
      v18 = v17;
      v19 = [v17 hardwareIdentifier];
      sub_22911B8CC();

      v20 = [v18 databaseIdentifier];
      sub_22911B8CC();

      v21 = [v18 instanceDiscriminator];
      sub_22911C35C();

      sub_22911BE6C();
      v53 = v10;
      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2289FD348((v22 > 1), v23 + 1, 1);
        v10 = v53;
      }

      *(v10 + 16) = v23 + 1;
      (*(v44 + 32))(v10 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v23, v8, v41);
      if (v45)
      {
        a1 = v40;
        result = v48;
        if (!v47)
        {
          goto LABEL_42;
        }

        if (sub_22911C75C())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v9 = v38;
        sub_2289BE620(0);
        v15 = sub_22911C53C();
        sub_22911C7DC();
        result = v15(v49, 0);
        if (v13 == v9)
        {
LABEL_34:
          sub_2289ACBF4(v50, v51, v52);
          return v10;
        }
      }

      else
      {
        a1 = v40;
        result = v48;
        if (v47)
        {
          goto LABEL_43;
        }

        if ((v48 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        v24 = 1 << *(v40 + 32);
        if (v48 >= v24)
        {
          goto LABEL_38;
        }

        v25 = v48 >> 6;
        v26 = *(v36 + 8 * (v48 >> 6));
        if (((v26 >> v48) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v40 + 36) != v46)
        {
          goto LABEL_40;
        }

        v27 = v26 & (-2 << (v48 & 0x3F));
        if (v27)
        {
          v24 = __clz(__rbit64(v27)) | v48 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v25 << 6;
          v29 = v25 + 1;
          v30 = (v35 + 8 * v25);
          while (v29 < (v24 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              result = sub_2289ACBF4(v48, v46, 0);
              v24 = __clz(__rbit64(v31)) + v28;
              goto LABEL_33;
            }
          }

          result = sub_2289ACBF4(v48, v46, 0);
        }

LABEL_33:
        v33 = *(a1 + 36);
        v50 = v24;
        v51 = v33;
        v52 = 0;
        v9 = v38;
        if (v13 == v38)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_2289E6764@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [*v1 disabledOwnerIdentifiers];
  v5 = sub_22911C51C();

  v6 = [v3 disabledSyncIdentities];
  sub_2289B3D00(0, &qword_27D862A08, off_27860F5C8);
  sub_2289E68A8();
  v7 = sub_22911C51C();

  v8 = sub_2289E6264(v7);

  v9 = sub_2289DCE9C(v8);

  *a1 = v5;
  a1[1] = v9;
  v10 = *MEMORY[0x277CCB4C8];
  v11 = sub_22911BF0C();
  v12 = *(*(v11 - 8) + 104);

  return v12(a1, v10, v11);
}

unint64_t sub_2289E68A8()
{
  result = qword_27D862A18;
  if (!qword_27D862A18)
  {
    sub_2289B3D00(255, &qword_27D862A08, off_27860F5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D862A18);
  }

  return result;
}

void sub_2289E6938(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AAC6370](a1, a2, v11);
      sub_2289B3D00(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_2289B3D00(0, a5, a6);
    if (sub_22911C76C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22911C77C();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_22911C6AC();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_22911C6BC();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

void *sub_2289E6B50(uint64_t a1)
{
  v2 = sub_22911C6FC();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_2289FEE24(&v4, v2, *(a1 + 36), 0, a1);
  }
}

id HDHealthStoreClientAssertions.__deallocating_deinit()
{
  sub_2289E6C60();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHealthStoreClientAssertions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2289E6C60()
{
  v1 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions__dbAssertionLock;
  swift_beginAccess();
  os_unfair_lock_lock((v0 + v1));
  swift_endAccess();
  v2 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions_databaseAccessibilityAssertions;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    [*(*(v3 + 56) + ((v9 << 9) | (8 * v10))) invalidate];
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      swift_beginAccess();
      os_unfair_lock_unlock((v0 + v1));
      swift_endAccess();
      return;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_2289E6E20()
{
  v1 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions__dbAssertionLock;
  swift_beginAccess();
  os_unfair_lock_lock((v0 + v1));
  swift_endAccess();
  swift_beginAccess();

  sub_2289E6B50(v2);
  v4 = v3;
  v6 = v5;

  if (v4)
  {
  }

  else
  {
    v6 = 0;
  }

  swift_beginAccess();
  os_unfair_lock_unlock((v0 + v1));
  swift_endAccess();
  return v6;
}

unint64_t sub_2289E6F3C()
{
  v1 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions__dbAssertionLock;
  swift_beginAccess();
  os_unfair_lock_lock((v0 + v1));
  swift_endAccess();
  v2 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions_databaseAccessibilityAssertions;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_2289E7894(*(v3 + 16), 0);
  v8 = sub_2289E8364(&v9, (v5 + 32), v4, v3);
  v6 = v9;

  sub_2289C8624(v6);
  if (v8 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  os_unfair_lock_unlock((v0 + v1));
  swift_endAccess();
  if ((v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
  {
    if (sub_22911C78C())
    {
      return v5;
    }

    goto LABEL_8;
  }

  if (!*(v5 + 16))
  {
LABEL_8:

    return 0;
  }

  return v5;
}

void *sub_2289E7114(void *a1)
{
  v2 = v1;
  v4 = sub_22911B8DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions__dbAssertionLock;
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v8));
  swift_endAccess();
  v9 = [a1 UUID];
  sub_22911B8CC();

  v10 = sub_22911B8AC();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v13 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions_databaseAccessibilityAssertions;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (*(v14 + 16) && (, v15 = sub_2289AD318(v10, v12), v17 = v16, , (v17 & 1) != 0))
  {
    v18 = *(*(v14 + 56) + 8 * v15);
    v19 = v18;
  }

  else
  {

    v18 = 0;
  }

  swift_beginAccess();
  os_unfair_lock_unlock((v2 + v8));
  swift_endAccess();
  return v18;
}

uint64_t sub_2289E7350(void *a1)
{
  v2 = v1;
  v4 = sub_22911B8DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions__dbAssertionLock;
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v8));
  swift_endAccess();
  v9 = [a1 UUID];
  sub_22911B8CC();

  v10 = sub_22911B8AC();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v13 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions_databaseAccessibilityAssertions;
  swift_beginAccess();
  v14 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v2 + v13);
  *(v2 + v13) = 0x8000000000000000;
  sub_2289B03F0(v14, v10, v12, isUniquelyReferenced_nonNull_native);

  *(v2 + v13) = v17;
  swift_endAccess();
  swift_beginAccess();
  os_unfair_lock_unlock((v2 + v8));
  return swift_endAccess();
}

uint64_t sub_2289E757C(void *a1)
{
  v2 = v1;
  v4 = sub_22911B8DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions__dbAssertionLock;
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v8));
  swift_endAccess();
  v9 = [a1 UUID];
  sub_22911B8CC();

  v10 = sub_22911B8AC();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  v13 = sub_2289E7940(v10, v12, sub_2289B1368);
  swift_endAccess();

  swift_beginAccess();
  os_unfair_lock_unlock((v2 + v8));
  return swift_endAccess();
}

id HDHealthStoreClientAssertions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHealthStoreClientAssertions.init()()
{
  *&v0[OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions__dbAssertionLock] = 0;
  v1 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions_databaseAccessibilityAssertions;
  *&v0[v1] = sub_2289B2A1C(MEMORY[0x277D84F90]);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for HDHealthStoreClientAssertions();
  return objc_msgSendSuper2(&v3, sel_init);
}

void *sub_2289E7894(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_2289C4ACC();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_2289E7940(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = v3;
  v6 = sub_2289AD318(a1, a2);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v13 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v10 = v13;
  }

  v11 = *(*(v10 + 56) + 8 * v8);
  sub_2289E7CEC(v8, v10);
  *v5 = v10;
  return v11;
}

uint64_t sub_2289E79E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2289AD774(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2289B1A44();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = sub_22911C00C();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_2289E7E9C(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = sub_22911C00C();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_2289E7B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2289AD6A0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2289B1CA0();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_22911B8DC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_22911C00C();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_2289E8064(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_22911C00C();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2289E7CEC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22911C70C() + 1) & ~v5;
    do
    {
      sub_22911CB7C();

      sub_22911C3DC();
      v9 = sub_22911CB9C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2289E7E9C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22911C70C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_22911C6AC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v3);
      v16 = (v14 + 8 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(sub_22911C00C() - 8) + 72);
      v19 = v18 * v3;
      v20 = v17 + v18 * v3;
      v21 = v18 * v6;
      v22 = v17 + v18 * v6 + v18;
      if (v19 < v21 || v20 >= v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v21)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

unint64_t sub_2289E8064(int64_t a1, uint64_t a2)
{
  v4 = sub_22911B8DC();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_22911C70C();
    v14 = v12;
    v41 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v42 = *(v15 + 56);
    v39 = (v15 - 8);
    v40 = v16;
    do
    {
      v17 = v9;
      v18 = v42 * v11;
      v19 = v14;
      v20 = v15;
      v40(v8, *(a2 + 48) + v42 * v11, v4);
      sub_2289E8804();
      v21 = sub_22911C2FC();
      result = (*v39)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v41)
      {
        if (v22 >= v41 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          v26 = v25 + v42 * a1;
          v27 = v25 + v18 + v42;
          v28 = v42 * a1 < v18 || v26 >= v27;
          v15 = v20;
          if (v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v42 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = *(a2 + 56);
          v30 = *(*(sub_22911C00C() - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v11;
          v33 = v29 + v30 * v11 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v17;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v35 = v31 == v32;
            v9 = v17;
            v14 = v19;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v41 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_2289E8364(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2289E84B8(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_22911C96C();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_22911CA0C())
      {
        goto LABEL_31;
      }

      sub_2289B3D00(0, &qword_27D862A40, off_27860E1E8);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

unint64_t sub_2289E8804()
{
  result = qword_27D8629D8;
  if (!qword_27D8629D8)
  {
    sub_22911B8DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8629D8);
  }

  return result;
}

uint64_t sub_2289E885C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_22911C58C();
  if (!v19)
  {
    return sub_22911C49C();
  }

  v41 = v19;
  v45 = sub_22911C8FC();
  v32 = sub_22911C90C();
  sub_22911C8AC();
  result = sub_22911C57C();
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
      v22 = sub_22911C5AC();
      v23 = v14;
      v24 = v14;
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
      sub_22911C8EC();
      result = sub_22911C59C();
      ++v21;
      v14 = v24;
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

uint64_t EvaluatableType(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27D862790 != -1)
  {
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  v3 = off_27D863410;
  if (*(off_27D863410 + 2) && (v4 = sub_2289AD464(a1), (v5 & 1) != 0))
  {
    sub_2289ED528(v3[7] + 48 * v4, v14);
    sub_2289B3B00(v14, &v15);
    v13 = v16;
    v6 = v16;
    v7 = __swift_project_boxed_opaque_existential_1(&v15, v16);
    *(a2 + 24) = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v7, v6);
    return __swift_destroy_boxed_opaque_existential_0(&v15);
  }

  else
  {
    v10 = sub_22911C0CC();
    sub_2289EDEB8(&qword_27D8633C0, MEMORY[0x277CCB548], MEMORY[0x277CCB550]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277CCB538], v10);
    return swift_willThrow();
  }
}

uint64_t TypeEvaluatableInProfile.tryEvaluateErased(configuration:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[9] = AssociatedTypeWitness;
  v6[10] = *(AssociatedTypeWitness - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2289E8F14, 0, 0);
}

uint64_t sub_2289E8F14()
{
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_22911B9BC();
  v7 = (*(v0[6] + 16) + **(v0[6] + 16));
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_2289E90F8;
  v2 = v0[11];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[5];

  return v7(v2, v4, v5, v3);
}

uint64_t sub_2289E90F8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_2289E92F8;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_2289E9220;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2289E9220()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnyModel.ArrayBox(0, AssociatedTypeWitness, v7, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *v5 = v9;
  (*(v3 + 8))(v2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2289E92F8()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t TypeEvaluatableInProfile.concatenate(m1:m2:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*v6 + 88))();
  if (!v4)
  {
    (*(*v7 + 88))(AssociatedTypeWitness);
    v10 = sub_22911C48C();

    type metadata accessor for AnyModel.ArrayBox(0, AssociatedTypeWitness, v11, v12);
    result = swift_allocObject();
    *(result + 16) = v10;
    *a4 = result;
  }

  return result;
}

uint64_t TypeEvaluatableInProfile.merge(mine:other:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_getAssociatedTypeWitness();
  result = (*(*v6 + 88))();
  if (!v4)
  {
    *a4 = (*(*v7 + 80))();
  }

  return result;
}

uint64_t SerializableModelType(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_27D862790 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v3 = off_27D863410;
  if (*(off_27D863410 + 2) && (v4 = sub_2289AD464(a1), (v5 & 1) != 0))
  {
    sub_2289ED528(v3[7] + 48 * v4, v14);
    sub_2289B3B00(v14, &v15);
    v6 = v16;
    v7 = v17;
    v8 = __swift_project_boxed_opaque_existential_1(&v15, v16);
    a2[3] = v6;
    a2[4] = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v8, v6);
    return __swift_destroy_boxed_opaque_existential_0(&v15);
  }

  else
  {
    v11 = sub_22911C0CC();
    sub_2289EDEB8(&qword_27D8633C0, MEMORY[0x277CCB548], MEMORY[0x277CCB550]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277CCB538], v11);
    return swift_willThrow();
  }
}

void *sub_2289E9750()
{
  result = sub_2289B27F8(MEMORY[0x277D84F90]);
  off_27D863410 = result;
  return result;
}

uint64_t TypeCast<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_22911C6CC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  MEMORY[0x28223BE20](v10);
  (*(v14 + 16))(v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v15 = swift_dynamicCast();
  v16 = *(*(a3 - 8) + 56);
  if (v15)
  {
    v17 = *(a3 - 8);
    v16(v12, 0, 1, a3);
    return (*(v17 + 32))(a4, v12, a3);
  }

  else
  {
    v16(v12, 1, 1, a3);
    (*(v9 + 8))(v12, v8);
    v19 = sub_22911C0CC();
    sub_2289EDEB8(&qword_27D8633C0, MEMORY[0x277CCB548], MEMORY[0x277CCB550]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277CCB540], v19);
    return swift_willThrow();
  }
}

uint64_t TypeEvaluatableInProfile<>.evaluate(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v5[8] = *(AssociatedTypeWitness - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2289E9B0C, 0, 0);
}

uint64_t sub_2289E9B0C()
{
  v8 = v0[4];
  sub_22911C0EC();
  v7 = (*(v8 + 16) + **(v8 + 16));
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_2289E9C38;
  v2 = v0[9];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return v7(v2, v5, v3, v4);
}

uint64_t sub_2289E9C38(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 88) = v1;

  (*(v4[8] + 8))(v4[9], v4[7]);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2289E9DE8, 0, 0);
  }

  else
  {

    v6 = v5[1];

    return v6(a1);
  }
}

uint64_t sub_2289E9DE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TypeEvaluatableInProfile.tryEvaluateTyped<A, B>(configuration:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v7[11] = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[12] = AssociatedTypeWitness;
  v7[13] = *(AssociatedTypeWitness - 8);
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2289E9F30, 0, 0);
}

uint64_t sub_2289E9F30()
{
  TypeCast<A, B>(_:_:)(v0[4], v0[7], v0[12], v0[14]);
  v7 = (*(v0[9] + 16) + **(v0[9] + 16));
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_2289EA0A4;
  v2 = v0[14];
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[6];

  return v7(v2, v4, v5, v3);
}

uint64_t sub_2289EA0A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_2289EA324;
  }

  else
  {
    v4 = sub_2289EA1B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2289EA1B8()
{
  v0[3] = v0[16];
  v1 = v0[17];
  v2 = sub_22911C4BC();
  swift_getAssociatedTypeWitness();
  v3 = sub_22911C4BC();
  TypeCast<A, B>(_:_:)((v0 + 3), v3, v2, (v0 + 2));
  (*(v0[13] + 8))(v0[14], v0[12]);

  if (v1)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[2];

    v7 = v0[1];

    return v7(v6);
  }
}

uint64_t sub_2289EA324()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t AnyModel.add<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 80))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2289EA44C()
{
  v0 = sub_22911C0CC();
  sub_2289EDEB8(&qword_27D8633C0, MEMORY[0x277CCB548], MEMORY[0x277CCB550]);
  swift_allocError();
  (*(*(v0 - 8) + 104))(v1, *MEMORY[0x277CCB538], v0);
  return swift_willThrow();
}

uint64_t sub_2289EA534(uint64_t a1)
{
  v6 = *(v1 + 16);
  v3 = sub_22911C4BC();
  v4 = sub_22911C4BC();
  result = TypeCast<A, B>(_:_:)(&v6, v4, v3, &v7);
  if (!v2)
  {
    return v7;
  }

  return result;
}

uint64_t sub_2289EA5BC(uint64_t a1)
{
  v6 = *(v1 + 24);
  v3 = sub_22911C4BC();
  v4 = sub_22911C4BC();
  result = TypeCast<A, B>(_:_:)(&v6, v4, v3, &v7);
  if (!v2)
  {
    return v7;
  }

  return result;
}

uint64_t TypeWithSerializableModel<>.wrap(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*v9 + 88))();
  if (!v5)
  {
    v12 = result;
    type metadata accessor for AnyCodableModel.ArrayCodableBox(0, AssociatedTypeWitness, a3, a4);
    result = swift_allocObject();
    *(result + 16) = v12;
    *a5 = result;
  }

  return result;
}

uint64_t AnyCodableModel.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for AnyCodableModel.ArrayCodableBox(0, a2, a3, a4);
  result = swift_allocObject();
  *(result + 16) = a1;
  *a5 = result;
  return result;
}

uint64_t TypeWithSerializableModel<>.wrap(_:partialModel:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a6@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_getAssociatedTypeWitness();
  result = (*(*v8 + 96))();
  if (!v6)
  {
    *a6 = (*(*v9 + 80))();
  }

  return result;
}

uint64_t AnyCodableModel.add<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 80))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

{
  result = (*(**v1 + 88))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t TypeWithSerializableModel<>.wrap(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*v5 + 88))();
  if (!v3)
  {
    v10 = result;
    type metadata accessor for AnyCodableModel.ArrayCodingBox(0, AssociatedTypeWitness, v8, v9);
    result = swift_allocObject();
    *(result + 16) = v10;
    *a3 = result;
  }

  return result;
}

uint64_t sub_2289EA990@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  a2(0);
  result = swift_allocObject();
  *(result + 16) = a1;
  *a3 = result;
  return result;
}

uint64_t TypeWithSerializableModel<>.wrap(_:partialModel:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_getAssociatedTypeWitness();
  result = (*(*v6 + 96))();
  if (!v4)
  {
    *a4 = (*(*v7 + 88))();
  }

  return result;
}

uint64_t sub_2289EAB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v10[0] = *(*v4 + 112);
  v10[1] = a2;
  v11 = *(v6 + 120);
  v12 = a3;
  v13 = a4;
  type metadata accessor for AnyCodableModel.PairCodableCodableBox(0, v10);
  v7 = v4[2];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;

  return v8;
}

uint64_t sub_2289EAC00(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v8[0] = *(*v2 + 112);
  v8[1] = a2;
  v9 = *(v4 + 120);
  type metadata accessor for AnyCodableModel.PairCodableCodingBox(0, v8);
  v5 = v2[2];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;

  return v6;
}

uint64_t sub_2289EACBC()
{
  sub_22911C10C();
  sub_22911C4BC();

  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_22911C11C();
}

uint64_t sub_2289EADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = *(*v4 + 112);
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  type metadata accessor for AnyCodableModel.PairCodingCodableBox(0, v9);
  v6 = v4[2];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;

  return v7;
}

uint64_t sub_2289EAE7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, uint64_t))
{
  a3(0, *(*v3 + 112), a2);
  v5 = v3[2];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;

  return v6;
}

uint64_t sub_2289EAF00()
{
  v2 = *v0;
  v12 = v0[2];
  v10[2] = *(v2 + 112);
  v3 = sub_22911C4BC();
  v4 = sub_22911B9CC();
  v5 = sub_2289BCE8C();

  WitnessTable = swift_getWitnessTable();
  v7 = sub_2289E885C(sub_2289EE06C, v10, v3, v4, v5, WitnessTable, MEMORY[0x277D84950], &v11);

  if (!v1)
  {
    v12 = v7;
    v9 = objc_allocWithZone(sub_22911C10C());
    sub_2289EE08C(0);
    sub_2289EE0E4(&qword_27D863858, &qword_27D863838, MEMORY[0x277CCB2C0], MEMORY[0x277D83978]);
    sub_2289EE0E4(&unk_27D863860, &qword_27D863840, MEMORY[0x277CCB2B8], MEMORY[0x277D83948]);
    return sub_22911C12C();
  }

  return result;
}

uint64_t sub_2289EB0B4(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  result = sub_22911B9DC();
  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t sub_2289EB104()
{
  v0 = sub_22911C2AC();
  MEMORY[0x28223BE20](v0);
  sub_22911C10C();

  sub_22911C29C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_22911C11C();
}

uint64_t sub_2289EB2C0()
{
  v2 = *v0;
  v3 = sub_22911B9CC();
  v4 = *(v2 + 120);
  v5 = sub_22911C2AC();
  MEMORY[0x28223BE20](v5);
  v15[1] = v15 - v6;
  v26[2] = v0[2];
  *&v7 = *(v2 + 112);
  *(&v7 + 1) = v4;
  v16 = *(v2 + 128);
  v18 = v7;
  v19 = v16;
  v8 = sub_22911C4BC();
  v9 = sub_2289BCE8C();

  WitnessTable = swift_getWitnessTable();
  sub_2289E885C(sub_2289EE01C, v17, v8, v3, v9, WitnessTable, MEMORY[0x277D84950], v26);

  if (!v1)
  {
    sub_22911C10C();

    sub_22911C29C();
    v12 = MEMORY[0x277CCB2B0];
    v13 = sub_2289EDEB8(&qword_27D863838, MEMORY[0x277CCB2B0], MEMORY[0x277CCB2C0]);
    v14 = sub_2289EDEB8(&qword_27D863840, v12, MEMORY[0x277CCB2B8]);
    v23 = v13;
    v24 = v14;
    v25 = v16;
    swift_getWitnessTable();
    v20 = v13;
    v21 = v14;
    v22 = v16;
    swift_getWitnessTable();
    return sub_22911C11C();
  }

  return result;
}

uint64_t sub_2289EB584()
{
  v2 = *v0;
  v3 = *v0;
  v4 = sub_22911B9CC();
  v5 = *(v2 + 112);
  v6 = sub_22911C2AC();
  MEMORY[0x28223BE20](v6);
  v16[1] = v16 - v7;
  v27[2] = v0[3];
  *&v8 = v5;
  *(&v8 + 1) = *(v2 + 120);
  v17 = *(v3 + 128);
  v19 = v8;
  v20 = v17;
  v9 = sub_22911C4BC();
  v10 = sub_2289BCE8C();

  WitnessTable = swift_getWitnessTable();
  sub_2289E885C(sub_2289EDFCC, v18, v9, v4, v10, WitnessTable, MEMORY[0x277D84950], v27);

  if (v1)
  {
  }

  sub_22911C10C();
  sub_22911C29C();
  v13 = MEMORY[0x277CCB2B0];
  v14 = sub_2289EDEB8(&qword_27D863838, MEMORY[0x277CCB2B0], MEMORY[0x277CCB2C0]);
  v15 = sub_2289EDEB8(&qword_27D863840, v13, MEMORY[0x277CCB2B8]);
  v24 = v17;
  v25 = v14;
  v26 = v15;
  swift_getWitnessTable();
  v21 = v17;
  v22 = v14;
  v23 = v15;
  swift_getWitnessTable();
  return sub_22911C11C();
}

uint64_t sub_2289EB850()
{
  v1 = *v0;
  sub_2289EDE1C(0);
  v16 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v0[2];
  v5 = *(v1 + 112);
  v21 = v5;
  v6 = *(v1 + 120);
  v22 = v6;
  v7 = sub_22911C4BC();
  v8 = sub_22911B9CC();
  v9 = sub_2289BCE8C();

  WitnessTable = swift_getWitnessTable();
  v17 = v9;
  v18 = v8;
  v11 = v19;
  sub_2289E885C(sub_2289EDE78, v20, v7, v8, v9, WitnessTable, MEMORY[0x277D84950], &v23);

  if (!v11)
  {
    v19 = v4;
    v24 = v0[3];
    MEMORY[0x28223BE20](result);
    *(&v16 - 2) = v5;
    *(&v16 - 1) = v6;
    v13 = sub_22911C4BC();

    v14 = swift_getWitnessTable();
    sub_2289E885C(sub_2289EDE98, (&v16 - 4), v13, v18, v17, v14, MEMORY[0x277D84950], &v23);

    sub_22911C29C();
    v15 = objc_allocWithZone(sub_22911C10C());
    sub_2289EDF00(&qword_27D863830, MEMORY[0x277CCB6E0]);
    sub_2289EDF00(&qword_27D863848, MEMORY[0x277CCB6D8]);
    return sub_22911C12C();
  }

  return result;
}

uint64_t sub_2289EBB34(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  result = sub_22911B9DC();
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_2289EBB84(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  result = sub_22911B9DC();
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_2289EBBD4()
{
}

uint64_t sub_2289EBC04()
{

  return swift_deallocClassInstance();
}

uint64_t BaseQueryDescriptor.evaluate(in:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(a2 + 16);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_22911C0DC();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2289EBD60, 0, 0);
}

uint64_t sub_2289EBD60()
{
  v1 = v0[15];
  sub_22911C16C();
  EvaluatableType(for:)(v1, (v0 + 2));
  v2 = v0[8];
  (*(v0[14] + 8))(v0[15], v0[13]);
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  sub_22911C15C();
  v5 = swift_task_alloc();
  v0[16] = v5;
  v6 = *(v2 + 24);
  *v5 = v0;
  v5[1] = sub_2289EBEEC;
  v7 = v0[12];
  v8 = v0[10];
  v9 = v0[7];

  return TypeEvaluatableInProfile.tryEvaluateTyped<A, B>(configuration:in:)(v7, v9, v3, v8, v6, v4);
}

uint64_t sub_2289EBEEC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v4[17] = v1;

  v6 = (v5 + 8);
  v7 = v4[12];
  v8 = v4[10];
  if (v1)
  {
    (*v6)(v7, v8);
    v9 = sub_2289EC0F8;
  }

  else
  {
    v4[18] = a1;
    (*v6)(v7, v8);
    v9 = sub_2289EC078;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2289EC078()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];
  v2 = v0[18];

  return v1(v2);
}

uint64_t sub_2289EC0F8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2289EC170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2289EC218;

  return BaseQueryDescriptor.evaluate(in:)(a2, a3);
}

uint64_t sub_2289EC218(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t ConcatenateQueryDescriptor<>.evaluate(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v7 = *(a2 + 24);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = *(a2 + 16);
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2289EC448, 0, 0);
}

uint64_t sub_2289EC448()
{
  v7 = v0[6];
  MEMORY[0x22AAC5DA0](v0[5]);
  v6 = (*(v7 + 16) + **(v7 + 16));
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_2289EC574;
  v2 = v0[12];
  v3 = v0[6];
  v4 = v0[4];

  return v6(v0 + 2, v4, v2, v3);
}

uint64_t sub_2289EC574()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2289ECA70;
  }

  else
  {
    v5 = sub_2289EC6E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2289EC6E4()
{
  v8 = v0[7];
  v1 = v0[5];
  v0[17] = v0[2];
  MEMORY[0x22AAC5DB0](v1);
  v7 = (*(v8 + 16) + **(v8 + 16));
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_2289EC818;
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[4];

  return v7(v0 + 3, v5, v3, v4);
}

uint64_t sub_2289EC818()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    v5 = sub_2289ECAE0;
  }

  else
  {
    v5 = sub_2289EC998;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2289EC998()
{
  swift_getAssociatedTypeWitness();
  v1 = sub_22911C48C();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2289ECA70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2289ECAE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2289ECB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = *(a4 - 16);
  v7 = *(a4 - 8);
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_2289EE1A8;

  return ConcatenateQueryDescriptor<>.evaluate(in:)(a2, a3, v7, v8);
}

uint64_t MergeQueryDescriptor<>.evaluate(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v8 = *(a3 + 24);
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v9 = *(a3 + 16);
  v6[13] = v9;
  v6[14] = *(v9 - 8);
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2289ECD2C, 0, 0);
}

uint64_t sub_2289ECD2C()
{
  v7 = v0[7];
  MEMORY[0x22AAC5D40](v0[6]);
  v6 = (*(v7 + 16) + **(v7 + 16));
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_2289ECE58;
  v2 = v0[13];
  v3 = v0[7];
  v4 = v0[5];

  return v6(v0 + 2, v4, v2, v3);
}

uint64_t sub_2289ECE58()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  *(*v1 + 136) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2289ED384;
  }

  else
  {
    v5 = sub_2289ECFC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2289ECFC8()
{
  v8 = v0[8];
  v1 = v0[6];
  v0[18] = v0[2];
  MEMORY[0x22AAC5D50](v1);
  v7 = (*(v8 + 16) + **(v8 + 16));
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_2289ED0FC;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[5];

  return v7(v0 + 3, v5, v3, v4);
}

uint64_t sub_2289ED0FC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 160) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    v5 = sub_2289ED3F4;
  }

  else
  {
    v5 = sub_2289ED27C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2289ED27C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_22911C29C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2289ED384()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2289ED3F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2289ED464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 - 16);
  v8 = *(a4 - 8);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2289CFF80;

  return MergeQueryDescriptor<>.evaluate(in:)(a1, a2, a3, v8, v9);
}

uint64_t sub_2289ED528(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2289ED638(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2289ED674(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2289ED6B0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of TypeEvaluatableInProfile.evaluate(configuration:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2289ED81C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2289ED81C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_2289EDA68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2289EDAB0(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of QueryEvaluatableInProfile.evaluate(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2289CFF80;

  return v11(a1, a2, a3, a4);
}

void sub_2289EDE1C(uint64_t a1)
{
  if (!qword_27D863820)
  {
    sub_22911B9CC();
    v1 = sub_22911C2AC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D863820);
    }
  }
}

uint64_t sub_2289EDEB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2289EDF00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2289EDE1C(255);
    v4 = MEMORY[0x277CCB2B0];
    sub_2289EDEB8(&qword_27D863838, MEMORY[0x277CCB2B0], MEMORY[0x277CCB2C0]);
    sub_2289EDEB8(&qword_27D863840, v4, MEMORY[0x277CCB2B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2289EDFCC(void *a1, void *a2)
{
  swift_unknownObjectRetain();
  result = sub_22911B9DC();
  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

uint64_t sub_2289EE01C(void *a1, void *a2)
{
  swift_unknownObjectRetain();
  result = sub_22911B9DC();
  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

void sub_2289EE08C(uint64_t a1)
{
  if (!qword_27D863850)
  {
    sub_22911B9CC();
    v1 = sub_22911C4BC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D863850);
    }
  }
}

uint64_t sub_2289EE0E4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2289EE08C(255);
    sub_2289EDEB8(a2, MEMORY[0x277CCB2B0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HealthDaemonUUIDSupport.allZeroes.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2289B4304(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B89C();
  v5 = sub_22911B8DC();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

id sub_2289EE2F8@<X0>(void *a1@<X8>)
{
  result = [type metadata accessor for HDHRConstellationSnapshotEntity() defaultForeignKey];
  *a1 = 0xD00000000000001ELL;
  a1[1] = 0x8000000229183E20;
  a1[2] = 0xD000000000000019;
  a1[3] = 0x8000000229183650;
  a1[4] = result;
  return result;
}

id HDHRConstellationSnapshotMEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRConstellationSnapshotMEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRConstellationSnapshotMEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRConstellationSnapshotMEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRConstellationSnapshotMEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRConstellationSnapshotMEntity();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HDHRConstellationSnapshotMEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDHRConstellationSnapshotMEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id HDHRDomainSnapshotEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRDomainSnapshotEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRDomainSnapshotEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRDomainSnapshotEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRDomainSnapshotEntity.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HDHRDomainSnapshotEntity();
  return objc_msgSendSuper2(&v3, sel_init);
}

id HDHRDomainSnapshotEntity.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HDHRDomainSnapshotEntity();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _s12HealthDaemon24HDHRDomainSnapshotEntityC7columnsSaySo014HDSQLiteSchemaE0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v23 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289D173C(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v4 = *(sub_22911C68C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v25 = 2 * *(v4 + 72);
  v6 = swift_allocObject();
  v24 = v6;
  *(v6 + 16) = xmmword_229163C60;
  v22 = v6 + v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD000000000000010;
  *(v7 + 24) = 0x80000002291833C0;
  *v3 = v7;
  v8 = *(v1 + 104);
  v8(v3, *MEMORY[0x277D109D0], v0);
  sub_22911C67C();
  sub_22911C35C();
  sub_2289B5B9C(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  *v12 = 0xD000000000000010;
  *(v12 + 1) = 0x8000000229182120;
  v15 = *MEMORY[0x277D109B8];
  v16 = sub_22911C64C();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  *v3 = v11;
  v17 = v23;
  v8(v3, *MEMORY[0x277D109C8], v23);
  sub_22911C67C();
  v18 = sub_22911C65C();
  v19 = swift_allocBox();
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D109D8], v18);
  *v3 = v19;
  v8(v3, *MEMORY[0x277D109F8], v17);
  sub_22911C67C();
  return v24;
}

id HDHRICCollectionEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRICCollectionEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRICCollectionEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRICCollectionEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRICCollectionEntity.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HDHRICCollectionEntity();
  return objc_msgSendSuper2(&v4, sel_init);
}

id HDHRICCollectionEntity.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HDHRICCollectionEntity();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s12HealthDaemon22HDHRICCollectionEntityC7columnsSaySo014HDSQLiteSchemaD0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289BF1C0(0);
  v27 = *(*(sub_22911C68C() - 8) + 72);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_229164690;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xD000000000000021;
  *(v4 + 24) = 0x80000002291820F0;
  *v3 = v4;
  v5 = *(v1 + 104);
  v6 = v0;
  v5(v3, *MEMORY[0x277D109D0], v0);
  v7 = v1 + 104;
  sub_22911C67C();
  sub_2289EF46C(0, &qword_27D862B90, MEMORY[0x277D109C0]);
  v9 = v8;
  v10 = swift_allocBox();
  v12 = v11;
  v13 = *(v9 + 48);
  strcpy(v11, "BLOB NOT NULL");
  *(v11 + 14) = -4864;
  v14 = *MEMORY[0x277D109B0];
  v15 = sub_22911C64C();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v3 = v10;
  v5(v3, *MEMORY[0x277D109C8], v6);
  v25[0] = v7;
  v16 = v27;
  sub_22911C67C();
  v25[1] = 2 * v16;
  v17 = sub_22911C65C();
  v18 = swift_allocBox();
  v19 = *MEMORY[0x277D109D8];
  v20 = *(*(v17 - 8) + 104);
  v20(v21, v19, v17);
  *v3 = v18;
  v5(v3, *MEMORY[0x277D109F8], v6);
  sub_22911C67C();
  v22 = swift_allocBox();
  v20(v23, v19, v17);
  *v3 = v22;
  v5(v3, *MEMORY[0x277D109E8], v6);
  sub_22911C67C();
  return v26;
}

void sub_2289EF46C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

id HDHRPreviousContentEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRPreviousContentEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRPreviousContentEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRPreviousContentEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRPreviousContentEntity.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HDHRPreviousContentEntity();
  return objc_msgSendSuper2(&v3, sel_init);
}

id HDHRPreviousContentEntity.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HDHRPreviousContentEntity();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _s12HealthDaemon25HDHRPreviousContentEntityC7columnsSaySo014HDSQLiteSchemaE0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v23 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289B5B48(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v4 = *(sub_22911C68C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v25 = 2 * *(v4 + 72);
  v6 = swift_allocObject();
  v24 = v6;
  *(v6 + 16) = xmmword_229163C60;
  v22 = v6 + v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD000000000000021;
  *(v7 + 24) = 0x80000002291820F0;
  *v3 = v7;
  v8 = *(v1 + 104);
  v8(v3, *MEMORY[0x277D109D0], v0);
  sub_22911C67C();
  sub_22911C35C();
  sub_2289B5B9C(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  *v12 = 0xD000000000000010;
  *(v12 + 1) = 0x8000000229182120;
  v15 = *MEMORY[0x277D109B8];
  v16 = sub_22911C64C();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  *v3 = v11;
  v17 = v23;
  v8(v3, *MEMORY[0x277D109C8], v23);
  sub_22911C67C();
  v18 = sub_22911C65C();
  v19 = swift_allocBox();
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D109D8], v18);
  *v3 = v19;
  v8(v3, *MEMORY[0x277D109F0], v17);
  sub_22911C67C();
  return v24;
}

uint64_t static HDHRISnapshotCollectionEntity.properties.getter()
{
  sub_2289B5AD4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_229163C60;
  *(v0 + 32) = 0xD000000000000015;
  *(v0 + 40) = 0x8000000229183F10;
  *(v0 + 48) = sub_22911C35C();
  *(v0 + 56) = v1;
  *(v0 + 64) = 0xD000000000000012;
  *(v0 + 72) = 0x8000000229182750;
  return v0;
}

id HDHRISnapshotCollectionEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID_];
}

id HDHRISnapshotCollectionEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HDHRISnapshotCollectionEntity();
  return objc_msgSendSuper2(&v4, sel_initWithPersistentID_, a1);
}

id HDHRISnapshotCollectionEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDHRISnapshotCollectionEntity.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HDHRISnapshotCollectionEntity();
  return objc_msgSendSuper2(&v3, sel_init);
}

id HDHRISnapshotCollectionEntity.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HDHRISnapshotCollectionEntity();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _s12HealthDaemon29HDHRISnapshotCollectionEntityC7columnsSaySo014HDSQLiteSchemaE0C0aB10FoundationE16ColumnDefinitionVGvgZ_0()
{
  v0 = sub_22911C66C();
  v23 = v0;
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289D173C(0, &qword_27D862B88, MEMORY[0x277D10A20]);
  v4 = *(sub_22911C68C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v25 = 2 * *(v4 + 72);
  v6 = swift_allocObject();
  v24 = v6;
  *(v6 + 16) = xmmword_229163C60;
  v22 = v6 + v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD000000000000010;
  *(v7 + 24) = 0x80000002291833C0;
  *v3 = v7;
  v8 = *(v1 + 104);
  v8(v3, *MEMORY[0x277D109D0], v0);
  sub_22911C67C();
  sub_22911C35C();
  sub_2289B5B9C(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  *v12 = 0xD000000000000010;
  *(v12 + 1) = 0x8000000229182120;
  v15 = *MEMORY[0x277D109B8];
  v16 = sub_22911C64C();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  *v3 = v11;
  v17 = v23;
  v8(v3, *MEMORY[0x277D109C8], v23);
  sub_22911C67C();
  v18 = sub_22911C65C();
  v19 = swift_allocBox();
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D109D8], v18);
  *v3 = v19;
  v8(v3, *MEMORY[0x277D109F8], v17);
  sub_22911C67C();
  return v24;
}

id HDUserNotificationSystemApertureContentDefinitionWrapper.__allocating_init(systemColorName:systemImageName:preventAutomaticDismissal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_allocWithZone(v5);
  v7 = objc_allocWithZone(sub_22911B8FC());
  sub_22911B8EC();
  v8 = objc_allocWithZone(sub_22911B91C());
  *&v6[OBJC_IVAR____TtC12HealthDaemon56HDUserNotificationSystemApertureContentDefinitionWrapper_contentDefinition] = sub_22911B90C();
  v10.receiver = v6;
  v10.super_class = v5;
  return objc_msgSendSuper2(&v10, sel_init);
}

id HDUserNotificationSystemApertureContentDefinitionWrapper.init(systemColorName:systemImageName:preventAutomaticDismissal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_allocWithZone(sub_22911B8FC());
  sub_22911B8EC();
  v7 = objc_allocWithZone(sub_22911B91C());
  *&v5[OBJC_IVAR____TtC12HealthDaemon56HDUserNotificationSystemApertureContentDefinitionWrapper_contentDefinition] = sub_22911B90C();
  v9.receiver = v5;
  v9.super_class = type metadata accessor for HDUserNotificationSystemApertureContentDefinitionWrapper();
  return objc_msgSendSuper2(&v9, sel_init);
}

id HDUserNotificationSystemApertureContentDefinitionWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HDUserNotificationSystemApertureContentDefinitionWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HDUserNotificationSystemApertureContentDefinitionWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2289F0830@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v19[1] = a2;
  v20 = a1;
  v7 = sub_22911BCBC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CCB3B0];
  sub_228A009B8(0, &qword_27D863A08, MEMORY[0x277CCB3B0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v19 - v13;
  sub_228A03E38(v5, v19 - v13, &qword_27D863A08, v11);
  v15 = 1;
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    v16 = a3;
LABEL_5:
    v17 = sub_22911BC5C();
    return (*(*(v17 - 8) + 56))(v16, v15, 1, v17);
  }

  (*(v8 + 32))(v10, v14, v7);
  v16 = a3;
  v20(v10);
  if (!v4)
  {
    (*(v8 + 8))(v10, v7);
    v15 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

void sub_2289F0A84(uint64_t a1)
{
  v28 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22911C78C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    sub_2289FD578(0, v2 & ~(v2 >> 63), 0);
    v29 = v34;
    if (v28)
    {
      v3 = sub_22911C73C();
    }

    else
    {
      v3 = sub_22911C6FC();
      v4 = *(a1 + 36);
    }

    v31 = v3;
    v32 = v4;
    v33 = v28 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v27 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v31;
        v9 = v32;
        v10 = v33;
        sub_2289E6924(v31, v32, v33, a1);
        v12 = v11;
        v13 = [v11 integerValue];

        v14 = v29;
        v34 = v29;
        v16 = *(v29 + 16);
        v15 = *(v29 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_2289FD578((v15 > 1), v16 + 1, 1);
          v14 = v34;
        }

        *(v14 + 16) = v16 + 1;
        *(v14 + 8 * v16 + 32) = v13;
        v29 = v14;
        if (v28)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          if (sub_22911C75C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v27;
          sub_228A039C8(0);
          v6 = sub_22911C53C();
          sub_22911C7DC();
          v6(v30, 0);
          if (v5 == v27)
          {
LABEL_32:
            sub_2289ACBF4(v31, v32, v33);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v17 = 1 << *(a1 + 32);
          if (v8 >= v17)
          {
            goto LABEL_36;
          }

          v18 = v8 >> 6;
          v19 = *(a1 + 56 + 8 * (v8 >> 6));
          if (((v19 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(a1 + 36) != v9)
          {
            goto LABEL_38;
          }

          v20 = v19 & (-2 << (v8 & 0x3F));
          if (v20)
          {
            v17 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v21 = v18 << 6;
            v22 = v18 + 1;
            v23 = (a1 + 64 + 8 * v18);
            while (v22 < (v17 + 63) >> 6)
            {
              v25 = *v23++;
              v24 = v25;
              v21 += 64;
              ++v22;
              if (v25)
              {
                sub_2289ACBF4(v8, v9, 0);
                v17 = __clz(__rbit64(v24)) + v21;
                goto LABEL_31;
              }
            }

            sub_2289ACBF4(v8, v9, 0);
          }

LABEL_31:
          v26 = *(a1 + 36);
          v31 = v17;
          v32 = v26;
          v33 = 0;
          v2 = v27;
          if (v5 == v27)
          {
            goto LABEL_32;
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
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_2289F0DC8(uint64_t a1)
{
  v2 = v1;
  sub_2289B3808(0);
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v47 = MEMORY[0x277D84F90];
  sub_2289FD598(0, v7, 0);
  v8 = v47;
  v9 = a1 + 64;
  v10 = sub_22911C6FC();
  v11 = 0;
  v45 = *(a1 + 36);
  v35 = a1 + 72;
  v36 = v7;
  v37 = a1 + 64;
  v38 = a1;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_28;
    }

    if (v45 != *(a1 + 36))
    {
      goto LABEL_29;
    }

    v41 = v11;
    v42 = 1 << v10;
    v43 = v8;
    v44 = v2;
    v14 = v6;
    v15 = *(*(a1 + 48) + 8 * v10);
    v16 = *(*(a1 + 56) + 8 * v10);
    v17 = v15;

    [v17 entityIdentifier];
    v18 = [v17 schemaIdentifier];
    if (v18)
    {
      v19 = v18;
      sub_22911C35C();
    }

    v6 = v14;
    sub_22911BD3C();

    v20 = v44;
    sub_2289F11FC(v16);
    if (*(v21 + 16))
    {
      sub_2289B37A4(0, &qword_27D862A88, MEMORY[0x277D84460]);
      v22 = sub_22911CA7C();
    }

    else
    {
      v22 = MEMORY[0x277D84F98];
    }

    v46 = v22;

    sub_2289FE324(v23, 1, &v46);
    v2 = v20;
    if (v20)
    {
      goto LABEL_33;
    }

    v24 = *(v40 + 48);

    *&v14[v24] = v46;
    v8 = v43;
    v47 = v43;
    v26 = *(v43 + 16);
    v25 = *(v43 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_2289FD598((v25 > 1), v26 + 1, 1);
      v8 = v47;
    }

    *(v8 + 16) = v26 + 1;
    sub_228A03864(v6, v8 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v26, sub_2289B3808);
    v9 = v37;
    a1 = v38;
    v12 = 1 << *(v38 + 32);
    if (v10 >= v12)
    {
      goto LABEL_30;
    }

    v27 = *(v37 + 8 * v13);
    if ((v27 & v42) == 0)
    {
      goto LABEL_31;
    }

    if (v45 != *(v38 + 36))
    {
      goto LABEL_32;
    }

    v28 = v27 & (-2 << (v10 & 0x3F));
    if (v28)
    {
      v12 = __clz(__rbit64(v28)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v13 << 6;
      v30 = v13 + 1;
      v31 = (v35 + 8 * v13);
      while (v30 < (v12 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          sub_2289ACBF4(v10, v45, 0);
          v12 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      sub_2289ACBF4(v10, v45, 0);
    }

LABEL_4:
    v11 = v41 + 1;
    v10 = v12;
    if (v41 + 1 == v36)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_2289F11FC(uint64_t a1)
{
  v1 = a1;
  v28 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22911C78C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    sub_2289FD5E8(0, v2 & ~(v2 >> 63), 0);
    v29 = v34;
    if (v28)
    {
      v3 = sub_22911C95C();
    }

    else
    {
      v3 = sub_22911C6FC();
      v4 = *(v1 + 36);
    }

    v31 = v3;
    v32 = v4;
    v33 = v28 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v26 = v2;
      v27 = v1;
      while (v5 < v2)
      {
        if (__OFADD__(v5, 1))
        {
          goto LABEL_24;
        }

        v14 = v31;
        v13 = v32;
        v15 = v33;
        sub_2289FEEB4(v30, v31, v32, v33, v1);
        v17 = v16;
        v18 = v30[0];
        v19 = [v16 integerValue];
        v20 = [v18 integerValue];

        v21 = v29;
        v34 = v29;
        v23 = *(v29 + 16);
        v22 = *(v29 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_2289FD5E8((v22 > 1), v23 + 1, 1);
          v21 = v34;
        }

        *(v21 + 16) = v23 + 1;
        v24 = v21 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v20;
        v29 = v21;
        if (v28)
        {
          v1 = v27;
          if (!v15)
          {
            goto LABEL_26;
          }

          if (sub_22911C98C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v26;
          v12 = v5 + 1;
          sub_228A038CC(0, &qword_27D863960, MEMORY[0x277D834A0]);
          v25 = sub_22911C2DC();
          sub_22911CA1C();
          v25(v30, 0);
        }

        else
        {
          v1 = v27;
          sub_2289FECC0(v14, v13, v15, v27);
          v7 = v6;
          v9 = v8;
          v11 = v10;
          sub_2289ACBF4(v14, v13, v15);
          v31 = v7;
          v32 = v9;
          v33 = v11 & 1;
          v2 = v26;
          v12 = v5 + 1;
        }

        ++v5;
        if (v12 == v2)
        {
          sub_2289ACBF4(v31, v32, v33);
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_2289F14CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22911B8DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_228A03F88(&qword_27D8629D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v7 = sub_22911C2FC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_228A03F88(&qword_27D8629E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_22911C33C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_2289F16E4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_22911CB6C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)@<X0>(void *a1@<X0>, id *p_aBlock@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v107 = a3;
  v103 = a4;
  v130 = *MEMORY[0x277D85DE8];
  v6 = sub_22911BDDC();
  v7 = *(v6 - 8);
  v112 = v6;
  v113 = v7;
  MEMORY[0x28223BE20](v6);
  v101 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_22911BD8C();
  v114 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_22911B8DC();
  v10 = MEMORY[0x28223BE20](v118);
  v122 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v121 = v96 - v12;
  v120 = sub_22911BCDC();
  v123 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v119 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_22911BD0C();
  v14 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v16 = v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_opt_self();
  v18 = [v17 deletedSampleSyncEntityClassName];
  v102 = sub_22911C35C();
  v110 = v19;

  v20 = [v17 deletedSampleSyncEntityIdentifier];
  v21 = a1;
  HKDatabase.Pruning.Show.Configuration.init(profile:)(v21);
  v22 = sub_22911B84C();
  aBlock = 0;
  v23 = [v17 activeStoresForMaxAnchorWithProfile:v21 referenceDate:v22 error:&aBlock];

  v24 = aBlock;
  if (!v23)
  {
    v28 = p_aBlock;
    v51 = *(v14 + 8);
    v52 = aBlock;
    v51(v16, v111);

    sub_22911B7FC();

    swift_willThrow();
LABEL_59:

    v93 = sub_22911B88C();
    return (*(*(v93 - 8) + 8))(v28, v93);
  }

  v108 = v14;
  v106 = v16;
  v109 = v20;
  sub_228A03F88(&qword_27D8629D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v25 = sub_22911C51C();
  v26 = v24;

  v27 = sub_22911B84C();
  aBlock = 0;
  v28 = [v17 activeStoresForRestrictionPredicatesWithProfile:v21 referenceDate:v27 error:&aBlock];

  v29 = aBlock;
  if (!v28)
  {
    v28 = p_aBlock;
    v53 = *(v108 + 8);
    v54 = aBlock;
    v53(v106, v111);

LABEL_19:
    sub_22911B7FC();

    swift_willThrow();
    v20 = v109;
    goto LABEL_59;
  }

  v99 = v25;
  v30 = sub_22911C51C();
  v31 = v29;

  aBlock = 0;
  v98 = v17;
  v32 = [v17 syncIdentitiesInProfile:v21 error:&aBlock];
  v33 = aBlock;
  if (!v32)
  {
    v28 = p_aBlock;
    v55 = *(v108 + 8);
    v54 = aBlock;
    v55(v106, v111);

    goto LABEL_19;
  }

  v34 = v32;
  v96[1] = v30;
  sub_2289B3D00(0, &qword_27D863878, off_27860E8D8);
  v35 = sub_22911C45C();
  v36 = v33;

  v37 = v111;
  v38 = v108;
  if (v35 >> 62)
  {
    v39 = sub_22911C78C();
  }

  else
  {
    v39 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v97 = p_aBlock;
  v20 = v109;
  v100 = v21;
  if (v39)
  {
    aBlock = MEMORY[0x277D84F90];
    p_aBlock = &aBlock;
    v40 = sub_2289FD528(0, v39 & ~(v39 >> 63), 0);
    if (v39 < 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v41 = 0;
    v42 = v35;
    v43 = aBlock;
    v115 = v123 + 32;
    v116 = v35 & 0xC000000000000001;
    v117 = v39;
    v118 = v35;
    do
    {
      if (v116)
      {
        v44 = MEMORY[0x22AAC6410](v41, v42);
      }

      else
      {
        v44 = *(v42 + 8 * v41 + 32);
      }

      v45 = v44;
      [v44 persitentID];
      v46 = [v45 hardwareIdentifier];
      sub_22911B8CC();

      v47 = [v45 databaseIdentifier];
      sub_22911B8CC();

      v48 = [v45 instanceDiscriminator];
      sub_22911C35C();

      v21 = v119;
      sub_22911BCCC();

      aBlock = v43;
      v50 = v43[2];
      v49 = v43[3];
      v28 = (v50 + 1);
      if (v50 >= v49 >> 1)
      {
        sub_2289FD528((v49 > 1), v50 + 1, 1);
        v43 = aBlock;
      }

      ++v41;
      v43[2] = v28;
      (*(v123 + 32))(v43 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v50, v21, v120);
      v42 = v118;
    }

    while (v117 != v41);

    p_aBlock = v97;
    v20 = v109;
    v37 = v111;
    v38 = v108;
  }

  else
  {
  }

  if (v107)
  {
    v56 = swift_allocObject();
    *(v56 + 16) = v20;
    v128 = sub_2289FF61C;
    v129 = v56;
    aBlock = MEMORY[0x277D85DD0];
    v125 = 1107296256;
    v126 = sub_2289F93A0;
    v127 = &block_descriptor_6_1;
    v57 = _Block_copy(&aBlock);
    v58 = v20;
  }

  else
  {
    v57 = 0;
  }

  aBlock = 0;
  v59 = [v98 syncStoresInProfile:v100 shouldIncludeEntityIdentifier:v57 error:&aBlock];
  _Block_release(v57);
  v60 = aBlock;
  if (!v59)
  {
    v28 = p_aBlock;
    v74 = *(v38 + 8);
    v75 = aBlock;
    v74(v106, v37);

    sub_22911B7FC();

    swift_willThrow();
LABEL_58:
    v21 = v100;
    goto LABEL_59;
  }

  sub_2289B3D00(0, &qword_27D863880, off_27860E8E0);
  v61 = sub_22911C45C();
  v62 = v60;

  v40 = v61;
  if (v61 >> 62)
  {
LABEL_39:
    v76 = v40;
    v63 = sub_22911C78C();
    v40 = v76;
    if (v63)
    {
      goto LABEL_27;
    }

LABEL_40:

    goto LABEL_41;
  }

  v63 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v63)
  {
    goto LABEL_40;
  }

LABEL_27:
  v64 = v40;
  aBlock = MEMORY[0x277D84F90];
  sub_2289FD4D8(0, v63 & ~(v63 >> 63), 0);
  v123 = v63;
  if (v63 < 0)
  {
    __break(1u);
    goto LABEL_63;
  }

  v65 = 0;
  v66 = aBlock;
  v67 = v64;
  v122 = (v64 & 0xC000000000000001);
  v68 = v105;
  v69 = v104;
  v70 = v64;
  do
  {
    if (v122)
    {
      v71 = MEMORY[0x22AAC6410](v65, v67);
    }

    else
    {
      v71 = *(v67 + 8 * v65 + 32);
    }

    HKDatabase.Pruning.Show.Store.init(store:)(v71);
    aBlock = v66;
    v73 = v66[2];
    v72 = v66[3];
    if (v73 >= v72 >> 1)
    {
      sub_2289FD4D8((v72 > 1), v73 + 1, 1);
      v68 = v105;
      v66 = aBlock;
    }

    ++v65;
    v66[2] = v73 + 1;
    (*(v114 + 32))(v66 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v73, v69, v68);
    v67 = v70;
  }

  while (v123 != v65);

  p_aBlock = v97;
  v37 = v111;
  v38 = v108;
LABEL_41:
  v28 = p_aBlock;
  v77 = sub_22911B84C();
  v78 = v110;
  if (v107)
  {
    v79 = swift_allocObject();
    *(v79 + 16) = v102;
    *(v79 + 24) = v78;
    v128 = sub_2289FF5E4;
    v129 = v79;
    aBlock = MEMORY[0x277D85DD0];
    v125 = 1107296256;
    v126 = sub_2289F93F8;
    v127 = &block_descriptor_10;
    v80 = _Block_copy(&aBlock);
  }

  else
  {

    v80 = 0;
  }

  aBlock = 0;
  v81 = [v98 entitiesInProfile:v100 referenceDate:v77 shouldIncludeEntity:v80 error:&aBlock];
  _Block_release(v80);

  v82 = aBlock;
  if (!v81)
  {
    v91 = *(v38 + 8);
    v92 = aBlock;
    v91(v106, v37);

    sub_22911B7FC();

    swift_willThrow();
    v20 = v109;
    goto LABEL_58;
  }

  sub_2289B3D00(0, &qword_27D863888, off_27860E8C8);
  v21 = sub_22911C45C();
  v83 = v82;

  if (v21 >> 62)
  {
LABEL_63:
    v84 = sub_22911C78C();
    goto LABEL_47;
  }

  v84 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_47:
  if (v84)
  {
    aBlock = MEMORY[0x277D84F90];
    sub_2289FD488(0, v84 & ~(v84 >> 63), 0);
    v123 = v84;
    if (v84 < 0)
    {
      __break(1u);
    }

    v85 = 0;
    v86 = aBlock;
    v122 = (v21 & 0xC000000000000001);
    v87 = v101;
    do
    {
      if (v122)
      {
        v88 = MEMORY[0x22AAC6410](v85, v21);
      }

      else
      {
        v88 = *(v21 + 8 * v85 + 32);
      }

      HKDatabase.Pruning.Show.Entity.init(entity:)(v88, v87);
      aBlock = v86;
      v90 = v86[2];
      v89 = v86[3];
      if (v90 >= v89 >> 1)
      {
        sub_2289FD488((v89 > 1), v90 + 1, 1);
        v86 = aBlock;
      }

      ++v85;
      v86[2] = v90 + 1;
      (*(v113 + 32))(v86 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v90, v87, v112);
    }

    while (v123 != v85);

    v28 = v97;
  }

  else
  {
  }

  sub_22911BD1C();

  v95 = sub_22911B88C();
  return (*(*(v95 - 8) + 8))(v28, v95);
}

void HKDatabase.Pruning.ShowWithDeletedSampleInfo.init(profile:referenceDate:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v21[0] = a3;
  v4 = sub_22911BB3C();
  MEMORY[0x28223BE20](v4 - 8);
  v23 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22911B88C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v22 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = (v21 - v10);
  v12 = sub_22911BE0C();
  v21[1] = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v7 + 16);
  v25 = v6;
  v15(v11, a2, v6);
  v16 = v24;
  v17 = v26;
  HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(v16, v11, 1, v14);
  if (v17)
  {
    (*(v7 + 8))(a2, v25);
  }

  else
  {
    v26 = v12;
    v18 = v22;
    v19 = v25;
    v15(v22, a2, v25);
    v20 = v16;
    HKDatabase.Pruning.DeletedSampleInfo.init(profile:referenceDate:)(v20, v18, v23);
    sub_22911BBCC();

    (*(v7 + 8))(a2, v19);
  }
}

void HKDatabase.Pruning.DeletedSampleInfo.init(profile:referenceDate:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86[7] = a3;
  v92 = a2;
  v90 = a1;
  v93[4] = *MEMORY[0x277D85DE8];
  v3 = sub_22911B88C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = _s28DateClassificationBoundariesVMa(0);
  MEMORY[0x28223BE20](v87);
  v91 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911C35C();
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v9 = sub_2289B3D00(0, &unk_280D679B0, 0x277CCABB0);
  v93[3] = v9;
  v93[0] = v8;
  v10 = sub_22911C34C();

  v89 = v4;
  if (v9)
  {
    v11 = __swift_project_boxed_opaque_existential_1(v93, v9);
    v12 = *(v9 - 8);
    MEMORY[0x28223BE20](v11);
    v14 = v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_22911CACC();
    (*(v12 + 8))(v14, v9);
    v4 = v89;
    __swift_destroy_boxed_opaque_existential_0(v93);
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_opt_self() predicateWithProperty:v10 equalToValue:v15];

  swift_unknownObjectRelease();
  v17 = v91;
  if (!v16)
  {
    __break(1u);
LABEL_32:
    __break(1u);
  }

  (*(v4 + 16))(v6, v92, v3);
  sub_2289F9460(v6);
  sub_2289B3D00(0, &qword_27D863890, 0x277D10B20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = sub_22911B84C();
  v20 = HDDataEntityPredicateForCreationDate(6, v19);

  v88 = ObjCClassFromMetadata;
  v21 = [ObjCClassFromMetadata compoundPredicateWithPredicate:v16 otherPredicate:v20];

  v22 = v90;
  if (!v21)
  {
    goto LABEL_32;
  }

  sub_2289B3D00(0, &qword_27D863898, off_27860E7C8);
  v23 = swift_getObjCClassFromMetadata();
  v24 = [v22 database];
  v93[0] = 0;
  v25 = [v23 countOfObjectsWithPredicate:v21 healthDatabase:v24 error:v93];

  v26 = v93[0];
  if (!v93[0])
  {
    v86[6] = v25;
    v27 = sub_22911B84C();
    v28 = HDDataEntityPredicateForCreationDate(3, v27);

    v29 = sub_22911B84C();
    v30 = HDDataEntityPredicateForCreationDate(6, v29);

    v31 = [v88 compoundPredicateWithPredicate:v16 otherPredicate:v28 otherPredicate:v30];
    if (v31)
    {
      v32 = [v22 database];
      v93[0] = 0;
      [v23 countOfObjectsWithPredicate:v31 healthDatabase:v32 error:v93];

      v26 = v93[0];
      if (v93[0])
      {
        goto LABEL_24;
      }

      v33 = sub_22911B84C();
      v34 = HDDataEntityPredicateForCreationDate(3, v33);

      v35 = sub_22911B84C();
      v36 = HDDataEntityPredicateForCreationDate(6, v35);

      v37 = [v88 compoundPredicateWithPredicate:v16 otherPredicate:v34 otherPredicate:v36];
      if (v37)
      {
        v38 = [v22 database];
        v93[0] = 0;
        v39 = [v23 countOfObjectsWithPredicate:v37 healthDatabase:v38 error:v93];

        v26 = v93[0];
        if (v93[0])
        {
          goto LABEL_24;
        }

        v86[5] = v39;
        v40 = sub_22911B84C();
        v41 = HDDataEntityPredicateForCreationDate(3, v40);

        v42 = sub_22911B84C();
        v43 = HDDataEntityPredicateForCreationDate(6, v42);

        v44 = [v88 compoundPredicateWithPredicate:v16 otherPredicate:v41 otherPredicate:v43];
        if (v44)
        {
          v45 = [v22 database];
          v93[0] = 0;
          v46 = [v23 countOfObjectsWithPredicate:v44 healthDatabase:v45 error:v93];

          v26 = v93[0];
          if (v93[0])
          {
            goto LABEL_24;
          }

          v86[4] = v46;
          v47 = sub_22911B84C();
          v48 = HDDataEntityPredicateForCreationDate(3, v47);

          v49 = sub_22911B84C();
          v50 = HDDataEntityPredicateForCreationDate(6, v49);

          v51 = [v88 compoundPredicateWithPredicate:v16 otherPredicate:v48 otherPredicate:v50];
          if (v51)
          {
            v52 = [v22 database];
            v93[0] = 0;
            v53 = [v23 countOfObjectsWithPredicate:v51 healthDatabase:v52 error:v93];

            v26 = v93[0];
            if (v93[0])
            {
              goto LABEL_24;
            }

            v86[3] = v53;
            v54 = sub_22911B84C();
            v55 = HDDataEntityPredicateForCreationDate(3, v54);

            v56 = sub_22911B84C();
            v57 = HDDataEntityPredicateForCreationDate(6, v56);

            v58 = [v88 compoundPredicateWithPredicate:v16 otherPredicate:v55 otherPredicate:v57];
            if (v58)
            {
              v59 = [v22 database];
              v93[0] = 0;
              v60 = [v23 countOfObjectsWithPredicate:v58 healthDatabase:v59 error:v93];

              v26 = v93[0];
              if (v93[0])
              {
                goto LABEL_24;
              }

              v86[2] = v60;
              v61 = sub_22911B84C();
              v62 = HDDataEntityPredicateForCreationDate(3, v61);

              v63 = sub_22911B84C();
              v64 = HDDataEntityPredicateForCreationDate(6, v63);

              v65 = [v88 compoundPredicateWithPredicate:v16 otherPredicate:v62 otherPredicate:v64];
              if (v65)
              {
                v66 = [v22 database];
                v93[0] = 0;
                v67 = [v23 countOfObjectsWithPredicate:v65 healthDatabase:v66 error:v93];

                v26 = v93[0];
                if (v93[0])
                {
                  goto LABEL_24;
                }

                v86[1] = v67;
                v68 = sub_22911B84C();
                v69 = HDDataEntityPredicateForCreationDate(3, v68);

                v70 = sub_22911B84C();
                v71 = HDDataEntityPredicateForCreationDate(6, v70);

                v72 = [v88 compoundPredicateWithPredicate:v16 otherPredicate:v69 otherPredicate:v71];
                if (v72)
                {
                  v73 = [v22 database];
                  v93[0] = 0;
                  v74 = [v23 countOfObjectsWithPredicate:v72 healthDatabase:v73 error:v93];

                  v26 = v93[0];
                  if (!v93[0])
                  {
                    v86[0] = v74;
                    v75 = sub_22911B84C();
                    v76 = HDDataEntityPredicateForCreationDate(3, v75);

                    v77 = sub_22911B84C();
                    v78 = HDDataEntityPredicateForCreationDate(6, v77);

                    v79 = [v88 compoundPredicateWithPredicate:v16 otherPredicate:v76 otherPredicate:v78];
                    if (v79)
                    {
                      v80 = [v22 database];
                      v93[0] = 0;
                      [v23 countOfObjectsWithPredicate:v79 healthDatabase:v80 error:v93];

                      v26 = v93[0];
                      if (v93[0])
                      {
                        goto LABEL_24;
                      }

                      v17 = v91;
                      v82 = sub_22911B84C();
                      v83 = HDDataEntityPredicateForCreationDate(3, v82);

                      v84 = [v88 compoundPredicateWithPredicate:v16 otherPredicate:v83];
                      if (v84)
                      {
                        v85 = [v22 database];
                        v93[0] = 0;
                        [v23 countOfObjectsWithPredicate:v84 healthDatabase:v85 error:v93];

                        v26 = v93[0];
                        if (!v93[0])
                        {
                          sub_22911BACC();

                          (*(v89 + 8))(v92, v3);
                          sub_228A03F28(v17, _s28DateClassificationBoundariesVMa);
                          return;
                        }

                        swift_willThrow();
                        v4 = v89;
                        goto LABEL_25;
                      }

LABEL_41:
                      __break(1u);
                      return;
                    }

LABEL_40:
                    __break(1u);
                    goto LABEL_41;
                  }

LABEL_24:
                  swift_willThrow();
                  v4 = v89;
                  v17 = v91;
                  goto LABEL_25;
                }

LABEL_39:
                __break(1u);
                goto LABEL_40;
              }

LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_35;
  }

  swift_willThrow();
LABEL_25:
  v81 = v26;

  (*(v4 + 8))(v92, v3);
  sub_228A03F28(v17, _s28DateClassificationBoundariesVMa);
}

id sub_2289F3838(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v8 = sub_22911B88C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B86C();
  v12 = a3;
  v13 = a6();
  v15 = v14;
  (*(v9 + 8))(v11, v8);

  v16 = sub_22911B80C();
  sub_2289BCF3C(v13, v15);

  return v16;
}

uint64_t HKDatabase.Pruning.ClassifiedDeletedSampleInfo.init(profile:referenceDate:anchor:limit:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v105 = a4;
  v89 = a5;
  v107[1] = *MEMORY[0x277D85DE8];
  sub_228A009B8(0, &qword_27D8638A0, MEMORY[0x277CCB3E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = (&v78 - v9);
  v10 = sub_22911BDDC();
  v94 = *(v10 - 8);
  v95 = v10;
  MEMORY[0x28223BE20](v10);
  v88 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22911BD4C();
  v99 = *(v12 - 8);
  v100 = v12;
  MEMORY[0x28223BE20](v12);
  v98 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22911BD0C();
  v91 = *(v14 - 8);
  v92 = v14;
  MEMORY[0x28223BE20](v14);
  v90 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22911BE0C();
  v96 = *(v16 - 8);
  v97 = v16;
  MEMORY[0x28223BE20](v16);
  v104 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22911B88C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v86 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v101 = &v78 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v102 = (&v78 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v78 - v27);
  MEMORY[0x28223BE20](v26);
  v30 = (&v78 - v29);
  v87 = sub_22911BBBC();
  v85 = *(v87 - 8);
  v31 = MEMORY[0x28223BE20](v87);
  v83 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v84 = &v78 - v33;
  v35 = v19 + 16;
  v34 = *(v19 + 16);
  v106 = a2;
  v34(v30, a2, v18);
  v36 = objc_opt_self();
  v107[0] = 0;
  v37 = a1;
  v38 = [v36 deletedSamplesInProfile:v37 anchor:a3 limit:v105 error:v107];
  v39 = v107[0];
  if (v38)
  {
    v40 = v38;
    v105 = v19;
    sub_2289B3D00(0, &qword_27D8638A8, off_27860E8C0);
    v41 = sub_22911C45C();
    v42 = v39;

    v34(v28, v30, v18);
    v43 = v102;
    v34(v102, v28, v18);
    v44 = v37;
    v45 = v103;
    HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(v44, v43, 1, v104);
    if (v45)
    {

      v46 = *(v105 + 8);
      v46(v106, v18);
      v46(v28, v18);
      return (v46)(v30, v18);
    }

    else
    {
      v81 = v41;
      v103 = v44;
      v79 = v34;
      v80 = v35;
      v82 = v18;
      v102 = v30;
      v50 = v90;
      sub_22911BD2C();
      sub_22911BCEC();
      (*(v91 + 8))(v50, v92);
      v92 = v28;
      sub_22911B83C();
      sub_2289B3D00(0, &qword_27D8638B0, off_27860E968);
      v51 = [swift_getObjCClassFromMetadata() syncEntityIdentifier];
      [v51 entityIdentifier];
      v52 = [v51 schemaIdentifier];
      if (v52)
      {
        v53 = v52;
        sub_22911C35C();
      }

      v54 = v105;
      v55 = v98;
      sub_22911BD3C();

      v56 = v104;
      v57 = sub_22911BDFC();
      MEMORY[0x28223BE20](v57);
      *(&v78 - 2) = v55;
      v58 = v93;
      sub_2289FBD3C(sub_228A003CC, v57, v93);

      v59 = v58;
      v60 = v94;
      v61 = v95;
      if ((*(v94 + 48))(v58, 1, v95) == 1)
      {

        sub_228A03EB8(v58, &qword_27D8638A0, MEMORY[0x277CCB3E0]);
        sub_228A003EC();
        swift_allocError();
        swift_willThrow();
        v62 = v103;

        v63 = *(v54 + 8);
        v64 = v82;
        v63(v106, v82);
        v63(v92, v64);
        v63(v102, v64);
        (*(v99 + 8))(v55, v100);
        v63(v101, v64);
        return (*(v96 + 8))(v56, v97);
      }

      else
      {
        v65 = v88;
        v66 = (*(v60 + 32))(v88, v59, v61);
        v93 = &v78;
        MEMORY[0x28223BE20](v66);
        v67 = v101;
        *(&v78 - 6) = v101;
        *(&v78 - 5) = v56;
        *(&v78 - 4) = v65;
        *(&v78 - 24) = 0;
        *(&v78 - 2) = sub_2289DA034;
        *(&v78 - 1) = 0;
        sub_2289FCC04(sub_228A00440, (&v78 - 8), v81);
        v105 = 0;

        v68 = v84;
        sub_22911BB9C();

        v69 = *(v54 + 8);
        v70 = v82;
        v69(v92, v82);
        v69(v102, v70);
        v71 = v65;
        v72 = v68;
        (*(v60 + 8))(v71, v61);
        (*(v99 + 8))(v55, v100);
        v69(v67, v70);
        (*(v96 + 8))(v104, v97);
        v73 = v85;
        v74 = v83;
        v75 = v87;
        (*(v85 + 16))(v83, v72, v87);
        v76 = v86;
        v77 = v106;
        v79(v86, v106, v70);
        sub_2289FAA44(v74, v76, v89);

        v69(v77, v70);
        return (*(v73 + 8))(v72, v75);
      }
    }
  }

  else
  {
    v48 = v107[0];
    sub_22911B7FC();

    swift_willThrow();
    v49 = *(v19 + 8);
    v49(v106, v18);
    return (v49)(v30, v18);
  }
}

uint64_t HKDatabase.Pruning.ClassifiedDeletedSampleInfo.init(profile:referenceDate:createdOnOrAfter:createdBefore:limit:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v123 = a1;
  v124 = a5;
  v130 = a4;
  v131 = a3;
  v132 = a2;
  v105 = a6;
  v134[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D83D88];
  sub_228A009B8(0, &qword_27D8638A0, MEMORY[0x277CCB3E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v110 = &v99 - v8;
  v117 = sub_22911BDDC();
  v111 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v104 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22911BD4C();
  v115 = *(v10 - 8);
  v116 = v10;
  MEMORY[0x28223BE20](v10);
  v114 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_22911BD0C();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_22911BE0C();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v126 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277CC9578];
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], v6);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v99 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v99 - v23);
  MEMORY[0x28223BE20](v22);
  v26 = &v99 - v25;
  v27 = sub_22911B88C();
  v133 = v27;
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v101 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v118 = &v99 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v119 = (&v99 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v127 = &v99 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v99 - v37;
  v103 = sub_22911BBBC();
  v102 = *(v103 - 8);
  v39 = MEMORY[0x28223BE20](v103);
  v100 = &v99 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v109 = &v99 - v41;
  v42 = *(v28 + 16);
  v128 = v38;
  v121 = v42;
  v122 = v28 + 16;
  v42(v38, v132, v27);
  sub_228A03E38(v131, v26, &qword_27D862B48, v14);
  v129 = v24;
  sub_228A03E38(v130, v24, &qword_27D862B48, v14);
  v125 = v26;
  sub_228A03E38(v26, v21, &qword_27D862B48, v14);
  v43 = *(v28 + 48);
  LODWORD(v38) = v43(v21, 1, v27);
  v44 = v123;
  v45 = 0;
  v46 = v38 == 1;
  v47 = v28;
  if (!v46)
  {
    v45 = sub_22911B84C();
    (*(v28 + 8))(v21, v133);
  }

  sub_228A03E38(v129, v18, &qword_27D862B48, MEMORY[0x277CC9578]);
  if (v43(v18, 1, v133) == 1)
  {
    v48 = 0;
  }

  else
  {
    v48 = sub_22911B84C();
    (*(v28 + 8))(v18, v133);
  }

  v49 = v126;
  v50 = v127;
  v51 = objc_opt_self();
  v134[0] = 0;
  v52 = [v51 deletedSamplesInProfile:v44 createdOnOrAfter:v45 createdBefore:v48 limit:v124 error:v134];

  v53 = v134[0];
  if (!v52)
  {
    v65 = v134[0];
    sub_22911B7FC();

    swift_willThrow();
    v61 = MEMORY[0x277CC9578];
    sub_228A03EB8(v130, &qword_27D862B48, MEMORY[0x277CC9578]);
    sub_228A03EB8(v131, &qword_27D862B48, v61);
    v62 = *(v47 + 8);
    v64 = v132;
    v63 = v133;
    goto LABEL_10;
  }

  sub_2289B3D00(0, &qword_27D8638A8, off_27860E8C0);
  v54 = sub_22911C45C();
  v55 = v53;

  v56 = v133;
  v57 = v121;
  v121(v50, v128, v133);
  v58 = v119;
  v57(v119, v50, v56);
  v59 = v44;
  v60 = v120;
  HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(v59, v58, 1, v49);
  if (v60)
  {

    v61 = MEMORY[0x277CC9578];
    sub_228A03EB8(v130, &qword_27D862B48, MEMORY[0x277CC9578]);
    sub_228A03EB8(v131, &qword_27D862B48, v61);
    v62 = *(v47 + 8);
    v63 = v133;
    v62(v132, v133);
    v64 = v50;
LABEL_10:
    v62(v64, v63);
    sub_228A03EB8(v129, &qword_27D862B48, v61);
    sub_228A03EB8(v125, &qword_27D862B48, v61);
    return (v62)(v128, v63);
  }

  v123 = v54;
  v124 = v59;
  v67 = v47;
  v68 = v106;
  v69 = v49;
  sub_22911BD2C();
  sub_22911BCEC();
  (*(v107 + 8))(v68, v108);
  sub_22911B83C();
  sub_2289B3D00(0, &qword_27D8638B0, off_27860E968);
  v70 = [swift_getObjCClassFromMetadata() syncEntityIdentifier];
  [v70 entityIdentifier];
  v71 = [v70 schemaIdentifier];
  if (v71)
  {
    v72 = v71;
    sub_22911C35C();
  }

  v73 = v114;
  sub_22911BD3C();

  v74 = sub_22911BDFC();
  MEMORY[0x28223BE20](v74);
  *(&v99 - 2) = v73;
  v75 = v110;
  sub_2289FBD3C(sub_228A03FF0, v74, v110);

  v76 = v111;
  v77 = v117;
  v78 = v67;
  if ((*(v111 + 48))(v75, 1, v117) == 1)
  {

    sub_228A03EB8(v75, &qword_27D8638A0, MEMORY[0x277CCB3E0]);
    sub_228A003EC();
    swift_allocError();
    swift_willThrow();
    v79 = v124;

    v80 = MEMORY[0x277CC9578];
    sub_228A03EB8(v130, &qword_27D862B48, MEMORY[0x277CC9578]);
    sub_228A03EB8(v131, &qword_27D862B48, v80);
    v81 = *(v67 + 8);
    v82 = v73;
    v83 = v133;
    v81(v132, v133);
    v81(v127, v83);
    sub_228A03EB8(v129, &qword_27D862B48, v80);
    sub_228A03EB8(v125, &qword_27D862B48, v80);
    v81(v128, v83);
    (*(v115 + 8))(v82, v116);
    v81(v118, v83);
    return (*(v112 + 8))(v69, v113);
  }

  else
  {
    v84 = v75;
    v85 = v104;
    v86 = (*(v76 + 32))(v104, v84, v77);
    v87 = v76;
    MEMORY[0x28223BE20](v86);
    *(&v99 - 6) = v118;
    *(&v99 - 5) = v69;
    *(&v99 - 4) = v85;
    *(&v99 - 24) = 0;
    *(&v99 - 2) = sub_2289DA034;
    *(&v99 - 1) = 0;
    sub_2289FCC04(sub_228A03FD4, (&v99 - 8), v123);
    v120 = v60;

    v88 = v109;
    sub_22911BB9C();

    v89 = v73;
    v90 = *(v78 + 8);
    v91 = v133;
    v90(v127, v133);
    v92 = MEMORY[0x277CC9578];
    sub_228A03EB8(v129, &qword_27D862B48, MEMORY[0x277CC9578]);
    sub_228A03EB8(v125, &qword_27D862B48, v92);
    v90(v128, v91);
    (*(v87 + 8))(v85, v117);
    (*(v115 + 8))(v89, v116);
    v129 = v90;
    v90(v118, v91);
    (*(v112 + 8))(v126, v113);
    v93 = v102;
    v94 = v100;
    v95 = v103;
    (*(v102 + 16))(v100, v88, v103);
    v96 = v101;
    v97 = v132;
    v121(v101, v132, v91);
    sub_2289FAA44(v94, v96, v105);

    v98 = MEMORY[0x277CC9578];
    sub_228A03EB8(v130, &qword_27D862B48, MEMORY[0x277CC9578]);
    sub_228A03EB8(v131, &qword_27D862B48, v98);
    v129(v97, v133);
    return (*(v93 + 8))(v109, v95);
  }
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.init(profile:matchingPredicatesOnly:referenceDate:sampleUUID:filter:)@<X0>(void *a1@<X0>, int a2@<W1>, char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v70 = a5;
  v71 = a6;
  v88 = a3;
  v69 = a2;
  v87 = a1;
  v72 = a7;
  v89[1] = *MEMORY[0x277D85DE8];
  sub_228A009B8(0, &qword_27D8638A0, MEMORY[0x277CCB3E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v64 - v9;
  v83 = sub_22911BDDC();
  v78 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v77 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22911BD4C();
  v81 = *(v11 - 8);
  v82 = v11;
  MEMORY[0x28223BE20](v11);
  v84 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22911BD0C();
  v74 = *(v13 - 8);
  v75 = v13;
  MEMORY[0x28223BE20](v13);
  v73 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22911BE0C();
  v79 = *(v15 - 8);
  v80 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22911B88C();
  v19 = *(v18 - 1);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v64 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = &v64 - v26;
  v28 = objc_opt_self();
  v86 = a4;
  v29 = sub_22911B8BC();
  v89[0] = 0;
  v30 = v28;
  v31 = v87;
  v32 = [v30 deletedSampleInProfile:v87 sampleUUID:v29 error:v89];

  if (v89[0])
  {
    v89[0];

    swift_willThrow();
    v33 = sub_22911B8DC();
    (*(*(v33 - 8) + 8))(v86, v33);
    return (*(v19 + 8))(v88, v18);
  }

  else
  {
    v66 = v22;
    v68 = v17;
    v67 = v19;
    v35 = *(v19 + 16);
    v35(v27, v88, v18);
    if (v32)
    {
      sub_228A03A5C(0, &qword_280D679C0, MEMORY[0x277D84F68] + 8);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_2291640E0;
      *(v36 + 32) = v32;
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    v37 = v85;
    v35(v25, v27, v18);
    v38 = v32;
    v39 = v87;
    HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(v39, v25, 1, v68);
    if (v37)
    {

      v40 = sub_22911B8DC();
      (*(*(v40 - 8) + 8))(v86, v40);
      v41 = *(v67 + 8);
      v41(v88, v18);
      return (v41)(v27, v18);
    }

    else
    {
      v64 = v39;
      v65 = v38;
      v87 = v18;
      v42 = v73;
      sub_22911BD2C();
      sub_22911BCEC();
      (*(v74 + 8))(v42, v75);
      v43 = v66;
      v85 = v27;
      sub_22911B83C();
      sub_2289B3D00(0, &qword_27D8638B0, off_27860E968);
      v44 = [swift_getObjCClassFromMetadata() syncEntityIdentifier];
      v75 = [v44 entityIdentifier];
      v45 = [v44 schemaIdentifier];
      if (v45)
      {
        v46 = v45;
        sub_22911C35C();
      }

      v47 = v67;
      v48 = v77;
      v49 = v84;
      sub_22911BD3C();

      v50 = sub_22911BDFC();
      MEMORY[0x28223BE20](v50);
      *(&v64 - 2) = v49;
      v51 = v76;
      sub_2289FBD3C(sub_228A03FF0, v50, v76);

      v52 = v78;
      v53 = v83;
      if ((*(v78 + 48))(v51, 1, v83) == 1)
      {

        sub_228A03EB8(v51, &qword_27D8638A0, MEMORY[0x277CCB3E0]);
        sub_228A003EC();
        swift_allocError();
        swift_willThrow();

        v54 = sub_22911B8DC();
        (*(*(v54 - 8) + 8))(v86, v54);
        v55 = *(v47 + 8);
        v56 = v87;
        v55(v88, v87);
        v55(v85, v56);
        (*(v81 + 8))(v84, v82);
        v55(v43, v56);
        return (*(v79 + 8))(v68, v80);
      }

      else
      {
        v57 = (*(v52 + 32))(v48, v51, v53);
        MEMORY[0x28223BE20](v57);
        v58 = v68;
        *(&v64 - 6) = v59;
        *(&v64 - 5) = v58;
        *(&v64 - 4) = v48;
        *(&v64 - 24) = v69 & 1;
        v60 = v71;
        *(&v64 - 2) = v70;
        *(&v64 - 1) = v60;
        sub_2289FCC04(sub_228A03FD4, (&v64 - 8), v36);

        sub_22911BB9C();

        v61 = sub_22911B8DC();
        (*(*(v61 - 8) + 8))(v86, v61);
        v62 = *(v47 + 8);
        v63 = v87;
        v62(v88, v87);
        v62(v85, v63);
        (*(v52 + 8))(v48, v83);
        (*(v81 + 8))(v84, v82);
        v62(v66, v63);
        return (*(v79 + 8))(v58, v80);
      }
    }
  }
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.init(profile:matchingPredicatesOnly:referenceDate:anchor:limit:filter:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v65 = a6;
  v66 = a7;
  v81 = a3;
  v64 = a2;
  v67 = a8;
  v82[1] = *MEMORY[0x277D85DE8];
  sub_228A009B8(0, &qword_27D8638A0, MEMORY[0x277CCB3E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v71 = (&v59 - v13);
  v14 = sub_22911BDDC();
  v72 = *(v14 - 8);
  v73 = v14;
  MEMORY[0x28223BE20](v14);
  v63 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22911BD4C();
  v76 = *(v16 - 8);
  v77 = v16;
  MEMORY[0x28223BE20](v16);
  v79 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22911BD0C();
  v69 = *(v18 - 8);
  v70 = v18;
  MEMORY[0x28223BE20](v18);
  v68 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22911BE0C();
  v74 = *(v20 - 8);
  v75 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22911B88C();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v80 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v59 - v28);
  MEMORY[0x28223BE20](v27);
  v31 = &v59 - v30;
  v32 = objc_opt_self();
  v82[0] = 0;
  v33 = [v32 deletedSamplesInProfile:a1 anchor:a4 limit:a5 error:v82];
  v34 = v82[0];
  if (v33)
  {
    v35 = v33;
    sub_2289B3D00(0, &qword_27D8638A8, off_27860E8C0);
    v78 = sub_22911C45C();
    v36 = v34;

    v37 = *(v24 + 16);
    v37(v31, v81, v23);
    v37(v29, v31, v23);
    v38 = a1;
    HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(v38, v29, 1, v22);
    if (v8)
    {

      v39 = *(v24 + 8);
      v39(v81, v23);
      return (v39)(v31, v23);
    }

    else
    {
      v60 = v24;
      v61 = v38;
      v42 = v68;
      v62 = v22;
      sub_22911BD2C();
      sub_22911BCEC();
      (*(v69 + 8))(v42, v70);
      v70 = v31;
      sub_22911B83C();
      sub_2289B3D00(0, &qword_27D8638B0, off_27860E968);
      v43 = [swift_getObjCClassFromMetadata() syncEntityIdentifier];
      [v43 entityIdentifier];
      v44 = [v43 schemaIdentifier];
      if (v44)
      {
        v45 = v44;
        sub_22911C35C();
      }

      v46 = v23;
      v47 = v79;
      sub_22911BD3C();

      v48 = v62;
      v49 = sub_22911BDFC();
      MEMORY[0x28223BE20](v49);
      *(&v59 - 2) = v47;
      v50 = v71;
      sub_2289FBD3C(sub_228A03FF0, v49, v71);

      v52 = v72;
      v51 = v73;
      if ((*(v72 + 48))(v50, 1, v73) == 1)
      {

        sub_228A03EB8(v50, &qword_27D8638A0, MEMORY[0x277CCB3E0]);
        sub_228A003EC();
        swift_allocError();
        swift_willThrow();

        v53 = *(v60 + 8);
        v53(v81, v46);
        v53(v70, v46);
        (*(v76 + 8))(v47, v77);
        v53(v80, v46);
        return (*(v74 + 8))(v48, v75);
      }

      else
      {
        v54 = v63;
        v55 = (*(v52 + 32))(v63, v50, v51);
        v71 = &v59;
        MEMORY[0x28223BE20](v55);
        v56 = v80;
        *(&v59 - 6) = v80;
        *(&v59 - 5) = v48;
        *(&v59 - 4) = v54;
        *(&v59 - 24) = v64 & 1;
        v57 = v66;
        *(&v59 - 2) = v65;
        *(&v59 - 1) = v57;
        sub_2289FCC04(sub_228A03FD4, (&v59 - 8), v78);

        sub_22911BB9C();

        v58 = *(v60 + 8);
        v58(v81, v46);
        v58(v70, v46);
        (*(v52 + 8))(v54, v51);
        (*(v76 + 8))(v79, v77);
        v58(v56, v46);
        return (*(v74 + 8))(v62, v75);
      }
    }
  }

  else
  {
    v41 = v82[0];
    sub_22911B7FC();

    swift_willThrow();
    return (*(v24 + 8))(v81, v23);
  }
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.init(profile:matchingPredicatesOnly:referenceDate:createdOnOrAfter:createdBefore:limit:filter:)@<X0>(_BYTE *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v81 = a8;
  v80 = a7;
  v97 = a6;
  v102 = a5;
  v100 = a3;
  v79 = a2;
  v98 = a1;
  v82 = a9;
  v103[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277D83D88];
  sub_228A009B8(0, &qword_27D8638A0, MEMORY[0x277CCB3E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v85 = &v78[-v12];
  v13 = sub_22911BDDC();
  v87 = *(v13 - 8);
  v88 = v13;
  MEMORY[0x28223BE20](v13);
  v86 = &v78[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_22911BD4C();
  v91 = *(v15 - 8);
  v92 = v15;
  MEMORY[0x28223BE20](v15);
  v93 = &v78[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = sub_22911BD0C();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v18 = &v78[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_22911BE0C();
  v89 = *(v19 - 8);
  v90 = v19;
  MEMORY[0x28223BE20](v19);
  v96 = &v78[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_22911B88C();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v94 = &v78[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v78[-v26];
  MEMORY[0x28223BE20](v25);
  v101 = &v78[-v28];
  v29 = MEMORY[0x277CC9578];
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], v10);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = &v78[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31);
  v35 = &v78[-v34];
  v99 = a4;
  sub_228A03E38(a4, &v78[-v34], &qword_27D862B48, v29);
  v36 = *(v22 + 48);
  v37 = 0;
  if (v36(v35, 1, v21) != 1)
  {
    v37 = sub_22911B84C();
    (*(v22 + 8))(v35, v21);
  }

  sub_228A03E38(v102, v33, &qword_27D862B48, MEMORY[0x277CC9578]);
  if (v36(v33, 1, v21) == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = sub_22911B84C();
    (*(v22 + 8))(v33, v21);
  }

  v39 = v101;
  v40 = v98;
  v41 = objc_opt_self();
  v103[0] = 0;
  v42 = [v41 deletedSamplesInProfile:v40 createdOnOrAfter:v37 createdBefore:v38 limit:v97 error:v103];

  v43 = v103[0];
  if (v42)
  {
    v98 = v18;
    sub_2289B3D00(0, &qword_27D8638A8, off_27860E8C0);
    v44 = sub_22911C45C();
    v45 = v43;

    v46 = v40;
    v47 = *(v22 + 16);
    v48 = v100;
    v47(v39, v100, v21);
    v47(v27, v39, v21);
    v49 = v46;
    v50 = v95;
    HKDatabase.Pruning.Show.init(profile:referenceDate:deletedSampleSyncEntityOnly:)(v49, v27, 1, v96);
    if (v50)
    {

      v51 = MEMORY[0x277CC9578];
      sub_228A03EB8(v102, &qword_27D862B48, MEMORY[0x277CC9578]);
      sub_228A03EB8(v99, &qword_27D862B48, v51);
      v52 = *(v22 + 8);
      v52(v48, v21);
      return (v52)(v39, v21);
    }

    else
    {
      v95 = v22;
      v97 = v44;
      v56 = v98;
      sub_22911BD2C();
      sub_22911BCEC();
      (*(v83 + 8))(v56, v84);
      sub_22911B83C();
      sub_2289B3D00(0, &qword_27D8638B0, off_27860E968);
      v57 = [swift_getObjCClassFromMetadata() syncEntityIdentifier];
      [v57 entityIdentifier];
      v58 = [v57 schemaIdentifier];
      if (v58)
      {
        v59 = v58;
        sub_22911C35C();

        v60 = v100;
      }

      else
      {
        v60 = v48;
      }

      v61 = v21;
      v62 = v93;
      sub_22911BD3C();

      v63 = v96;
      v64 = sub_22911BDFC();
      MEMORY[0x28223BE20](v64);
      *&v78[-16] = v62;
      v65 = v85;
      sub_2289FBD3C(sub_228A03FF0, v64, v85);

      v66 = v87;
      v67 = v88;
      if ((*(v87 + 48))(v65, 1, v88) == 1)
      {

        sub_228A03EB8(v65, &qword_27D8638A0, MEMORY[0x277CCB3E0]);
        sub_228A003EC();
        swift_allocError();
        swift_willThrow();

        v68 = MEMORY[0x277CC9578];
        sub_228A03EB8(v102, &qword_27D862B48, MEMORY[0x277CC9578]);
        sub_228A03EB8(v99, &qword_27D862B48, v68);
        v69 = *(v95 + 8);
        v69(v60, v61);
        v69(v101, v61);
        (*(v91 + 8))(v93, v92);
        v69(v94, v61);
        return (*(v89 + 8))(v63, v90);
      }

      else
      {
        v70 = v61;
        v71 = v60;
        v72 = v86;
        v73 = (*(v66 + 32))();
        v74 = v66;
        MEMORY[0x28223BE20](v73);
        *&v78[-48] = v94;
        *&v78[-40] = v63;
        *&v78[-32] = v72;
        v78[-24] = v79 & 1;
        v75 = v81;
        *&v78[-16] = v80;
        *&v78[-8] = v75;
        sub_2289FCC04(sub_228A03FD4, &v78[-64], v97);

        sub_22911BB9C();

        v76 = MEMORY[0x277CC9578];
        sub_228A03EB8(v102, &qword_27D862B48, MEMORY[0x277CC9578]);
        sub_228A03EB8(v99, &qword_27D862B48, v76);
        v77 = *(v95 + 8);
        v77(v71, v70);
        v77(v101, v70);
        (*(v74 + 8))(v86, v67);
        (*(v91 + 8))(v93, v92);
        v77(v94, v70);
        return (*(v89 + 8))(v96, v90);
      }
    }
  }

  else
  {
    v54 = v103[0];
    sub_22911B7FC();

    swift_willThrow();
    v55 = MEMORY[0x277CC9578];
    sub_228A03EB8(v102, &qword_27D862B48, MEMORY[0x277CC9578]);
    sub_228A03EB8(v99, &qword_27D862B48, v55);
    return (*(v22 + 8))(v100, v21);
  }
}

HDDatabasePruningShow __swiftcall HDDatabasePruningShow.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void HKDatabase.Pruning.Show.Configuration.init(profile:)(void *a1)
{
  v1 = [objc_opt_self() sharedBehavior];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 features];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v3 databasePruningTaskShouldUseRestrictionPredicates];

  v4 = objc_opt_self();
  [v4 recentStoreAnchorRelevanceInterval];
  [v4 pruningFrozenAnchorRelevanceInterval];
  [v4 canPerformRecentRecordRollWithProfile_];
  [v4 currentSyncIdentityWithProfile_];
  sub_22911BCFC();
}