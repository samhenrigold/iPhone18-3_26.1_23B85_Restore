void *sub_1000951C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000275C(a5, a6);
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

_BYTE **sub_1000953A4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1000953B4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100095450(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1000954AC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1000954AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100095578(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000F814(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000F7B8(v11);
  return v7;
}

unint64_t sub_100095578(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100095684(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000A3EB8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100095684(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000956D0(a1, a2);
  sub_100095800(&off_1000BDDA8);
  return v3;
}

char *sub_1000956D0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000958EC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000A3EB8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000A3B08();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000958EC(v10, 0);
        result = sub_1000A3E88();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100095800(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100095960(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000958EC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10000275C(&qword_1000C9588, &qword_1000ACCA8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100095960(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000275C(&qword_1000C9588, &qword_1000ACCA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100095A54(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1000A2A18();
  v7 = *(v6 - 8);
  __chkstk_darwin(*(v7 + 64));
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000A2190(&qword_1000C95B8, &type metadata accessor for SomeEvent, &protocol conformance descriptor for SomeEvent);
  v33 = a2;
  v11 = sub_1000A3A38();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000A2190(&qword_1000C95C0, &type metadata accessor for SomeEvent, &protocol conformance descriptor for SomeEvent);
      v21 = sub_1000A3A68();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100096A7C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100095D34(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1000A3F88();
  sub_1000A3AC8();
  v8 = sub_1000A3F98();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1000A3F48() & 1) != 0)
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

    sub_100096D44(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100095E84(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1000A3808();
  v7 = *(v6 - 8);
  __chkstk_darwin(*(v7 + 64));
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000A2190(&qword_1000C95A0, &type metadata accessor for ElectricityGuidance.Options, &protocol conformance descriptor for ElectricityGuidance.Options);
  v33 = a2;
  v11 = sub_1000A3A38();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000A2190(&qword_1000C95A8, &type metadata accessor for ElectricityGuidance.Options, &protocol conformance descriptor for ElectricityGuidance.Options);
      v21 = sub_1000A3A68();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100096EC4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100096164(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1000A2A18();
  v3 = *(v36 - 8);
  __chkstk_darwin(*(v3 + 64));
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10000275C(&qword_1000C95C8, &qword_1000ACCD8);
  result = sub_1000A3E68();
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
      sub_1000A2190(&qword_1000C95B8, &type metadata accessor for SomeEvent, &protocol conformance descriptor for SomeEvent);
      result = sub_1000A3A38();
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

uint64_t sub_1000964C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000275C(&qword_1000C7888, qword_1000AB8B8);
  result = sub_1000A3E68();
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
      sub_1000A3F88();
      sub_1000A3AC8();
      result = sub_1000A3F98();
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

uint64_t sub_100096720(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1000A3808();
  v3 = *(v36 - 8);
  __chkstk_darwin(*(v3 + 64));
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10000275C(&qword_1000C95B0, &qword_1000ACCD0);
  result = sub_1000A3E68();
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
      sub_1000A2190(&qword_1000C95A0, &type metadata accessor for ElectricityGuidance.Options, &protocol conformance descriptor for ElectricityGuidance.Options);
      result = sub_1000A3A38();
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

uint64_t sub_100096A7C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1000A2A18();
  v7 = *(v6 - 8);
  __chkstk_darwin(*(v7 + 64));
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
    sub_100096164(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1000972E8(&type metadata accessor for SomeEvent, &qword_1000C95C8, &qword_1000ACCD8);
      goto LABEL_12;
    }

    sub_100097520(v10 + 1);
  }

  v12 = *v3;
  sub_1000A2190(&qword_1000C95B8, &type metadata accessor for SomeEvent, &protocol conformance descriptor for SomeEvent);
  v13 = sub_1000A3A38();
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
      sub_1000A2190(&qword_1000C95C0, &type metadata accessor for SomeEvent, &protocol conformance descriptor for SomeEvent);
      v21 = sub_1000A3A68();
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
  result = sub_1000A3F68();
  __break(1u);
  return result;
}

uint64_t sub_100096D44(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1000964C0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10009718C();
      goto LABEL_16;
    }

    sub_10009783C(v8 + 1);
  }

  v10 = *v4;
  sub_1000A3F88();
  sub_1000A3AC8();
  result = sub_1000A3F98();
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

      result = sub_1000A3F48();
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
  result = sub_1000A3F68();
  __break(1u);
  return result;
}

uint64_t sub_100096EC4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1000A3808();
  v7 = *(v6 - 8);
  __chkstk_darwin(*(v7 + 64));
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
    sub_100096720(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1000972E8(&type metadata accessor for ElectricityGuidance.Options, &qword_1000C95B0, &qword_1000ACCD0);
      goto LABEL_12;
    }

    sub_100097A74(v10 + 1);
  }

  v12 = *v3;
  sub_1000A2190(&qword_1000C95A0, &type metadata accessor for ElectricityGuidance.Options, &protocol conformance descriptor for ElectricityGuidance.Options);
  v13 = sub_1000A3A38();
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
      sub_1000A2190(&qword_1000C95A8, &type metadata accessor for ElectricityGuidance.Options, &protocol conformance descriptor for ElectricityGuidance.Options);
      v21 = sub_1000A3A68();
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
  result = sub_1000A3F68();
  __break(1u);
  return result;
}

void *sub_10009718C()
{
  v1 = v0;
  sub_10000275C(&qword_1000C7888, qword_1000AB8B8);
  v2 = *v0;
  v3 = sub_1000A3E58();
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

void *sub_1000972E8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = &v26 - v9;
  sub_10000275C(a2, a3);
  v11 = *v3;
  v12 = sub_1000A3E58();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_100097520(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1000A2A18();
  v3 = *(v33 - 8);
  __chkstk_darwin(*(v3 + 64));
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10000275C(&qword_1000C95C8, &qword_1000ACCD8);
  v7 = sub_1000A3E68();
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
      sub_1000A2190(&qword_1000C95B8, &type metadata accessor for SomeEvent, &protocol conformance descriptor for SomeEvent);
      result = sub_1000A3A38();
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

uint64_t sub_10009783C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000275C(&qword_1000C7888, qword_1000AB8B8);
  result = sub_1000A3E68();
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
      sub_1000A3F88();

      sub_1000A3AC8();
      result = sub_1000A3F98();
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

uint64_t sub_100097A74(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1000A3808();
  v3 = *(v33 - 8);
  __chkstk_darwin(*(v3 + 64));
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10000275C(&qword_1000C95B0, &qword_1000ACCD0);
  v7 = sub_1000A3E68();
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
      sub_1000A2190(&qword_1000C95A0, &type metadata accessor for ElectricityGuidance.Options, &protocol conformance descriptor for ElectricityGuidance.Options);
      result = sub_1000A3A38();
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

uint64_t sub_100097D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[90] = a4;
  v4[89] = a3;
  v4[88] = a2;
  v4[87] = a1;
  v5 = sub_1000A37F8();
  v4[91] = v5;
  v4[92] = *(v5 - 8);
  v4[93] = swift_task_alloc();
  v6 = sub_1000A2648();
  v4[94] = v6;
  v4[95] = *(v6 - 8);
  v4[96] = swift_task_alloc();
  sub_1000A22A8();
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v7 = sub_1000A3818();
  v4[99] = v7;
  v4[100] = *(v7 - 8);
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v8 = sub_1000A2688();
  v4[103] = v8;
  v4[104] = *(v8 - 8);
  v4[105] = swift_task_alloc();
  v9 = sub_1000A2AD8();
  v4[106] = v9;
  v4[107] = *(v9 - 8);
  v4[108] = swift_task_alloc();
  v4[109] = swift_task_alloc();
  v10 = sub_1000A3808();
  v4[110] = v10;
  v4[111] = *(v10 - 8);
  v4[112] = swift_task_alloc();
  v4[113] = swift_task_alloc();
  v11 = sub_1000A37B8();
  v4[114] = v11;
  v4[115] = *(v11 - 8);
  v4[116] = swift_task_alloc();
  v4[117] = swift_task_alloc();
  v12 = sub_1000A3778();
  v4[118] = v12;
  v4[119] = *(v12 - 8);
  v4[120] = swift_task_alloc();
  v4[121] = swift_task_alloc();
  v13 = sub_1000A37D8();
  v4[122] = v13;
  v4[123] = *(v13 - 8);
  v4[124] = swift_task_alloc();
  v4[125] = swift_task_alloc();
  v14 = sub_1000A25F8();
  v4[126] = v14;
  v4[127] = *(v14 - 8);
  v4[128] = swift_task_alloc();
  v4[129] = swift_task_alloc();
  v4[130] = swift_task_alloc();
  v4[131] = swift_task_alloc();
  v4[132] = swift_task_alloc();
  sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  v4[133] = swift_task_alloc();
  v4[134] = swift_task_alloc();
  v15 = sub_1000A2508();
  v4[135] = v15;
  v4[136] = *(v15 - 8);
  v4[137] = swift_task_alloc();
  v4[138] = swift_task_alloc();
  v4[139] = swift_task_alloc();
  v4[140] = swift_task_alloc();

  return _swift_task_switch(sub_10009830C, 0, 0);
}

uint64_t sub_10009830C()
{
  sub_1000A3AA8();
  v0[141] = os_transaction_create();

  sub_10003690C(v1, v2, v3);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  v0[142] = sub_100001E38(v4, qword_1000C96B8);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Connection established to EnergyKit API", v7, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v8 = qword_1000C95F0;
  v0[143] = qword_1000C95F0;

  return _swift_task_switch(sub_1000984C8, v8, 0);
}

uint64_t sub_1000984C8()
{
  *(v0 + 97) = *(*(v0 + 1144) + 144);

  return _swift_task_switch(sub_100098538, 0, 0);
}

uint64_t sub_100098538()
{
  v1 = qword_1000C95F0;
  *(v0 + 1152) = qword_1000C95F0;

  return _swift_task_switch(sub_1000985B0, v1, 0);
}

uint64_t sub_1000985B0()
{
  v1 = v0[144];
  v0[145] = *(v1 + 112);
  v0[146] = *(v1 + 120);

  return _swift_task_switch(sub_100098630, 0, 0);
}

uint64_t sub_100098630()
{
  if (*(v0 + 1168))
  {
    if (*(v0 + 97) == 1)
    {
      if (qword_1000C7590 != -1)
      {
        swift_once();
      }

      *(v0 + 1176) = qword_1000C96F8;

      v1 = swift_task_alloc();
      *(v0 + 1184) = v1;
      *v1 = v0;
      v1[1] = sub_1000989B0;
      v2 = *(v0 + 1072);
      v3 = *(v0 + 696);

      return sub_10006CFD4(v2, v3);
    }
  }

  v5 = sub_1000A3598();
  sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
  swift_allocError();
  (*(*(v5 - 8) + 104))(v6, enum case for EnergyKitError.guidanceUnavailable(_:), v5);
  swift_willThrow();
  swift_unknownObjectRelease();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000989B0()
{

  return _swift_task_switch(sub_100098AC8, 0, 0);
}

uint64_t sub_100098AC8()
{
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  v4 = *(v1 + 48);
  v0[149] = v4;
  v0[150] = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v2) == 1)
  {

    sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);
    v5 = sub_1000A3598();
    sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for EnergyKitError.guidanceUnavailable(_:), v5);
    swift_willThrow();
    swift_unknownObjectRelease();

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[140];
    v10 = *(v1 + 32);
    v0[151] = v10;
    v0[152] = (v1 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v10(v9, v3, v2);
    v11 = sub_1000A24C8();
    v13 = v12;
    v0[153] = v12;
    v14 = swift_task_alloc();
    v0[154] = v14;
    *v14 = v0;
    v14[1] = sub_100098EA4;

    return sub_100066308(v11, v13, 0);
  }
}

uint64_t sub_100098EA4(uint64_t a1)
{
  *(*v1 + 1240) = a1;

  return _swift_task_switch(sub_100098FC4, 0, 0);
}

uint64_t sub_100098FC4()
{
  v72 = v0;

  v1 = sub_1000A3518();
  v2 = sub_1000A3CB8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 720);
    v4 = *(v0 + 712);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v71 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000954AC(v4, v3, &v71);
    _os_log_impl(&_mh_execute_header, v1, v2, "[SiteOperations] Location: %s", v5, 0xCu);
    sub_10000F7B8(v6);
  }

  v7 = *(v0 + 1056);
  v8 = *(v0 + 1016);
  v9 = *(v0 + 1000);
  v10 = *(v0 + 984);
  v11 = *(v0 + 976);
  v12 = *(v0 + 968);
  v13 = *(v0 + 952);
  v14 = *(v0 + 944);
  v15 = enum case for HSGuidanceType.reduce(_:);
  *(v0 + 100) = enum case for HSGuidanceType.reduce(_:);
  v16 = *(v8 + 104);
  *(v0 + 1248) = v16;
  *(v0 + 1256) = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v69 = v15;
  v16(v7);
  sub_1000A39F8();
  sub_1000A37C8();
  v17 = *(v10 + 8);
  *(v0 + 1264) = v17;
  *(v0 + 1272) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v9, v11);
  v18 = (*(v13 + 88))(v12, v14);
  if (v18 == enum case for ElectricityGuidance.SuggestedAction.shift(_:))
  {
    v19 = *(v0 + 1056);
    v20 = *(v0 + 1008);
    (*(*(v0 + 1016) + 8))(v19, v20);
    v21 = enum case for HSGuidanceType.shift(_:);
    v22 = v19;
  }

  else
  {
    if (v18 != enum case for ElectricityGuidance.SuggestedAction.reduce(_:))
    {
      (*(*(v0 + 952) + 8))(*(v0 + 968), *(v0 + 944));
      goto LABEL_9;
    }

    v23 = *(v0 + 1056);
    v20 = *(v0 + 1008);
    (*(*(v0 + 1016) + 8))(v23, v20);
    v22 = v23;
    v21 = v69;
  }

  (v16)(v22, v21, v20);
LABEL_9:
  v24 = *(v0 + 1240);
  *(v0 + 680) = &_swiftEmptySetSingleton;
  *(v0 + 688) = 0;
  sub_1000A2190(&qword_1000C9580, &type metadata accessor for ElectricityGuidance.AnalyticsOptions, &protocol conformance descriptor for ElectricityGuidance.AnalyticsOptions);
  sub_1000A3FA8();
  if (v24)
  {
    v25 = *(v0 + 1240);
    v26 = sub_1000A2D58();
    v28 = v27;

    *(v0 + 1280) = v26;
    *(v0 + 1288) = v28;
    if (v28)
    {
      v29 = v25;
      v30 = sub_1000A2DF8();
      v32 = v31;

      *(v0 + 1296) = v30;
      *(v0 + 1304) = v32;
      if (v32)
      {
        v33 = v29;
        v34 = sub_1000A2DE8();
        v36 = v35;

        *(v0 + 1312) = v34;
        *(v0 + 1320) = v36;
        if (v36)
        {
          v37 = v33;
          v67 = sub_1000A2D98();
          v68 = v38;

          v39 = HIBYTE(v28) & 0xF;
          if ((v28 & 0x2000000000000000) == 0)
          {
            v39 = v26 & 0xFFFFFFFFFFFFLL;
          }

          if (!v39)
          {
            goto LABEL_29;
          }

          v40 = HIBYTE(v32) & 0xF;
          if ((v32 & 0x2000000000000000) == 0)
          {
            v40 = v30 & 0xFFFFFFFFFFFFLL;
          }

          if (v40)
          {
            if ((v36 & 0x2000000000000000) != 0)
            {
              v41 = HIBYTE(v36) & 0xF;
            }

            else
            {
              v41 = v34 & 0xFFFFFFFFFFFFLL;
            }

            if (v41)
            {
              v42 = HIBYTE(v68) & 0xF;
              if ((v68 & 0x2000000000000000) == 0)
              {
                v42 = v67 & 0xFFFFFFFFFFFFLL;
              }

              if (!v42)
              {
                v43 = *(v0 + 904);
                v44 = *(v0 + 896);
                v45 = *(v0 + 888);
                v46 = *(v0 + 880);
                v47 = enum case for ElectricityGuidance.Options.locationHasRatePlan(_:);
                v48 = *(v45 + 104);
                *(v0 + 1328) = v48;
                *(v0 + 1336) = (v45 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
                v48(v44, v47, v46);
                sub_100095E84(v43, v44);
                v49 = *(v45 + 8);
                *(v0 + 1344) = v49;
                *(v0 + 1352) = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                v49(v43, v46);
                v50 = qword_1000C95F0;
                *(v0 + 1360) = qword_1000C95F0;

                return _swift_task_switch(sub_1000997F4, v50, 0);
              }
            }
          }

          else
          {
LABEL_29:
          }
        }
      }
    }
  }

  v51 = *(v0 + 1040);
  v52 = *(v0 + 1024);
  v53 = *(v0 + 1016);
  v54 = *(v0 + 1008);
  (v16)(v51, v69, v54);
  sub_1000A2190(&qword_1000C9598, &type metadata accessor for HSGuidanceType, &protocol conformance descriptor for HSGuidanceType);
  sub_1000A3B28();
  sub_1000A3B28();
  v55 = *(v53 + 8);
  *(v0 + 1568) = v55;
  *(v0 + 1576) = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v55(v51, v54);
  if (*(v0 + 98) == *(v0 + 186))
  {
    v56 = v69;
  }

  else
  {
    v56 = enum case for HSGuidanceType.shift(_:);
  }

  (v16)(v52, v56, v54);
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v57 = *(v0 + 872);
  v58 = *(v0 + 864);
  v59 = *(v0 + 856);
  v60 = *(v0 + 848);
  v61 = sub_100001E38(v60, qword_1000C95F8);
  swift_beginAccess();
  (*(v59 + 16))(v57, v61, v60);
  sub_1000A2A58();
  sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  LOBYTE(v61) = sub_1000A3DF8();
  v62 = *(v59 + 8);
  v62(v58, v60);
  v62(v57, v60);
  if ((v61 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
  {
    sub_1000A2A38();
    *(v0 + 1608) = sub_1000A2A28();
    v70 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
    v65 = swift_task_alloc();
    *(v0 + 1616) = v65;
    *v65 = v0;
    v65[1] = sub_10009E690;
    v75 = 1;
    v74 = 0xE000000000000000;

    __asm { BR              X8 }
  }

  v63 = swift_task_alloc();
  *(v0 + 1584) = v63;
  *v63 = v0;
  v63[1] = sub_10009DBA8;
  v64 = *(v0 + 1024);

  return sub_1000688B0(v64);
}

uint64_t sub_1000997F4(uint64_t a1)
{
  if ((sub_1000A2D18() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 872);
  v3 = *(v1 + 864);
  v4 = *(v1 + 856);
  v5 = *(v1 + 848);
  v6 = sub_100001E38(v5, qword_1000C95F8);
  swift_beginAccess();
  (*(v4 + 16))(v2, v6, v5);
  sub_1000A2AA8();
  sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  LOBYTE(v6) = sub_1000A3DF8();
  v7 = *(v4 + 8);
  v7(v3, v5);
  v7(v2, v5);
  if (v6)
  {

    v8 = sub_10009A274;
  }

  else
  {
LABEL_6:
    *(v1 + 185) = *(*(v1 + 1360) + 145);

    v8 = sub_100099998;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100099998()
{
  v1 = *(v0 + 185);
  v2 = *(v0 + 1160) == 0x6C7070612E6D6F63 && *(v0 + 1168) == 0xEF64656D6F682E65;
  if (v2 || (sub_1000A3F48() & 1) != 0 || *(v0 + 1160) == 0xD00000000000001CLL && *(v0 + 1168) == 0x80000001000A6870)
  {
    v3 = 1;
    if ((sub_1000A2D18() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v3 = sub_1000A3F48();
    if ((sub_1000A2D18() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v50 = v1;
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 872);
  v5 = *(v0 + 864);
  v6 = *(v0 + 856);
  v7 = *(v0 + 848);
  v8 = sub_100001E38(v7, qword_1000C95F8);
  swift_beginAccess();
  v49 = *(v6 + 16);
  v49(v4, v8, v7);
  sub_1000A2A48();
  sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  v9 = sub_1000A3DF8();
  v10 = *(v6 + 8);
  v10(v5, v7);
  v10(v4, v7);
  if (v9)
  {
    v11 = sub_1000A3518();
    v12 = sub_1000A3CC8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "[GuidanceOperations] Mock Guidance Request As HomeKit", v13, 2u);
    }

    v3 = 1;
  }

  v14 = *(v0 + 872);
  v15 = *(v0 + 864);
  v16 = *(v0 + 848);
  v49(v14, v8, v16);
  sub_1000A2AA8();
  v17 = sub_1000A3DF8();
  v10(v15, v16);
  v10(v14, v16);
  v1 = v50;
  if (v17)
  {
    v18 = sub_1000A3518();
    v19 = sub_1000A3CC8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "[GuidanceOperations] Mock SPI Disabled", v20, 2u);
    }

LABEL_32:
    v39 = sub_1000A2CF8();
    *(v0 + 392) = v39;
    *(v0 + 400) = sub_1000A2190(&qword_1000C7D68, &type metadata accessor for EnergyKitFeatures, &protocol conformance descriptor for EnergyKitFeatures);
    v40 = sub_100021D50((v0 + 368));
    (*(*(v39 - 8) + 104))(v40, enum case for EnergyKitFeatures.costInclusionInGuidanceAPI2025(_:), v39);
    LOBYTE(v39) = sub_1000A25B8();
    sub_10000F7B8((v0 + 368));
    if (v39)
    {
      if (qword_1000C7588 != -1)
      {
        swift_once();
      }

      v41 = swift_task_alloc();
      *(v0 + 1368) = v41;
      *v41 = v0;
      v41[1] = sub_10009A784;
      v42 = *(v0 + 1120);

      return sub_10004D838(v42);
    }

    goto LABEL_38;
  }

LABEL_20:
  if ((v1 & v3) != 1)
  {
    goto LABEL_32;
  }

  v21 = *(v0 + 1240);
  v22 = sub_1000A2D88();

  if ((v22 & 0x1FFFFFFFFLL) != 0xFFFFFFFFLL)
  {
LABEL_38:
    v43 = *(v0 + 1304);
    v44 = *(v0 + 1288);
    type metadata accessor for RatePlanQuery();
    v45 = swift_task_alloc();
    *(v0 + 1376) = v45;
    *v45 = v0;
    v45[1] = sub_10009ACDC;
    v46 = *(v0 + 1296);
    v47 = *(v0 + 1280);

    return sub_100049CB0(v47, v44, v46, v43);
  }

  v23 = *(v0 + 1248);
  v24 = *(v0 + 100);
  v25 = *(v0 + 1040);
  v51 = *(v0 + 1032);
  v26 = *(v0 + 1016);
  v27 = *(v0 + 1008);

  v23(v25, v24, v27);
  sub_1000A2190(&qword_1000C9598, &type metadata accessor for HSGuidanceType, &protocol conformance descriptor for HSGuidanceType);
  sub_1000A3B28();
  sub_1000A3B28();
  v28 = *(v26 + 8);
  *(v0 + 1504) = v28;
  *(v0 + 1512) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v25, v27);
  if (*(v0 + 274) == *(v0 + 276))
  {
    v29 = v24;
  }

  else
  {
    v29 = enum case for HSGuidanceType.shift(_:);
  }

  v23(v51, v29, v27);
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 872);
  v31 = *(v0 + 864);
  v32 = *(v0 + 856);
  v33 = *(v0 + 848);
  v34 = sub_100001E38(v33, qword_1000C95F8);
  swift_beginAccess();
  (*(v32 + 16))(v30, v34, v33);
  sub_1000A2A58();
  sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  LOBYTE(v34) = sub_1000A3DF8();
  v35 = *(v32 + 8);
  v35(v31, v33);
  v35(v30, v33);
  if ((v34 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
  {
    sub_1000A2A38();
    *(v0 + 1544) = sub_1000A2A28();
    v52 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
    v48 = swift_task_alloc();
    *(v0 + 1552) = v48;
    *v48 = v0;
    v48[1] = sub_10009D9B8;

    __asm { BR              X8 }
  }

  v36 = swift_task_alloc();
  *(v0 + 1520) = v36;
  *v36 = v0;
  v36[1] = sub_10009CE80;
  v37 = *(v0 + 1032);

  return sub_1000688B0(v37);
}

uint64_t sub_10009A274()
{
  v1 = v0[145] == 0x6C7070612E6D6F63 && v0[146] == 0xEF64656D6F682E65;
  if (!v1 && (sub_1000A3F48() & 1) == 0 && (v0[145] != 0xD00000000000001CLL || v0[146] != 0x80000001000A6870))
  {
    sub_1000A3F48();
  }

  if (sub_1000A2D18())
  {
    if (qword_1000C7560 != -1)
    {
      swift_once();
    }

    v2 = v0[109];
    v3 = v0[108];
    v4 = v0[107];
    v5 = v0[106];
    v6 = sub_100001E38(v5, qword_1000C95F8);
    swift_beginAccess();
    v29 = *(v4 + 16);
    v29(v2, v6, v5);
    sub_1000A2A48();
    sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
    v7 = sub_1000A3DF8();
    v8 = *(v4 + 8);
    v8(v3, v5);
    v8(v2, v5);
    if (v7)
    {
      v9 = sub_1000A3518();
      v10 = sub_1000A3CC8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "[GuidanceOperations] Mock Guidance Request As HomeKit", v11, 2u);
      }
    }

    v12 = v0[109];
    v13 = v0[108];
    v14 = v0[106];
    v29(v12, v6, v14);
    sub_1000A2AA8();
    v15 = sub_1000A3DF8();
    v8(v13, v14);
    v8(v12, v14);
    if (v15)
    {
      v16 = sub_1000A3518();
      v17 = sub_1000A3CC8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "[GuidanceOperations] Mock SPI Disabled", v18, 2u);
      }
    }
  }

  v19 = sub_1000A2CF8();
  v0[49] = v19;
  v0[50] = sub_1000A2190(&qword_1000C7D68, &type metadata accessor for EnergyKitFeatures, &protocol conformance descriptor for EnergyKitFeatures);
  v20 = sub_100021D50(v0 + 46);
  (*(*(v19 - 8) + 104))(v20, enum case for EnergyKitFeatures.costInclusionInGuidanceAPI2025(_:), v19);
  LOBYTE(v19) = sub_1000A25B8();
  sub_10000F7B8(v0 + 46);
  if (v19)
  {
    if (qword_1000C7588 != -1)
    {
      swift_once();
    }

    v21 = swift_task_alloc();
    v0[171] = v21;
    *v21 = v0;
    v21[1] = sub_10009A784;
    v22 = v0[140];

    return sub_10004D838(v22);
  }

  else
  {
    v24 = v0[163];
    v25 = v0[161];
    type metadata accessor for RatePlanQuery();
    v26 = swift_task_alloc();
    v0[172] = v26;
    *v26 = v0;
    v26[1] = sub_10009ACDC;
    v27 = v0[162];
    v28 = v0[160];

    return sub_100049CB0(v28, v25, v27, v24);
  }
}

uint64_t sub_10009A784(char a1)
{
  *(*v1 + 273) = a1;

  return _swift_task_switch(sub_10009A884, 0, 0);
}

uint64_t sub_10009A884()
{
  if (*(v0 + 273) == 1)
  {
    v1 = *(v0 + 1304);
    v2 = *(v0 + 1288);
    type metadata accessor for RatePlanQuery();
    v3 = swift_task_alloc();
    *(v0 + 1376) = v3;
    *v3 = v0;
    v3[1] = sub_10009ACDC;
    v4 = *(v0 + 1296);
    v5 = *(v0 + 1280);

    return sub_100049CB0(v5, v2, v4, v1);
  }

  else
  {
    v7 = *(v0 + 1248);
    v8 = *(v0 + 100);
    v9 = *(v0 + 1040);
    v23 = *(v0 + 1032);
    v10 = *(v0 + 1016);
    v11 = *(v0 + 1008);

    v7(v9, v8, v11);
    sub_1000A2190(&qword_1000C9598, &type metadata accessor for HSGuidanceType, &protocol conformance descriptor for HSGuidanceType);
    sub_1000A3B28();
    sub_1000A3B28();
    v12 = *(v10 + 8);
    *(v0 + 1504) = v12;
    *(v0 + 1512) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v9, v11);
    if (*(v0 + 274) == *(v0 + 276))
    {
      v13 = v8;
    }

    else
    {
      v13 = enum case for HSGuidanceType.shift(_:);
    }

    v7(v23, v13, v11);
    if (qword_1000C7560 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 872);
    v15 = *(v0 + 864);
    v16 = *(v0 + 856);
    v17 = *(v0 + 848);
    v18 = sub_100001E38(v17, qword_1000C95F8);
    swift_beginAccess();
    (*(v16 + 16))(v14, v18, v17);
    sub_1000A2A58();
    sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
    LOBYTE(v18) = sub_1000A3DF8();
    v19 = *(v16 + 8);
    v19(v15, v17);
    v19(v14, v17);
    if ((v18 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
    {
      sub_1000A2A38();
      *(v0 + 1544) = sub_1000A2A28();
      v24 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
      v22 = swift_task_alloc();
      *(v0 + 1552) = v22;
      *v22 = v0;
      v22[1] = sub_10009D9B8;

      __asm { BR              X8 }
    }

    v20 = swift_task_alloc();
    *(v0 + 1520) = v20;
    *v20 = v0;
    v20[1] = sub_10009CE80;
    v21 = *(v0 + 1032);

    return sub_1000688B0(v21);
  }
}

uint64_t sub_10009ACDC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 1384) = a1;
  *(v4 + 1392) = a2;

  if (v2)
  {

    v5 = sub_10009F590;
  }

  else
  {

    v5 = sub_10009AE30;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10009AE30()
{
  v1 = *(v0 + 1392);
  if (v1)
  {
    v2 = *(v0 + 1384) & 0xFFFFFFFFFFFFLL;
    if ((v1 & 0x2000000000000000) != 0)
    {
      v2 = HIBYTE(v1) & 0xF;
    }

    if (v2)
    {
      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 872);
      v4 = *(v0 + 864);
      v5 = *(v0 + 856);
      v6 = *(v0 + 848);
      v7 = sub_100001E38(v6, qword_1000C95F8);
      swift_beginAccess();
      (*(v5 + 16))(v3, v7, v6);
      sub_1000A2A58();
      sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
      LOBYTE(v7) = sub_1000A3DF8();
      v8 = *(v5 + 8);
      v8(v4, v6);
      v8(v3, v6);
      if (v7 & 1) != 0 && (sub_1000A2D18())
      {

        v9 = swift_task_alloc();
        *(v0 + 1400) = v9;
        *v9 = v0;
        v9[1] = sub_10009B430;
        v10 = *(v0 + 1056);
        goto LABEL_21;
      }

      sub_1000A2A38();
      *(v0 + 1424) = sub_1000A2A28();
      v29 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
      v11 = swift_task_alloc();
      *(v0 + 1432) = v11;
      *v11 = v0;
      v11[1] = sub_10009BFA4;
LABEL_25:

      __asm { BR              X8 }
    }
  }

  v12 = *(v0 + 1248);
  v13 = *(v0 + 100);
  v14 = *(v0 + 1048);
  v15 = *(v0 + 1040);
  v16 = *(v0 + 1016);
  v17 = *(v0 + 1008);
  v12(v15, v13, v17);
  sub_1000A2190(&qword_1000C9598, &type metadata accessor for HSGuidanceType, &protocol conformance descriptor for HSGuidanceType);
  sub_1000A3B28();
  sub_1000A3B28();
  v18 = *(v16 + 8);
  *(v0 + 1440) = v18;
  *(v0 + 1448) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v15, v17);
  if (*(v0 + 188) == *(v0 + 190))
  {
    v19 = v13;
  }

  else
  {
    v19 = enum case for HSGuidanceType.shift(_:);
  }

  v12(v14, v19, v17);
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 872);
  v21 = *(v0 + 864);
  v22 = *(v0 + 856);
  v23 = *(v0 + 848);
  v24 = sub_100001E38(v23, qword_1000C95F8);
  swift_beginAccess();
  (*(v22 + 16))(v20, v24, v23);
  sub_1000A2A58();
  sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  LOBYTE(v24) = sub_1000A3DF8();
  v25 = *(v22 + 8);
  v25(v21, v23);
  v25(v20, v23);
  if ((v24 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
  {
    sub_1000A2A38();
    *(v0 + 1480) = sub_1000A2A28();
    v29 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
    v28 = swift_task_alloc();
    *(v0 + 1488) = v28;
    *v28 = v0;
    v28[1] = sub_10009CC90;
    goto LABEL_25;
  }

  v26 = swift_task_alloc();
  *(v0 + 1456) = v26;
  *v26 = v0;
  v26[1] = sub_10009C158;
  v10 = *(v0 + 1048);
LABEL_21:

  return sub_1000688B0(v10);
}

uint64_t sub_10009B430(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    v6[177] = v2;

    v7 = sub_10009BBA0;
  }

  else
  {
    v6[51] = v3;
    v6[52] = a1;
    v6[53] = a2;
    v6[54] = 0;
    v6[176] = 0;
    v7 = sub_10009B580;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10009B580()
{
  v1 = *(v0 + 1344);
  v2 = *(v0 + 936);
  v3 = *(v0 + 928);
  v4 = *(v0 + 920);
  v5 = *(v0 + 912);
  v6 = *(v0 + 904);
  v7 = *(v0 + 896);
  v8 = *(v0 + 880);
  (*(v0 + 1328))(v7, enum case for ElectricityGuidance.Options.guidanceIncorporatesRatePlan(_:), v8);
  sub_100095E84(v6, v7);
  v1(v6, v8);
  sub_1000A3798();
  (*(v4 + 8))(v2, v5);
  (*(v4 + 32))(v2, v3, v5);
  v9 = *(v0 + 416);
  v10 = *(v0 + 424);
  v11 = *(v0 + 1408);
  *(v0 + 1632) = v10;
  *(v0 + 1640) = v9;
  sub_1000A2208();
  swift_allocObject();
  sub_1000A21F8();
  sub_1000A2190(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast, &protocol conformance descriptor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v11)
  {
    v12 = *(v0 + 1016);
    v35 = *(v0 + 1008);
    v36 = *(v0 + 1056);
    v13 = *(v0 + 936);
    v14 = *(v0 + 920);
    v15 = *(v0 + 912);

    sub_10003228C(v9, v10);
    (*(v14 + 8))(v13, v15);

    (*(v12 + 8))(v36, v35);
    swift_errorRetain();
    v16 = sub_1000A3518();
    v17 = sub_1000A3CC8();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1240);
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "[SiteOperations] Grid Fetch Failed: %@", v20, 0xCu);
      sub_100022154(v21, &unk_1000C7740, &qword_1000AB610);

      v16 = v19;
    }

    else
    {
    }

    v29 = *(v0 + 1120);
    v30 = *(v0 + 1088);
    v31 = *(v0 + 1080);

    (*(v30 + 8))(v29, v31);
    v32 = sub_1000A3598();
    sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, enum case for EnergyKitError.guidanceUnavailable(_:), v32);
    swift_willThrow();
    swift_unknownObjectRelease();

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {

    sub_1000A2A38();
    *(v0 + 1648) = sub_1000A2A28();
    v37 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
    v23 = swift_task_alloc();
    *(v0 + 1656) = v23;
    *v23 = v0;
    v23[1] = sub_10009E87C;
    v24 = *(v0 + 1120);
    v25 = *(v0 + 1064);
    v26 = *(v0 + 720);
    v27 = *(v0 + 712);

    return v37(v25, v27, v26, v24);
  }
}

uint64_t sub_10009BBA0()
{
  v1 = v0[132];
  v2 = v0[127];
  v3 = v0[126];
  (*(v0[115] + 8))(v0[117], v0[114]);
  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = sub_1000A3518();
  v5 = sub_1000A3CC8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[155];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[SiteOperations] Grid Fetch Failed: %@", v8, 0xCu);
    sub_100022154(v9, &unk_1000C7740, &qword_1000AB610);

    v4 = v7;
  }

  else
  {
  }

  v11 = v0[140];
  v12 = v0[136];
  v13 = v0[135];

  (*(v12 + 8))(v11, v13);
  v14 = sub_1000A3598();
  sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
  swift_allocError();
  (*(*(v14 - 8) + 104))(v15, enum case for EnergyKitError.guidanceUnavailable(_:), v14);
  swift_willThrow();
  swift_unknownObjectRelease();

  v16 = v0[1];

  return v16();
}

uint64_t sub_10009BFA4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    v6[177] = v2;

    v7 = sub_10009BBA0;
  }

  else
  {
    v6[51] = v3;
    v6[52] = a1;
    v6[53] = a2;
    v6[54] = 0;
    v6[176] = 0;
    v7 = sub_10009B580;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10009C158(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {

    *(v6 + 1472) = v2;
    (*(v6 + 1440))(*(v6 + 1048), *(v6 + 1008));

    v7 = sub_10009C894;
  }

  else
  {
    *(v6 + 440) = v3;
    *(v6 + 448) = a1;
    *(v6 + 456) = a2;
    *(v6 + 464) = 0;
    *(v6 + 1464) = 0;
    (*(v6 + 1440))(*(v6 + 1048), *(v6 + 1008));
    v7 = sub_10009C2CC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10009C2CC()
{
  v1 = v0[117];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[114];
  sub_1000A3788();
  (*(v3 + 8))(v1, v4);
  (*(v3 + 32))(v1, v2, v4);
  v5 = v0[56];
  v6 = v0[57];
  v7 = v0[183];
  v0[204] = v6;
  v0[205] = v5;
  sub_1000A2208();
  swift_allocObject();
  sub_1000A21F8();
  sub_1000A2190(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast, &protocol conformance descriptor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v7)
  {
    v8 = v0[127];
    v31 = v0[126];
    v32 = v0[132];
    v9 = v0[117];
    v10 = v0[115];
    v11 = v0[114];

    sub_10003228C(v5, v6);
    (*(v10 + 8))(v9, v11);

    (*(v8 + 8))(v32, v31);
    swift_errorRetain();
    v12 = sub_1000A3518();
    v13 = sub_1000A3CC8();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[155];
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "[SiteOperations] Grid Fetch Failed: %@", v16, 0xCu);
      sub_100022154(v17, &unk_1000C7740, &qword_1000AB610);

      v12 = v15;
    }

    else
    {
    }

    v25 = v0[140];
    v26 = v0[136];
    v27 = v0[135];

    (*(v26 + 8))(v25, v27);
    v28 = sub_1000A3598();
    sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, enum case for EnergyKitError.guidanceUnavailable(_:), v28);
    swift_willThrow();
    swift_unknownObjectRelease();

    v30 = v0[1];

    return v30();
  }

  else
  {

    sub_1000A2A38();
    v0[206] = sub_1000A2A28();
    v33 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
    v19 = swift_task_alloc();
    v0[207] = v19;
    *v19 = v0;
    v19[1] = sub_10009E87C;
    v20 = v0[140];
    v21 = v0[133];
    v22 = v0[90];
    v23 = v0[89];

    return v33(v21, v23, v22, v20);
  }
}

uint64_t sub_10009C894()
{
  v1 = v0[180];
  v2 = v0[132];
  v3 = v0[126];
  (*(v0[115] + 8))(v0[117], v0[114]);
  v1(v2, v3);
  swift_errorRetain();
  v4 = sub_1000A3518();
  v5 = sub_1000A3CC8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[155];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[SiteOperations] Grid Fetch Failed: %@", v8, 0xCu);
    sub_100022154(v9, &unk_1000C7740, &qword_1000AB610);

    v4 = v7;
  }

  else
  {
  }

  v11 = v0[140];
  v12 = v0[136];
  v13 = v0[135];

  (*(v12 + 8))(v11, v13);
  v14 = sub_1000A3598();
  sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
  swift_allocError();
  (*(*(v14 - 8) + 104))(v15, enum case for EnergyKitError.guidanceUnavailable(_:), v14);
  swift_willThrow();
  swift_unknownObjectRelease();

  v16 = v0[1];

  return v16();
}

uint64_t sub_10009CC90(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 1496) = v2;

  if (v2)
  {
    v7 = sub_10009CDE8;
  }

  else
  {

    *(v6 + 440) = v3;
    *(v6 + 448) = a1;
    *(v6 + 456) = a2;
    *(v6 + 464) = 0;
    *(v6 + 1464) = 0;
    (*(v6 + 1440))(*(v6 + 1048), *(v6 + 1008));
    v7 = sub_10009C2CC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10009CDE8()
{

  *(v0 + 1472) = *(v0 + 1496);
  (*(v0 + 1440))(*(v0 + 1048), *(v0 + 1008));

  return _swift_task_switch(sub_10009C894, 0, 0);
}

uint64_t sub_10009CE80(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {

    *(v6 + 1536) = v2;
    (*(v6 + 1504))(*(v6 + 1032), *(v6 + 1008));

    v7 = sub_10009D5BC;
  }

  else
  {
    *(v6 + 472) = v3;
    *(v6 + 480) = a1;
    *(v6 + 488) = a2;
    *(v6 + 496) = 0;
    *(v6 + 1528) = 0;
    (*(v6 + 1504))(*(v6 + 1032), *(v6 + 1008));
    v7 = sub_10009CFF4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10009CFF4()
{
  v1 = v0[117];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[114];
  sub_1000A3788();
  (*(v3 + 8))(v1, v4);
  (*(v3 + 32))(v1, v2, v4);
  v5 = v0[60];
  v6 = v0[61];
  v7 = v0[191];
  v0[204] = v6;
  v0[205] = v5;
  sub_1000A2208();
  swift_allocObject();
  sub_1000A21F8();
  sub_1000A2190(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast, &protocol conformance descriptor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v7)
  {
    v8 = v0[127];
    v31 = v0[126];
    v32 = v0[132];
    v9 = v0[117];
    v10 = v0[115];
    v11 = v0[114];

    sub_10003228C(v5, v6);
    (*(v10 + 8))(v9, v11);

    (*(v8 + 8))(v32, v31);
    swift_errorRetain();
    v12 = sub_1000A3518();
    v13 = sub_1000A3CC8();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[155];
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "[SiteOperations] Grid Fetch Failed: %@", v16, 0xCu);
      sub_100022154(v17, &unk_1000C7740, &qword_1000AB610);

      v12 = v15;
    }

    else
    {
    }

    v25 = v0[140];
    v26 = v0[136];
    v27 = v0[135];

    (*(v26 + 8))(v25, v27);
    v28 = sub_1000A3598();
    sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, enum case for EnergyKitError.guidanceUnavailable(_:), v28);
    swift_willThrow();
    swift_unknownObjectRelease();

    v30 = v0[1];

    return v30();
  }

  else
  {

    sub_1000A2A38();
    v0[206] = sub_1000A2A28();
    v33 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
    v19 = swift_task_alloc();
    v0[207] = v19;
    *v19 = v0;
    v19[1] = sub_10009E87C;
    v20 = v0[140];
    v21 = v0[133];
    v22 = v0[90];
    v23 = v0[89];

    return v33(v21, v23, v22, v20);
  }
}

uint64_t sub_10009D5BC()
{
  v1 = v0[188];
  v2 = v0[132];
  v3 = v0[126];
  (*(v0[115] + 8))(v0[117], v0[114]);
  v1(v2, v3);
  swift_errorRetain();
  v4 = sub_1000A3518();
  v5 = sub_1000A3CC8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[155];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[SiteOperations] Grid Fetch Failed: %@", v8, 0xCu);
    sub_100022154(v9, &unk_1000C7740, &qword_1000AB610);

    v4 = v7;
  }

  else
  {
  }

  v11 = v0[140];
  v12 = v0[136];
  v13 = v0[135];

  (*(v12 + 8))(v11, v13);
  v14 = sub_1000A3598();
  sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
  swift_allocError();
  (*(*(v14 - 8) + 104))(v15, enum case for EnergyKitError.guidanceUnavailable(_:), v14);
  swift_willThrow();
  swift_unknownObjectRelease();

  v16 = v0[1];

  return v16();
}

uint64_t sub_10009D9B8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 1560) = v2;

  if (v2)
  {
    v7 = sub_10009DB10;
  }

  else
  {

    *(v6 + 472) = v3;
    *(v6 + 480) = a1;
    *(v6 + 488) = a2;
    *(v6 + 496) = 0;
    *(v6 + 1528) = 0;
    (*(v6 + 1504))(*(v6 + 1032), *(v6 + 1008));
    v7 = sub_10009CFF4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10009DB10()
{

  *(v0 + 1536) = *(v0 + 1560);
  (*(v0 + 1504))(*(v0 + 1032), *(v0 + 1008));

  return _swift_task_switch(sub_10009D5BC, 0, 0);
}

uint64_t sub_10009DBA8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {

    *(v6 + 1600) = v2;
    (*(v6 + 1568))(*(v6 + 1024), *(v6 + 1008));
    v7 = sub_10009E294;
  }

  else
  {
    *(v6 + 504) = v3;
    *(v6 + 512) = a1;
    *(v6 + 520) = a2;
    *(v6 + 528) = 0;
    *(v6 + 1592) = 0;
    (*(v6 + 1568))(*(v6 + 1024), *(v6 + 1008));
    v7 = sub_10009DD18;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10009DD18()
{
  v1 = v0[64];
  v2 = v0[65];
  v3 = v0[199];
  v0[204] = v2;
  v0[205] = v1;
  sub_1000A2208();
  swift_allocObject();
  sub_1000A21F8();
  sub_1000A2190(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast, &protocol conformance descriptor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v3)
  {
    v4 = v0[127];
    v27 = v0[126];
    v28 = v0[132];
    v5 = v0[117];
    v6 = v0[115];
    v7 = v0[114];

    sub_10003228C(v1, v2);
    (*(v6 + 8))(v5, v7);

    (*(v4 + 8))(v28, v27);
    swift_errorRetain();
    v8 = sub_1000A3518();
    v9 = sub_1000A3CC8();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[155];
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "[SiteOperations] Grid Fetch Failed: %@", v12, 0xCu);
      sub_100022154(v13, &unk_1000C7740, &qword_1000AB610);

      v8 = v11;
    }

    else
    {
    }

    v21 = v0[140];
    v22 = v0[136];
    v23 = v0[135];

    (*(v22 + 8))(v21, v23);
    v24 = sub_1000A3598();
    sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, enum case for EnergyKitError.guidanceUnavailable(_:), v24);
    swift_willThrow();
    swift_unknownObjectRelease();

    v26 = v0[1];

    return v26();
  }

  else
  {

    sub_1000A2A38();
    v0[206] = sub_1000A2A28();
    v29 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
    v15 = swift_task_alloc();
    v0[207] = v15;
    *v15 = v0;
    v15[1] = sub_10009E87C;
    v16 = v0[140];
    v17 = v0[133];
    v18 = v0[90];
    v19 = v0[89];

    return v29(v17, v19, v18, v16);
  }
}

uint64_t sub_10009E294()
{
  v1 = v0[196];
  v2 = v0[132];
  v3 = v0[126];
  (*(v0[115] + 8))(v0[117], v0[114]);
  v1(v2, v3);
  swift_errorRetain();
  v4 = sub_1000A3518();
  v5 = sub_1000A3CC8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[155];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[SiteOperations] Grid Fetch Failed: %@", v8, 0xCu);
    sub_100022154(v9, &unk_1000C7740, &qword_1000AB610);

    v4 = v7;
  }

  else
  {
  }

  v11 = v0[140];
  v12 = v0[136];
  v13 = v0[135];

  (*(v12 + 8))(v11, v13);
  v14 = sub_1000A3598();
  sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
  swift_allocError();
  (*(*(v14 - 8) + 104))(v15, enum case for EnergyKitError.guidanceUnavailable(_:), v14);
  swift_willThrow();
  swift_unknownObjectRelease();

  v16 = v0[1];

  return v16();
}

uint64_t sub_10009E690(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 1624) = v2;

  if (v2)
  {
    v7 = sub_10009E7EC;
  }

  else
  {

    *(v6 + 504) = v3;
    *(v6 + 512) = a1;
    *(v6 + 520) = a2;
    *(v6 + 528) = 0;
    *(v6 + 1592) = 0;
    (*(v6 + 1568))(*(v6 + 1024), *(v6 + 1008));
    v7 = sub_10009DD18;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10009E7EC()
{

  *(v0 + 1600) = *(v0 + 1624);
  (*(v0 + 1568))(*(v0 + 1024), *(v0 + 1008));

  return _swift_task_switch(sub_10009E294, 0, 0);
}

uint64_t sub_10009E87C()
{

  return _swift_task_switch(sub_10009E994, 0, 0);
}

uint64_t sub_10009E994()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1064);
  if ((*(v0 + 1192))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 1632);
    v4 = *(v0 + 1016);
    v83 = *(v0 + 1008);
    v85 = *(v0 + 1056);
    v82 = *(v0 + 936);
    v5 = *(v0 + 920);
    v80 = *(v0 + 1640);
    v81 = *(v0 + 912);
    v6 = *(v0 + 840);
    v7 = *(v0 + 832);
    v8 = *(v0 + 824);

    sub_100022154(v2, &qword_1000C92C0, &qword_1000ACB30);
    v9 = sub_1000A3598();
    sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    v89 = enum case for EnergyKitError.guidanceUnavailable(_:);
    v87 = *(*(v9 - 8) + 104);
    v87(v10);
    swift_willThrow();
    sub_10003228C(v80, v3);
    (*(v7 + 8))(v6, v8);
    (*(v5 + 8))(v82, v81);
    (*(v4 + 8))(v85, v83);
    swift_errorRetain();
    v11 = sub_1000A3518();
    v12 = sub_1000A3CC8();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 1240);
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[SiteOperations] Grid Fetch Failed: %@", v15, 0xCu);
      sub_100022154(v16, &unk_1000C7740, &qword_1000AB610);

      v11 = v14;
    }

    else
    {
    }

    v38 = *(v0 + 1120);
    v39 = *(v0 + 1088);
    v40 = *(v0 + 1080);

    (*(v39 + 8))(v38, v40);
    swift_allocError();
    (v87)(v41, v89, v9);
    swift_willThrow();
    swift_unknownObjectRelease();

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v90 = *(v0 + 1264);
    v18 = *(v0 + 1112);
    v19 = *(v0 + 1104);
    v20 = *(v0 + 1088);
    v21 = *(v0 + 992);
    v86 = *(v0 + 976);
    v84 = *(v0 + 1096);
    v22 = *(v0 + 696);
    (*(v0 + 1208))(v18, v2, v1);
    v23 = *(v20 + 16);
    v23(v19, v18, v1);
    v23(v84, v22, v1);
    sub_1000A39F8();
    sub_1000A37C8();
    v90(v21, v86);
    sub_1000A2678();
    v24 = sub_1000A2668();
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = *(v0 + 760);
      v27 = *(v0 + 736);
      v28 = *(v26 + 16);
      v26 += 16;
      v29 = v24 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
      v88 = *(v26 + 56);
      v91 = v28;
      v30 = (v26 - 8);
      v31 = &_swiftEmptyArrayStorage;
      do
      {
        v32 = *(v0 + 768);
        v33 = *(v0 + 752);
        v91(v32, v29, v33);
        sub_1000A2628();
        sub_1000A2618();
        sub_1000A37E8();
        (*v30)(v32, v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_1000951C8(0, v31[2] + 1, 1, v31, &qword_1000C9590, &qword_1000ACCB0, &type metadata accessor for ElectricityGuidance.Value);
        }

        v35 = v31[2];
        v34 = v31[3];
        if (v35 >= v34 >> 1)
        {
          v31 = sub_1000951C8((v34 > 1), v35 + 1, 1, v31, &qword_1000C9590, &qword_1000ACCB0, &type metadata accessor for ElectricityGuidance.Value);
        }

        v36 = *(v0 + 744);
        v37 = *(v0 + 728);
        v31[2] = v35 + 1;
        (*(v27 + 32))(v31 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v35, v36, v37);
        v29 += v88;
        --v25;
      }

      while (v25);
    }

    v70 = *(v0 + 1632);
    v71 = *(v0 + 1640);
    v73 = *(v0 + 1240);
    v44 = *(v0 + 1168);
    v45 = *(v0 + 1160);
    v76 = *(v0 + 1112);
    v46 = *(v0 + 1088);
    v75 = *(v0 + 1080);
    v79 = *(v0 + 1120);
    v67 = *(v0 + 1056);
    v77 = *(v0 + 1016);
    v78 = *(v0 + 1008);
    v66 = *(v0 + 936);
    v72 = *(v0 + 920);
    v74 = *(v0 + 912);
    v69 = *(v0 + 840);
    v47 = *(v0 + 832);
    v68 = *(v0 + 824);
    v63 = *(v0 + 816);
    v92 = *(v0 + 808);
    v48 = *(v0 + 800);
    v64 = *(v0 + 792);
    sub_1000A3768();
    v49 = sub_1000A25E8();
    v50 = sub_1000A37A8();
    *(v0 + 192) = v45;
    *(v0 + 208) = 0;
    *(v0 + 216) = 0;
    *(v0 + 200) = v44;
    *(v0 + 224) = 2;
    *(v0 + 232) = v49;
    *(v0 + 240) = 0;
    *(v0 + 248) = v50;
    *(v0 + 256) = 0;
    *(v0 + 264) = 0;
    *(v0 + 272) = 1;
    *(v0 + 104) = v45;
    *(v0 + 120) = 0;
    *(v0 + 128) = 0;
    *(v0 + 112) = v44;
    *(v0 + 136) = 2;
    *(v0 + 144) = v49;
    *(v0 + 152) = 0;
    *(v0 + 160) = v50;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 184) = 1;
    sub_100086114(v0 + 192, v0 + 280);
    sub_100086170(v0 + 104);
    type metadata accessor for EKSAnalyticsEvent();
    v51 = swift_allocObject();
    *(v51 + 24) = xmmword_1000ACA50;
    *(v51 + 56) = 0u;
    *(v51 + 72) = 0u;
    *(v51 + 88) = 0u;
    *(v51 + 40) = 0u;
    *(v51 + 104) = 0;
    *(v51 + 16) = 2;
    *(v0 + 96) = 0;
    v52 = *(v51 + 72);
    *(v0 + 48) = *(v51 + 56);
    *(v0 + 64) = v52;
    *(v0 + 80) = *(v51 + 88);
    v53 = *(v51 + 40);
    *(v0 + 16) = *(v51 + 24);
    *(v0 + 32) = v53;
    v54 = *(v0 + 192);
    v55 = *(v0 + 224);
    *(v51 + 40) = *(v0 + 208);
    *(v51 + 24) = v54;
    v56 = *(v0 + 240);
    v57 = *(v0 + 256);
    *(v51 + 104) = *(v0 + 272);
    *(v51 + 88) = v57;
    *(v51 + 72) = v56;
    *(v51 + 56) = v55;
    sub_100022154(v0 + 16, &qword_1000C8830, &unk_1000AC300);
    sub_10004151C(v51, v58, v59);

    (*(v48 + 16))(v92, v63, v64);
    v60 = objc_allocWithZone(sub_1000A39E8());
    v65 = sub_1000A39D8();
    swift_unknownObjectRelease();
    sub_10003228C(v71, v70);

    (*(v48 + 8))(v63, v64);
    v61 = *(v46 + 8);
    v61(v76, v75);
    (*(v47 + 8))(v69, v68);
    (*(v72 + 8))(v66, v74);
    (*(v77 + 8))(v67, v78);
    v61(v79, v75);

    v62 = *(v0 + 8);

    return v62(v65);
  }
}

uint64_t sub_10009F590()
{
  v1 = *(v0 + 1248);
  v2 = *(v0 + 100);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 1040);
  v5 = *(v0 + 1016);
  v6 = *(v0 + 1008);
  v1(v4, v2, v6);
  sub_1000A2190(&qword_1000C9598, &type metadata accessor for HSGuidanceType, &protocol conformance descriptor for HSGuidanceType);
  sub_1000A3B28();
  sub_1000A3B28();
  v7 = *(v5 + 8);
  *(v0 + 1440) = v7;
  *(v0 + 1448) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  if (*(v0 + 188) == *(v0 + 190))
  {
    v8 = v2;
  }

  else
  {
    v8 = enum case for HSGuidanceType.shift(_:);
  }

  v1(v3, v8, v6);
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 872);
  v10 = *(v0 + 864);
  v11 = *(v0 + 856);
  v12 = *(v0 + 848);
  v13 = sub_100001E38(v12, qword_1000C95F8);
  swift_beginAccess();
  (*(v11 + 16))(v9, v13, v12);
  sub_1000A2A58();
  sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  LOBYTE(v13) = sub_1000A3DF8();
  v14 = *(v11 + 8);
  v14(v10, v12);
  v14(v9, v12);
  if ((v13 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
  {
    sub_1000A2A38();
    *(v0 + 1480) = sub_1000A2A28();
    v19 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
    v18 = swift_task_alloc();
    *(v0 + 1488) = v18;
    *v18 = v0;
    v18[1] = sub_10009CC90;

    __asm { BR              X8 }
  }

  v15 = swift_task_alloc();
  *(v0 + 1456) = v15;
  *v15 = v0;
  v15[1] = sub_10009C158;
  v16 = *(v0 + 1048);

  return sub_1000688B0(v16);
}

uint64_t sub_10009F918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[51] = a2;
  v3[52] = a3;
  v3[50] = a1;
  v4 = sub_1000A37B8();
  v3[53] = v4;
  v3[54] = *(v4 - 8);
  v3[55] = swift_task_alloc();
  v5 = sub_1000A37F8();
  v3[56] = v5;
  v3[57] = *(v5 - 8);
  v3[58] = swift_task_alloc();
  v6 = sub_1000A2648();
  v3[59] = v6;
  v3[60] = *(v6 - 8);
  v3[61] = swift_task_alloc();
  sub_1000A22A8();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v7 = sub_1000A3818();
  v3[64] = v7;
  v3[65] = *(v7 - 8);
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  sub_10000275C(&qword_1000C92C0, &qword_1000ACB30);
  v3[68] = swift_task_alloc();
  v8 = sub_1000A2508();
  v3[69] = v8;
  v3[70] = *(v8 - 8);
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v9 = sub_1000A2688();
  v3[75] = v9;
  v3[76] = *(v9 - 8);
  v3[77] = swift_task_alloc();
  v10 = sub_1000A2AD8();
  v3[78] = v10;
  v3[79] = *(v10 - 8);
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v11 = sub_1000A3778();
  v3[82] = v11;
  v3[83] = *(v11 - 8);
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v12 = sub_1000A37D8();
  v3[86] = v12;
  v3[87] = *(v12 - 8);
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v13 = sub_1000A25F8();
  v3[90] = v13;
  v3[91] = *(v13 - 8);
  v3[92] = swift_task_alloc();

  return _swift_task_switch(sub_10009FDDC, 0, 0);
}

uint64_t sub_10009FDDC()
{
  sub_1000A3AA8();
  v0[93] = os_transaction_create();

  sub_10003690C(v1, v2, v3);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  v0[94] = sub_100001E38(v4, qword_1000C96B8);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Connection established to EnergyKit API", v7, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v8 = qword_1000C95F0;
  v0[95] = qword_1000C95F0;

  return _swift_task_switch(sub_10009FF98, v8, 0);
}

uint64_t sub_10009FF98()
{
  *(v0 + 97) = *(*(v0 + 760) + 144);

  return _swift_task_switch(sub_1000A0008, 0, 0);
}

uint64_t sub_1000A0008()
{
  v1 = qword_1000C95F0;
  *(v0 + 768) = qword_1000C95F0;

  return _swift_task_switch(sub_1000A0080, v1, 0);
}

uint64_t sub_1000A0080()
{
  v1 = v0[96];
  v0[97] = *(v1 + 112);
  v0[98] = *(v1 + 120);

  return _swift_task_switch(sub_1000A0100, 0, 0);
}

uint64_t sub_1000A0100()
{
  v36 = v0;
  if (*(v0 + 784))
  {
    if (*(v0 + 97) == 1)
    {

      v1 = sub_1000A3518();
      v2 = sub_1000A3CB8();

      if (os_log_type_enabled(v1, v2))
      {
        v4 = *(v0 + 408);
        v3 = *(v0 + 416);
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v35 = v6;
        *v5 = 136315138;
        *(v5 + 4) = sub_1000954AC(v4, v3, &v35);
        _os_log_impl(&_mh_execute_header, v1, v2, "[SiteOperations] Location: %s", v5, 0xCu);
        sub_10000F7B8(v6);
      }

      v7 = *(v0 + 712);
      v8 = *(v0 + 696);
      v9 = *(v0 + 688);
      v10 = *(v0 + 680);
      v11 = *(v0 + 664);
      v12 = *(v0 + 656);
      v13 = *(*(v0 + 728) + 104);
      v33 = enum case for HSGuidanceType.reduce(_:);
      v13(*(v0 + 736));
      sub_1000A39F8();
      sub_1000A37C8();
      v14 = *(v8 + 8);
      *(v0 + 792) = v14;
      *(v0 + 800) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v14(v7, v9);
      v15 = (*(v11 + 88))(v10, v12);
      if (v15 == enum case for ElectricityGuidance.SuggestedAction.shift(_:))
      {
        v16 = *(v0 + 736);
        v17 = *(v0 + 720);
        (*(*(v0 + 728) + 8))(v16, v17);
        (v13)(v16, enum case for HSGuidanceType.shift(_:), v17);
      }

      else if (v15 == enum case for ElectricityGuidance.SuggestedAction.reduce(_:))
      {
        v22 = *(v0 + 736);
        v23 = *(v0 + 720);
        (*(*(v0 + 728) + 8))(v22, v23);
        (v13)(v22, v33, v23);
      }

      else
      {
        (*(*(v0 + 664) + 8))(*(v0 + 680), *(v0 + 656));
      }

      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 648);
      v25 = *(v0 + 640);
      v26 = *(v0 + 632);
      v27 = *(v0 + 624);
      v28 = sub_100001E38(v27, qword_1000C95F8);
      swift_beginAccess();
      (*(v26 + 16))(v24, v28, v27);
      sub_1000A2A58();
      sub_1000A2190(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
      LOBYTE(v28) = sub_1000A3DF8();
      v29 = *(v26 + 8);
      v29(v25, v27);
      v29(v24, v27);
      if ((v28 & 1) == 0 || (sub_1000A2D18() & 1) == 0)
      {
        sub_1000A2A38();
        *(v0 + 848) = sub_1000A2A28();
        v34 = &async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:) + async function pointer to dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:);
        v32 = swift_task_alloc();
        *(v0 + 856) = v32;
        *v32 = v0;
        v32[1] = sub_1000A1118;
        v39 = 1;
        v38 = 0xE000000000000000;

        __asm { BR              X8 }
      }

      v30 = swift_task_alloc();
      *(v0 + 808) = v30;
      *v30 = v0;
      v30[1] = sub_1000A07EC;
      v31 = *(v0 + 736);

      return sub_1000688B0(v31);
    }
  }

  v18 = sub_1000A3598();
  sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
  swift_allocError();
  (*(*(v18 - 8) + 104))(v19, enum case for EnergyKitError.guidanceUnavailable(_:), v18);
  swift_willThrow();
  swift_unknownObjectRelease();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1000A07EC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {

    v6[105] = v2;
    v7 = sub_1000A0DDC;
  }

  else
  {
    v6[102] = 0;
    v6[103] = a2;
    v6[104] = a1;
    v7 = sub_1000A0930;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000A0930()
{
  v1 = v0[102];
  sub_1000A2208();
  swift_allocObject();
  sub_1000A21F8();
  sub_1000A2190(&qword_1000C9558, &type metadata accessor for HSGuidanceForecast, &protocol conformance descriptor for HSGuidanceForecast);
  sub_1000A21E8();
  if (v1)
  {
    v2 = v0[104];
    v3 = v0[103];
    (*(v0[91] + 8))(v0[92], v0[90]);

    sub_10003228C(v2, v3);

    swift_errorRetain();
    v4 = sub_1000A3518();
    v5 = sub_1000A3CC8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "[SiteOperations] Grid Fetch Failed: %@", v6, 0xCu);
      sub_100022154(v7, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }

    v15 = sub_1000A3598();
    sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, enum case for EnergyKitError.guidanceUnavailable(_:), v15);
    swift_willThrow();
    swift_unknownObjectRelease();

    v17 = v0[1];

    return v17();
  }

  else
  {

    sub_1000A2A38();
    v0[109] = sub_1000A2A28();
    sub_1000A2D28();
    v18 = (&async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:) + async function pointer to dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:));
    v9 = swift_task_alloc();
    v0[110] = v9;
    *v9 = v0;
    v9[1] = sub_1000A12D8;
    v10 = v0[73];
    v11 = v0[68];
    v12 = v0[51];
    v13 = v0[52];

    return v18(v11, v12, v13, v10);
  }
}

uint64_t sub_1000A0DDC()
{
  (*(v0[91] + 8))(v0[92], v0[90]);
  swift_errorRetain();
  v1 = sub_1000A3518();
  v2 = sub_1000A3CC8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[SiteOperations] Grid Fetch Failed: %@", v3, 0xCu);
    sub_100022154(v4, &unk_1000C7740, &qword_1000AB610);
  }

  else
  {
  }

  v6 = sub_1000A3598();
  sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, enum case for EnergyKitError.guidanceUnavailable(_:), v6);
  swift_willThrow();
  swift_unknownObjectRelease();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000A1118(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 864) = v2;

  if (v2)
  {
    v7 = sub_1000A125C;
  }

  else
  {

    v6[102] = 0;
    v6[103] = a2;
    v6[104] = a1;
    v7 = sub_1000A0930;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000A125C()
{

  *(v0 + 840) = *(v0 + 864);

  return _swift_task_switch(sub_1000A0DDC, 0, 0);
}

uint64_t sub_1000A12D8()
{
  v1 = *v0;
  v2 = *(*v0 + 584);
  v3 = *(*v0 + 560);
  v4 = *(*v0 + 552);

  v5 = *(v3 + 8);
  *(v1 + 888) = v5;
  *(v1 + 896) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return _swift_task_switch(sub_1000A1464, 0, 0);
}

uint64_t sub_1000A1464()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 832);
    v5 = *(v0 + 824);
    v6 = *(v0 + 728);
    v71 = *(v0 + 720);
    v72 = *(v0 + 736);
    v7 = *(v0 + 616);
    v8 = *(v0 + 608);
    v9 = *(v0 + 600);

    sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);
    v10 = sub_1000A3598();
    sub_1000A2190(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    v76 = enum case for EnergyKitError.guidanceUnavailable(_:);
    v73 = *(*(v10 - 8) + 104);
    v73(v11);
    swift_willThrow();
    sub_10003228C(v4, v5);
    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v72, v71);
    swift_errorRetain();
    v12 = sub_1000A3518();
    v13 = sub_1000A3CC8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "[SiteOperations] Grid Fetch Failed: %@", v14, 0xCu);
      sub_100022154(v15, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }

    swift_allocError();
    (v73)(v34, v76, v10);
    swift_willThrow();
    swift_unknownObjectRelease();

    v35 = *(v0 + 8);

    return v35();
  }

  else
  {
    v77 = *(v0 + 792);
    v17 = *(v0 + 704);
    v18 = *(v0 + 592);
    v19 = *(v0 + 576);
    v74 = *(v0 + 688);
    (*(v1 + 32))(v18, v3, v2);
    (*(v1 + 16))(v19, v18, v2);
    sub_1000A2D28();
    sub_1000A39F8();
    sub_1000A37C8();
    v77(v17, v74);
    sub_1000A2678();
    v20 = sub_1000A2668();
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = *(v0 + 480);
      v23 = *(v0 + 456);
      v24 = *(v22 + 16);
      v22 += 16;
      v25 = v20 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
      v75 = *(v22 + 56);
      v78 = v24;
      v26 = (v22 - 8);
      v27 = &_swiftEmptyArrayStorage;
      do
      {
        v28 = *(v0 + 488);
        v29 = *(v0 + 472);
        v78(v28, v25, v29);
        sub_1000A2628();
        sub_1000A2618();
        sub_1000A37E8();
        (*v26)(v28, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1000951C8(0, v27[2] + 1, 1, v27, &qword_1000C9590, &qword_1000ACCB0, &type metadata accessor for ElectricityGuidance.Value);
        }

        v31 = v27[2];
        v30 = v27[3];
        if (v31 >= v30 >> 1)
        {
          v27 = sub_1000951C8((v30 > 1), v31 + 1, 1, v27, &qword_1000C9590, &qword_1000ACCB0, &type metadata accessor for ElectricityGuidance.Value);
        }

        v32 = *(v0 + 464);
        v33 = *(v0 + 448);
        v27[2] = v31 + 1;
        (*(v23 + 32))(v27 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v31, v32, v33);
        v25 += v75;
        --v21;
      }

      while (v21);
    }

    v68 = *(v0 + 888);
    v63 = *(v0 + 824);
    v64 = *(v0 + 832);
    v37 = *(v0 + 784);
    v38 = *(v0 + 776);
    v60 = *(v0 + 736);
    v69 = *(v0 + 728);
    v70 = *(v0 + 720);
    v65 = *(v0 + 608);
    v66 = *(v0 + 600);
    v67 = *(v0 + 616);
    v62 = *(v0 + 592);
    v61 = *(v0 + 552);
    v59 = *(v0 + 528);
    v39 = *(v0 + 520);
    v57 = *(v0 + 536);
    v58 = *(v0 + 512);
    v40 = *(v0 + 432);
    v41 = *(v0 + 440);
    v42 = *(v0 + 424);
    sub_1000A3768();
    v43 = sub_1000A25E8();
    *(v0 + 392) = 0;
    sub_1000A2190(&qword_1000C9580, &type metadata accessor for ElectricityGuidance.AnalyticsOptions, &protocol conformance descriptor for ElectricityGuidance.AnalyticsOptions);
    sub_1000A3FA8();
    v44 = sub_1000A37A8();
    (*(v40 + 8))(v41, v42);
    *(v0 + 192) = v38;
    *(v0 + 208) = 0;
    *(v0 + 216) = 0;
    *(v0 + 200) = v37;
    *(v0 + 224) = 2;
    *(v0 + 232) = v43;
    *(v0 + 240) = 0;
    *(v0 + 248) = v44;
    *(v0 + 256) = 0;
    *(v0 + 264) = 0;
    *(v0 + 272) = 1;
    *(v0 + 104) = v38;
    *(v0 + 120) = 0;
    *(v0 + 128) = 0;
    *(v0 + 112) = v37;
    *(v0 + 136) = 2;
    *(v0 + 144) = v43;
    *(v0 + 152) = 0;
    *(v0 + 160) = v44;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 184) = 1;
    sub_100086114(v0 + 192, v0 + 280);
    sub_100086170(v0 + 104);
    type metadata accessor for EKSAnalyticsEvent();
    v45 = swift_allocObject();
    *(v45 + 24) = xmmword_1000ACA50;
    *(v45 + 56) = 0u;
    *(v45 + 72) = 0u;
    *(v45 + 88) = 0u;
    *(v45 + 40) = 0u;
    *(v45 + 104) = 0;
    *(v45 + 16) = 1;
    *(v0 + 96) = 0;
    v46 = *(v45 + 72);
    *(v0 + 48) = *(v45 + 56);
    *(v0 + 64) = v46;
    *(v0 + 80) = *(v45 + 88);
    v47 = *(v45 + 40);
    *(v0 + 16) = *(v45 + 24);
    *(v0 + 32) = v47;
    v48 = *(v0 + 192);
    v49 = *(v0 + 224);
    *(v45 + 40) = *(v0 + 208);
    *(v45 + 24) = v48;
    v50 = *(v0 + 240);
    v51 = *(v0 + 256);
    *(v45 + 104) = *(v0 + 272);
    *(v45 + 88) = v51;
    *(v45 + 72) = v50;
    *(v45 + 56) = v49;
    sub_100022154(v0 + 16, &qword_1000C8830, &unk_1000AC300);
    sub_10004151C(v45, v52, v53);

    (*(v39 + 16))(v59, v57, v58);
    v54 = objc_allocWithZone(sub_1000A39E8());
    v55 = sub_1000A39D8();
    swift_unknownObjectRelease();
    sub_10003228C(v64, v63);
    (*(v39 + 8))(v57, v58);
    v68(v62, v61);
    (*(v65 + 8))(v67, v66);
    (*(v69 + 8))(v60, v70);

    v56 = *(v0 + 8);

    return v56(v55);
  }
}

uint64_t sub_1000A1F14()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1000A2024(uint64_t a1)
{
  v3 = *(sub_1000A2508() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[3];
  v14 = v1[2];
  v8 = v1[4];
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000153A8;

  return sub_1000944C8(a1, v14, v7, v8, v1 + v4, v9, v10, v11);
}

uint64_t sub_1000A2190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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