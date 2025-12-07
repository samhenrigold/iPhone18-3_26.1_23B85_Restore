void *sub_100013CE8()
{
  v1 = v0;
  sub_100001F58(&qword_1000201A8, &qword_100018B78);
  v2 = *v0;
  v3 = sub_100017DB8();
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

uint64_t sub_100013E40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001F58(&qword_1000201A8, &qword_100018B78);
  result = sub_100017DC8();
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
        sub_100017EA8();

        sub_100017C38();
        result = sub_100017EC8();
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

char *sub_1000140CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000141BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001419C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100014874(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000141BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001F58(&qword_1000201A0, &qword_100018B70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000142C4(uint64_t a1, uint64_t a2)
{
  sub_100016D0C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (v13)
  {
    sub_100016D64();
    if (v15 != v16)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_100016D54();
    }
  }

  else
  {
    v14 = v2;
  }

  v17 = *(v10 + 16);
  if (v14 <= v17)
  {
    v18 = *(v10 + 16);
  }

  else
  {
    v18 = v14;
  }

  if (!v18)
  {
    v24 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_100001F58(v3, v4);
  v19 = v8(0);
  sub_1000165D4(v19);
  v21 = *(v20 + 72);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v25 = j__malloc_size(v24);
  if (!v21)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v25 - v23 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_23;
  }

  v24[2] = v17;
  v24[3] = 2 * ((v25 - v23) / v21);
LABEL_18:
  v8(0);
  sub_100016828();
  if (v12)
  {
    sub_10000F918(v10 + v27, v17, v24 + v27, v6);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_100016C58();
}

void *sub_100014460(void *result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001F58(&qword_1000201B8, &qword_100018B88);
  v10 = *(sub_100001F58(&qword_100020148, &qword_100018B20) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100001F58(&qword_100020148, &qword_100018B20) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10000F82C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10001462C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001F58(&qword_100020298, &qword_100018C78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001F58(&qword_1000200C8, &qword_100018AB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100014764(uint64_t a1)
{
  sub_100017394();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    sub_100016D64();
    if (v14 != v15)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_100016D54();
    }
  }

  else
  {
    v13 = v1;
  }

  v16 = v9[2];
  if (v13 <= v16)
  {
    v17 = v9[2];
  }

  else
  {
    v17 = v13;
  }

  if (v17)
  {
    sub_100001F58(v2, v3);
    v18 = swift_allocObject();
    v19 = j__malloc_size(v18);
    v18[2] = v16;
    v18[3] = 2 * ((v19 - 32) / 32);
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v18 != v9 || &v9[4 * v16 + 4] <= v18 + 4)
    {
      v21 = sub_1000169F4();
      memmove(v21, v22, v23);
    }

    v9[2] = 0;
  }

  else
  {
    sub_100001F58(v7, v5);
    sub_1000169F4();
    swift_arrayInitWithCopy();
  }

  sub_100017380();
}

void *sub_100014874(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001F58(&qword_100020250, &qword_100018C38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001F58(&qword_100020258, &qword_100018C40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000149A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000133F4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100001F58(&qword_100020190, &qword_100018B60);
  if (!sub_100017DF8(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_1000133F4(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_100017E88();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    *(v20[7] + 8 * v16) = a1;
  }

  else
  {
    sub_100014AE4(v16, a2, a3, a1, v20);
  }
}

unint64_t sub_100014AE4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t *sub_100014B2C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), unint64_t *a3)
{
  v6 = a1;
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_100014E2C(v12, v8, v6, a2);

      return a3;
    }
  }

  __chkstk_darwin(a1);
  v9 = (&v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_100013C84(0, v8, v9);
  v10 = sub_100014CB0(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

unint64_t *sub_100014CB0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a3 + 56) + 16 * v13);
    v19 = *v17;
    v18 = v17[1];

    LOBYTE(v19) = a4(v15, v16, v19, v18);

    if (v19)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_100014EBC(v22, a2, v23, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_100014EBC(v22, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100014E2C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100014CB0(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100014EBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100001F58(&qword_100020248, &qword_100018C30);
  result = sub_100017E18();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 16 * v16);
    v22 = v21[1];
    v35 = *v21;
    sub_100017EA8();

    sub_100017C38();
    result = sub_100017EC8();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    v32 = (*(v9 + 56) + 16 * v26);
    *v32 = v35;
    v32[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v34;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100015104(void *a1)
{
  v1 = [a1 _deviceLanguage];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100017BE8();

  return v3;
}

uint64_t sub_10001518C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F58(&qword_100020188, &qword_100018B58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1000152CC(void *result, void *a2, unint64_t a3, uint64_t a4)
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
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

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

uint64_t sub_100015428(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v39 = sub_100001F58(&qword_100020148, &qword_100018B20);
  v36 = *(v39 - 8);
  v8 = __chkstk_darwin(v39);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v37 = &v33 - v11;
  v40 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
    v19 = 0;
    a3 = 0;
LABEL_21:
    *a1 = v40;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v19;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(v13 - 32);
    v34 = a1;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v15) >> 6;
    v35 = a3;
    while (1)
    {
      if (v18 >= a3)
      {
        goto LABEL_24;
      }

      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_25;
      }

      if (!v17)
      {
        while (1)
        {
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v22 >= v20)
          {
            v17 = 0;
            a3 = v18;
            goto LABEL_19;
          }

          v17 = *(v13 + 8 * v22);
          ++v19;
          if (v17)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v22 = v19;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v23 | (v22 << 6);
      v25 = v40;
      v26 = *(v40 + 48);
      v27 = sub_100017858();
      v28 = *(v27 - 8);
      v29 = v26 + *(v28 + 72) * v24;
      v30 = v38;
      (*(v28 + 16))(v38, v29, v27);
      *&v30[*(v39 + 48)] = *(*(v25 + 56) + 8 * v24);
      v31 = v30;
      v32 = v37;
      sub_1000158C0(v31, v37, &qword_100020148, &qword_100018B20);
      sub_1000158C0(v32, a2, &qword_100020148, &qword_100018B20);
      a3 = v35;
      if (v21 == v35)
      {
        break;
      }

      a2 += *(v36 + 72);

      v18 = v21;
      v19 = v22;
    }

    v19 = v22;
LABEL_19:
    v15 = v33;
    a1 = v34;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_1000156E4(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_21:
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
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v25 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v15 == v10)
      {
        break;
      }

      v11 += 4;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v25;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000158C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100017360(a1, a2, a3, a4);
  sub_100016710();
  v5 = sub_100017110();
  v6(v5);
  return v4;
}

uint64_t sub_10001590C()
{
  sub_100017394();
  v1 = type metadata accessor for Status(0);
  sub_100016D74();
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  sub_100001F58(&qword_1000200E8, &qword_100018AD8);
  sub_100016710();
  v6 = *(v5 + 8);
  v7 = sub_100017130();
  v6(v7);
  v8 = sub_1000170B8(*(v1 + 28));
  v6(v8);
  v9 = sub_1000170B8(*(v1 + 32));
  v6(v9);

  sub_100017380();

  return _swift_deallocObject(v10);
}

uint64_t sub_100015A30(uint64_t a1)
{
  v4 = type metadata accessor for Status(0);
  sub_1000165D4(v4);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  sub_100016904();
  *(v2 + 16) = v12;
  *v12 = v13;
  v12[1] = sub_100001724;

  return sub_10000DC10(a1, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_100015B54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100017360(a1, a2, a3, a4);
  sub_100016710();
  v5 = sub_100017110();
  v6(v5);
  return v4;
}

uint64_t sub_100015BA0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100015BD8()
{
  sub_100016CE0();
  swift_task_alloc();
  sub_100016904();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_100016BE0(v1);

  return v4(v3);
}

uint64_t sub_100015C70()
{
  sub_100016CE0();
  swift_task_alloc();
  sub_100016904();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_100016BE0(v1);

  return v4(v3);
}

uint64_t sub_100015D08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100015D7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100015DFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100001F58(a2, a3);
  sub_100016710();
  (*(v4 + 8))(a1);
  return a1;
}

void *sub_100015E74(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100015EB8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100015F0C()
{
  sub_100001F58(&qword_1000200E8, &qword_100018AD8);
  v0 = sub_100016C00();

  return sub_10000567C(v0, v1, v2);
}

uint64_t sub_100015F70(uint64_t a1, uint64_t a2)
{
  sub_100001F58(&qword_1000200E8, &qword_100018AD8);
  v3 = sub_100016C00();

  return sub_100002004(v3, v4, a2, v5);
}

void sub_100015FC4(uint64_t a1)
{
  sub_100016038();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100016038()
{
  if (!qword_100020308)
  {
    v0 = sub_100017B28();
    if (!v1)
    {
      atomic_store(v0, &qword_100020308);
    }
  }
}

uint64_t sub_100016160(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000161A8()
{
  result = qword_100020360;
  if (!qword_100020360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020360);
  }

  return result;
}

uint64_t sub_1000161FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100005634(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Status.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Status.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x1000163A8);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000163F4()
{
  result = qword_100020370;
  if (!qword_100020370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020370);
  }

  return result;
}

unint64_t sub_10001644C()
{
  result = qword_100020378;
  if (!qword_100020378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020378);
  }

  return result;
}

unint64_t sub_1000164A4()
{
  result = qword_100020380;
  if (!qword_100020380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020380);
  }

  return result;
}

uint64_t sub_1000165E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(a1 + 16) = a9;
  *(a1 + 56) = v10;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;

  return print(_:separator:terminator:)(a1, 32, 0xE100000000000000, 10, 0xE100000000000000);
}

uint64_t sub_100016614(uint64_t a1)
{

  return print(_:separator:terminator:)(a1, 32, 0xE100000000000000, 10, 0xE100000000000000);
}

void sub_100016644()
{
  v4 = *(v3 - 240);
  *(v4 + 8 * (v0 >> 6) + 64) |= 1 << v0;
  v5 = (*(v4 + 48) + 16 * v0);
  *v5 = v2;
  v5[1] = v1;
}

__n128 sub_1000166C8(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  a1[3].n128_u64[1] = v10;
  return result;
}

__n128 sub_1000166EC(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  return result;
}

uint64_t sub_100016750()
{

  return swift_allocObject();
}

__n128 sub_100016798(__n128 *a1)
{
  result = *(v1 - 448);
  a1[1] = result;
  return result;
}

__n128 sub_1000167A8(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14)
{
  result = a14;
  a1[1] = a14;
  return result;
}

uint64_t sub_100016800()
{

  return swift_allocObject();
}

__n128 sub_100016890(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  return result;
}

void sub_100016910()
{
  v1._countAndFlagsBits = 0x73646E6F63657320;
  v1._object = 0xE800000000000000;

  sub_100017C58(v1);
}

unint64_t *sub_100016958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = a2;

  return sub_100014B2C(v3, sub_100015DF4, v2);
}

uint64_t sub_100016988(uint64_t a1)
{

  return sub_100017B48();
}

uint64_t sub_100016A18()
{

  return swift_allocObject();
}

uint64_t sub_100016A34()
{
}

uint64_t sub_100016AA8()
{
}

__n128 *sub_100016ACC(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[3].n128_u64[1] = v2;
  return result;
}

unint64_t sub_100016B10()
{
  *(v3 - 240) = v0;

  return sub_1000133F4(v2, v1);
}

uint64_t sub_100016B34(uint64_t a1)
{

  return swift_allocObject();
}

void sub_100016B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v13 + 16) = v14;
  v16 = (v13 + 32 + 16 * v12);
  *v16 = v15;
  v16[1] = a12;
}

uint64_t sub_100016BC8()
{

  return swift_task_alloc();
}

BOOL sub_100016C38(uint64_t a1)
{

  return sub_100017DF8(v2, v1);
}

__n128 sub_100016CAC(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12)
{
  result = a12;
  a1[1] = a12;
  return result;
}

__n128 sub_100016D34(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a25, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a26)
{
  result = a26;
  a1[1] = a26;
  return result;
}

uint64_t sub_100016D84()
{
}

uint64_t sub_100016DAC(char a1)
{
  *(v5 - 240) = v1;

  return sub_1000149A8(v4, v2, v3, a1);
}

uint64_t sub_100016DD4()
{
}

uint64_t sub_100016DFC()
{

  return swift_task_alloc();
}

void sub_100016F30(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD00000000000001ALL;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_100017C58(v2);
}

uint64_t sub_100016F54(uint64_t a1)
{
  *(v2 - 120) = *(v1 + 536);

  return sub_1000173D8();
}

uint64_t sub_100016F78()
{
}

uint64_t sub_100016F9C(uint64_t *a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void *sub_100016FC0()
{

  return memmove(v2, (v2 + 16), 16 * (v1 - 1 - v0));
}

uint64_t sub_100016FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)(a1, a2, a3, a4, v4);
}

void sub_100017000()
{
  v1._countAndFlagsBits = 41;
  v1._object = 0xE100000000000000;

  sub_100017C58(v1);
}

uint64_t sub_1000172A0()
{

  return sub_100017558();
}

uint64_t sub_1000172C0(uint64_t a1)
{

  return StringProtocol.contains<A>(_:)(a1, v1, v1, v2, v2);
}

uint64_t sub_1000172E0(uint64_t a1)
{
}

void *sub_100017300@<X0>(uint64_t a1@<X8>)
{

  return memmove(v1, (v1 + 16), 16 * a1);
}

void sub_100017320(Swift::String a1)
{
  *(v3 - 240) = v2;
  *(v3 - 232) = 0xE100000000000000;
  a1._object = v1;

  sub_100017C58(a1);
}

Swift::Int sub_100017340(uint64_t a1)
{
  v2 = *(a1 + 8);

  return sub_100017E38(v2);
}

uint64_t sub_100017360(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100001F58(a3, a4);
}