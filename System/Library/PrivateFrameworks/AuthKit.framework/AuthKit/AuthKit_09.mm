void sub_1002319E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10023A350(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100231154(v16, a4 & 1);
      v11 = sub_10023A350(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1002320A4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_100231B60(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_100231BA8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

void sub_100231BF0()
{
  v1 = v0;
  sub_1001AD17C(&unk_100374250, &qword_10029D9A0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000087A8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000122C0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_100231DA8()
{
  v1 = v0;
  sub_1001AD17C(&qword_100372838, &qword_10029D400);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
}

void *sub_100231F34()
{
  v1 = v0;
  sub_1001AD17C(&unk_100372C30, &unk_10029D990);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

void sub_1002320A4()
{
  v1 = v0;
  sub_1001AD17C(&unk_100374240, &unk_10029F630);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
}

id sub_100232214(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1001AD17C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

uint64_t sub_100232370(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

    sub_100232720(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_1002324C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001AD17C(&qword_100372E40, &qword_10029DC40);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

void sub_100232720(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1002324C0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1002328A0();
      goto LABEL_16;
    }

    sub_1002329FC(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1002328A0()
{
  v1 = v0;
  sub_1001AD17C(&qword_100372E40, &qword_10029DC40);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

Swift::Int sub_1002329FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001AD17C(&qword_100372E40, &qword_10029DC40);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
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

void sub_100232C34(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1002332D0(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void *sub_100232D60(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v54 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v62 = a2 + 7;

  v15 = 0;
  v60 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v29 = *(v5 + 32);
  v55 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v55;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v56 = &v54;
    __chkstk_darwin(v28);
    v2 = &v54 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v59 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v57 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_100233644(v59, v55, v57, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v61 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v34 = v59[v2];
          v59[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v62, v49);
  v51 = v54;
  sub_10023340C(v50, v55, v5, v2, v63);
  v53 = v52;

  if (!v51)
  {

    v3 = v63[0];
    v58 = v64;
    v5 = v53;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_1000184B8(v13);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002332D0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1002328A0();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_100233868(v8);
  *v2 = v16;
  return v12;
}

void sub_10023340C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          sub_100233644(a1, a2, v30, a3);
          return;
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = a1[v22];
      a1[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

Swift::Int sub_100233644(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1001AD17C(&qword_100372E40, &qword_10029DC40);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100233868(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

char *sub_100233A2C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100233A6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100233A4C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100233B78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100233A6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001AD17C(&qword_1003725B0, &qword_10029D9C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100233B78(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001AD17C(&unk_100374270, &qword_10029DE30);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

void *sub_100233C88(void *result, void *a2, uint64_t a3, uint64_t a4)
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

id sub_100233DE0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_100233E2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100232370(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *sub_100233EC4(unint64_t a1)
{
  v34 = &_swiftEmptySetSingleton;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    return &_swiftEmptySetSingleton;
  }

  while (1)
  {
    v2 = 0;
    v30 = v1;
    v31 = a1 & 0xC000000000000001;
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = a1 + 32;
LABEL_5:
    if (v31)
    {
      a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v3 = __OFADD__(v2++, 1);
      if (!v3)
      {
        break;
      }

      goto LABEL_33;
    }

    if (v2 >= *(v29 + 16))
    {
      goto LABEL_34;
    }

    a1 = *(v28 + 8 * v2);
    v3 = __OFADD__(v2++, 1);
    if (!v3)
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v27 = a1;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v27;
    if (!v1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  v32 = a1;
  v4 = [a1 apps];
  sub_100234470(0, &qword_100373630, AKConsentedApplication_ptr);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = 0;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
LABEL_22:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = *(*(v5 + 56) + ((v6 << 9) | (8 * v16)));
    v18 = [v17 primaryClientID];
    if (!v18)
    {
      goto LABEL_16;
    }

    v19 = [v17 primaryClientID];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      if (v21 == 1280070990 && v23 == 0xE400000000000000)
      {

LABEL_16:
        v11 = [v17 clientID];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        sub_100232370(&v33, v12, v14);

        continue;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_16;
      }
    }
  }

  while (1)
  {
    v15 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v15 >= v10)
    {
      break;
    }

    v9 = *(v5 + 64 + 8 * v15);
    ++v6;
    if (v9)
    {
      v6 = v15;
      goto LABEL_22;
    }
  }

  if (v2 != v30)
  {
    goto LABEL_5;
  }

  return v34;
}

uint64_t sub_1002341B4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v48 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v40 = v6;
  while (v9)
  {
    v43 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v47[0] = *v18;
    v47[1] = v19;
    v47[2] = v20;

    v21 = v20;
    a2(&v44, v47);

    v22 = v44;
    v23 = v45;
    v24 = v46;
    v25 = *v48;
    v27 = sub_10023A350(v44, v45);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((v43 & 1) == 0)
      {
        sub_100232214(&qword_1003741F0, &unk_10029F5A0);
      }
    }

    else
    {
      sub_1002313FC(v30, v43 & 1, &qword_1003741F0, &unk_10029F5A0);
      v32 = sub_10023A350(v22, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v27 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v48;
    if (v31)
    {
      v12 = *(v34[7] + 8 * v27);

      v13 = v34[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v22;
      v35[1] = v23;
      *(v34[7] + 8 * v27) = v24;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v15;
    v6 = v40;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_1000184B8(a1);
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v43 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100234470(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1002344B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100234578;

  return sub_10022EC28(v2, v3, v5, v4);
}

uint64_t sub_100234578()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10023466C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100234B74;

  return sub_10022DD8C(v2, v3, v4);
}

uint64_t sub_100234720()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100234B78;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_1002347E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100234B7C;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_1002348AC()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100234B80;

  return sub_10022D610(v2, v6, v5, v3, v4);
}

uint64_t sub_100234974()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100234B84;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_100234A34()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100234A74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100234B88;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_100234B90(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {

    v8 = a2;
    v9 = v5;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {

    v12 = a2;
    v11 = 0xF000000000000000;
  }

  v13 = a4;
  v7(a2, v5, v11, a4);

  sub_1001AE1E4(v5, v11);
}

uint64_t sub_100234C58(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100234C9C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001AD17C(&unk_100374250, &qword_10029D9A0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_10023B388(*(a1 + 48) + 40 * v11, v27);
    sub_1000087A8(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_10023B388(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1000087A8(v25 + 8, v20);
    sub_10023B3E4(v24, &unk_100374320, &unk_10029F700);
    v21 = v18;
    sub_1000122C0(v20, v22);
    v12 = v21;
    sub_1000122C0(v22, v23);
    sub_1000122C0(v23, &v21);
    v13 = sub_10023A350(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      sub_1001AD48C(v9);
      sub_1000122C0(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_1000122C0(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_10023B3E4(v24, &unk_100374320, &unk_10029F700);
}

void sub_100234F78()
{
  v0 = NSHomeDirectory();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  v4._object = 0x80000001002AD290;
  v4._countAndFlagsBits = 0xD000000000000038;
  String.append(_:)(v4);

  qword_100374280 = v1;
  *algn_100374288 = v3;
}

id sub_100235008()
{
  if (qword_100371BF0 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(type metadata accessor for DeviceListStoreMigrator());

  v1 = [v0 init];
  v2 = objc_allocWithZone(AKSQLiteExecutor);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithDatabasePath:v3 migrationController:v1];

  v5 = type metadata accessor for DeviceListStoreManager();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___AKDeviceListStoreManager_executor] = v4;
  type metadata accessor for DeviceListProvider();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *&v6[OBJC_IVAR___AKDeviceListStoreManager_deviceListProvider] = v7;
  type metadata accessor for DeletedDeviceListProvider();
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *&v6[OBJC_IVAR___AKDeviceListStoreManager_deletedDeviceListProvider] = v8;
  v11.receiver = v6;
  v11.super_class = v5;
  v9 = v4;
  result = objc_msgSendSuper2(&v11, "init");
  qword_1003776D0 = result;
  return result;
}

uint64_t sub_1002351D4()
{
  *(v1 + 24) = v0;

  return _swift_task_switch(sub_100235264, 0, 0);
}

uint64_t sub_100235264()
{
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_100377668);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DeviceListStoreManager - Begin clearing database", v4, 2u);
  }

  v5 = v0[3];

  v6 = *(v5 + OBJC_IVAR___AKDeviceListStoreManager_executor);
  v0[2] = 0;
  [v6 wipeDatabase:v0 + 2];
  v7 = v0[2];
  if (v7)
  {
    v8 = v7;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v7;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "Clearing database failed with error %@", v11, 0xCu);
      sub_10023B3E4(v12, &unk_1003726A0, &unk_10029CFA0);
    }

    swift_willThrow();
    v14 = v0[1];
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "DeviceListStoreManager - Cleared database successfully", v17, 2u);
    }

    v14 = v0[1];
  }

  return v14();
}

uint64_t sub_1002356C4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10023576C;

  return sub_1002351D4();
}

uint64_t sub_10023576C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1002358F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return _swift_task_switch(sub_100235918, 0, 0);
}

void sub_100235918()
{
  v29 = v0;
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  *(v0 + 80) = sub_1001AD2E4(v2, qword_100377668);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    v10 = [v7 altDSID];

    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_10024B050(v11, v13, &v28);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "DeviceListStoreManager - Fetching device list for altDSID %s", v8, 0xCu);
    sub_1001AD48C(v9);
  }

  else
  {
  }

  v15 = *(v0 + 48);
  v16 = [*(v0 + 40) altDSID];
  LODWORD(v15) = [v15 isHSA2EnabledForAltDSID:v16];

  if (!v15 || ([*(v0 + 40) includeFamilyDevices] & 1) != 0 || (objc_msgSend(*(v0 + 40), "isForceFetch") & 1) != 0)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Not eligible for device cache. Fetching from server instead.", v19, 2u);
    }

    v20 = swift_task_alloc();
    *(v0 + 104) = v20;
    *v20 = v0;
    v20[1] = sub_100235DBC;
    v21 = *(v0 + 64);
    v22 = *(v0 + 48);
    v23 = *(v0 + 56);
    v24 = *(v0 + 40);

    sub_100236230(v24, v22, v23, v21);
  }

  else
  {
    v25 = swift_task_alloc();
    *(v0 + 88) = v25;
    *v25 = v0;
    v25[1] = sub_100235C80;
    v26 = *(v0 + 64);
    v27 = *(v0 + 40);

    sub_100237E94(v27, v26);
  }
}

uint64_t sub_100235C80(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 96) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100235EBC, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_100235DBC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100235EBC()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "DeviceListStoreManager - Failed to fetch devices from cache with error %@. Trying server now.", v3, 0xCu);
    sub_10023B3E4(v4, &unk_1003726A0, &unk_10029CFA0);
  }

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_100236048;
  v7 = v0[8];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];

  return sub_100236230(v10, v8, v9, v7);
}

uint64_t sub_100236048(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[15] = v1;

  if (v1)
  {
    v4 = sub_1002361CC;
  }

  else
  {
    v4 = sub_100236164;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100236164()
{

  v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002361CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100236230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return _swift_task_switch(sub_100236258, 0, 0);
}

uint64_t sub_100236258()
{
  if ([*(v0 + 40) type] == 2)
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1001AD2E4(v1, qword_100377668);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Fetch device list context is cache only. Skipping fetch from server.", v4, 2u);
    }

    type metadata accessor for DeviceListError(0);
    *(v0 + 32) = -14008;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001BE2F4();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    *(v0 + 80) = sub_1001AD2E4(v7, qword_100377668);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "DeviceListStoreManager - Begin fetching device list from server", v10, 2u);
    }

    v11 = *(v0 + 56);
    v12 = *(v0 + 40);

    v13 = swift_task_alloc();
    *(v0 + 88) = v13;
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    v14 = swift_task_alloc();
    *(v0 + 96) = v14;
    v15 = sub_10023B268(0, &qword_1003742F0, AKDeviceListResponse_ptr);
    *v14 = v0;
    v14[1] = sub_100236574;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000002BLL, 0x80000001002AD240, sub_10023B2B0, v13, v15);
  }
}

uint64_t sub_100236574()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100236918;
  }

  else
  {

    v2 = sub_100236690;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100236690(uint64_t a1)
{
  v2 = v1[2];
  v1[14] = v2;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "DeviceListStoreManager - Finished fetching device list from server", v5, 2u);
  }

  v7 = v1[5];
  v6 = v1[6];

  v8 = [v7 altDSID];
  LODWORD(v6) = [v6 isHSA2EnabledForAltDSID:v8];

  if (v6 && ([v1[5] includeFamilyDevices] & 1) == 0)
  {
    v18 = swift_task_alloc();
    v1[15] = v18;
    *v18 = v1;
    v18[1] = sub_10023697C;
    v19 = v1[5];

    return sub_100238F8C(v19, v2);
  }

  else
  {
    v9 = v1[5];
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v1[5];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v12;
      *v14 = v12;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v10, v11, "DeviceListStoreManager - Cache is not supported for context - %@", v13, 0xCu);
      sub_10023B3E4(v14, &unk_1003726A0, &unk_10029CFA0);
    }

    v16 = v1[1];

    return v16(v2);
  }
}

uint64_t sub_100236918()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10023697C()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100236C80, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[17] = v3;
    *v3 = v2;
    v3[1] = sub_100236AF0;
    v4 = v2[8];
    v5 = v2[5];

    return sub_100237E94(v5, v4);
  }
}

uint64_t sub_100236AF0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_100236CE4;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_100236C18;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100236C18()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100236C80()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100236CE4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100236EF4(void *a1, void *a2, void *a3, void *a4, void *aBlock, void *a6)
{
  v6[5] = a4;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v6[7] = _Block_copy(aBlock);
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  a6;
  v16 = swift_task_alloc();
  v6[8] = v16;
  *v16 = v6;
  v16[1] = sub_100236FF8;

  return sub_1002358F0(v12, v13, v14, v15);
}

uint64_t sub_100236FF8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v11 = *v2;

  v12 = *(v5 + 56);
  if (v3)
  {
    v13 = _convertErrorToNSError(_:)();

    (v12)[2](v12, 0, v13);

    _Block_release(v12);
  }

  else
  {
    (v12)[2](*(v5 + 56), a1, 0);
    _Block_release(v12);
  }

  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_100237390(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_10023741C, 0, 0);
}

uint64_t sub_10023741C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1002374C0;
  v2 = *(v0 + 16);

  return sub_1001BCE30(v2);
}

uint64_t sub_1002374C0(char a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1002376F8;
  }

  else
  {
    *(v4 + 72) = a1 & 1;
    v5 = sub_1002375EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002375EC()
{
  if (*(v0 + 72) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v1[1] = sub_1002377A4;
    v2 = *(v0 + 16);

    return sub_1001BCE30(v2);
  }

  else
  {
    v4 = *(v0 + 16);

    (*(*(v0 + 32) + 16))();
    _Block_release(*(v0 + 32));
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1002376F8()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, 0, v3);

  _Block_release(*(v0 + 32));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002377A4()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10023791C, 0, 0);
  }

  else
  {
    v4 = *(v2 + 24);

    (*(*(v2 + 32) + 16))();
    _Block_release(*(v2 + 32));
    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_10023791C()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, 0, v3);

  _Block_release(*(v0 + 32));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100237B50(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return _swift_task_switch(sub_100237BDC, 0, 0);
}

uint64_t sub_100237BDC()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100237C80;
  v2 = *(v0 + 16);

  return sub_1001D4E3C(v2);
}

uint64_t sub_100237C80()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100237DEC, 0, 0);
  }

  else
  {
    v4 = *(v2 + 24);
    v3 = *(v2 + 32);

    (*(v3 + 16))(v3, 0);
    _Block_release(*(v2 + 32));
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_100237DEC()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v3);

  _Block_release(*(v0 + 32));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100237E94(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_100237EB8, 0, 0);
}

uint64_t sub_100237EB8()
{
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_100377668);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DeviceListStoreManager - Begin fetching device list from cache", v4, 2u);
  }

  v5 = v0[1].i64[1];
  v10 = v0[2];

  v6 = swift_task_alloc();
  v0[3].i64[0] = v6;
  v6[1] = vextq_s8(v10, v10, 8uLL);
  v6[2].i64[0] = v5;
  v7 = swift_task_alloc();
  v0[3].i64[1] = v7;
  v8 = sub_10023B268(0, &qword_1003742F0, AKDeviceListResponse_ptr);
  *v7 = v0;
  v7[1] = sub_10023808C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(&v0[1], 0, 0, 0xD00000000000002ELL, 0x80000001002AD210, sub_10023B1B4, v6, v8);
}

uint64_t sub_10023808C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1002381C4;
  }

  else
  {

    v2 = sub_1002381A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002381C4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100238228(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1001AD17C(&unk_1003742F8, &unk_10029F6D8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v20 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(v11, a1, v7);
  v13 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  (*(v8 + 32))(v15 + v13, v11, v7);
  *(v15 + v14) = a3;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  aBlock[4] = sub_10023B1C0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100234C58;
  aBlock[3] = &unk_100329688;
  v16 = _Block_copy(aBlock);
  v17 = a3;
  v18 = a4;

  [v20 performBlockAndWait:v16];
  _Block_release(v16);
}

uint64_t sub_100238448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_1002384F4;

  return sub_100237E94(a2, a3);
}

uint64_t sub_1002384F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v4 + 64) = v8;
    *v8 = v5;
    v8[1] = sub_100238678;
    v9 = *(v4 + 16);

    return sub_10023A9B0(v9, a1);
  }
}

uint64_t sub_100238678()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002387EC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[10] = v3;
    *v3 = v2;
    v3[1] = sub_1002388B8;
    v4 = v2[7];
    v5 = v2[2];

    return sub_10023AB64(v5, v4);
  }
}

uint64_t sub_1002387EC()
{
  sub_10023AD18(50, 0x2AD190, *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 72));

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1002388B8;
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);

  return sub_10023AB64(v3, v2);
}

uint64_t sub_1002388B8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100238A3C;
  }

  else
  {
    v2 = sub_1002389CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002389CC()
{
  v1 = *(v0 + 72) == 0;
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100238A3C()
{
  v1 = *(v0 + 56);
  sub_10023AD18(50, 0x2AD1D0, *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 88));

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_100238C84(void *a1, void *a2, void *a3, void *a4, void *aBlock, void *a6)
{
  v6[5] = a4;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v6[7] = _Block_copy(aBlock);
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  a6;
  v16 = swift_task_alloc();
  v6[8] = v16;
  *v16 = v6;
  v16[1] = sub_100238D88;

  return sub_100238448(v12, v13, v14, v15);
}

uint64_t sub_100238D88(char a1)
{
  v3 = v1;
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v11 = *v2;

  v12 = *(v4 + 56);
  if (v3)
  {
    v13 = _convertErrorToNSError(_:)();

    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    (*(v12 + 16))(*(v4 + 56), a1 & 1, 0);
  }

  _Block_release(*(v5 + 56));
  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_100238F8C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return _swift_task_switch(sub_100238FB0, 0, 0);
}

id sub_100238FB0()
{
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_100377668);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Updating device list cache. Saving server response.", v4, 2u);
  }

  v5 = v0[9];

  sub_1001AD17C(&qword_1003742D0, &qword_10029F6B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10029BEB0;
  result = [v5 altDSID];
  if (result)
  {
    v8 = result;
    v9 = v0[10];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    *(inited + 32) = v10;
    *(inited + 40) = v12;
    *(inited + 48) = v9;
    v13 = v9;
    v14 = sub_10023A8B4(inited, &unk_1003742E0, &qword_10029F6C0);
    v0[12] = v14;
    swift_setDeallocating();
    sub_10023B3E4(inited + 32, &qword_1003742D8, &qword_10029F6B8);
    v15 = swift_task_alloc();
    v0[13] = v15;
    *v15 = v0;
    v15[1] = sub_1002391D0;
    v16 = v0[9];

    return sub_1001F84F4(v16, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002391D0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10023931C, 0, 0);
  }
}

uint64_t sub_10023931C()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1002393D4;
  v2 = *(v0 + 96);

  return sub_1001D5B24(v2);
}

uint64_t sub_1002393D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100239674(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10023974C;

  return sub_100238F8C(v8, v9);
}

uint64_t sub_10023974C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 40);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v11 = *(v8 + 8);

  return v11();
}

id sub_100239938()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceListStoreManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002399EC(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1001AD17C(&unk_1003742F8, &unk_10029F6D8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_10023B2B8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100234B90;
  aBlock[3] = &unk_1003296D8;
  v13 = _Block_copy(aBlock);
  v14 = a3;

  [a2 executeRequestWithCompletion:v13];
  _Block_release(v13);
}

void sub_100239BB8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (a4)
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1001AD2E4(v7, qword_100377668);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed with server error %@", v10, 0xCu);
      sub_10023B3E4(v11, &unk_1003726A0, &unk_10029CFA0);
    }

    v56 = a4;
    swift_errorRetain();
    sub_1001AD17C(&unk_1003742F8, &unk_10029F6D8);
LABEL_13:
    CheckedContinuation.resume(throwing:)();
    return;
  }

  if (a3 >> 60 == 15)
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1001AD2E4(v13, qword_100377668);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Missing server response data", v16, 2u);
    }

    type metadata accessor for DeviceListError(0);
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001BE2F4();
    _BridgedStoredNSError.init(_:userInfo:)();
    sub_1001AD17C(&unk_1003742F8, &unk_10029F6D8);
    goto LABEL_13;
  }

  v20 = objc_opt_self();
  sub_1001F9DCC(a2, a3);
  v21 = a2;
  v22 = a3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v24 = [v20 dictionaryFromObject:isa ofType:@"application/json"];

  if (!v24 || (v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v24, sub_100234C9C(v25), v27 = v26, , !v27))
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1001AD2E4(v42, qword_100377668);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_32;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Missing response parameters", v45, 2u);
    goto LABEL_30;
  }

  v28 = objc_opt_self();
  v29 = Dictionary._bridgeToObjectiveC()().super.isa;
  v30 = [v28 deviceMapFromResponseBody:v29];

  sub_10023B268(0, &qword_1003742F0, AKDeviceListResponse_ptr);
  v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = [a6 altDSID];
  if (v32)
  {
    v33 = v32;

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    if (*(v31 + 16))
    {
      v37 = sub_10023A350(v34, v36);
      v39 = v38;

      if (v39)
      {
        v40 = *(*(v31 + 56) + 8 * v37);

        v56 = v40;
        v41 = v40;
        sub_1001AD17C(&unk_1003742F8, &unk_10029F6D8);
        CheckedContinuation.resume(returning:)();
        sub_1001AE1E4(v21, v22);

        return;
      }
    }

    else
    {
    }

    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1001AD2E4(v46, qword_100377668);
    v47 = a6;
    v43 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v43, v48))
    {

      goto LABEL_32;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v56 = v50;
    *v49 = 136315138;
    v51 = [v47 altDSID];

    if (v51)
    {
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = sub_10024B050(v52, v54, &v56);

      *(v49 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v43, v48, "Missing deviceListResponse for altDSID %s", v49, 0xCu);
      sub_1001AD48C(v50);

LABEL_30:

LABEL_32:

      type metadata accessor for DeviceListError(0);
      sub_1001E4150(_swiftEmptyArrayStorage);
      sub_1001BE2F4();
      _BridgedStoredNSError.init(_:userInfo:)();
      sub_1001AD17C(&unk_1003742F8, &unk_10029F6D8);
      CheckedContinuation.resume(throwing:)();
      sub_1001AE1E4(v21, v22);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_10023A30C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10023A3C8(a1, v4, v5);
}

unint64_t sub_10023A350(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10023A490(a1, a2, v4);
}

unint64_t sub_10023A3C8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      sub_10023B388(*(v3 + 48) + 40 * v5, v9);
      v7 = static AnyHashable.== infix(_:_:)();
      sub_1001AD3EC(v9);
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10023A490(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10023A55C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001AD17C(&unk_100372C30, &unk_10029D990);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_10023A350(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10023A660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001AD17C(&unk_100372C20, &qword_10029D980);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100014260(v4, v13, &qword_100373320, qword_10029E210);
      result = sub_10023A30C(v13);
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
      result = sub_1000122C0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10023A79C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001AD17C(&unk_100374240, &unk_10029F630);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10023A350(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10023A8B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1001AD17C(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_10023A350(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_10023A9B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_10023A9D0, 0, 0);
}

uint64_t sub_10023A9D0()
{
  v1 = [*(v0 + 32) trustedDevicesClientHash];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = [*(v0 + 40) trustedDevicesClientHash];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (!v5)
    {

      goto LABEL_14;
    }

    if (v3 != v8 || v5 != v10)
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_17;
      }

LABEL_14:
      type metadata accessor for DeviceListError(0);
      *(v0 + 24) = -14009;
      sub_1001E4150(_swiftEmptyArrayStorage);
      sub_1001BE2F4();
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      v13 = *(v0 + 8);
      goto LABEL_18;
    }
  }

LABEL_17:
  v13 = *(v0 + 8);
LABEL_18:

  return v13();
}

uint64_t sub_10023AB64(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_10023AB84, 0, 0);
}

uint64_t sub_10023AB84()
{
  v1 = [*(v0 + 32) deletedDevicesClientHash];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = [*(v0 + 40) deletedDevicesClientHash];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (!v5)
    {

      goto LABEL_14;
    }

    if (v3 != v8 || v5 != v10)
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_17;
      }

LABEL_14:
      type metadata accessor for DeviceListError(0);
      *(v0 + 24) = -14010;
      sub_1001E4150(_swiftEmptyArrayStorage);
      sub_1001BE2F4();
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      v13 = *(v0 + 8);
      goto LABEL_18;
    }
  }

LABEL_17:
  v13 = *(v0 + 8);
LABEL_18:

  return v13();
}

void sub_10023AD18(int a1, int a2, id a3, void *a4, void *a5, uint64_t a6)
{
  v9 = [a3 altDSID];
  if (!v9)
  {
    __break(1u);
    goto LABEL_22;
  }

  v10 = v9;
  v11 = [a4 authKitAccountWithAltDSID:v9];

  if (!v11)
  {
    if (qword_100371BC8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1001AD2E4(v17, qword_100377668);
    v18 = a3;
    v38 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v38, v19))
    {

      goto LABEL_18;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v39[0] = v21;
    *v20 = 136315138;
    v22 = [v18 altDSID];

    if (v22)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = sub_10024B050(v23, v25, v39);

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v38, v19, "DeviceListStoreManager - Unable to report MID hash mismatch event. No idms account found for altDSID - %s.", v20, 0xCu);
      sub_1001AD48C(v21);

LABEL_15:

      return;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v12 = objc_opt_self();
  v13 = String._bridgeToObjectiveC()();
  v38 = v11;
  v14 = _convertErrorToNSError(_:)();
  v15 = [v12 ak_analyticsEventWithEventName:v13 account:v38 error:v14];

  if (v15)
  {
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    [a4 securityLevelForAccount:v38];
    type metadata accessor for AKAppleIDSecurityLevel(0);
    _print_unlocked<A, B>(_:_:)();
    v16 = String._bridgeToObjectiveC()();

    [v15 setObject:v16 forKeyedSubscript:@"securityLevel"];

    [a5 sendEvent:v15];
    return;
  }

  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_1001AD2E4(v27, qword_100377668);
  v28 = a3;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v39[0] = v32;
    *v31 = 136315138;
    v33 = [v28 altDSID];

    if (v33)
    {
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = sub_10024B050(v34, v36, v39);

      *(v31 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "DeviceListStoreManager - Unable to create MID hash mismatch event for altDSID - %s.", v31, 0xCu);
      sub_1001AD48C(v32);

      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_18:
}

void sub_10023B1C0()
{
  v1 = *(sub_1001AD17C(&unk_1003742F8, &unk_10029F6D8) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100014FF8(v4, v0 + v2, v5, v6);
}

uint64_t sub_10023B268(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_10023B2B8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v9 = *(sub_1001AD17C(&unk_1003742F8, &unk_10029F6D8) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100239BB8(a1, a2, a3, a4, v4 + v10, v11);
}

uint64_t sub_10023B3E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1001AD17C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10023B444()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10023C278;

  return sub_100239674(v2, v3, v5, v4);
}

uint64_t sub_10023B504()
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
  v8[1] = sub_10023C260;

  return sub_100238C84(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_10023B5D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10023C264;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_10023B698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10023C268;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_10023B764()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10023C26C;

  return sub_100237B50(v2, v3, v4);
}

uint64_t sub_10023B818()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10023C270;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_10023B8D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10023C274;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_10023B9A4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10023B9EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10023C284;

  return sub_100237390(v2, v3, v4);
}

uint64_t sub_10023BAA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10023C27C;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_10023BB60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10023C280;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_10023BC2C()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10023BC8C()
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
  v8[1] = sub_10023BD60;

  return sub_100236EF4(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_10023BD60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10023BE54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10023C288;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_10023BF14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10023C28C;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_10023BFE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10023C290;

  return sub_1002356C4(v2, v3);
}

uint64_t sub_10023C08C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10023C294;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_10023C14C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10023C18C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10023C298;

  return sub_1000099A4(a1, v4, v5, v6);
}

id SignInWithAppleDaemonService.exportedObject.getter@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for SignInWithAppleDaemonService();
  *a1 = v3;

  return v3;
}

void *sub_10023C350(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_100233A4C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1001AD17C(&qword_1003743F8, &qword_10029FA50);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100233A4C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1000122C0(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

Swift::Bool __swiftcall SignInWithAppleDaemonService.shouldAcceptNewConnection(_:)(NSXPCConnection a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SignInWithAppleDaemonService();
  v3 = objc_msgSendSuper2(&v8, "shouldAcceptNewConnection:", a1.super.isa);
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(AKClient) initWithConnection:a1.super.isa];
    v6 = *&v1[OBJC_IVAR___AKSignInWithAppleDaemonService_client];
    *&v1[OBJC_IVAR___AKSignInWithAppleDaemonService_client] = v5;

    LOBYTE(v3) = v4;
  }

  return v3;
}

id SignInWithAppleDaemonService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SignInWithAppleDaemonService.init()()
{
  *&v0[OBJC_IVAR___AKSignInWithAppleDaemonService_client] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInWithAppleDaemonService();
  return objc_msgSendSuper2(&v2, "init");
}

id SignInWithAppleDaemonService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInWithAppleDaemonService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t SignInWithAppleDaemonService.fetchAccounts(with:)(uint64_t a1)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  return _swift_task_switch(sub_10023C720, 0, 0);
}

uint64_t sub_10023C720()
{
  v1 = v0;
  v2 = *(v0[33] + OBJC_IVAR___AKSignInWithAppleDaemonService_client);
  v0[34] = v2;
  if (v2)
  {
    v3 = qword_100371BD8;
    v48 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1001AD2E4(v4, qword_100377698);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Fetching SIWA accounts", v7, 2u);
    }

    v8 = objc_opt_self();
    v9 = [v8 sharedInstance];
    v10 = [objc_allocWithZone(AKCDPFactory) init];
    v41 = type metadata accessor for AccountSharingPreFlightChecker();
    v11 = swift_allocObject();
    v1[35] = v11;
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = [objc_allocWithZone(AAFKeychainManager) init];
    v13 = objc_opt_self();
    v14 = [v13 sharedInstance];
    v15 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
    v16 = sub_100244CAC(v12, v14, v15);
    v1[36] = v16;
    v17 = [v13 sharedInstance];
    v18 = [objc_allocWithZone(AAFKeychainManager) init];
    v42 = type metadata accessor for SharedGroupsMembershipController();
    v19 = swift_allocObject();
    v1[37] = v19;
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    v20 = objc_opt_self();
    v49 = v48;
    v47 = [v20 sharedManager];
    v46 = [v8 sharedInstance];
    v45 = [objc_allocWithZone(AKAuthorizationStoreManager) init];
    v21 = objc_allocWithZone(AKApplicationInformationController);
    v44 = v16;

    v43 = [v21 init];
    v1[20] = v11;
    v1[23] = v41;
    v1[24] = &off_100328630;
    v1[28] = v42;
    v1[29] = &off_100328758;
    v1[25] = v19;
    type metadata accessor for AccountsListingController();
    inited = swift_initStackObject();
    v1[38] = inited;
    v23 = v1[23];
    v24 = sub_1001E947C((v1 + 20), v23);
    v25 = *(v23 - 8);
    v26 = swift_task_alloc();
    (*(v25 + 16))(v26, v24, v23);
    v27 = v1[28];
    v28 = sub_1001E947C((v1 + 25), v27);
    v29 = *(v27 - 8);
    v30 = swift_task_alloc();
    (*(v29 + 16))(v30, v28, v27);
    v31 = *v26;
    v32 = *v30;
    inited[10] = v41;
    inited[11] = &off_100328630;
    inited[16] = v42;
    inited[17] = &off_100328758;
    inited[2] = v47;
    inited[3] = v49;
    inited[4] = v46;
    inited[5] = v45;
    inited[7] = v31;
    inited[6] = v44;
    inited[12] = v43;
    inited[13] = v32;

    sub_1001BB7D0(v1 + 25);

    sub_1001BB7D0(v1 + 20);

    v33 = swift_task_alloc();
    v1[39] = v33;
    *v33 = v1;
    v33[1] = sub_10023CD70;
    v34 = v1[32];

    return sub_1002016A0(v34);
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1001AD2E4(v36, qword_100377698);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Client is not set. Invalid connection", v39, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v1[31] = -16003;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v40 = v1[1];

    return v40();
  }
}

uint64_t sub_10023CD70(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 320) = v1;

  if (v1)
  {
    v5 = sub_10023CF44;
  }

  else
  {
    *(v4 + 328) = a1;
    v5 = sub_10023CE98;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10023CE98()
{
  v1 = v0[36];
  v2 = v0[34];
  swift_setDeallocating();
  sub_1002042A8();
  swift_deallocClassInstance();

  v3 = v0[1];
  v4 = v0[41];

  return v3(v4);
}

uint64_t sub_10023CF44()
{
  v1 = v0[36];
  v2 = v0[34];
  swift_setDeallocating();
  sub_1002042A8();
  swift_deallocClassInstance();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10023D174(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10023D238;

  return SignInWithAppleDaemonService.fetchAccounts(with:)(v6);
}

uint64_t sub_10023D238(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_100248004(0, &qword_1003743E0, AKSignInWithAppleAccount_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t SignInWithAppleDaemonService.fetchEULA(forClientID:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10023D4A8;

  return sub_1002450DC(a1, a2);
}

uint64_t sub_10023D4A8(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_10023D740(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_10023D828;

  return sub_1002450DC(v5, v7);
}

uint64_t sub_10023D828(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *v3;
  v7 = *(*v3 + 16);
  v8 = *v3;

  if (v4)
  {
    a2 = _convertErrorToNSError(_:)();

    v9 = a2;
LABEL_3:
    v10 = 0;
    goto LABEL_6;
  }

  if (!a2)
  {
    v9 = 0;
    goto LABEL_3;
  }

  v11 = String._bridgeToObjectiveC()();

  v10 = v11;
  v9 = 0;
  a2 = v11;
LABEL_6:
  v12 = *(v6 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v8 + 8);

  return v13();
}

uint64_t SignInWithAppleDaemonService.revokeAcccount(with:)(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return _swift_task_switch(sub_10023DA00, 0, 0);
}

uint64_t sub_10023DA00()
{
  v1 = *(v0[21] + OBJC_IVAR___AKSignInWithAppleDaemonService_client);
  v0[22] = v1;
  if (v1)
  {
    v2 = qword_100371BD8;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1001AD2E4(v4, qword_100377698);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Revoking SIWA account", v7, 2u);
    }

    v8 = v0[20];

    v9 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
    v0[23] = v9;
    v10 = [v8 altDSID];
    if (!v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String._bridgeToObjectiveC()();
    }

    [v9 setAltDSID:v10];

    v11 = [objc_allocWithZone(type metadata accessor for AccountRevokingRequestProvider()) initWithContext:v9 urlBagKey:AKURLBagKeyDeleteAuthorizedApp];
    v0[24] = v11;
    [v11 setAuthenticatedRequest:1];
    [v11 setClient:v3];
    v12 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v11];
    v0[25] = v12;
    v13 = type metadata accessor for AccountRevokingService();
    v14 = swift_allocObject();
    v0[26] = v14;
    *(v14 + 16) = v12;
    v15 = objc_allocWithZone(AAFKeychainManager);
    v16 = v12;
    v17 = [v15 init];
    v18 = [objc_opt_self() sharedInstance];
    v19 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
    v20 = sub_100244CAC(v17, v18, v19);
    v0[27] = v20;
    v21 = objc_opt_self();
    v39 = v3;
    v38 = [v21 sharedManager];
    v37 = [objc_allocWithZone(AKAuthorizationStoreManager) init];
    v0[16] = v13;
    v0[17] = &off_1003268D8;
    v0[13] = v14;
    type metadata accessor for AccountRevokingController();
    inited = swift_initStackObject();
    v0[28] = inited;
    v23 = v0[16];
    v24 = sub_1001E947C((v0 + 13), v23);
    v25 = *(v23 - 8);
    v26 = swift_task_alloc();
    (*(v25 + 16))(v26, v24, v23);
    v27 = *v26;
    inited[9] = v13;
    inited[10] = &off_1003268D8;
    inited[5] = v20;
    inited[6] = v27;
    inited[2] = v38;
    inited[3] = v39;
    inited[4] = v37;
    v28 = v20;

    sub_1001BB7D0(v0 + 13);

    v29 = swift_task_alloc();
    v0[29] = v29;
    *v29 = v0;
    v29[1] = sub_10023DF8C;
    v30 = v0[20];

    return sub_1001C76A4(v30);
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1001AD2E4(v32, qword_100377698);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Client is not set. Invalid connection", v35, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[19] = -16003;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_10023DF8C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_10023E170;
  }

  else
  {
    v2 = sub_10023E0A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10023E0A0()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  swift_setDeallocating();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1001BB7D0((v1 + 48));

  v7 = v0[1];

  return v7();
}

uint64_t sub_10023E170()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  swift_setDeallocating();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1001BB7D0((v1 + 48));

  v7 = v0[1];

  return v7();
}

uint64_t sub_10023E3C8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100248050;

  return SignInWithAppleDaemonService.revokeAcccount(with:)(v6);
}

uint64_t SignInWithAppleDaemonService.fetchAppIcon(forClientID:iconSize:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10023E55C;

  return sub_1002454E0(a1, a2, a3, a4);
}

uint64_t sub_10023E55C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_10023E7F8(uint64_t a1, void *aBlock, void *a3, double a4, double a5)
{
  v5[2] = a3;
  v5[3] = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v5[4] = v10;
  v12 = a3;
  v13 = swift_task_alloc();
  v5[5] = v13;
  *v13 = v5;
  v13[1] = sub_10023E8FC;

  return sub_1002454E0(v9, v11, a4, a5);
}

uint64_t sub_10023E8FC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t SignInWithAppleDaemonService.cancelAppIconRequest(forClientID:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10023EB6C;

  return sub_100245830(a1, a2);
}

uint64_t sub_10023EB6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10023EDE8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_10023EED0;

  return sub_100245830(v5, v7);
}

uint64_t sub_10023EED0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 1, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t SignInWithAppleDaemonService.shareAccount(context:with:)(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  return _swift_task_switch(sub_10023F09C, 0, 0);
}

uint64_t sub_10023F09C()
{
  v1 = *(*(v0 + 256) + OBJC_IVAR___AKSignInWithAppleDaemonService_client);
  *(v0 + 264) = v1;
  if (v1)
  {
    v2 = qword_100371BD8;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1001AD2E4(v4, qword_100377698);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Sharing SIWA account", v7, 2u);
    }

    v8 = *(v0 + 240);

    v9 = [objc_opt_self() sharedInstance];
    v10 = [objc_allocWithZone(AKCDPFactory) init];
    v11 = type metadata accessor for AccountSharingPreFlightChecker();
    v12 = swift_allocObject();
    *(v0 + 272) = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
    *(v0 + 280) = v13;
    v14 = [v8 altDSID];
    if (!v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = String._bridgeToObjectiveC()();
    }

    v15 = *(v0 + 240);
    [v13 setAltDSID:v14];

    v16 = [v15 _isMoveAccountRequest];
    *(v0 + 368) = v16;
    v17 = AKURLBagKeySIWAUpdateShareToken;
    v18 = AKURLBagKeySIWAGenerateShareToken;
    *(v0 + 288) = AKURLBagKeySIWAUpdateShareToken;
    *(v0 + 296) = v18;
    if (v16)
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }

    v20 = [objc_allocWithZone(type metadata accessor for AccountSharingRequestProvider()) initWithContext:v13 urlBagKey:v19];
    *(v0 + 304) = v20;
    [v20 setAuthenticatedRequest:1];
    [v20 setClient:v3];
    v21 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v20];
    *(v0 + 312) = v21;
    v53 = type metadata accessor for AccountSharingService();
    v22 = swift_allocObject();
    *(v0 + 320) = v22;
    *(v22 + 16) = v21;
    v23 = v22;
    v24 = objc_allocWithZone(AAFKeychainManager);
    v25 = v21;
    v26 = [v24 init];
    v27 = [objc_opt_self() sharedInstance];
    v28 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
    v57 = sub_100244CAC(v26, v27, v28);
    *(v0 + 328) = v57;
    v29 = objc_opt_self();
    v56 = v3;
    v55 = [v29 sharedManager];
    v30 = objc_allocWithZone(AKAuthorizationStoreManager);

    v54 = [v30 init];
    *(v0 + 144) = v12;
    *(v0 + 168) = v11;
    *(v0 + 176) = &off_100328630;
    *(v0 + 208) = v53;
    *(v0 + 216) = &off_1003270E8;
    *(v0 + 184) = v23;
    type metadata accessor for AccountSharingController();
    inited = swift_initStackObject();
    *(v0 + 336) = inited;
    v32 = *(v0 + 168);
    v33 = v11;
    v34 = sub_1001E947C(v0 + 144, v32);
    v35 = *(v32 - 8);
    v36 = swift_task_alloc();
    (*(v35 + 16))(v36, v34, v32);
    v37 = *(v0 + 208);
    v38 = sub_1001E947C(v0 + 184, v37);
    v39 = *(v37 - 8);
    v40 = swift_task_alloc();
    (*(v39 + 16))(v40, v38, v37);
    v41 = *v36;
    v42 = *v40;
    inited[7] = v33;
    inited[8] = &off_100328630;
    inited[4] = v41;
    inited[14] = v53;
    inited[15] = &off_1003270E8;
    inited[2] = v56;
    inited[3] = v55;
    inited[9] = v54;
    inited[10] = v57;
    inited[11] = v42;
    v43 = v57;

    sub_1001BB7D0((v0 + 184));

    sub_1001BB7D0((v0 + 144));

    v44 = swift_task_alloc();
    *(v0 + 344) = v44;
    *v44 = v0;
    v44[1] = sub_10023F7A4;
    v46 = *(v0 + 240);
    v45 = *(v0 + 248);

    return sub_10020907C(v46, v45);
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1001AD2E4(v48, qword_100377698);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Client is not set. Invalid connection", v51, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 232) = -16003;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v52 = *(v0 + 8);

    return v52();
  }
}

uint64_t sub_10023F7A4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v5 = sub_10023F9D8;
  }

  else
  {
    *(v4 + 360) = a1;
    v5 = sub_10023F8CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10023F8CC()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = *(v0 + 304);
  v5 = (v0 + 296);
  v6 = *(v0 + 280);
  v7 = *(v0 + 264);
  if (*(v0 + 368))
  {
    v5 = (v0 + 288);
  }

  v8 = *v5;
  swift_setDeallocating();

  sub_1001BB7D0((v1 + 32));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1001BB7D0((v1 + 88));

  v9 = *(v0 + 8);
  v10 = *(v0 + 360);

  return v9(v10);
}

uint64_t sub_10023F9D8()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = *(v0 + 304);
  v5 = (v0 + 296);
  v6 = *(v0 + 280);
  v7 = *(v0 + 264);
  if (*(v0 + 368))
  {
    v5 = (v0 + 288);
  }

  v8 = *v5;
  swift_setDeallocating();

  sub_1001BB7D0((v1 + 32));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1001BB7D0((v1 + 88));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10023FC70(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10023FD48;

  return SignInWithAppleDaemonService.shareAccount(context:with:)(v8, v9);
}

uint64_t sub_10023FD48(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 40);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 40), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t SignInWithAppleDaemonService.unshareAccount(context:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(sub_10023FF40, 0, 0);
}

uint64_t sub_10023FF40()
{
  v1 = *(v0[20] + OBJC_IVAR___AKSignInWithAppleDaemonService_client);
  v0[21] = v1;
  if (v1)
  {
    v2 = v0[19];
    v3 = objc_allocWithZone(AAFKeychainManager);
    v4 = v1;
    v5 = [v3 init];
    v6 = [objc_opt_self() sharedInstance];
    v7 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
    v33 = sub_100244CAC(v5, v6, v7);
    v0[22] = v33;
    v8 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
    v0[23] = v8;
    v9 = [v2 altDSID];
    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    [v8 setAltDSID:v9];

    v10 = [objc_allocWithZone(type metadata accessor for AccountSharingRequestProvider()) initWithContext:v8 urlBagKey:AKURLBagKeySIWARevokeShareToken];
    v0[24] = v10;
    [v10 setAuthenticatedRequest:1];
    [v10 setClient:v4];
    v11 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v10];
    v0[25] = v11;
    v12 = type metadata accessor for AccountUnsharingService();
    v13 = swift_allocObject();
    v0[26] = v13;
    *(v13 + 16) = v11;
    v14 = objc_opt_self();
    v32 = v4;
    v15 = v11;
    v16 = [v14 sharedManager];
    v0[15] = v12;
    v0[16] = &off_1003269B8;
    v0[12] = v13;
    type metadata accessor for AccountUnsharingController();
    inited = swift_initStackObject();
    v0[27] = inited;
    v18 = v0[15];
    v19 = sub_1001E947C((v0 + 12), v18);
    v20 = *(v18 - 8);
    v21 = swift_task_alloc();
    (*(v20 + 16))(v21, v19, v18);
    v22 = *v21;
    inited[8] = v12;
    inited[9] = &off_1003269B8;
    inited[2] = v32;
    inited[3] = v16;
    inited[4] = v33;
    inited[5] = v22;
    v23 = v33;

    sub_1001BB7D0(v0 + 12);

    v24 = swift_task_alloc();
    v0[28] = v24;
    *v24 = v0;
    v24[1] = sub_1002403FC;
    v25 = v0[19];

    return sub_1001B5714(v25);
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1001AD2E4(v27, qword_100377698);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Client is not set. Invalid connection", v30, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[18] = -16003;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_1002403FC()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100248104;
  }

  else
  {
    v2 = sub_10024810C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100240698(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10024804C;

  return SignInWithAppleDaemonService.unshareAccount(context:)(v6);
}

uint64_t SignInWithAppleDaemonService.leaveGroup(context:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(sub_10024077C, 0, 0);
}

uint64_t sub_10024077C()
{
  v1 = *(v0[20] + OBJC_IVAR___AKSignInWithAppleDaemonService_client);
  v0[21] = v1;
  if (v1)
  {
    v2 = v0[19];
    v3 = objc_allocWithZone(AAFKeychainManager);
    v4 = v1;
    v5 = [v3 init];
    v6 = [objc_opt_self() sharedInstance];
    v7 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
    v33 = sub_100244CAC(v5, v6, v7);
    v0[22] = v33;
    v8 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
    v0[23] = v8;
    v9 = [v2 altDSID];
    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    [v8 setAltDSID:v9];

    v10 = [objc_allocWithZone(type metadata accessor for AccountSharingRequestProvider()) initWithContext:v8 urlBagKey:AKURLBagKeySIWARevokeShareToken];
    v0[24] = v10;
    [v10 setAuthenticatedRequest:1];
    [v10 setClient:v4];
    v11 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v10];
    v0[25] = v11;
    v12 = type metadata accessor for AccountUnsharingService();
    v13 = swift_allocObject();
    v0[26] = v13;
    *(v13 + 16) = v11;
    v14 = objc_opt_self();
    v32 = v4;
    v15 = v11;
    v16 = [v14 sharedManager];
    v0[15] = v12;
    v0[16] = &off_1003269B8;
    v0[12] = v13;
    type metadata accessor for AccountUnsharingController();
    inited = swift_initStackObject();
    v0[27] = inited;
    v18 = v0[15];
    v19 = sub_1001E947C((v0 + 12), v18);
    v20 = *(v18 - 8);
    v21 = swift_task_alloc();
    (*(v20 + 16))(v21, v19, v18);
    v22 = *v21;
    inited[8] = v12;
    inited[9] = &off_1003269B8;
    inited[2] = v32;
    inited[3] = v16;
    inited[4] = v33;
    inited[5] = v22;
    v23 = v33;

    sub_1001BB7D0(v0 + 12);

    v24 = swift_task_alloc();
    v0[28] = v24;
    *v24 = v0;
    v24[1] = sub_100240C38;
    v25 = v0[19];

    return sub_1001B6B50(v25);
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1001AD2E4(v27, qword_100377698);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Client is not set. Invalid connection", v30, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[18] = -16003;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_100240C38()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100240E14;
  }

  else
  {
    v2 = sub_100240D4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100240D4C()
{
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  swift_setDeallocating();

  swift_unknownObjectRelease();
  sub_1001BB7D0((v1 + 40));

  v7 = v0[1];

  return v7();
}

uint64_t sub_100240E14()
{
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  swift_setDeallocating();

  swift_unknownObjectRelease();
  sub_1001BB7D0((v1 + 40));

  v7 = v0[1];

  return v7();
}

uint64_t sub_100241064(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100241128;

  return SignInWithAppleDaemonService.leaveGroup(context:)(v6);
}

uint64_t sub_100241128()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 1, 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t SignInWithAppleDaemonService.deleteAllItemsFromDepartedGroup(context:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_1002412EC, 0, 0);
}

uint64_t sub_1002412EC()
{
  if (*(*(v0 + 40) + OBJC_IVAR___AKSignInWithAppleDaemonService_client))
  {
    v1 = [*(v0 + 32) currentGroupID];
    if (v1)
    {
      v2 = v1;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = [objc_allocWithZone(AAFKeychainManager) init];
      v4 = [objc_opt_self() sharedInstance];
      v5 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
      v6 = sub_100244CAC(v3, v4, v5);
      sub_1001F0774();

      goto LABEL_16;
    }

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1001AD2E4(v12, qword_100377698);
    v8 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v13))
    {
      v11 = -16007;
      goto LABEL_15;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v8, v13, "Context is missing groupID", v14, 2u);
    v11 = -16007;
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1001AD2E4(v7, qword_100377698);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v9))
    {
      v11 = -16003;
      goto LABEL_15;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Client is not set. Invalid connection", v10, 2u);
    v11 = -16003;
  }

LABEL_15:

  type metadata accessor for SignInWithAppleError(0);
  *(v0 + 24) = v11;
  sub_1001E4150(_swiftEmptyArrayStorage);
  sub_1001B754C();
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();
LABEL_16:
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100241760(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100248054;

  return SignInWithAppleDaemonService.deleteAllItemsFromDepartedGroup(context:)(v6);
}

uint64_t SignInWithAppleDaemonService.participantRemovedWithContext(context:participantID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_100241848, 0, 0);
}

uint64_t sub_100241848()
{
  v1 = *(v0[22] + OBJC_IVAR___AKSignInWithAppleDaemonService_client);
  v0[23] = v1;
  if (v1)
  {
    v2 = v0[19];
    v3 = v1;
    v4 = [v2 currentGroupID];
    if (v4)
    {
      v5 = v0[19];
      v6 = v4;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v8;
      v37 = v7;
      v9 = v8;

      v0[24] = v9;
      v10 = [objc_allocWithZone(AAFKeychainManager) init];
      v11 = [objc_opt_self() sharedInstance];
      v12 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
      v13 = sub_100244CAC(v10, v11, v12);
      v0[25] = v13;
      v14 = sub_100245C10(v3, v5);
      v0[26] = v14;
      v15 = type metadata accessor for SharedAccountsTokenRotationController();
      v0[13] = v15;
      v0[14] = &off_1003274B8;
      v0[10] = v14;
      type metadata accessor for ParticipantGroupDepartureController();
      inited = swift_initStackObject();
      v0[27] = inited;
      v17 = v0[13];
      v18 = sub_1001E947C((v0 + 10), v17);
      v19 = *(v17 - 8);
      v20 = swift_task_alloc();
      (*(v19 + 16))(v20, v18, v17);
      v21 = *v20;
      inited[6] = v15;
      inited[7] = &off_1003274B8;
      inited[2] = v13;
      inited[3] = v21;
      v22 = v13;

      sub_1001BB7D0(v0 + 10);

      v23 = swift_task_alloc();
      v0[28] = v23;
      *v23 = v0;
      v23[1] = sub_100241D0C;
      v25 = v0[20];
      v24 = v0[21];

      return sub_1001BB340(v25, v24, v37, v36);
    }

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1001AD2E4(v31, qword_100377698);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Context is missing groupID", v34, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[18] = -16007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1001AD2E4(v27, qword_100377698);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Client is not set. Invalid connection", v30, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[16] = -16003;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_100241D0C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100241ED8;
  }

  else
  {
    v2 = sub_100241E40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100241E40()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 184);

  swift_setDeallocating();
  swift_unknownObjectRelease();
  sub_1001BB7D0((v1 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100241ED8()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 184);

  swift_setDeallocating();
  swift_unknownObjectRelease();
  sub_1001BB7D0((v1 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100242100(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  v10 = a1;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1002421EC;

  return SignInWithAppleDaemonService.participantRemovedWithContext(context:participantID:)(v10, v7, v9);
}

uint64_t sub_1002421EC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 1, 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t SignInWithAppleDaemonService.fetchSharedGroups(with:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_1002423D4, 0, 0);
}

uint64_t sub_1002423D4()
{
  v1 = *(v0[8] + OBJC_IVAR___AKSignInWithAppleDaemonService_client);
  v0[9] = v1;
  if (v1)
  {
    v2 = v0[7];
    v3 = objc_allocWithZone(AKAppleIDAuthenticationContext);
    v4 = v1;
    v5 = [v3 init];
    v0[10] = v5;
    v6 = [v2 altDSID];
    if (!v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = String._bridgeToObjectiveC()();
    }

    [v5 setAltDSID:v6];

    v7 = [objc_allocWithZone(type metadata accessor for AccountSharingRequestProvider()) initWithContext:v5 urlBagKey:AKURLBagKeySIWAFetchSharedGroups];
    v0[11] = v7;
    [v7 setAuthenticatedRequest:1];
    [v7 setClient:v4];
    v8 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v7];
    v0[12] = v8;
    type metadata accessor for AccountSharingService();
    inited = swift_initStackObject();
    v0[13] = inited;
    *(inited + 16) = v8;
    v10 = v8;
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_1002426EC;

    return sub_1001CF4A8();
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1001AD2E4(v13, qword_100377698);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Client is not set. Invalid connection", v16, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[6] = -16003;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1002426EC(uint64_t a1)
{
  *(*v2 + 120) = v1;

  if (v1)
  {
    v3 = sub_10024288C;
  }

  else
  {

    v3 = sub_10024280C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10024280C()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10024288C()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100242A94(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100248058;

  return SignInWithAppleDaemonService.fetchSharedGroups(with:)(v6);
}

uint64_t SignInWithAppleDaemonService.performTokenRotation(with:)(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return _swift_task_switch(sub_100242B78, 0, 0);
}

uint64_t sub_100242B78()
{
  v1 = *(v0[7] + OBJC_IVAR___AKSignInWithAppleDaemonService_client);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[6];
    v3 = v1;
    v4 = [v2 _groups];
    if (v4)
    {
      v5 = v0[6];
      v6 = v4;
      v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      v0[9] = v7;

      v0[10] = sub_100245C10(v3, v5);
      v8 = swift_task_alloc();
      v0[11] = v8;
      *v8 = v0;
      v8[1] = sub_100242ED4;

      return sub_1001DFD48(v7);
    }

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1001AD2E4(v14, qword_100377698);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Groups is not set.", v17, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[5] = -16007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1001AD2E4(v10, qword_100377698);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Client is not set. Invalid connection", v13, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[3] = -16003;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100242ED4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100243074;
  }

  else
  {
    v2 = sub_100243008;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100243008()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100243074()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100243268(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10024805C;

  return SignInWithAppleDaemonService.performTokenRotation(with:)(v6);
}

uint64_t sub_100243348()
{
  if (qword_100371BB8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100243418;

  return sub_1001E8BF0();
}

uint64_t sub_100243418()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100243698(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return _swift_task_switch(sub_100243704, 0, 0);
}

uint64_t sub_100243704()
{
  if (qword_100371BB8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1002437D4;

  return sub_1001E8BF0();
}

uint64_t sub_1002437D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v1[2](v1, 1, 0);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10024391C()
{
  v1 = *(v0[36] + OBJC_IVAR___AKSignInWithAppleDaemonService_client);
  v0[37] = v1;
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedInstance];
    v5 = [v4 primaryAuthKitAccount];
    v0[38] = v5;

    if (v5)
    {
      v6 = [v2 sharedInstance];
      v7 = [v6 altDSIDForAccount:v5];

      if (v7)
      {
        v58 = [objc_allocWithZone(AKSignInWithAppleRequestContext) initWithAltDSID:v7];
        v0[39] = v58;

        if (qword_100371BD8 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_1001AD2E4(v8, qword_100377698);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Fetching SIWA accounts", v11, 2u);
        }

        v12 = [v2 sharedInstance];
        v13 = [objc_allocWithZone(AKCDPFactory) init];
        v51 = type metadata accessor for AccountSharingPreFlightChecker();
        v14 = swift_allocObject();
        v0[40] = v14;
        *(v14 + 16) = v12;
        *(v14 + 24) = v13;
        v15 = [objc_allocWithZone(AAFKeychainManager) init];
        v16 = objc_opt_self();
        v17 = [v16 sharedInstance];
        v18 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
        v19 = sub_100244CAC(v15, v17, v18);
        v0[41] = v19;
        v20 = [v16 sharedInstance];
        v21 = [objc_allocWithZone(AAFKeychainManager) init];
        v52 = type metadata accessor for SharedGroupsMembershipController();
        v22 = swift_allocObject();
        v0[42] = v22;
        *(v22 + 16) = v20;
        *(v22 + 24) = v21;
        v23 = objc_opt_self();
        v59 = v3;
        v57 = [v23 sharedManager];
        v56 = [v2 sharedInstance];
        v55 = [objc_allocWithZone(AKAuthorizationStoreManager) init];
        v24 = objc_allocWithZone(AKApplicationInformationController);
        v54 = v19;

        v53 = [v24 init];
        v0[20] = v14;
        v0[23] = v51;
        v0[24] = &off_100328630;
        v0[28] = v52;
        v0[29] = &off_100328758;
        v0[25] = v22;
        type metadata accessor for AccountsListingController();
        inited = swift_initStackObject();
        v0[43] = inited;
        v26 = v0[23];
        v27 = sub_1001E947C((v0 + 20), v26);
        v28 = *(v26 - 8);
        v29 = swift_task_alloc();
        (*(v28 + 16))(v29, v27, v26);
        v30 = v0[28];
        v31 = sub_1001E947C((v0 + 25), v30);
        v32 = *(v30 - 8);
        v33 = swift_task_alloc();
        (*(v32 + 16))(v33, v31, v30);
        v34 = *v29;
        v35 = *v33;
        inited[10] = v51;
        inited[11] = &off_100328630;
        inited[16] = v52;
        inited[17] = &off_100328758;
        inited[2] = v57;
        inited[3] = v59;
        inited[4] = v56;
        inited[5] = v55;
        inited[7] = v34;
        inited[6] = v54;
        inited[12] = v53;
        inited[13] = v35;

        sub_1001BB7D0(v0 + 25);

        sub_1001BB7D0(v0 + 20);

        v36 = swift_task_alloc();
        v0[44] = v36;
        *v36 = v0;
        v36[1] = sub_100244220;

        return sub_100203DDC(v58);
      }

      if (qword_100371BD8 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_1001AD2E4(v46, qword_100377698);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "No authKit account", v49, 2u);
      }

      type metadata accessor for SignInWithAppleError(0);
      v0[35] = -16007;
      sub_1001E4150(_swiftEmptyArrayStorage);
      sub_1001B754C();
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }

    else
    {
      if (qword_100371BD8 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_1001AD2E4(v42, qword_100377698);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "No primary authKit account", v45, 2u);
      }

      type metadata accessor for SignInWithAppleError(0);
      v0[33] = -16007;
      sub_1001E4150(_swiftEmptyArrayStorage);
      sub_1001B754C();
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1001AD2E4(v38, qword_100377698);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Client is not set. Invalid connection", v41, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[31] = -16003;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v50 = v0[1];

  return v50();
}

uint64_t sub_100244220(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = sub_10024440C;
  }

  else
  {
    *(v4 + 368) = a1;
    v5 = sub_100244348;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100244348()
{
  v1 = v0[46];
  v2 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[37];
  swift_setDeallocating();
  sub_1002042A8();
  swift_deallocClassInstance();

  v6 = v0[1];

  return v6(v1);
}

uint64_t sub_10024440C()
{
  v1 = v0[41];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[37];
  swift_setDeallocating();
  sub_1002042A8();
  swift_deallocClassInstance();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10024463C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1002446E4;

  return SignInWithAppleDaemonService.fetchSignInWithApplePrivateEmailCount()();
}

uint64_t sub_1002446E4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_100244884()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100244978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1001DE11C(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100010DD0(v11);
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

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
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

    sub_100010DD0(a3);

    return v21;
  }

LABEL_8:
  sub_100010DD0(a3);
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

uint64_t sub_100244C34()
{
  v0 = sub_1001AD17C(&qword_1003743F8, &qword_10029FA50);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_100374400;
    v3 = &unk_10029FA58;
  }

  else
  {
    v2 = &qword_100373FB0;
    v3 = qword_10029FA60;
  }

  return sub_1001AD17C(v2, v3);
}

id sub_100244CAC(void *a1, void *a2, char *a3)
{
  v6 = &a3[OBJC_IVAR___AKSharedAccountsStorageController__cachedCurrentUserParticipantIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&a3[OBJC_IVAR___AKSharedAccountsStorageController_participantIDToHandleMap] = &_swiftEmptyDictionarySingleton;
  *&a3[OBJC_IVAR___AKSharedAccountsStorageController__cachedSharedGroupsMembershipInfo] = 0;
  *&a3[OBJC_IVAR___AKSharedAccountsStorageController_keychainStorageController] = a1;
  *&a3[OBJC_IVAR___AKSharedAccountsStorageController_keychainGroupManager] = a2;
  v7 = type metadata accessor for SharedGroupsMembershipController();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;
  v9 = &a3[OBJC_IVAR___AKSharedAccountsStorageController_sharedGroupsMembershipController];
  *(v9 + 3) = v7;
  *(v9 + 4) = &off_100328758;
  *v9 = v8;
  v13.receiver = a3;
  v13.super_class = type metadata accessor for SharedAccountsStorageController();
  v10 = a1;
  v11 = a2;
  return objc_msgSendSuper2(&v13, "init");
}

void _s3akd28SignInWithAppleDaemonServiceC26configureExportedInterfaceyySo14NSXPCInterfaceCF_0(void *a1)
{
  sub_100244C34();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10029F7B0;
  *(inited + 32) = sub_100248004(0, &qword_1003743E8, AKSignInWithAppleRequestContext_ptr);
  v2 = sub_100248004(0, &qword_100373000, NSError_ptr);
  *(inited + 40) = v2;
  v3 = sub_100248004(0, &qword_100373030, NSNull_ptr);
  *(inited + 48) = v3;
  sub_100244C34();
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_10029F650;
  *(v4 + 32) = sub_100248004(0, &qword_1003743E0, AKSignInWithAppleAccount_ptr);
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  *(v4 + 56) = sub_100248004(0, &qword_1003743F0, AKIconContext_ptr);
  sub_10023C350(inited);
  v5 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v5 initWithArray:isa];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002450DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_1002450FC, 0, 0);
}

uint64_t sub_1002450FC()
{
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_100377698);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching EULA", v4, 2u);
  }

  v5 = [objc_opt_self() sharedInstance];
  v6 = [objc_allocWithZone(AKAuthorizationStoreManager) init];
  v7 = type metadata accessor for AccountsMetadataController();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___AKAccountsMetadataController_mediaServicesController] = v5;
  *&v8[OBJC_IVAR___AKAccountsMetadataController_localStorageController] = v6;
  *&v8[OBJC_IVAR___AKAccountsMetadataController_metadataService] = 0;
  v0[1].receiver = v8;
  v0[1].super_class = v7;
  v0[3].receiver = objc_msgSendSuper2(v0 + 1, "init");
  v9 = swift_task_alloc();
  v0[3].super_class = v9;
  *v9 = v0;
  *(v9 + 1) = sub_1002452E0;
  receiver = v0[2].receiver;
  super_class = v0[2].super_class;

  return sub_10022C5F0(receiver, super_class);
}

uint64_t sub_1002452E0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v7 = sub_10024547C;
  }

  else
  {
    *(v6 + 72) = a2;
    *(v6 + 80) = a1;
    v7 = sub_100245414;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100245414()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1(v2, v3);
}

uint64_t sub_10024547C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002454E0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  return _swift_task_switch(sub_100245504, 0, 0);
}

uint64_t sub_100245504()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [objc_allocWithZone(AKAuthorizationStoreManager) init];
  v3 = type metadata accessor for AccountsMetadataController();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR___AKAccountsMetadataController_mediaServicesController] = v1;
  *&v4[OBJC_IVAR___AKAccountsMetadataController_localStorageController] = v2;
  *&v4[OBJC_IVAR___AKAccountsMetadataController_metadataService] = 0;
  v0[1].receiver = v4;
  v0[1].super_class = v3;
  v0[4].receiver = objc_msgSendSuper2(v0 + 1, "init");
  v5 = swift_task_alloc();
  v0[4].super_class = v5;
  *v5 = v0;
  *(v5 + 1) = sub_100245638;
  v6 = *&v0[3].receiver;
  v7 = *&v0[3].super_class;
  receiver = v0[2].receiver;
  super_class = v0[2].super_class;

  return sub_10022CDF4(receiver, super_class, v6, v7);
}

uint64_t sub_100245638(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1002457CC;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_100245760;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100245760()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002457CC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100245830(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_100245850, 0, 0);
}

uint64_t sub_100245850()
{
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_100377698);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Canceling app icon fetch request", v4, 2u);
  }

  v5 = [objc_opt_self() sharedInstance];
  v6 = [objc_allocWithZone(AKAuthorizationStoreManager) init];
  v7 = type metadata accessor for AccountsMetadataController();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___AKAccountsMetadataController_mediaServicesController] = v5;
  *&v8[OBJC_IVAR___AKAccountsMetadataController_localStorageController] = v6;
  *&v8[OBJC_IVAR___AKAccountsMetadataController_metadataService] = 0;
  v0[1].receiver = v8;
  v0[1].super_class = v7;
  v0[3].receiver = objc_msgSendSuper2(v0 + 1, "init");
  v9 = swift_task_alloc();
  v0[3].super_class = v9;
  *v9 = v0;
  *(v9 + 1) = sub_100245A34;
  receiver = v0[2].receiver;
  super_class = v0[2].super_class;

  return sub_10022D8B8(receiver, super_class);
}

uint64_t sub_100245A34()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100245BAC;
  }

  else
  {
    v2 = sub_100245B48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100245B48()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100245BAC()
{
  v1 = *(v0 + 8);

  return v1();
}

void *sub_100245C10(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
  v5 = [a2 altDSID];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  [v4 setAltDSID:v5];

  v6 = [objc_opt_self() sharedInstance];
  v7 = [objc_allocWithZone(AAFKeychainManager) init];
  v8 = objc_allocWithZone(type metadata accessor for SharedAccountsStorageController());
  v9 = v7;
  v10 = v6;
  v11 = sub_100244CAC(v9, v10, v8);
  type metadata accessor for SharedGroupsMembershipController();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v9;
  v13 = AKURLBagKeySIWARotateShareTokens;
  v14 = objc_allocWithZone(type metadata accessor for AccountSharingRequestProvider());
  v15 = v9;
  v16 = v10;
  v17 = [v14 initWithContext:v4 urlBagKey:v13];
  [v17 setAuthenticatedRequest:1];
  [v17 setClient:a1];
  v18 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v17];
  type metadata accessor for AccountSharingService();
  v19 = swift_allocObject();
  v19[2] = v18;
  v20 = objc_opt_self();
  v21 = v18;
  v22 = [v20 sharedInstance];

  v23 = sub_1001E80D0(v22, v12, v11, v19);

  return v23;
}

uint64_t sub_100245E74()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10024808C;

  return sub_10024463C(v2, v3);
}

uint64_t sub_100245F20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100245FD8;

  return sub_1000088BC(a1, v4);
}

uint64_t sub_100245FD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002460CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100248068;

  return sub_100243698(v2, v3);
}

uint64_t sub_100246180()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10024806C;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_100246240(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100248070;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_10024630C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100248074;

  return sub_100243268(v2, v3, v4);
}

uint64_t sub_1002463C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100248078;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_100246480(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10024807C;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_10024654C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100248080;

  return sub_100242A94(v2, v3, v4);
}

uint64_t sub_100246600()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100248084;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_1002466C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100248088;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_10024678C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10024684C;

  return sub_100242100(v2, v3, v5, v4);
}

uint64_t sub_10024684C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100246940()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100248090;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_100246A00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100248094;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_100246ACC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100248098;

  return sub_100241760(v2, v3, v4);
}

uint64_t sub_100246B80()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10024809C;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_100246C40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1002480A0;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_100246D0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1002480A4;

  return sub_100241064(v2, v3, v4);
}

uint64_t sub_100246DC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1002480A8;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_100246E80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1002480AC;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_100246F4C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1002480B0;

  return sub_100240698(v2, v3, v4);
}

uint64_t sub_100247000()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1002480B4;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_1002470C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1002480B8;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_10024718C()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002471DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1002480BC;

  return sub_10023FC70(v2, v3, v5, v4);
}

uint64_t sub_10024729C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1002480C0;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_10024735C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1002480C4;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_100247428()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1002480C8;

  return sub_10023EDE8(v2, v3, v4);
}

uint64_t sub_1002474DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1002480CC;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_10024759C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1002480D0;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_100247668()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1002480D4;

  return sub_10023E7F8(v2, v6, v5, v3, v4);
}

uint64_t sub_100247730()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1002480D8;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_1002477F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1002480DC;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_1002478BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1002480E0;

  return sub_10023E3C8(v2, v3, v4);
}

uint64_t sub_100247970()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1002480E4;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_100247A30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1002480E8;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_100247AFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1002480EC;

  return sub_10023D740(v2, v3, v4);
}

uint64_t sub_100247BB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1002480F0;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_100247C70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1002480F4;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_100247D3C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100247D84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1002480F8;

  return sub_10023D174(v2, v3, v4);
}

uint64_t sub_100247E38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1002480FC;

  return sub_10000A98C(v2, v3, v4);
}

uint64_t sub_100247EF8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100247F38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100248100;

  return sub_1000099A4(a1, v4, v5, v6);
}

uint64_t sub_100248004(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_100248158(uint64_t a1)
{
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1001AD2E4(v3, qword_100377668);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    v9 = [v4 storeName];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_10024B050(v10, v12, &v14);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2048;
    *(v7 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Database Migration requested from version:%llu", v7, 0x16u);
    sub_1001AD48C(v8);
  }

  if (a1 != 1)
  {
    if (a1)
    {
      return;
    }

    sub_10024830C();
  }

  sub_1002489F8();
}

void sub_10024830C()
{
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_100377668);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v51[0] = v6;
    *v5 = 136315138;
    v7 = [v2 storeName];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = sub_10024B050(v8, v10, v51);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Building %s database with schema version: 1", v5, 0xCu);
    sub_1001AD48C(v6);
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Start creating device_list table", v14, 2u);
  }

  v15 = [v2 executor];
  if (v15)
  {
    v16 = v15;
    v17 = String._bridgeToObjectiveC()();
    [v16 performQuery:v17];
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Done creating device_list table", v20, 2u);
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Start creating deleted_device_list table", v23, 2u);
  }

  v24 = [v2 executor];
  if (v24)
  {
    v25 = v24;
    v26 = String._bridgeToObjectiveC()();
    [v25 performQuery:v26];
  }

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Done creating deleted_device_list table", v29, 2u);
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Start creating version table", v32, 2u);
  }

  v33 = [v2 executor];
  if (v33)
  {
    v34 = v33;
    v35 = String._bridgeToObjectiveC()();
    [v34 performQuery:v35];
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Done creating version table", v38, 2u);
  }

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Initializing version table", v41, 2u);
  }

  v51[0] = 0;
  v51[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v42._object = 0x80000001002AD790;
  v42._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v42);
  v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v43);

  v44._countAndFlagsBits = 3877159;
  v44._object = 0xE300000000000000;
  String.append(_:)(v44);
  v45 = [v2 executor];
  if (v45)
  {
    v46 = v45;
    v47 = String._bridgeToObjectiveC()();

    [v46 performInsertQuery:v47];
  }

  else
  {
  }

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "Done initializing version table", v50, 2u);
  }
}

void sub_1002489F8()
{
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_100377668);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start creating deleted_device_list table if not exists", v4, 2u);
  }

  v5 = [v0 executor];
  if (v5)
  {
    v6 = v5;
    v7 = String._bridgeToObjectiveC()();
    [v6 performQuery:v7];
  }

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v8, "Done creating deleted_device_list table", v9, 2u);
  }
}

id sub_100248C98(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeviceListStoreMigrator();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100248CF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100248D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1001DE11C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10024BE14(v11, &unk_100372310, &qword_10029CEC0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

      sub_10024BE14(a3, &unk_100372310, &qword_10029CEC0);

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

  sub_10024BE14(a3, &unk_100372310, &qword_10029CEC0);
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

uint64_t sub_100249044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1001DE11C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10024BE14(v11, &unk_100372310, &qword_10029CEC0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1001AD17C(&qword_100374468, &qword_10029FB18);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10024BE14(a3, &unk_100372310, &qword_10029CEC0);

      return v22;
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

  sub_10024BE14(a3, &unk_100372310, &qword_10029CEC0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1001AD17C(&qword_100374468, &qword_10029FB18);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100249348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1001DE11C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10024BE14(v11, &unk_100372310, &qword_10029CEC0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1001AD17C(&unk_100374480, &qword_10029FB78);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10024BE14(a3, &unk_100372310, &qword_10029CEC0);

      return v22;
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

  sub_10024BE14(a3, &unk_100372310, &qword_10029CEC0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1001AD17C(&unk_100374480, &qword_10029FB78);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10024964C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1001DE11C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10024BE14(v11, &unk_100372310, &qword_10029CEC0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1001AD17C(&qword_100374478, &qword_10029FB58);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10024BE14(a3, &unk_100372310, &qword_10029CEC0);

      return v22;
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

  sub_10024BE14(a3, &unk_100372310, &qword_10029CEC0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1001AD17C(&qword_100374478, &qword_10029FB58);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100249950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1001DE11C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10024BE14(v11, &unk_100372310, &qword_10029CEC0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1001AD17C(&qword_100374470, &qword_10029FB38);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10024BE14(a3, &unk_100372310, &qword_10029CEC0);

      return v22;
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

  sub_10024BE14(a3, &unk_100372310, &qword_10029CEC0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1001AD17C(&qword_100374470, &qword_10029FB38);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_100249C54()
{
  result = [objc_allocWithZone(type metadata accessor for AppleIDPasskeyHealthCheckService()) init];
  qword_1003776D8 = result;
  return result;
}

void sub_100249D4C()
{
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1001AD2E4(v0, qword_1003776B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8[0] = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_10024B050(0xD000000000000020, 0x80000001002AD830, v8);
    _os_log_impl(&_mh_execute_header, v1, v2, "Registering for passkey XPC activity: %s...", v3, 0xCu);
    sub_1001AD48C(v4);
  }

  else
  {
  }

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_10024ADD4;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100248CF4;
  v8[3] = &unk_10032A0D8;
  v6 = _Block_copy(v8);

  v7 = String.utf8CString.getter();
  xpc_activity_register((v7 + 32), XPC_ACTIVITY_CHECK_IN, v6);

  _Block_release(v6);
}

uint64_t sub_100249F7C(_xpc_activity_s *a1, uint64_t a2)
{
  v3 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v40 - v4;
  state = xpc_activity_get_state(a1);
  String.utf8CString.getter();
  os_transaction_create();

  if (state == 2)
  {
    if (xpc_activity_set_state(a1, 4))
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        v9 = OBJC_IVAR___AKAppleIDPasskeyHealthCheckService_accountManager;
        v10 = [*(Strong + OBJC_IVAR___AKAppleIDPasskeyHealthCheckService_accountManager) primaryAuthKitAccount];
        if (v10)
        {
          v11 = v10;
          v12 = [*&v8[v9] altDSIDForAccount:v10];
          if (v12)
          {
            v13 = v12;
            v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v16 = v15;

            v17 = type metadata accessor for TaskPriority();
            (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
            v18 = swift_allocObject();
            v18[2] = 0;
            v18[3] = 0;
            v18[4] = v11;
            v18[5] = v8;
            v18[6] = v14;
            v18[7] = v16;
            v19 = v8;
            sub_100248D54(0, 0, v5, &unk_10029FAE8, v18);

LABEL_31:
            sub_10024BB44(a1, 2);
            return swift_unknownObjectRelease();
          }

          if (qword_100371BE0 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          sub_1001AD2E4(v34, qword_1003776B0);
          v35 = v11;
          v28 = Logger.logObject.getter();
          v36 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v28, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            *v37 = 138412290;
            *(v37 + 4) = v35;
            *v38 = v11;
            v39 = v35;
            _os_log_impl(&_mh_execute_header, v28, v36, "AltDSID not found for account %@.", v37, 0xCu);
            sub_10024BE14(v38, &unk_1003726A0, &unk_10029CFA0);

            v35 = v8;
            v8 = v28;
            v28 = v39;
          }
        }

        else
        {
          if (qword_100371BE0 != -1)
          {
            swift_once();
          }

          v31 = type metadata accessor for Logger();
          sub_1001AD2E4(v31, qword_1003776B0);
          v28 = Logger.logObject.getter();
          v32 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v28, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&_mh_execute_header, v28, v32, "Missing primary account.", v33, 2u);
          }
        }
      }

      else
      {
        if (qword_100371BE0 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_1001AD2E4(v27, qword_1003776B0);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "AppleIDPasskeyHealthCheckService missing instance.", v30, 2u);
        }
      }

      goto LABEL_31;
    }

    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1001AD2E4(v22, qword_1003776B0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = 2;
      _os_log_impl(&_mh_execute_header, v23, v24, "XPC activity failed to set passkey activity state: %ld.", v25, 0xCu);
    }

    v20 = a1;
    v21 = 2;
  }

  else
  {
    v20 = a1;
    v21 = state;
  }

  sub_10024BB44(v20, v21);

  return swift_unknownObjectRelease();
}

uint64_t sub_10024A544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return _swift_task_switch(sub_10024A568, 0, 0);
}

id sub_10024A568()
{
  v1 = *(v0[3].super_class + OBJC_IVAR___AKAppleIDPasskeyHealthCheckService_accountManager);
  v2 = objc_opt_self();
  v22 = v1;
  v23 = [v2 sharedManager];
  v3 = [objc_allocWithZone(type metadata accessor for AppleIDPasskeyServerConfiguration()) init];
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v5 = result;
    receiver = v0[3].receiver;
    v7 = [objc_allocWithZone(AKCDPFactory) init];
    v8 = [objc_allocWithZone(AKAppleIDPasskeyAuthenticationController) init];
    v9 = type metadata accessor for AppleIDPasskeyValidator();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR___AKAppleIDPasskeyValidator_account] = receiver;
    *&v10[OBJC_IVAR___AKAppleIDPasskeyValidator_accountManager] = v22;
    *&v10[OBJC_IVAR___AKAppleIDPasskeyValidator_featureManager] = v23;
    *&v10[OBJC_IVAR___AKAppleIDPasskeyValidator_configuration] = v3;
    *&v10[OBJC_IVAR___AKAppleIDPasskeyValidator_device] = v5;
    *&v10[OBJC_IVAR___AKAppleIDPasskeyValidator_cdpFactory] = v7;
    *&v10[OBJC_IVAR___AKAppleIDPasskeyValidator_authenticationController] = v8;
    v0[1].receiver = v10;
    v0[1].super_class = v9;
    v11 = receiver;
    v12 = objc_msgSendSuper2(v0 + 1, "init");
    v0[5].receiver = v12;
    v13 = objc_allocWithZone(AKAppleIDPasskeySetupContext);
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 initWithAltDSID:v14];
    v0[5].super_class = v15;

    v16 = sub_100206718(v15, 0, 0);
    v0[6].receiver = v16;
    v17 = v16;
    v18 = type metadata accessor for AppleIDPasskeyUnenrollController();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR___AKAppleIDPasskeyUnenrollController_passkeyValidator] = v12;
    *&v19[OBJC_IVAR___AKAppleIDPasskeyUnenrollController_unenrollProvider] = v17;
    v0[2].receiver = v19;
    v0[2].super_class = v18;
    v20 = v12;
    swift_unknownObjectRetain();
    v0[6].super_class = objc_msgSendSuper2(v0 + 2, "init");
    v21 = swift_task_alloc();
    v0[7].receiver = v21;
    *v21 = v0;
    v21[1] = sub_10024A9D8;

    return sub_100206B80(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10024A9D8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10024AB68;
  }

  else
  {
    v2 = sub_10024AAEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10024AAEC()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);

  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10024AB68()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);

  swift_unknownObjectRelease();
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1001AD2E4(v3, qword_1003776B0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to unenroll passkey with error - %@", v6, 0xCu);
    sub_10024BE14(v7, &unk_1003726A0, &unk_10029CFA0);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

id sub_10024AD6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleIDPasskeyHealthCheckService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10024ADDC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10024AED4;

  return v6(a1);
}

uint64_t sub_10024AED4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10024AFF4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10024B050(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

unint64_t sub_10024B050(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10024B11C(v11, 0, 0, 1, a1, a2);
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
    sub_1000087A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1001AD48C(v11);
  return v7;
}

unint64_t sub_10024B11C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10024B228(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

void *sub_10024B228(uint64_t a1, unint64_t a2)
{
  v3 = sub_10024B274(a1, a2);
  sub_10024B3A4(&off_100325F98);
  return v3;
}

void *sub_10024B274(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10024B490(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10024B490(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

void sub_10024B3A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_10024B504(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_10024B490(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1001AD17C(&qword_100374460, &qword_10029FAD8);
  v4 = swift_allocObject();
  v5 = j__malloc_size_2(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10024B504(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001AD17C(&qword_100374460, &qword_10029FAD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_2(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10024B5F8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10024B640(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_10024C698;

  return v5(v2 + 16);
}

uint64_t sub_10024B734(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_10024C69C;

  return v5(v2 + 16);
}

uint64_t sub_10024B828(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_10024C6A0;

  return v5(v2 + 16);
}

uint64_t sub_10024B91C(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_10024BA10;

  return v5(v2 + 16);
}

uint64_t sub_10024BA10()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v4;
  v5 = *(v3 + 8);

  return v5();
}

void sub_10024BB44(_xpc_activity_s *a1, uint64_t a2)
{
  xpc_activity_set_state(a1, 5);
  if (qword_100371BE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1001AD2E4(v3, qword_1003776B0);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a2;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Passkey XPC activity registration complete. State: %ld.", v5, 0xCu);
  }
}

uint64_t sub_10024BC4C(uint64_t a1)
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
  v10[1] = sub_10024BD20;

  return sub_10024A544(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10024BD20()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10024BE14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1001AD17C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10024BE74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10024C6A4;

  return sub_10024ADDC(a1, v4);
}

uint64_t sub_10024BF2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10024C6A8;

  return sub_10024ADDC(a1, v4);
}

uint64_t sub_10024BFE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10024C6AC;

  return sub_10024B640(a1, v4);
}

uint64_t sub_10024C09C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10024C6B0;

  return sub_10024B640(a1, v4);
}

uint64_t sub_10024C154(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10024C6B4;

  return sub_10024B91C(a1, v4);
}

uint64_t sub_10024C20C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10024C2C4;

  return sub_10024B91C(a1, v4);
}

uint64_t sub_10024C2C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10024C3B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10024C6B8;

  return sub_10024B828(a1, v4);
}