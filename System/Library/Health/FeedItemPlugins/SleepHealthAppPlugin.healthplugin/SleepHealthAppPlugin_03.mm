uint64_t sub_29E64A424(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_29E7550C8();
  sub_29E7542D8();
  v8 = sub_29E755108();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_29E755028() & 1) != 0)
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

    sub_29E64B4BC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_29E64A574(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  sub_29E64C90C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v24 = &v24 - v10;
  v25 = v2;
  v11 = *v2;
  sub_29E7550C8();
  sub_29E754048();
  sub_29E64C9A0();
  sub_29E7540B8();
  v12 = *(v5 + 36);
  v30 = a2;
  v27 = v12;
  v28 = v5;
  sub_29E7540B8();
  v13 = sub_29E755108();
  v29 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = *(v6 + 72);
    while (1)
    {
      sub_29E64C9D4(*(v29 + 48) + v17 * v15, v9, sub_29E64C90C);
      sub_29E64CA3C(&qword_2A1857B80, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA310]);
      if (sub_29E754108())
      {
        v19 = sub_29E754108();
        sub_29E64CA84(v9, sub_29E64C90C);
        if (v19)
        {
          sub_29E64CA84(v30, sub_29E64C90C);
          sub_29E64C9D4(*(v29 + 48) + v17 * v15, v26, sub_29E64C90C);
          return 0;
        }
      }

      else
      {
        sub_29E64CA84(v9, sub_29E64C90C);
      }

      v15 = (v15 + 1) & v16;
      v18 = v30;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  v18 = v30;
LABEL_9:
  v21 = v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v24;
  sub_29E64C9D4(v18, v24, sub_29E64C90C);
  v31 = *v21;
  sub_29E64B63C(v23, v15, isUniquelyReferenced_nonNull_native);
  *v21 = v31;
  sub_29E64CAE4(v18, v26, sub_29E64C90C);
  return 1;
}

uint64_t sub_29E64A8C8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_29E64C830(0, a3, a4, a5, a6);
    v10 = sub_29E754D38();
    v23 = v10;
    sub_29E754C88();
    if (sub_29E754CC8())
    {
      sub_29E609B5C(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_29E64AAE0(v17 + 1, a3, a4, a5, a6);
        }

        v10 = v23;
        result = sub_29E754B78();
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

      while (sub_29E754CC8());
    }
  }

  else
  {
    sub_29E751758();
    return MEMORY[0x29EDCA1A0];
  }

  return v10;
}

uint64_t sub_29E64AAE0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_29E64C830(0, a2, a3, a4, a5);
  result = sub_29E754D28();
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
      result = sub_29E754B78();
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

uint64_t sub_29E64ACFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29E5FFA5C();
  result = sub_29E754D28();
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
      sub_29E7550C8();
      sub_29E7542D8();
      result = sub_29E755108();
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

uint64_t sub_29E64AF50(uint64_t a1)
{
  v2 = v1;
  sub_29E64C90C(0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_29E64CB4C(0);
  result = sub_29E754D28();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v1;
    v30 = v5;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_29E64CAE4(v19 + v20 * (v16 | (v8 << 6)), v33, sub_29E64C90C);
      sub_29E7550C8();
      sub_29E754048();
      sub_29E64C9A0();
      sub_29E7540B8();
      sub_29E7540B8();
      result = sub_29E755108();
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
      result = sub_29E64CAE4(v33, *(v7 + 48) + v15 * v20, sub_29E64C90C);
      ++*(v7 + 16);
      v5 = v30;
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

    v2 = v29;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

unint64_t sub_29E64B290(uint64_t a1, uint64_t a2)
{
  sub_29E754B78();
  result = sub_29E754C78();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_29E64B314(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, void *a6, unint64_t *a7)
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
    sub_29E64AAE0(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_29E64B940(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_29E64BDE0(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = sub_29E754B78();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_29E609B5C(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_29E754B88();

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
  sub_29E755068();
  __break(1u);
}

uint64_t sub_29E64B4BC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_29E64ACFC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_29E64BA94();
      goto LABEL_16;
    }

    sub_29E64BFE8(v8 + 1);
  }

  v10 = *v4;
  sub_29E7550C8();
  sub_29E7542D8();
  result = sub_29E755108();
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

      result = sub_29E755028();
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
  result = sub_29E755068();
  __break(1u);
  return result;
}

uint64_t sub_29E64B63C(uint64_t a1, unint64_t a2, char a3)
{
  sub_29E64C90C(0);
  v28 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v25 = v8;
  v26 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_29E64AF50(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_29E64BBE4();
      goto LABEL_15;
    }

    sub_29E64C214(v11 + 1);
  }

  v13 = *v3;
  sub_29E7550C8();
  sub_29E754048();
  sub_29E64C9A0();
  sub_29E7540B8();
  v27 = *(v28 + 36);
  sub_29E7540B8();
  v14 = sub_29E755108();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v8 + 72);
    do
    {
      sub_29E64C9D4(*(v13 + 48) + v17 * a2, v10, sub_29E64C90C);
      sub_29E64CA3C(&qword_2A1857B80, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA310]);
      if (sub_29E754108())
      {
        v18 = sub_29E754108();
        sub_29E64CA84(v10, sub_29E64C90C);
        if (v18)
        {
          sub_29E755068();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_29E64CA84(v10, sub_29E64C90C);
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v19 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_29E64CAE4(a1, *(v19 + 48) + *(v25 + 72) * a2, sub_29E64C90C);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

id sub_29E64B940(unint64_t *a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v5 = v4;
  sub_29E64C830(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_29E754D18();
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

void *sub_29E64BA94()
{
  v1 = v0;
  sub_29E5FFA5C();
  v2 = *v0;
  v3 = sub_29E754D18();
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

void *sub_29E64BBE4()
{
  v1 = v0;
  sub_29E64C90C(0);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64CB4C(0);
  v6 = *v0;
  v7 = sub_29E754D18();
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_29E64C9D4(*(v6 + 48) + v21, v5, sub_29E64C90C);
        result = sub_29E64CAE4(v5, *(v8 + 48) + v21, sub_29E64C90C);
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

    *v1 = v8;
  }

  return result;
}

uint64_t sub_29E64BDE0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_29E64C830(0, a2, a3, a4, a5);
  result = sub_29E754D28();
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
      result = sub_29E754B78();
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

uint64_t sub_29E64BFE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29E5FFA5C();
  result = sub_29E754D28();
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
      sub_29E7550C8();

      sub_29E7542D8();
      result = sub_29E755108();
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

uint64_t sub_29E64C214(uint64_t a1)
{
  v2 = v1;
  sub_29E64C90C(0);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_29E64CB4C(0);
  result = sub_29E754D28();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v1;
    v29 = v5;
    v8 = 0;
    v9 = v5 + 56;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v30 + 72);
      sub_29E64C9D4(v19 + v20 * (v16 | (v8 << 6)), v32, sub_29E64C90C);
      sub_29E7550C8();
      sub_29E754048();
      sub_29E64C9A0();
      sub_29E7540B8();
      sub_29E7540B8();
      result = sub_29E755108();
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_29E64CAE4(v32, *(v7 + 48) + v15 * v20, sub_29E64C90C);
      ++*(v7 + 16);
      v5 = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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

void sub_29E64C52C(uint64_t a1)
{
  if (!qword_2A1A7BF98)
  {
    sub_29E751D98();
    v1 = sub_29E7526F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BF98);
    }
  }
}

uint64_t sub_29E64C594@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29E74FEB8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_29E64942C(0);
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29E649484(a1, v2 + v6, v2 + v10, v11, a2);
}

void sub_29E64C6A4(uint64_t a1@<X8>)
{
  v3 = *(sub_29E74FEB8() - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_29E64942C(0);
  v7 = *(v1 + ((*(*(v6 - 8) + 64) + ((v4 + v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  sub_29E649820(v8, v1 + v4, v7, a1);
}

uint64_t sub_29E64C7DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_29E64C830(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_29E609B5C(255, a3, a4);
    sub_29E64C8BC(a5, a3, a4);
    v9 = sub_29E754D58();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29E64C8BC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_29E609B5C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E64C90C(uint64_t a1)
{
  if (!qword_2A1A7BE00)
  {
    sub_29E754048();
    sub_29E64CA3C(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
    v1 = sub_29E7540F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BE00);
    }
  }
}

uint64_t sub_29E64C9D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E64CA3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E64CA84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E64CAE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E64CB4C(uint64_t a1)
{
  if (!qword_2A1857B88)
  {
    sub_29E64C90C(255);
    sub_29E64CBF4(&qword_2A1857B90, sub_29E64C90C, sub_29E64C9A0, MEMORY[0x29EDC9940]);
    v1 = sub_29E754D58();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857B88);
    }
  }
}

uint64_t sub_29E64CBF4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E64CC8C(uint64_t a1)
{
  sub_29E64CD10(319);
  if (v1 <= 0x3F)
  {
    sub_29E74FE48();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29E64CD10(uint64_t a1)
{
  if (!qword_2A1A7BFA8)
  {
    sub_29E609CF8(255, &qword_2A1A7D6A0, MEMORY[0x29EDC3C90]);
    v1 = sub_29E7526F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BFA8);
    }
  }
}

__n128 sub_29E64CD88(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29E64CDC8()
{
  v1 = *(v0 + 8);
  sub_29E7550C8();
  sub_29E7550E8();
  if (v1)
  {
    sub_29E7542D8();
  }

  sub_29E7550E8();
  sub_29E7542D8();
  return sub_29E755108();
}

uint64_t sub_29E64CE64(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_29E7550E8();
    sub_29E7542D8();
  }

  else
  {
    sub_29E7550E8();
  }

  sub_29E7550E8();

  return sub_29E7542D8();
}

uint64_t sub_29E64CF04(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_29E7550C8();
  sub_29E7550E8();
  if (v2)
  {
    sub_29E7542D8();
  }

  sub_29E7550E8();
  sub_29E7542D8();
  return sub_29E755108();
}

uint64_t sub_29E64CF9C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (!v3)
  {
    result = 0;
    if (v7)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v7)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v7)
  {
    v12 = sub_29E755028();
    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    if ((v4 ^ v8))
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v4 != v8)
  {
    return 0;
  }

LABEL_14:
  if (v5 == v9 && v6 == v10)
  {
    return 1;
  }

  return sub_29E755028();
}

uint64_t sub_29E64D084@<X0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>)
{
  v33 = a2;
  sub_29E64D908(0, x1_0);
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64D86C(0, v7);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = v30 - v14;
  sub_29E64D80C(0);
  v17 = MEMORY[0x2A1C7C4A8](v16 - 8);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = v30 - v20;
  sub_29E7544C8();
  v30[1] = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E64D3C8(v21);
  sub_29E7539A8();
  swift_getOpaqueTypeConformance2();
  v22 = v31;
  sub_29E753648();
  (*(v32 + 8))(v6, v22);
  sub_29E64D968(v21, v19);
  v34 = 1;
  v23 = *(v10 + 16);
  v23(v13, v15, v9);
  v24 = v33;
  sub_29E64D968(v19, v33);
  sub_29E64D794(0);
  v26 = v24 + *(v25 + 48);
  v27 = v34;
  *v26 = 0;
  *(v26 + 8) = v27;
  v23((v24 + *(v25 + 64)), v13, v9);
  v28 = *(v10 + 8);
  v28(v15, v9);
  sub_29E64D9CC(v21);
  v28(v13, v9);
  sub_29E64D9CC(v19);
}

uint64_t sub_29E64D3C8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  sub_29E64D80C(0);
  v43 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[3];
  v41 = v1[4];
  v42 = v6;
  if (v5)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (v5)
  {
    v8 = v5;
  }

  v38 = v8;
  v39 = v7;
  v47 = v7;
  v48 = v8;
  v37 = sub_29E60DE10();
  swift_bridgeObjectRetain_n();
  v9 = sub_29E753608();
  v11 = v10;
  v13 = v12;
  sub_29E753418();
  v14 = sub_29E7535D8();
  v16 = v15;
  v18 = v17;

  sub_29E60DB44(v9, v11, v13 & 1);

  sub_29E753458();
  v19 = sub_29E753598();
  v21 = v20;
  v23 = v22;
  sub_29E60DB44(v14, v16, v18 & 1);

  sub_29E7538C8();
  v24 = sub_29E7535A8();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_29E60DB44(v19, v21, v23 & 1);

  v47 = v24;
  v48 = v26;
  LOBYTE(v19) = v28 & 1;
  v49 = v28 & 1;
  v50 = v30;
  v45 = v39;
  v46 = v38;
  v31 = sub_29E753608();
  v33 = v32;
  LOBYTE(v14) = v34;
  v35 = v40;
  sub_29E753758();
  sub_29E60DB44(v31, v33, v14 & 1);

  sub_29E60DB44(v24, v26, v19);

  v47 = v42;
  v48 = v41;

  MEMORY[0x29ED96C20](0x747865542ELL, 0xE500000000000000);
  sub_29E752C18();

  return sub_29E64D9CC(v35);
}

uint64_t sub_29E64D674@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_29E752EF8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_29E64D6D4(0);
  return sub_29E64D084(a2 + *(v3 + 44), v4);
}

void sub_29E64D6D4(uint64_t a1)
{
  if (!qword_2A1857B98)
  {
    sub_29E64D73C(255);
    v1 = sub_29E752B08();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857B98);
    }
  }
}

void sub_29E64D73C(uint64_t a1)
{
  if (!qword_2A1857BA0)
  {
    sub_29E64D794(255);
    v1 = sub_29E753C78();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857BA0);
    }
  }
}

void sub_29E64D794(uint64_t a1)
{
  if (!qword_2A1857BA8)
  {
    sub_29E64D80C(255);
    sub_29E64D86C(255, v1);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1857BA8);
    }
  }
}

void sub_29E64D80C(uint64_t a1)
{
  if (!qword_2A1857BB0)
  {
    sub_29E7532F8();
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857BB0);
    }
  }
}

void sub_29E64D86C(uint64_t a1, uint64_t a2)
{
  if (!qword_2A1857BB8)
  {
    sub_29E64D908(255, a2);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857BB8);
    }
  }
}

void sub_29E64D908(uint64_t a1, uint64_t a2)
{
  if (!qword_2A1857BC0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857BC0);
    }
  }
}

uint64_t sub_29E64D968(uint64_t a1, uint64_t a2)
{
  sub_29E64D80C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E64D9CC(uint64_t a1)
{
  sub_29E64D80C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E64DA28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E64DA70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29E64DAC8(uint64_t a1)
{
  if (!qword_2A1857BD0)
  {
    sub_29E64D73C(255);
    sub_29E64DB5C(&qword_2A1857BD8, sub_29E64D73C, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753A78();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857BD0);
    }
  }
}

uint64_t sub_29E64DB5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29E64DBA8()
{
  result = qword_2A1857BE0;
  if (!qword_2A1857BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857BE0);
  }

  return result;
}

void sub_29E64DC4C(uint64_t a1)
{
  sub_29E631834(319);
  if (v1 <= 0x3F)
  {
    sub_29E650114(319, &unk_2A18590D0, MEMORY[0x29EDC9BA8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E64DD04(uint64_t a1)
{
  v2 = type metadata accessor for SleepScoreRoomScoreBreakdown(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[1] = sub_29E74EFC8();
  swift_getKeyPath();
  sub_29E64EAD0(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepScoreRoomScoreBreakdown);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_29E650798(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for SleepScoreRoomScoreBreakdown);
  sub_29E64E7F4(0);
  sub_29E64E828(0);
  sub_29E650800(&qword_2A1857C20, sub_29E64E7F4, MEMORY[0x29EDC9A80]);
  sub_29E650800(&qword_2A1857C28, MEMORY[0x29EDC6910], MEMORY[0x29EDC6918]);
  sub_29E64E8C4();
  sub_29E753B38();
}

uint64_t sub_29E64DF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v53 = a1;
  sub_29E65029C(0, &qword_2A1857C18, type metadata accessor for ComponentRow, MEMORY[0x29EDBC498]);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v46 - v5;
  sub_29E64E828(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E631834(0);
  v10 = MEMORY[0x2A1C7C4A8](v9 - 8);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v46 - v12;
  v46 = sub_29E74F688();
  v14 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v48 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = a2;
  sub_29E64EAD0(a2, v13, sub_29E631834);
  v18 = sub_29E74F2D8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v13, 1, v18) == 1)
  {
    sub_29E650848(v13, sub_29E631834);
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  else
  {
    sub_29E74F268();
    (*(v19 + 8))(v13, v18);
    v21 = sub_29E74F658();
    v22 = v23;
    (*(v14 + 8))(v16, v46);
  }

  v24 = type metadata accessor for SleepScoreRoomScoreBreakdown(0);
  v25 = v17;
  v26 = *(v17 + *(v24 + 20));
  if (v26)
  {
    goto LABEL_10;
  }

  v27 = v17;
  v28 = v47;
  sub_29E64EAD0(v27, v47, sub_29E631834);
  if (v20(v28, 1, v18) != 1)
  {
    sub_29E650848(v28, sub_29E631834);
LABEL_10:
    v32 = v25 + *(v24 + 24);
    v33 = *v32;
    v34 = *(v32 + 8);
    v35 = sub_29E74EFE8();
    (*(*(v35 - 8) + 16))(v6, v53, v35);
    v36 = type metadata accessor for ComponentRow(0);
    v37 = &v6[v36[5]];
    *v37 = v21;
    v37[1] = v22;
    v6[v36[6]] = v26;
    v38 = &v6[v36[7]];
    *v38 = v33;
    v38[8] = v34;
    v39 = sub_29E7533C8();
    sub_29E7529C8();
    v30 = v51;
    v40 = &v6[*(v51 + 36)];
    *v40 = v39;
    *(v40 + 1) = v41;
    *(v40 + 2) = v42;
    *(v40 + 3) = v43;
    *(v40 + 4) = v44;
    v40[40] = 0;
    v31 = v49;
    sub_29E64EB38(v6, v49);
    v29 = 0;
    goto LABEL_11;
  }

  sub_29E650848(v28, sub_29E631834);
  v29 = 1;
  v30 = v51;
  v31 = v49;
LABEL_11:
  (*(v50 + 56))(v31, v29, 1, v30);
  sub_29E650798(v31, v52, sub_29E64E828);
}

uint64_t sub_29E64E46C()
{
  v1 = sub_29E7532D8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64E648(0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = sub_29E752FF8();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_29E6504E8(0, &qword_2A1857C50, sub_29E64E6F0, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  sub_29E64DD04(v0);
  sub_29E7532C8();
  sub_29E650800(&qword_2A1857C58, sub_29E64E648, MEMORY[0x29EDBCB58]);
  sub_29E753808();
  (*(v2 + 8))(v4, v1);
  return sub_29E650848(v7, sub_29E64E648);
}

void sub_29E64E648(uint64_t a1)
{
  if (!qword_2A1857BF8)
  {
    sub_29E64E6F0(255);
    sub_29E64E90C(&qword_2A1857C30, sub_29E64E6F0, sub_29E64E8C4, MEMORY[0x29EDBCBA0]);
    v1 = sub_29E753AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857BF8);
    }
  }
}

void sub_29E64E6F0(uint64_t a1)
{
  if (!qword_2A1857C00)
  {
    sub_29E64E7F4(255);
    sub_29E74EFE8();
    sub_29E64E828(255);
    sub_29E650800(&qword_2A1857C20, sub_29E64E7F4, MEMORY[0x29EDC9A80]);
    sub_29E650800(&qword_2A1857C28, MEMORY[0x29EDC6910], MEMORY[0x29EDC6918]);
    v1 = sub_29E753B58();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857C00);
    }
  }
}

void sub_29E64E828(uint64_t a1)
{
  if (!qword_2A1857C10)
  {
    sub_29E65029C(255, &qword_2A1857C18, type metadata accessor for ComponentRow, MEMORY[0x29EDBC498]);
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857C10);
    }
  }
}

uint64_t sub_29E64E90C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E64E97C()
{
  result = qword_2A1857C40;
  if (!qword_2A1857C40)
  {
    sub_29E65029C(255, &qword_2A1857C18, type metadata accessor for ComponentRow, MEMORY[0x29EDBC498]);
    sub_29E650800(&qword_2A1857C48, type metadata accessor for ComponentRow, &unk_29E766760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857C40);
  }

  return result;
}

uint64_t sub_29E64EA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SleepScoreRoomScoreBreakdown(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29E64DF60(a1, v6, a2);
}

uint64_t sub_29E64EAD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E64EB38(uint64_t a1, uint64_t a2)
{
  sub_29E65029C(0, &qword_2A1857C18, type metadata accessor for ComponentRow, MEMORY[0x29EDBC498]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E64EBE8(uint64_t a1)
{
  sub_29E74EFE8();
  if (v1 <= 0x3F)
  {
    sub_29E650114(319, &unk_2A18590D0, MEMORY[0x29EDC9BA8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E64ECB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a1;
  v116 = a2;
  v115 = sub_29E752C88();
  v114 = *(v115 - 8);
  MEMORY[0x2A1C7C4A8](v115);
  v113 = v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E650554(0);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v101 = v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E650588(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v102 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637C08(0);
  v103 = v7;
  v100 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v95 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E74E9F8();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v98 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_29E74E998();
  MEMORY[0x2A1C7C4A8](v99);
  v118 = v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6501F4(0);
  v111 = v12;
  v110 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v108 = v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E650160(0);
  v107 = v14;
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v112 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v106 = v94 - v18;
  MEMORY[0x2A1C7C4A8](v17);
  v109 = v94 - v19;
  v20 = sub_29E7534D8();
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v23 = v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65029C(0, &qword_2A1857898, sub_29E638064, MEMORY[0x29EDBC498]);
  v97 = v24;
  v25 = MEMORY[0x2A1C7C4A8](v24);
  v105 = v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25);
  v119 = (v94 - v27);
  sub_29E7544C8();
  v104 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = sub_29E7539B8();
  sub_29E637F00(0);
  v30 = v119;
  v31 = (v119 + *(v29 + 36));
  sub_29E6505F0(0, &qword_2A1857510, MEMORY[0x29EDBCAE8], MEMORY[0x29EDBC938]);
  v33 = *(v32 + 28);
  v34 = *MEMORY[0x29EDBCAD8];
  v35 = sub_29E7539D8();
  (*(*(v35 - 8) + 104))(v31 + v33, v34, v35);
  *v31 = swift_getKeyPath();
  *v30 = v28;
  sub_29E753428();
  v36 = *MEMORY[0x29EDBC9A8];
  v117 = *(v21 + 104);
  v94[1] = v21 + 104;
  v117(v23, v36, v20);
  v37 = sub_29E7534E8();
  v96 = v20;
  v38 = v37;

  v39 = *(v21 + 8);
  v39(v23, v20);
  KeyPath = swift_getKeyPath();
  sub_29E637F94(0);
  v42 = (v30 + *(v41 + 36));
  *v42 = KeyPath;
  v42[1] = v38;
  v43 = v120;
  v44 = sub_29E74EF98();
  sub_29E638064(0);
  *(v30 + *(v45 + 36)) = v44;
  LOBYTE(v44) = sub_29E7533E8();
  sub_29E7529C8();
  v46 = v30 + v97[9];
  *v46 = v44;
  *(v46 + 1) = v47;
  *(v46 + 2) = v48;
  *(v46 + 3) = v49;
  *(v46 + 4) = v50;
  v46[40] = 0;
  sub_29E64FA48();
  sub_29E74E9E8();
  sub_29E74E9A8();
  sub_29E753428();
  LODWORD(v98) = v36;
  v51 = v36;
  v52 = v96;
  v117(v23, v51, v96);
  sub_29E7534E8();

  v97 = v39;
  v39(v23, v52);
  sub_29E753478();
  v53 = sub_29E7534C8();

  *&v123 = v53;
  sub_29E637B04();
  sub_29E74E9B8();
  v54 = type metadata accessor for ComponentRow(0);
  v55 = (v43 + v54[5]);
  v56 = v55[1];
  *&v123 = *v55;
  *(&v123 + 1) = v56;
  v57 = sub_29E74EDA8();
  v58 = v101;
  (*(*(v57 - 8) + 56))(v101, 1, 1, v57);
  sub_29E650800(&qword_2A1857CE0, MEMORY[0x29EDB9A78], MEMORY[0x29EDB9A70]);
  sub_29E60DE10();

  v59 = v102;
  sub_29E74EA58();
  sub_29E650848(v58, sub_29E650554);

  if ((*(v100 + 48))(v59, 1, v103) == 1)
  {
    v60 = sub_29E650588;
    v61 = v59;
  }

  else
  {
    v62 = v95;
    sub_29E650798(v59, v95, sub_29E637C08);
    sub_29E753428();
    v117(v23, v98, v52);
    v63 = sub_29E7534E8();

    (v97)(v23, v52);
    sub_29E650800(&qword_2A1857830, sub_29E637C08, MEMORY[0x29EDC9C40]);
    v64 = sub_29E74E9C8();
    *&v121[0] = v63;
    sub_29E74EA08();
    v64(&v123, 0);
    v60 = sub_29E637C08;
    v61 = v62;
  }

  sub_29E650848(v61, v60);
  v65 = v113;
  v66 = sub_29E7535F8();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v120;
  v74 = v120 + v54[7];
  v75 = *v74;
  v76 = *(v74 + 8);
  v77 = swift_getKeyPath();
  v127 = v70 & 1;
  v126 = v76;
  *&v123 = v66;
  *(&v123 + 1) = v68;
  LOBYTE(v124) = v70 & 1;
  *(&v124 + 1) = v72;
  *v125 = v77;
  *&v125[8] = v75;
  v125[16] = v76;
  *&v125[17] = 256;
  v78 = *(v73 + v54[6]);
  if (v78 == 1)
  {
    sub_29E752C78();
    v79 = v115;
  }

  else
  {
    *&v121[0] = MEMORY[0x29EDCA190];
    sub_29E650800(&qword_2A1857CE8, MEMORY[0x29EDBC588], MEMORY[0x29EDBC590]);
    sub_29E6505BC(0);
    sub_29E650800(&qword_2A1857CF8, sub_29E6505BC, MEMORY[0x29EDC9A70]);
    v79 = v115;
    sub_29E754C58();
  }

  v80 = MEMORY[0x29EDBC5E8];
  sub_29E65029C(0, &qword_2A1857720, sub_29E637234, MEMORY[0x29EDBC5E8]);
  sub_29E650300();
  v81 = v108;
  sub_29E7538A8();
  (*(v114 + 8))(v65, v79);
  v121[0] = v123;
  v121[1] = v124;
  *v122 = *v125;
  *&v122[15] = *&v125[15];
  sub_29E650654(v121, &qword_2A1857720, sub_29E637234, v80);
  v82 = sub_29E753C68();
  v83 = v106;
  (*(v110 + 32))(v106, v81, v111);
  v84 = &v83[*(v107 + 36)];
  *v84 = v82;
  v84[8] = v78;
  v85 = v83;
  v86 = v109;
  sub_29E5F35B0(v85, v109);
  v87 = v119;
  v88 = v105;
  sub_29E6506B0(v119, v105);
  v89 = v112;
  sub_29E5F3614(v86, v112);
  v90 = v116;
  sub_29E6506B0(v88, v116);
  sub_29E650028(0);
  sub_29E5F3614(v89, v90 + *(v91 + 48));
  sub_29E650738(v86, sub_29E650160);
  v92 = MEMORY[0x29EDBC498];
  sub_29E650654(v87, &qword_2A1857898, sub_29E638064, MEMORY[0x29EDBC498]);
  sub_29E650738(v89, sub_29E650160);
  sub_29E650654(v88, &qword_2A1857898, sub_29E638064, v92);
}

uint64_t sub_29E64FA48()
{
  v1 = sub_29E754188();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E754168();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E74EFE8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v0, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x29EDC6908] || v10 == *MEMORY[0x29EDC6900] || v10 == *MEMORY[0x29EDC68F8])
  {
    sub_29E754158();
    sub_29E754148();
    type metadata accessor for ComponentRow(0);
    sub_29E754138();
    sub_29E754148();
    sub_29E754178();
    v11 = sub_29E65B0B4(v4);
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  return v11;
}

uint64_t sub_29E64FD84()
{
  v1 = sub_29E7532D8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64FF60(0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = sub_29E752ED8();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_29E6504E8(0, &qword_2A1857CC0, sub_29E64FFF4, MEMORY[0x29EDBC418], MEMORY[0x29EDBC410]);
  sub_29E64ECB0(v0, &v7[*(v8 + 44)]);
  sub_29E7532C8();
  sub_29E650800(&qword_2A1857CC8, sub_29E64FF60, MEMORY[0x29EDBCB30]);
  sub_29E753808();
  (*(v2 + 8))(v4, v1);
  return sub_29E650738(v7, sub_29E64FF60);
}

void sub_29E64FF60(uint64_t a1)
{
  if (!qword_2A1857C70)
  {
    sub_29E64FFF4(255);
    sub_29E650800(&qword_2A1857CB8, sub_29E64FFF4, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753A78();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857C70);
    }
  }
}

void sub_29E650028(uint64_t a1)
{
  if (!qword_2A1857C80)
  {
    sub_29E65029C(255, &qword_2A1857898, sub_29E638064, MEMORY[0x29EDBC498]);
    sub_29E650160(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1857C80);
    }
  }
}

void sub_29E6500BC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29E650114(255, a3, a4);
    v5 = sub_29E7532E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E650114(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E650160(uint64_t a1)
{
  if (!qword_2A1857C88)
  {
    sub_29E6501F4(255);
    sub_29E650494(255, &qword_2A1857CB0, MEMORY[0x29EDC9A98], MEMORY[0x29EDC9AB0], MEMORY[0x29EDBC700]);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857C88);
    }
  }
}

void sub_29E6501F4(uint64_t a1)
{
  if (!qword_2A1857C90)
  {
    sub_29E65029C(255, &qword_2A1857720, sub_29E637234, MEMORY[0x29EDBC5E8]);
    sub_29E650300();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857C90);
    }
  }
}

void sub_29E65029C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29E752C28();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29E650300()
{
  result = qword_2A1857C98;
  if (!qword_2A1857C98)
  {
    sub_29E65029C(255, &qword_2A1857720, sub_29E637234, MEMORY[0x29EDBC5E8]);
    sub_29E6503A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857C98);
  }

  return result;
}

unint64_t sub_29E6503A4()
{
  result = qword_2A1857CA0;
  if (!qword_2A1857CA0)
  {
    sub_29E637234(255);
    sub_29E650424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857CA0);
  }

  return result;
}

unint64_t sub_29E650424()
{
  result = qword_2A1857CA8;
  if (!qword_2A1857CA8)
  {
    sub_29E6500BC(255, &qword_2A1857730, &unk_2A18590D0, MEMORY[0x29EDC9BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857CA8);
  }

  return result;
}

void sub_29E650494(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E6504E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_29E752B08();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E6505F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E650654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_29E65029C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29E6506B0(uint64_t a1, uint64_t a2)
{
  sub_29E65029C(0, &qword_2A1857898, sub_29E638064, MEMORY[0x29EDBC498]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E650738(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E650798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E650800(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E650848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E6508A8(uint64_t a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2(255);
  sub_29E650800(a3, a4, a5);
  return swift_getOpaqueTypeConformance2();
}

void sub_29E65096C(uint64_t a1)
{
  type metadata accessor for SleepScoreGalleryModelProvider(319);
  if (v1 <= 0x3F)
  {
    sub_29E650A80();
    if (v2 <= 0x3F)
    {
      sub_29E65AA54(319, &qword_2A1A7BEF0, type metadata accessor for HKWidthDesignation, MEMORY[0x29EDBC390]);
      if (v3 <= 0x3F)
      {
        sub_29E65AA54(319, &qword_2A1A7BEF8, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_29E650A80()
{
  result = qword_2A1A7BCC0;
  if (!qword_2A1A7BCC0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2A1A7BCC0);
  }

  return result;
}

uint64_t sub_29E650AEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E752EB8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDB9D18];
  v8 = MEMORY[0x29EDBC388];
  sub_29E65AA54(0, &qword_2A1856970, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for SleepScoreGalleryScreen(0);
  sub_29E658E68(v1 + *(v12 + 28), v11, &qword_2A1856970, v7, v8, sub_29E65AA54);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_29E74EE78();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_29E7546B8();
    v15 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_29E650D34()
{
  v1 = sub_29E752EB8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  if ((*(v0 + 32) & 1) == 0)
  {

    sub_29E7546B8();
    v6 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v5, 0);
    (*(v2 + 8))(v4, v1);
    v5 = v9;
  }

  if ((v5 - 1) < 6)
  {
    return (0x38u >> (v5 - 1)) & 1;
  }

  type metadata accessor for HKWidthDesignation(0);
  v9 = v5;
  result = sub_29E755048();
  __break(1u);
  return result;
}

uint64_t sub_29E650EB0()
{
  v1 = sub_29E752EB8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  if ((*(v0 + 32) & 1) == 0)
  {

    sub_29E7546B8();
    v6 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v5, 0);
    (*(v2 + 8))(v4, v1);
    v5 = v9;
  }

  if ((v5 - 1) < 6)
  {
    return qword_29E766D10[v5 - 1];
  }

  type metadata accessor for HKWidthDesignation(0);
  v9 = v5;
  result = sub_29E755048();
  __break(1u);
  return result;
}

uint64_t sub_29E65102C()
{
  v1 = sub_29E752EB8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  if ((*(v0 + 32) & 1) == 0)
  {

    sub_29E7546B8();
    v6 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v5, 0);
    (*(v2 + 8))(v4, v1);
    v5 = v9;
  }

  if ((v5 - 1) < 6)
  {
    return qword_29E766D40[v5 - 1];
  }

  type metadata accessor for HKWidthDesignation(0);
  v9 = v5;
  result = sub_29E755048();
  __break(1u);
  return result;
}

uint64_t sub_29E6511A8()
{
  v1 = sub_29E752EB8();
  v2 = *(v1 - 8);
  result = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  if ((*(v0 + 32) & 1) == 0)
  {

    sub_29E7546B8();
    v7 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v6, 0);
    result = (*(v2 + 8))(v5, v1);
    v6 = v9;
  }

  if ((v6 - 1) >= 6)
  {
    type metadata accessor for HKWidthDesignation(0);
    v9 = v6;
    result = sub_29E755048();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E651324@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  sub_29E653908(0);
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v3 = &v26[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E6538E0(0);
  v29 = v4;
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v26[-v9];
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v26[-v11];
  sub_29E7544C8();
  v32 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E609B5C(0, &qword_2A1A7BD48, 0x29EDC7A00);
  v13 = objc_opt_self();
  v14 = [v13 secondarySystemBackgroundColor];
  v15 = [v13 systemBackgroundColor];
  sub_29E754B38();

  v16 = sub_29E7538E8();
  v28 = sub_29E752C58();
  v27 = sub_29E7533A8();
  v17 = sub_29E753388();
  MEMORY[0x2A1C7C4A8](v17);
  sub_29E65399C(0);
  sub_29E65AFE8(&qword_2A1857E28, sub_29E65399C, MEMORY[0x29EDBCB58]);
  sub_29E752A08();
  sub_29E753C48();
  sub_29E752CA8();
  (*(v30 + 32))(v10, v3, v31);
  v18 = &v10[*(v29 + 36)];
  v19 = v39;
  v18[4] = v38;
  v18[5] = v19;
  v18[6] = v40;
  v20 = v35;
  *v18 = v34;
  v18[1] = v20;
  v21 = v37;
  v18[2] = v36;
  v18[3] = v21;
  sub_29E5F3874(v10, v12);
  sub_29E658E00(v12, v7, sub_29E6538E0);
  v22 = v33;
  v23 = v28;
  *v33 = v16;
  v22[1] = v23;
  *(v22 + 16) = v27;
  sub_29E653858(0);
  sub_29E658E00(v7, v22 + *(v24 + 48), sub_29E6538E0);

  sub_29E65ACE0(v12, sub_29E6538E0);
  sub_29E65ACE0(v7, sub_29E6538E0);
}

uint64_t sub_29E651754@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_29E752FF8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_29E65454C(0, &qword_2A1857E30, sub_29E653A30, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  sub_29E651848(a1, a2 + *(v4 + 44));
}

uint64_t sub_29E651848@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v203 = a1;
  v197 = a2;
  sub_29E65449C(0);
  v195 = v2;
  v3 = MEMORY[0x2A1C7C4A8](v2);
  v198 = &v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v196 = &v166 - v5;
  sub_29E653F40(0);
  v167 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v168 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E653EF8(0);
  v192 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v169 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65974C(0, &qword_2A1857E38, sub_29E653D10, sub_29E653EF8, MEMORY[0x29EDBC7E8]);
  v189 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v191 = &v166 - v11;
  sub_29E653D10(0);
  v190 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v166 = (&v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E653CC8(0);
  v15 = MEMORY[0x2A1C7C4A8](v14 - 8);
  v194 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v200 = &v166 - v17;
  sub_29E6545B8(0);
  v186 = v18;
  v19 = MEMORY[0x2A1C7C4A8](v18);
  v184 = &v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v185 = &v166 - v21;
  v187 = type metadata accessor for SleepScoreGallery(0);
  v22 = MEMORY[0x2A1C7C4A8](v187);
  v193 = &v166 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v202 = &v166 - v24;
  v25 = sub_29E752FB8();
  v182 = *(v25 - 8);
  v183 = v25;
  MEMORY[0x2A1C7C4A8](v25);
  v181 = &v166 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_29E754048();
  v27 = *(v172 - 8);
  MEMORY[0x2A1C7C4A8](v172);
  v29 = &v166 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_29E74ED28();
  v30 = *(v171 - 8);
  v31 = MEMORY[0x2A1C7C4A8](v171);
  v33 = (&v166 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v31);
  v35 = (&v166 - v34);
  v170 = sub_29E74EE78();
  v36 = *(v170 - 8);
  MEMORY[0x2A1C7C4A8](v170);
  v38 = &v166 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E653C28(0);
  v177 = v39;
  MEMORY[0x2A1C7C4A8](v39);
  v179 = &v166 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65974C(0, &qword_2A1857D50, sub_29E653C28, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
  MEMORY[0x2A1C7C4A8](v41 - 8);
  v174 = &v166 - v42;
  sub_29E653B84(0);
  v173 = v43;
  MEMORY[0x2A1C7C4A8](v43);
  v178 = &v166 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E653AF8(0);
  v176 = v45;
  v46 = MEMORY[0x2A1C7C4A8](v45);
  v199 = &v166 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x2A1C7C4A8](v46);
  v175 = &v166 - v49;
  MEMORY[0x2A1C7C4A8](v48);
  v201 = &v166 - v50;
  sub_29E7544C8();
  v188 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v51 = v203;
  sub_29E650AEC(v38);
  v52 = *v51;
  sub_29E67FDF0(v29);
  v180 = v52;
  sub_29E754038();
  (*(v27 + 8))(v29, v172);
  sub_29E74ECE8();
  v53 = sub_29E66B0E8(v35, v33);
  v55 = v54;
  v56 = *(v30 + 8);
  v57 = v33;
  v58 = v171;
  v56(v57, v171);
  v56(v35, v58);
  (*(v36 + 8))(v38, v170);
  *&v204 = v53;
  *(&v204 + 1) = v55;
  sub_29E60DE10();
  v59 = sub_29E753608();
  v61 = v60;
  v63 = v62;
  sub_29E7534A8();
  v64 = sub_29E7535D8();
  v66 = v65;
  v68 = v67;

  sub_29E60DB44(v59, v61, v63 & 1);

  sub_29E753458();
  v69 = sub_29E753598();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  sub_29E60DB44(v64, v66, v68 & 1);

  if (sub_29E650D34())
  {
    sub_29E753C48();
  }

  else
  {
    sub_29E753C58();
  }

  sub_29E752CA8();
  v76 = v73 & 1;
  v211 = v76;
  sub_29E753398();
  v77 = v203;
  sub_29E652C84();
  sub_29E7529C8();
  v225 = v78;
  v226 = v79;
  v227 = v80;
  v228 = v81;
  v229 = 0;
  v82 = v179;
  sub_29E753258();
  *v82 = v69;
  *(v82 + 8) = v71;
  *(v82 + 16) = v76;
  *(v82 + 24) = v75;
  v83 = v209;
  *(v82 + 96) = v208;
  *(v82 + 112) = v83;
  *(v82 + 128) = v210;
  v84 = v205;
  *(v82 + 32) = v204;
  *(v82 + 48) = v84;
  v85 = v207;
  *(v82 + 64) = v206;
  *(v82 + 80) = v85;
  v86 = v181;
  sub_29E752FA8();
  sub_29E654288(&qword_2A1857E48, sub_29E653C28, sub_29E65402C);
  v87 = v174;
  sub_29E753828();
  (*(v182 + 8))(v86, v183);
  sub_29E65AD40(v82, sub_29E653C28);
  LOBYTE(v82) = sub_29E7533C8();
  sub_29E7529C8();
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v96 = v178;
  sub_29E658988(v87, v178);
  v97 = v96 + *(v173 + 36);
  *v97 = v82;
  *(v97 + 8) = v89;
  *(v97 + 16) = v91;
  *(v97 + 24) = v93;
  *(v97 + 32) = v95;
  *(v97 + 40) = 0;
  LOBYTE(v82) = sub_29E753398();
  sub_29E74F1A8();
  sub_29E7529C8();
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v106 = v96;
  v107 = v175;
  sub_29E658A30(v106, v175, sub_29E653B84);
  v108 = v107 + *(v176 + 36);
  *v108 = v82;
  *(v108 + 8) = v99;
  *(v108 + 16) = v101;
  *(v108 + 24) = v103;
  *(v108 + 32) = v105;
  *(v108 + 40) = 0;
  sub_29E658A30(v107, v201, sub_29E653AF8);

  LODWORD(v183) = sub_29E650D34();
  v182 = sub_29E650EB0();
  v179 = sub_29E65102C();
  sub_29E6511A8();
  v110 = v109;
  v111 = v77[2];
  v181 = v77[1];
  KeyPath = swift_getKeyPath();
  type metadata accessor for SleepScoreGalleryModelProvider(0);
  sub_29E65AFE8(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider, &unk_29E768038);

  v113 = v202;
  sub_29E753BD8();
  v114 = v187;
  v115 = type metadata accessor for SleepScoreGallery.Sheet(0);
  v116 = v185;
  (*(*(v115 - 8) + 56))(v185, 1, 1, v115);
  sub_29E65AAB8(v116, v184, sub_29E6545B8);
  sub_29E7539F8();
  sub_29E65AD40(v116, sub_29E6545B8);
  v117 = v113 + v114[6];
  *v117 = KeyPath;
  *(v117 + 8) = 0;
  *(v113 + v114[7]) = v183 & 1;
  *(v113 + v114[8]) = v182;
  *(v113 + v114[9]) = v179;
  *(v113 + v114[10]) = v110;
  *(v113 + v114[11]) = 0x4034000000000000;
  v118 = (v113 + v114[12]);
  *v118 = v181;
  v118[1] = v111;
  if (sub_29E650D34())
  {
    v119 = sub_29E752EF8();
    v120 = v166;
    *v166 = v119;
    *(v120 + 8) = 0;
    *(v120 + 16) = 1;
    sub_29E65454C(0, &qword_2A1857E68, sub_29E653DA4, MEMORY[0x29EDBC418], MEMORY[0x29EDBC410]);
    sub_29E652DCC((v120 + *(v121 + 44)));
    sub_29E658E00(v120, v191, sub_29E653D10);
    swift_storeEnumTagMultiPayload();
    sub_29E65AFE8(&qword_2A1857E60, sub_29E653D10, MEMORY[0x29EDBCB30]);
    sub_29E654288(&qword_2A1857DD8, sub_29E653EF8, sub_29E65433C);
    v122 = v200;
    sub_29E753118();
    sub_29E65ACE0(v120, sub_29E653D10);
  }

  else
  {
    sub_29E659388(0, &qword_2A1857D60, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8]);
    sub_29E65402C();

    v123 = v168;
    sub_29E753A28();
    v124 = sub_29E7533A8();
    v222 = 0u;
    v223 = 0u;
    v224 = 1;
    sub_29E653F88(0);
    v126 = v123 + *(v125 + 36);
    *v126 = v124;
    *(v126 + 8) = 0u;
    *(v126 + 24) = 0u;
    *(v126 + 40) = 1;
    sub_29E74F198();
    v128 = v127;
    v129 = (v123 + *(v167 + 36));
    v130 = *(sub_29E752C98() + 20);
    v131 = *MEMORY[0x29EDBC6F8];
    v132 = sub_29E752F78();
    (*(*(v132 - 8) + 104))(&v129[v130], v131, v132);
    *v129 = v128;
    *(v129 + 1) = v128;
    v133 = [objc_opt_self() systemGray5Color];
    v134 = sub_29E7538E8();
    v135 = swift_getKeyPath();
    sub_29E65974C(0, &qword_2A1857DC0, MEMORY[0x29EDBC5C0], sub_29E629454, MEMORY[0x29EDBC558]);
    v137 = &v129[*(v136 + 36)];
    *v137 = v135;
    v137[1] = v134;
    v138 = sub_29E753C48();
    v140 = v139;
    sub_29E6540BC(0);
    v142 = &v129[*(v141 + 36)];
    *v142 = v138;
    v142[1] = v140;
    sub_29E65A614(0, &qword_2A1857E58, MEMORY[0x29EDBC970], MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E762F40;
    LOBYTE(v138) = sub_29E753398();
    *(inited + 32) = v138;
    v144 = sub_29E7533B8();
    *(inited + 33) = v144;
    sub_29E7533D8();
    sub_29E7533D8();
    v145 = sub_29E7533D8();
    v146 = v200;
    if (v145 != v138)
    {
      sub_29E7533D8();
    }

    sub_29E7533D8();
    if (sub_29E7533D8() != v144)
    {
      sub_29E7533D8();
    }

    v147 = v169;
    sub_29E753258();
    sub_29E658A30(v123, v147, sub_29E653F40);
    sub_29E65AAB8(v147, v191, sub_29E653EF8);
    swift_storeEnumTagMultiPayload();
    sub_29E65AFE8(&qword_2A1857E60, sub_29E653D10, MEMORY[0x29EDBCB30]);
    sub_29E654288(&qword_2A1857DD8, sub_29E653EF8, sub_29E65433C);
    v122 = v146;
    sub_29E753118();
    sub_29E65AD40(v147, sub_29E653EF8);
  }

  sub_29E753398();
  sub_29E652C84();
  sub_29E7529C8();
  v217 = v148;
  v218 = v149;
  v219 = v150;
  v220 = v151;
  v221 = 0;
  v152 = v196;
  sub_29E753258();
  sub_29E7533F8();
  sub_29E7529C8();
  v212 = v153;
  v213 = v154;
  v214 = v155;
  v215 = v156;
  v216 = 0;
  sub_29E753258();
  v157 = v199;
  sub_29E65AAB8(v201, v199, sub_29E653AF8);
  v158 = v193;
  sub_29E65AAB8(v202, v193, type metadata accessor for SleepScoreGallery);
  v159 = v194;
  sub_29E658E00(v122, v194, sub_29E653CC8);
  v160 = v198;
  sub_29E65AAB8(v152, v198, sub_29E65449C);
  v161 = v157;
  v162 = v197;
  sub_29E65AAB8(v161, v197, sub_29E653AF8);
  sub_29E653A64(0);
  v164 = v163;
  sub_29E65AAB8(v158, v162 + *(v163 + 48), type metadata accessor for SleepScoreGallery);
  sub_29E658E00(v159, v162 + *(v164 + 64), sub_29E653CC8);
  sub_29E65AAB8(v160, v162 + *(v164 + 80), sub_29E65449C);
  sub_29E65AD40(v152, sub_29E65449C);
  sub_29E65ACE0(v200, sub_29E653CC8);
  sub_29E65AD40(v202, type metadata accessor for SleepScoreGallery);
  sub_29E65AD40(v201, sub_29E653AF8);
  sub_29E65AD40(v160, sub_29E65449C);
  sub_29E65ACE0(v159, sub_29E653CC8);
  sub_29E65AD40(v158, type metadata accessor for SleepScoreGallery);
  sub_29E65AD40(v199, sub_29E653AF8);
}

double sub_29E652C84()
{
  v1 = sub_29E752EB8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 32) & 1) == 0)
  {
    v5 = *(v0 + 24);

    sub_29E7546B8();
    v6 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v5, 0);
    (*(v2 + 8))(v4, v1);
  }

  sub_29E754A18();
  return v7;
}

uint64_t sub_29E652DCC@<X0>(void *a2@<X8>)
{
  v51 = a2;
  sub_29E653F40(0);
  v3 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E653EF8(0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E653E44(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v50 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v48 = &v47 - v14;
  sub_29E7544C8();
  v49 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E659388(0, &qword_2A1857D60, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8]);
  sub_29E65402C();

  sub_29E753A28();
  v15 = sub_29E7533A8();
  v54 = 0u;
  v55 = 0u;
  v56 = 1;
  sub_29E653F88(0);
  v17 = &v5[*(v16 + 36)];
  *v17 = v15;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  v17[40] = 1;
  sub_29E74F198();
  v19 = v18;
  v20 = &v5[*(v3 + 36)];
  v21 = *(sub_29E752C98() + 20);
  v22 = *MEMORY[0x29EDBC6F8];
  v23 = sub_29E752F78();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  *v20 = v19;
  *(v20 + 1) = v19;
  v24 = [objc_opt_self() systemGray5Color];
  v25 = sub_29E7538E8();
  KeyPath = swift_getKeyPath();
  sub_29E65974C(0, &qword_2A1857DC0, MEMORY[0x29EDBC5C0], sub_29E629454, MEMORY[0x29EDBC558]);
  v28 = &v20[*(v27 + 36)];
  *v28 = KeyPath;
  v28[1] = v25;
  v29 = sub_29E753C48();
  v31 = v30;
  sub_29E6540BC(0);
  v33 = &v20[*(v32 + 36)];
  *v33 = v29;
  v33[1] = v31;
  sub_29E65A614(0, &qword_2A1857E58, MEMORY[0x29EDBC970], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E762F40;
  LOBYTE(v29) = sub_29E753398();
  *(inited + 32) = v29;
  v35 = sub_29E7533B8();
  *(inited + 33) = v35;
  sub_29E7533D8();
  sub_29E7533D8();
  if (sub_29E7533D8() != v29)
  {
    sub_29E7533D8();
  }

  sub_29E7533D8();
  if (sub_29E7533D8() != v35)
  {
    sub_29E7533D8();
  }

  sub_29E753258();
  sub_29E658A30(v5, v8, sub_29E653F40);
  sub_29E753368();
  sub_29E650EB0();
  sub_29E65102C();
  sub_29E6511A8();
  sub_29E753C48();
  sub_29E654288(&qword_2A1857DD8, sub_29E653EF8, sub_29E65433C);
  v36 = v48;
  sub_29E753838();
  sub_29E65AD40(v8, sub_29E653EF8);
  v53 = 1;
  v37 = *(v11 + 16);
  v38 = v50;
  v37(v50, v36, v10);
  v52 = 1;
  v39 = v53;
  v40 = v51;
  *v51 = 0;
  *(v40 + 8) = v39;
  sub_29E653DD8(0);
  v42 = v41;
  v37(v40 + *(v41 + 48), v38, v10);
  v43 = v40 + *(v42 + 64);
  v44 = v52;
  *v43 = 0;
  v43[8] = v44;
  v45 = *(v11 + 8);
  v45(v36, v10);
  v45(v38, v10);
}

uint64_t sub_29E6533D0(uint64_t a1)
{
  v2 = sub_29E754048();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E74ED28();
  v7 = *(v6 - 8);
  result = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_showInChartsButtonHandler);
  if (v11)
  {
    v12 = *(a1 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_showInChartsButtonHandler + 8);

    sub_29E67FDF0(v5);
    sub_29E754038();
    (*(v3 + 8))(v5, v2);
    v11(v10);
    sub_29E6459B8(v11, v12);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

__n128 sub_29E653598@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_29E754188();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E754118();
  v6 = sub_29E65B0B4(v5);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *&v19 = v6;
  *(&v19 + 1) = v8;
  sub_29E60DE10();
  v9 = sub_29E753608();
  v11 = v10;
  LOBYTE(v6) = v12;
  v14 = v13;
  sub_29E753C48();
  sub_29E752CA8();

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v14;
  v15 = v24;
  *(a1 + 96) = v23;
  *(a1 + 112) = v15;
  *(a1 + 128) = v25;
  v16 = v20;
  *(a1 + 32) = v19;
  *(a1 + 48) = v16;
  result = v22;
  *(a1 + 64) = v21;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_29E6537B8@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_29E753C48();
  a2[1] = v3;
  sub_29E65454C(0, &qword_2A1857D00, sub_29E653824, MEMORY[0x29EDBC460], MEMORY[0x29EDBC458]);
  return sub_29E651324((a2 + *(v4 + 44)));
}

void sub_29E653858(uint64_t a1)
{
  if (!qword_2A1857D10)
  {
    sub_29E659388(255, &qword_2A1856B50, MEMORY[0x29EDBCA98], MEMORY[0x29EDBC950]);
    sub_29E6538E0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1857D10);
    }
  }
}

void sub_29E653908(uint64_t a1)
{
  if (!qword_2A1857D20)
  {
    sub_29E65399C(255);
    sub_29E65AFE8(&qword_2A1857E28, sub_29E65399C, MEMORY[0x29EDBCB58]);
    v1 = sub_29E7529F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857D20);
    }
  }
}

void sub_29E65399C(uint64_t a1)
{
  if (!qword_2A1857D28)
  {
    sub_29E653A30(255);
    sub_29E65AFE8(&qword_2A1857E20, sub_29E653A30, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857D28);
    }
  }
}

void sub_29E653A64(uint64_t a1)
{
  if (!qword_2A1857D38)
  {
    sub_29E653AF8(255);
    type metadata accessor for SleepScoreGallery(255);
    sub_29E653CC8(255);
    sub_29E65449C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2A1857D38);
    }
  }
}

void sub_29E653B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29E752C28();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E653B84(uint64_t a1)
{
  if (!qword_2A1857D48)
  {
    sub_29E65974C(255, &qword_2A1857D50, sub_29E653C28, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857D48);
    }
  }
}

void sub_29E653C28(uint64_t a1)
{
  if (!qword_2A1857D58)
  {
    sub_29E659388(255, &qword_2A1857D60, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8]);
    sub_29E753268();
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857D58);
    }
  }
}

void sub_29E653D10(uint64_t a1)
{
  if (!qword_2A1857D70)
  {
    sub_29E653DA4(255);
    sub_29E65AFE8(&qword_2A1857E08, sub_29E653DA4, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753A78();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857D70);
    }
  }
}

void sub_29E653DD8(uint64_t a1)
{
  if (!qword_2A1857D80)
  {
    sub_29E653E44(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1857D80);
    }
  }
}

void sub_29E653E44(uint64_t a1)
{
  if (!qword_2A1857D88)
  {
    sub_29E653EF8(255);
    sub_29E654288(&qword_2A1857DD8, sub_29E653EF8, sub_29E65433C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857D88);
    }
  }
}

void sub_29E653FB0(uint64_t a1)
{
  if (!qword_2A1857DA8)
  {
    sub_29E659388(255, &qword_2A1857D60, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8]);
    sub_29E65402C();
    v1 = sub_29E753A58();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857DA8);
    }
  }
}

unint64_t sub_29E65402C()
{
  result = qword_2A1857DB0;
  if (!qword_2A1857DB0)
  {
    sub_29E659388(255, &qword_2A1857D60, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857DB0);
  }

  return result;
}

void sub_29E6540BC(uint64_t a1)
{
  if (!qword_2A1857DB8)
  {
    sub_29E65974C(255, &qword_2A1857DC0, MEMORY[0x29EDBC5C0], sub_29E629454, MEMORY[0x29EDBC558]);
    sub_29E654164();
    v1 = sub_29E753108();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857DB8);
    }
  }
}

unint64_t sub_29E654164()
{
  result = qword_2A1857DC8;
  if (!qword_2A1857DC8)
  {
    sub_29E65974C(255, &qword_2A1857DC0, MEMORY[0x29EDBC5C0], sub_29E629454, MEMORY[0x29EDBC558]);
    sub_29E65AFE8(&qword_2A1857DD0, MEMORY[0x29EDBC5C0], MEMORY[0x29EDBC5B0]);
    sub_29E65AFE8(&qword_2A18573F0, sub_29E629454, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857DC8);
  }

  return result;
}

uint64_t sub_29E654288(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_29E65AFE8(&qword_2A1857E00, MEMORY[0x29EDBC8C0], MEMORY[0x29EDBC8B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E65433C()
{
  result = qword_2A1857DE0;
  if (!qword_2A1857DE0)
  {
    sub_29E653F40(255);
    sub_29E6543EC();
    sub_29E65AFE8(&qword_2A1857DF8, sub_29E6540BC, MEMORY[0x29EDBC7E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857DE0);
  }

  return result;
}

unint64_t sub_29E6543EC()
{
  result = qword_2A1857DE8;
  if (!qword_2A1857DE8)
  {
    sub_29E653F88(255);
    sub_29E65AFE8(&qword_2A1857DF0, sub_29E653FB0, MEMORY[0x29EDBC278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857DE8);
  }

  return result;
}

void sub_29E6544E4(uint64_t a1)
{
  if (!qword_2A1857E18)
  {
    sub_29E753268();
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857E18);
    }
  }
}

void sub_29E65454C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_29E752B08();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29E65460C()
{
  v1 = sub_29E754048();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SleepScoreGallery.Sheet(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65AAB8(v0, v7, type metadata accessor for SleepScoreGallery.Sheet);
  (*(v2 + 32))(v4, v7, v1);
  v12 = 0x65726F4D776F6873;
  v13 = 0xE90000000000005FLL;
  v11[1] = sub_29E753FF8();
  v8 = sub_29E754FD8();
  MEMORY[0x29ED96C20](v8);

  v9 = v12;
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_29E6547B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E65460C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_29E6547DC@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v2 = type metadata accessor for SleepScoreGallery(0);
  v73 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v103 = v3;
  v93 = v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65944C(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v102 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_29E7532A8();
  v91 = *(v92 - 8);
  MEMORY[0x2A1C7C4A8](v92);
  v90 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  v82 = v7;
  v81 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v80 = v72 - v8;
  v9 = sub_29E753318();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v72[1] = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_29E753348();
  v77 = *(v79 - 8);
  MEMORY[0x2A1C7C4A8](v79);
  v97 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_29E7531E8();
  v96 = *(v98 - 8);
  MEMORY[0x2A1C7C4A8](v98);
  v13 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E659480(0);
  v15 = v14;
  v95 = *(v14 - 1);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E659F34(0);
  v75 = v18;
  v74 = *(v18 - 1);
  MEMORY[0x2A1C7C4A8](v18);
  v20 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E659FE8(0);
  v100 = v21;
  v78 = *(v21 - 1);
  MEMORY[0x2A1C7C4A8](v21);
  v76 = v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65A0EC(0);
  v84 = v23;
  v83 = *(v23 - 1);
  MEMORY[0x2A1C7C4A8](v23);
  v99 = (v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E65A23C(0);
  v87 = v25;
  v85 = *(v25 - 1);
  MEMORY[0x2A1C7C4A8](v25);
  v101 = v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65A3BC(0);
  v89 = v27;
  v88 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v86 = v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E753368();
  v105 = v1;
  sub_29E659554(0);
  sub_29E659608(255);
  v30 = v29;
  v31 = sub_29E65AFE8(&qword_2A1857F60, sub_29E659608, MEMORY[0x29EDBC318]);
  v106 = v30;
  v107 = v31;
  swift_getOpaqueTypeConformance2();
  sub_29E752A08();
  v32 = sub_29E753398();
  v33 = *(v1 + *(v2 + 44));
  sub_29E7531D8();
  v34 = sub_29E65AFE8(&qword_2A1857F70, sub_29E659480, MEMORY[0x29EDBBEA8]);
  MEMORY[0x29ED96090](v32, v33, 0, v13, v15, v34);
  (*(v96 + 8))(v13, v98);
  result = (*(v95 + 8))(v17, v15);
  v98 = v2;
  v36 = *(v2 + 28);
  v104 = v1;
  if (*(v1 + v36) != 1)
  {
    sub_29E753308();
    v37 = v97;
    sub_29E753328();
    goto LABEL_6;
  }

  v37 = v97;
  v38 = *(v104 + *(v98 + 32));
  v39 = *(v104 + *(v98 + 36));
  if (__OFSUB__(v38, v39))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (__OFSUB__(v39, (v38 - v39) / 2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_29E753338();
LABEL_6:
  v106 = v15;
  v107 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = MEMORY[0x29EDBC0B0];
  v42 = v76;
  v43 = v75;
  v44 = v79;
  sub_29E753818();
  (*(v77 + 8))(v37, v44);
  (*(v74 + 8))(v20, v43);
  v45 = v80;
  v46 = v82;
  sub_29E753BC8();
  swift_getKeyPath();
  sub_29E753BE8();

  (*(v81 + 8))(v45, v46);
  v112 = v116;
  v113 = v117;
  v114 = v118;
  v115 = v119;
  sub_29E753C98();
  v106 = v43;
  v107 = v44;
  v108 = OpaqueTypeConformance2;
  v109 = v41;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = MEMORY[0x29EDC9BA8];
  v49 = MEMORY[0x29EDC9BB8];
  v50 = v100;
  sub_29E753798();

  (*(v78 + 8))(v42, v50);
  v51 = v90;
  sub_29E753298();
  sub_29E65A614(0, &qword_2A1857FA0, MEMORY[0x29EDBC968], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E762F40;
  v53 = sub_29E753388();
  *(inited + 32) = v53;
  v54 = sub_29E753368();
  *(inited + 33) = v54;
  sub_29E753378();
  sub_29E753378();
  if (sub_29E753378() != v53)
  {
    sub_29E753378();
  }

  sub_29E753378();
  if (sub_29E753378() != v54)
  {
    sub_29E753378();
  }

  v55 = v73;
  v106 = v100;
  v107 = v48;
  v108 = v47;
  v109 = v49;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v84;
  v58 = v99;
  sub_29E7537D8();
  (*(v91 + 8))(v51, v92);
  (*(v83 + 8))(v58, v57);
  sub_29E65AA54(0, &qword_2A1857E88, sub_29E6545B8, MEMORY[0x29EDBCB00]);
  v59 = v104;
  sub_29E753A18();
  v100 = type metadata accessor for SleepScoreGallery;
  v60 = v59;
  v61 = v93;
  sub_29E65AAB8(v60, v93, type metadata accessor for SleepScoreGallery);
  v62 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v63 = swift_allocObject();
  v99 = type metadata accessor for SleepScoreGallery;
  sub_29E658A30(v61, v63 + v62, type metadata accessor for SleepScoreGallery);
  v96 = type metadata accessor for SleepScoreGallery.Sheet(0);
  v64 = type metadata accessor for FullScreenSleepScoreCard(0);
  v106 = v57;
  v107 = v56;
  v97 = swift_getOpaqueTypeConformance2();
  v98 = sub_29E65AFE8(&qword_2A1857F98, type metadata accessor for SleepScoreGallery.Sheet, &unk_29E7669F4);
  v71 = sub_29E65AFE8(&qword_2A1856990, type metadata accessor for FullScreenSleepScoreCard, &unk_29E763B1C);
  v65 = v86;
  v66 = v102;
  v67 = v87;
  v68 = v101;
  sub_29E753878();

  sub_29E65AD40(v66, sub_29E65944C);
  (*(v85 + 8))(v68, v67);
  sub_29E65AAB8(v104, v61, v100);
  v69 = swift_allocObject();
  sub_29E658A30(v61, v69 + v62, v99);
  v106 = v67;
  v107 = v96;
  v108 = v64;
  v109 = v97;
  v110 = v98;
  v111 = v71;
  swift_getOpaqueTypeConformance2();
  v70 = v89;
  sub_29E753618();

  return (*(v88 + 8))(v65, v70);
}

uint64_t sub_29E655758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[2] = a2;
  v3 = sub_29E7531A8();
  MEMORY[0x2A1C7C4A8](v3);
  sub_29E659608(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v11[1] = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = type metadata accessor for SleepScoreGallery(0);
  MEMORY[0x2A1C7C4A8](v9);
  v11[-2] = a1;
  sub_29E752EF8();
  v12 = 0;
  sub_29E65AFE8(&qword_2A1857FA8, MEMORY[0x29EDBC828], MEMORY[0x29EDBC830]);
  sub_29E755168();
  sub_29E65966C(0);
  sub_29E659CC4();
  sub_29E7529D8();
  sub_29E65AFE8(&qword_2A1857F60, sub_29E659608, MEMORY[0x29EDBC318]);
  sub_29E7537E8();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_29E655A0C(uint64_t a1)
{
  v2 = type metadata accessor for SleepScoreGallery(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E64C90C(0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E655C78(v7);
  sub_29E65AAB8(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepScoreGallery);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_29E658A30(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for SleepScoreGallery);
  sub_29E659704(0);
  sub_29E659BC0();
  sub_29E659D3C();
  sub_29E65AFE8(&qword_2A1857FB0, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA320]);
  sub_29E753B48();
}

uint64_t sub_29E655C78@<X0>(char *a1@<X8>)
{
  sub_29E605ADC(0);
  v4 = v3;
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v38 - v8;
  v10 = sub_29E754048();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v43 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v38 - v15;
  v17 = MEMORY[0x2A1C7C4A8](v14);
  v44 = &v38 - v18;
  MEMORY[0x2A1C7C4A8](v17);
  v46 = &v38 - v19;
  sub_29E64C90C(0);
  v45 = v20;
  v21 = MEMORY[0x2A1C7C4A8](v20);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v38 - v24;
  if (*(v1 + *(type metadata accessor for SleepScoreGallery(0) + 28)) == 1)
  {
    v38 = v9;
    v39 = v7;
    v40 = v4;
    v41 = a1;
    sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
    sub_29E753BB8();
    sub_29E65AAB8(v47 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_galleryRange, v25, sub_29E64C90C);

    v42 = v11;
    v26 = *(v11 + 16);
    v26(v46, v25, v10);
    sub_29E65AD40(v25, sub_29E64C90C);
    sub_29E753BB8();
    sub_29E65AAB8(v47 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_galleryRange, v23, sub_29E64C90C);

    v26(v16, &v23[*(v45 + 36)], v10);
    v27 = v42;
    sub_29E65AD40(v23, sub_29E64C90C);
    v28 = v43;
    sub_29E753FC8();
    v29 = v44;
    sub_29E753FD8();
    v30 = *(v27 + 8);
    v30(v28, v10);
    v30(v16, v10);
    sub_29E65AFE8(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
    result = sub_29E7540E8();
    if (result)
    {
      v32 = *(v27 + 32);
      v33 = v38;
      v32(v38, v46, v10);
      v34 = v40;
      v32((v33 + *(v40 + 48)), v29, v10);
      v35 = v39;
      sub_29E65AAB8(v33, v39, sub_29E605ADC);
      v36 = *(v34 + 48);
      v37 = v41;
      v32(v41, v35, v10);
      v30((v35 + v36), v10);
      sub_29E658A30(v33, v35, sub_29E605ADC);
      v32(&v37[*(v45 + 36)], (v35 + *(v34 + 48)), v10);
      return (v30)(v35, v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
    sub_29E753BB8();
    sub_29E65AAB8(v47 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_galleryRange, a1, sub_29E64C90C);
  }

  return result;
}

uint64_t sub_29E6561D8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v119 = a3;
  v5 = sub_29E754188();
  v117 = *(v5 - 8);
  v118 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v116 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64C90C(0);
  v105 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v104 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E754048();
  v123 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v92 = v10;
  v121 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for SleepScoreGallery(0);
  v97 = *(v99 - 8);
  v11 = *(v97 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v99);
  v98 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v86 - v13;
  v102 = type metadata accessor for SleepScoreGalleryCard(0);
  MEMORY[0x2A1C7C4A8](v102);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E659A58(0);
  v106 = v17;
  v103 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v101 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65996C(0);
  v111 = v19;
  v108 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v107 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6597D0(0);
  v112 = v21;
  v110 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v109 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E659704(0);
  v114 = v23;
  MEMORY[0x2A1C7C4A8](v23);
  v115 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65AA20(0);
  MEMORY[0x2A1C7C4A8](v25 - 8);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v113 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  v122 = v28;
  v29 = a2;
  v87 = a2;
  sub_29E753BB8();
  v30 = v27;
  v31 = v27;
  v100 = v27;
  v32 = a1;
  v120 = a1;
  sub_29E67EB70(a1, v31);

  v88 = v16;
  sub_29E65AAB8(v30, v16, sub_29E65AA20);
  v95 = type metadata accessor for SleepScoreGallery;
  sub_29E65AAB8(v29, v14, type metadata accessor for SleepScoreGallery);
  v96 = v14;
  v33 = v123;
  v34 = *(v123 + 16);
  v90 = v123 + 16;
  v91 = v34;
  v35 = v121;
  v34(v121, v32, v9);
  v36 = *(v97 + 80);
  v89 = v9;
  v37 = ((v36 + 16) & ~v36) + v11;
  v38 = (v36 + 16) & ~v36;
  v39 = v36 | 7;
  v40 = *(v33 + 80);
  v97 = v37;
  v41 = (v37 + v40) & ~v40;
  v94 = v39;
  v42 = swift_allocObject();
  v93 = v38;
  v92 = type metadata accessor for SleepScoreGallery;
  sub_29E658A30(v14, v42 + v38, type metadata accessor for SleepScoreGallery);
  (*(v33 + 32))(v42 + v41, v35, v9);
  v43 = v87;
  v44 = v98;
  sub_29E65AAB8(v87, v98, type metadata accessor for SleepScoreGallery);
  v45 = swift_allocObject();
  v46 = v120;
  v47 = v45;
  sub_29E658A30(v44, v45 + v38, type metadata accessor for SleepScoreGallery);
  KeyPath = swift_getKeyPath();
  v49 = v102;
  v50 = v88;
  v51 = &v88[*(v102 + 20)];
  *v51 = sub_29E65AB20;
  v51[1] = v42;
  v52 = (v50 + *(v49 + 24));
  *v52 = sub_29E65ABEC;
  v52[1] = v47;
  v53 = v50 + *(v49 + 28);
  *v53 = KeyPath;
  *(v53 + 8) = 0;
  sub_29E753368();
  sub_29E6570D0(v46);
  sub_29E753C48();
  v54 = sub_29E65AFE8(&qword_2A1857F18, type metadata accessor for SleepScoreGalleryCard, &unk_29E76E228);
  v55 = v101;
  v56 = v54;
  sub_29E753838();
  sub_29E65AD40(v50, type metadata accessor for SleepScoreGalleryCard);
  v57 = v43;
  sub_29E753BB8();
  v58 = v104;
  sub_29E65AAB8(v124 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_galleryRange, v104, sub_29E64C90C);

  v59 = v121;
  v60 = v89;
  v91(v121, v58 + *(v105 + 36), v89);
  sub_29E65AD40(v58, sub_29E64C90C);
  sub_29E65AFE8(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
  sub_29E7540D8();
  (*(v123 + 8))(v59, v60);
  v124 = v49;
  v125 = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = v107;
  v63 = v106;
  sub_29E753638();
  (*(v103 + 8))(v55, v63);
  v64 = v96;
  sub_29E65AAB8(v57, v96, v95);
  v65 = swift_allocObject();
  sub_29E658A30(v64, v65 + v93, v92);
  sub_29E659B0C(0);
  v67 = v66;
  v124 = v63;
  v125 = OpaqueTypeConformance2;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = sub_29E752CC8();
  v70 = sub_29E65AFE8(&qword_2A1857F28, MEMORY[0x29EDBC620], MEMORY[0x29EDBC618]);
  v124 = v69;
  v125 = v70;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = v109;
  v73 = v111;
  MEMORY[0x29ED96060](sub_29E65AC58, v65, v111, v67, v68, v71);

  (*(v108 + 8))(v62, v73);
  sub_29E753FF8();
  sub_29E753BB8();
  v74 = v124;
  swift_getKeyPath();
  v124 = v74;
  sub_29E65AFE8(&qword_2A1857E50, type metadata accessor for SleepScoreGalleryModelProvider, &unk_29E768038);
  sub_29E74EF08();

  v124 = v73;
  v125 = v67;
  v126 = v68;
  v127 = v71;
  swift_getOpaqueTypeConformance2();
  v75 = v115;
  v76 = v112;
  sub_29E7537F8();
  (*(v110 + 8))(v72, v76);
  v77 = v116;
  sub_29E754118();
  v78 = sub_29E65B0B4(v77);
  v80 = v79;
  (*(v117 + 8))(v77, v118);
  v124 = v78;
  v125 = v80;
  sub_29E60DE10();
  v81 = sub_29E753608();
  v83 = v82;
  LOBYTE(v71) = v84;
  sub_29E752C08();
  sub_29E60DB44(v81, v83, v71 & 1);

  sub_29E65ACE0(v75, sub_29E659704);
  sub_29E65AD40(v100, sub_29E65AA20);
}

uint64_t sub_29E656F30(uint64_t a1, uint64_t a2)
{
  sub_29E6545B8(0);
  v4 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v12 - v7;
  v9 = sub_29E754048();
  (*(*(v9 - 8) + 16))(v8, a2, v9);
  v10 = type metadata accessor for SleepScoreGallery.Sheet(0);
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  type metadata accessor for SleepScoreGallery(0);
  sub_29E65AAB8(v8, v6, sub_29E6545B8);
  sub_29E65AA54(0, &qword_2A1857E88, sub_29E6545B8, MEMORY[0x29EDBCB00]);
  sub_29E753A08();
  return sub_29E65AD40(v8, sub_29E6545B8);
}

uint64_t sub_29E6570D0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_29E754048();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64C90C(0);
  v8 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SleepScoreGallery(0);
  if (*(v1 + v11[7]) != 1)
  {
    return *(v2 + v11[9]);
  }

  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  sub_29E753BB8();
  sub_29E65AAB8(v18[1] + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_galleryRange, v10, sub_29E64C90C);

  (*(v4 + 16))(v6, &v10[*(v8 + 36)], v3);
  sub_29E65AD40(v10, sub_29E64C90C);
  sub_29E65AFE8(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
  v12 = sub_29E7540D8();
  result = (*(v4 + 8))(v6, v3);
  if ((v12 & 1) == 0)
  {
    return *(v2 + v11[9]);
  }

  v14 = *(v2 + v11[8]);
  v15 = *(v2 + v11[9]);
  v16 = __OFSUB__(v14, v15);
  v17 = v14 - v15;
  if (!v16)
  {
    return v17 / 2;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E657350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_29E753138();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1.0;
  if (*(a3 + *(type metadata accessor for SleepScoreGallery(0) + 28)) == 1)
  {
    sub_29E753248();
    sub_29E752AF8();
    v9 = *(v5 + 8);
    v9(v7, v4);
    if ((v32 & 1) == 0)
    {
      v11 = *&v31[3];
      v10 = *&v31[4];
      v13 = *&v31[1];
      v12 = *&v31[2];
      sub_29E753248();
      sub_29E752AE8();
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v9(v7, v4);
      v33.origin.x = v15;
      v33.origin.y = v17;
      v33.size.width = v19;
      v33.size.height = v21;
      MidX = CGRectGetMidX(v33);
      v34.origin.x = v13;
      v34.origin.y = v12;
      v34.size.width = v11;
      v34.size.height = v10;
      v23 = fabs(MidX + CGRectGetWidth(v34) * -0.5);
      v35.origin.x = v13;
      v35.origin.y = v12;
      v35.size.width = v11;
      v35.size.height = v10;
      v8 = v23 / CGRectGetWidth(v35) * -0.4 + 1.0;
    }
  }

  sub_29E753C98();
  v25 = v24;
  v27 = v26;
  v28 = sub_29E752CC8();
  v29 = sub_29E65AFE8(&qword_2A1857F28, MEMORY[0x29EDBC620], MEMORY[0x29EDBC618]);
  return MEMORY[0x29ED953C0](v28, v29, v8, v25, v27);
}

uint64_t sub_29E6575A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E754048();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SleepScoreGallery.Sheet(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E65AAB8(a1, v10, type metadata accessor for SleepScoreGallery.Sheet);
  (*(v5 + 32))(v7, v10, v4);
  (*(v5 + 16))(a2, v7, v4);
  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  sub_29E753BB8();
  (*(v5 + 8))(v7, v4);
  v11 = v18[1];
  v12 = type metadata accessor for FullScreenSleepScoreCard(0);
  *(a2 + v12[5]) = v11;
  v13 = v12[6];
  *(a2 + v13) = swift_getKeyPath();
  v14 = MEMORY[0x29EDBC388];
  sub_29E65AA54(0, &qword_2A1856970, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v15 = v12[7];
  *(a2 + v15) = swift_getKeyPath();
  sub_29E65AA54(0, &qword_2A1856978, MEMORY[0x29EDBBED0], v14);
  swift_storeEnumTagMultiPayload();
  v16 = v12[8];
  *(a2 + v16) = swift_getKeyPath();
  sub_29E65AA54(0, &qword_2A1856980, MEMORY[0x29EDBC370], v14);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_29E6578DC(uint64_t a1)
{
  result = type metadata accessor for SleepScoreGallery(0);
  if (*(a1 + *(result + 28)) == 1)
  {
    return sub_29E657918();
  }

  return result;
}

uint64_t sub_29E657918()
{
  v1 = sub_29E753CF8();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v26 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29E753D18();
  v25 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SleepScoreGallery(0);
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = sub_29E754048();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64C90C(0);
  v11 = v10 - 8;
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  sub_29E753BB8();
  sub_29E655C78(v13);
  (*(v7 + 16))(v9, &v13[*(v11 + 44)], v6);
  sub_29E65AD40(v13, sub_29E64C90C);
  v14 = sub_29E753FF8();
  (*(v7 + 8))(v9, v6);
  result = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    sub_29E67F3A0(result, 0);

    sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
    v16 = sub_29E754908();
    sub_29E65AAB8(v0, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepScoreGallery);
    v17 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v18 = swift_allocObject();
    sub_29E658A30(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for SleepScoreGallery);
    aBlock[4] = sub_29E65A894;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E6A1514;
    aBlock[3] = &unk_2A24FF5E0;
    v19 = _Block_copy(aBlock);
    v20 = v24;
    sub_29E753D08();
    v30 = MEMORY[0x29EDCA190];
    sub_29E65AFE8(&qword_2A18569F8, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
    sub_29E65A938(0);
    sub_29E65AFE8(&qword_2A1856A00, sub_29E65A938, MEMORY[0x29EDC9A70]);
    v21 = v26;
    v22 = v29;
    sub_29E754C58();
    MEMORY[0x29ED97230](0, v20, v21, v19);
    _Block_release(v19);

    (*(v28 + 8))(v21, v22);
    (*(v25 + 8))(v20, v27);
  }

  return result;
}

uint64_t sub_29E657E60()
{
  v0 = sub_29E754048();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64C90C(0);
  v5 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  sub_29E753BB8();
  sub_29E655C78(v7);
  (*(v1 + 16))(v3, &v7[*(v5 + 36)], v0);
  sub_29E65AD40(v7, sub_29E64C90C);
  v8 = sub_29E753FF8();
  (*(v1 + 8))(v3, v0);
  result = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    sub_29E67F3A0(result, 0);
  }

  return result;
}

uint64_t sub_29E6580A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E754188();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E754118();
  v6 = sub_29E65B0B4(v5);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v9 = sub_29E753398();
  sub_29E74F1A8();
  sub_29E7529C8();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  LOBYTE(v32) = 0;
  v18 = [objc_opt_self() displayTypeWithIdentifier_];
  if (v18 && (v19 = v18, v20 = [v18 localization], v19, v21 = objc_msgSend(v20, sel_summary), v20, v21))
  {
    v22 = sub_29E7541D8();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  *&v29 = v6;
  *(&v29 + 1) = v8;
  LOBYTE(v30) = v9;
  *(&v30 + 1) = *v43;
  DWORD1(v30) = *&v43[3];
  *(&v30 + 1) = v11;
  *v31 = v13;
  *&v31[8] = v15;
  *&v31[16] = v17;
  v31[24] = 0;
  *&v34[9] = *&v31[9];
  v33 = v30;
  *v34 = *v31;
  v32 = v29;
  v25 = v29;
  v26 = v30;
  v27 = *&v34[16];
  *(a1 + 32) = *v31;
  *(a1 + 48) = v27;
  *a1 = v25;
  *(a1 + 16) = v26;
  *(a1 + 64) = v22;
  *(a1 + 72) = v24;
  sub_29E658E68(&v29, v35, &qword_2A1857EC8, &type metadata for SleepScoreDescriptionHeader, MEMORY[0x29EDBC498], sub_29E659388);
  v35[0] = v6;
  v35[1] = v8;
  v36 = v9;
  *v37 = *v43;
  *&v37[3] = *&v43[3];
  v38 = v11;
  v39 = v13;
  v40 = v15;
  v41 = v17;
  v42 = 0;
  sub_29E6593D8(v35);
}

double sub_29E6583D0@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_29E752FF8();
  v15 = 0;
  sub_29E6580A8(&v9);
  v18 = v11;
  v19 = v12;
  v16 = v9;
  v17 = v10;
  v21[2] = v11;
  v21[3] = v12;
  v21[4] = v13;
  v21[1] = v10;
  v20 = v13;
  v21[0] = v9;
  sub_29E65AAB8(&v16, &v8, sub_29E6592D4);
  sub_29E65AD40(v21, sub_29E6592D4);
  *&v14[7] = v16;
  *&v14[71] = v20;
  *&v14[55] = v19;
  *&v14[39] = v18;
  *&v14[23] = v17;
  v4 = *&v14[48];
  *(a2 + 49) = *&v14[32];
  *(a2 + 65) = v4;
  *(a2 + 81) = *&v14[64];
  result = *v14;
  v6 = *&v14[16];
  *(a2 + 17) = *v14;
  v7 = v15;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 96) = *&v14[79];
  *(a2 + 33) = v6;
  return result;
}

id sub_29E6584CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_29E752258();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  sub_29E7518A8();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

  sub_29E7521F8();
  sub_29E750458();
  swift_allocObject();
  sub_29E750438();
  sub_29E65AFE8(&qword_2A1857FF0, MEMORY[0x29EDC1C30], MEMORY[0x29EDC1C28]);
  sub_29E751898();
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor_];

  return v6;
}

uint64_t sub_29E658674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E65B030();

  return MEMORY[0x2A1C5CF40](a1, a2, a3, v6);
}

uint64_t sub_29E6586D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E65B030();

  return MEMORY[0x2A1C5CF08](a1, a2, a3, v6);
}

void sub_29E65873C(uint64_t a1)
{
  sub_29E65B030();
  sub_29E7530D8();
  __break(1u);
}

id sub_29E658764()
{
  sub_29E751518();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  v3[3] = sub_29E7514F8();
  v3[4] = sub_29E65AFE8(&qword_2A1857FE0, MEMORY[0x29EDC27D8], MEMORY[0x29EDC27D0]);
  sub_29E5FEBF4(v3);
  sub_29E7514E8();
  sub_29E751508();
  return v1;
}

double sub_29E658848(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = INFINITY;
  if (a2)
  {
    *&a1 = INFINITY;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeThatFits_];
  return result;
}

uint64_t sub_29E658898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E65AF94();

  return MEMORY[0x2A1C5CF40](a1, a2, a3, v6);
}

uint64_t sub_29E6588FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E65AF94();

  return MEMORY[0x2A1C5CF08](a1, a2, a3, v6);
}

void sub_29E658960(uint64_t a1)
{
  sub_29E65AF94();
  sub_29E7530D8();
  __break(1u);
}

uint64_t sub_29E658988(uint64_t a1, uint64_t a2)
{
  sub_29E65974C(0, &qword_2A1857D50, sub_29E653C28, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E658A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E658B68@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v21 = a4;
  v9 = sub_29E752EB8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x29EDBC388];
  sub_29E65AA54(0, a1, a2, MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v20 - v15;
  sub_29E658E68(v8, &v20 - v15, a1, a2, v13, sub_29E65AA54);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(v21, v16, v17);
  }

  else
  {
    sub_29E7546B8();
    v19 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_29E658DA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E752DC8();
  *a1 = result;
  return result;
}

uint64_t sub_29E658E00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E658E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_29E658EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E754048();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E658F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E754048();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_29E658FC4(uint64_t a1)
{
  result = sub_29E754048();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_29E6590A0(uint64_t a1)
{
  sub_29E65AA54(319, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  if (v1 <= 0x3F)
  {
    sub_29E65AA54(319, &qword_2A1857E88, sub_29E6545B8, MEMORY[0x29EDBCB00]);
    if (v2 <= 0x3F)
    {
      sub_29E65AA54(319, &qword_2A1A7BEF0, type metadata accessor for HKWidthDesignation, MEMORY[0x29EDBC390]);
      if (v3 <= 0x3F)
      {
        sub_29E650A80();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_29E659208(uint64_t a1)
{
  if (!qword_2A1857EA8)
  {
    sub_29E653824(255);
    sub_29E65AFE8(&qword_2A1857EB0, sub_29E653824, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753AB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857EA8);
    }
  }
}

void sub_29E659308(uint64_t a1)
{
  if (!qword_2A1857EC0)
  {
    sub_29E659388(255, &qword_2A1857EC8, &type metadata for SleepScoreDescriptionHeader, MEMORY[0x29EDBC498]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1857EC0);
    }
  }
}

void sub_29E659388(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_29E752C28();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29E6593D8(uint64_t a1)
{
  sub_29E659388(0, &qword_2A1857EC8, &type metadata for SleepScoreDescriptionHeader, MEMORY[0x29EDBC498]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E659480(uint64_t a1)
{
  if (!qword_2A1857ED8)
  {
    sub_29E659554(255);
    sub_29E659608(255);
    sub_29E65AFE8(&qword_2A1857F60, sub_29E659608, MEMORY[0x29EDBC318]);
    swift_getOpaqueTypeConformance2();
    v1 = sub_29E7529F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857ED8);
    }
  }
}

void sub_29E659554(uint64_t a1)
{
  if (!qword_2A1857EE0)
  {
    sub_29E659608(255);
    sub_29E65AFE8(&qword_2A1857F60, sub_29E659608, MEMORY[0x29EDBC318]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857EE0);
    }
  }
}

void sub_29E659608(uint64_t a1)
{
  if (!qword_2A1857EE8)
  {
    sub_29E65966C(255);
    sub_29E659CC4();
    v1 = sub_29E7529E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857EE8);
    }
  }
}

void sub_29E65966C(uint64_t a1)
{
  if (!qword_2A1857EF0)
  {
    sub_29E64C90C(255);
    sub_29E659704(255);
    sub_29E659BC0();
    v1 = sub_29E753B58();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857EF0);
    }
  }
}

void sub_29E65974C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E6597D0(uint64_t a1)
{
  if (!qword_2A1857F00)
  {
    sub_29E65996C(255);
    sub_29E659B0C(255);
    sub_29E659A58(255);
    type metadata accessor for SleepScoreGalleryCard(255);
    sub_29E65AFE8(&qword_2A1857F18, type metadata accessor for SleepScoreGalleryCard, &unk_29E76E228);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E752CC8();
    sub_29E65AFE8(&qword_2A1857F28, MEMORY[0x29EDBC620], MEMORY[0x29EDBC618]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857F00);
    }
  }
}

void sub_29E65996C(uint64_t a1)
{
  if (!qword_2A1857F08)
  {
    sub_29E659A58(255);
    type metadata accessor for SleepScoreGalleryCard(255);
    sub_29E65AFE8(&qword_2A1857F18, type metadata accessor for SleepScoreGalleryCard, &unk_29E76E228);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857F08);
    }
  }
}

void sub_29E659A58(uint64_t a1)
{
  if (!qword_2A1857F10)
  {
    type metadata accessor for SleepScoreGalleryCard(255);
    sub_29E65AFE8(&qword_2A1857F18, type metadata accessor for SleepScoreGalleryCard, &unk_29E76E228);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857F10);
    }
  }
}

void sub_29E659B0C(uint64_t a1)
{
  if (!qword_2A1857F20)
  {
    sub_29E752CC8();
    sub_29E65AFE8(&qword_2A1857F28, MEMORY[0x29EDBC620], MEMORY[0x29EDBC618]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857F20);
    }
  }
}

unint64_t sub_29E659BC0()
{
  result = qword_2A1857F30;
  if (!qword_2A1857F30)
  {
    sub_29E64C90C(255);
    sub_29E65AFE8(&qword_2A1857F38, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA318]);
    sub_29E659C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857F30);
  }

  return result;
}

unint64_t sub_29E659C70()
{
  result = qword_2A1857F40;
  if (!qword_2A1857F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857F40);
  }

  return result;
}

unint64_t sub_29E659CC4()
{
  result = qword_2A1857F48;
  if (!qword_2A1857F48)
  {
    sub_29E65966C(255);
    sub_29E659D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857F48);
  }

  return result;
}

unint64_t sub_29E659D3C()
{
  result = qword_2A1857F50;
  if (!qword_2A1857F50)
  {
    sub_29E659704(255);
    sub_29E65996C(255);
    sub_29E659B0C(255);
    sub_29E659A58(255);
    type metadata accessor for SleepScoreGalleryCard(255);
    sub_29E65AFE8(&qword_2A1857F18, type metadata accessor for SleepScoreGalleryCard, &unk_29E76E228);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E752CC8();
    sub_29E65AFE8(&qword_2A1857F28, MEMORY[0x29EDBC620], MEMORY[0x29EDBC618]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E65AFE8(&qword_2A1857F58, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857F50);
  }

  return result;
}

void sub_29E659F34(uint64_t a1)
{
  if (!qword_2A1857F68)
  {
    sub_29E659480(255);
    sub_29E65AFE8(&qword_2A1857F70, sub_29E659480, MEMORY[0x29EDBBEA8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857F68);
    }
  }
}

void sub_29E659FE8(uint64_t a1)
{
  if (!qword_2A1857F78)
  {
    sub_29E659F34(255);
    sub_29E753348();
    sub_29E659480(255);
    sub_29E65AFE8(&qword_2A1857F70, sub_29E659480, MEMORY[0x29EDBBEA8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857F78);
    }
  }
}

void sub_29E65A0EC(uint64_t a1)
{
  if (!qword_2A1857F80)
  {
    sub_29E659FE8(255);
    sub_29E659F34(255);
    sub_29E753348();
    sub_29E659480(255);
    sub_29E65AFE8(&qword_2A1857F70, sub_29E659480, MEMORY[0x29EDBBEA8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857F80);
    }
  }
}

void sub_29E65A23C(uint64_t a1)
{
  if (!qword_2A1857F88)
  {
    sub_29E65A0EC(255);
    sub_29E659FE8(255);
    sub_29E659F34(255);
    sub_29E753348();
    sub_29E659480(255);
    sub_29E65AFE8(&qword_2A1857F70, sub_29E659480, MEMORY[0x29EDBBEA8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857F88);
    }
  }
}

void sub_29E65A3BC(uint64_t a1)
{
  if (!qword_2A1857F90)
  {
    sub_29E65A23C(255);
    type metadata accessor for SleepScoreGallery.Sheet(255);
    type metadata accessor for FullScreenSleepScoreCard(255);
    sub_29E65A0EC(255);
    sub_29E659FE8(255);
    sub_29E659F34(255);
    sub_29E753348();
    sub_29E659480(255);
    sub_29E65AFE8(&qword_2A1857F70, sub_29E659480, MEMORY[0x29EDBBEA8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E65AFE8(&qword_2A1857F98, type metadata accessor for SleepScoreGallery.Sheet, &unk_29E7669F4);
    sub_29E65AFE8(&qword_2A1856990, type metadata accessor for FullScreenSleepScoreCard, &unk_29E763B1C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857F90);
    }
  }
}

void sub_29E65A614(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29E65A67C()
{
  v1 = type metadata accessor for SleepScoreGallery(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_29E65AA54(0, &qword_2A1857E80, type metadata accessor for SleepScoreGalleryModelProvider, MEMORY[0x29EDBCBA8]);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + *(v1 + 20);
  v7 = type metadata accessor for SleepScoreGallery.Sheet(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = sub_29E754048();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  sub_29E65AA54(0, &qword_2A1857E88, sub_29E6545B8, MEMORY[0x29EDBCB00]);

  sub_29E5FAF18(*(v0 + v3 + *(v1 + 24)), *(v0 + v3 + *(v1 + 24) + 8));

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E65A8AC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SleepScoreGallery(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_29E65A920(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E65A98C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SleepScoreGallery(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_29E65AA54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E65AAB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E65AB20()
{
  v1 = *(type metadata accessor for SleepScoreGallery(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_29E754048() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_29E656F30(v0 + v2, v5);
}

uint64_t sub_29E65AC58(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SleepScoreGallery(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29E657350(a1, a2, v6);
}

uint64_t sub_29E65ACE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E65AD40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E65ADB0(uint64_t a1, int a2)
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

uint64_t sub_29E65ADF8(uint64_t result, int a2, int a3)
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

void sub_29E65AE44(uint64_t a1)
{
  if (!qword_2A1857FC0)
  {
    sub_29E6592D4(255);
    sub_29E65AFE8(&qword_2A1857FC8, sub_29E6592D4, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857FC0);
    }
  }
}

unint64_t sub_29E65AEE8()
{
  result = qword_2A1857FD0;
  if (!qword_2A1857FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857FD0);
  }

  return result;
}

unint64_t sub_29E65AF40()
{
  result = qword_2A1857FD8;
  if (!qword_2A1857FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857FD8);
  }

  return result;
}

unint64_t sub_29E65AF94()
{
  result = qword_2A1857FE8;
  if (!qword_2A1857FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857FE8);
  }

  return result;
}

uint64_t sub_29E65AFE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29E65B030()
{
  result = qword_2A1857FF8;
  if (!qword_2A1857FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857FF8);
  }

  return result;
}

uint64_t sub_29E65B0B4(uint64_t a1)
{
  v2 = sub_29E74EDA8();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E754188();
  MEMORY[0x2A1C7C4A8](v3);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_29E65B238();
  if (!sub_29E754B58())
  {
    v6 = [objc_opt_self() mainBundle];
  }

  sub_29E74ED98();
  return sub_29E7541E8();
}

unint64_t sub_29E65B238()
{
  result = qword_2A1858000;
  if (!qword_2A1858000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1858000);
  }

  return result;
}

uint64_t sub_29E65B284(uint64_t a1, uint64_t a2)
{
  sub_29E650554(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_29E74E938();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_29E754188();
  MEMORY[0x2A1C7C4A8](v11);
  (*(v13 + 16))(&v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v8 + 16))(v10, a2, v7);
  sub_29E65B238();
  if (!sub_29E754B58())
  {
    v14 = [objc_opt_self() mainBundle];
  }

  v15 = sub_29E74EDA8();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  return sub_29E74E988();
}

id sub_29E65B4FC()
{
  type metadata accessor for SleepHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2A1A7FA18 = result;
  return result;
}

uint64_t sub_29E65B5E4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v73 = *v5;
  v10 = sub_29E754998();
  v11 = *(v10 - 8);
  v69 = v10;
  v70 = v11;
  MEMORY[0x2A1C7C4A8](v10);
  v67 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65EB58(0);
  v14 = *(v13 - 8);
  v71 = v13;
  v72 = v14;
  MEMORY[0x2A1C7C4A8](v13);
  v68 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65ED58(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v58 = v55 - v17;
  sub_29E65EC24(0);
  v19 = *(v18 - 8);
  v61 = v18;
  v62 = v19;
  MEMORY[0x2A1C7C4A8](v18);
  v59 = v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29E74ED88();
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v24 = v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + qword_2A1858030) = 0;
  *(v5 + qword_2A1858038) = 0;
  *(v5 + qword_2A1858008) = a1;
  *(v5 + qword_2A1858010) = a3;
  *(v5 + qword_2A1858028) = a2;
  *(v5 + qword_2A1858018) = a4;
  v25 = objc_allocWithZone(sub_29E74F908());
  v26 = a1;
  v63 = v26;
  v66 = a3;
  v60 = a2;

  v27 = a4;
  v64 = v27;
  v28 = [v25 init];
  *(v5 + qword_2A1858020) = v28;
  v65 = v28;
  v29 = v73;
  sub_29E65BE1C(v26, v27, v65);
  v75[0] = 0;
  v75[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v75, "MutableArray<");
  HIWORD(v75[1]) = -4864;
  sub_29E74ED78();
  v30 = sub_29E74ED48();
  v32 = v31;
  (*(v22 + 8))(v24, v21);
  MEMORY[0x29ED96C20](v30, v32);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v33 = sub_29E750D08();
  v75[0] = a2;
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  swift_retain_n();
  v34 = sub_29E754908();
  v74 = v34;
  v35 = sub_29E7548D8();
  v36 = *(v35 - 8);
  v56 = *(v36 + 56);
  v57 = v36 + 56;
  v37 = v58;
  v56(v58, 1, 1, v35);
  sub_29E60990C(0);
  sub_29E65F124(&qword_2A18569F0, sub_29E60990C, MEMORY[0x29EDB8A70]);
  v55[1] = sub_29E63FE6C();
  v38 = v59;
  sub_29E752968();
  sub_29E6214E8(v37);

  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v29;
  v41 = MEMORY[0x29EDB89E8];
  sub_29E65F124(&qword_2A1858068, sub_29E65EC24, MEMORY[0x29EDB89E8]);
  v42 = v61;
  v43 = sub_29E7529A8();

  (*(v62 + 8))(v38, v42);
  *(v33 + qword_2A1858030) = v43;

  v44 = [objc_opt_self() defaultCenter];
  v45 = v67;
  sub_29E7549A8();

  v46 = sub_29E754908();
  v75[0] = v46;
  v56(v37, 1, 1, v35);
  sub_29E65F124(&qword_2A1A7BD88, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
  v47 = v68;
  v48 = v69;
  sub_29E752968();
  sub_29E6214E8(v37);

  (*(v70 + 8))(v45, v48);
  v49 = swift_allocObject();
  swift_weakInit();

  v50 = swift_allocObject();
  v51 = v73;
  *(v50 + 16) = v49;
  *(v50 + 24) = v51;
  sub_29E65F124(&qword_2A1858070, sub_29E65EB58, v41);
  v52 = v71;
  v53 = sub_29E7529A8();

  (*(v72 + 8))(v47, v52);
  *(v33 + qword_2A1858038) = v53;

  return v33;
}

uint64_t sub_29E65BE1C(void *a1, void *a2, void *a3)
{
  v93 = a3;
  v85 = a2;
  v89 = a1;
  v104[1] = *MEMORY[0x29EDCA608];
  v3 = sub_29E750CA8();
  v98 = *(v3 - 8);
  v99 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v97 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74F698();
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v90 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74EE78();
  v87 = *(v7 - 8);
  v88 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v86 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_29E752098();
  v100 = *(v102 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v102);
  v94 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v82 = &v80 - v11;
  v83 = sub_29E751FA8();
  v12 = *(v83 - 1);
  MEMORY[0x2A1C7C4A8](v83);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E751FE8();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E74ED28();
  v95 = *(v19 - 8);
  v96 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v101 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74ED18();
  sub_29E751FC8();
  sub_29E751F98();
  v21 = swift_slowAlloc();
  *v21 = 0;
  v22 = sub_29E751FD8();
  v23 = sub_29E754958();
  v24 = sub_29E751F88();
  _os_signpost_emit_with_name_impl(&dword_29E5ED000, v22, v23, v24, "UpcomingResolvedScheduleOccurrenceQuery", "", v21, 2u);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = sub_29E74EC98();
  v104[0] = 0;
  v84 = [v89 upcomingResolvedScheduleOccurrenceAfterDate:v25 error:v104];

  v26 = v104[0];

  v27 = sub_29E754948();
  v28 = sub_29E751F88();
  _os_signpost_emit_with_name_impl(&dword_29E5ED000, v22, v27, v28, "UpcomingResolvedScheduleOccurrenceQuery", "", v21, 2u);

  MEMORY[0x29ED98410](v21, -1, -1);
  (*(v12 + 8))(v14, v83);
  (*(v16 + 8))(v18, v15);
  v29 = v102;
  if (v26)
  {
    v30 = v26;
    v31 = v82;
    sub_29E752048();
    v32 = v30;
    v33 = sub_29E752088();
    v34 = sub_29E7546A8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v104[0] = v36;
      *v35 = 136446466;
      v37 = sub_29E755178();
      v39 = sub_29E6B9C90(v37, v38, v104);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      v103 = v32;
      sub_29E609B5C(0, &qword_2A1858088, 0x29EDB9FA0);
      v40 = v32;
      v41 = sub_29E754208();
      v43 = sub_29E6B9C90(v41, v42, v104);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_29E5ED000, v33, v34, "[%{public}s] error loading upcoming schedule occurrence: %{public}s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v36, -1, -1);
      MEMORY[0x29ED98410](v35, -1, -1);
    }

    else
    {
    }

    (*(v100 + 8))(v31, v29);
  }

  v89 = v26;
  sub_29E65ED58(0, &qword_2A18568D0, sub_29E602F60, MEMORY[0x29EDC9E90]);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_29E762F40;
  v45 = v84;
  v83 = v84;
  v46 = [v85 currentCalendar];
  v47 = v86;
  sub_29E74EE28();

  v48 = *MEMORY[0x29EDC6AD0];
  v50 = v90;
  v49 = v91;
  v85 = *(v91 + 104);
  v51 = v92;
  (v85)(v90, v48, v92);
  v82 = sub_29E754258();
  v81 = v52;
  v91 = *(v49 + 8);
  (v91)(v50, v51);
  v53 = type metadata accessor for UpcomingScheduleOccurrenceItem(0);
  *(v44 + 56) = v53;
  *(v44 + 64) = sub_29E65F124(&qword_2A1858078, type metadata accessor for UpcomingScheduleOccurrenceItem, &unk_29E7671AC);
  v54 = sub_29E5FEBF4((v44 + 32));
  *v54 = v45;
  (*(v87 + 32))(v54 + v53[5], v47, v88);
  v55 = v93;
  *(v54 + v53[6]) = v93;
  v56 = (v54 + v53[7]);
  v57 = v81;
  *v56 = v82;
  v56[1] = v57;
  (v85)(v50, v48, v51);
  v58 = v83;
  v59 = v55;
  v60 = sub_29E754258();
  v62 = v61;
  (v91)(v50, v51);
  *(v44 + 96) = &type metadata for EditUpcomingScheduleOccurrenceItem;
  *(v44 + 104) = sub_29E65EDDC();
  *(v44 + 72) = v45;
  *(v44 + 80) = v60;
  *(v44 + 88) = v62;
  v63 = v94;
  sub_29E752048();

  v64 = sub_29E752088();
  v65 = sub_29E754698();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v104[0] = v67;
    *v66 = 136446467;
    v68 = sub_29E755178();
    v70 = sub_29E6B9C90(v68, v69, v104);

    *(v66 + 4) = v70;
    *(v66 + 12) = 2081;
    v71 = sub_29E602F60();
    v72 = MEMORY[0x29ED96D20](v44, v71);
    v74 = sub_29E6B9C90(v72, v73, v104);

    *(v66 + 14) = v74;
    _os_log_impl(&dword_29E5ED000, v64, v65, "[%{public}s] Computed section items: %{private}s", v66, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v67, -1, -1);
    MEMORY[0x29ED98410](v66, -1, -1);
  }

  (*(v100 + 8))(v63, v102);
  sub_29E6CC108(v44);

  v75 = v97;
  sub_29E750C98();
  sub_29E65ED58(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v76 = v98;
  v77 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_29E762F30;
  (*(v76 + 32))(v78 + v77, v75, v99);

  (*(v95 + 8))(v101, v96);
  return v78;
}

uint64_t sub_29E65C9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_29E752098();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E752048();
    v7 = sub_29E752088();
    v8 = sub_29E7546C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v3;
      v18 = v10;
      v11 = v10;
      *v9 = 136446210;
      v12 = sub_29E755178();
      v14 = sub_29E6B9C90(v12, v13, &v18);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_29E5ED000, v7, v8, "[%{public}s] Responding to sleep schedule change", v9, 0xCu);
      sub_29E5FECBC(v11);
      MEMORY[0x29ED98410](v11, -1, -1);
      MEMORY[0x29ED98410](v9, -1, -1);

      (*(v4 + 8))(v6, v17);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    sub_29E65CE88();
  }
}

uint64_t sub_29E65CC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_29E752098();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E752048();
    v7 = sub_29E752088();
    v8 = sub_29E7546C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v3;
      v18 = v10;
      v11 = v10;
      *v9 = 136446210;
      v12 = sub_29E755178();
      v14 = sub_29E6B9C90(v12, v13, &v18);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_29E5ED000, v7, v8, "[%{public}s] Responding to app did become active", v9, 0xCu);
      sub_29E5FECBC(v11);
      MEMORY[0x29ED98410](v11, -1, -1);
      MEMORY[0x29ED98410](v9, -1, -1);

      (*(v4 + 8))(v6, v17);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    sub_29E65CE88();
  }
}

uint64_t sub_29E65CE88()
{
  v1 = sub_29E751FF8();
  v19 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_29E751FA8();
  v20 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_29E751FE8();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E65BE1C(*(v0 + qword_2A1858008), *(v0 + qword_2A1858018), *(v0 + qword_2A1858020));
  sub_29E750D18();

  if (byte_2A1869420 == 1 && qword_2A1869428)
  {

    sub_29E751FB8();
    v12 = sub_29E751FD8();
    sub_29E752008();
    v18 = sub_29E754948();
    if (sub_29E754BC8())
    {

      sub_29E752038();

      v13 = v19;
      if ((*(v19 + 88))(v3, v1) == *MEMORY[0x29EDCA4A8])
      {
        v14 = "[Error] Interval already ended";
      }

      else
      {
        (*(v13 + 8))(v3, v1);
        v14 = "";
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_29E751F88();
      _os_signpost_emit_with_name_impl(&dword_29E5ED000, v12, v18, v16, "SaveSingleDayOverride", v14, v15, 2u);
      MEMORY[0x29ED98410](v15, -1, -1);
    }

    (*(v20 + 8))(v6, v4);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_29E65D23C()
{
}

uint64_t sub_29E65D2CC()
{
  v0 = sub_29E750D58();

  return v0;
}

uint64_t sub_29E65D364()
{
  sub_29E65D2CC();

  return swift_deallocClassInstance();
}

uint64_t sub_29E65D39C(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E750E78();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E750E28();
  v6 = sub_29E750E68();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_29E65D4CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E752258();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E7521F8();
  v3 = sub_29E750458();
  swift_allocObject();
  v4 = sub_29E750438();
  a1[3] = v3;
  result = sub_29E65F124(&qword_2A1856FE0, MEMORY[0x29EDC1C30], MEMORY[0x29EDC1C20]);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_29E65D658()
{
  v1 = *v0;
  sub_29E7544C8();
  v4 = v0;
  v5 = v1;
  return sub_29E607C50(sub_29E65E1E8, &v3, "SleepHealthAppPlugin/NextScheduleOccurrenceSection.swift", 56, 2u, 144);
}

uint64_t sub_29E65D6F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E752098();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v20 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752048();
  v7 = sub_29E752088();
  v8 = sub_29E7546C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v2;
    v11 = v10;
    v21 = v10;
    *v9 = 136446210;
    v12 = sub_29E755178();
    v14 = sub_29E6B9C90(v12, v13, &v21);
    v18 = v3;
    v15 = v14;

    *(v9 + 4) = v15;
    _os_log_impl(&dword_29E5ED000, v7, v8, "[%{public}s] Responding to sleep event occurring", v9, 0xCu);
    sub_29E5FECBC(v11);
    MEMORY[0x29ED98410](v11, -1, -1);
    MEMORY[0x29ED98410](v9, -1, -1);

    (*(v4 + 8))(v6, v18);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  sub_29E65CE88();
}

uint64_t sub_29E65D964()
{
  type metadata accessor for LinkCollectionViewCell(0);
  sub_29E7547D8();
  type metadata accessor for ScheduleOccurrenceCell();
  sub_29E65F124(&qword_2A18569D0, type metadata accessor for ScheduleOccurrenceCell, &unk_29E764230);
  return sub_29E7547D8();
}

uint64_t sub_29E65D9EC()
{
  type metadata accessor for UpcomingScheduleOccurrenceItem(0);
  sub_29E65F16C();
  v5 = sub_29E7541F8();
  MEMORY[0x29ED96C20](45, 0xE100000000000000);
  v4 = *v0;
  sub_29E65ECF0(0, &qword_2A18580A0, &qword_2A18580A8, 0x29EDC68A8);
  v1 = v4;
  v2 = sub_29E7541F8();
  MEMORY[0x29ED96C20](v2);

  return v5;
}

uint64_t sub_29E65DA9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*v1)
  {
    sub_29E7550E8();
    v4 = v3;
    sub_29E754B98();
  }

  else
  {
    sub_29E7550E8();
  }

  v5 = type metadata accessor for UpcomingScheduleOccurrenceItem(0);
  sub_29E74EE78();
  sub_29E65F124(&qword_2A18580D0, MEMORY[0x29EDB9D18], MEMORY[0x29EDB9D28]);
  sub_29E7540B8();
  sub_29E754B98();
  if (!*(v2 + *(v5 + 28) + 8))
  {
    return sub_29E7550E8();
  }

  sub_29E7550E8();

  return sub_29E7542D8();
}

uint64_t sub_29E65DBD8()
{
  type metadata accessor for ScheduleOccurrenceCell();
  sub_29E65F124(&qword_2A18569D0, type metadata accessor for ScheduleOccurrenceCell, &unk_29E764230);
  return sub_29E7506A8();
}

uint64_t sub_29E65DC40(uint64_t a1)
{
  v3 = sub_29E74F9B8();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = *(v1 + *(a1 + 24));
  v5 = *v1;
  v6 = v4;
  sub_29E74F978();
  return sub_29E74F958();
}

uint64_t sub_29E65DCEC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_29E65DD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_29E65DD88()
{
  sub_29E7550C8();
  sub_29E65DA9C(v1);
  return sub_29E755108();
}

uint64_t sub_29E65DDCC(uint64_t a1)
{
  sub_29E7550C8();
  sub_29E65DA9C(v2);
  return sub_29E755108();
}

uint64_t sub_29E65DE0C(uint64_t a1)
{
  v2 = sub_29E65F124(&qword_2A1858078, type metadata accessor for UpcomingScheduleOccurrenceItem, &unk_29E7671AC);

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E65DEC8(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_29E65DF20()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_29E7550C8();
  if (!v1)
  {
    sub_29E7550E8();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_29E7550E8();
    return sub_29E755108();
  }

  sub_29E7550E8();
  v3 = v1;
  sub_29E754B98();

  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29E7550E8();
  sub_29E7542D8();
  return sub_29E755108();
}

uint64_t sub_29E65DFC8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (!*v1)
  {
    sub_29E7550E8();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_29E7550E8();
  }

  sub_29E7550E8();
  v4 = v2;
  sub_29E754B98();

  if (!v3)
  {
    return sub_29E7550E8();
  }

LABEL_3:
  sub_29E7550E8();

  return sub_29E7542D8();
}

uint64_t sub_29E65E080(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_29E7550C8();
  if (!v2)
  {
    sub_29E7550E8();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_29E7550E8();
    return sub_29E755108();
  }

  sub_29E7550E8();
  v4 = v2;
  sub_29E754B98();

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29E7550E8();
  sub_29E7542D8();
  return sub_29E755108();
}

uint64_t sub_29E65E12C(uint64_t a1)
{
  v2 = sub_29E65EDDC();

  return MEMORY[0x2A1C60910](a1, v2);
}

BOOL sub_29E65E204(void **a1, void **a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_29E609B5C(0, &qword_2A18580A8, 0x29EDC68A8);
    v6 = v5;
    v7 = v4;
    v8 = sub_29E754B88();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = type metadata accessor for UpcomingScheduleOccurrenceItem(0);
  if (MEMORY[0x29ED91730](a1 + *(v9 + 20), a2 + *(v9 + 20)))
  {
    sub_29E609B5C(0, &qword_2A1A7D0B0, 0x29EDC9738);
    if (sub_29E754B88())
    {
      v10 = *(v9 + 28);
      v11 = (a1 + v10);
      v12 = *(a1 + v10 + 8);
      v13 = (a2 + v10);
      v14 = v13[1];
      if (v12)
      {
        if (!v14)
        {
          return 0;
        }

        v15 = *v11 == *v13 && v12 == v14;
        return v15 || (sub_29E755028() & 1) != 0;
      }

      if (!v14)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL sub_29E65E330(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (!a4)
    {
      return 0;
    }

    v11 = a1;
    sub_29E609B5C(0, &qword_2A18580A8, 0x29EDC68A8);
    v12 = a4;
    v13 = v11;
    LOBYTE(v11) = sub_29E754B88();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  if (a3)
  {
    return a6 && (a2 == a5 && a3 == a6 || (sub_29E755028() & 1) != 0);
  }

  return !a6;
}

uint64_t sub_29E65E418(uint64_t a1)
{
  if (a1)
  {
    if (qword_2A1A7D6F0 == -1)
    {
      return sub_29E74E9D8();
    }

    goto LABEL_6;
  }

  if (qword_2A1A7D6F0 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_29E74E9D8();
}

uint64_t sub_29E65E508()
{
  v0 = sub_29E752098();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v4 = sub_29E752088();
  v5 = sub_29E7546C8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_29E755178();
    v10 = sub_29E6B9C90(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_29E5ED000, v4, v5, "[%{public}s] Responding to date cache update", v6, 0xCu);
    sub_29E5FECBC(v7);
    MEMORY[0x29ED98410](v7, -1, -1);
    MEMORY[0x29ED98410](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return sub_29E65CE88();
}

uint64_t sub_29E65E6E0(void *a1)
{
  sub_29E65F1B4();
  v6 = sub_29E7541F8();
  MEMORY[0x29ED96C20](45, 0xE100000000000000);
  sub_29E65ECF0(0, &qword_2A18580A0, &qword_2A18580A8, 0x29EDC68A8);
  v2 = a1;
  v3 = sub_29E7541F8();
  MEMORY[0x29ED96C20](v3);

  MEMORY[0x29ED96C20](45, 0xE100000000000000);
  v4 = sub_29E65E418(a1);
  MEMORY[0x29ED96C20](v4);

  return v6;
}

void sub_29E65E7C0(void *a1, void *a2)
{
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v30 - v9;
  sub_29E752048();
  v11 = sub_29E752088();
  v12 = sub_29E7546C8();
  v13 = os_log_type_enabled(v11, v12);
  v32 = v5;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_29E6B9C90(0xD000000000000049, 0x800000029E75A2C0, &v33);
    _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s] Edit upcoming schedule tapped", v14, 0xCu);
    sub_29E5FECBC(v15);
    MEMORY[0x29ED98410](v15, -1, -1);
    MEMORY[0x29ED98410](v14, -1, -1);
  }

  v16 = *(v5 + 8);
  v16(v10, v4);
  type metadata accessor for SleepRoomViewController(0);
  if (swift_dynamicCastClass())
  {
    v17 = a1;
    if (a2)
    {
      v18 = a2;
      sub_29E697B70(v18, 0, 0);
    }

    else
    {
      sub_29E6981B4(0, 0);
    }
  }

  else
  {
    sub_29E752048();
    v19 = a1;
    v20 = sub_29E752088();
    v21 = sub_29E7546C8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v22 = 136446466;
      *(v22 + 4) = sub_29E6B9C90(0xD000000000000049, 0x800000029E75A2C0, &v33);
      *(v22 + 12) = 2082;
      v23 = v19;
      v24 = [v23 description];
      v25 = sub_29E7541D8();
      v27 = v26;

      v28 = sub_29E6B9C90(v25, v27, &v33);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_29E5ED000, v20, v21, "[%{public}s] Unable to present schedule compose on unknown view controller: %{public}s", v22, 0x16u);
      v29 = v31;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v29, -1, -1);
      MEMORY[0x29ED98410](v22, -1, -1);
    }

    v16(v8, v4);
  }
}

void sub_29E65EB58(uint64_t a1)
{
  if (!qword_2A1858058)
  {
    sub_29E754998();
    sub_29E609B5C(255, &qword_2A1A7D470, 0x29EDCA548);
    sub_29E65F124(&qword_2A1A7BD88, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
    sub_29E63FE6C();
    v1 = sub_29E7526C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858058);
    }
  }
}

void sub_29E65EC24(uint64_t a1)
{
  if (!qword_2A1858060)
  {
    sub_29E60990C(255);
    sub_29E609B5C(255, &qword_2A1A7D470, 0x29EDCA548);
    sub_29E65F124(&qword_2A18569F0, sub_29E60990C, MEMORY[0x29EDB8A70]);
    sub_29E63FE6C();
    v1 = sub_29E7526C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858060);
    }
  }
}

void sub_29E65ECF0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_29E609B5C(255, a3, a4);
    v5 = sub_29E754BD8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E65ED58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29E65EDDC()
{
  result = qword_2A1858080;
  if (!qword_2A1858080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858080);
  }

  return result;
}

void sub_29E65EE58(uint64_t a1)
{
  sub_29E65ECF0(319, &qword_2A18580A0, &qword_2A18580A8, 0x29EDC68A8);
  if (v1 <= 0x3F)
  {
    sub_29E74EE78();
    if (v2 <= 0x3F)
    {
      sub_29E74F908();
      if (v3 <= 0x3F)
      {
        sub_29E619E1C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_29E65EF24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29E65EF80(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_29E65EFE8()
{
  result = qword_2A18580B0;
  if (!qword_2A18580B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18580B0);
  }

  return result;
}

unint64_t sub_29E65F088()
{
  result = qword_2A18580C0;
  if (!qword_2A18580C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18580C0);
  }

  return result;
}

uint64_t sub_29E65F124(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29E65F16C()
{
  result = qword_2A18580D8;
  if (!qword_2A18580D8)
  {
    type metadata accessor for UpcomingScheduleOccurrenceItem(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A18580D8);
  }

  return result;
}

unint64_t sub_29E65F1B4()
{
  result = qword_2A18580E0;
  if (!qword_2A18580E0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A18580E0);
  }

  return result;
}

uint64_t type metadata accessor for SleepApneaNotificationSettingsDisclosureCellViewController(uint64_t a1)
{
  result = qword_2A18580E8;
  if (!qword_2A18580E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E65F288()
{
  v1 = sub_29E7541D8();

  MEMORY[0x29ED96C20](0xD000000000000020, 0x800000029E75A500);

  return v1;
}

uint64_t (*sub_29E65F300(uint64_t *a1))(uint64_t a1)
{
  v4 = sub_29E7541D8();
  v5 = v2;

  MEMORY[0x29ED96C20](0xD000000000000020, 0x800000029E75A500);

  *a1 = v4;
  a1[1] = v5;
  return sub_29E65F39C;
}

id sub_29E65F3A4(void *a1, uint64_t a2, void *a3, void *a4)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_29E7541D8();
    v7 = a4;
    a3 = sub_29E754198();
  }

  else
  {
    v8 = a4;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for SleepApneaNotificationSettingsDisclosureCellViewController(0);
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, a3, a4);

  return v9;
}

id sub_29E65F4B0(void *a1, uint64_t a2, void *a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = a1;
  v8.super_class = type metadata accessor for SleepApneaNotificationSettingsDisclosureCellViewController(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_29E65F590()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepApneaNotificationSettingsDisclosureCellViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E65F5F8(void *a1)
{
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E750428();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E754828();
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA748] healthStore:v10 currentCountryCode:0];
    (*(v7 + 104))(v9, *MEMORY[0x29EDC1BF0], v6);
    v13 = objc_allocWithZone(type metadata accessor for SleepApneaHealthChecklistSettingsViewController(0));
    v14 = sub_29E688FFC(v12, 0, v9);
    [a1 showViewController:v14 sender:0];
  }

  else
  {
    sub_29E752048();
    v15 = sub_29E752088();
    v16 = sub_29E7546A8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136446466;
      v19 = sub_29E755178();
      v21 = sub_29E6B9C90(v19, v20, &v23);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_29E6B9C90(0xD000000000000014, 0x800000029E75A480, &v23);
      _os_log_impl(&dword_29E5ED000, v15, v16, "[%{public}s.%{public}s]: No available health store for sleep apnea settings view", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v18, -1, -1);
      MEMORY[0x29ED98410](v17, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_29E65F918(uint64_t a1, void (*a2)(uint64_t))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

void sub_29E65F9C8()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_29E74EAC8();
    sub_29E68B200(MEMORY[0x29EDCA190]);
    v3 = sub_29E754068();

    [v1 openSensitiveURL:v2 withOptions:v3];
  }
}

void sub_29E65FAE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_29E754198();
  v9 = sub_29E754198();
  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = sub_29E754198();
  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v11 style:1 handler:0];

  [v10 addAction_];
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;

  v15 = sub_29E754198();
  v18[4] = sub_29E660100;
  v18[5] = v14;
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 1107296256;
  v18[2] = sub_29E62452C;
  v18[3] = &unk_2A24FF920;
  v16 = _Block_copy(v18);

  v17 = [v12 actionWithTitle:v15 style:0 handler:v16];
  _Block_release(v16);

  [v10 addAction_];
  [a3 presentViewController:v10 animated:1 completion:0];
}

uint64_t sub_29E65FD28(void *a1)
{
  v2 = sub_29E74EAF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v21 - v7;
  v23 = 0xD000000000000021;
  v24 = 0x800000029E75A760;
  v21 = 0xD0000000000001FCLL;
  v22 = 0x800000029E75A560;
  v21 = sub_29E754378();
  v22 = v9;
  sub_29E7542F8();
  v10 = objc_opt_self();
  v11 = sub_29E754198();
  v12 = sub_29E754198();

  v13 = [v10 hk:0 tapToRadarURLForBundleID:1076587 component:v11 title:v12 description:7 classification:0 reproducibility:0 keywords:3 autoDiagnostics:0 attachments:0 collaborationContactHandles:1 diagnosticExtensionOptions:?];

  sub_29E74EAD8();
  if (HKShowSensitiveLogItems() && a1)
  {
    (*(v3 + 16))(v6, v8, v2);
    v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v15 = swift_allocObject();
    (*(v3 + 32))(v15 + v14, v6, v2);
    v16 = a1;
    sub_29E65FAE0(0x10000000000000C2, 0x800000029E75A7B0, v16, sub_29E6600A0, v15);

LABEL_6:

    return (*(v3 + 8))(v8, v2);
  }

  v17 = [objc_opt_self() defaultWorkspace];
  if (v17)
  {
    v18 = v17;
    v19 = sub_29E74EAC8();
    sub_29E68B200(MEMORY[0x29EDCA190]);
    v16 = sub_29E754068();

    [v18 openSensitiveURL:v19 withOptions:v16];

    goto LABEL_6;
  }

  return (*(v3 + 8))(v8, v2);
}

void sub_29E6600A0()
{
  sub_29E74EAF8();

  sub_29E65F9C8();
}

uint64_t sub_29E660108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_29E660120(uint64_t a1)
{
  result = [objc_opt_self() sharedInstanceForHealthStore_];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [objc_opt_self() appleSleepScoreType];
  v4 = [v2 displayTypeForObjectType_];

  v5 = sub_29E6DCCB8();
  v6 = *(v5 + 16);
  if (v6)
  {
    v22 = MEMORY[0x29EDCA190];
    sub_29E754E08();
    sub_29E7544C8();
    v7 = v5 + 56;
    do
    {

      sub_29E7544B8();
      sub_29E754468();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v8 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
      v9 = sub_29E754198();
      v10 = [v8 initWithString_];

      v11 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
      v12 = sub_29E754198();
      v13 = [v11 initWithString_];

      [objc_allocWithZone(MEMORY[0x29EDC46E0]) initWithTitle:v10 description:v13];

      sub_29E754DE8();
      sub_29E754E18();
      sub_29E754E28();
      sub_29E754DF8();
      v7 += 32;
      --v6;
    }

    while (v6);

    if (!(v22 >> 62))
    {
      goto LABEL_8;
    }

LABEL_12:
    sub_29E660530();

    sub_29E754E68();

    goto LABEL_9;
  }

  if (MEMORY[0x29EDCA190] >> 62)
  {
    goto LABEL_12;
  }

LABEL_8:

  sub_29E755038();
  sub_29E660530();
LABEL_9:

  v14 = objc_allocWithZone(MEMORY[0x29EDC46F8]);
  sub_29E660530();
  v15 = sub_29E7543D8();

  v16 = [v14 initWithItems_];

  v17 = v16;
  if (v4)
  {
    v18 = [v4 localization];
    v19 = [v18 displayName];

    sub_29E7541D8();
  }

  v20 = sub_29E754198();

  [v17 setTitle_];

  v21 = [objc_allocWithZone(MEMORY[0x29EDC4750]) initWithRootViewController_];
  return v21;
}

unint64_t sub_29E660530()
{
  result = qword_2A1858100;
  if (!qword_2A1858100)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1858100);
  }

  return result;
}

void sub_29E660594(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v60[1] = a4;
  v65 = a2;
  v78 = a1;
  v71 = a5;
  sub_29E662A90(0);
  v77 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v72 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_29E74FE18();
  v8 = *(v76 - 8);
  MEMORY[0x2A1C7C4A8](v76);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E74FE48();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v70 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E74FEB8();
  v68 = *(v13 - 8);
  v69 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v75 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E752098();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = v60 - v20;
  sub_29E662AC4(0);
  v23 = v22;
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v67 = v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24);
  v27 = v60 - v26;
  v74 = a3;
  v73 = sub_29E662B5C();
  v29 = v28;
  v30 = sub_29E74FDC8();
  v31 = *(*(v30 - 8) + 56);
  v66 = v27;
  v31(v27, 1, 1, v30);
  v32 = [objc_opt_self() sharedBehavior];
  if (!v32)
  {
    __break(1u);
    goto LABEL_13;
  }

  v33 = v32;
  v34 = [v32 features];

  if (!v34)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v61 = v16;
  v62 = v23;
  v35 = [v34 sleepResultsNotificationsOnWatch];

  v63 = v10;
  v64 = v8;
  if ((v35 | v78) & 1) != 0 && (v65)
  {
    sub_29E752068();
    v36 = sub_29E752088();
    v37 = sub_29E7546C8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v79[0] = v39;
      *v38 = 136446466;
      v40 = sub_29E755178();
      v42 = sub_29E6B9C90(v40, v41, v79);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_29E6B9C90(0xD00000000000005ALL, 0x800000029E75A960, v79);
      _os_log_impl(&dword_29E5ED000, v36, v37, "[%{public}s.%{public}s]: Creating sleep settings feed item", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v39, -1, -1);
      MEMORY[0x29ED98410](v38, -1, -1);
    }

    (*(v61 + 8))(v21, v15);
    v52 = v66;
    v51 = v67;
    v50 = v74;
    sub_29E660E44(v73, v29, v67);
    sub_29E662D48(v52);
    sub_29E662DA4(v51, v52);
  }

  else
  {
    sub_29E752068();
    v43 = sub_29E752088();
    v44 = sub_29E7546C8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v79[0] = v46;
      *v45 = 136446978;
      v47 = sub_29E755178();
      v49 = sub_29E6B9C90(v47, v48, v79);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      *(v45 + 14) = sub_29E6B9C90(0xD00000000000005ALL, 0x800000029E75A960, v79);
      *(v45 + 22) = 1024;
      *(v45 + 24) = v65 & 1;
      *(v45 + 28) = 1024;
      *(v45 + 30) = v78 & 1;
      _os_log_impl(&dword_29E5ED000, v43, v44, "[%{public}s.%{public}s]: Not creating sleep settings feed item hasOnboarded: %{BOOL}d isScheduleEnabled: %{BOOL}d", v45, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v46, -1, -1);
      MEMORY[0x29ED98410](v45, -1, -1);
    }

    (*(v61 + 8))(v19, v15);
    v50 = v74;
    v52 = v66;
    v51 = v67;
  }

  (*(v68 + 16))(v75, v50, v69);
  sub_29E74FE78();
  sub_29E662AF8(0, &qword_2A1A7D400, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v53 = sub_29E74FB98();
  v54 = *(v53 - 8);
  v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_29E762F30;
  (*(v54 + 104))(v56 + v55, *MEMORY[0x29EDC3780], v53);
  (*(v64 + 104))(v63, *MEMORY[0x29EDC3898], v76);
  sub_29E74FE28();
  sub_29E662CE4(v52, v51);
  sub_29E752818();
  v57 = sub_29E74FEE8();
  v58 = MEMORY[0x29EDC38C8];
  v59 = v71;
  v71[3] = v57;
  v59[4] = v58;
  sub_29E5FEBF4(v59);
  sub_29E662A48(&qword_2A1A7BF48, sub_29E662A90, MEMORY[0x29EDB8AB8]);
  sub_29E74FED8();
  sub_29E662D48(v52);
}

uint64_t sub_29E660E44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v37 = a2;
  v36 = a1;
  v49 = a3;
  v3 = sub_29E752098();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v43 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_29E750358();
  v39 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40);
  v38 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E74FB98();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v34 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v32 - v10;
  v35 = sub_29E7506D8();
  v33 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E750AD8();
  v47 = *(v14 - 8);
  v48 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SleepNotificationSettingsDisclosureCellViewController(0);
  v44 = sub_29E74FBF8();
  v45 = v17;
  v46 = v18;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E7506B8();
  sub_29E74E9D8();
  sub_29E750AA8();
  (*(v7 + 104))(v11, *MEMORY[0x29EDC3780], v6);
  v19 = sub_29E74FE78();
  v20 = sub_29E750AC8();
  v22 = v21;
  v32[0] = v7;
  (*(v7 + 16))(v34, v11, v6);

  sub_29E64C7DC(v20, v22);
  v43 = v19;
  v23 = v49;
  sub_29E74FCE8();
  sub_29E750AB8();
  sub_29E7506C8();
  (*(v33 + 8))(v13, v35);
  sub_29E74FCD8();
  sub_29E662E20();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E762F30;
  *(inited + 32) = sub_29E74FF28();
  *(inited + 40) = v25;
  sub_29E5FF900(inited);
  swift_setDeallocating();
  sub_29E619D6C(inited + 32);
  v26 = v23;
  sub_29E74FD88();
  v27 = v39;
  v28 = v38;
  v29 = v40;
  (*(v39 + 104))(v38, *MEMORY[0x29EDC19C8], v40);
  sub_29E750348();
  (*(v27 + 8))(v28, v29);
  sub_29E74FDA8();
  sub_29E74FCB8();

  sub_29E643D20(v20, v22);
  (*(v32[0] + 8))(v11, v6);
  (*(v47 + 8))(v16, v48);
  v30 = sub_29E74FDC8();
  return (*(*(v30 - 8) + 56))(v26, 0, 1, v30);
}

uint64_t sub_29E661760()
{
  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin42SleepNotificationSettingsGeneratorPipeline_domain;
  v2 = sub_29E74FE48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin42SleepNotificationSettingsGeneratorPipeline_context;
  v4 = sub_29E74FEB8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepNotificationSettingsGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A7CA80;
  if (!qword_2A1A7CA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6618A0(uint64_t a1)
{
  result = sub_29E74FE48();
  if (v2 <= 0x3F)
  {
    result = sub_29E74FEB8();
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

uint64_t sub_29E66198C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20SleepHealthAppPlugin42SleepNotificationSettingsGeneratorPipeline_domain;
  v5 = sub_29E74FE48();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29E661A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v30 = a1;
  v31 = sub_29E74FEB8();
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v31);
  sub_29E66268C(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E662798(0);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  MEMORY[0x2A1C7C4A8](v15);
  v32 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a2;
  sub_29E74F738();
  v18 = sub_29E74F4D8();
  v37 = a4;
  v38 = v18;
  v36 = a3;
  sub_29E602960();
  sub_29E662A48(&qword_2A1A7BF68, sub_29E602960, MEMORY[0x29EDB8A70]);
  sub_29E662744();
  sub_29E752918();

  sub_29E662A48(&qword_2A1A7C088, sub_29E66268C, MEMORY[0x29EDB8870]);
  v19 = v30;
  v20 = sub_29E7528C8();
  (*(v12 + 8))(v14, v11);
  v36 = v20;
  v21 = v31;
  (*(v8 + 16))(&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v31);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  (*(v8 + 32))(v23 + v22, &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  *(v23 + ((v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_29E662960;
  *(v24 + 24) = v23;
  sub_29E662850(0, &qword_2A1A7BF88, sub_29E6628B4);
  sub_29E66257C();
  sub_29E662910(&qword_2A1A7BF90, &qword_2A1A7BF88, sub_29E6628B4);
  v25 = v32;
  sub_29E752928();

  sub_29E662A48(&qword_2A1A7C048, sub_29E662798, MEMORY[0x29EDB8908]);
  v26 = v34;
  v27 = v25;
  v28 = sub_29E7528E8();
  (*(v35 + 8))(v27, v26);
  return v28;
}

uint64_t sub_29E661E74(uint64_t a1, void *a2)
{
  v48 = a2;
  v4 = v2;
  v52 = *v2;
  v5 = sub_29E74FEB8();
  v46 = v5;
  v57 = *(v5 - 8);
  v6 = v57;
  v50 = *(v57 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6624DC(0);
  v9 = *(v8 - 8);
  v53 = v8;
  v54 = v9;
  MEMORY[0x2A1C7C4A8](v8);
  v51 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29E74FE18();
  v11 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E74FE48();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v6 + 16);
  v55 = a1;
  v47(&v4[OBJC_IVAR____TtC20SleepHealthAppPlugin42SleepNotificationSettingsGeneratorPipeline_context], a1, v5);
  v44 = sub_29E74FE78();
  sub_29E662AF8(0, &qword_2A1A7D400, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v18 = sub_29E74FB98();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29E762F30;
  (*(v19 + 104))(v21 + v20, *MEMORY[0x29EDC3780], v18);
  (*(v11 + 104))(v13, *MEMORY[0x29EDC3898], v45);
  sub_29E74FE28();
  v22 = OBJC_IVAR____TtC20SleepHealthAppPlugin42SleepNotificationSettingsGeneratorPipeline_domain;
  v23 = v56;
  (*(v15 + 32))(v56 + OBJC_IVAR____TtC20SleepHealthAppPlugin42SleepNotificationSettingsGeneratorPipeline_domain, v17, v14);
  sub_29E74F738();
  swift_allocObject();
  v24 = v48;
  v48 = sub_29E74F728();
  v25 = [objc_allocWithZone(MEMORY[0x29EDC6890]) initWithFeatureIdentifier:*MEMORY[0x29EDBA750] sleepStore:v24];
  (*(v15 + 16))(v17, v23 + v22, v14);
  v26 = v55;
  v27 = sub_29E74FE98();
  (*(v15 + 8))(v17, v14);
  v28 = v49;
  v29 = v46;
  v47(v49, v26, v46);
  v30 = v57;
  v31 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v32 = (v50 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = v34 + v31;
  v36 = v29;
  (*(v30 + 32))(v35, v28, v29);
  *(v34 + v32) = v48;
  v37 = (v34 + v33);
  *v37 = v25;
  v37[1] = v27;
  *(v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = v52;
  sub_29E662850(0, &qword_2A1A7BFA8, sub_29E66257C);
  sub_29E662910(&qword_2A1A7BFB0, &qword_2A1A7BFA8, sub_29E66257C);
  v38 = v25;
  v39 = v27;

  v40 = v51;
  sub_29E752848();
  sub_29E662A48(&qword_2A1A7BF20, sub_29E6624DC, MEMORY[0x29EDB8AE8]);
  v41 = v53;
  v42 = sub_29E7528E8();

  (*(v57 + 8))(v55, v36);
  (*(v54 + 8))(v40, v41);
  result = v56;
  *(v56 + OBJC_IVAR____TtC20SleepHealthAppPlugin42SleepNotificationSettingsGeneratorPipeline_publisher) = v42;
  return result;
}

void sub_29E6624DC(uint64_t a1)
{
  if (!qword_2A1A7BF18)
  {
    sub_29E662850(255, &qword_2A1A7BFA8, sub_29E66257C);
    sub_29E662910(&qword_2A1A7BFB0, &qword_2A1A7BFA8, sub_29E66257C);
    v1 = sub_29E752858();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BF18);
    }
  }
}

unint64_t sub_29E66257C()
{
  result = qword_2A1A7D6A0;
  if (!qword_2A1A7D6A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A7D6A0);
  }

  return result;
}

uint64_t sub_29E6625E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29E74FEB8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  result = sub_29E661A08(v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
  *a1 = result;
  return result;
}

void sub_29E66268C(uint64_t a1)
{
  if (!qword_2A1A7C080)
  {
    sub_29E602960();
    sub_29E662A48(&qword_2A1A7BF68, sub_29E602960, MEMORY[0x29EDB8A70]);
    sub_29E662744();
    v1 = sub_29E7525F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7C080);
    }
  }
}

unint64_t sub_29E662744()
{
  result = qword_2A1A7C450[0];
  if (!qword_2A1A7C450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A7C450);
  }

  return result;
}

void sub_29E662798(uint64_t a1)
{
  if (!qword_2A1A7C040)
  {
    sub_29E662850(255, &qword_2A1A7BF88, sub_29E6628B4);
    sub_29E66257C();
    sub_29E662910(&qword_2A1A7BF90, &qword_2A1A7BF88, sub_29E6628B4);
    v1 = sub_29E752638();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7C040);
    }
  }
}

void sub_29E662850(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E7526F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E6628B4()
{
  if (!qword_2A1A7BDD8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A7BDD8);
    }
  }
}

uint64_t sub_29E662910(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E662850(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E662960(int a1@<W0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v7 = *(sub_29E74FEB8() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_29E660594(a1, a2, v3 + v8, v9, a3);
}

uint64_t sub_29E662A48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E662AF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29E662B5C()
{
  v0 = sub_29E74ED88();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74FE78();
  v5 = sub_29E74FBB8();

  if (v5)
  {
    v6 = [v5 identifier];

    sub_29E74ED68();
    v7 = sub_29E74ED48();
    v9 = v8;
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v9 = 0xE800000000000000;
    v7 = 0x636974736F6E6761;
  }

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_29E754D78();

  v11 = 0xD000000000000022;
  v12 = 0x800000029E75AA60;
  MEMORY[0x29ED96C20](v7, v9);

  return v11;
}

uint64_t sub_29E662CE4(uint64_t a1, uint64_t a2)
{
  sub_29E662AC4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E662D48(uint64_t a1)
{
  sub_29E662AC4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E662DA4(uint64_t a1, uint64_t a2)
{
  sub_29E662AC4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E662E08(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

void sub_29E662E20()
{
  if (!qword_2A1A7BCF0)
  {
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BCF0);
    }
  }
}

uint64_t sub_29E662E70()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29E754D78();
  MEMORY[0x29ED96C20](0xD000000000000051, 0x800000029E75AB90);
  MEMORY[0x29ED96C20](v1, v2);
  return 0;
}

unint64_t sub_29E662FC0(void *a1)
{
  v2 = v1;
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = sub_29E74ED28();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v12 = [a1 healthDataSource];
  if (v12)
  {
    v13 = v12;
    v14 = sub_29E68B200(MEMORY[0x29EDCA190]);
    if (*(v2 + 16))
    {
      if (*(v2 + 16) == 1)
      {
        v15 = 0x800000029E757160;
        v16 = 0xD00000000000001ALL;
      }

      else
      {
        v16 = 0xD000000000000013;
        v15 = 0x800000029E757180;
      }
    }

    else
    {
      v15 = 0xEC00000064657472;
      v16 = 0x6F70784520464450;
    }

    v26 = MEMORY[0x29EDC99B0];
    v56 = MEMORY[0x29EDC99B0];
    *&v55 = v16;
    *(&v55 + 1) = v15;
    sub_29E61FF28(&v55, v54);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v14;
    sub_29E61F800(v54, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v28 = v57;
    if (*(v2 + 17))
    {
      if (*(v2 + 17) == 1)
      {
        v29 = 0xEC0000006E6F6974;
        v30 = 0x6163696669746F4ELL;
      }

      else
      {
        v29 = 0xEE006D6F6F522065;
        v30 = 0x7079542061746144;
      }
    }

    else
    {
      v29 = 0xE700000000000000;
      v30 = 0x7972616D6D7553;
    }

    v56 = v26;
    *&v55 = v30;
    *(&v55 + 1) = v29;
    sub_29E61FF28(&v55, v54);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v28;
    sub_29E61F800(v54, 0x6E616E65766F7270, 0xEA00000000006563, v31);
    v32 = v57;
    type metadata accessor for SleepApneaGenericFieldsProvider();
    *(swift_initStackObject() + 16) = v13;
    v33 = sub_29E7541D8();
    v35 = v34;
    sub_29E74ED18();
    v36 = sub_29E60E000();
    (*(v9 + 8))(v11, v8);
    v56 = sub_29E648728();
    if (!v36)
    {
      v36 = *MEMORY[0x29EDBA360];
    }

    *&v55 = v36;
    sub_29E61FF28(&v55, v54);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v32;
    sub_29E61F800(v54, v33, v35, v37);

    v38 = v57;
    v39 = sub_29E7541D8();
    v41 = v40;
    v42 = sub_29E60E374();
    v44 = MEMORY[0x29EDC99B0];
    v56 = MEMORY[0x29EDC99B0];
    if (!v43)
    {
      v42 = sub_29E7541D8();
    }

    *&v55 = v42;
    *(&v55 + 1) = v43;
    sub_29E61FF28(&v55, v54);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v38;
    sub_29E61F800(v54, v39, v41, v45);

    v46 = v57;
    v47 = sub_29E7541D8();
    v49 = v48;
    v50 = sub_29E60E764();
    v56 = v44;
    if (!v51)
    {
      v50 = sub_29E7541D8();
    }

    *&v55 = v50;
    *(&v55 + 1) = v51;
    sub_29E61FF28(&v55, v54);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v46;
    sub_29E61F800(v54, v47, v49, v52);

    sub_29E751758();
    return v57;
  }

  else
  {
    sub_29E752068();
    v17 = sub_29E752088();
    v18 = sub_29E7546B8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v55 = v20;
      *v19 = 136446210;
      v21 = sub_29E755178();
      v23 = sub_29E6B9C90(v21, v22, &v55);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_29E5ED000, v17, v18, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v19, 0xCu);
      sub_29E5FECBC(v20);
      MEMORY[0x29ED98410](v20, -1, -1);
      MEMORY[0x29ED98410](v19, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    sub_29E6636DC();
    swift_allocError();
    *v24 = 0xD000000000000023;
    v24[1] = 0x800000029E75AB60;
    return swift_willThrow();
  }
}

unint64_t sub_29E6636DC()
{
  result = qword_2A1858168;
  if (!qword_2A1858168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858168);
  }

  return result;
}

uint64_t type metadata accessor for SleepNotificationSettingsDisclosureCellViewController(uint64_t a1)
{
  result = qword_2A1858170;
  if (!qword_2A1858170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6637D0()
{
  v1 = sub_29E7541D8();

  MEMORY[0x29ED96C20](0xD00000000000001BLL, 0x800000029E75ACE0);

  return v1;
}

uint64_t (*sub_29E663840(uint64_t *a1))(uint64_t a1)
{
  v4 = sub_29E7541D8();
  v5 = v2;

  MEMORY[0x29ED96C20](0xD00000000000001BLL, 0x800000029E75ACE0);

  *a1 = v4;
  a1[1] = v5;
  return sub_29E65F39C;
}

id sub_29E6638DC(void *a1, uint64_t a2, void *a3, void *a4)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_29E7541D8();
    v7 = a4;
    a3 = sub_29E754198();
  }

  else
  {
    v8 = a4;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for SleepNotificationSettingsDisclosureCellViewController(0);
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, a3, a4);

  return v9;
}

id sub_29E6639E8(void *a1, uint64_t a2, void *a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = a1;
  v8.super_class = type metadata accessor for SleepNotificationSettingsDisclosureCellViewController(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_29E663AC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepNotificationSettingsDisclosureCellViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E663B6C@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  *a4 = v6;
  return result;
}

uint64_t sub_29E663BFC(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  v9 = v6;
  return sub_29E752898();
}

char *sub_29E663C70(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  sub_29E6212E4(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6116C4(0);
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E664944(0);
  v46 = *(v14 - 8);
  v47 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E664A30();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[3] = sub_29E74F758();
  v51[4] = MEMORY[0x29EDC6AF8];
  v51[0] = a1;
  v22 = OBJC_IVAR____TtC20SleepHealthAppPlugin17SleepOptionsModel__viewModel;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v23 = sub_29E74E9D8();
  v50[0] = MEMORY[0x29EDCA190];
  v50[1] = v23;
  v50[2] = v24;
  sub_29E752868();
  (*(v19 + 32))(&a4[v22], v21, v18);
  *&a4[OBJC_IVAR____TtC20SleepHealthAppPlugin17SleepOptionsModel_subscriptions] = MEMORY[0x29EDCA1A0];
  v25 = &a4[OBJC_IVAR____TtC20SleepHealthAppPlugin17SleepOptionsModel_navigationTitle];
  *v25 = a2;
  *(v25 + 1) = a3;
  sub_29E602E20(v51, v50);
  sub_29E74F148();
  sub_29E74F138();
  v26 = objc_allocWithZone(sub_29E74F418());
  v27 = sub_29E74F378();
  swift_beginAccess();
  v49 = v27;
  sub_29E752868();
  swift_endAccess();
  v28 = [objc_allocWithZone(sub_29E74F948()) init];
  swift_beginAccess();
  v49 = v28;
  sub_29E752868();
  swift_endAccess();
  v29 = type metadata accessor for SleepOptionsModel(0);
  v48.receiver = a4;
  v48.super_class = v29;
  v30 = objc_msgSendSuper2(&v48, sel_init);
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v30;
  sub_29E752888();

  v32 = v50[0];
  sub_29E664A88(&qword_2A18568C0, MEMORY[0x29EDC6A30], MEMORY[0x29EDC6A28]);
  v33 = sub_29E752758();

  v50[0] = v33;
  sub_29E7527F8();
  v34 = sub_29E7528E8();

  v50[0] = v34;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  v35 = v49;
  sub_29E664A88(&qword_2A1858198, MEMORY[0x29EDC6B68], MEMORY[0x29EDC6B60]);
  v36 = sub_29E752758();

  v49 = v36;
  v37 = sub_29E7528E8();

  v49 = v37;
  sub_29E611764();
  sub_29E664A88(&qword_2A1856D60, sub_29E611764, MEMORY[0x29EDB8A00]);
  sub_29E752678();
  sub_29E602DD4();
  v38 = sub_29E754908();
  v50[0] = v38;
  v39 = sub_29E7548D8();
  (*(*(v39 - 8) + 56))(v10, 1, 1, v39);
  sub_29E664A88(&qword_2A1858188, sub_29E6116C4, MEMORY[0x29EDB8948]);
  sub_29E664A88(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
  v40 = v45;
  sub_29E752968();
  sub_29E6214E8(v10);
  (*(v44 + 8))(v13, v40);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29E664A88(&qword_2A18581A0, sub_29E664944, MEMORY[0x29EDB89E8]);
  v41 = v47;
  sub_29E7529A8();

  (*(v46 + 8))(v16, v41);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E66C094();

  sub_29E5FECBC(v51);
  return v31;
}

void sub_29E66444C(void *a1)
{
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v43 - v7;
  v9 = sub_29E754828();
  if (v9)
  {
    v10 = v9;
    v11 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
    v12 = sub_29E754198();
    v13 = [v11 initWithIdentifier:v12 healthStore:v10];

    sub_29E752068();
    v14 = sub_29E752088();
    v15 = sub_29E7546C8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v2;
      v46 = v44;
      *v16 = 136446466;
      v17 = sub_29E755178();
      v19 = v3;
      v20 = v10;
      v21 = a1;
      v22 = v13;
      v23 = sub_29E6B9C90(v17, v18, &v46);

      *(v16 + 4) = v23;
      v13 = v22;
      a1 = v21;
      v10 = v20;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_29E6B9C90(0xD000000000000014, 0x800000029E75A480, &v46);
      _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s.%{public}s]: Presenting sleep settings view", v16, 0x16u);
      v24 = v44;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v24, -1, -1);
      MEMORY[0x29ED98410](v16, -1, -1);

      (*(v19 + 8))(v8, v45);
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }

    v32 = qword_2A1A7D6F0;
    v33 = v13;
    if (v32 != -1)
    {
      swift_once();
    }

    v34 = sub_29E74E9D8();
    v36 = v35;
    sub_29E74F758();
    swift_allocObject();
    v37 = v33;
    v38 = sub_29E74F748();
    v39 = objc_allocWithZone(type metadata accessor for SleepOptionsModel(0));
    v40 = sub_29E663C70(v38, v34, v36, v39);

    v41 = v40;
    v42 = sub_29E737B1C(v41);
    [a1 showViewController:v42 sender:0];
  }

  else
  {
    sub_29E752048();
    v25 = sub_29E752088();
    v26 = sub_29E7546A8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v46 = v28;
      *v27 = 136446466;
      v29 = sub_29E755178();
      v31 = sub_29E6B9C90(v29, v30, &v46);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_29E6B9C90(0xD000000000000014, 0x800000029E75A480, &v46);
      _os_log_impl(&dword_29E5ED000, v25, v26, "[%{public}s.%{public}s]: No available health store for sleep settings view", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v28, -1, -1);
      MEMORY[0x29ED98410](v27, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

void sub_29E664944(uint64_t a1)
{
  if (!qword_2A1858180)
  {
    sub_29E6116C4(255);
    sub_29E602DD4();
    sub_29E664A88(&qword_2A1858188, sub_29E6116C4, MEMORY[0x29EDB8948]);
    sub_29E664A88(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
    v1 = sub_29E7526C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858180);
    }
  }
}

void sub_29E664A30()
{
  if (!qword_2A1858190)
  {
    v0 = sub_29E7528A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858190);
    }
  }
}

uint64_t sub_29E664A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29E664B18(void *a1)
{
  v2 = v1;
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 healthDataSource])
  {
    v8 = sub_29E68B200(MEMORY[0x29EDCA190]);
    v9 = sub_29E7541D8();
    v10 = MEMORY[0x29EDC99B0];
    v44 = MEMORY[0x29EDC99B0];
    *&v43 = v9;
    *(&v43 + 1) = v11;
    sub_29E61FF28(&v43, v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v8;
    sub_29E61F800(v42, 0x5665727574616566, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
    v13 = v45;
    if (*(v2 + 16) > 1u)
    {
      if (*(v2 + 16) == 2)
      {
        v14 = 0xEC000000736B726FLL;
        v15 = 0x5720744920776F48;
      }

      else
      {
        v14 = 0xEA00000000006E6FLL;
        v15 = 0x6974656C706D6F43;
      }
    }

    else if (*(v2 + 16))
    {
      v14 = 0xE700000000000000;
      v15 = 0x756F5920726F46;
    }

    else
    {
      v14 = 0xE600000000000000;
      v15 = 0x705520746553;
    }

    v44 = v10;
    *&v43 = v15;
    *(&v43 + 1) = v14;
    sub_29E61FF28(&v43, v42);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v13;
    sub_29E61F800(v42, 1885697139, 0xE400000000000000, v25);
    v26 = v45;
    v27 = *(v2 + 17);
    if (v27 <= 1)
    {
      if (*(v2 + 17))
      {
        v28 = 0xE600000000000000;
        v29 = 0x6C65636E6143;
      }

      else
      {
        v28 = 0xE500000000000000;
        v29 = 0x7055746573;
      }
    }

    else if (v27 == 2)
    {
      v28 = 0xE400000000000000;
      v29 = 1954047310;
    }

    else if (v27 == 3)
    {
      v28 = 0xE400000000000000;
      v29 = 1801675074;
    }

    else
    {
      v28 = 0xE400000000000000;
      v29 = 1701736260;
    }

    v44 = v10;
    *&v43 = v29;
    *(&v43 + 1) = v28;
    sub_29E61FF28(&v43, v42);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v26;
    sub_29E61F800(v42, 0x6E6F69746361, 0xE600000000000000, v30);
    v31 = v45;
    v32 = *(v2 + 24);
    v33 = *(v2 + 32);
    v44 = v10;
    *&v43 = v32;
    *(&v43 + 1) = v33;
    sub_29E61FF28(&v43, v42);

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v31;
    sub_29E61F800(v42, 0x437972746E756F63, 0xEB0000000065646FLL, v34);
    v35 = v45;
    v36 = sub_29E7541D8();
    v38 = v37;
    v39 = sub_29E60E764();
    v44 = v10;
    if (!v40)
    {
      v39 = sub_29E7541D8();
    }

    *&v43 = v39;
    *(&v43 + 1) = v40;
    sub_29E61FF28(&v43, v42);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v35;
    sub_29E61F800(v42, v36, v38, v41);

    sub_29E751758();
    return v45;
  }

  else
  {
    sub_29E752068();
    v16 = sub_29E752088();
    v17 = sub_29E7546B8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v43 = v19;
      *v18 = 136446210;
      v20 = sub_29E755178();
      v22 = sub_29E6B9C90(v20, v21, &v43);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_29E5ED000, v16, v17, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource, retu", v18, 0xCu);
      sub_29E5FECBC(v19);
      MEMORY[0x29ED98410](v19, -1, -1);
      MEMORY[0x29ED98410](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    sub_29E665ACC();
    swift_allocError();
    *v23 = 0xD00000000000001ELL;
    v23[1] = 0x800000029E75AD90;
    return swift_willThrow();
  }
}

unint64_t sub_29E66503C(void *a1)
{
  v2 = v1;
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74ED28();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 healthDataSource];
  if (v12)
  {
    v13 = v12;
    v14 = sub_29E68B200(MEMORY[0x29EDCA190]);
    v74 = v14;
    v15 = sub_29E7541D8();
    v16 = MEMORY[0x29EDC99B0];
    v73 = MEMORY[0x29EDC99B0];
    *&v72 = v15;
    *(&v72 + 1) = v17;
    sub_29E61FF28(&v72, v71);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v14;
    sub_29E61F800(v71, 0x5665727574616566, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
    v19 = v70;
    if (v2[16] > 1u)
    {
      if (v2[16] == 2)
      {
        v20 = 0xEC000000736B726FLL;
        v21 = 0x5720744920776F48;
      }

      else
      {
        v20 = 0xEA00000000006E6FLL;
        v21 = 0x6974656C706D6F43;
      }
    }

    else if (v2[16])
    {
      v20 = 0xE700000000000000;
      v21 = 0x756F5920726F46;
    }

    else
    {
      v20 = 0xE600000000000000;
      v21 = 0x705520746553;
    }

    v73 = v16;
    *&v72 = v21;
    *(&v72 + 1) = v20;
    sub_29E61FF28(&v72, v71);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v19;
    sub_29E61F800(v71, 1885697139, 0xE400000000000000, v31);
    v32 = v70;
    v74 = v70;
    v33 = v2[17];
    if (v33 <= 1)
    {
      if (v2[17])
      {
        v34 = 0xE600000000000000;
        v35 = 0x6C65636E6143;
      }

      else
      {
        v34 = 0xE500000000000000;
        v35 = 0x7055746573;
      }
    }

    else if (v33 == 2)
    {
      v34 = 0xE400000000000000;
      v35 = 1954047310;
    }

    else if (v33 == 3)
    {
      v34 = 0xE400000000000000;
      v35 = 1801675074;
    }

    else
    {
      v34 = 0xE400000000000000;
      v35 = 1701736260;
    }

    v73 = v16;
    *&v72 = v35;
    *(&v72 + 1) = v34;
    sub_29E61FF28(&v72, v71);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v32;
    sub_29E61F800(v71, 0x6E6F69746361, 0xE600000000000000, v36);
    v37 = v70;
    v38 = v2[40];
    if (v38 > 3)
    {
      if (v2[40] > 5u)
      {
        if (v38 == 6)
        {
          v39 = 0xE600000000000000;
          v40 = 0x686372616553;
        }

        else
        {
          v39 = 0xE700000000000000;
          v40 = 0x6E776F6E6B6E55;
        }
      }

      else if (v38 == 4)
      {
        v39 = 0x800000029E757230;
        v40 = 0xD000000000000010;
      }

      else
      {
        v39 = 0x800000029E757250;
        v40 = 0xD000000000000012;
      }
    }

    else if (v2[40] > 1u)
    {
      if (v38 == 2)
      {
        v39 = 0xEE006D6F6F522065;
        v40 = 0x7079542061746144;
      }

      else
      {
        v39 = 0xE800000000000000;
        v40 = 0x79726F6765746143;
      }
    }

    else if (v2[40])
    {
      v40 = 0x6F52207065656C53;
      v39 = 0xEA00000000006D6FLL;
    }

    else
    {
      v39 = 0xE700000000000000;
      v40 = 0x7972616D6D7553;
    }

    v73 = v16;
    *&v72 = v40;
    *(&v72 + 1) = v39;
    sub_29E61FF28(&v72, v71);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v37;
    sub_29E61F800(v71, 0x747865746E6F63, 0xE700000000000000, v41);
    v42 = v70;
    v74 = v70;
    v43 = v2[41];
    v44 = MEMORY[0x29EDC9A98];
    if (v43 == 2)
    {
      sub_29E665B20(0xD000000000000013, 0x800000029E75AD60, &v72);
      sub_29E60E88C(&v72);
    }

    else
    {
      v73 = MEMORY[0x29EDC9A98];
      LOBYTE(v72) = v43 & 1;
      sub_29E61FF28(&v72, v71);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v42;
      sub_29E61F800(v71, 0xD000000000000013, 0x800000029E75AD60, v45);
      v74 = v70;
    }

    v46 = v2[42];
    if (v46 == 2)
    {
      sub_29E665B20(0x696C656E49656761, 0xED0000656C626967, &v72);
      sub_29E60E88C(&v72);
    }

    else
    {
      v73 = v44;
      LOBYTE(v72) = v46 & 1;
      sub_29E61FF28(&v72, v71);
      v47 = v74;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v47;
      sub_29E61F800(v71, 0x696C656E49656761, 0xED0000656C626967, v48);
      v74 = v70;
    }

    type metadata accessor for SleepApneaGenericFieldsProvider();
    *(swift_initStackObject() + 16) = v13;
    v49 = sub_29E7541D8();
    v51 = v50;
    v52 = sub_29E60E764();
    v73 = v16;
    if (!v53)
    {
      v52 = sub_29E7541D8();
    }

    *&v72 = v52;
    *(&v72 + 1) = v53;
    sub_29E61FF28(&v72, v71);
    v54 = v74;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v54;
    sub_29E61F800(v71, v49, v51, v55);

    v74 = v70;
    v56 = sub_29E7541D8();
    v58 = v57;
    sub_29E74ED18();
    v59 = sub_29E60E000();
    (*(v9 + 8))(v11, v8);
    if (v59)
    {
      v73 = sub_29E648728();
      *&v72 = v59;
      sub_29E61FF28(&v72, v71);
      v60 = v74;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v60;
      sub_29E61F800(v71, v56, v58, v61);

      v74 = v70;
    }

    else
    {
      sub_29E665B20(v56, v58, &v72);

      sub_29E60E88C(&v72);
    }

    v62 = sub_29E7541D8();
    v64 = v63;
    v65 = sub_29E60E374();
    v73 = v16;
    if (!v66)
    {
      v65 = sub_29E7541D8();
    }

    *&v72 = v65;
    *(&v72 + 1) = v66;
    sub_29E61FF28(&v72, v71);
    v67 = v74;
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v67;
    sub_29E61F800(v71, v62, v64, v68);

    sub_29E751758();
    return v70;
  }

  else
  {
    sub_29E752068();
    v22 = sub_29E752088();
    v23 = sub_29E7546B8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v72 = v25;
      *v24 = 136446210;
      v26 = sub_29E755178();
      v28 = sub_29E6B9C90(v26, v27, &v72);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_29E5ED000, v22, v23, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v24, 0xCu);
      sub_29E5FECBC(v25);
      MEMORY[0x29ED98410](v25, -1, -1);
      MEMORY[0x29ED98410](v24, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    sub_29E665ACC();
    swift_allocError();
    *v29 = 0xD00000000000001ELL;
    v29[1] = 0x800000029E75AD90;
    return swift_willThrow();
  }
}

id sub_29E665978(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id))
{
  v6 = a3;

  a5(v6);

  v7 = sub_29E754068();

  return v7;
}

uint64_t sub_29E665A70()
{

  return swift_deallocClassInstance();
}

unint64_t sub_29E665ACC()
{
  result = qword_2A18581A8;
  if (!qword_2A18581A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18581A8);
  }

  return result;
}

double sub_29E665B20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_29E68A9D0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_29E6A7874();
      v10 = v12;
    }

    sub_29E61FF28((*(v10 + 56) + 32 * v8), a3);
    sub_29E61F4F4(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id sub_29E665C04()
{
  result = [objc_opt_self() sleepScheduleType];
  if (result)
  {
    v1 = result;
    if (qword_2A18561C0 != -1)
    {
      swift_once();
    }

    v2 = qword_2A1857AA8;
    v3 = unk_2A1857AB0;
    v4 = qword_2A18561C8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = qword_2A1857AB8;
    v6 = unk_2A1857AC0;
    type metadata accessor for SupplementaryTypeSection(0);
    swift_allocObject();

    sub_29E6CE418(v1, v2, v3, v5, v6);

    sub_29E750828();

    v7 = sub_29E750818();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E665D78()
{
  v0 = sub_29E750868();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E750888();
  sub_29E6103B4(v4, qword_2A1869208);
  sub_29E61037C(v4, qword_2A1869208);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v5 = qword_2A1A7FA18;
  (*(v1 + 104))(v3, *MEMORY[0x29EDC1FB8], v0);
  v6 = v5;
  return sub_29E750878();
}

uint64_t sub_29E665F00()
{
  v0 = sub_29E750868();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E750888();
  sub_29E6103B4(v4, qword_2A1869220);
  sub_29E61037C(v4, qword_2A1869220);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v5 = qword_2A1A7FA18;
  (*(v1 + 104))(v3, *MEMORY[0x29EDC1FB8], v0);
  v6 = v5;
  return sub_29E750878();
}

uint64_t sub_29E666088()
{
  v0 = sub_29E750868();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E750888();
  sub_29E6103B4(v4, qword_2A1869238);
  sub_29E61037C(v4, qword_2A1869238);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v5 = qword_2A1A7FA18;
  (*(v1 + 104))(v3, *MEMORY[0x29EDC1FB8], v0);
  v6 = v5;
  return sub_29E750878();
}

uint64_t sub_29E666210()
{
  v0 = sub_29E750A18();
  sub_29E6103B4(v0, qword_2A1869250);
  sub_29E61037C(v0, qword_2A1869250);
  if (qword_2A18561F8 != -1)
  {
    swift_once();
  }

  return sub_29E750A08();
}

uint64_t sub_29E6662A0()
{
  v0 = sub_29E753908();
  MEMORY[0x2A1C7C4A8](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x29EDBCA80]);
  result = sub_29E753978();
  qword_2A1869268 = result;
  return result;
}

double sub_29E66637C()
{
  sub_29E752A58();
  result = *&v1;
  xmmword_2A1869270 = v1;
  *&qword_2A1869280 = v2;
  qword_2A1869290 = v3;
  return result;
}

uint64_t sub_29E6663D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();
}

char *sub_29E666450(char *a1)
{
  v41 = a1;
  sub_29E6212E4(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v38 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E754978();
  v35 = *(v4 - 8);
  v5 = v35;
  MEMORY[0x2A1C7C4A8](v4);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E666F74(0);
  v8 = *(v7 - 8);
  v39 = v7;
  v40 = v8;
  MEMORY[0x2A1C7C4A8](v7);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E666EC4(0, &qword_2A18581D8, sub_29E666E90, MEMORY[0x29EDB8B00]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v35 - v13;
  sub_29E666E90(0);
  v16 = MEMORY[0x2A1C7C4A8](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v35 - v19;
  *&v1[OBJC_IVAR____TtC20SleepHealthAppPlugin18AccountStatusModel_subscriptions] = MEMORY[0x29EDCA1A0];
  v21 = OBJC_IVAR____TtC20SleepHealthAppPlugin18AccountStatusModel__accountStatus;
  v22 = sub_29E754968();
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  sub_29E61365C(v20, v18);
  sub_29E752868();
  sub_29E667060(v20, sub_29E666E90);
  (*(v12 + 32))(&v1[v21], v14, v11);
  v23 = *(v5 + 16);
  v23(&v1[OBJC_IVAR____TtC20SleepHealthAppPlugin18AccountStatusModel_accountStatusPublisher], v41, v4);
  v24 = type metadata accessor for AccountStatusModel(0);
  v43.receiver = v1;
  v43.super_class = v24;
  v25 = objc_msgSendSuper2(&v43, sel_init);
  v26 = v36;
  v23(v36, &v25[OBJC_IVAR____TtC20SleepHealthAppPlugin18AccountStatusModel_accountStatusPublisher], v4);
  sub_29E602DD4();
  v27 = v25;
  v28 = sub_29E754908();
  v42 = v28;
  v29 = sub_29E7548D8();
  v30 = v38;
  (*(*(v29 - 8) + 56))(v38, 1, 1, v29);
  sub_29E6670C8(&qword_2A18581E8, MEMORY[0x29EDC1AF8], MEMORY[0x29EDC1AF0]);
  sub_29E6670C8(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
  v31 = v37;
  sub_29E752968();
  sub_29E667060(v30, sub_29E6212E4);

  v32 = *(v35 + 8);
  v32(v26, v4);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29E6670C8(&unk_2A18581F0, sub_29E666F74, MEMORY[0x29EDB89E8]);
  v33 = v39;
  sub_29E7529A8();

  (*(v40 + 8))(v31, v33);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  v32(v41, v4);
  return v27;
}

uint64_t sub_29E666A34(uint64_t a1, uint64_t a2)
{
  sub_29E666E90(0);
  v4 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v12 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = sub_29E754968();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v8, a1, v10);
    (*(v11 + 56))(v8, 0, 1, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29E61365C(v8, v6);
    sub_29E752898();
    return sub_29E667060(v8, sub_29E666E90);
  }

  return result;
}

id sub_29E666C10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountStatusModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccountStatusModel(uint64_t a1)
{
  result = qword_2A18581C8;
  if (!qword_2A18581C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E666D88(uint64_t a1)
{
  sub_29E754978();
  if (v1 <= 0x3F)
  {
    sub_29E666EC4(319, &qword_2A18581D8, sub_29E666E90, MEMORY[0x29EDB8B00]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_29E666EC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E666F34@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountStatusModel(0);
  result = sub_29E752758();
  *a2 = result;
  return result;
}

void sub_29E666F74(uint64_t a1)
{
  if (!qword_2A18581E0)
  {
    sub_29E754978();
    sub_29E602DD4();
    sub_29E6670C8(&qword_2A18581E8, MEMORY[0x29EDC1AF8], MEMORY[0x29EDC1AF0]);
    sub_29E6670C8(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
    v1 = sub_29E7526C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18581E0);
    }
  }
}

uint64_t sub_29E667060(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E6670C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E667308(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  sub_29E601938((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_29E66A4B0(0);
    v5 = a4;
    sub_29E754488();
  }

  else
  {
    sub_29E66A5B8();
    sub_29E7543F8();
    sub_29E66A4B0(0);
    sub_29E754498();
  }
}

uint64_t sub_29E66757C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v7 = sub_29E74E838();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  sub_29E7544C8();
  v6[10] = sub_29E7544B8();
  v9 = sub_29E754468();

  return MEMORY[0x2A1C73D48](sub_29E667678, v9, v8);
}

uint64_t sub_29E667678()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];

  v0[11] = _Block_copy(v1);
  sub_29E74E7E8();
  v4 = v3;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_29E66776C;
  v7 = v0[9];
  v8 = v0[3];
  v9 = v0[4];

  return sub_29E668754(v7, v8, v9);
}

uint64_t sub_29E66776C(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = v5[11];
  v9 = v5[6];
  v10 = v5[3];
  (*(v5[8] + 8))(v5[9], v5[7]);

  if (v3)
  {
    v11 = sub_29E74EA38();

    (*(v8 + 16))(v8, 0, v11);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(v6[11]);

  v12 = v7[1];

  return v12();
}

uint64_t sub_29E667C40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_29E605728;

  return sub_29E66757C(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_29E667D14(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_29E66A9A0;

  return v6();
}

uint64_t sub_29E667DFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_29E66A9A0;

  return sub_29E667D14(v2, v3, v4);
}

uint64_t sub_29E667EBC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_29E605728;

  return v7();
}

uint64_t sub_29E667FA4()
{
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E667FE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29E66A9A0;

  return sub_29E667EBC(a1, v4, v5, v6);
}

uint64_t sub_29E6680B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x29EDCA398];
  sub_29E66A714(0, &qword_2A1859CD0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = v24 - v11;
  sub_29E66A778(a3, v24 - v11, &qword_2A1859CD0, v9);
  v13 = sub_29E7544F8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29E66A7F8(v12, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_29E7544E8();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_29E754468();
  v17 = v16;
  sub_29E751758();
  if (a2)
  {
LABEL_4:
    v18 = sub_29E754228() + 32;
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

    sub_29E66A7F8(a3, &qword_2A1859CD0, MEMORY[0x29EDCA398]);

    return v22;
  }

LABEL_8:
  sub_29E66A7F8(a3, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
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

uint64_t sub_29E6683F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_29E6684EC;

  return v6(a1);
}