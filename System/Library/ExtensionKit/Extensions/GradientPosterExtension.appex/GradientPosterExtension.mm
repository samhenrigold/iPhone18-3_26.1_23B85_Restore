uint64_t sub_100001788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_10000D150();
  sub_10000CF40();
  v6 = sub_10000D160();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_10000D120() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_100001954(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_1000041F0(0, &unk_100018F00, PRPosterDescriptor_ptr);
    isa = sub_10000CF80().super.isa;
  }

  if (a2)
  {
    v6 = sub_10000CC70();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

id sub_100001AA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientUpdatingDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001B30(uint64_t a1, id *a2)
{
  result = sub_10000CF10();
  *a2 = 0;
  return result;
}

uint64_t sub_100001BAC(uint64_t a1, id *a2)
{
  v3 = sub_10000CF20();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001C30@<X0>(uint64_t *a1@<X8>)
{
  sub_10000CF30();
  v2 = sub_10000CF00();

  *a1 = v2;
  return result;
}

void *sub_100001C74@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001C90(uint64_t a1)
{
  v2 = sub_100001F10(&qword_100018F88, type metadata accessor for PRTimeFontIdentifier, &unk_10000DF90);
  v3 = sub_100001F10(&unk_100018F90, type metadata accessor for PRTimeFontIdentifier, &unk_10000DF30);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100001D50@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10000CF00();

  *a2 = v3;
  return result;
}

uint64_t sub_100001D98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000CF30();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001DC4(uint64_t a1)
{
  v2 = sub_100001F10(&qword_100018EF0, type metadata accessor for Identifier, &unk_10000DD28);
  v3 = sub_100001F10(&qword_100018EF8, type metadata accessor for Identifier, &unk_10000DCC8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100001F10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100001F5C()
{
  sub_10000CF30();
  v0 = sub_10000CF50();

  return v0;
}

uint64_t sub_100001F9C(uint64_t a1)
{
  sub_10000CF30();
  sub_10000CF40();
}

Swift::Int sub_100001FF4(uint64_t a1)
{
  sub_10000CF30();
  sub_10000D150();
  sub_10000CF40();
  v1 = sub_10000D160();

  return v1;
}

uint64_t sub_10000206C(void *a1, uint64_t *a2)
{
  v2 = sub_10000CF30();
  v4 = v3;
  if (v2 == sub_10000CF30() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10000D120();
  }

  return v7 & 1;
}

uint64_t sub_10000213C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000217C(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100002B78(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1000040D4(&qword_1000191A0, &qword_10000E160);
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000022B4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_10000D150();
  sub_10000CF40();
  v8 = sub_10000D160();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_10000D120() & 1) != 0)
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

    sub_100002664(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100002404(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000040D4(&qword_100018F28, &qword_10000DDD0);
  result = sub_10000D040();
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
      sub_10000D150();
      sub_10000CF40();
      result = sub_10000D160();
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

uint64_t sub_100002664(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_100002404(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000027E4();
      goto LABEL_16;
    }

    sub_100002940(v8 + 1);
  }

  v10 = *v4;
  sub_10000D150();
  sub_10000CF40();
  result = sub_10000D160();
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

      result = sub_10000D120();
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
  result = sub_10000D130();
  __break(1u);
  return result;
}

void *sub_1000027E4()
{
  v1 = v0;
  sub_1000040D4(&qword_100018F28, &qword_10000DDD0);
  v2 = *v0;
  v3 = sub_10000D030();
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

uint64_t sub_100002940(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000040D4(&qword_100018F28, &qword_10000DDD0);
  result = sub_10000D040();
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
      sub_10000D150();

      sub_10000CF40();
      result = sub_10000D160();
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

void *sub_100002B78(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000040D4(&qword_100018F50, &qword_10000DDF8);
  v10 = *(sub_1000040D4(&qword_1000191A0, &qword_10000E160) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000040D4(&qword_1000191A0, &qword_10000E160) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

Swift::Int sub_100002D68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000040D4(&qword_100018F28, &qword_10000DDD0);
    v3 = sub_10000D050();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_10000D150();

      sub_10000CF40();
      result = sub_10000D160();
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
          result = sub_10000D120();
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

unint64_t sub_100002ED0()
{
  sub_1000040D4(&qword_100018F40, &qword_10000DDE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000DB90;
  strcpy((inited + 32), "plum.preset3");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = 0xD000000000000018;
  *(inited + 56) = 0x800000010000E2A0;
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x800000010000E2C0;
  *(inited + 80) = 0xD000000000000029;
  *(inited + 88) = 0x800000010000E2E0;
  strcpy((inited + 96), "peach.preset1");
  *(inited + 110) = -4864;
  *(inited + 112) = 0xD000000000000018;
  *(inited + 120) = 0x800000010000E2A0;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x800000010000E2C0;
  *(inited + 144) = 0xD000000000000028;
  *(inited + 152) = 0x800000010000E310;
  v1 = sub_10000A960(inited);
  swift_setDeallocating();
  sub_1000040D4(&qword_100018F48, &qword_10000DDF0);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_100003018()
{
  sub_1000040D4(&qword_100018F30, &qword_10000DDD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000DBA0;
  *(inited + 32) = 0xD000000000000011;
  v1 = PRTimeFontIdentifierSoft;
  *(inited + 40) = 0x800000010000E1E0;
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x800000010000E260;
  v2 = PRTimeFontIdentifierSlab;
  *(inited + 72) = PRTimeFontIdentifierSlab;
  strcpy((inited + 80), "plum.preset3");
  v3 = PRTimeFontIdentifierRail;
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = v3;
  strcpy((inited + 104), "pink.preset5");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  v4 = PRTimeFontIdentifierRounded;
  *(inited + 120) = PRTimeFontIdentifierRounded;
  strcpy((inited + 128), "pink.preset2");
  v5 = PRTimeFontIdentifierNewYork;
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = v5;
  strcpy((inited + 152), "coral.preset2");
  *(inited + 166) = -4864;
  *(inited + 168) = v3;
  strcpy((inited + 176), "peach.preset1");
  *(inited + 190) = -4864;
  *(inited + 192) = v5;
  *(inited + 200) = 0xD000000000000013;
  *(inited + 208) = 0x800000010000E280;
  v6 = PRTimeFontIdentifierStencil;
  *(inited + 216) = PRTimeFontIdentifierStencil;
  strcpy((inited + 224), "green.preset5");
  *(inited + 238) = -4864;
  *(inited + 240) = v1;
  *(inited + 248) = 0x6C616E6F73726570;
  *(inited + 256) = 0xE800000000000000;
  *(inited + 264) = v4;
  *(inited + 272) = 1802661751;
  *(inited + 280) = 0xE400000000000000;
  *(inited + 288) = v4;
  *(inited + 296) = 0x7065656C73;
  *(inited + 304) = 0xE500000000000000;
  *(inited + 312) = v4;
  *(inited + 320) = 0x7373656E746966;
  *(inited + 328) = 0xE700000000000000;
  *(inited + 336) = v6;
  *(inited + 344) = 0x676E696D6167;
  *(inited + 352) = 0xE600000000000000;
  *(inited + 360) = v3;
  *(inited + 368) = 0x6E6C7566646E696DLL;
  *(inited + 376) = 0xEB00000000737365;
  *(inited + 384) = v4;
  *(inited + 392) = 0x676E6964616572;
  *(inited + 400) = 0xE700000000000000;
  *(inited + 408) = v5;
  v7 = v4;
  v8 = v3;
  v9 = v5;
  v10 = v7;
  v11 = v8;
  v12 = v9;
  v13 = v1;
  v14 = v6;
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = v14;
  v20 = v2;
  v21 = sub_10000AAAC(inited);
  swift_setDeallocating();
  sub_1000040D4(&qword_100018F38, &qword_10000DDE0);
  swift_arrayDestroy();
  return v21;
}

uint64_t sub_100003338(uint64_t a1, void (*a2)(void *, void), uint64_t a3)
{
  v81[1] = a3;
  v82 = a2;
  v92 = sub_10000CE30();
  v4 = *(v92 - 8);
  __chkstk_darwin(v92);
  v105 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000CDE0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v91 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = v81 - v10;
  v11 = sub_1000040D4(&qword_1000191A0, &qword_10000E160);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v102 = (v81 - v13);
  v109 = _swiftEmptyArrayStorage;
  v108 = &_swiftEmptySetSingleton;
  v14 = sub_10000CCB0();
  v15 = sub_10000CCC0();
  v113 = v14;
  sub_10000217C(v15);
  v16 = v113;
  v101 = v113[2];
  if (!v101)
  {

    v79 = _swiftEmptyArrayStorage;
    goto LABEL_52;
  }

  v17 = 0;
  v88 = 0;
  v18 = *(v12 + 80);
  v98 = *(v11 + 64);
  v97 = v113 + ((v18 + 32) & ~v18);
  v96 = *(v11 + 80);
  v95 = (v7 + 32);
  v94 = (v7 + 8);
  v89 = (v7 + 16);
  v90 = (v4 + 8);
  v83 = _swiftEmptyArrayStorage;
  v84 = xmmword_10000DBB0;
  v93 = v6;
  v19 = v103;
  v100 = v12;
  v99 = v113;
  do
  {
    if (v17 >= v16[2])
    {
      __break(1u);
    }

    v21 = *(v12 + 72);
    v106 = v17;
    v22 = v102;
    sub_10000411C(&v97[v21 * v17], v102);
    v24 = *v22;
    v23 = v22[1];
    v25 = v22[2];
    v26 = *(v22 + v96);
    (*v95)(v19, v22 + v98, v6);
    v27 = v108;
    if (v108[2])
    {
      sub_10000D150();
      sub_10000CF40();
      v28 = sub_10000D160();
      v29 = -1 << *(v27 + 32);
      v30 = v28 & ~v29;
      if ((*(v27 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v30))
      {
        v31 = ~v29;
        while (1)
        {
          v32 = (v27[6] + 16 * v30);
          v33 = *v32 == v24 && v32[1] == v23;
          if (v33 || (sub_10000D120() & 1) != 0)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v27 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v30) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_29;
      }
    }

LABEL_16:
    if (*(a1 + 16))
    {
      v34 = sub_100008F60(v24, v23);
      if (v35)
      {
        v36 = *(*(a1 + 56) + 8 * v34);
        v113 = 0;
        v37 = v36;
        v38 = [v37 loadUserInfoWithError:&v113];
        v39 = v113;
        if (v38)
        {
          v40 = v38;
          v41 = sub_10000CED0();
          v42 = v39;

          *&v111 = 0x6E6F6973726576;
          *(&v111 + 1) = 0xE700000000000000;
          sub_10000D020();
          if (*(v41 + 16) && (v43 = sub_100008FD8(&v113), (v44 & 1) != 0))
          {
            sub_1000042A0(*(v41 + 56) + 32 * v43, &v111);
            sub_10000419C(&v113);
            sub_100004238(&v111);
            *&v110 = 0x6E6F6973726576;
            *(&v110 + 1) = 0xE700000000000000;
            sub_10000D020();
            v6 = v93;
            if (*(v41 + 16) && (v45 = sub_100008FD8(&v113), (v46 & 1) != 0))
            {
              sub_1000042A0(*(v41 + 56) + 32 * v45, &v111);
              sub_10000419C(&v113);

              if ((swift_dynamicCast() & 1) != 0 && v110 == 1)
              {
                v47 = v37;
                sub_10000CF70();
                if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_10000CF90();
                }

                sub_10000CFA0();
                v83 = v109;
                sub_1000022B4(&v113, v24, v23);

LABEL_29:

                v19 = v103;
                (*v94)(v103, v6);
                goto LABEL_5;
              }
            }

            else
            {

              sub_10000419C(&v113);
            }
          }

          else
          {
            sub_10000419C(&v113);
            v111 = 0u;
            v112 = 0u;
            sub_100004238(&v111);

            v6 = v93;
          }
        }

        else
        {
          v48 = v113;
          sub_10000CC80();

          swift_willThrow();

          v88 = 0;
        }
      }
    }

    v19 = v103;
    v49 = sub_10000CF00();
    v50 = [objc_opt_self() mutableDescriptorWithIdentifier:v49];

    (*v89)(v91, v19, v6);
    v51 = v25;
    sub_10000CE10();
    v52 = sub_10000CE00();
    *&v111 = 0x6E6F6973726576;
    *(&v111 + 1) = 0xE700000000000000;
    sub_10000D020();
    *(&v112 + 1) = &type metadata for Int;
    *&v111 = 1;
    sub_10000418C(&v111, &v110);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v107 = v52;
    sub_100009CAC(&v110, &v113, isUniquelyReferenced_nonNull_native);
    sub_10000419C(&v113);
    v104 = v107;
    v54 = [objc_allocWithZone(ATXPosterDescriptorGalleryOptions) init];
    v55 = v54;
    if (v26)
    {
      [v54 setFocus:v26];
      [v55 setOnlyEligibleForMadeForFocusSection:1];
    }

    v56 = sub_100002ED0();
    if (*(v56 + 16) && (v57 = sub_100008F60(v24, v23), (v58 & 1) != 0))
    {
      v59 = *(v56 + 56) + 48 * v57;
      v86 = v50;
      v85 = *(v59 + 32);
      v87 = v51;

      v60 = objc_allocWithZone(CHSWidget);
      v61 = sub_10000CF00();

      v62 = sub_10000CF00();
      v50 = v86;

      v63 = sub_10000CF00();
      v51 = v87;

      v64 = [v60 initWithExtensionBundleIdentifier:v61 containerBundleIdentifier:v62 kind:v63 family:12 intent:0];

      v19 = v103;
      [v55 setPreferredInlineComplication:v64];
    }

    else
    {
    }

    v65 = sub_100003018();
    if (*(v65 + 16) && (v66 = sub_100008F60(v24, v23), (v67 & 1) != 0))
    {
      v68 = *(*(v65 + 56) + 8 * v66);

      sub_1000040D4(&qword_100018F10, &qword_10000DDC0);
      v69 = swift_allocObject();
      *(v69 + 16) = v84;
      v70 = v50;
      *(v69 + 32) = [objc_allocWithZone(PRTimeFontConfiguration) initWithTimeFontIdentifier:v68];
      sub_1000041F0(0, &qword_100018F18, PRTimeFontConfiguration_ptr);
      isa = sub_10000CF80().super.isa;

      [v70 setPreferredTimeFontConfigurations:isa];

      v50 = v70;
    }

    else
    {
    }

    v72 = sub_100002D68(&off_1000148C8);
    swift_arrayDestroy();
    v73 = sub_100001788(v24, v23, v72);

    [v55 setAllowsSystemSuggestedComplications:(v73 & 1) == 0];
    v113 = 0;
    if (![v50 storeGalleryOptions:v55 error:&v113])
    {
      v20 = v113;

LABEL_4:
      sub_10000CC80();

      swift_willThrow();
      (*v90)(v105, v92);
      v6 = v93;
      (*v94)(v19, v93);

      v88 = 0;
      goto LABEL_5;
    }

    v74 = v113;
    v75 = sub_10000CEC0().super.isa;

    v113 = 0;
    v76 = [v50 storeUserInfo:v75 error:&v113];

    if (!v76)
    {
      v20 = v113;

      goto LABEL_4;
    }

    v77 = v113;
    v78 = v50;
    sub_10000CF70();
    if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10000CF90();
    }

    sub_10000CFA0();
    v83 = v109;
    sub_1000022B4(&v113, v24, v23);

    (*v90)(v105, v92);
    v6 = v93;
    (*v94)(v19, v93);
LABEL_5:
    v17 = v106 + 1;
    v12 = v100;
    v16 = v99;
  }

  while (v106 + 1 != v101);

  v79 = v83;
LABEL_52:

  v82(v79, 0);
}

uint64_t sub_1000040D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000411C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040D4(&qword_1000191A0, &qword_10000E160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10000418C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000041F0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100004238(uint64_t a1)
{
  v2 = sub_1000040D4(&qword_100018F20, &qword_10000DDC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000042A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_100004314(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100004324(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004344(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_100004394(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000044E0@<X0>(uint64_t *a1@<X8>)
{
  sub_10000CEA0();
  swift_allocObject();
  sub_10000CEB0();
  sub_10000CE70();
  swift_allocObject();

  sub_10000CE80();
  sub_1000040D4(&qword_100019020, &qword_10000E0A0);
  sub_10000CCA0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10000DB90;
  sub_100004994(&qword_100019028, &type metadata accessor for PRRenderingConfiguration, &protocol conformance descriptor for PRRenderingConfiguration);

  sub_10000CC90();
  sub_100004994(&qword_100019030, &type metadata accessor for PREditingConfiguration, &protocol conformance descriptor for PREditingConfiguration);

  sub_10000CC90();

  *a1 = v2;
  return result;
}

id sub_100004710()
{
  v0 = objc_allocWithZone(type metadata accessor for GradientPosterController(0));

  return [v0 init];
}

uint64_t sub_10000474C()
{
  [objc_allocWithZone(type metadata accessor for GradientUpdatingDelegate()) init];
  sub_1000040D4(&qword_100019010, &unk_10000E030);
  swift_allocObject();
  sub_10000CE90();
  sub_100004A10(&qword_100019018, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_10000CE60();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000048B0();
  sub_100004A10(&qword_100019008, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_10000CE40();
  return 0;
}

unint64_t sub_1000048B0()
{
  result = qword_100019000;
  if (!qword_100019000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019000);
  }

  return result;
}

uint64_t sub_100004904(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100004A10(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004904(&qword_100019010, &unk_10000E030);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100004A64(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor);
  *(v1 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor) = a1;
  v5 = a1;

  sub_100005178();
  v3 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor;
  [*(v1 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor) updateActions];
  v4 = *(v1 + v3);
  [v4 updateLuminanceValuesForLooks];
}

id sub_100004AF0()
{
  v1 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController____lazy_storage___bundle;
  v2 = *(v0 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController____lazy_storage___bundle);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController____lazy_storage___bundle);
  }

  else
  {
    sub_10000CD30();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_100004B80(double a1, double a2)
{
  v3 = v2;
  v5 = sub_10000CDE0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v49 - v11;
  __chkstk_darwin(v10);
  v14 = &v49 - v13;
  v15 = sub_1000040D4(&qword_1000191B8, &qword_10000E170);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = *(v3 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_sharedGradientView);
  if (v20)
  {
    v21 = v20;
    sub_10000CD00();

LABEL_25:
    *(v3 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_rotationAngle) = a1;
  }

  else
  {
    v58 = &v49 - v19;
    v52 = v14;
    v62 = v12;
    v63 = v9;
    v22 = v6;
    v23 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientViews;
    swift_beginAccess();
    v24 = *(v3 + v23);
    v25 = v24 + 64;
    v26 = 1 << *(v24 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v24 + 64);
    v29 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_currentLookVariant;
    v54 = v24;

    v57 = v29;
    swift_beginAccess();
    v30 = 0;
    v49 = (v26 + 63) >> 6;
    v59 = (v22 + 32);
    v60 = (v22 + 16);
    v53 = v22;
    v55 = (v22 + 8);
    v61 = v18;
    v51 = v25;
    v56 = v5;
    v50 = v3;
    while (v28)
    {
      v32 = v30;
LABEL_18:
      v35 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v36 = v35 | (v32 << 6);
      v37 = v54;
      v38 = v53;
      v39 = v52;
      (*(v53 + 16))(v52, *(v54 + 48) + *(v53 + 72) * v36, v5);
      v40 = *(*(v37 + 56) + 8 * v36);
      v41 = sub_1000040D4(&qword_1000191C0, &qword_10000E178);
      v42 = *(v41 + 48);
      v43 = *(v38 + 32);
      v18 = v61;
      v43(v61, v39, v5);
      *&v18[v42] = v40;
      (*(*(v41 - 8) + 56))(v18, 0, 1, v41);
      v44 = v40;
      v3 = v50;
      v25 = v51;
LABEL_19:
      v45 = v58;
      sub_10000B004(v18, v58, &qword_1000191B8, &qword_10000E170);
      v46 = sub_1000040D4(&qword_1000191C0, &qword_10000E178);
      if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
      {

        goto LABEL_25;
      }

      v47 = *(v45 + *(v46 + 48));
      v5 = v56;
      (*v59)(v62, v45, v56);
      (*v60)(v63, v3 + v57, v5);
      sub_10000B06C(&qword_1000191C8, &protocol conformance descriptor for Look.Variant);
      sub_10000CF60();
      sub_10000CF60();
      if (v66 != v64 || v67 != v65)
      {
        sub_10000D120();
      }

      v31 = *v55;
      (*v55)(v63, v5);

      sub_10000CD00();

      v31(v62, v5);
      v18 = v61;
    }

    if (v49 <= v30 + 1)
    {
      v33 = v30 + 1;
    }

    else
    {
      v33 = v49;
    }

    v34 = v33 - 1;
    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= v49)
      {
        v48 = sub_1000040D4(&qword_1000191C0, &qword_10000E178);
        (*(*(v48 - 8) + 56))(v18, 1, 1, v48);
        v28 = 0;
        v30 = v34;
        goto LABEL_19;
      }

      v28 = *(v25 + 8 * v32);
      ++v30;
      if (v28)
      {
        v30 = v32;
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100005178()
{
  v1 = sub_1000040D4(&qword_1000191B8, &qword_10000E170);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v68 - v5;
  v88 = sub_10000CCE0();
  v92 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000CD80();
  v80 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000CDE0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10000CE30();
  v91 = *(v86 - 8);
  __chkstk_darwin(v86);
  v16 = *(v0 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_sharedGradientView);
  v94 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v16)
  {
    v17 = v0;
    v18 = *(v0 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor);
    v19 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_currentLookVariant;
    swift_beginAccess();
    (*(v12 + 16))(v14, v17 + v19, v11);
    v20 = v16;
    v21 = v18;
    sub_10000CE10();
    v22 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientOptions;
    swift_beginAccess();
    v23 = v80;
    v24 = *(v80 + 16);
    v24(v10, v17 + v22, v8);
    sub_10000CD50();
    v25 = *(v23 + 8);
    v25(v10, v8);
    sub_10000CD10();
    sub_10000CD20();
    [v20 bounds];
    v24(v10, v17 + v22, v8);
    v26 = v87;
    v27 = v94;
    sub_10000CD90();
    v25(v10, v8);
    sub_10000CCF0();

    (*(v92 + 8))(v26, v88);
    return (*(v91 + 8))(v27, v86);
  }

  else
  {
    v93 = v14;
    v84 = v11;
    v83 = v6;
    v85 = v4;
    v89 = v10;
    v81 = v8;
    v29 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientViews;
    swift_beginAccess();
    v30 = *(v0 + v29);
    v31 = *(v30 + 64);
    v69 = v30 + 64;
    v32 = 1 << *(v30 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & v31;
    v79 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor;
    v35 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientOptions;
    v77 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_rotationAngle;
    v71 = v30;

    v82 = v0;
    v78 = v35;
    swift_beginAccess();
    v36 = 0;
    v37 = (v32 + 63) >> 6;
    v70 = v12 + 16;
    v90 = (v12 + 32);
    v75 = (v80 + 16);
    v74 = (v80 + 8);
    v73 = (v92 + 8);
    v72 = (v91 + 8);
    v38 = v12;
    v80 = v12;
    v76 = v37;
    if (v34)
    {
      while (1)
      {
        v39 = v36;
        v41 = v84;
        v40 = v85;
        result = v93;
LABEL_14:
        v45 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        v46 = v45 | (v39 << 6);
        v47 = v71;
        v48 = result;
        (*(v38 + 16))();
        v49 = *(*(v47 + 56) + 8 * v46);
        v50 = sub_1000040D4(&qword_1000191C0, &qword_10000E178);
        v51 = *(v50 + 48);
        (*(v38 + 32))(v40, v48, v41);
        *(v40 + v51) = v49;
        (*(*(v50 - 8) + 56))(v40, 0, 1, v50);
        v52 = v49;
        v43 = v39;
        v44 = v89;
LABEL_15:
        v53 = v40;
        v54 = v83;
        sub_10000B004(v53, v83, &qword_1000191B8, &qword_10000E170);
        v55 = sub_1000040D4(&qword_1000191C0, &qword_10000E178);
        if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
        {
        }

        v56 = *(v54 + *(v55 + 48));
        v57 = v41;
        v58 = v82;
        v59 = *(v82 + v79);
        (*v90)(v93, v54, v57);
        v60 = v59;
        sub_10000CE10();
        v61 = *v75;
        v62 = v78;
        v92 = v43;
        v63 = v81;
        v61(v44, v58 + v78, v81);
        sub_10000CD50();
        v91 = *v74;
        (v91)(v44, v63);
        sub_10000CD10();
        sub_10000CD20();
        [v56 bounds];
        v61(v44, v58 + v62, v63);
        v64 = v87;
        sub_10000CD90();
        (v91)(v44, v63);
        v65 = v86;
        v66 = v94;
        sub_10000CCF0();

        (*v73)(v64, v88);
        (*v72)(v66, v65);
        v36 = v92;
        v38 = v80;
        v37 = v76;
        if (!v34)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      if (v37 <= v36 + 1)
      {
        v42 = v36 + 1;
      }

      else
      {
        v42 = v37;
      }

      v43 = v42 - 1;
      v44 = v89;
      v41 = v84;
      v40 = v85;
      result = v93;
      while (1)
      {
        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v39 >= v37)
        {
          v67 = sub_1000040D4(&qword_1000191C0, &qword_10000E178);
          (*(*(v67 - 8) + 56))(v40, 1, 1, v67);
          v34 = 0;
          goto LABEL_15;
        }

        v34 = *(v69 + 8 * v39);
        ++v36;
        if (v34)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  return result;
}

id sub_100005AFC(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_renderer))
  {
    v5 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientViews;
    swift_beginAccess();
    v6 = *(v1 + v5);
    if (*(v6 + 16))
    {

      v7 = sub_10000907C(a1);
      if (v8)
      {
        v2 = *(*(v6 + 56) + 8 * v7);

        return v2;
      }
    }

    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_sharedGradientView);
  v3 = v2;
  return v2;
}

void sub_100005BB8(void *a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_renderer))
  {
    v9 = *(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_sharedGradientView);
    *(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_sharedGradientView) = a1;
    v4 = a1;
  }

  else
  {
    v5 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientViews;
    swift_beginAccess();
    v7 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + v5);
    *(v2 + v5) = 0x8000000000000000;
    sub_100009DF8(v7, a2, isUniquelyReferenced_nonNull_native);
    *(v2 + v5) = v10;
    swift_endAccess();
  }
}

void sub_100005CAC()
{
  v1 = sub_1000040D4(&qword_1000191A0, &qword_10000E160);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v39 - v6;
  v40 = v0;
  v8 = *&v0[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor];
  v9 = sub_10000CCB0();
  v10 = *(v9 + 16);
  v41 = v8;
  if (v10)
  {
    *&aBlock = _swiftEmptyArrayStorage;
    sub_10000D090();
    v11 = *(v2 + 80);
    v39[1] = v9;
    v12 = v9 + ((v11 + 32) & ~v11);
    v42 = *(v2 + 72);
    do
    {
      sub_10000CAF0(v12, v7, &qword_1000191A0, &qword_10000E160);
      sub_10000B004(v7, v5, &qword_1000191A0, &qword_10000E160);

      v13 = *(v1 + 64);
      v14 = sub_10000CDE0();
      (*(*(v14 - 8) + 8))(&v5[v13], v14);
      sub_10000D070();
      sub_10000D0A0();
      sub_10000D0B0();
      sub_10000D080();
      v12 += v42;
      --v10;
    }

    while (v10);

    v16 = aBlock;
    v8 = v41;
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  v49 = v16;
  *&aBlock = v8;
  __chkstk_darwin(v15);
  v39[-2] = &aBlock;

  v17 = sub_10000A838(sub_10000AF44, &v39[-4], v16);

  if (v17)
  {
    goto LABEL_9;
  }

  v18 = v8;
  sub_10000CF70();
  if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    sub_10000CFA0();
    v16 = v49;
LABEL_9:
    v19 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
    v20 = [objc_allocWithZone(PRPosterColor) initWithColor:v8];
    [v19 setSelectedColor:v20];

    if (v16 >> 62)
    {
      v21 = sub_10000D0D0();
      if (!v21)
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_21;
      }
    }

    v48 = _swiftEmptyArrayStorage;
    sub_10000A530(0, v21 & ~(v21 >> 63), 0);
    if ((v21 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_30:
    sub_10000CF90();
  }

  v42 = v19;
  v22 = 0;
  v23 = v48;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v24 = sub_10000D060();
    }

    else
    {
      v24 = *(v16 + 8 * v22 + 32);
    }

    v25 = v24;
    v26 = [objc_allocWithZone(PRPosterColor) initWithColor:v24];
    v45 = sub_1000041F0(0, &qword_100019178, PRPosterColor_ptr);

    *&aBlock = v26;
    v48 = v23;
    v28 = v23[2];
    v27 = v23[3];
    if (v28 >= v27 >> 1)
    {
      sub_10000A530((v27 > 1), v28 + 1, 1);
      v23 = v48;
    }

    ++v22;
    v23[2] = v28 + 1;
    sub_10000418C(&aBlock, &v23[4 * v28 + 4]);
  }

  while (v21 != v22);

  v8 = v41;
  v19 = v42;
LABEL_22:
  isa = sub_10000CF80().super.isa;

  [v19 setSuggestedColors:isa];

  v30 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor;
  v31 = v40;
  v32 = *&v40[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor];
  if (v32)
  {
    v33 = [v32 viewForMenuElementIdentifier:*&v40[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_colorPickerViewIdentifier]];
  }

  else
  {
    v33 = 0;
  }

  [v19 setColorPickerSourceItem:v33];
  swift_unknownObjectRelease();
  v34 = *&v31[v30];
  if (v34)
  {
    v35 = swift_allocObject();
    *(v35 + 16) = v31;
    v46 = sub_10000AFE4;
    v47 = v35;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v44 = sub_100006350;
    v45 = &unk_100014A98;
    v36 = _Block_copy(&aBlock);
    v37 = v34;
    v38 = v31;

    [v37 presentColorPickerWithConfiguration:v19 changeHandler:v36];

    _Block_release(v36);
    v8 = v37;
  }

  else
  {
  }
}

void sub_10000629C(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 color];
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = a1;
  }

  v4 = v3;
  sub_100004A64([v4 colorWithAlphaComponent:1.0]);
}

void sub_100006350(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1000063B8(void *a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_renderer))
  {
    if (*(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_sharedGradientView))
    {
      return;
    }

    goto LABEL_6;
  }

  v5 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientViews;
  swift_beginAccess();
  if (!*(*(v2 + v5) + 16) || (, sub_10000907C(a2), v7 = v6, , (v7 & 1) == 0))
  {
LABEL_6:
    sub_10000CD30();
    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_10000CD20();
    [a1 addSubview:v8];
    v9.super.super.isa = v8;
    sub_10000CFB0(v9);
    sub_100005BB8(v8, a2);
  }
}

void sub_1000064E8()
{
  v1 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      [*(*(v2 + 56) + ((v8 << 9) | (8 * v9))) removeFromSuperview];
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  *(v0 + v1) = &_swiftEmptyDictionarySingleton;

  v10 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_sharedGradientView;
  v11 = *(v0 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_sharedGradientView);
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *(v0 + v10);
  }

  else
  {
    v12 = 0;
  }

  *(v0 + v10) = 0;
}

uint64_t sub_10000662C(void *a1)
{
  v3 = sub_10000CDE0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000040D4(&qword_100019168, &qword_10000E140);
  __chkstk_darwin(v7 - 8);
  v9 = v24 - v8;
  v10 = sub_10000CE30();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = 0;
  v14 = [a1 loadUserInfoWithError:v25];
  v15 = v25[0];
  if (v14)
  {
    v24[0] = v4;
    v16 = v14;
    sub_10000CED0();
    v17 = v15;

    v18 = v1;
    v19 = sub_100004AF0();
    sub_10000CDA0();

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_10000901C(v9, &qword_100019168, &qword_10000E140);
      return 0;
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      sub_10000CDF0();
      v22 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_currentLookVariant;
      swift_beginAccess();
      (*(v24[0] + 40))(v18 + v22, v6, v3);
      swift_endAccess();
      v23 = sub_10000CE20();
      sub_100004A64(v23);
      (*(v11 + 8))(v13, v10);
      return 1;
    }
  }

  else
  {
    v21 = v25[0];
    sub_10000CC80();

    swift_willThrow();

    return 0;
  }
}

void sub_100006974(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10000CDE0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_renderer;
  v11 = *(v3 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_renderer);
  *(v3 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_renderer) = a1;
  v12 = a1;

  swift_getObjectType();
  v13 = [a2 isPreview];
  *(v3 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_isPreview) = v13;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    [a2 unlockProgress];
  }

  swift_beginAccess();
  sub_10000CD40();
  swift_endAccess();
  [a2 backlightProgress];
  swift_beginAccess();
  sub_10000CD60();
  swift_endAccess();
  *(v3 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_rotationAngle) = sub_10000AED4(a2);
  v14 = *(v3 + v10);
  if (v14)
  {
    v15 = [v14 backgroundView];
    if (v15)
    {
      v16 = v15;
      v17 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_currentLookVariant;
      swift_beginAccess();
      (*(v7 + 16))(v9, v3 + v17, v6);
      sub_1000063B8(v16, v9);
      (*(v7 + 8))(v9, v6);
      LOBYTE(v17) = sub_10000662C([a2 contents]);
      swift_unknownObjectRelease();
      if ((v17 & 1) == 0)
      {
        v18 = [objc_opt_self() blueColor];
        sub_100004A64(v18);
      }
    }
  }
}

void sub_100006DD8(void *a1)
{
  v1 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  v10[0] = 0;
  v2 = [v1 loadUserInfoWithError:v10];
  swift_unknownObjectRelease();
  v3 = v10[0];
  if (v2)
  {
    v4 = sub_10000CED0();
    v5 = v3;

    *&v9[0] = 0x546B6E616C427369;
    *(&v9[0] + 1) = 0xEF6574616C706D65;
    sub_10000D020();
    if (*(v4 + 16) && (v6 = sub_100008FD8(v10), (v7 & 1) != 0))
    {
      sub_1000042A0(*(v4 + 56) + 32 * v6, v9);
      sub_10000419C(v10);

      sub_10000901C(v9, &qword_100018F20, &qword_10000DDC8);
      sub_100005CAC();
    }

    else
    {

      sub_10000419C(v10);
      memset(v9, 0, sizeof(v9));
      sub_10000901C(v9, &qword_100018F20, &qword_10000DDC8);
    }
  }

  else
  {
    v8 = v10[0];
    sub_10000CC80();

    swift_willThrow();
  }
}

void sub_100007048(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(uint64_t, void *))
{
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = a5;
  v12 = a1;
  a6(a4, a5);

  swift_unknownObjectRelease();
}

void sub_100007174(void *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 CGContext];
  v11 = [*(a2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor) CGColor];
  CGContextSetFillColorWithColor(v10, v11);

  v12 = [a1 CGContext];
  CGContextSetLineWidth(v12, a3);

  v13 = [a1 CGContext];
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
  v16 = [v14 resolvedColorWithTraitCollection:v15];

  v17 = [v16 CGColor];
  CGContextSetStrokeColorWithColor(v13, v17);

  v18 = [a1 CGContext];
  v21.origin.x = a3;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGContextAddEllipseInRect(v18, v21);

  v19 = [a1 CGContext];
  CGContextDrawPath(v19, kCGPathFillStroke);
}

void sub_100007368(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_1000073B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100005CAC();
  }
}

uint64_t sub_1000074A0(void *a1)
{
  v2 = sub_1000040D4(&qword_100019168, &qword_10000E140);
  __chkstk_darwin(v2 - 8);
  v4 = v23 - v3;
  v5 = sub_10000CE30();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000CDE0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for Look.Variant.preset1(_:), v9);
  v25 = sub_10000CDD0();
  v14 = v13;
  v24 = *(v10 + 8);
  v24(v12, v9);
  v15 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  v26 = 0;
  v16 = [v15 loadUserInfoWithError:&v26];
  swift_unknownObjectRelease();
  v17 = v26;
  if (v16)
  {
    v23[1] = v14;
    sub_10000CED0();
    v18 = v17;

    v19 = sub_100004AF0();
    sub_10000CDA0();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_10000901C(v4, &qword_100019168, &qword_10000E140);
      return v25;
    }

    else
    {

      (*(v6 + 32))(v8, v4, v5);
      sub_10000CDF0();
      v22 = sub_10000CDD0();
      v24(v12, v9);
      (*(v6 + 8))(v8, v5);
      return v22;
    }
  }

  else
  {
    v21 = v26;
    sub_10000CC80();

    swift_willThrow();

    return v25;
  }
}

uint64_t sub_100007980(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v37 = a1;
  v7 = sub_1000040D4(&qword_100019168, &qword_10000E140);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_10000CE30();
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin(v10);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000040D4(&unk_100019180, &unk_10000E150);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v15 = sub_10000CDE0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a3 identifier];
  sub_10000CF30();

  sub_10000CDC0();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_10000901C(v14, &unk_100019180, &unk_10000E150);
  }

  (*(v16 + 32))(v18, v14, v15);
  v21 = [a2 backgroundView];
  sub_1000063B8(v21, v18);

  v22 = *(v4 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor);
  v23 = [objc_msgSend(v37 "environment")];
  swift_unknownObjectRelease();
  v38 = 0;
  v24 = [v23 loadUserInfoWithError:&v38];
  swift_unknownObjectRelease();
  v25 = v38;
  if (v24)
  {
    sub_10000CED0();
    v26 = v25;

    v27 = sub_100004AF0();
    sub_10000CDA0();

    v29 = v35;
    v28 = v36;
    if ((*(v35 + 48))(v9, 1, v36) == 1)
    {
      sub_10000901C(v9, &qword_100019168, &qword_10000E140);
    }

    else
    {
      v31 = v34;
      (*(v29 + 32))(v34, v9, v28);
      v32 = sub_10000CE20();

      (*(v29 + 8))(v31, v28);
      v22 = v32;
    }
  }

  else
  {
    v30 = v38;
    sub_10000CC80();

    swift_willThrow();
  }

  sub_100004A64(v22);
  return (*(v16 + 8))(v18, v15);
}

double sub_100007EAC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_100008FD8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000A0F8();
      v9 = v11;
    }

    sub_10000419C(*(v9 + 48) + 40 * v7);
    sub_10000418C((*(v9 + 56) + 32 * v7), a2);
    sub_100009B08(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_1000080BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor);
  if (v10)
  {
    v11 = v10 == v7;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v17 = *(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor);
    v18 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_currentLookVariant;
    swift_beginAccess();
    (*(v6 + 16))(v9, v2 + v18, v5);
    v19 = v17;
    sub_10000CE10();
    v20 = sub_10000CE30();
    (*(*(v20 - 8) + 56))(a2, 0, 1, v20);
  }

  else
  {
    v12 = [objc_msgSend(v7 "environment")];
    swift_unknownObjectRelease();
    v24[0] = 0;
    v13 = [v12 loadUserInfoWithError:v24];
    swift_unknownObjectRelease();
    v14 = v24[0];
    if (v13)
    {
      sub_10000CED0();
      v15 = v14;

      v16 = sub_100004AF0();
      sub_10000CDA0();
    }

    else
    {
      v21 = v24[0];
      sub_10000CC80();

      swift_willThrow();

      v22 = sub_10000CE30();
      (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
    }
  }
}

id sub_1000083D8(uint64_t a1)
{
  v2 = sub_1000040D4(&qword_100019168, &qword_10000E140);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_10000CE30();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000080BC(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000901C(v4, &qword_100019168, &qword_10000E140);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
    sub_1000040D4(&qword_100019170, &qword_10000E148);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10000E0B0;
    v12 = sub_10000CE20();
    v13 = [objc_allocWithZone(PRPosterColor) initWithColor:v12];

    *(v11 + 56) = sub_1000041F0(0, &qword_100019178, PRPosterColor_ptr);
    *(v11 + 32) = v13;
    isa = sub_10000CF80().super.isa;

    [v10 setSuggestedColors:isa];

    v15 = sub_10000CE20();
    v16 = [objc_allocWithZone(PRPosterColor) initWithColor:v15];

    [v10 setSelectedColor:v16];
    (*(v6 + 8))(v8, v5);
    return v10;
  }
}

id sub_100008684()
{
  v0[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_looksShareBaseAppearance] = 0;
  *&v0[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_rotationAngle] = 0;
  *&v0[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_renderer] = 0;
  *&v0[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_extendRenderSessionInvalidatable] = 0;
  *&v0[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_editor] = 0;
  sub_10000CD70();
  v0[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_isPreview] = 0;
  v1 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_colorPickerViewIdentifier;
  *&v0[v1] = sub_10000CF00();
  v2 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_currentLookVariant;
  v3 = enum case for Look.Variant.preset1(_:);
  v4 = sub_10000CDE0();
  (*(*(v4 - 8) + 104))(&v0[v2], v3, v4);
  v5 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor;
  *&v0[v5] = [objc_opt_self() blueColor];
  *&v0[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController____lazy_storage___bundle] = 0;
  v6 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientViews;
  *&v0[v6] = sub_10000ACEC(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_sharedGradientView] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for GradientPosterController(0);
  return objc_msgSendSuper2(&v8, "init");
}

id sub_10000881C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientPosterController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GradientPosterController(uint64_t a1)
{
  result = qword_100019158;
  if (!qword_100019158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000089D4(uint64_t a1)
{
  result = sub_10000CD80();
  if (v2 <= 0x3F)
  {
    result = sub_10000CDE0();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100008AF8()
{
  v0 = sub_10000CDE0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CDF0();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for Look.Variant.preset1(_:))
  {
    v5 = [objc_opt_self() mainBundle];
    v12._countAndFlagsBits = 0xED00006B6F6F4C20;
    v8._countAndFlagsBits = 0x746E6172626956;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v7 = 0x3120746573657250;
    v8._object = 0xE700000000000000;
LABEL_8:
    v9.super.isa = v5;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v10 = sub_10000CC60(v8, v6, v9, v14, v7, v12);

    return v10;
  }

  if (v4 == enum case for Look.Variant.preset2(_:))
  {
    v5 = [objc_opt_self() mainBundle];
    v12._countAndFlagsBits = 0xED00006B6F6F4C20;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v7 = 0x3220746573657250;
    v8._countAndFlagsBits = 1701736276;
LABEL_7:
    v8._object = 0xE400000000000000;
    goto LABEL_8;
  }

  if (v4 == enum case for Look.Variant.preset3(_:))
  {
    v5 = [objc_opt_self() mainBundle];
    v12._countAndFlagsBits = 0xED00006B6F6F4C20;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v7 = 0x3320746573657250;
    v8._countAndFlagsBits = 1885693252;
    goto LABEL_7;
  }

  if (v4 == enum case for Look.Variant.preset4(_:))
  {
    v5 = [objc_opt_self() mainBundle];
    v12._countAndFlagsBits = 0xED00006B6F6F4C20;
    v8._countAndFlagsBits = 0x726F706156;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v7 = 0x3420746573657250;
    v8._object = 0xE500000000000000;
    goto LABEL_8;
  }

  if (v4 == enum case for Look.Variant.preset5(_:))
  {
    v5 = [objc_opt_self() mainBundle];
    v12._countAndFlagsBits = 0xED00006B6F6F4C20;
    v8._countAndFlagsBits = 0x746867697242;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v7 = 0x3520746573657250;
    v8._object = 0xE600000000000000;
    goto LABEL_8;
  }

  if (v4 == enum case for Look.Variant.preset6(_:))
  {
    v5 = [objc_opt_self() mainBundle];
    v12._countAndFlagsBits = 0xED00006B6F6F4C20;
    v8._countAndFlagsBits = 0x64696C6F53;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v7 = 0x3620746573657250;
    v8._object = 0xE500000000000000;
    goto LABEL_8;
  }

  result = sub_10000D0C0();
  __break(1u);
  return result;
}

unint64_t sub_100008F60(uint64_t a1, uint64_t a2)
{
  sub_10000D150();
  sub_10000CF40();
  v4 = sub_10000D160();

  return sub_100009100(a1, a2, v4);
}

unint64_t sub_100008FD8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000D000(*(v2 + 40));

  return sub_1000091B8(a1, v4);
}

uint64_t sub_10000901C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000040D4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10000907C(uint64_t a1)
{
  sub_10000CDE0();
  sub_10000B06C(&qword_100019190, &protocol conformance descriptor for Look.Variant);
  v2 = sub_10000CEE0();

  return sub_1000092DC(a1, v2);
}

unint64_t sub_100009100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10000D120())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000091B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100009280(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10000D010();
      sub_10000419C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000092DC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_10000CDE0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10000B06C(&qword_100019198, &protocol conformance descriptor for Look.Variant);
      v15 = sub_10000CEF0();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_100009488(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000040D4(&qword_1000191E0, &qword_10000E190);
  result = sub_10000D0F0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_10000418C((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_100009280(v23, &v36);
        sub_1000042A0(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_10000D000(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_10000418C(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100009740(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10000CDE0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000040D4(&qword_1000191B0, &qword_10000E168);
  v39 = v4;
  result = sub_10000D0F0();
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

      sub_10000B06C(&qword_100019190, &protocol conformance descriptor for Look.Variant);
      result = sub_10000CEE0();
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

uint64_t sub_100009B08(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10000CFF0() + 1) & ~v5;
    do
    {
      sub_100009280(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_10000D000(*(a2 + 40));
      result = sub_10000419C(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_100009CAC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100008FD8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10000A0F8();
      goto LABEL_7;
    }

    sub_100009488(v13, a3 & 1);
    v19 = sub_100008FD8(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100009280(a2, v21);
      return sub_100009FC4(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_10000D140();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000CAA4(v17);

  return sub_10000418C(a1, v17);
}

void sub_100009DF8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10000CDE0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10000907C(a2);
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
      sub_10000A29C();
      goto LABEL_7;
    }

    sub_100009740(v17, a3 & 1);
    v23 = sub_10000907C(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_10000A040(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_10000D140();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

_OWORD *sub_100009FC4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10000418C(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_10000A040(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10000CDE0();
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

void *sub_10000A0F8()
{
  v1 = v0;
  sub_1000040D4(&qword_1000191E0, &qword_10000E190);
  v2 = *v0;
  v3 = sub_10000D0E0();
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
        v18 = 40 * v17;
        sub_100009280(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1000042A0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10000418C(v22, (*(v4 + 56) + v17));
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

char *sub_10000A29C()
{
  v1 = v0;
  v31 = sub_10000CDE0();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040D4(&qword_1000191B0, &qword_10000E168);
  v3 = *v0;
  v4 = sub_10000D0E0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

void *sub_10000A510(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000A550(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000A530(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000A728(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000A550(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000040D4(&qword_100019210, &qword_10000E1A8);
  v10 = *(sub_10000CE30() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000CE30() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10000A728(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040D4(&qword_100019170, &qword_10000E148);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_10000A838(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_10000D060();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_10000D0D0();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t sub_10000A960(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000040D4(&unk_100019220, &unk_10000E1B8);
    v3 = sub_10000D100();

    for (i = (a1 + 48); ; i += 8)
    {
      v20 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      v7 = i[1];
      v10 = i[2];
      v9 = i[3];
      v11 = i[4];
      v12 = i[5];

      result = sub_100008F60(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = (v3[7] + 48 * result);
      *v16 = v8;
      v16[1] = v7;
      v16[2] = v10;
      v16[3] = v9;
      v16[4] = v11;
      v16[5] = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000AAAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000040D4(&qword_100019218, &qword_10000E1B0);
    v3 = sub_10000D100();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100008F60(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000ABB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000040D4(&qword_1000191E0, &qword_10000E190);
    v3 = sub_10000D100();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000CAF0(v4, v13, &qword_1000191E8, &unk_10000E198);
      result = sub_100008FD8(v13);
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
      result = sub_10000418C(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000ACEC(uint64_t a1)
{
  v2 = sub_1000040D4(&qword_1000191D0, &qword_10000E180);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000040D4(&qword_1000191B0, &qword_10000E168);
    v7 = sub_10000D100();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000CAF0(v9, v5, &qword_1000191D0, &qword_10000E180);
      result = sub_10000907C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10000CDE0();
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

double sub_10000AED4(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = 0.0;
  if (v1)
  {
    v3 = [v1 deviceOrientation];
    if ((v3 - 2) <= 2)
    {
      return dbl_10000E1C8[(v3 - 2)];
    }
  }

  return v2;
}

uint64_t sub_10000AFAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AFEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000B004(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000040D4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000B06C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000CDE0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10000B0B0(void *a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = [a1 isPreview];
  *(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_isPreview) = v6;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    [a1 unlockProgress];
  }

  swift_beginAccess();
  sub_10000CD40();
  swift_endAccess();
  [a1 backlightProgress];
  swift_beginAccess();
  sub_10000CD60();
  swift_endAccess();
  v7 = sub_10000AED4(a1);
  v8 = 0.0;
  if (a2)
  {
    v9 = [a2 animationSettings];
    if (v9)
    {
      v10 = v9;
      [v9 duration];
      v8 = v11;
    }
  }

  if (v7 == *(v3 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_rotationAngle))
  {
    v12 = sub_10000662C([a1 contents]);
    swift_unknownObjectRelease();
    if ((v12 & 1) == 0)
    {
      v13 = [objc_opt_self() blueColor];
      sub_100004A64(v13);
    }
  }

  else
  {
    sub_100004B80(v7, v8);
  }
}

void sub_10000B29C()
{
  v1 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_extendRenderSessionInvalidatable;
  v2 = *(v0 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_extendRenderSessionInvalidatable);
  if (v2)
  {
    [v2 invalidate];
  }

  *(v0 + v1) = 0;
  swift_unknownObjectRelease();
  sub_1000064E8();
  v3 = *(v0 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_renderer);
  *(v0 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_renderer) = 0;
}

void sub_10000B304(uint64_t a1, void *a2)
{
  swift_getObjectType();
  v5 = sub_10000AED4(a1);
  if (v5 != *(v2 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_rotationAngle))
  {
    v6 = v5;
    v7 = 0.0;
    if (a2)
    {
      v8 = [a2 animationSettings];
      if (v8)
      {
        v9 = v8;
        [v8 duration];
        v7 = v10;
      }
    }

    sub_100004B80(v6, v7);
  }
}

void *sub_10000B3C8()
{
  v0 = sub_10000CDE0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v47 = (v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v5 = v36 - v4;
  v6 = sub_10000CE30();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v39 = v36 - v11;
  v12 = sub_10000CDB0();
  v13 = *(v12 + 16);
  v50 = v0;
  v51 = v5;
  if (v13)
  {
    v38 = v10;
    v49 = v6;
    v52 = _swiftEmptyArrayStorage;
    sub_10000A510(0, v13, 0);
    v14 = v52;
    v36[1] = v12;
    v37 = v1;
    v16 = *(v1 + 16);
    v15 = v1 + 16;
    v43 = v7;
    v44 = v16;
    v17 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v18 = *(v15 + 56);
    v45 = v15;
    v46 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor;
    v41 = (v15 - 8);
    v42 = v18;
    v40 = v7 + 32;
    v19 = v39;
    do
    {
      v20 = v51;
      v21 = v44;
      v44(v51, v17, v0);
      v22 = v14;
      v23 = *(v46 + v48);
      v21(v47, v20, v0);
      v24 = v23;
      v14 = v22;
      sub_10000CE10();
      (*v41)(v20, v0);
      v52 = v22;
      v26 = v22[2];
      v25 = v22[3];
      if (v26 >= v25 >> 1)
      {
        sub_10000A510((v25 > 1), v26 + 1, 1);
        v14 = v52;
      }

      v14[2] = v26 + 1;
      v7 = v43;
      (*(v43 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26, v19, v49);
      v17 += v42;
      --v13;
      v0 = v50;
    }

    while (v13);

    v6 = v49;
    v5 = v51;
    v1 = v37;
    v10 = v38;
    v27 = v14[2];
    if (v27)
    {
      goto LABEL_7;
    }

LABEL_11:

    return _swiftEmptyArrayStorage;
  }

  v14 = _swiftEmptyArrayStorage;
  v27 = _swiftEmptyArrayStorage[2];
  if (!v27)
  {
    goto LABEL_11;
  }

LABEL_7:
  v52 = _swiftEmptyArrayStorage;
  sub_10000D090();
  v29 = *(v7 + 16);
  v28 = v7 + 16;
  v30 = v14 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
  v48 = *(v28 + 56);
  v49 = v29;
  v47 = (v1 + 8);
  v45 = v14;
  v46 = (v28 - 8);
  do
  {
    v49(v10, v30, v6);
    sub_10000CDF0();
    sub_10000CDD0();
    v31 = v28;
    (*v47)(v5, v0);
    sub_100008AF8();
    v32 = objc_allocWithZone(PREditingLook);
    v33 = sub_10000CF00();

    v34 = sub_10000CF00();
    v0 = v50;

    [v32 initWithIdentifier:v33 displayName:v34];

    (*v46)(v10, v6);
    sub_10000D070();
    sub_10000D0A0();
    v28 = v31;
    v5 = v51;
    sub_10000D0B0();
    sub_10000D080();
    v30 += v48;
    --v27;
  }

  while (v27);

  return v52;
}

uint64_t sub_10000B8A0()
{
  v1 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{35.0, 35.0}];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = xmmword_10000E0C0;
  *(v2 + 40) = 0x403D000000000000;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10000CB90;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10000CBB0;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007368;
  aBlock[3] = &unk_100014B10;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  v6 = [v1 imageWithActions:v4];
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_1000041F0(0, &unk_1000191F8, UIAction_ptr);
    v8 = objc_opt_self();
    v20 = v1;
    v9 = [v8 mainBundle];
    v19._countAndFlagsBits = 0x800000010000E5C0;
    v22._countAndFlagsBits = 0x695020726F6C6F43;
    v22._object = 0xEC00000072656B63;
    v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v24.value._object = 0xEB00000000656C62;
    v10.super.isa = v9;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    sub_10000CC60(v22, v24, v10, v26, 0xD000000000000018, v19);

    v11 = *&v5[OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_colorPickerViewIdentifier];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = v11;
    v13 = v6;
    v14 = sub_10000CFE0();
    v15 = [v8 mainBundle];
    v23._countAndFlagsBits = 0x695020726F6C6F43;
    v23._object = 0xEC00000072656B63;
    v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v25.value._object = 0xEB00000000656C62;
    v16.super.isa = v15;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    sub_10000CC60(v23, v25, v16, v27, 0xD000000000000018, 0x800000010000E5C0);

    v17 = sub_10000CF00();

    [v14 setAccessibilityLabel:v17];

    sub_1000040D4(&qword_100018F10, &qword_10000DDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10000DBB0;
    *(v18 + 32) = v14;

    return v18;
  }

  return result;
}

double sub_10000BC8C(void *a1, double a2, double a3, double a4, double a5)
{
  v40 = sub_10000CD80();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000CCE0();
  v44 = *(v9 - 8);
  v45 = v9;
  __chkstk_darwin(v9);
  v42 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10000CE30();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000040D4(&unk_100019180, &unk_10000E150);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10000CDE0();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v38 - v20;
  v22 = [a1 identifier];
  sub_10000CF30();

  sub_10000CDC0();
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    (*(v16 + 32))(v21, v14, v15);
    v24 = sub_100005AFC(v21);
    if (v24)
    {
      v25 = v24;
      [v25 bounds];
      if (CGRectGetMaxY(v46) > 0.0)
      {
        v26 = *(v5 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor);
        (*(v16 + 16))(v19, v21, v15);
        v27 = v26;
        v28 = v39;
        sub_10000CE10();
        [v25 bounds];
        v29 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_gradientOptions;
        swift_beginAccess();
        v30 = v38;
        v31 = v5 + v29;
        v32 = v40;
        (*(v38 + 16))(v8, v31, v40);
        v33 = v42;
        sub_10000CD90();
        (*(v30 + 8))(v8, v32);
        [v25 bounds];

        v34 = sub_10000CCD0();
        if (v35)
        {
          v23 = PREditingLookLuminanceUnknown;
        }

        else
        {
          v36 = *&v34;

          v23 = v36;
        }

        (*(v44 + 8))(v33, v45);
        (*(v41 + 8))(v28, v43);
        goto LABEL_11;
      }
    }

    v23 = PREditingLookLuminanceUnknown;
LABEL_11:
    (*(v16 + 8))(v21, v15);
    return v23;
  }

  sub_10000901C(v14, &unk_100019180, &unk_10000E150);
  return PREditingLookLuminanceUnknown;
}

uint64_t sub_10000C1E0(void *a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v5 = sub_1000040D4(&unk_100019180, &unk_10000E150);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - v6;
  v8 = sub_10000CDE0();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v46 = sub_10000ABB0(_swiftEmptyArrayStorage);
  v44 = a1;
  v14 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  v50[0] = 0;
  v15 = [v14 loadUserInfoWithError:v50];
  swift_unknownObjectRelease();
  v16 = v50[0];
  if (v15)
  {

    v17 = sub_10000CED0();

    v46 = v17;
  }

  else
  {
    v18 = v16;
    sub_10000CC80();

    swift_willThrow();
  }

  v19 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_currentLookVariant;
  swift_beginAccess();
  v20 = *(v9 + 16);
  v42 = a2;
  v20(v13, a2 + v19, v8);
  v21 = sub_10000CDD0();
  v23 = v22;
  v24 = *(v9 + 8);
  v24(v13, v8);
  v25 = [v44 currentLook];
  v26 = [v25 identifier];

  sub_10000CF30();
  sub_10000CDC0();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000901C(v7, &unk_100019180, &unk_10000E150);
  }

  else
  {

    v27 = v41;
    (*(v9 + 32))(v41, v7, v8);
    v21 = sub_10000CDD0();
    v23 = v28;
    v24(v27, v8);
  }

  *&v48 = 0x6F6C6F4365736162;
  *(&v48 + 1) = 0xE900000000000072;
  sub_10000D020();
  v29 = *(v42 + OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_baseColor);
  v30 = sub_10000CFC0();

  v49 = sub_1000040D4(&qword_1000191D8, &qword_10000E188);
  *&v48 = v30;
  sub_10000418C(&v48, v47);
  v31 = v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v31;
  sub_100009CAC(v47, v50, isUniquelyReferenced_nonNull_native);
  sub_10000419C(v50);
  v33 = v45;
  *&v48 = 0x746E6169726176;
  *(&v48 + 1) = 0xE700000000000000;
  sub_10000D020();
  v49 = &type metadata for String;
  *&v48 = v21;
  *(&v48 + 1) = v23;
  sub_10000418C(&v48, v47);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v45 = v33;
  sub_100009CAC(v47, v50, v34);
  sub_10000419C(v50);
  v46 = v45;
  *&v48 = 0x546B6E616C427369;
  *(&v48 + 1) = 0xEF6574616C706D65;
  sub_10000D020();
  sub_100007EAC(v50, &v48);
  sub_10000419C(v50);
  sub_10000901C(&v48, &qword_100018F20, &qword_10000DDC8);
  *&v48 = 0x6D614E726F6C6F63;
  *(&v48 + 1) = 0xE900000000000065;
  sub_10000D020();
  sub_100007EAC(v50, &v48);
  sub_10000419C(v50);
  sub_10000901C(&v48, &qword_100018F20, &qword_10000DDC8);
  v35 = [objc_msgSend(v44 "environment")];
  swift_unknownObjectRelease();
  isa = sub_10000CEC0().super.isa;

  v50[0] = 0;
  LODWORD(v33) = [v35 storeUserInfo:isa error:v50];

  if (v33)
  {
    v37 = v50[0];
  }

  else
  {
    v38 = v50[0];
    sub_10000CC80();

    swift_willThrow();
  }

  return (*(v43 + 16))();
}

uint64_t sub_10000C85C(void *a1)
{
  v3 = sub_1000040D4(&unk_100019180, &unk_10000E150);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_10000CDE0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = [a1 identifier];
  sub_10000CF30();

  sub_10000CDC0();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10000901C(v5, &unk_100019180, &unk_10000E150);
  }

  (*(v7 + 32))(v12, v5, v6);
  (*(v7 + 16))(v10, v12, v6);
  v15 = OBJC_IVAR____TtC23GradientPosterExtension24GradientPosterController_currentLookVariant;
  swift_beginAccess();
  (*(v7 + 40))(v1 + v15, v10, v6);
  swift_endAccess();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_10000CAA4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000CAF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000040D4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000CB58()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000CBD8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}