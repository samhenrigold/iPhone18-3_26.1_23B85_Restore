void *sub_1000D25DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000ADE4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1000D27B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a4;
  v8 = *v4;
  sub_1000E2D48();
  sub_100012A20(a2, a3, v5);
  sub_1000E2398();

  v9 = sub_1000E2D68();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_28:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v4;
    sub_100015488(a2, a3, v5);
    sub_1000D38A0(a2, a3, v5, v11, isUniquelyReferenced_nonNull_native);
    *v4 = v28;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v5;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v8 + 48);
  while (1)
  {
    v14 = (v13 + 24 * v11);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(v14 + 16);
    if (!v17)
    {
      if (v5)
      {
        goto LABEL_4;
      }

      if (v15 == a2 && v16 == a3)
      {
        v5 = 0;
        goto LABEL_29;
      }

      goto LABEL_3;
    }

    if (v17 != 1)
    {
      break;
    }

    if (v5 != 1)
    {
      goto LABEL_4;
    }

    if (v15 == a2 && v16 == a3)
    {
      v5 = 1;
      goto LABEL_29;
    }

LABEL_3:
    if (sub_1000E2C68())
    {
      goto LABEL_29;
    }

LABEL_4:
    v11 = (v11 + 1) & v12;
    if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (v5 != 2)
  {
    goto LABEL_4;
  }

  if (v15 != a2 || v16 != a3)
  {
    goto LABEL_3;
  }

  v5 = 2;
LABEL_29:
  sub_1000154A0(a2, a3, v5);
  v23 = *(v8 + 48) + 24 * v11;
  v24 = *v23;
  v25 = *(v23 + 8);
  *a1 = *v23;
  *(a1 + 8) = v25;
  v26 = *(v23 + 16);
  *(a1 + 16) = v26;
  sub_100015488(v24, v25, v26);
  return 0;
}

uint64_t sub_1000D29EC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1000E2D48();
  sub_1000E2398();
  v8 = sub_1000E2D68();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1000E2C68() & 1) != 0)
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

    sub_1000D3C20(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000D2C14(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1000E2978();

    if (v17)
    {

      sub_10000CAAC(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_1000E2968();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_1000D2EAC(v15, result + 1, a5, a6, a3, a4);
        v28 = v27[2];
        if (v27[3] <= v28)
        {
          sub_1000D35FC(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_1000D381C(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_10000CAAC(0, a3, a4);
    v19 = sub_1000E2808(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_1000E2818();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_1000D3A90(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

Swift::Int sub_1000D2EAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    sub_10000ADE4(a3, a4);
    v10 = sub_1000E2A48();
    v23 = v10;
    sub_1000E2918();
    if (sub_1000E29A8())
    {
      sub_10000CAAC(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_1000D35FC(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_1000E2808(*(v23 + 40));
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

      while (sub_1000E29A8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

uint64_t sub_1000D30F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000ADE4(&qword_1001202F8, &qword_1000F3678);
  result = sub_1000E2A38();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1000E2D48();
      sub_100012A20(v19, v20, v21);
      sub_1000E2398();

      result = sub_1000E2D68();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1000D3388(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000ADE4(&qword_100120298, &unk_1000F35D0);
  result = sub_1000E2A38();
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
      sub_1000E2D48();
      sub_1000E2398();
      result = sub_1000E2D68();
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

uint64_t sub_1000D35FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10000ADE4(a2, a3);
  result = sub_1000E2A38();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_1000E2808(*(v7 + 40));
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_1000D381C(uint64_t a1, void *a2)
{
  sub_1000E2808(a2[5]);
  result = sub_1000E28F8();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_1000D38A0(uint64_t result, void *a2, char a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a5)
  {
    sub_1000D30F4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1000D3DA0();
      goto LABEL_23;
    }

    sub_1000D41E0(v11 + 1);
  }

  v13 = *v5;
  sub_1000E2D48();
  sub_100012A20(v10, a2, a3);
  sub_1000E2398();

  result = sub_1000E2D68();
  v14 = v13 + 56;
  v15 = -1 << *(v13 + 32);
  a4 = result & ~v15;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v16 = ~v15;
    v17 = *(v13 + 48);
    do
    {
      v18 = v17 + 24 * a4;
      result = *v18;
      v19 = *(v18 + 8);
      v20 = *(v18 + 16);
      if (v20)
      {
        if (v20 == 1)
        {
          if (a3 != 1)
          {
            goto LABEL_11;
          }
        }

        else if (a3 != 2)
        {
          goto LABEL_11;
        }
      }

      else if (a3)
      {
        goto LABEL_11;
      }

      v21 = result == v10 && v19 == a2;
      if (v21 || (result = sub_1000E2C68(), (result & 1) != 0))
      {
        result = sub_1000E2CB8();
        __break(1u);
        break;
      }

LABEL_11:
      a4 = (a4 + 1) & v16;
    }

    while (((*(v14 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_23:
  v22 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(v22 + 48) + 24 * a4;
  *v23 = v10;
  *(v23 + 8) = a2;
  *(v23 + 16) = a3;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

void sub_1000D3A90(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_1000D35FC(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1000D40A0(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_1000D468C(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_1000E2808(*(*v7 + 40));
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_10000CAAC(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_1000E2818();

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
  sub_1000E2CB8();
  __break(1u);
}

void sub_1000D3C20(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000D3388(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1000D3F1C();
      goto LABEL_16;
    }

    sub_1000D4454(v8 + 1);
  }

  v10 = *v4;
  sub_1000E2D48();
  sub_1000E2398();
  v11 = sub_1000E2D68();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1000E2C68() & 1) != 0)
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
  sub_1000E2CB8();
  __break(1u);
}

void *sub_1000D3DA0()
{
  v1 = v0;
  sub_10000ADE4(&qword_1001202F8, &qword_1000F3678);
  v2 = *v0;
  v3 = sub_1000E2A28();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_100015488(v19, v20, v22);
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

void sub_1000D3F1C()
{
  v1 = v0;
  sub_10000ADE4(&qword_100120298, &unk_1000F35D0);
  v2 = *v0;
  v3 = sub_1000E2A28();
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

id sub_1000D40A0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000ADE4(a1, a2);
  v4 = *v2;
  v5 = sub_1000E2A28();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1000D41E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000ADE4(&qword_1001202F8, &qword_1000F3678);
  result = sub_1000E2A38();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1000E2D48();
      sub_100015488(v19, v20, v21);
      sub_100012A20(v19, v20, v21);
      sub_1000E2398();

      result = sub_1000E2D68();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_1000D4454(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000ADE4(&qword_100120298, &unk_1000F35D0);
  result = sub_1000E2A38();
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
      sub_1000E2D48();

      sub_1000E2398();
      result = sub_1000E2D68();
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

uint64_t sub_1000D468C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10000ADE4(a2, a3);
  result = sub_1000E2A38();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_1000E2808(v18);
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

void sub_1000D48C0(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1000E2988();
      sub_10000CAAC(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000CAAC(0, a5, a6);
    if (sub_1000E2948() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_1000E2958();
    swift_dynamicCast();
    v6 = v18;
    v11 = sub_1000E2808(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = sub_1000E2818();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

uint64_t sub_1000D4B50(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
    sub_10001B174(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr);
    result = sub_1000E2608();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = TUConversationMember_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_1000E2A98();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_1000D2C14(&v9, v7, &qword_10011F890, TUConversationMember_ptr, &qword_100120300, &unk_1000F3680);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_1000E2B68();
  }

  v5 = result;
  v4 = sub_1000E2B68();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1000D4CDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000E2608();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000D29EC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000D4D90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D4DD8(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_10000CAAC(0, &qword_10011EB88, CNContact_ptr);
    sub_10001B174(&qword_10011ED60, &qword_10011EB88, CNContact_ptr);
    result = sub_1000E2608();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = CNContact_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_1000E2A98();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_1000D2C14(&v9, v7, &qword_10011EB88, CNContact_ptr, &qword_1001202B0, &unk_1000F3610);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_1000E2B68();
  }

  v5 = result;
  v4 = sub_1000E2B68();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1000D4F64(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
    sub_10001B174(&qword_10011EA60, &unk_10011F930, TUHandle_ptr);
    result = sub_1000E2608();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = TUHandle_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_1000E2A98();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_1000D2C14(&v9, v7, &unk_10011F930, TUHandle_ptr, &qword_100120228, &unk_1000F3430);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_1000E2B68();
  }

  v5 = result;
  v4 = sub_1000E2B68();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1000D5158(uint64_t a1)
{
  v2 = sub_10000ADE4(&qword_1001202A8, &unk_1000F35F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D51C0()
{
  type metadata accessor for Defaults();
  result = swift_allocObject();
  *(result + 40) = &type metadata for ConversationServerBag;
  *(result + 48) = &off_100116DE8;
  qword_100123120 = result;
  return result;
}

uint64_t sub_1000D5200()
{
  sub_10000E9DC((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1000D525C(unsigned __int8 a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1000E2328();

  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    sub_1000E28B8();
    swift_unknownObjectRelease();
    sub_1000D5500(v7);
    v4 = sub_1000E2328();

    v5 = [v1 BOOLForKey:v4];
  }

  else
  {

    memset(v7, 0, sizeof(v7));
    sub_1000D5500(v7);
    return 2;
  }

  return v5;
}

uint64_t sub_1000D5500(uint64_t a1)
{
  v2 = sub_10000ADE4(&unk_10011ECF0, &qword_1000F08A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000D5568(unsigned __int8 a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1000E2328();

  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    sub_1000E28B8();
    swift_unknownObjectRelease();
    sub_1000D5500(v7);
    v4 = sub_1000E2328();

    v5 = [v1 integerForKey:v4];
  }

  else
  {

    memset(v7, 0, sizeof(v7));
    sub_1000D5500(v7);
    return 0;
  }

  return v5;
}

uint64_t sub_1000D5814(uint64_t a1)
{
  v12[3] = &type metadata for Int;
  v12[0] = a1;
  v1 = [objc_opt_self() standardUserDefaults];
  sub_1000B26A8(v12, v10);
  v2 = v11;
  if (v11)
  {
    v3 = sub_1000036AC(v10, v11);
    v4 = *(v2 - 8);
    __chkstk_darwin(v3);
    v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = sub_1000E2C48();
    (*(v4 + 8))(v6, v2);
    sub_10000E9DC(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1000E2328();
  [v1 setValue:v7 forKey:v8];

  swift_unknownObjectRelease();
  return sub_1000D5500(v12);
}

char *os_log_type_t.errorWithState.unsafeMutableAddressor()
{
  if (qword_10011DCA0 != -1)
  {
    swift_once();
  }

  return &static os_log_type_t.errorWithState;
}

uint64_t sub_1000D5A08()
{
  v0 = sub_1000E1F08();
  sub_10002B948(v0, qword_100123128);
  sub_1000049D0(v0, qword_100123128);
  return sub_1000E1EF8();
}

uint64_t sub_1000D5A88()
{
  v0 = sub_1000E1F08();
  sub_10002B948(v0, qword_100123140);
  sub_1000049D0(v0, qword_100123140);
  return sub_1000E1EF8();
}

uint64_t sub_1000D5B60(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1000E1F08();
  sub_10002B948(v5, a2);
  sub_1000049D0(v5, a2);
  return sub_1000E1EF8();
}

uint64_t sub_1000D5BD8()
{
  v0 = sub_1000E1F08();
  sub_10002B948(v0, qword_100123188);
  sub_1000049D0(v0, qword_100123188);
  return sub_1000E1EF8();
}

uint64_t sub_1000D5C58()
{
  v0 = sub_1000E1F08();
  sub_10002B948(v0, qword_1001231A0);
  sub_1000049D0(v0, qword_1001231A0);
  return sub_1000E1EF8();
}

uint64_t sub_1000D5CD8()
{
  v0 = sub_1000E1F08();
  sub_10002B948(v0, qword_1001231B8);
  sub_1000049D0(v0, qword_1001231B8);
  return sub_1000E1EF8();
}

uint64_t sub_1000D5D58()
{
  v0 = sub_1000E1F08();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000E1E88();
  sub_10002B948(v4, qword_100120440);
  sub_1000049D0(v4, qword_100120440);
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v5 = sub_1000049D0(v0, qword_100123128);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1000E1E68();
}

uint64_t sub_1000D5E94()
{
  result = sub_1000E2678();
  static os_log_type_t.errorWithState = result | 0x80;
  return result;
}

uint64_t static os_log_type_t.errorWithState.getter()
{
  if (qword_10011DCA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static os_log_type_t.errorWithState;
}

uint64_t static os_log_type_t.errorWithState.setter(char a1)
{
  if (qword_10011DCA0 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static os_log_type_t.errorWithState = a1;
  return result;
}

uint64_t (*static os_log_type_t.errorWithState.modify(uint64_t a1))()
{
  if (qword_10011DCA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

char *sub_1000D602C(char *__src, char *__dst, uint64_t a3)
{
  if (__dst)
  {
    return strncpy(__dst, __src, a3 - __dst);
  }

  __break(1u);
  return __src;
}

uint64_t sub_1000D605C(char a1)
{
  v2 = sub_1000E1E58();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  if (qword_10011DC98 != -1)
  {
    swift_once();
  }

  v9 = sub_1000E1E88();
  sub_1000049D0(v9, qword_100120440);
  v10 = off_1001169A0[a1];
  sub_1000E1E48();
  v11 = sub_1000E1E78();
  v12 = sub_1000E27C8();
  if (sub_1000E2868())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1000E1E38();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v14, v10, "", v13, 2u);
  }

  (*(v3 + 16))(v6, v8, v2);
  sub_1000E1EC8();
  swift_allocObject();
  v15 = sub_1000E1EB8();
  (*(v3 + 8))(v8, v2);
  return v15;
}

uint64_t sub_1000D6278(char a1, uint64_t a2)
{
  v3 = sub_1000E1E98();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000E1E58();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011DC98 != -1)
  {
    swift_once();
  }

  v11 = sub_1000E1E88();
  sub_1000049D0(v11, qword_100120440);
  v19 = off_1001169A0[a1];
  v12 = sub_1000E1E78();
  sub_1000E1EA8();
  v13 = sub_1000E27B8();
  if (sub_1000E2868())
  {

    sub_1000E1ED8();

    if ((*(v4 + 88))(v6, v3) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_1000E1E38();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v16, v19, v14, v15, 2u);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t NeighborhoodActivityPublisherService.firstValue<A, B>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1000E0D68();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000D65E4, 0, 0);
}

uint64_t sub_1000D65E4(uint64_t a1)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 24);
  v12 = *(v1 + 32);
  sub_1000E0D58();
  v6 = swift_task_alloc();
  *(v1 + 88) = v6;
  *(v6 + 16) = v12;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v2;
  *(v6 + 56) = v5;
  v7 = swift_task_alloc();
  *(v1 + 96) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v2;
  v8 = swift_task_alloc();
  *(v1 + 104) = v8;
  *v8 = v1;
  v8[1] = sub_1000D6718;
  v9 = *(v1 + 32);
  v10 = *(v1 + 16);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v10, &unk_1000F3700, v6, sub_1000AB3EC, v7, 0, 0, v9);
}

uint64_t sub_1000D6718()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1000D683C;
  }

  else
  {

    v2 = sub_100024FB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D683C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000D68D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_1000D6904, 0, 0);
}

uint64_t sub_1000D6904()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 56) = v2;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1000D6A10;
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD000000000000011, 0x80000001000EBB80, sub_1000D8C54, v3, v6);
}

uint64_t sub_1000D6A10()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000D6B4C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000D6B4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D6BB0(uint64_t a1)
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
  v10[1] = sub_100002E7C;

  return sub_1000D68D8(a1, v7, v9, v8, v4, v5, v6);
}

uint64_t sub_1000D6C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a7;
  v37 = a4;
  v34 = a6;
  v31 = a5;
  v32 = a1;
  v40 = sub_1000E2118();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000E2148();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v11 = sub_1000E24E8();
  v30 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  v16 = sub_1000E0D68();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a2 + 16);
  (*(v17 + 16))(v19, a3, v16);
  (*(v12 + 16))(v15, v32, v11);
  v20 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v21 = (v18 + v20 + *(v12 + 80)) & ~*(v12 + 80);
  v22 = swift_allocObject();
  v23 = v34;
  *(v22 + 2) = v31;
  *(v22 + 3) = v23;
  *(v22 + 4) = v36;
  *(v22 + 5) = a2;
  (*(v17 + 32))(&v22[v20], v19, v16);
  (*(v12 + 32))(&v22[v21], v15, v30);
  *&v22[(v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = v37;
  aBlock[4] = sub_1000D8C64;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100116A38;
  v24 = _Block_copy(aBlock);

  v25 = v35;
  sub_1000E2138();
  v43 = _swiftEmptyArrayStorage;
  sub_1000D91F4(&qword_10011EA20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100011FD8(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  v26 = v38;
  v27 = v40;
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v24);
  (*(v42 + 8))(v26, v27);
  (*(v39 + 8))(v25, v41);
}

uint64_t sub_1000D7150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v93 = a7;
  v96 = a6;
  v72 = a3;
  v97 = a2;
  v92 = a1;
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v94 = a5;
  v79 = sub_1000E24E8();
  v99 = *(v79 - 8);
  v95 = v99[8];
  v11 = __chkstk_darwin(v79);
  v83 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v78 = v71 - v13;
  v90 = sub_1000E0D68();
  v98 = *(v90 - 8);
  v88 = *(v98 + 64);
  v14 = __chkstk_darwin(v90);
  v82 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v89 = v71 - v16;
  v17 = sub_10000ADE4(&qword_10011E268, &qword_1000F2760);
  __chkstk_darwin(v17 - 8);
  v19 = v71 - v18;
  v20 = sub_1000E1F68();
  v21 = sub_1000D8BA4();
  WitnessTable = swift_getWitnessTable();
  v23 = sub_1000D91F4(&qword_10011FB70, sub_1000D8BA4, &protocol conformance descriptor for OS_dispatch_queue);
  v101 = v20;
  v102 = v21;
  v103 = WitnessTable;
  v104 = v23;
  v76 = sub_1000E1F38();
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = v71 - v24;
  v75 = swift_getWitnessTable();
  v80 = sub_1000E1F18();
  v81 = *(v80 - 8);
  __chkstk_darwin(v80);
  v91 = v71 - v25;
  v100 = *(a1 + 16);
  v26 = v100;
  v101 = a4;
  v27 = sub_1000E26D8();
  (*(*(v27 - 8) + 56))(v19, 1, 1, v27);
  v28 = v26;
  sub_1000E2088();
  sub_1000D8DA0(v19);

  v29 = v98;
  v30 = *(v98 + 16);
  v73 = v98 + 16;
  v31 = v89;
  v32 = v90;
  v30(v89, v97, v90);
  v33 = v30;
  v34 = v99;
  v35 = v99[2];
  v71[1] = v99 + 2;
  v84 = v35;
  v36 = v78;
  v37 = a3;
  v38 = v79;
  v35(v78, v37, v79);
  v39 = *(v29 + 80);
  v40 = *(v34 + 80);
  v41 = (v39 + 48) & ~v39;
  v86 = v41;
  v42 = (v88 + v41 + v40) & ~v40;
  v88 = v39 | v40;
  v43 = v42;
  v71[0] = v42;
  v44 = swift_allocObject();
  v45 = v96;
  *(v44 + 2) = v94;
  *(v44 + 3) = v45;
  v46 = v92;
  *(v44 + 4) = v93;
  *(v44 + 5) = v46;
  v47 = *(v29 + 32);
  v98 = v29 + 32;
  v87 = v47;
  v47(&v44[v41], v31, v32);
  v48 = v99[4];
  v99 += 4;
  v85 = v48;
  v49 = &v44[v43];
  v50 = v36;
  v51 = v38;
  v48(v49, v36, v38);

  v52 = v76;
  v53 = v74;
  sub_1000E2048();

  (*(v77 + 8))(v53, v52);
  v54 = v97;
  v33(v31, v97, v32);
  v55 = v72;
  v84(v50, v72, v38);
  v56 = v71[0];
  v57 = swift_allocObject();
  v58 = v96;
  *(v57 + 2) = v94;
  *(v57 + 3) = v58;
  v59 = v92;
  *(v57 + 4) = v93;
  *(v57 + 5) = v59;
  v87(&v57[v86], v89, v32);
  v85(&v57[v56], v50, v38);
  v60 = v82;
  v33(v82, v54, v32);
  v61 = v83;
  v84(v83, v55, v51);
  v62 = swift_allocObject();
  v63 = v96;
  *(v62 + 2) = v94;
  *(v62 + 3) = v63;
  v64 = v92;
  *(v62 + 4) = v93;
  *(v62 + 5) = v64;
  v87(&v62[v86], v60, v90);
  v85(&v62[v56], v61, v51);
  v65 = v64;
  swift_retain_n();
  v66 = v80;
  swift_getWitnessTable();
  v67 = v91;
  v68 = sub_1000E2068();

  (*(v81 + 8))(v67, v66);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v100 = *(v65 + 24);
  *(v65 + 24) = 0x8000000000000000;
  sub_1000CA4B0(v68, v97, isUniquelyReferenced_nonNull_native);
  *(v65 + 24) = v100;
  return swift_endAccess();
}

uint64_t sub_1000D7A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v8 = sub_10000B348(a3);
  if ((v9 & 1) == 0)
  {
    return swift_endAccess();
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + 24);
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000CB370();
  }

  v13 = *(v12 + 48);
  v14 = sub_1000E0D68();
  (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v10, v14);
  sub_1000C9AE0(v10, v12);
  *(a2 + 24) = v12;
  swift_endAccess();
  sub_1000E1F88();
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v15 = sub_1000E24E8();
  sub_1000D7B6C(a1, v15);
}

uint64_t sub_1000D7B6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  __chkstk_darwin(v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000E2D78();
  __chkstk_darwin(v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_1000E24C8();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_1000E24D8();
  }
}

uint64_t sub_1000D7DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v8 = sub_1000E2D78();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v14 - v10);
  sub_1000E24F8();
  sub_1000D91F4(&qword_10011FB88, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
  v12 = swift_allocError();
  sub_1000E2298();
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  sub_1000D7A18(v11, a1, a2, a3, a4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000D7F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a3;
  v43 = a4;
  v41 = a2;
  v39 = a1;
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v10 = sub_1000E2D78();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v12);
  v17 = (&v36 - v16);
  v18 = *(a6 - 8);
  v19 = __chkstk_darwin(v15);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v36 - v22;
  v40 = a7;
  v24 = sub_1000E1F48();
  __chkstk_darwin(v24);
  v26 = &v36 - v25;
  (*(v27 + 16))(&v36 - v25, v39);
  if ((*(v18 + 48))(v26, 1, a6) == 1)
  {
    *v14 = TUMakeNeighborhoodConduitError();
    swift_storeEnumTagMultiPayload();
    sub_1000D7A18(v14, v41, v42, v43, a5);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v37 = v11;
    v38 = v10;
    v39 = a5;
    v29 = *(v18 + 32);
    v29(v23, v26, a6);
    (*(v18 + 16))(v21, v23, a6);
    v30 = sub_1000E2C38();
    if (v30)
    {
      v31 = v30;
      (*(v18 + 8))(v21, a6);
    }

    else
    {
      v31 = swift_allocError();
      v29(v32, v21, a6);
    }

    v34 = v42;
    v33 = v43;
    v35 = v38;
    *v17 = v31;
    swift_storeEnumTagMultiPayload();
    sub_1000D7A18(v17, v41, v34, v33, v39);
    (*(v37 + 8))(v17, v35);
    return (*(v18 + 8))(v23, a6);
  }
}

uint64_t sub_1000D832C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v10 = sub_1000E2D78();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - v12;
  (*(*(a5 - 8) + 16))(&v15 - v12, a1, a5);
  swift_storeEnumTagMultiPayload();
  sub_1000D7A18(v13, a2, a3, a4, a5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1000D849C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E2118();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000E2148();
  v18 = *(v7 - 8);
  v19 = v7;
  __chkstk_darwin(v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000E0D68();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v17[1] = *(a1 + 16);
  (*(v11 + 16))(v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v13 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v11 + 32))(v14 + v13, v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_1000D8BF0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_1001169E8;
  v15 = _Block_copy(aBlock);

  sub_1000E2138();
  v21 = _swiftEmptyArrayStorage;
  sub_1000D91F4(&qword_10011EA20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100011FD8(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v15);
  (*(v20 + 8))(v6, v4);
  (*(v18 + 8))(v9, v19);
}

uint64_t sub_1000D8820(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  if (*(*(a1 + 24) + 16))
  {

    sub_10000B348(a2);
    if (v5)
    {

      sub_1000E1F88();
    }

    else
    {
    }
  }

  return result;
}

uint64_t NeighborhoodActivityPublisherService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000D8940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = sub_1000E2708();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000E26B8();
  __chkstk_darwin(v7);
  v8 = sub_1000E2148();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000D8BA4();
  v11[0] = "nduitService.server";
  v11[1] = v9;
  sub_1000E2138();
  v13 = _swiftEmptyArrayStorage;
  sub_1000D91F4(&qword_10011DCD8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000ADE4(&qword_10011DCE0, &qword_1000F0190);
  sub_100011FD8(&qword_10011DCE8, &qword_10011DCE0, &qword_1000F0190);
  sub_1000E28C8();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *(v3 + 16) = sub_1000E2748();
  *(v3 + 24) = sub_10000B980(_swiftEmptyArrayStorage);
  return v3;
}

unint64_t sub_1000D8BA4()
{
  result = qword_10011DCD0;
  if (!qword_10011DCD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011DCD0);
  }

  return result;
}

uint64_t sub_1000D8BF0()
{
  v1 = *(sub_1000E0D68() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1000D8820(v2, v3);
}

uint64_t sub_1000D8C64()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(sub_1000E0D68() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v7 = *(sub_1000E24E8() - 8);
  v8 = (v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v0[5];
  v10 = *(v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000D7150(v9, v0 + v5, v0 + v8, v10, v1, v2, v3);
}

uint64_t sub_1000D8DA0(uint64_t a1)
{
  v2 = sub_10000ADE4(&qword_10011E268, &qword_1000F2760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D8E08()
{
  v1 = *(v0 + 16);
  v2 = *(sub_1000E0D68() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v5 = *(sub_1000E24E8() - 8);
  v6 = *(v0 + 40);
  v7 = v0 + ((v4 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_1000D7DA8(v6, v0 + v3, v7, v1);
}

uint64_t sub_1000D8F30()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v6 = sub_1000E24E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1000D90C0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *, char *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(sub_1000E0D68() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v10 = *(sub_1000E24E8() - 8);
  v11 = *(v2 + 5);
  v12 = &v2[(v9 + *(v10 + 80)) & ~*(v10 + 80)];

  return a2(a1, v11, &v2[v8], v12, v4, v5, v6);
}

uint64_t sub_1000D91F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D9258()
{
  v1 = [*v0 activeDevices];
  sub_1000DA3C4();
  v2 = sub_1000E2468();

  return v2;
}

void sub_1000D92D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = *v6;
  if (a1)
  {
    v10[4] = a1;
    v10[5] = a2;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10002ED24;
    v10[3] = a5;
    v9 = _Block_copy(v10);
  }

  else
  {
    v9 = 0;
  }

  [v8 *a6];
  _Block_release(v9);
}

uint64_t sub_1000D93B8()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1000D94CC;
  v2 = swift_continuation_init();
  v0[17] = sub_10000ADE4(&qword_10011E7C0, &qword_1000F0C30);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100014FC4;
  v0[13] = &unk_100116D30;
  v0[14] = v2;
  [v1 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000D94CC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(*v2 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1000D95F8(uint64_t a1, uint64_t a2, Class a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000E2328();
  if (a3)
  {
    a3 = sub_1000E22A8().super.isa;
  }

  v12[4] = a4;
  v12[5] = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000D96FC;
  v12[3] = &unk_100116CE0;
  v10 = _Block_copy(v12);

  [v5 registerRequestID:v9 options:a3 handler:v10];
  _Block_release(v10);
}

uint64_t sub_1000D96FC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = *(a1 + 32);
  v7 = sub_1000E22B8();
  if (a3)
  {
    a3 = sub_1000E22B8();
  }

  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v6(v7, a3, sub_1000DA3BC, v9);
}

void sub_1000D9808(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  isa = a2;
  if (a1)
  {
    v7.super.isa = sub_1000E22A8().super.isa;
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7.super.isa = 0;
  if (a2)
  {
LABEL_3:
    isa = sub_1000E22A8().super.isa;
  }

LABEL_4:
  if (a3)
  {
    v8 = sub_1000E0BD8();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7.super.isa, isa);
}

uint64_t sub_1000D9914(uint64_t a1, uint64_t a2, Class a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000E2328();
  if (a3)
  {
    a3 = sub_1000E22A8().super.isa;
  }

  v12[4] = a4;
  v12[5] = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000D9A18;
  v12[3] = &unk_100116CB8;
  v10 = _Block_copy(v12);

  [v5 registerEventID:v9 options:a3 handler:v10];
  _Block_release(v10);
}

uint64_t sub_1000D9A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1000E22B8();
  if (a3)
  {
    a3 = sub_1000E22B8();
  }

  v4(v5, a3);
}

uint64_t sub_1000D9AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_1000E2328();
  v13.super.isa = sub_1000E22A8().super.isa;
  v14 = sub_1000E2328();
  if (a6)
  {
    a6 = sub_1000E22A8().super.isa;
  }

  v17[4] = a7;
  v17[5] = a8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1000D9C5C;
  v17[3] = &unk_100116C90;
  v15 = _Block_copy(v17);

  [v8 sendRequestID:v12 request:v13.super.isa destinationID:v14 options:a6 responseHandler:v15];
  _Block_release(v15);
}

uint64_t sub_1000D9C5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_1000E22B8();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_1000E22B8();
  }

LABEL_4:

  v8 = a4;
  v6(v7, v5, a4);
}

uint64_t sub_1000D9D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, objc_class *a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_100002E7C;

  return sub_1000DA090(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1000D9E2C()
{
  v1 = [*v0 peerDeviceIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1000E2338();

  return v3;
}

void sub_1000D9E94(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100067144;
    v5[3] = &unk_100116C40;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setDiscoverySessionStateChangedHandler:v4];
  _Block_release(v4);
}

uint64_t sub_1000D9F64()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1000DA448;
  v2 = swift_continuation_init();
  v0[17] = sub_10000ADE4(&qword_10011E7C0, &qword_1000F0C30);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100014FC4;
  v0[13] = &unk_100116C18;
  v0[14] = v2;
  [v1 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000DA078(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000DA090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class a6)
{
  v9 = v7;
  v10 = sub_1000E2328();
  v9[18].super.isa = v10;
  v11.super.isa = sub_1000E22A8().super.isa;
  v9[19].super.isa = v11.super.isa;
  v12 = sub_1000E2328();
  v9[20].super.isa = v12;
  if (a6)
  {
    a6 = sub_1000E22A8().super.isa;
  }

  v9[21].super.isa = a6;
  v9[2].super.isa = v9;
  v9[3].super.isa = sub_1000DA244;
  v13 = swift_continuation_init();
  v9[17].super.isa = sub_10000ADE4(&qword_10011E7C0, &qword_1000F0C30);
  v9[10].super.isa = _NSConcreteStackBlock;
  v9[11].super.isa = 1107296256;
  v9[12].super.isa = sub_100014FC4;
  v9[13].super.isa = &unk_100116C68;
  v9[14].super.isa = v13;
  [v6 sendEventID:v10 event:v11.super.isa destinationID:v12 options:a6 completion:&v9[10]];

  return _swift_continuation_await(&v9[2]);
}

uint64_t sub_1000DA244(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *(*v2 + 160);
  v7 = *(*v2 + 152);
  v8 = *(*v2 + 144);
  if (*(v3 + 48))
  {
    swift_willThrow();
  }

  v9 = *(v4 + 8);

  return v9();
}

unint64_t sub_1000DA3C4()
{
  result = qword_10011F5E0;
  if (!qword_10011F5E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011F5E0);
  }

  return result;
}

void sub_1000DA488(uint64_t a1, unint64_t a2, double a3)
{
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000E2328();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      sub_1000E28B8();
      swift_unknownObjectRelease();
      sub_10000C154(v25, v26);
    }

    else
    {
      memset(v26, 0, sizeof(v26));
    }

    sub_10000ADE4(&unk_10011ECF0, &qword_1000F08A0);
    if (swift_dynamicCast())
    {
      v10 = *&v25[0];
      sub_1000DAB7C();

      v11 = sub_1000E2878();
      v12 = sub_1000E2698();

      if (!os_log_type_enabled(v11, v12))
      {
LABEL_13:

        return;
      }

      v13 = swift_slowAlloc();
      *&v26[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100029C70(a1, a2, v26);
      *(v13 + 12) = 2080;
      *&v25[0] = v10;
      v14 = sub_1000E2368();
      v16 = sub_100029C70(v14, v15, v26);

      *(v13 + 14) = v16;
      v17 = "Got %s from server bag with a value of: %s";
    }

    else
    {
      if (qword_10011DC60 != -1)
      {
        swift_once();
      }

      v18 = sub_1000E1F08();
      sub_1000049D0(v18, qword_100123128);

      v11 = sub_1000E1EE8();
      v12 = sub_1000E2698();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_13;
      }

      v13 = swift_slowAlloc();
      *&v25[0] = swift_slowAlloc();
      *v13 = 136315394;
      *&v26[0] = a1;
      *(&v26[0] + 1) = a2;

      v19 = sub_1000E2368();
      v21 = sub_100029C70(v19, v20, v25);

      *(v13 + 4) = v21;
      *(v13 + 12) = 2080;
      *v26 = a3;
      v22 = sub_1000E2368();
      v24 = sub_100029C70(v22, v23, v25);

      *(v13 + 14) = v24;
      v17 = "Server bag does not have a value for %s, so returning the default one of %s seconds.";
    }

    _os_log_impl(&_mh_execute_header, v11, v12, v17, v13, 0x16u);
    swift_arrayDestroy();

    goto LABEL_13;
  }

  __break(1u);
}

id sub_1000DA7E4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = sub_1000E2328();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      sub_1000E28B8();
      swift_unknownObjectRelease();
      sub_10000C154(v24, v25);
    }

    else
    {
      memset(v25, 0, sizeof(v25));
    }

    sub_10000ADE4(&unk_10011ECF0, &qword_1000F08A0);
    if (swift_dynamicCast())
    {
      a3 = *&v24[0];
      sub_1000DAB7C();

      v10 = sub_1000E2878();
      v11 = sub_1000E2698();

      if (!os_log_type_enabled(v10, v11))
      {
LABEL_13:

        return a3;
      }

      v12 = swift_slowAlloc();
      *&v25[0] = swift_slowAlloc();
      *v12 = 136315394;
      *(v12 + 4) = sub_100029C70(a1, a2, v25);
      *(v12 + 12) = 2080;
      *&v24[0] = a3;
      v13 = sub_1000E2368();
      v15 = sub_100029C70(v13, v14, v25);

      *(v12 + 14) = v15;
      v16 = "Got %s from server bag with a value of: %s";
    }

    else
    {
      if (qword_10011DC60 != -1)
      {
        swift_once();
      }

      v17 = sub_1000E1F08();
      sub_1000049D0(v17, qword_100123128);

      v10 = sub_1000E1EE8();
      v11 = sub_1000E2698();

      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_13;
      }

      v12 = swift_slowAlloc();
      *&v24[0] = swift_slowAlloc();
      *v12 = 136315394;
      *&v25[0] = a1;
      *(&v25[0] + 1) = a2;

      v18 = sub_1000E2368();
      v20 = sub_100029C70(v18, v19, v24);

      *(v12 + 4) = v20;
      *(v12 + 12) = 2080;
      *&v25[0] = a3;
      v21 = sub_1000E2368();
      v23 = sub_100029C70(v21, v22, v24);

      *(v12 + 14) = v23;
      v16 = "Server bag does not have a value for %s, so returning the default one of %s seconds.";
    }

    _os_log_impl(&_mh_execute_header, v10, v11, v16, v12, 0x16u);
    swift_arrayDestroy();

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id sub_1000DAB40()
{
  result = sub_1000DA7E4(0xD00000000000001ELL, 0x80000001000EC8E0, 5);
  qword_100120528 = result;
  return result;
}

unint64_t sub_1000DAB7C()
{
  result = qword_100120530;
  if (!qword_100120530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100120530);
  }

  return result;
}

void *sub_1000DABD8()
{
  v1 = [*(v0 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager) activityAuthorizedBundleIdentifiers];
  sub_1000DC210();
  v2 = sub_1000E22B8();

  sub_10000ADE4(&qword_10011DF68, &qword_1000F04C8);
  result = sub_1000E2B78();
  v4 = result;
  v5 = 0;
  v6 = v2 + 64;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v2 + 64);
  v10 = (v7 + 63) >> 6;
  v23 = result + 8;
  v24 = v2;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = (*(v24 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(v24 + 56) + 8 * v14);

      result = [v18 BOOLValue];
      *(v23 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v19 = (v4[6] + 16 * v14);
      *v19 = v16;
      v19[1] = v17;
      *(v4[7] + v14) = result;
      v20 = v4[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v4[2] = v22;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        return v4;
      }

      v13 = *(v6 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DADAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230F0;

  return _swift_task_switch(sub_1000DAE48, v7, 0);
}

uint64_t sub_1000DAE48()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  sub_1000A8BE4(0, v3, v3, v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000DAEE4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for HandoffInfo(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  sub_1000DC13C(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1000033C8(v12, &qword_10011F8B8, &qword_1000F22D8);
  }

  sub_1000DC1AC(v12, v19);
  v21 = [*&a2[OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager] activityAuthorizedBundleIdentifiers];
  sub_1000DC210();
  v22 = sub_1000E22B8();

  if (*(v22 + 16) && (v23 = sub_10000B2D0(v35, a4), (v24 & 1) != 0))
  {
    v25 = *(*(v22 + 56) + 8 * v23);

    v26 = [v25 BOOLValue];
  }

  else
  {

    v26 = 0;
  }

  v27 = sub_1000E2538();
  (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
  sub_1000DC25C(v19, v17);
  v28 = qword_10011DC30;

  v29 = a2;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = qword_1001230F0;
  v31 = sub_1000DC458(&qword_100120020, type metadata accessor for ConduitActor, &unk_1000F2250);
  v32 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  *(v33 + 24) = v31;
  *(v33 + 32) = v35;
  *(v33 + 40) = a4;
  *(v33 + 48) = v26;
  *(v33 + 56) = v29;
  sub_1000DC1AC(v17, v33 + v32);

  sub_1000223DC(0, 0, v9, &unk_1000F38E8, v33);

  return sub_1000DC3DC(v19);
}

uint64_t sub_1000DB2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 104) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = sub_1000E17E8();
  *(v8 + 48) = v9;
  *(v8 + 56) = *(v9 - 8);
  *(v8 + 64) = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v10 = qword_1001230F0;
  *(v8 + 72) = qword_1001230F0;

  return _swift_task_switch(sub_1000DB3BC, v10, 0);
}

uint64_t sub_1000DB3BC()
{
  v20 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123128);

  v2 = sub_1000E1EE8();
  v3 = sub_1000E2668();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_100029C70(v6, v5, &v19);
    *(v7 + 12) = 1024;
    *(v7 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending updated policy for %s: %{BOOL}d", v7, 0x12u);
    sub_10000E9DC(v8);
  }

  v9 = *(v0 + 40);
  v10 = *(v0 + 24);
  v11 = *(v0 + 104);
  v12 = *(v0 + 16);
  v13 = swift_task_alloc();
  *(v13 + 16) = v12;
  *(v13 + 24) = v10;
  *(v13 + 32) = v11;
  sub_1000DC458(&qword_10011EDA0, &type metadata accessor for NCProtoPolicyInfoUpdatedEvent, &protocol conformance descriptor for NCProtoPolicyInfoUpdatedEvent);
  sub_1000E0E38();

  v14 = *(v9 + 8);
  v15 = *(v9 + 16);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  *(v0 + 80) = qword_1001230E0;
  v16 = swift_task_alloc();
  *(v0 + 88) = v16;
  *v16 = v0;
  v16[1] = sub_1000DB688;
  v17 = *(v0 + 64);

  return sub_100028064(6, v17, v14, v15, 0);
}

uint64_t sub_1000DB688()
{
  v2 = *(*v1 + 80);
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1000DB830;
  }

  else
  {
    v3 = sub_1000DB7B0;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1000DB7B0()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000DB830()
{
  v1 = v0[9];
  (*(v0[7] + 8))(v0[8], v0[6]);

  return _swift_task_switch(sub_1000DB8A8, v1, 0);
}

uint64_t sub_1000DB8A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DB90C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_10000ADE4(&qword_100120538, &qword_1000F38F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F07C0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4;

  sub_10000C9B0(inited);
  swift_setDeallocating();
  sub_1000033C8(inited + 32, &qword_100120540, &qword_1000F38F8);
  return sub_1000E17D8();
}

uint64_t sub_1000DB9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1000E17E8();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230F0;
  v6[8] = qword_1001230F0;

  return _swift_task_switch(sub_1000DBAD8, v8, 0);
}

uint64_t sub_1000DBAD8()
{
  v21 = v0;
  v1 = sub_1000DABD8();
  if (v1[2])
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v2 = sub_1000E1F08();
    sub_1000049D0(v2, qword_100123128);

    v3 = sub_1000E1EE8();
    v4 = sub_1000E2668();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v20 = v6;
      *v5 = 136315138;
      v7 = sub_1000E22C8();
      v9 = sub_100029C70(v7, v8, &v20);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Sending policy infos: %s", v5, 0xCu);
      sub_10000E9DC(v6);
    }

    v10 = v0[4];
    *(swift_task_alloc() + 16) = v1;
    sub_1000DC458(&qword_10011EDA0, &type metadata accessor for NCProtoPolicyInfoUpdatedEvent, &protocol conformance descriptor for NCProtoPolicyInfoUpdatedEvent);
    sub_1000E0E38();

    if (qword_10011DC18 != -1)
    {
      swift_once();
    }

    v0[9] = qword_1001230E0;
    v11 = swift_task_alloc();
    v0[10] = v11;
    *v11 = v0;
    v11[1] = sub_1000DBEBC;
    v12 = v0[7];
    v13 = v0[3];

    return sub_100028064(6, v12, v13, v10, 0);
  }

  else
  {

    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v15 = sub_1000E1F08();
    sub_1000049D0(v15, qword_100123128);
    v16 = sub_1000E1EE8();
    v17 = sub_1000E2658();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "No policy info to send, skipping", v18, 2u);
    }

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1000DBEBC()
{
  v2 = *(*v1 + 72);
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1000DC060;
  }

  else
  {
    v3 = sub_1000DBFE4;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1000DBFE4()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000DC060()
{
  v1 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return _swift_task_switch(sub_1000DC0D8, v1, 0);
}

uint64_t sub_1000DC0D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DC13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DC1AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandoffInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000DC210()
{
  result = qword_10011DF80;
  if (!qword_10011DF80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011DF80);
  }

  return result;
}

uint64_t sub_1000DC25C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandoffInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DC2C0(uint64_t a1)
{
  v4 = *(type metadata accessor for HandoffInfo(0) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002E7C;

  return sub_1000DB2BC(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_1000DC3DC(uint64_t a1)
{
  v2 = type metadata accessor for HandoffInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DC458(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000DC4D8()
{
  type metadata accessor for CallPublisher();
  swift_allocObject();
  result = sub_1000DC514();
  qword_1001231D8 = result;
  return result;
}

uint64_t sub_1000DC514()
{
  v1 = v0;
  v2 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v2 - 8);
  v4 = v10 - v3;
  swift_defaultActor_initialize();
  v10[1] = _swiftEmptyArrayStorage;
  sub_10000ADE4(&qword_100120628, &qword_1000F39F0);
  swift_allocObject();
  *(v0 + 112) = sub_1000E2008();
  v5 = [objc_opt_self() sharedInstance];
  *(v0 + 120) = v5;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0;
  v6 = [v5 callServicesClientCapabilities];
  [v6 setWantsToScreenCalls:1];

  v7 = sub_1000E2538();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;

  sub_100022960(0, 0, v4, &unk_1000F3A00, v8);

  return v1;
}

uint64_t sub_1000DC6E8()
{
  sub_1000DC748();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DC748()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = TUCallCenterCallStatusChangedNotification;
  v4 = swift_allocObject();
  swift_weakInit();
  v32 = sub_100002108;
  v33 = v4;
  v28 = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100002014;
  v31 = &unk_100116EB0;
  v5 = _Block_copy(&v28);

  v6 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v5];
  _Block_release(v5);

  v0[16] = v6;
  swift_unknownObjectRelease();
  v7 = [v1 defaultCenter];
  v8 = TUCallCenterVideoCallStatusChangedNotification;
  v9 = swift_allocObject();
  swift_weakInit();
  v32 = sub_1000DD020;
  v33 = v9;
  v28 = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100002014;
  v31 = &unk_100116ED8;
  v10 = _Block_copy(&v28);

  v11 = [v7 addObserverForName:v8 object:0 queue:0 usingBlock:v10];
  _Block_release(v10);

  v0[17] = v11;
  swift_unknownObjectRelease();
  v12 = [v1 defaultCenter];
  v13 = TUCallIsUplinkMutedChangedNotification;
  v14 = swift_allocObject();
  swift_weakInit();
  v32 = sub_1000DD058;
  v33 = v14;
  v28 = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100002014;
  v31 = &unk_100116F00;
  v15 = _Block_copy(&v28);

  v16 = [v12 addObserverForName:v13 object:0 queue:0 usingBlock:v15];
  _Block_release(v15);

  v0[18] = v16;
  swift_unknownObjectRelease();
  v17 = [v1 defaultCenter];
  v18 = TUCallIsSendingVideoChangedNotification;
  v19 = swift_allocObject();
  swift_weakInit();
  v32 = sub_1000DD090;
  v33 = v19;
  v28 = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100002014;
  v31 = &unk_100116F28;
  v20 = _Block_copy(&v28);

  v21 = [v17 addObserverForName:v18 object:0 queue:0 usingBlock:v20];
  _Block_release(v20);

  v0[19] = v21;
  swift_unknownObjectRelease();
  v22 = [v1 defaultCenter];
  v23 = TUCallCenterIsScreeningChangedNotification;
  v24 = swift_allocObject();
  swift_weakInit();
  v32 = sub_1000DD0C8;
  v33 = v24;
  v28 = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100002014;
  v31 = &unk_100116F50;
  v25 = _Block_copy(&v28);

  v26 = [v22 addObserverForName:v23 object:0 queue:0 usingBlock:v25];
  _Block_release(v25);

  v0[20] = v26;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000DCC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_1000DCC40, 0, 0);
}

uint64_t sub_1000DCC40()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1000DCD04, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1000DCD04()
{
  sub_100002368();

  return _swift_task_switch(sub_1000DCD74, 0, 0);
}

uint64_t sub_1000DCD9C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000DCDF4()
{
  sub_1000DCD9C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000DCE20()
{
  if (qword_10011DCB8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000DCE7C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_10000ADE4(&qword_100120638, &qword_1000F3A60);
  a1[4] = sub_100002C64(&qword_100120640, &qword_100120638, &qword_1000F3A60, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_100006FD8(a1);
  sub_10000ADE4(&qword_100120628, &qword_1000F39F0);
  sub_100002C64(&qword_100120648, &qword_100120628, &qword_1000F39F0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  return sub_1000E20E8();
}

uint64_t sub_1000DCF6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000DC6C8(a1, v4, v5, v6);
}

uint64_t sub_1000DD100(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000029E4(a1, v4, v5, v6);
}

uint64_t sub_1000DD1B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000029E4(a1, v4, v5, v6);
}

uint64_t sub_1000DD268(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002E7C;

  return sub_1000DCC20(a1, v4, v5, v6);
}

void sub_1000DD35C(uint64_t a1)
{
  sub_1000DD3D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HandoffInfo(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000DD3D0(uint64_t a1)
{
  if (!qword_1001206D0)
  {
    type metadata accessor for HandoffInfo(255);
    sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
    v1 = sub_1000E2568();
    if (!v2)
    {
      atomic_store(v1, &qword_1001206D0);
    }
  }
}

void sub_1000DD494(uint64_t a1)
{
  sub_1000E0D68();
  if (v1 <= 0x3F)
  {
    sub_1000DD570(319);
    if (v2 <= 0x3F)
    {
      sub_10000CAAC(319, &qword_10011F890, TUConversationMember_ptr);
      if (v3 <= 0x3F)
      {
        sub_1000DD5D4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000DD570(uint64_t a1)
{
  if (!qword_100120768)
  {
    sub_10000AE90(&qword_100120770, &qword_1000F3A98);
    v1 = sub_1000E0F08();
    if (!v2)
    {
      atomic_store(v1, &qword_100120768);
    }
  }
}

void sub_1000DD5D4(uint64_t a1)
{
  if (!qword_100120778)
  {
    sub_10000CAAC(255, &unk_10011F930, TUHandle_ptr);
    sub_1000DD648();
    v1 = sub_1000E2638();
    if (!v2)
    {
      atomic_store(v1, &qword_100120778);
    }
  }
}

unint64_t sub_1000DD648()
{
  result = qword_10011EA60;
  if (!qword_10011EA60)
  {
    sub_10000CAAC(255, &unk_10011F930, TUHandle_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EA60);
  }

  return result;
}

uint64_t sub_1000DD6C0()
{
  v1[3] = v0;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v1[4] = swift_task_alloc();
  type metadata accessor for HandoffInfo(0);
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for HandoffState(0);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000DD7B8, 0, 0);
}

uint64_t sub_1000DD7B8()
{
  sub_10001C538(v0[3], v0[7]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[7];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[4];
    v4 = v0[5];
    sub_1000DC1AC(v2, v4);
    v6 = *(v4 + 8);
    v5 = *(v4 + 16);
    v7 = sub_1000E2538();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = qword_10011DC18;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = v0[4];
    v10 = qword_1001230E0;
    v11 = sub_1000DE028(&qword_1001201E0, type metadata accessor for ConduitDeviceActor, &unk_1000F1B48);
    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = v11;
    v12[4] = v6;
    v12[5] = v5;

    v13 = sub_100022C50(0, 0, v9, &unk_1000F3BA8, v12);
    v0[8] = v13;
    v14 = swift_task_alloc();
    v0[9] = v14;
    v15 = sub_10000ADE4(&qword_10011EE08, &qword_1000F1260);
    *v14 = v0;
    v14[1] = sub_1000DDA3C;

    return Task<>.value.getter(v0 + 2, v13, v15);
  }

  else
  {
    sub_1000DDFC8(v2, type metadata accessor for HandoffState);

    v16 = v0[1];

    return v16(0);
  }
}

uint64_t sub_1000DDA3C()
{

  return _swift_task_switch(sub_1000DDB54, 0, 0);
}

uint64_t sub_1000DDB54()
{
  v1 = v0[2];
  sub_1000DDFC8(v0[5], type metadata accessor for HandoffInfo);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1000DDBF4()
{
  if (*v0)
  {
    return 0x616E7567616C2ELL;
  }

  else
  {
    return 0x65736E617078652ELL;
  }
}

unint64_t sub_1000DDC34()
{
  result = qword_1001207C0;
  if (!qword_1001207C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001207C0);
  }

  return result;
}

uint64_t sub_1000DDC88()
{
  sub_1000E2A88(64);
  v4._object = 0x80000001000ECA90;
  v4._countAndFlagsBits = 0xD000000000000012;
  sub_1000E23A8(v4);
  if (*v0)
  {
    v1._countAndFlagsBits = 0x616E7567616C2ELL;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736E617078652ELL;
  }

  if (*v0)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  v1._object = v2;
  sub_1000E23A8(v1);

  v5._object = 0x80000001000ECAB0;
  v5._countAndFlagsBits = 0xD000000000000012;
  sub_1000E23A8(v5);
  type metadata accessor for HandoffInfo(0);
  sub_1000E0D68();
  sub_1000DE028(&unk_100120190, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v6._countAndFlagsBits = sub_1000E2C18();
  sub_1000E23A8(v6);

  v7._countAndFlagsBits = 0xD000000000000015;
  v7._object = 0x80000001000ECAD0;
  sub_1000E23A8(v7);
  sub_1000E23A8(*(v0 + 8));
  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  sub_1000E23A8(v8);
  return 0;
}

unint64_t sub_1000DDE18()
{
  v1 = v0;
  v2 = 0xD000000000000014;
  v3 = type metadata accessor for HandoffInfo(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HandoffState(0);
  __chkstk_darwin(v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001C538(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000DC1AC(v8, v5);
    v10 = 0;
    v11 = 0xE000000000000000;
    sub_1000E2A88(23);

    v10 = 0xD000000000000014;
    v11 = 0x80000001000ECA50;
    v12._countAndFlagsBits = sub_1000DDC88();
    sub_1000E23A8(v12);

    v13._countAndFlagsBits = 41;
    v13._object = 0xE100000000000000;
    sub_1000E23A8(v13);
    v2 = v10;
    sub_1000DDFC8(v5, type metadata accessor for HandoffInfo);
  }

  else
  {
    sub_1000DDFC8(v8, type metadata accessor for HandoffState);
  }

  return v2;
}

uint64_t sub_1000DDFC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000DE028(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000DE070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230E0;

  return _swift_task_switch(sub_1000DE10C, v6, 0);
}

uint64_t sub_1000DE10C()
{
  if (qword_10011DC20 != -1)
  {
    swift_once();
  }

  if (sub_1000449DC(*(v0 + 24), *(v0 + 32), 0))
  {
    v1 = sub_100012CD8();
  }

  else
  {
    v1 = 0;
  }

  **(v0 + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000DE1D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002E7C;

  return sub_1000DE070(a1, v4, v5, v7, v6);
}

id sub_1000DE294()
{
  v1 = sub_1000E1668();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E16B8();
  v5 = [v0 identifier];
  sub_1000E2338();

  sub_1000E1678();
  v6 = [v0 localizedDisplayName];
  sub_1000E2338();

  sub_1000E1688();
  v7 = [v0 label];
  if (v7)
  {
    v8 = v7;
    sub_1000E2338();
  }

  sub_1000E16A8();
  result = [v0 type];
  if (result == 1)
  {
    v10 = &enum case for NCProtoContactHandleAnonym.AnonymType.phoneNumber(_:);
  }

  else
  {
    if (result != 2)
    {
      return result;
    }

    v10 = &enum case for NCProtoContactHandleAnonym.AnonymType.emailAddress(_:);
  }

  (*(v2 + 104))(v4, *v10, v1);
  return sub_1000E1698();
}

id sub_1000DE464(void *a1, void *a2)
{
  v4 = [a1 contactProperty];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 contact];
    [v6 mutableCopy];
    sub_1000E28B8();
    swift_unknownObjectRelease();
    sub_1000DE92C();
    swift_dynamicCast();
    sub_10000ADE4(&qword_100120150, &qword_1000F3338);
    isa = sub_1000E2458().super.isa;
    [v15 setPhoneNumbers:isa];

    v8 = sub_1000E2458().super.isa;
    [v15 setEmailAddresses:v8];

    v9 = [v5 contact];
    v10 = [v9 identifier];

    if (!v10)
    {
      sub_1000E2338();
      v10 = sub_1000E2328();
    }

    v11 = [a1 actionType];
    v12 = [a1 bundleIdentifier];
    if (!v12)
    {
      sub_1000E2338();
      v12 = sub_1000E2328();
    }

    v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContact:v15 contactIdentifier:v10 anonym:a2 actionType:v11 bundleIdentifier:v12];
  }

  else
  {

    return 0;
  }

  return v13;
}

uint64_t sub_1000DE6AC(uint64_t a1, void *a2)
{
  v3 = sub_1000E16C8();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000E10C8();
  __chkstk_darwin(v4);
  v10 = [a2 contact];
  sub_1000DE8D4();
  sub_1000E0E38();

  sub_1000E1578();
  v5 = [a2 contactIdentifier];
  sub_1000E2338();

  sub_1000E1598();
  v6 = [a2 anonym];
  sub_1000DE294();

  sub_1000E15A8();
  v7 = [a2 actionType];
  sub_1000E2338();

  sub_1000E1568();
  v8 = [a2 bundleIdentifier];
  sub_1000E2338();

  return sub_1000E1588();
}

unint64_t sub_1000DE8D4()
{
  result = qword_100120130;
  if (!qword_100120130)
  {
    sub_1000E10C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120130);
  }

  return result;
}

unint64_t sub_1000DE92C()
{
  result = qword_100120158;
  if (!qword_100120158)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100120158);
  }

  return result;
}

void sub_1000DE978(uint64_t a1)
{
  v46 = sub_1000E0D68();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1000E2968();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  if (!v5)
  {
    return;
  }

  v54 = _swiftEmptyArrayStorage;
  sub_10002A1A4(0, v5 & ~(v5 >> 63), 0);
  v6 = v54;
  if (v47)
  {
    v7 = sub_1000E2908();
  }

  else
  {
    v7 = sub_1000E28D8();
    v8 = *(a1 + 36);
  }

  v51 = v7;
  v52 = v8;
  v53 = v47 != 0;
  if (v5 < 0)
  {
    goto LABEL_54;
  }

  v38 = v1;
  v9 = 0;
  v43 = (v3 + 8);
  v44 = a1;
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v10 = a1;
  }

  v40 = a1 + 56;
  v41 = v10;
  v39 = a1 + 64;
  v42 = v5;
  while (v9 < v5)
  {
    if (__OFADD__(v9++, 1))
    {
      goto LABEL_50;
    }

    v13 = v51;
    v14 = v53;
    v48 = v52;
    sub_1000D4B28(v51, v52, v53, a1);
    v16 = v15;
    v49 = 91;
    v50 = 0xE100000000000000;
    v17 = [v15 UUID];
    v18 = v45;
    sub_1000E0D38();

    sub_1000E0A60(&unk_100120190, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = v46;
    v55._countAndFlagsBits = sub_1000E2C18();
    sub_1000E23A8(v55);

    (*v43)(v18, v19);
    v56._countAndFlagsBits = 8250;
    v56._object = 0xE200000000000000;
    sub_1000E23A8(v56);
    v20 = [v16 state];
    if (v20 <= 1)
    {
      if (!v20)
      {
        v21._countAndFlagsBits = 0x676E697469615728;
        goto LABEL_27;
      }

      if (v20 != 1)
      {
        goto LABEL_26;
      }

      v21._countAndFlagsBits = 0x6972617065725028;
      v22 = 0xEB0000000029676ELL;
    }

    else
    {
      if (v20 == 2)
      {
        v21._countAndFlagsBits = 0x676E696E696F4A28;
        goto LABEL_27;
      }

      if (v20 != 3)
      {
        if (v20 == 4)
        {
          v21._countAndFlagsBits = 0x676E697661654C28;
        }

        else
        {
LABEL_26:
          v21._countAndFlagsBits = 0x6E776F6E6B6E5528;
        }

LABEL_27:
        v22 = 0xE900000000000029;
        goto LABEL_28;
      }

      v22 = 0xE800000000000000;
      v21._countAndFlagsBits = 0x2964656E696F4A28;
    }

LABEL_28:
    v21._object = v22;
    sub_1000E23A8(v21);

    v57._countAndFlagsBits = 93;
    v57._object = 0xE100000000000000;
    sub_1000E23A8(v57);

    v24 = v49;
    v23 = v50;
    v54 = v6;
    v26 = v6[2];
    v25 = v6[3];
    if (v26 >= v25 >> 1)
    {
      sub_10002A1A4((v25 > 1), v26 + 1, 1);
      v6 = v54;
    }

    v6[2] = v26 + 1;
    v27 = &v6[2 * v26];
    v27[4] = v24;
    v27[5] = v23;
    if (v47)
    {
      a1 = v44;
      if (!v14)
      {
        goto LABEL_55;
      }

      if (sub_1000E2928())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v5 = v42;
      sub_10000ADE4(&unk_1001200C0, &unk_1000F3C00);
      v11 = sub_1000E2618();
      sub_1000E29D8();
      v11(&v49, 0);
      if (v9 == v5)
      {
LABEL_47:
        sub_10000A848(v51, v52, v53);
        return;
      }
    }

    else
    {
      a1 = v44;
      if (v14)
      {
        goto LABEL_56;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      v28 = 1 << *(v44 + 32);
      if (v13 >= v28)
      {
        goto LABEL_51;
      }

      v29 = v13 >> 6;
      v30 = *(v40 + 8 * (v13 >> 6));
      if (((v30 >> v13) & 1) == 0)
      {
        goto LABEL_52;
      }

      if (*(v44 + 36) != v48)
      {
        goto LABEL_53;
      }

      v31 = v30 & (-2 << (v13 & 0x3F));
      if (v31)
      {
        v28 = __clz(__rbit64(v31)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v5 = v42;
      }

      else
      {
        v32 = v29 << 6;
        v33 = v29 + 1;
        v34 = (v39 + 8 * v29);
        v5 = v42;
        while (v33 < (v28 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            sub_10000A848(v13, v48, 0);
            v28 = __clz(__rbit64(v35)) + v32;
            goto LABEL_46;
          }
        }

        sub_10000A848(v13, v48, 0);
      }

LABEL_46:
      v37 = *(a1 + 36);
      v51 = v28;
      v52 = v37;
      v53 = 0;
      if (v9 == v5)
      {
        goto LABEL_47;
      }
    }
  }

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
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

void sub_1000DEED4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000E2918();
    sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
    sub_1000E09F8();
    sub_1000E2628();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_1000E29A8())
        {
          goto LABEL_20;
        }

        sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      sub_10000A840(v20);
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_20:
      sub_10000A840(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void *sub_1000DF118(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000E2B68())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_1000E2A98();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_1000DF22C()
{
  v0 = sub_1000E1F08();
  sub_10002B948(v0, qword_1001207D0);
  sub_1000049D0(v0, qword_1001207D0);
  return sub_1000E1EF8();
}

id sub_1000DF2AC()
{
  result = [objc_allocWithZone(type metadata accessor for ConversationPublishers()) init];
  qword_1001231E0 = result;
  return result;
}

char *sub_1000DF2DC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1000E2128();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_conversationJoinedSubject;
  sub_10000ADE4(&unk_100120840, &qword_1000F2430);
  swift_allocObject();
  *&v0[v7] = sub_1000E1FD8();
  v8 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_conversationLeftSubject;
  swift_allocObject();
  *&v0[v8] = sub_1000E1FD8();
  if (_swiftEmptyArrayStorage >> 62 && sub_1000E2B68())
  {
    sub_1000E0090(_swiftEmptyArrayStorage, &qword_1001200B0, &qword_1000F32D0, qword_10011F0D0, TUConversation_ptr);
  }

  else
  {
    v9 = &_swiftEmptySetSingleton;
  }

  v10 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_activeConversationsSubject;
  v24 = v9;
  sub_10000ADE4(&qword_10011FAE0, &qword_1000F2720);
  swift_allocObject();
  *&v0[v10] = sub_1000E2008();
  v11 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_joinedConversationSubject;
  v24 = 0;
  sub_10000ADE4(&unk_100120850, &qword_1000F2488);
  swift_allocObject();
  *&v0[v11] = sub_1000E2008();
  v12 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_conversationManager;
  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 conversationManager];

  *&v1[v12] = v14;
  v23.receiver = v1;
  v23.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v23, "init");
  v16 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_conversationManager;
  v17 = *&v15[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_conversationManager];
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  (*(v4 + 104))(v6, enum case for DispatchQoS.QoSClass.userInteractive(_:), v3);
  v18 = v15;
  v19 = v17;
  v20 = sub_1000E2758();
  (*(v4 + 8))(v6, v3);
  [v19 addDelegate:v18 queue:v20];

  [*&v15[v16] registerWithCompletionHandler:0];
  return v18;
}

void sub_1000DF6C0(void *a1)
{
  v2 = [a1 activeConversations];
  sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
  sub_1000E09F8();
  v3 = sub_1000E25E8();

  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000E2918();
    sub_1000E2628();
    v5 = v32[1];
    v4 = v32[2];
    v6 = v32[3];
    v7 = v32[4];
    v8 = v32[5];
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = (v3 + 56);
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = (v11 & *(v3 + 56));

    v7 = 0;
    v5 = v3;
  }

  v12 = (v6 + 64) >> 6;
  if ((v5 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (sub_1000E29A8())
  {
    swift_dynamicCast();
    v1 = v32[0];
    v13 = v7;
    v14 = v8;
    if (v32[0])
    {
      while (1)
      {
        if ([v1 state] == 3)
        {
          LOBYTE(v12) = 0;
          goto LABEL_21;
        }

        v7 = v13;
        v8 = v14;
        if (v5 < 0)
        {
          goto LABEL_8;
        }

LABEL_11:
        v15 = v7;
        v16 = v8;
        v13 = v7;
        if (!v8)
        {
          break;
        }

LABEL_15:
        v14 = (v16 - 1) & v16;
        v1 = *(*(v5 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v16)))));
        if (!v1)
        {
          goto LABEL_20;
        }
      }

      while (1)
      {
        v13 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v13 >= v12)
        {
          goto LABEL_19;
        }

        v16 = v4[v13];
        ++v15;
        if (v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  else
  {
LABEL_19:
    v1 = 0;
  }

LABEL_20:
  LOBYTE(v12) = 1;
LABEL_21:
  sub_10000A840(v5);
  if (qword_10011DCC0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v17 = sub_1000E1F08();
  sub_1000049D0(v17, qword_1001207D0);
  v18 = v1;

  v19 = sub_1000E1EE8();
  v20 = sub_1000E2698();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v21 = 136315394;
    sub_1000DE978(v3);
    v22 = v12;
    v23 = sub_1000E2478();
    v25 = v24;

    v26 = sub_100029C70(v23, v25, v32);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    if (v22)
    {
      v27 = 0xE300000000000000;
      v28 = 7104878;
    }

    else
    {
      v29 = v18;
      v28 = sub_1000E2368();
      v27 = v30;
    }

    v31 = sub_100029C70(v28, v27, v32);

    *(v21 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v19, v20, "Conversations changed with active conversations: %s, joinedConversation: %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  v32[0] = v3;
  sub_1000E1FE8();

  v32[0] = v1;
  sub_1000E1FE8();
}

unint64_t sub_1000DFC4C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1000E2B68();
    if (result)
    {
LABEL_3:
      sub_10000ADE4(&qword_100120870, &unk_1000F3C10);
      result = sub_1000E2A58();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1000E2B68();
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

  v3 = &_swiftEmptySetSingleton;
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
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = sub_1000E2A98();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    sub_1000E1F98();
    sub_1000E0A60(&qword_100120878, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    result = sub_1000E22D8();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1000E0A60(&qword_100120880, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while (1)
      {
        result = sub_1000E2318();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

Swift::Int sub_1000DFEE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000ADE4(&qword_100120298, &unk_1000F35D0);
    v3 = sub_1000E2A58();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1000E2D48();

      sub_1000E2398();
      result = sub_1000E2D68();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1000E2C68();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_1000E0090(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_1000E2B68();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      sub_10000ADE4(a2, a3);
      v7 = sub_1000E2A58();
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_1000E2B68();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = &_swiftEmptySetSingleton;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = (v7 + 7);
  v46 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = sub_1000E2A98();
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = sub_1000E2808(v7[5]);
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *&v13[8 * (v20 >> 6)];
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_10000CAAC(0, a4, a5);
        while (1)
        {
          v25 = *(v7[6] + 8 * v20);
          v26 = sub_1000E2818();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *&v13[8 * (v20 >> 6)];
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v13[8 * v21] = v23 | v22;
        *(v7[6] + 8 * v20) = v17;
        v27 = v7[2];
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        v7[2] = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = v7[5];
      v31 = *(a1 + 32 + 8 * v29);
      v32 = sub_1000E2808(v30);
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *&v13[8 * (v34 >> 6)];
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        sub_10000CAAC(0, a4, a5);
        while (1)
        {
          v39 = *(v7[6] + 8 * v34);
          v40 = sub_1000E2818();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *&v13[8 * (v34 >> 6)];
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v13[8 * v35] = v37 | v36;
        *(v7[6] + 8 * v34) = v31;
        v41 = v7[2];
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        v7[2] = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1000E03C4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000E0D68();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 state];
  v11 = [a2 state];
  if (qword_10011DCC0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000E1F08();
  sub_1000049D0(v12, qword_1001207D0);
  v13 = a1;
  v14 = sub_1000E1EE8();
  v15 = sub_1000E2698();

  if (!os_log_type_enabled(v14, v15))
  {

    if (v10 != 3)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v36 = v3;
  v16 = 0x676E697469615728;
  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v37 = v18;
  *v17 = 136315650;
  v33 = v6;
  v34 = v18;
  v35 = v15;
  v19 = v7;
  if (v11 <= 1)
  {
    v20 = 0x676E697469615728;
    v21 = 0xE900000000000029;
    if (!v11)
    {
      goto LABEL_18;
    }

    if (v11 == 1)
    {
      v20 = 0x6972617065725028;
      v21 = 0xEB0000000029676ELL;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v11 == 2)
  {
    v20 = 0x676E696E696F4A28;
    goto LABEL_17;
  }

  if (v11 == 3)
  {
    v21 = 0xE800000000000000;
    v20 = 0x2964656E696F4A28;
    goto LABEL_18;
  }

  if (v11 != 4)
  {
LABEL_16:
    v20 = 0x6E776F6E6B6E5528;
    goto LABEL_17;
  }

  v20 = 0x676E697661654C28;
LABEL_17:
  v21 = 0xE900000000000029;
LABEL_18:
  v22 = sub_100029C70(v20, v21, &v37);

  *(v17 + 4) = v22;
  *(v17 + 12) = 2080;
  if (v10 <= 1)
  {
    v23 = v19;
    v25 = v33;
    v24 = 0xE900000000000029;
    if (!v10)
    {
      goto LABEL_29;
    }

    if (v10 == 1)
    {
      v16 = 0x6972617065725028;
      v24 = 0xEB0000000029676ELL;
      goto LABEL_29;
    }
  }

  else
  {
    v23 = v19;
    v24 = 0xE900000000000029;
    if (v10 == 2)
    {
      v16 = 0x676E696E696F4A28;
      v25 = v33;
      goto LABEL_29;
    }

    v25 = v33;
    if (v10 == 3)
    {
      v24 = 0xE800000000000000;
      v16 = 0x2964656E696F4A28;
      goto LABEL_29;
    }

    if (v10 == 4)
    {
      v16 = 0x676E697661654C28;
      goto LABEL_29;
    }
  }

  v16 = 0x6E776F6E6B6E5528;
LABEL_29:
  v26 = sub_100029C70(v16, v24, &v37);

  *(v17 + 14) = v26;
  *(v17 + 22) = 2080;
  v27 = [v13 UUID];
  sub_1000E0D38();

  sub_1000E0A60(&unk_100120190, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v28 = sub_1000E2C18();
  v30 = v29;
  (*(v23 + 8))(v9, v25);
  v31 = sub_100029C70(v28, v30, &v37);

  *(v17 + 24) = v31;
  _os_log_impl(&_mh_execute_header, v14, v35, "Conversation state changed from %s to %s for %s", v17, 0x20u);
  swift_arrayDestroy();

  if (v10 != 3)
  {
    goto LABEL_31;
  }

LABEL_30:
  if (v11 != 3)
  {
LABEL_34:
    v37 = v13;
    sub_1000E1FC8();
    return;
  }

LABEL_31:
  if ((v11 == 3 || v11 == 2) && (v10 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    goto LABEL_34;
  }
}

uint64_t sub_1000E08A4(void *a1)
{
  if (qword_10011DCC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_1001207D0);
  v3 = a1;
  v4 = sub_1000E1EE8();
  v5 = sub_1000E2698();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removed active conversation %@.", v6, 0xCu);
    sub_1000222AC(v7);
  }

  return sub_1000E1FC8();
}

unint64_t sub_1000E09F8()
{
  result = qword_10011FA90;
  if (!qword_10011FA90)
  {
    sub_10000CAAC(255, qword_10011F0D0, TUConversation_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FA90);
  }

  return result;
}

uint64_t sub_1000E0A60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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