void sub_10004F210()
{
  v1 = v0;
  sub_1000228D4(&qword_10008F8C0, &qword_10006FBD0);
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
}

void *sub_10004F368(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000228D4(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

void *sub_10004F498()
{
  v1 = v0;
  sub_1000228D4(&unk_100090290, &qword_10006FBC0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

Swift::Int sub_10004F5E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000228D4(&qword_10008F8C0, &qword_10006FBD0);
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
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
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

void sub_10004F81C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100004794(a1, a2, a3);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v4 + 48) + 8 * (v13 | (v7 << 6)));
        static Hasher._hash(seed:_:)();
        sub_1000090CC();
        if (((-1 << v18) & ~*(v12 + 8 * v17)) == 0)
        {
          break;
        }

        sub_10000CDBC();
LABEL_21:
        sub_100009B9C();
        *(v12 + v23) |= v24;
        *(*(v6 + 48) + 8 * v25) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      sub_100007030();
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        if (*(v12 + 8 * v19) != -1)
        {
          sub_100003E1C();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_23;
        }

        v15 = *(v4 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v3 = v6;
  }
}

uint64_t sub_10004F9A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000228D4(&unk_100090290, &qword_10006FBC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v26 = (v10 - 1) & v10;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        type metadata accessor for Client();
        sub_100015CBC(&qword_10008E898, &unk_10006DFA0);

        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        v3 = v25;
        v10 = v26;
        if (!v26)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v26 = (v15 - 1) & v15;
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

uint64_t sub_10004FC08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004FC6C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = static Hasher._hash(seed:_:)();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v7) == a1)
    {
      break;
    }

    v5 = v7 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  v12 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10004F368(&qword_10008F8B0, &qword_10006FBB8);
    v10 = v12;
  }

  v8 = *(*(v10 + 48) + 8 * v7);
  sub_100050064(v7);
  *v2 = v12;
  return v8;
}

uint64_t sub_10004FD68(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  sub_1000029D4();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    if (((*(v5 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v6 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10004F210();
    v13 = v16;
  }

  v14 = *(*(v13 + 48) + 16 * v9);
  sub_1000501DC(v9);
  *v2 = v16;
  return v14;
}

uint64_t sub_10004FE8C(uint64_t a1)
{

  v1 = __CocoaSet.count.getter();
  v2 = swift_unknownObjectRetain();
  v3 = sub_10004E5B8(v2, v1);
  v13 = v3;
  type metadata accessor for Client();
  sub_100015CBC(&qword_10008E898, &unk_10006DFA0);

  v4 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v5 = ~(-1 << *(v3 + 32));
  while (1)
  {
    v6 = v4 & v5;
    if (((*(v3 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v4 & v5)) & 1) == 0)
    {
      break;
    }

    sub_100015CBC(&unk_1000902A0, &unk_10006DFE0);

    v7 = Identifiable<>.id.getter();
    v8 = Identifiable<>.id.getter();

    if (v7 == v8)
    {

      v9 = *(*(v3 + 48) + 8 * v6);
      sub_100015814(v6);
      v10 = Identifiable<>.id.getter();
      if (v10 == Identifiable<>.id.getter())
      {
        *v12 = v13;
        return v9;
      }

      __break(1u);
      break;
    }

    v4 = v6 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_100050064(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
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
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1000501DC(unint64_t result)
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
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_100050394(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_10001980C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_100050424(uint64_t a1)
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
        sub_10004FC6C(*(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
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

void *sub_10005051C(unint64_t a1, void *a2)
{
  v3 = a2;
  if (a2[2])
  {
    v38 = 0;
    v4 = 0;
    v6 = a1 + 56;
    v5 = *(a1 + 56);
    v7 = -1;
    v8 = -1 << *(a1 + 32);
    v42 = ~v8;
    v43 = a1 + 56;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v5;
    v11 = (63 - v8) >> 6;
    v12 = a2 + 7;
    v13 = 1;
    v44 = a1;
    if ((v9 & v5) != 0)
    {
LABEL_6:
      v14 = v4;
LABEL_11:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v2 = *(*(a1 + 48) + ((v14 << 9) | (8 * v16)));
      v17 = static Hasher._hash(seed:_:)();
      v18 = -1 << *(v3 + 32);
      v19 = ~v18;
      while (1)
      {
        v4 = v17 & v19;
        v6 = (v17 & v19) >> 6;
        v7 = 1 << (v17 & v19);
        if ((v7 & v12[v6]) == 0)
        {
          v4 = v14;
          v6 = v43;
          a1 = v44;
          v7 = -1;
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_7;
        }

        if (*(v3[6] + 8 * v4) == v2)
        {
          break;
        }

        v17 = v4 + 1;
      }

      v46 = v42;
      v47 = v14;
      v48 = v10;
      v45[0] = v44;
      v45[1] = v43;
      v13 = (63 - v18) >> 6;
      v2 = 8 * v13;

      if (v13 > 0x80)
      {
        goto LABEL_40;
      }

      while (1)
      {
        v39 = v13;
        v40 = &v38;
        __chkstk_darwin(v20);
        v13 = &v38 - v21;
        memcpy(&v38 - v21, v3 + 7, v2);
        v22 = v3[2];
        *(v13 + 8 * v6) &= ~v7;
        v23 = v22 - 1;
        v4 = 1;
        v7 = v43;
        v6 = v44;
LABEL_19:
        v41 = v23;
LABEL_20:
        while (v10)
        {
LABEL_25:
          v25 = __clz(__rbit64(v10));
          v10 &= v10 - 1;
          v2 = *(*(v6 + 48) + ((v14 << 9) | (8 * v25)));
          v26 = static Hasher._hash(seed:_:)();
          v27 = ~(-1 << *(v3 + 32));
          while (1)
          {
            v28 = v26 & v27;
            v29 = (v26 & v27) >> 6;
            v30 = 1 << (v26 & v27);
            if ((v30 & v12[v29]) == 0)
            {
              break;
            }

            v26 = v28 + 1;
            if (*(v3[6] + 8 * v28) == v2)
            {
              v31 = *(v13 + 8 * v29);
              *(v13 + 8 * v29) = v31 & ~v30;
              if ((v31 & v30) == 0)
              {
                goto LABEL_20;
              }

              v23 = v41 - 1;
              if (__OFSUB__(v41, 1))
              {
                __break(1u);
              }

              if (v41 == 1)
              {

                v3 = &_swiftEmptySetSingleton;
                goto LABEL_33;
              }

              goto LABEL_19;
            }
          }
        }

        while (1)
        {
          v24 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v24 >= v11)
          {
            v3 = sub_100019A9C(v13, v39, v41, v3);
            goto LABEL_33;
          }

          v10 = *(v7 + 8 * v24);
          ++v14;
          if (v10)
          {
            v14 = v24;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v34 = swift_slowAlloc();
      v35 = v38;
      v36 = sub_100050A84(v34, v13, v3 + 7, v13, v3, v4, v45);
      if (v35)
      {

        __break(1u);
        return result;
      }

      v37 = v36;

      v6 = v45[0];
      v42 = v46;
      v3 = v37;
LABEL_33:
      v32 = v6;
    }

    else
    {
LABEL_7:
      v15 = v4;
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_39;
        }

        if (v14 >= v11)
        {
          break;
        }

        v10 = *(v6 + 8 * v14);
        ++v15;
        if (v10)
        {
          goto LABEL_11;
        }
      }
    }

    sub_100008104(v32);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v3;
}

unint64_t sub_100050908(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
LABEL_2:
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_7:
    v15 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    result = static Hasher._hash(seed:_:)();
    v16 = ~(-1 << *(a3 + 32));
    while (1)
    {
      v17 = result & v16;
      v18 = (result & v16) >> 6;
      v19 = 1 << (result & v16);
      if ((v19 & *(v11 + 8 * v18)) == 0)
      {
        break;
      }

      result = v17 + 1;
      if (*(*(a3 + 48) + 8 * v17) == v15)
      {
        v20 = v8[v18];
        v8[v18] = v20 & ~v19;
        if ((v20 & v19) == 0)
        {
          goto LABEL_2;
        }

        if (__OFSUB__(v10--, 1))
        {
          goto LABEL_16;
        }

        if (v10)
        {
          goto LABEL_2;
        }

        return &_swiftEmptySetSingleton;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v12;
      a5[4] = 0;

      return sub_100019A9C(v8, a2, v10, a3);
    }

    v13 = *(a5[1] + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_100050A84(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_100050908(a1, a2, a5, a6, a7);

  return v12;
}

_BYTE *storeEnumTagSinglePayload for SessionConfiguration.Availability(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_100050C10(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_100050CD4(319);
    if (v2 <= 0x3F)
    {
      sub_100050D38();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100050CD4(uint64_t a1)
{
  if (!qword_10008F930)
  {
    sub_100025D78(&qword_10008E238, &qword_10006CC98);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_10008F930);
    }
  }
}

void sub_100050D38()
{
  if (!qword_10008F938)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_10008F938);
    }
  }
}

uint64_t sub_100050D90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.BackendHTTP(0);

  return _swift_getEnumTagSinglePayloadGeneric(a1, a2, v4, sub_100020E88);
}

uint64_t sub_100050DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 24);

    return sub_100002694(v9, a2, v8);
  }
}

uint64_t sub_100050E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SessionConfiguration.BackendHTTP(0);

  return _swift_storeEnumTagSinglePayloadGeneric(a1, a2, a3, v6, sub_100020E84);
}

uint64_t sub_100050ED8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 24);

    return sub_1000026BC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100050F58(uint64_t a1)
{
  v2 = type metadata accessor for SessionConfiguration.BackendHTTP(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

unint64_t sub_100051004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008FA20;
  if (!qword_10008FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FA20);
  }

  return result;
}

uint64_t sub_100051058(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_100015F14(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_100051118(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 112) = a2;
  *(v4 + 120) = v3;
  *(v4 + 57) = a3;
  *(v4 + 104) = a1;
  return _swift_task_switch(sub_100051140, v3, 0);
}

uint64_t sub_100051140()
{
  sub_100004680();
  v0[16] = *(v0[15] + 112);
  sub_1000579CC(&qword_10006FD28);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v2 = sub_1000027EC(v1);

  return v3(v2);
}

uint64_t sub_1000511D8()
{
  sub_100004680();
  sub_100003B0C();
  sub_100009A8C();
  *v2 = v1;
  v3 = *v0;
  sub_1000043E4();
  *v4 = v3;
  *(v6 + 58) = v5;

  v7 = sub_100009A40();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000512D0()
{
  sub_100004680();
  if (*(v0 + 58) == 3)
  {
    v1 = *(v0 + 112);
LABEL_7:
    *(v0 + 88) = type metadata accessor for CachedSession(0);
    *(v0 + 96) = &off_100088608;
    sub_100025FDC((v0 + 64));
    sub_100002068();
    sub_100057810(v1, v3, v4);
    swift_task_alloc();
    sub_100008D5C();
    *(v0 + 144) = v5;
    *v5 = v6;
    v7 = sub_100007C50(v5);

    return sub_10001AC0C(v7, v0 + 64);
  }

  v1 = *(v0 + 112);
  if (*(v1 + 72) == 1 || *(v0 + 57) != 0)
  {
    goto LABEL_7;
  }

  v9 = *(v0 + 104);
  *v9 = _swiftEmptyArrayStorage;
  *(v9 + 8) = _swiftEmptyArrayStorage;
  *(v9 + 16) = 1;
  *(v9 + 24) = 1701736302;
  *(v9 + 32) = 0xE400000000000000;
  *(v9 + 40) = 2;
  sub_100001D4C();

  return v10();
}

uint64_t sub_100051414()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (v0)
  {
    v7 = sub_100016754();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    sub_100005284((v3 + 64));
    v10 = *(v3 + 56);
    v11 = *(v3 + 40);
    v12 = *(v3 + 48);
    v13 = *(v3 + 32);
    v14 = *(v3 + 104);
    *v14 = *(v3 + 16);
    *(v14 + 16) = v13;
    *(v14 + 24) = v11;
    *(v14 + 32) = v12;
    *(v14 + 40) = v10;
    sub_100001D4C();

    return v15();
  }
}

uint64_t sub_100051554()
{
  sub_100004680();
  sub_100005284((v0 + 64));
  sub_100001D4C();

  return v1();
}

void sub_1000515B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v5 = &unk_10008F2F0;
  v6 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  v7 = sub_100001D80(v6);
  v8 = __chkstk_darwin(v7);
  v40 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  v12 = 0;
  v13 = *(a3 + 16);
  v14 = a3 + 56;
  v37 = _swiftEmptyArrayStorage;
  v38 = a1;
  v41 = v13;
  v36 = a3 + 56;
LABEL_2:
  for (i = (v14 + 32 * v12); ; i += 4)
  {
    if (v13 == v12)
    {
      sub_100018228(v37, &type metadata for Int64, &protocol witness table for Int64, sub_10004E32C);
      return;
    }

    if (v12 >= v13)
    {
      break;
    }

    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_24;
    }

    v17 = *i;
    if (*(*i + 16))
    {
      v18 = v11;

      v19 = sub_100003BC0(a1, v39);
      if (v20)
      {
        v21 = v19;
        v22 = v5;
        v23 = *(v17 + 56);
        v24 = type metadata accessor for EventValue(0);
        sub_100003C44();
        v26 = v23 + *(v25 + 72) * v21;
        v11 = v18;
        sub_100057810(v26, v18, type metadata accessor for EventValue);

        sub_1000026BC(v18, 0, 1, v24);
        sub_10004E03C(v18, v40);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          v13 = v41;
          v30 = *v40;
          v5 = v22;
LABEL_17:
          sub_100005000(v11, v5, &qword_10006FFF0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100023234(0, v37[2] + 1, 1, v37);
            v37 = v34;
          }

          a1 = v38;
          v32 = v37[2];
          v31 = v37[3];
          if (v32 >= v31 >> 1)
          {
            sub_100023234(v31 > 1, v32 + 1, 1, v37);
            v37 = v35;
          }

          v14 = v36;
          v33 = v37;
          v37[2] = v32 + 1;
          v33[v32 + 4] = v30;
          v12 = v16;
          goto LABEL_2;
        }

        v5 = v22;
        v13 = v41;
        if (EnumCaseMultiPayload == 2)
        {
          v30 = *v40;
          if (*v40 < 0)
          {
            goto LABEL_25;
          }

          goto LABEL_17;
        }

        sub_10005786C(v40, type metadata accessor for EventValue);
        a1 = v38;
      }

      else
      {

        v29 = type metadata accessor for EventValue(0);
        sub_1000026BC(v11, 1, 1, v29);
        v13 = v41;
      }
    }

    else
    {
      v28 = type metadata accessor for EventValue(0);
      sub_1000026BC(v11, 1, 1, v28);
    }

    sub_100005000(v11, v5, &qword_10006FFF0);
    ++v12;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_100051914(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  v3 = sub_100016754();
  return _swift_task_switch(v3, v4, v5);
}

void sub_100051940()
{
  v1 = qword_100095AE8;
  v0[18] = qword_100095AE8;
  if (v1)
  {
    sub_100002624();
    sub_100012328();
    swift_task_alloc();
    sub_100008D5C();
    v0[19] = v2;
    *v2 = v3;
    v2[1] = sub_1000519F8;
    v4 = v0[16];

    v5(v0 + 2, v4, 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000519F8()
{
  sub_100002624();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  v3[20] = v0;

  if (v0)
  {
    v7 = sub_100016754();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    sub_1000579CC(&qword_10006FD18);
    v15 = v10;
    swift_task_alloc();
    sub_100008D5C();
    v3[21] = v11;
    *v11 = v12;
    v11[1] = sub_100051B68;
    v13 = v3[16];

    return v15(v3 + 2, v13);
  }
}

uint64_t sub_100051B68()
{
  sub_100004EC0();
  sub_100004F30();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;

  v7 = *(v3 + 16);
  if (v0)
  {
    *(v3 + 96) = v7;
    sub_100005000(v3 + 96, &qword_10008FD70, &qword_10006FD20);
    *(v3 + 104) = *(v3 + 24);
    sub_100005000(v3 + 104, &qword_10008FD70, &qword_10006FD20);
    *(v3 + 64) = *(v3 + 40);
    sub_10000D9BC(v3 + 64);
    sub_100002794();

    return v8(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    *(v3 + 112) = v7;
    sub_100005000(v3 + 112, &qword_10008FD70, &qword_10006FD20);
    *(v3 + 120) = *(v3 + 24);
    sub_100005000(v3 + 120, &qword_10008FD70, &qword_10006FD20);
    *(v3 + 80) = *(v3 + 40);
    sub_10000D9BC(v3 + 80);
    sub_100002794();

    return v19(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_100051D48()
{
  sub_100004680();

  sub_100001D4C();

  return v0();
}

uint64_t sub_100051DA4()
{
  sub_100004680();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v1[17] = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v4 = sub_100009A40();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100051E64()
{
  sub_100002624();
  v1 = **(v0 + 112);
  *(v0 + 160) = v1;
  v2 = *(v1 + 16);
  *(v0 + 168) = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + 120);
    sub_1000051F0();
    sub_100057810(v5 + v6, v7, v8);
    v10 = v4[13];
    v9 = v4[14];
    *(v0 + 64) = v4[12];
    *(v0 + 80) = v10;
    *(v0 + 96) = v9;
    swift_task_alloc();
    sub_100008D5C();
    *(v0 + 176) = v11;
    *v11 = v12;
    v11[1] = sub_100052060;
    v13 = v0 + 64;
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
LABEL_11:

      sub_100004EF4();

      return v25(v2, v3);
    }

    sub_100022FE0();
    *(v0 + 208) = 0;
    *(v0 + 216) = v14;
    if (!*(v0 + 168))
    {
      v23 = v14;
      v24 = type metadata accessor for BackendGroup();
      v2 = sub_100057A08(v24);
      swift_defaultActor_initialize();
      *(v2 + 112) = v23;
      v3 = &off_100087418;
      goto LABEL_11;
    }

    v15 = *(v0 + 120);
    sub_1000051F0();
    sub_100057810(v16 + v17, v18, v19);
    sub_1000579DC(v15[14], v15[13], v15[12]);
    swift_task_alloc();
    sub_100008D5C();
    *(v0 + 224) = v20;
    *v20 = v21;
    v13 = sub_100007C50(v20);
  }

  return sub_100005E6C(v13);
}

uint64_t sub_100052060()
{
  sub_100004EC0();
  sub_100004F30();
  sub_10000FFC4();
  v5 = v4;
  sub_100002928();
  *v6 = v5;
  v7 = *v2;
  sub_1000043E4();
  *v8 = v7;
  v5[23] = v1;

  if (v1)
  {
    sub_1000047C0();
    sub_10005786C(v9, v10);
    sub_1000119F4();
  }

  else
  {
    v5[24] = v0;
    v5[25] = v3;
  }

  sub_100002794();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100052180()
{
  sub_100002624();
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);
  sub_100012808();
  v7 = sub_100056F8C(v3, v2, v4, v1, v5, v6);
  v9 = v8;

  sub_1000047C0();
  sub_10005786C(v2, v10);

  sub_100004EF4();

  return v11(v7, v9);
}

uint64_t sub_100052230()
{
  sub_100004680();

  sub_100001D4C();

  return v0();
}

uint64_t sub_100052294()
{
  sub_100004EC0();
  sub_100004F30();
  sub_10000FFC4();
  v5 = v4;
  sub_100002928();
  *v6 = v5;
  v7 = *v2;
  sub_1000043E4();
  *v8 = v7;
  v5[29] = v1;

  if (v1)
  {

    sub_1000119F4();
  }

  else
  {
    v5[30] = v0;
    v5[31] = v3;
  }

  sub_100002794();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000523B0()
{
  sub_100004EC0();
  sub_100004F30();
  v1 = v0[30];
  v2 = v0[27];
  sub_100012808();
  v8 = sub_100056F8C(v3, v4, v5, v1, v6, v7);
  v10 = v9;

  v11 = *(v2 + 16);
  v12 = v0[27];
  if (v11 >= *(v2 + 24) >> 1)
  {
    sub_100003EEC();
    v12 = v36;
  }

  sub_1000047C0();
  sub_10005786C(v13, v14);
  *(v12 + 16) = v11 + 1;
  v15 = v12 + 16 * v11;
  *(v15 + 32) = v8;
  *(v15 + 40) = v10;
  v16 = v0[26] + 1;
  v0[26] = v16;
  v0[27] = v12;
  if (v16 == v0[21])
  {
    v17 = type metadata accessor for BackendGroup();
    v18 = sub_100057A08(v17);
    swift_defaultActor_initialize();
    *(v18 + 112) = v12;

    sub_100004EF4();
    sub_100002794();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26);
  }

  else
  {
    v28 = v0[15];
    sub_1000051F0();
    sub_100057810(v29, v30, v31);
    sub_1000579DC(v28[14], v28[13], v28[12]);
    swift_task_alloc();
    sub_100008D5C();
    v0[28] = v32;
    *v32 = v33;
    sub_100007C50(v32);
    sub_100002794();

    return sub_100005E6C(v34);
  }
}

uint64_t sub_100052560()
{
  sub_100004680();
  sub_1000047C0();
  sub_10005786C(v0, v1);

  sub_100001D4C();

  return v2();
}

uint64_t sub_1000525D0(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v3[17] = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  type metadata accessor for CachedSession(0);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_1000526D4, v2, 0);
}

uint64_t sub_1000526D4()
{
  sub_100004EC0();
  sub_100004F30();
  v1 = *(v0 + 112);
  v2 = *v1;
  *(v0 + 176) = *v1;
  v3 = *(v2 + 16);
  *(v0 + 184) = v3;
  if (v3 == 1)
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 120);
    sub_100002068();
    sub_100057810(v5, v6, v7);
    sub_1000051F0();
    sub_100057810(v2 + v8, v4, v9);
    v11 = v5[1];
    v10 = v5[2];
    *(v0 + 64) = *v5;
    *(v0 + 80) = v11;
    *(v0 + 96) = v10;
    swift_task_alloc();
    sub_100008D5C();
    *(v0 + 192) = v12;
    *v12 = v13;
    v12[1] = sub_100052908;
  }

  else
  {
    if (!v3)
    {
      goto LABEL_11;
    }

    sub_100022FE0();
    *(v0 + 224) = 0;
    *(v0 + 232) = v14;
    if (!*(v0 + 184))
    {
      v28 = v14;
      v29 = type metadata accessor for BackendGroup();
      v30 = sub_100057A08(v29);
      swift_defaultActor_initialize();
      *(v30 + 112) = v28;
LABEL_11:

      sub_100004EF4();
      sub_100002794();

      return v34(v31, v32, v33, v34, v35, v36, v37, v38);
    }

    v15 = *(v0 + 120);
    sub_1000051F0();
    sub_100057810(v16 + v17, v18, v19);
    sub_100002068();
    v20 = sub_100004EA4();
    sub_100057810(v20, v21, v22);
    sub_1000579DC(v15[2], v15[1], *v15);
    swift_task_alloc();
    sub_100008D5C();
    *(v0 + 240) = v23;
    *v23 = v24;
    sub_100007C50(v23);
  }

  sub_100002794();

  return sub_100005E6C(v25);
}

uint64_t sub_100052908()
{
  sub_100004EC0();
  sub_100004F30();
  sub_10000FFC4();
  v5 = v4;
  sub_100002928();
  *v6 = v5;
  v7 = *v2;
  sub_1000043E4();
  *v8 = v7;
  v5[25] = v1;

  if (v1)
  {
    sub_1000047C0();
    sub_10005786C(v9, v10);
    sub_1000119F4();
  }

  else
  {
    v5[26] = v0;
    v5[27] = v3;
  }

  sub_100002794();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100052A28()
{
  sub_100004EC0();
  sub_100004F30();
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[19];
  sub_100012808();
  sub_100057368(v2, v3, v4, v1, v5, v6);

  sub_1000047C0();
  sub_10005786C(v3, v7);
  sub_100009950();
  sub_10005786C(v2, v8);

  sub_100004EF4();
  sub_100002794();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_100052B00()
{
  sub_100002624();
  sub_100009950();
  sub_10005786C(v0, v1);

  sub_100001D4C();

  return v2();
}

uint64_t sub_100052B8C()
{
  sub_100004EC0();
  sub_100004F30();
  sub_10000FFC4();
  v5 = v4;
  sub_100002928();
  *v6 = v5;
  v7 = *v2;
  sub_1000043E4();
  *v8 = v7;
  v5[31] = v1;

  if (v1)
  {

    sub_1000119F4();
  }

  else
  {
    v5[32] = v0;
    v5[33] = v3;
  }

  sub_100002794();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100052CA8()
{
  sub_100004F30();
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[20];
  sub_100012808();
  v8 = sub_100057368(v3, v4, v5, v1, v6, v7);
  v10 = v9;

  sub_100009950();
  sub_10005786C(v3, v11);
  v12 = *(v2 + 16);
  v13 = v0[29];
  if (v12 >= *(v2 + 24) >> 1)
  {
    sub_100003EEC();
    v13 = v32;
  }

  sub_1000047C0();
  sub_10005786C(v14, v15);
  *(v13 + 16) = v12 + 1;
  v16 = v13 + 16 * v12;
  *(v16 + 32) = v8;
  *(v16 + 40) = v10;
  v17 = v0[28] + 1;
  v0[28] = v17;
  v0[29] = v13;
  if (v17 == v0[23])
  {
    v18 = type metadata accessor for BackendGroup();
    v19 = sub_100057A08(v18);
    swift_defaultActor_initialize();
    *(v19 + 112) = v13;

    sub_100004EF4();

    return v20(v19, &off_100087418);
  }

  else
  {
    v22 = v0[15];
    sub_1000051F0();
    sub_100057810(v23, v24, v25);
    sub_100002068();
    v26 = sub_100004EA4();
    sub_100057810(v26, v27, v28);
    sub_1000579DC(v22[2], v22[1], *v22);
    swift_task_alloc();
    sub_100008D5C();
    v0[30] = v29;
    *v29 = v30;
    v31 = sub_100007C50(v29);

    return sub_100005E6C(v31);
  }
}

uint64_t sub_100052E9C()
{
  sub_100002624();
  v1 = *(v0 + 144);
  sub_100009950();
  sub_10005786C(v2, v3);
  sub_1000047C0();
  sub_10005786C(v1, v4);

  sub_100001D4C();

  return v5();
}

uint64_t sub_100052F38()
{
  sub_1000228D4(&qword_10008EEE8, &unk_10006F660);
  v0 = sub_1000228D4(&qword_10008EEF0, &qword_10006E980);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10006E8F0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = XPC_ACTIVITY_REPEATING;
  *(v4 + v5) = 1;
  type metadata accessor for XPCObject(0);
  swift_storeEnumTagMultiPayload();
  v6 = (v4 + v1);
  v7 = *(v0 + 48);
  *v6 = XPC_ACTIVITY_DELAY;
  *(v6 + v7) = 86400;
  swift_storeEnumTagMultiPayload();
  v8 = (v4 + 2 * v1);
  v9 = *(v0 + 48);
  *v8 = XPC_ACTIVITY_GRACE_PERIOD;
  *(v8 + v9) = 3600;
  swift_storeEnumTagMultiPayload();
  v10 = (v4 + 3 * v1);
  v11 = (v10 + *(v0 + 48));
  *v10 = XPC_ACTIVITY_PRIORITY;
  *v11 = String.init(cString:)();
  v11[1] = v12;
  swift_storeEnumTagMultiPayload();
  v13 = (v4 + 4 * v1);
  v14 = *(v0 + 48);
  *v13 = XPC_ACTIVITY_ALLOW_BATTERY;
  *(v13 + v14) = 0;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_POWER_NAP)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = *(v0 + 48);
  v17 = (v4 + 5 * v1);
  *v17 = XPC_ACTIVITY_POWER_NAP;
  *(v17 + v16) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_RANDOM_INITIAL_DELAY)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = (v4 + 6 * v1);
  v19 = *(v0 + 48);
  *v18 = XPC_ACTIVITY_RANDOM_INITIAL_DELAY;
  *(v18 + v19) = 43200;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = (&v4[v1] - v1);
  v21 = *(v0 + 48);
  *v20 = XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY;
  *(v20 + v21) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = *(v0 + 48);
  v23 = &v4[v1];
  *v23 = XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY;
  *(v23 + v22) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_NETWORK_UPLOAD_SIZE)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = (v4 + 9 * v1);
  v25 = *(v0 + 48);
  *v24 = XPC_ACTIVITY_NETWORK_UPLOAD_SIZE;
  *(v24 + v25) = 5242880;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_EXPECTED_DURATION)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = (v4 + 10 * v1);
  v27 = *(v0 + 48);
  *v26 = XPC_ACTIVITY_EXPECTED_DURATION;
  *(v26 + v27) = XPC_ACTIVITY_INTERVAL_5_MIN;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_GROUP_NAME)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = (v4 + 11 * v1);
  v29 = (v28 + *(v0 + 48));
  *v28 = XPC_ACTIVITY_GROUP_NAME;
  *v29 = 0xD00000000000001DLL;
  v29[1] = 0x8000000100071DE0;
  result = swift_storeEnumTagMultiPayload();
  if (XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT)
  {
    v30 = (v4 + 12 * v1);
    v31 = *(v0 + 48);
    *v30 = XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT;
    *(v30 + v31) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1000228D4(&qword_10008EEF8, &unk_10006F670);
    sub_100038DC4();
    result = Dictionary.init(dictionaryLiteral:)();
    qword_100095AB8 = result;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100053348()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_100095AC0);
  sub_1000050E4(v0, qword_100095AC0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000533BC()
{
  sub_100004680();
  v1[4] = v2;
  v1[5] = v0;
  v3 = type metadata accessor for CachedSession(0);
  sub_100001D80(v3);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v4 = sub_100009A40();

  return _swift_task_switch(v4, v5, v6);
}

void sub_100053448()
{
  sub_100002618();
  v21 = v0;
  if (qword_10008DDB8 != -1)
  {
    sub_100003FB4(&qword_10008DDB8);
  }

  v1 = type metadata accessor for Logger();
  v0[8] = sub_1000050E4(v1, qword_100095AC0);
  sub_100002068();
  v2 = sub_100004EA4();
  sub_100057810(v2, v3, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = sub_1000054D0(v6);
  v8 = v0[7];
  if (v7)
  {
    v9 = sub_100004D20();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    v11 = *(v8 + 48);
    v12 = *(v8 + 56);

    sub_100009950();
    sub_10005786C(v8, v13);
    v14 = sub_1000053A0(v11, v12, &v20);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "sending events for session: %{public}s", v9, 0xCu);
    sub_100005284(v10);
    sub_100003D78();
    sub_100001D1C(v9);
  }

  else
  {

    sub_100009950();
    sub_10005786C(v8, v15);
  }

  v16 = qword_100095AF0;
  v0[9] = qword_100095AF0;
  if (v16)
  {
    sub_100012328();
    v17 = swift_task_alloc();
    v0[10] = v17;
    *v17 = v0;
    v17[1] = sub_100053630;
    v18 = v0[4];

    v19(v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100053630()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  *v4 = *v1;
  v3[11] = v5;
  v3[12] = v6;
  v3[13] = v0;

  if (v0)
  {
    v7 = v3[5];
    v8 = sub_1000542CC;
  }

  else
  {
    v9 = v3[5];

    v8 = sub_10005374C;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_10005374C()
{
  sub_100004F30();
  if (v0[11])
  {
    v4 = qword_100095AD8;
    v0[14] = qword_100095AD8;
    if (v4)
    {

      v5 = swift_task_alloc();
      v0[15] = v5;
      *v5 = v0;
      v6 = sub_100001D9C(v5);

      sub_10003E06C(v6, v7, 0x400000, 50);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = sub_100056A18(v1, v2, v3);
    sub_100004F00(&type metadata for SubmissionError, v8);
    *v9 = 0;
    swift_willThrow();

    sub_100001D4C();

    v10();
  }
}

uint64_t sub_100053880()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  *v4 = *v1;
  v3[16] = v5;
  v3[17] = v0;

  if (v0)
  {
    v6 = v3[5];
    v7 = sub_100054338;
  }

  else
  {
    v8 = v3[5];

    v7 = sub_100053998;
    v6 = v8;
  }

  return _swift_task_switch(v7, v6, 0);
}

void sub_100053998()
{
  v1 = v0[16];
  if (*(v1 + 16))
  {
    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {
      sub_100002068();
      sub_100057810(v10, v11, v12);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      v15 = sub_1000054D0(v14);
      v16 = v0[16];
      v17 = v0[6];
      if (v15)
      {
        v18 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v18 = 134349826;
        *(v18 + 4) = *(v1 + 16);

        *(v18 + 12) = 2080;

        sub_100009950();
        sub_10005786C(v17, v19);
        v20 = sub_10000531C();
        v23 = sub_1000053A0(v20, v21, v22);

        *(v18 + 14) = v23;
        *(v18 + 22) = 2082;
        sub_1000515B0(0x646F6874656D5FLL, 0xE700000000000000, v16);
        Set.description.getter();

        v24 = sub_10000531C();
        v27 = sub_1000053A0(v24, v25, v26);

        *(v18 + 24) = v27;
        *(v18 + 32) = 2082;
        sub_1000515B0(0x7375746174735FLL, 0xE700000000000000, v16);
        v28 = Set.description.getter();
        v30 = v29;

        v31 = sub_1000053A0(v28, v30, &v46);

        *(v18 + 34) = v31;
        _os_log_impl(&_mh_execute_header, v13, v14, "sending %{public}ld events for session %s with categories [%{public}s] types [%{public}s]", v18, 0x2Au);
        swift_arrayDestroy();
        sub_100003D78();
        sub_100001D1C(v18);
      }

      else
      {

        sub_100009950();
        sub_10005786C(v17, v32);
      }

      v33 = *(v1 + 16);
      v0[18] = v33;
      v34 = _swiftEmptyArrayStorage;
      if (v33)
      {
        v35 = v0[16];
        v0[2] = _swiftEmptyArrayStorage;
        sub_10001C5CC(0, v33, 0);
        v34 = v0[2];
        v36 = (v35 + 56);
        do
        {
          v38 = *(v36 - 2);
          v37 = *(v36 - 1);
          v39 = *v36;
          v0[2] = v34;
          v41 = v34[2];
          v40 = v34[3];

          if (v41 >= v40 >> 1)
          {
            sub_10001C5CC((v40 > 1), v41 + 1, 1);
            v34 = v0[2];
          }

          v34[2] = v41 + 1;
          v42 = &v34[3 * v41];
          v42[4] = v38;
          v42[5] = v37;
          v42[6] = v39;
          v36 += 4;
          --v33;
        }

        while (v33);
      }

      v0[19] = v34;
      swift_getObjectType();
      v43 = swift_task_alloc();
      v0[20] = v43;
      *v43 = v0;
      v43[1] = sub_100053E2C;
      sub_1000058EC();

      __asm { BRAA            X3, X16 }
    }

    v5 = sub_100056A18(v2, v3, v4);
    v6 = sub_100004F00(&type metadata for SubmissionError, v5);
    sub_100002668(v6, v7);
    swift_unknownObjectRelease();

    sub_100001D4C();
  }

  else
  {

    swift_unknownObjectRelease();

    sub_100001D4C();
  }

  sub_1000058EC();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100053E2C()
{
  sub_100002624();
  v2 = *v1;
  sub_1000043E4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);

    v5 = sub_1000543B0;
    v6 = v4;
  }

  else
  {

    v5 = sub_1000119F4();
  }

  return _swift_task_switch(v5, v6, 0);
}

void sub_100053F70()
{
  v1 = qword_100095AD8;
  v0[22] = qword_100095AD8;
  if (v1)
  {
    v2 = v0[18];
    v3 = v0[16];
    if (v2)
    {
      v0[3] = _swiftEmptyArrayStorage;

      sub_100060CA4(0, v2, 0);
      v4 = 0;
      v5 = v0[3];
      v6 = (v3 + 32);
      v7 = v5[2];
      do
      {
        v9 = *v6;
        v6 += 4;
        v8 = v9;
        v0[3] = v5;
        v10 = v5[3];
        if (v7 >= v10 >> 1)
        {
          sub_100060CA4((v10 > 1), v7 + 1, 1);
          v5 = v0[3];
        }

        v11 = v0[18];
        ++v4;
        v5[2] = v7 + 1;
        v5[v7++ + 4] = v8;
      }

      while (v4 != v11);
    }

    else
    {

      v5 = _swiftEmptyArrayStorage;
    }

    v0[23] = v5;
    v12 = swift_task_alloc();
    v0[24] = v12;
    *v12 = v0;
    v12[1] = sub_1000540F8;

    sub_10003E188(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000540F8()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
    v7 = *(v3 + 40);
    v8 = sub_100054488;
  }

  else
  {
    v9 = *(v3 + 40);

    v8 = sub_100054210;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_100054210()
{
  v1 = qword_100095AD8;
  *(v0 + 112) = qword_100095AD8;
  if (v1)
  {
    sub_100002624();

    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v3 = sub_100001D9C(v2);

    sub_10003E06C(v3, v4, 0x400000, 50);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000542CC()
{
  sub_100004680();

  sub_100001D4C();

  return v0();
}

uint64_t sub_100054338()
{
  sub_100004680();

  swift_unknownObjectRelease();

  sub_100001D4C();

  return v0();
}

uint64_t sub_1000543B0()
{
  sub_100004F30();
  v1 = *(v0 + 168);
  v2 = static Task<>.isCancelled.getter();
  if (v2)
  {
    v5 = sub_100056A18(v2, v3, v4);
    v6 = sub_100004F00(&type metadata for SubmissionError, v5);
    sub_100002668(v6, v7);
  }

  else
  {
    v8 = sub_100056A18(v2, v3, v4);
    sub_100004F00(&type metadata for SubmissionError, v8);
    *v9 = v1;
    swift_willThrow();
  }

  swift_unknownObjectRelease();

  sub_100001D4C();

  return v10();
}

uint64_t sub_100054488()
{
  sub_100004F30();

  v1 = *(v0 + 200);
  v2 = static Task<>.isCancelled.getter();
  if (v2)
  {
    v5 = sub_100056A18(v2, v3, v4);
    v6 = sub_100004F00(&type metadata for SubmissionError, v5);
    sub_100002668(v6, v7);
  }

  else
  {
    v8 = sub_100056A18(v2, v3, v4);
    sub_100004F00(&type metadata for SubmissionError, v8);
    *v9 = v1;
    swift_willThrow();
  }

  swift_unknownObjectRelease();

  sub_100001D4C();

  return v10();
}

uint64_t sub_100054570()
{
  sub_100004680();
  v1[20] = v0;
  v2 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  sub_100001D80(v2);
  v1[21] = swift_task_alloc();
  v1[22] = *(type metadata accessor for CachedSession(0) - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v3 = sub_100009A40();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000546A8()
{
  if (qword_10008DDB8 != -1)
  {
    sub_100003FB4(&qword_10008DDB8);
  }

  v1 = type metadata accessor for Logger();
  v0[31] = sub_1000050E4(v1, qword_100095AC0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (sub_1000054D0(v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "starting submission activity", v4, 2u);
    sub_100001D1C(v4);
  }

  result = static Task<>.isCancelled.getter();
  if (result)
  {
    result = static Task<>.isCancelled.getter();
    if (result)
    {
      sub_100001E10();

      sub_100001D4C();
      sub_10000B7DC();

      __asm { BRAA            X1, X16 }
    }

    v12 = qword_100095AD8;
    v0[53] = qword_100095AD8;
    if (v12)
    {

      v13 = swift_task_alloc();
      v0[54] = v13;
      *v13 = v0;
      sub_100009BB0(v13);
      sub_10000B7DC();

      return sub_10003EE34(v14);
    }

LABEL_19:
    __break(1u);
    return result;
  }

  v8 = qword_100095AD8;
  v0[32] = qword_100095AD8;
  if (!v8)
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = swift_task_alloc();
  v0[33] = v9;
  *v9 = v0;
  sub_1000090E0(v9);
  sub_10000B7DC();

  return sub_10003DD7C(v10);
}

uint64_t sub_1000548D0()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  *v4 = *v1;
  v3[34] = v5;
  v3[35] = v0;

  if (v0)
  {
    v6 = v3[20];
    v7 = sub_1000559B4;
  }

  else
  {
    v8 = v3[20];

    v7 = sub_1000549E8;
    v6 = v8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000549E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100004CE4();
  sub_100002618();
  v17 = v12[34];
  v18 = *(v17 + 16);
  v12[36] = v18;
  if (!v18)
  {

    goto LABEL_10;
  }

  v12[37] = 0;
  if (!*(v17 + 16))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12[38] = *(v17 + 32);
  v12[39] = *(v17 + 40);

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {

    v32 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100005B68();

    if (os_log_type_enabled(v32, v13))
    {
      sub_100004D20();
      sub_100006FB8();
      sub_10000B9B8();
      *(v14 + 4) = sub_1000579E8(4.8751e-34, v33, v34);
      sub_100015018(&_mh_execute_header, v35, v36, "sending events for client type: %{public}s");
      sub_10000393C();
      sub_100003D78();
    }

    v37 = qword_100095AE8;
    v12[40] = qword_100095AE8;
    if (v37)
    {
      sub_100008F70();
      sub_100004EA4();
      sub_10000C690();

      return _swift_task_switch(v17, v15, v16);
    }

    goto LABEL_25;
  }

  v17 = static Task<>.isCancelled.getter();
  if ((v17 & 1) == 0)
  {
    v19 = qword_100095AD8;
    v12[32] = qword_100095AD8;
    if (v19)
    {

      v20 = swift_task_alloc();
      v12[33] = v20;
      *v20 = v12;
      sub_1000090E0(v20);
      sub_10000C690();

      return sub_10003DD7C(v21);
    }

    goto LABEL_27;
  }

LABEL_10:
  v17 = static Task<>.isCancelled.getter();
  if (v17)
  {
    sub_100001E10();

    sub_100001D4C();
    sub_10000C690();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }

  v39 = qword_100095AD8;
  v12[53] = qword_100095AD8;
  if (!v39)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return _swift_task_switch(v17, v15, v16);
  }

  v40 = swift_task_alloc();
  v12[54] = v40;
  *v40 = v12;
  sub_100009BB0(v40);
  sub_10000C690();

  return sub_10003EE34(v41);
}

uint64_t sub_100054C78()
{
  sub_100004680();
  v1 = v0[20];
  sub_1000055F0(v0[38], v0[39]);

  return _swift_task_switch(sub_100054CEC, v1, 0);
}

void sub_100054CEC()
{
  sub_100004680();
  v1 = qword_100095AD8;
  *(v0 + 328) = qword_100095AD8;

  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 336) = v2;
    *v2 = v0;
    v3 = sub_100007B20(v2);

    sub_10003DA14(v3, v4, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100054D80()
{
  sub_100002624();
  v2 = *v1;
  sub_1000043E4();
  *v3 = v2;
  v4 = *v1;
  sub_100002928();
  *v5 = v4;
  v2[43] = v6;
  v2[44] = v0;

  if (v0)
  {
    v7 = v2[20];

    v8 = sub_10001C194();
    v9 = v7;
  }

  else
  {
    v10 = v2[20];

    v8 = sub_10001C194();
    v9 = v10;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100054ED4()
{
  sub_100004680();
  v3 = static Task<>.isCancelled.getter();
  v4 = v0[43];
  if ((v3 & 1) != 0 || (v5 = *(v4 + 16), (v0[45] = v5) == 0))
  {

    v18 = qword_100095AE8;
    v0[52] = qword_100095AE8;

    if (v18)
    {
      v4 = sub_100055504;
      v1 = v18;
      v2 = 0;

      return _swift_task_switch(v4, v1, v2);
    }

    goto LABEL_17;
  }

  v0[46] = 0;
  if (!*(v4 + 16))
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return _swift_task_switch(v4, v1, v2);
  }

  sub_100002068();
  sub_100057810(v6 + v7, v8, v9);
  if (static Task<>.isCancelled.getter())
  {
    v10 = v0[30];

    sub_100009950();
    v4 = sub_10005786C(v10, v11);
    v12 = qword_100095AD8;
    v0[41] = qword_100095AD8;
    if (v12)
    {

      v13 = swift_task_alloc();
      v0[42] = v13;
      *v13 = v0;
      v14 = sub_100007B20(v13);

      return sub_10003DA14(v14, v15, v16);
    }

    goto LABEL_18;
  }

  v19 = swift_task_alloc();
  v0[47] = v19;
  *v19 = v0;
  sub_1000124D8(v19);

  return sub_1000533BC();
}

uint64_t sub_100055078()
{
  sub_100002624();
  v2 = *v1;
  sub_100002928();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 384) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = sub_100055C90;
  }

  else
  {
    v6 = sub_100055198;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_100055198()
{
  v1 = qword_100095AD8;
  *(v0 + 392) = qword_100095AD8;
  if (v1)
  {
    sub_100002624();

    v2 = swift_task_alloc();
    *(v0 + 400) = v2;
    *v2 = v0;
    v3 = sub_100001D9C(v2);

    sub_10003D550(v3, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005524C()
{
  sub_100002624();
  v2 = *v1;
  sub_1000043E4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 408) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);

    v5 = sub_10001C194();
    v6 = v4;
  }

  else
  {
    v7 = *(v2 + 160);

    v5 = sub_10001C194();
    v6 = v7;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1000553AC()
{
  sub_100004680();
  sub_100009950();
  sub_10005786C(v1, v2);
  v3 = v0[45];
  v4 = v0[46] + 1;
  v0[46] = v4;
  result = v0[43];
  if (v4 == v3)
  {

    goto LABEL_6;
  }

  if (v4 >= *(result + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_100002068();
  sub_100057810(v6, v7, v8);
  if (static Task<>.isCancelled.getter())
  {
    v9 = v0[30];

    sub_100009950();
    result = sub_10005786C(v9, v10);
LABEL_6:
    v11 = qword_100095AD8;
    v0[41] = qword_100095AD8;
    if (v11)
    {

      v12 = swift_task_alloc();
      v0[42] = v12;
      *v12 = v0;
      v13 = sub_100007B20(v12);

      return sub_10003DA14(v13, v14, v15);
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v16 = swift_task_alloc();
  v0[47] = v16;
  *v16 = v0;
  sub_1000124D8(v16);

  return sub_1000533BC();
}

uint64_t sub_100055504()
{
  sub_100002624();
  v1 = v0[20];
  sub_100013D4C(v0[38], v0[39], 0);

  return _swift_task_switch(sub_100055590, v1, 0);
}

uint64_t sub_100055590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100004CE4();
  sub_100002618();
  v18 = v12[36];
  v19 = v12[37] + 1;
  v12[37] = v19;
  v20 = v12[34];
  if (v19 != v18)
  {
    if (v19 >= *(v20 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return _swift_task_switch(v15, v16, v17);
    }

    v21 = v20 + 16 * v19;
    v12[38] = *(v21 + 32);
    v12[39] = *(v21 + 40);

    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {

      v35 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_100005B68();

      if (os_log_type_enabled(v35, v13))
      {
        sub_100004D20();
        sub_100006FB8();
        sub_10000B9B8();
        *(v14 + 4) = sub_1000579E8(4.8751e-34, v36, v37);
        sub_100015018(&_mh_execute_header, v38, v39, "sending events for client type: %{public}s");
        sub_10000393C();
        sub_100003D78();
      }

      v40 = qword_100095AE8;
      v12[40] = qword_100095AE8;
      if (v40)
      {
        sub_100008F70();
        sub_100004EA4();
        sub_10000C690();

        return _swift_task_switch(v15, v16, v17);
      }

      goto LABEL_26;
    }
  }

  v15 = static Task<>.isCancelled.getter();
  if (v15)
  {
    v15 = static Task<>.isCancelled.getter();
    if (v15)
    {
      sub_100001E10();

      sub_100001D4C();
      sub_10000C690();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
    }

    v42 = qword_100095AD8;
    v12[53] = qword_100095AD8;
    if (v42)
    {

      v43 = swift_task_alloc();
      v12[54] = v43;
      *v43 = v12;
      sub_100009BB0(v43);
      sub_10000C690();

      return sub_10003EE34(v44);
    }

    goto LABEL_27;
  }

  v31 = qword_100095AD8;
  v12[32] = qword_100095AD8;
  if (!v31)
  {
    goto LABEL_25;
  }

  v32 = swift_task_alloc();
  v12[33] = v32;
  *v32 = v12;
  sub_1000090E0(v32);
  sub_10000C690();

  return sub_10003DD7C(v33);
}

uint64_t sub_100055828()
{
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  *(v3 + 440) = v0;

  if (!v0)
  {

    sub_100001D4C();
    sub_10000B7DC();

    __asm { BRAA            X1, X16 }
  }

  sub_100016754();
  sub_10000B7DC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000559B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_100004CE4();
  a19 = v24;
  a20 = v25;
  sub_100002618();
  a18 = v20;

  swift_errorRetain();
  v26 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100005B68();

  if (os_log_type_enabled(v26, v21))
  {
    sub_100004D20();
    sub_100006FB8();
    sub_10000B9B8();
    sub_1000105B8(4.8149e-34);
    v27 = Error.localizedDescription.getter();
    sub_1000053A0(v27, v28, &a10);
    sub_100003ED4();
    *(v22 + 4) = v23;
    sub_10000443C(&_mh_execute_header, v29, v30, "error running submission: %s");
    sub_10000393C();
    sub_100003D78();
  }

  else
  {
  }

  sub_100001E10();

  sub_100001D4C();
  sub_10000C690();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_100055AFC()
{
  sub_100002618();
  v15 = v0;
  v4 = *(v0 + 312);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100005B68();

  if (!os_log_type_enabled(v5, v1))
  {

    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_100004D20();
  v14 = sub_100006FB8();
  sub_1000105B8(4.8149e-34);
  v6 = Error.localizedDescription.getter();
  sub_1000053A0(v6, v7, &v14);
  sub_100003ED4();
  *(v2 + 4) = v3;
  sub_10000443C(&_mh_execute_header, v8, v9, "error running submission: %s");
  sub_10000393C();
  sub_100003D78();

  if (v4)
  {
LABEL_5:
    v10 = type metadata accessor for TaskPriority();
    sub_1000132BC(v10);
    v11 = swift_allocObject();
    sub_10000BC3C(v11);
  }

LABEL_6:
  sub_100001E10();

  sub_100001D4C();

  return v12();
}

void sub_100055C90()
{
  v101 = v0;
  v0[15] = v0[48];
  swift_errorRetain();
  sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
  if (swift_dynamicCast())
  {

    v1 = v0[16];
    v2 = v0[30];
    if (v1)
    {
      if (v1 == 1)
      {
        sub_100002068();
        sub_100057810(v2, v3, v4);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.error.getter();
        v7 = sub_1000054D0(v6);
        v8 = v0[29];
        if (v7)
        {
          v9 = sub_100004D20();
          v10 = swift_slowAlloc();
          v100 = v10;
          *v9 = 136446210;
          v11 = *(v8 + 48);
          v12 = *(v8 + 56);

          sub_100009950();
          sub_10005786C(v8, v13);
          v14 = sub_1000053A0(v11, v12, &v100);

          *(v9 + 4) = v14;
          _os_log_impl(&_mh_execute_header, v5, v6, "submission activity cancelled while session %{public}s was in-flight; some events will not be sent", v9, 0xCu);
          sub_100005284(v10);
          v15 = v10;
LABEL_11:
          sub_100001D1C(v15);
          sub_100001D1C(v9);

LABEL_18:

          goto LABEL_19;
        }

        sub_100009950();
        v91 = v8;
      }

      else
      {
        sub_100002068();
        sub_100057810(v2, v75, v76);
        swift_errorRetain();
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.error.getter();
        sub_100056A08(v1);
        v79 = os_log_type_enabled(v77, v78);
        v80 = v0[24];
        if (v79)
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v100 = v82;
          *v81 = 136446466;
          v84 = *(v80 + 48);
          v83 = *(v80 + 56);

          sub_100009950();
          sub_10005786C(v80, v85);
          v86 = sub_1000053A0(v84, v83, &v100);

          *(v81 + 4) = v86;
          *(v81 + 12) = 2082;
          swift_getErrorValue();
          v87 = Error.localizedDescription.getter();
          v89 = sub_1000053A0(v87, v88, &v100);

          *(v81 + 14) = v89;
          _os_log_impl(&_mh_execute_header, v77, v78, "failed to send events for session %{public}s: %{public}s", v81, 0x16u);
          swift_arrayDestroy();
          sub_100001D1C(v82);
          sub_100001D1C(v81);
          sub_100056A08(v1);

          goto LABEL_18;
        }

        sub_100056A08(v1);

        sub_100009950();
        v91 = v80;
      }
    }

    else
    {
      v33 = v0[27];
      v35 = v0[25];
      v34 = v0[26];
      sub_100057810(v0[30], v0[28], type metadata accessor for CachedSession);
      sub_100057810(v2, v33, type metadata accessor for CachedSession);
      sub_100057810(v2, v34, type metadata accessor for CachedSession);
      sub_100057810(v2, v35, type metadata accessor for CachedSession);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      v38 = sub_1000054D0(v37);
      v40 = v0[27];
      v39 = v0[28];
      v41 = v0[25];
      v42 = v0[26];
      if (v38)
      {
        v9 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v100 = v99;
        *v9 = 136446978;
        v97 = v37;
        log = v36;
        v44 = *(v39 + 48);
        v43 = *(v39 + 56);

        sub_10005786C(v39, type metadata accessor for CachedSession);
        v45 = sub_1000053A0(v44, v43, &v100);

        *(v9 + 4) = v45;
        *(v9 + 12) = 2082;

        v46 = sub_10000531C();
        v48 = sub_10005786C(v46, v47);
        v56 = sub_10000CE68(v48, v49, v50, v51, v52, v53, v54, v55);

        *(v9 + 14) = v56;
        *(v9 + 22) = 2082;

        v57 = sub_10005786C(v42, type metadata accessor for CachedSession);
        v65 = sub_10000CE68(v57, v58, v59, v60, v61, v62, v63, v64);

        *(v9 + 24) = v65;
        *(v9 + 32) = 2082;

        v66 = sub_10005786C(v41, type metadata accessor for CachedSession);
        v74 = sub_10000CE68(v66, v67, v68, v69, v70, v71, v72, v73);

        *(v9 + 34) = v74;
        v5 = log;
        _os_log_impl(&_mh_execute_header, log, v97, "no backend available for session %{public}s - %{public}s:%{public}s:%{public}s", v9, 0x2Au);
        swift_arrayDestroy();
        v15 = v99;
        goto LABEL_11;
      }

      sub_10005786C(v41, type metadata accessor for CachedSession);
      sub_10005786C(v42, type metadata accessor for CachedSession);
      sub_10005786C(v40, type metadata accessor for CachedSession);
      v91 = v39;
      v90 = type metadata accessor for CachedSession;
    }

    sub_10005786C(v91, v90);
    goto LABEL_18;
  }

  v16 = v0[30];
  v17 = v0[23];

  sub_100002068();
  sub_100057810(v16, v17, v18);
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[23];
  if (v21)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v100 = v24;
    *v23 = 136446466;
    v26 = *(v22 + 48);
    v25 = *(v22 + 56);

    sub_100009950();
    sub_10005786C(v22, v27);
    v28 = sub_1000053A0(v26, v25, &v100);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2082;
    swift_getErrorValue();
    v29 = Error.localizedDescription.getter();
    v31 = sub_1000053A0(v29, v30, &v100);

    *(v23 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v19, v20, "failed to process events for session %{public}s: %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    sub_100001D1C(v24);
    sub_100001D1C(v23);
  }

  else
  {

    sub_100009950();
    sub_10005786C(v22, v32);
  }

LABEL_19:
  v92 = qword_100095AD8;
  v0[49] = qword_100095AD8;
  if (v92)
  {

    v93 = swift_task_alloc();
    v0[50] = v93;
    *v93 = v0;
    sub_100001D9C(v93);
    sub_1000058EC();

    sub_10003D550(v94, v95);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000563A8()
{
  sub_100002618();
  v17 = v0;
  sub_100009950();
  sub_10005786C(v4, v5);
  v6 = *(v0 + 312);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100005B68();

  if (!os_log_type_enabled(v7, v1))
  {

    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_100004D20();
  v16 = sub_100006FB8();
  sub_1000105B8(4.8149e-34);
  v8 = Error.localizedDescription.getter();
  sub_1000053A0(v8, v9, &v16);
  sub_100003ED4();
  *(v2 + 4) = v3;
  sub_10000443C(&_mh_execute_header, v10, v11, "error running submission: %s");
  sub_10000393C();
  sub_100003D78();

  if (v6)
  {
LABEL_5:
    v12 = type metadata accessor for TaskPriority();
    sub_1000132BC(v12);
    v13 = swift_allocObject();
    sub_10000BC3C(v13);
  }

LABEL_6:
  sub_100001E10();

  sub_100001D4C();

  return v14();
}

uint64_t sub_100056548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_100004CE4();
  a19 = v23;
  a20 = v24;
  sub_100002618();
  a18 = v20;

  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    sub_100004D20();
    sub_100006FB8();
    sub_10000B9B8();
    *v21 = 136446210;
    swift_getErrorValue();
    v27 = Error.localizedDescription.getter();
    sub_1000053A0(v27, v28, &a10);
    sub_100003ED4();
    *(v21 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v25, v26, "failed to cleanup DB: %{public}s", v21, 0xCu);
    sub_10000393C();
    sub_100003D78();
  }

  else
  {
  }

  sub_100001E10();

  sub_100001D4C();
  sub_10000C690();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_1000566E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100010C30;

  return sub_100054570();
}

double sub_10005676C()
{
  if (qword_10008DDB0 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_1000567DC(uint64_t a1)
{
  result = sub_100056804();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100056804()
{
  result = qword_10008FAD8;
  if (!qword_10008FAD8)
  {
    type metadata accessor for SubmitEventsActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FAD8);
  }

  return result;
}

uint64_t sub_100056858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100056878, 0, 0);
}

uint64_t sub_100056878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = qword_100095AE8;
  *(v3 + 32) = qword_100095AE8;
  if (v4)
  {
    sub_100004680();

    a1 = sub_100004EA4();
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1000568F0()
{
  sub_100004680();
  sub_100013D4C(*(v0 + 16), *(v0 + 24), 0);

  sub_100001D4C();

  return v1();
}

uint64_t sub_100056958()
{
  sub_100004EC0();
  sub_100004F30();
  swift_task_alloc();
  sub_100008D5C();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_100010C30;
  sub_100002794();

  return sub_100056858(v3, v4, v5, v6, v7);
}

unint64_t sub_100056A08(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_100056A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008FAE0;
  if (!qword_10008FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FAE0);
  }

  return result;
}

uint64_t sub_100056ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_100056B44(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  type metadata accessor for CachedSession(0);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  sub_100057810(a1, v5, type metadata accessor for CachedSession);

  return _swift_task_switch(sub_100056BFC, a2, 0);
}

uint64_t sub_100056BFC()
{
  sub_100002624();
  v1 = v0[3];
  v2 = *v1;
  v3 = v1[1];

  sub_100009950();
  sub_10005786C(v1, v4);
  v5 = sub_10000DD08(v2, v3);
  v7 = v6;

  v0[4] = v7;
  if (v7)
  {
    v8 = v0[2];
    v0[5] = v5;
    v0[6] = *(v8 + 128);
    v9 = sub_100016754();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    v12 = sub_100017614();

    return v13(v12);
  }
}

uint64_t sub_100056CE0()
{
  sub_100002624();
  v1 = *(v0 + 16);
  *(v0 + 64) = sub_10000EDCC() & 1;

  return _swift_task_switch(sub_100056D68, v1, 0);
}

uint64_t sub_100056D68()
{
  sub_100004680();
  if (*(v0 + 64))
  {

    v1 = sub_100017614();

    return v2(v1);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = sub_100056E30;

    return sub_10000D028();
  }
}

uint64_t sub_100056E30()
{
  sub_100004680();
  sub_100003B0C();
  sub_100009A8C();
  *v2 = v1;
  v3 = *v0;
  sub_1000043E4();
  *v4 = v3;
  *(v6 + 65) = v5;

  v7 = sub_100009A40();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100056F28()
{
  sub_100004680();
  v1 = *(v0 + 65);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100056F8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  sub_100003C44();
  v13 = __chkstk_darwin(v12);
  v15 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v50[-v16];
  v18 = type metadata accessor for SessionConfiguration.Backend(0);
  v19 = sub_100001D80(v18);
  __chkstk_darwin(v19);
  v21 = &v50[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000051F0();
  v22 = sub_10000531C();
  sub_100057810(v22, v23, v24);
  sub_10004FC08(v21, v17);
  sub_100057810(v17, v15, type metadata accessor for SessionConfiguration.BackendHTTP);
  sub_100043198(a5, v56);
  type metadata accessor for BackendHTTP(0);
  v25 = swift_allocObject();
  swift_defaultActor_initialize();
  v26 = (v25 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_clientID);
  *v26 = a3;
  v26[1] = a4;
  *(v25 + 112) = a6;
  v27 = v11[6];
  v28 = OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_url;
  type metadata accessor for URL();
  sub_100003C44();
  (*(v29 + 16))(v25 + v28, &v15[v27]);
  sub_100009658(v56, v25 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_target);
  v31 = a1[14];
  v30 = a1[15];
  v32 = a1[25];
  v54 = a1[24];
  v55 = v31;
  v33 = a1[26];
  v34 = a1[27];
  v35 = a1[28];
  v36 = a1[29];
  v52 = v35;
  v53 = v33;
  v51 = v15[v11[8]];
  v37 = qword_10008DDC0;
  v38 = v30;

  if (v37 != -1)
  {
    swift_once();
  }

  if (byte_100095B00 == 1)
  {
    if (qword_10008DDD8 != -1)
    {
      swift_once();
    }

    v39 = byte_100095B11;
    sub_100005284(v56);
    sub_100003E30();
    sub_10005786C(v17, v40);
    v41 = 5;
    if (!v39)
    {
      v41 = 1;
    }
  }

  else
  {
    sub_100005284(v56);
    sub_100003E30();
    sub_10005786C(v17, v42);
    v41 = 0;
  }

  v43 = v25 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_extraHeaders;
  *v43 = v41;
  v44 = v53;
  *(v43 + 8) = v54;
  *(v43 + 16) = v32;
  *(v43 + 24) = v44;
  *(v43 + 32) = v34;
  *(v43 + 40) = v52;
  *(v43 + 48) = v36;
  *(v43 + 56) = v51;
  *(v43 + 64) = v55;
  *(v43 + 72) = v38;
  *(v25 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_filters) = *&v15[v11[7]];
  v45 = *(v15 + 1);
  v46 = (v25 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_name);
  *v46 = *v15;
  v46[1] = v45;
  *(v25 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_samplingThreshold) = *(v15 + 2);
  *(v25 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_allowedCategories) = *&v15[v11[9]];
  *(v25 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_deniedCategories) = *&v15[v11[10]];
  v47 = v15[v11[11]];

  sub_100003E30();
  sub_10005786C(v15, v48);
  *(v25 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_skipLogging) = v47;
  return v25;
}

uint64_t sub_100057368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v47 = a4;
  v48 = a3;
  v10 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = type metadata accessor for SessionConfiguration.Backend(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CachedSession(0);
  __chkstk_darwin(v19 - 8);
  v21 = (&v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100057810(a1, v21, type metadata accessor for CachedSession);
  sub_100057810(a2, v18, type metadata accessor for SessionConfiguration.Backend);
  sub_10004FC08(v18, v15);
  v49 = v15;
  sub_100057810(v15, v13, type metadata accessor for SessionConfiguration.BackendHTTP);
  sub_100043198(a5, v50);
  type metadata accessor for BackendHTTP(0);
  v22 = swift_allocObject();
  swift_defaultActor_initialize();
  v23 = (v22 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_clientID);
  v24 = v47;
  *v23 = v48;
  v23[1] = v24;
  *(v22 + 112) = a6;
  v25 = v10[6];
  v26 = OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_url;
  v27 = type metadata accessor for URL();
  (*(*(v27 - 8) + 16))(v22 + v26, &v13[v25], v27);
  sub_100009658(v50, v22 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_target);
  v28 = v21[7];
  v48 = v21[6];
  v29 = *v21;
  v30 = v21[1];
  v31 = v21[3];
  v45 = v21[2];
  v46 = v29;
  v32 = v21[5];
  v44 = v21[4];
  v33 = v28;

  sub_10005786C(v21, type metadata accessor for CachedSession);
  v34 = v13[v10[8]];
  if (qword_10008DDC0 != -1)
  {
    swift_once();
  }

  if (byte_100095B00 == 1)
  {
    if (qword_10008DDD8 != -1)
    {
      swift_once();
    }

    v35 = byte_100095B11;
    sub_100005284(v50);
    sub_10005786C(v49, type metadata accessor for SessionConfiguration.BackendHTTP);
    v36 = 5;
    if (!v35)
    {
      v36 = 1;
    }
  }

  else
  {
    sub_100005284(v50);
    sub_10005786C(v49, type metadata accessor for SessionConfiguration.BackendHTTP);
    v36 = 0;
  }

  v37 = v22 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_extraHeaders;
  *v37 = v36;
  v38 = v45;
  *(v37 + 8) = v46;
  *(v37 + 16) = v30;
  *(v37 + 24) = v38;
  *(v37 + 32) = v31;
  *(v37 + 40) = v44;
  *(v37 + 48) = v32;
  *(v37 + 56) = v34;
  *(v37 + 64) = v48;
  *(v37 + 72) = v33;
  *(v22 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_filters) = *&v13[v10[7]];
  v39 = *(v13 + 1);
  v40 = (v22 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_name);
  *v40 = *v13;
  v40[1] = v39;
  *(v22 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_samplingThreshold) = *(v13 + 2);
  *(v22 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_allowedCategories) = *&v13[v10[9]];
  *(v22 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_deniedCategories) = *&v13[v10[10]];
  v41 = v13[v10[11]];

  sub_10005786C(v13, type metadata accessor for SessionConfiguration.BackendHTTP);
  *(v22 + OBJC_IVAR____TtC13rtcreportingd11BackendHTTP_skipLogging) = v41;
  return v22;
}

uint64_t sub_100057810(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003C44();
  v4 = sub_100004EA4();
  v5(v4);
  return a2;
}

uint64_t sub_10005786C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003C44();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000578C4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000578E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005793C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_100057998(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1000579DC(__n128 a1, __n128 a2, __n128 a3)
{
  v3[1] = a3;
  v3[2] = a2;
  v3[3] = a1;
}

unint64_t sub_1000579E8(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_1000053A0(v4, v3, va);
}

uint64_t sub_100057A08(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100057A20()
{
  result = os_variant_has_internal_diagnostics();
  byte_100095B00 = result;
  return result;
}

id sub_100057A48()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  result = sub_100059C94(0xD000000000000016, 0x8000000100072D10);
  if (result)
  {
    qword_100095B08 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100057AA0()
{
  if (qword_10008DDC8 != -1)
  {
    sub_100009968(&qword_10008DDC8);
  }

  v0 = qword_100095B08;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  byte_100095B10 = v2;
}

void sub_100057B3C()
{
  if (qword_10008DDC8 != -1)
  {
    sub_100009968(&qword_10008DDC8);
  }

  v0 = qword_100095B08;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = qword_100095B08;
    v5 = sub_100007B50();
    v6 = [v4 integerForKey:v5];

    v3 = v6 == 5;
  }

  byte_100095B11 = v3;
}

void sub_100057C20()
{
  if (qword_10008DDC0 != -1)
  {
    swift_once();
  }

  if (byte_100095B00 == 1)
  {
    if (qword_10008DDC8 != -1)
    {
      sub_100009968(&qword_10008DDC8);
    }

    v0 = qword_100095B08;
    v1 = String._bridgeToObjectiveC()();
    v2 = [v0 BOOLForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  byte_100095B12 = v2;
}

void sub_100057D04()
{
  v36 = type metadata accessor for Logger();
  v0 = *(v36 - 8);
  __chkstk_darwin(v36);
  v2 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - v4;
  v6 = String._bridgeToObjectiveC()();
  _CFPreferencesSetBackupDisabled();

  v7 = type metadata accessor for TaskPriority();
  sub_1000026BC(v5, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_10005A254(0, 0, v5, &unk_10006FDE8, v9);

  v41 = &_swiftEmptySetSingleton;
  if (qword_10008DDD0 != -1)
  {
    swift_once();
  }

  if (byte_100095B10 == 1)
  {
    sub_100015F14(&v39, 0xD000000000000011, 0x8000000100072CF0);
  }

  if (qword_10008DDC8 != -1)
  {
    sub_100009968(&qword_10008DDC8);
  }

  v10 = qword_100095B08;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 BOOLForKey:v11];

  if (v12)
  {
    sub_100003B90();
  }

  v13 = qword_100095B08;
  v14 = sub_100007B50();
  v15 = [v13 valueForKey:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100024360(&v39);
    sub_100015F14(&v39, 0xD000000000000013, 0x8000000100072D50);
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    sub_100024360(&v39);
  }

  if (qword_10008DDD8 != -1)
  {
    swift_once();
  }

  if (byte_100095B11 == 1)
  {
    sub_100015F14(&v39, 0x6976654474736574, 0xEA00000000006563);
  }

  v16 = qword_100095B08;
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 valueForKey:v17];

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100024360(&v39);
    sub_100003B90();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    sub_100024360(&v39);
  }

  if (qword_10008DDE0 != -1)
  {
    swift_once();
  }

  if (byte_100095B12 == 1)
  {
    sub_100015F14(&v39, 0xD000000000000014, 0x8000000100072D30);
  }

  Logger.init()();
  v19 = v41;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = v23;
    *v22 = 136315138;
    if (v19[2])
    {
      *&v39 = 0x6769666E6F632820;
      *(&v39 + 1) = 0xEA0000000000203ALL;
      v37 = v19;

      sub_1000228D4(&qword_10008FAE8, &qword_10006FDF0);
      v26 = sub_100059DCC();
      sub_10001F5A8(v26, v27, v28);
      v29 = Sequence<>.joined(separator:)();
      v31 = v30;

      v32._countAndFlagsBits = v29;
      v32._object = v31;
      String.append(_:)(v32);

      v33._countAndFlagsBits = 41;
      v33._object = 0xE100000000000000;
      String.append(_:)(v33);
      v25 = *(&v39 + 1);
      v24 = v39;
    }

    else
    {
      v24 = 0;
      v25 = 0xE000000000000000;
    }

    v34 = sub_1000053A0(v24, v25, &v38);

    *(v22 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v20, v21, "starting rtcreportingd%s", v22, 0xCu);
    sub_100005284(v23);
    sub_100001D1C(v23);
    sub_100001D1C(v22);
  }

  (*(v0 + 8))(v2, v36);
  dispatch_main();
}

uint64_t sub_100058360()
{
  v1 = type metadata accessor for URL();
  v0[8] = v1;
  v0[9] = *(v1 - 8);
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  type metadata accessor for SQLiteDB.Location(0);
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v0[14] = v2;
  v0[15] = *(v2 - 8);
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v0[18] = type metadata accessor for MainActor();
  v0[19] = static MainActor.shared.getter();
  type metadata accessor for TransparencyLog();
  swift_allocObject();
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_100058550;

  return sub_100028AE8();
}

uint64_t sub_100058550()
{
  sub_100005464();
  v3 = v2;
  v4 = *v1;
  sub_1000043E4();
  *v5 = v4;
  *v5 = *v1;

  if (v0)
  {

    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = sub_1000587CC;
  }

  else
  {
    *(v4 + 168) = v3;
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = sub_100058700;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100058700()
{
  sub_100004680();
  qword_100095AF8 = v0[21];

  v0[22] = type metadata accessor for DiskCache();
  swift_allocObject();
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  sub_100005208(v1);

  return sub_10003BBDC();
}

uint64_t sub_1000587CC()
{
  sub_100004680();
  qword_100095AF8 = 0;

  *(v0 + 176) = type metadata accessor for DiskCache();
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  sub_100005208(v1);

  return sub_10003BBDC();
}

uint64_t sub_100058894()
{
  sub_100005464();
  v3 = v2;
  v4 = *v1;
  sub_1000043E4();
  *v5 = v4;
  *v5 = *v1;
  v4[24] = v0;

  if (v0)
  {
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v4[26] = v6;
    v4[27] = v7;
    v8 = v6;
    v9 = v7;
    v10 = sub_100058BEC;
    v11 = v8;
  }

  else
  {
    v4[25] = v3;
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
    v10 = sub_100058A64;
    v11 = v12;
    v9 = v14;
  }

  return _swift_task_switch(v10, v11, v9);
}

uint64_t sub_100058A64()
{
  v1 = v0[25];
  v0[28] = v1;
  qword_100095AD8 = v1;

  v3 = qword_100095AF8 == 0;
  v2 = qword_100095AD8;
  v0[29] = qword_100095AF8;
  v0[30] = v2;
  v3 = v3 || v2 == 0;
  if (v3)
  {
    Logger.init()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (sub_100007C60(v5))
    {
      v6 = sub_10001196C();
      sub_100004FC0(v6);
      sub_100009108(&_mh_execute_header, v7, v8, "reporting disabled due to startup failure");
      sub_100004664();
    }

    v9 = sub_100001E34();
    v10(v9);
  }

  type metadata accessor for SubmissionCoordinator();
  swift_allocObject();
  v11 = sub_100042FF0();
  sub_1000029E0(v11);
  type metadata accessor for SessionCoordinator();
  swift_allocObject();
  v12 = swift_task_alloc();
  v0[31] = v12;
  *v12 = v0;
  sub_100002080(v12);

  return sub_100033B9C();
}

void sub_100058BEC()
{
  v37 = v0;
  *(v0 + 40) = *(v0 + 192);
  swift_errorRetain();
  sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
  if (!swift_dynamicCast() || (*(v0 + 352) & 1) == 0)
  {
    Logger.init()();
    swift_errorRetain();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 120);
      v35 = *(v0 + 128);
      v4 = *(v0 + 112);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v36 = v6;
      *v5 = 136446210;
      swift_getErrorValue();
      v7 = Error.localizedDescription.getter();
      v9 = sub_1000053A0(v7, v8, &v36);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v1, v2, "failed to open database file: %{public}s", v5, 0xCu);
      sub_100005284(v6);
      sub_100001D1C(v6);
      sub_100001D1C(v5);

      (*(v3 + 8))(v35, v4);
    }

    else
    {
      v11 = *(v0 + 120);
      v10 = *(v0 + 128);
      v12 = *(v0 + 112);

      (*(v11 + 8))(v10, v12);
    }
  }

  sub_10003B5C8(0, *(v0 + 104));
  v15 = *(v0 + 96);
  v16 = *(v0 + 64);
  sub_1000234A4(*(v0 + 104), v15);
  v17 = sub_100002694(v15, 1, v16);
  if (v17 == 1)
  {
    sub_100059E30(*(v0 + 96));
    _assertionFailure(_:_:file:line:flags:)();
    sub_10000BF1C();
  }

  else
  {
    v18 = *(v0 + 80);
    v19 = *(v0 + 64);
    v20 = *(v0 + 72);
    (*(v20 + 32))(*(v0 + 88), *(v0 + 96), v19);
    v21 = [objc_opt_self() defaultManager];
    URL.deletingLastPathComponent()();
    URL._bridgeToObjectiveC()(v22);
    v24 = v23;
    v25 = *(v20 + 8);
    *(v0 + 312) = v25;
    *(v0 + 320) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v25(v18, v19);
    *(v0 + 48) = 0;
    v26 = [v21 removeItemAtURL:v24 error:v0 + 48];

    v27 = *(v0 + 48);
    if (!v26)
    {
      v31 = *(v0 + 104);
      v32 = *(v0 + 88);
      v33 = *(v0 + 64);
      v34 = v27;

      _convertNSErrorToError(_:)();

      swift_willThrow();

      v25(v32, v33);
      sub_100059E30(v31);

      sub_100001D4C();
      sub_10000BF1C();

      __asm { BRAA            X1, X16 }
    }

    swift_allocObject();
    v28 = v27;
    v29 = swift_task_alloc();
    *(v0 + 328) = v29;
    *v29 = v0;
    v29[1] = sub_100059620;
    sub_10000BF1C();

    sub_10003BBDC();
  }
}

uint64_t sub_1000590BC()
{
  v6 = *v0;
  sub_1000043E4();
  *v1 = v6;
  v6[32] = v2;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[33] = v3;
  v6[34] = v4;

  return _swift_task_switch(sub_10005922C, v3, v4);
}

uint64_t sub_10005922C()
{
  sub_100005464();
  if (v0[29])
  {
    v1 = v0[30] == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  qword_100095AE8 = v0[32];

  type metadata accessor for Listener();
  swift_allocObject();
  qword_100095AE0 = sub_10006180C(v2);

  if (qword_10008DDA0 != -1)
  {
    swift_once();
  }

  v3 = qword_100095AA8;
  v0[35] = qword_100095AA8;
  v4 = sub_100059CFC(v3);
  v0[36] = v4;
  if (!v4)
  {
    sub_1000039F4();

    sub_100001D4C();
    sub_100008E70();

    __asm { BRAA            X1, X16 }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  v0[37] = 0;
  if ((v0[35] & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
  }

  sub_1000044EC();
  sub_100008E70();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100059420()
{
  sub_100004680();
  if (v0[29])
  {
    v1 = v0[30] == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  sub_1000490A4(v2);
  v3 = v0[33];
  v4 = v0[34];

  return _swift_task_switch(sub_1000594BC, v3, v4);
}

uint64_t sub_1000594BC()
{
  sub_100005464();
  v1 = v0[37];
  v2 = v0[36];

  if (v1 + 1 == v2)
  {
    sub_1000039F4();

    sub_100001D4C();
    sub_100008E70();

    __asm { BRAA            X1, X16 }
  }

  ++v0[37];
  if ((v0[35] & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
  }

  sub_1000044EC();
  sub_100008E70();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100059620(uint64_t a1)
{
  v4 = *v2;
  sub_1000043E4();
  *v5 = v4;
  v4[42] = v1;

  if (v1)
  {
    v6 = v4[26];
    v7 = v4[27];
    v8 = sub_100059920;
  }

  else
  {
    v4[43] = a1;
    v6 = v4[26];
    v7 = v4[27];
    v8 = sub_100059768;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100059768()
{
  sub_100005464();
  v1 = v0[43];

  v2 = v0[39];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[8];

  v2(v4, v5);
  sub_100059E30(v3);
  v0[28] = v1;
  qword_100095AD8 = v1;

  v7 = qword_100095AF8 == 0;
  v6 = qword_100095AD8;
  v0[29] = qword_100095AF8;
  v0[30] = v6;
  v7 = v7 || v6 == 0;
  if (v7)
  {
    Logger.init()();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (sub_100007C60(v9))
    {
      v10 = sub_10001196C();
      sub_100004FC0(v10);
      sub_100009108(&_mh_execute_header, v11, v12, "reporting disabled due to startup failure");
      sub_100004664();
    }

    v13 = sub_100001E34();
    v14(v13);
  }

  type metadata accessor for SubmissionCoordinator();
  swift_allocObject();
  v15 = sub_100042FF0();
  sub_1000029E0(v15);
  type metadata accessor for SessionCoordinator();
  swift_allocObject();
  v16 = swift_task_alloc();
  v0[31] = v16;
  *v16 = v0;
  sub_100002080(v16);

  return sub_100033B9C();
}

uint64_t sub_100059920()
{
  sub_100059AD8(*(v0 + 336));

  v1 = *(v0 + 104);
  (*(v0 + 312))(*(v0 + 88), *(v0 + 64));
  sub_100059E30(v1);
  *(v0 + 224) = 0;
  qword_100095AD8 = 0;

  v3 = qword_100095AF8 == 0;
  v2 = qword_100095AD8;
  *(v0 + 232) = qword_100095AF8;
  *(v0 + 240) = v2;
  v3 = v3 || v2 == 0;
  if (v3)
  {
    Logger.init()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (sub_100007C60(v5))
    {
      v6 = sub_10001196C();
      sub_100004FC0(v6);
      sub_100009108(&_mh_execute_header, v7, v8, "reporting disabled due to startup failure");
      sub_100004664();
    }

    v9 = sub_100001E34();
    v10(v9);
  }

  type metadata accessor for SubmissionCoordinator();
  swift_allocObject();
  v11 = sub_100042FF0();
  sub_1000029E0(v11);
  type metadata accessor for SessionCoordinator();
  swift_allocObject();
  v12 = swift_task_alloc();
  *(v0 + 248) = v12;
  *v12 = v0;
  sub_100002080(v12);

  return sub_100033B9C();
}

uint64_t sub_100059AD8(uint64_t a1)
{
  type metadata accessor for Logger();
  sub_10000CDD0();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init()();
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_1000053A0(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "failed to create disk cache: %{public}s", v9, 0xCu);
    sub_100005284(v10);
    sub_100001D1C(v10);
    sub_100001D1C(v9);
  }

  return (*(v3 + 8))(v6, v1);
}

id sub_100059C94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

uint64_t sub_100059CFC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_100059D20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003B4E4;

  return sub_100058360();
}

unint64_t sub_100059DCC()
{
  result = qword_10008FAF0;
  if (!qword_10008FAF0)
  {
    sub_100025D78(&qword_10008FAE8, &qword_10006FDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FAF0);
  }

  return result;
}

uint64_t sub_100059E30(uint64_t a1)
{
  v2 = type metadata accessor for SQLiteDB.Location(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100059E8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100003BC0(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10000BE28(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_100059EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_100003BC0(a1, a2);
    if (v3)
    {
    }
  }
}

uint64_t sub_100059F44(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000615F4(v5);
  }

  return v8 & 1;
}

uint64_t sub_100059FB4(char a1, char a2)
{
  v3 = sub_10001E968(a1);
  v5 = v4;
  v6 = sub_10001E968(a2);
  if (v3 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000615F4(v6);
  }

  return v9 & 1;
}

uint64_t sub_10005A024(unsigned __int8 a1, char a2)
{
  v2 = 1937335659;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1937335659;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 7955819;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x7365756C6176;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x65756C6176;
      break;
    case 4:
      v5 = 0x69726F6765746163;
      v3 = 0xEA00000000007365;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x79726F6765746163;
      break;
    case 6:
      v3 = 0xE500000000000000;
      v5 = 0x7365707974;
      break;
    case 7:
      v5 = 1701869940;
      break;
    case 8:
      v3 = 0xE600000000000000;
      v5 = 0x6E6F69746361;
      break;
    case 9:
      v5 = 0x6F697469646E6F63;
      v3 = 0xE90000000000006ELL;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 7955819;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x7365756C6176;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x65756C6176;
      break;
    case 4:
      v2 = 0x69726F6765746163;
      v6 = 0xEA00000000007365;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v2 = 0x79726F6765746163;
      break;
    case 6:
      v6 = 0xE500000000000000;
      v2 = 0x7365707974;
      break;
    case 7:
      v2 = 1701869940;
      break;
    case 8:
      v6 = 0xE600000000000000;
      v2 = 0x6E6F69746361;
      break;
    case 9:
      v2 = 0x6F697469646E6F63;
      v6 = 0xE90000000000006ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_10005A254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000132F8();
  v10 = sub_1000228D4(v8, v9);
  v11 = sub_100001D80(v10);
  __chkstk_darwin(v11);
  v13 = v23 - v12;
  sub_100005C68();
  type metadata accessor for TaskPriority();
  v14 = sub_100016760();
  v15 = sub_100002694(v14, 1, &qword_10008E750);

  if (v15 == 1)
  {
    sub_100005000(v13, &qword_10008E750, &qword_10006F860);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(qword_10008E748 + 8))(v13, &qword_10008E750);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v24[0] = 0;
        v24[1] = 0;
        v21 = v24;
        v24[2] = v17;
        v24[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v23[1] = 7;
      v23[2] = v21;
      v23[3] = v20;
      sub_1000110E4();
      sub_1000615A4();

      sub_100005000(a3, &qword_10008E750, &qword_10006F860);

      return v17;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005000(a3, &qword_10008E750, &qword_10006F860);
  if (v19 | v17)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v17;
    v24[7] = v19;
  }

  return sub_1000110E4();
}

uint64_t sub_10005A4B4()
{
  sub_100002624();
  v2 = *v1;
  sub_100002928();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 104) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_10005A7DC;
  }

  else
  {
    v6 = sub_10005A5D4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005A5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100015038();
  a23 = v25;
  a24 = v26;
  sub_10002006C();
  a22 = v24;
  swift_unknownObjectRelease();
  v27 = *(v24 + 80);
  sub_100061658();
  if (!v28)
  {
    sub_100061554();
  }

  v49 = *(v24 + 160);
  sub_1000228D4(&qword_10008E4A0, &unk_100070080);
  v29 = (sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0) - 8);
  v30 = (*(*v29 + 80) + 32) & ~*(*v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10006D1D0;
  v32 = (v31 + v30);
  v33 = v29[14];
  sub_100003CFC();
  *v32 = v34;
  v32[1] = 0xE700000000000000;
  *(v32 + v33) = 0;
  type metadata accessor for EventValue(0);
  sub_10006174C(v32 + v33);
  sub_10000FFD8();
  *v35 = v36;
  v35[1] = 0xE700000000000000;
  *(v35 + v37) = 1;
  sub_10006174C(v35 + v37);
  v38 = Dictionary.init(dictionaryLiteral:)();
  v39 = *(v27 + 160);
  v40 = *(v27 + 168);

  v41 = sub_1000128E8(v49, v39, v40);

  swift_isUniquelyReferenced_nonNull_native();
  a12 = v38;
  sub_100007B80();
  sub_100060854(v41, v42, 0, v43, &a12);
  *(v24 + 112) = a12;
  v44 = swift_task_alloc();
  v45 = sub_10000B9C4(v44);
  *v45 = v46;
  sub_100003E48(v45);
  sub_1000058EC();

  return sub_10000BA94();
}

uint64_t sub_10005A7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100010548();
  a21 = v24;
  a22 = v25;
  sub_100003EBC();
  a20 = v22;
  if (qword_10008DDE8 != -1)
  {
    sub_10000522C(&qword_10008DDE8);
  }

  v26 = type metadata accessor for Logger();
  sub_1000050E4(v26, qword_10008FB00);

  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v22 + 80);
    v23 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    a10 = v30;
    *v23 = 136315394;
    *(v23 + 4) = sub_1000053A0(*(v29 + 112), *(v29 + 120), &a10);
    *(v23 + 12) = 2080;
    swift_getErrorValue();
    v31 = Error.localizedDescription.getter();
    v33 = sub_1000053A0(v31, v32, &a10);

    *(v23 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "failed to send cached non-realtime events for session %s on session end: %s", v23, 0x16u);
    swift_arrayDestroy();
    sub_100001D1C(v30);
    sub_100001D64();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v34 = *(v22 + 80);
  sub_100061658();
  if (!v35)
  {
    sub_100061554();
  }

  v54 = *(v22 + 160);
  sub_1000228D4(&qword_10008E4A0, &unk_100070080);
  sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0);
  sub_100003F10();
  *(sub_100061564() + 16) = xmmword_10006D1D0;
  sub_100003CFC();
  sub_10001C494(v36);
  sub_1000615B0();
  swift_storeEnumTagMultiPayload();
  sub_10000FFD8();
  *v37 = v38;
  v37[1] = v23;
  *(v37 + v39) = 1;
  sub_1000615B0();
  swift_storeEnumTagMultiPayload();
  v40 = Dictionary.init(dictionaryLiteral:)();
  v41 = *(v34 + 160);
  v42 = *(v34 + 168);

  sub_1000128E8(v54, v41, v42);

  swift_isUniquelyReferenced_nonNull_native();
  a10 = v40;
  sub_100007B80();
  sub_100061714(v43, v44, v45, v46, v47, v48);
  *(v22 + 112) = a10;
  v49 = swift_task_alloc();
  v50 = sub_10000B9C4(v49);
  *v50 = v51;
  sub_100003E48(v50);
  sub_100008E28();

  return sub_10000BA94();
}

uint64_t sub_10005AB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  sub_100003F58();
  a17 = v19;
  a18 = v20;
  sub_100005464();
  a16 = v18;

  if (qword_10008DDE8 != -1)
  {
    sub_10000522C(&qword_10008DDE8);
  }

  v21 = type metadata accessor for Logger();
  sub_1000050E4(v21, qword_10008FB00);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  static os_log_type_t.fault.getter();

  if (sub_1000110CC())
  {
    v23 = sub_100004D20();
    v24 = sub_100004F18();
    a9 = v24;
    *v23 = 136446210;
    swift_getErrorValue();
    v25 = sub_1000052DC();
    v27 = sub_1000053A0(v25, v26, &a9);

    *(v23 + 4) = v27;
    sub_100005B74();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    sub_100005284(v24);
    sub_100001D64();
    sub_100003D78();
  }

  else
  {
  }

  v18[19] = *(v18[10] + 184);
  sub_100008E70();

  return _swift_task_switch(v33, v34, v35);
}

uint64_t sub_10005AD10(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v3[17] = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10005ADDC, v2, 0);
}

uint64_t sub_10005ADDC()
{
  sub_100002624();
  v1 = *(*(v0 + 112) + 8);
  *(v0 + 160) = v1;
  v2 = *(v1 + 16);
  *(v0 + 168) = v2;
  if (v2 == 1)
  {
    v7 = *(v0 + 120);
    sub_1000020A0();
    sub_100006EAC();
    v9 = v7[13];
    v8 = v7[14];
    *(v0 + 64) = v7[12];
    *(v0 + 80) = v9;
    *(v0 + 96) = v8;
    swift_task_alloc();
    sub_100008D5C();
    *(v0 + 176) = v10;
    *v10 = v11;
    v10[1] = sub_10005AFC0;
    v6 = v0 + 64;
    goto LABEL_6;
  }

  if (v2)
  {
    sub_100022FE0();
    *(v0 + 208) = 0;
    *(v0 + 216) = v3;
    if (*(v0 + 168))
    {
      sub_1000020A0();
      sub_100006EAC();
      sub_100010864();
      swift_task_alloc();
      sub_100008D5C();
      *(v0 + 224) = v4;
      *v4 = v5;
      v6 = sub_100008D68(v4);
LABEL_6:

      return sub_100005E6C(v6);
    }

    v13 = v3;
    type metadata accessor for BackendGroup();
    v14 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v14 + 112) = v13;
  }

  v15 = sub_100003B18();

  return v16(v15);
}

uint64_t sub_10005AFC0()
{
  sub_100004F30();
  v3 = v2;
  v5 = v4;
  sub_100003B0C();
  v7 = v6;
  sub_100002928();
  *v8 = v7;
  v9 = *v1;
  sub_1000043E4();
  *v10 = v9;
  v7[23] = v0;

  if (v0)
  {
    sub_100004500();
    sub_10000A864(v11, v12);
  }

  else
  {
    v7[24] = v3;
    v7[25] = v5;
  }

  sub_100002794();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_10005B0F4()
{
  sub_100002624();
  v1 = v0[24];
  v2 = v0[19];
  v3 = sub_1000616C0();
  v7 = sub_100056F8C(v3, v2, v4, v1, v5, v6);
  v9 = v8;

  sub_100004500();
  sub_10000A864(v2, v10);

  v11 = v0[1];

  return v11(v7, v9);
}

uint64_t sub_10005B1A0()
{
  sub_100004F30();
  v3 = v2;
  v5 = v4;
  sub_100003B0C();
  v7 = v6;
  sub_100002928();
  *v8 = v7;
  v9 = *v1;
  sub_1000043E4();
  *v10 = v9;
  v7[29] = v0;

  if (v0)
  {
  }

  else
  {
    v7[30] = v3;
    v7[31] = v5;
  }

  sub_100002794();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10005B2D0()
{
  sub_100004F30();
  v1 = v0[30];
  v2 = v0[27];
  v3 = sub_1000616C0();
  v8 = sub_100056F8C(v3, v4, v5, v1, v6, v7);
  v10 = v9;

  v11 = *(v2 + 16);
  v12 = v0[27];
  if (v11 >= *(v2 + 24) >> 1)
  {
    sub_100022FE0();
    v12 = v25;
  }

  sub_100004500();
  sub_10000A864(v13, v14);
  *(v12 + 16) = v11 + 1;
  v15 = v12 + 16 * v11;
  *(v15 + 32) = v8;
  *(v15 + 40) = v10;
  v16 = v0[26] + 1;
  v0[26] = v16;
  v0[27] = v12;
  if (v16 == v0[21])
  {
    type metadata accessor for BackendGroup();
    v17 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v17 + 112) = v12;

    sub_100002794();

    __asm { BRAA            X3, X16 }
  }

  sub_1000020A0();
  sub_100006EAC();
  sub_100010864();
  swift_task_alloc();
  sub_100008D5C();
  v0[28] = v20;
  *v20 = v21;
  sub_100008D68(v20);
  sub_100002794();

  return sub_100005E6C(v22);
}

uint64_t sub_10005B47C()
{
  sub_100004680();
  sub_100004500();
  sub_10000A864(v0, v1);

  sub_100001D4C();

  return v2();
}

unint64_t sub_10005B4EC(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_10005B540()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_10008FB00);
  sub_1000050E4(v0, qword_10008FB00);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005B5B8()
{
  sub_100004680();
  *(v1 + 632) = v0;
  *(v1 + 624) = v28;
  *(v1 + 616) = v27;
  *(v1 + 608) = v26;
  *(v1 + 186) = v25;
  *(v1 + 600) = v24;
  *(v1 + 592) = v2;
  *(v1 + 584) = v3;
  *(v1 + 576) = v4;
  *(v1 + 568) = v5;
  *(v1 + 185) = v6;
  *(v1 + 560) = v7;
  *(v1 + 552) = v8;
  *(v1 + 188) = v9;
  *(v1 + 640) = *v0;
  v10 = type metadata accessor for Locale();
  *(v1 + 648) = v10;
  sub_10000392C(v10);
  *(v1 + 656) = v11;
  *(v1 + 664) = sub_100003D60();
  v12 = type metadata accessor for SHA256();
  *(v1 + 672) = v12;
  sub_10000392C(v12);
  *(v1 + 680) = v13;
  *(v1 + 688) = sub_100003D60();
  v14 = type metadata accessor for SHA256Digest();
  *(v1 + 696) = v14;
  sub_10000392C(v14);
  *(v1 + 704) = v15;
  *(v1 + 712) = sub_100003D60();
  v16 = type metadata accessor for String.Encoding();
  *(v1 + 720) = v16;
  sub_10000392C(v16);
  *(v1 + 728) = v17;
  *(v1 + 736) = sub_100003D60();
  v18 = type metadata accessor for UUID();
  *(v1 + 744) = v18;
  sub_10000392C(v18);
  *(v1 + 752) = v19;
  *(v1 + 760) = sub_100003D60();
  v20 = sub_1000228D4(&qword_10008EDF8, &unk_10006E860);
  sub_100001D80(v20);
  *(v1 + 768) = swift_task_alloc();
  *(v1 + 776) = swift_task_alloc();
  v21 = type metadata accessor for CachedSession(0);
  *(v1 + 784) = v21;
  sub_100001D80(v21);
  *(v1 + 792) = swift_task_alloc();
  *(v1 + 800) = swift_task_alloc();

  return _swift_task_switch(sub_10005B8A8, 0, 0);
}

uint64_t sub_10005B8A8()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 632);
  v3 = *(v0 + 552);
  v4 = *(v0 + 188);
  swift_defaultActor_initialize();
  *(v0 + 808) = OBJC_IVAR____TtC13rtcreportingd7Session_creation;
  static Date.now.getter();
  *(v2 + OBJC_IVAR____TtC13rtcreportingd7Session_sentEvents) = 0;
  v5 = OBJC_IVAR____TtC13rtcreportingd7Session_realtimeBackend;
  *(v0 + 816) = OBJC_IVAR____TtC13rtcreportingd7Session_realtimeBackend;
  v6 = (v2 + v5);
  v7 = OBJC_IVAR____TtC13rtcreportingd7Session_immediateBackend;
  *(v0 + 824) = OBJC_IVAR____TtC13rtcreportingd7Session_immediateBackend;
  v8 = (v2 + v7);
  *v8 = 0;
  v8[1] = 0;
  *(v2 + OBJC_IVAR____TtC13rtcreportingd7Session_haveNonRealtimeEvents) = 0;
  *(v2 + OBJC_IVAR____TtC13rtcreportingd7Session_sendingNonRealtimeEvents) = 0;
  *(v2 + OBJC_IVAR____TtC13rtcreportingd7Session_receivedEnd) = 0;
  v9 = v2 + OBJC_IVAR____TtC13rtcreportingd7Session_user;
  *v9 = v4;
  *(v9 + 4) = 0;
  *(v2 + 184) = v3;
  *v6 = 0;
  v6[1] = 0;
  sub_100005C68();
  if (sub_1000110B4(v1) == 1)
  {
    v10 = *(v0 + 776);
    v11 = *(v0 + 576);

    sub_100005000(v10, &qword_10008EDF8, &unk_10006E860);
    v12 = *(v0 + 760);
    v13 = *(v0 + 752);
    v14 = *(v0 + 744);
    if (v11)
    {
      v90 = *(v0 + 568);
      v91 = *(v0 + 576);

      v15._countAndFlagsBits = 46;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      UUID.init()();
      *(v0 + 169) = UUID.uuid.getter();
      *(v0 + 177) = v16;
      *(v0 + 178) = v17;
      *(v0 + 179) = v18;
      *(v0 + 180) = v19;
      *(v0 + 181) = v20;
      *(v0 + 182) = v21;
      *(v0 + 183) = v22;
      *(v0 + 184) = v23;
      v24 = sub_100005FE4(v0 + 169, 0x10uLL);
      v26 = v25;
      Data.base64EncodedString(options:)(0);
      sub_100005954(v24, v26);
      (*(v13 + 8))(v12, v14);
      v27._countAndFlagsBits = sub_1000132F8();
      String.append(_:)(v27);

      countAndFlagsBits = v90;
      object = v91;
    }

    else
    {
      UUID.init()();
      *(v0 + 153) = UUID.uuid.getter();
      *(v0 + 161) = v32;
      *(v0 + 162) = v33;
      *(v0 + 163) = v34;
      *(v0 + 164) = v35;
      *(v0 + 165) = v36;
      *(v0 + 166) = v37;
      *(v0 + 167) = v38;
      *(v0 + 168) = v39;
      sub_100005FE4(v0 + 153, 0x10uLL);
      v40 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v40._countAndFlagsBits;
      object = v40._object;
      v41 = sub_1000132F8();
      sub_100005954(v41, v42);
      (*(v13 + 8))(v12, v14);
    }
  }

  else
  {
    v30 = *(v0 + 800);
    sub_10000CDE8();
    sub_100006F04();
    countAndFlagsBits = *(v30 + 48);
    object = *(v30 + 56);

    sub_10001061C();
    sub_10000A864(v30, v31);
  }

  v43 = *(v0 + 632);
  v44 = *(v0 + 186);
  v45 = OBJC_IVAR____TtC13rtcreportingd7Session_parentSessionID;
  v46 = (v43 + OBJC_IVAR____TtC13rtcreportingd7Session_parentSessionID);
  v47 = *(v0 + 616);
  v48 = *(v0 + 568);
  *(v43 + 112) = countAndFlagsBits;
  *(v43 + 120) = object;
  *(v0 + 832) = v45;
  *v46 = v48;
  v49 = OBJC_IVAR____TtC13rtcreportingd7Session_hierarchySessionID;
  *(v0 + 840) = OBJC_IVAR____TtC13rtcreportingd7Session_hierarchySessionID;
  v50 = v43 + v49;
  *(v43 + v49) = v47;
  if (v44)
  {
    v51 = *(v0 + 768);
    sub_100005C68();
    if (sub_1000110B4(v51) == 1)
    {
      v52 = *(v0 + 768);
      v53 = *(v0 + 592);

      sub_100005000(v52, &qword_10008EDF8, &unk_10006E860);
      if (v53)
      {

        static String.Encoding.utf8.getter();
        v89 = String.data(using:allowLossyConversion:)();
        v55 = v54;

        v56 = sub_1000132F8();
        v57(v56);
        v88 = v55;
        if (v55 >> 60 == 15)
        {
          v58 = *(v0 + 560);

          *(v0 + 304) = *v58;
          sub_10000D9BC(v0 + 304);
          *(v0 + 320) = v58[1];
          sub_10000D9BC(v0 + 320);
          *(v0 + 336) = v58[2];
          v59 = sub_10000D9BC(v0 + 336);
          sub_100061318(v59, v60, v61);
          v62 = swift_allocError();
          *v63 = 0;
          v64 = v62;
          swift_willThrow();

          sub_10006158C();
          sub_100061698();
          type metadata accessor for Date();
          sub_100003C44();
          (*(v65 + 8))(v64 + v50);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_defaultActor_destroy();

          sub_100005000(v55, &qword_10008EDF8, &unk_10006E860);
          swift_deallocPartialClassInstance();
          sub_100009988();

          sub_100001D4C();
          sub_100012828();

          __asm { BRAA            X1, X16 }
        }

        v73 = *(v0 + 688);
        v87 = *(v0 + 680);
        v74 = *(v0 + 672);
        sub_100010240(&qword_10008E4D0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
        dispatch thunk of HashFunction.init()();
        sub_100025CD8(v89, v88);
        sub_100025C3C(v89, v88, v73);
        sub_100022E50(v89, v88);
        dispatch thunk of HashFunction.finalize()();
        (*(v87 + 8))(v73, v74);
        SHA256Digest.withUnsafeBytes<A>(_:)();
        (*(*(v0 + 704) + 8))(*(v0 + 712), *(v0 + 696));
        sub_100022E50(v89, v88);
        v71 = (*(v0 + 544) % 0x64uLL);
        v72 = 100.0;
      }

      else
      {
        v71 = arc4random_uniform(0x2710u);
        v72 = 10000.0;
      }

      v68 = v71 / v72;
    }

    else
    {
      v69 = *(v0 + 792);
      sub_10000CDE8();
      sub_100006F04();
      v68 = *(v69 + 64);

      sub_10001061C();
      sub_10000A864(v69, v70);
    }
  }

  else
  {
    v68 = *(v0 + 600);
  }

  v75 = *(v0 + 632);
  v76 = *(v0 + 185);
  v77 = *(v0 + 560);
  *(v75 + 128) = v68;
  *(v75 + 136) = _swiftEmptyArrayStorage;
  *(v75 + 144) = _swiftEmptyArrayStorage;
  *(v75 + 152) = 0;
  *(v75 + 160) = 1701736302;
  *(v75 + 168) = 0xE400000000000000;
  *(v75 + 176) = 2;
  *(v0 + 352) = *v77;
  *(v0 + 368) = v77[1];
  *(v0 + 384) = v77[2];
  v78 = *v77;
  v79 = v77[2];
  *(v75 + 208) = v77[1];
  *(v75 + 224) = v79;
  *(v75 + 192) = v78;
  *(v75 + 240) = v76;
  sub_100005CC0(v0 + 352, v0 + 400);
  sub_100005CC0(v0 + 368, v0 + 416);
  sub_100005CC0(v0 + 384, v0 + 432);
  sub_100005CC0(v0 + 352, v0 + 448);
  sub_100005CC0(v0 + 368, v0 + 464);
  sub_100005CC0(v0 + 384, v0 + 480);

  v80 = swift_task_alloc();
  *(v0 + 848) = v80;
  *v80 = v0;
  v80[1] = sub_10005C2F4;
  sub_100012828();

  return sub_100006094(v81, v82, v83, v84);
}

uint64_t sub_10005C2F4()
{
  sub_100002624();
  v2 = *v1;
  sub_100002928();
  *v3 = v2;
  v4 = *v1;
  sub_1000043E4();
  *v5 = v4;
  *(v2 + 856) = v0;

  if (v0)
  {

    sub_10000D9BC(v2 + 352);
    sub_10000D9BC(v2 + 368);
    sub_10000D9BC(v2 + 384);
    v6 = sub_10005DCA8;
  }

  else
  {
    v6 = sub_10005C454;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10005C454()
{
  sub_100004680();
  memcpy((*(v0 + 632) + OBJC_IVAR____TtC13rtcreportingd7Session_eventExtraFieldProvider), (v0 + 16), 0x60uLL);
  sub_1000614E8();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10005C4F4()
{
  sub_100004F30();
  v1 = *(*(v0 + 632) + 240) == 1;
  v2 = swift_task_alloc();
  *(v0 + 864) = v2;
  *v2 = v0;
  v2[1] = sub_10005C5E8;
  v3 = *(v0 + 632);

  return sub_10000DB80(v0 + 192, v3, v1);
}

uint64_t sub_10005C5E8()
{
  sub_100002624();
  v2 = *v1;
  sub_100002928();
  *v3 = v2;
  v4 = *v1;
  sub_1000043E4();
  *v5 = v4;
  *(v2 + 872) = v0;

  if (v0)
  {

    sub_10000D9BC(v2 + 352);
    sub_10000D9BC(v2 + 368);
    sub_10000D9BC(v2 + 384);
    sub_100002A00();
    sub_100010240(v6, v7, &unk_10006FF94);
  }

  else
  {
    sub_100002A00();
    *(v2 + 880) = sub_100010240(v8, v9, &unk_10006FF94);
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100003F70();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10005C7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002760();
  sub_100002618();
  v13 = *(v12 + 632);
  v14 = *(v12 + 217);
  v15 = *(v12 + 192);
  *(v13 + 152) = *(v12 + 208);
  *(v13 + 136) = v15;
  *(v13 + 161) = v14;

  v17 = *(v13 + 136);
  *(v12 + 888) = v17;
  v18 = *(v13 + 152);
  if (!*(v17 + 16) && !*(v13 + 152))
  {
    goto LABEL_3;
  }

  v27 = *(v12 + 632);
  v28 = *(v27 + 144);
  *(v12 + 896) = v28;
  if (*(v28 + 16))
  {
    v29 = qword_100095AF0;
    *(v12 + 904) = qword_100095AF0;
    if (v29)
    {
      v30 = *(v27 + 160);
      v31 = *(v27 + 168);
      *(v12 + 912) = v31;
      v32 = *(v27 + 176);
      *(v12 + 240) = v17;
      *(v12 + 248) = v28;
      *(v12 + 256) = v18;
      *(v12 + 264) = v30;
      *(v12 + 272) = v31;
      *(v12 + 280) = v32;

      v33 = swift_task_alloc();
      *(v12 + 920) = v33;
      *v33 = v12;
      v33[1] = sub_10005CB84;
      goto LABEL_12;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (*(v27 + 240) == 1)
  {
    v34 = qword_100095AF0;
    *(v12 + 952) = qword_100095AF0;
    if (v34)
    {
      sub_10000CE84(v27);
      sub_100010288();
      sub_100010288();
      sub_100005CC0(v12 + 288, v12 + 496);
      v35 = sub_100010914();
      *(v12 + 960) = v35;
      *v35 = v12;
      sub_100008F94(v35);
LABEL_12:
      sub_100008E44();

      return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
    }

    goto LABEL_22;
  }

  result = sub_1000102C0();
  if (!v36)
  {
LABEL_3:
    sub_100005C34();

    sub_10000D9BC(v12 + 352);
    sub_10000D9BC(v12 + 368);
    sub_10000D9BC(v12 + 384);

    sub_100009988();
    sub_100005000(*(v12 + 608), &qword_10008EDF8, &unk_10006E860);

    sub_100004D00();
    sub_100008E44();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }

  v37 = qword_100095AD8;
  *(v12 + 992) = qword_100095AD8;
  if (!v37)
  {
    goto LABEL_23;
  }

  sub_1000128CC();

  sub_10000D9BC(v12 + 352);
  sub_10000D9BC(v12 + 368);
  sub_10000D9BC(v12 + 384);
  v38 = sub_100010914();
  *(v12 + 1000) = v38;
  *v38 = v12;
  sub_100001E44(v38);
  sub_100006F5C(v39);
  sub_100008E44();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_10005CB84()
{
  sub_100002618();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  sub_100002928();
  *v7 = v6;
  v8 = *v1;
  sub_1000043E4();
  *v9 = v8;
  v6[116] = v0;

  if (v0)
  {

    sub_10000D9BC((v6 + 44));
    sub_10000D9BC((v6 + 46));
    sub_10000D9BC((v6 + 48));
  }

  else
  {
    v6[117] = v3;
    v6[118] = v5;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100003F70();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10005CDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002760();
  sub_100002618();
  v13 = v12[117];
  v14 = (v12[79] + v12[103]);
  *v14 = v12[118];
  v14[1] = v13;
  result = swift_unknownObjectRelease();
  v16 = v12[79];
  if (*(v16 + 240) == 1)
  {
    v17 = qword_100095AF0;
    v12[119] = qword_100095AF0;
    if (v17)
    {
      sub_10000CE84(v16);
      sub_100010288();
      sub_100010288();
      sub_100005CC0((v12 + 36), (v12 + 62));
      v18 = sub_100010914();
      v12[120] = v18;
      *v18 = v12;
      sub_100008F94(v18);
      sub_100008E44();

      return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  result = sub_1000102C0();
  if (!v27)
  {
    sub_100005C34();

    sub_10000D9BC((v12 + 44));
    sub_10000D9BC((v12 + 46));
    sub_10000D9BC((v12 + 48));

    sub_100009988();
    sub_100005000(v12[76], &qword_10008EDF8, &unk_10006E860);

    sub_100004D00();
    sub_100008E44();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }

  v28 = qword_100095AD8;
  v12[124] = qword_100095AD8;
  if (!v28)
  {
    goto LABEL_16;
  }

  sub_1000128CC();

  sub_10000D9BC((v12 + 44));
  sub_10000D9BC((v12 + 46));
  sub_10000D9BC((v12 + 48));
  v29 = sub_100010914();
  v12[125] = v29;
  *v29 = v12;
  sub_100001E44(v29);
  sub_100006F5C(v30);
  sub_100008E44();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_10005D05C()
{
  sub_100002618();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  sub_100002928();
  *v7 = v6;
  v8 = *v1;
  sub_1000043E4();
  *v9 = v8;
  v6[121] = v0;

  if (v0)
  {
    sub_100005000((v6 + 64), &qword_10008FD70, &qword_10006FD20);
    sub_100005000((v6 + 65), &qword_10008FD70, &qword_10006FD20);
    sub_10000D9BC((v6 + 36));

    sub_10000D9BC((v6 + 44));
    sub_10000D9BC((v6 + 46));
    sub_10000D9BC((v6 + 48));
    ObjectType = swift_getObjectType();
    sub_100061734(ObjectType);
  }

  else
  {
    v6[122] = v3;
    v6[123] = v5;
    sub_100061764((v6 + 64));
    sub_100061764((v6 + 65));
    sub_10000D9BC((v6 + 36));

    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
  }

  sub_100003F70();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10005D294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100010548();
  sub_100003EBC();
  v15 = v14[123];
  v16 = v14[122];
  v17 = (v14[79] + v14[102]);
  *v17 = v15;
  v17[1] = v16;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v15)
  {
    sub_100005C34();

    sub_10000D9BC((v14 + 44));
    sub_10000D9BC((v14 + 46));
    v31 = sub_10000D9BC((v14 + 48));
    sub_100061318(v31, v32, v33);
    swift_allocError();
    *v34 = 1;
    swift_willThrow();

    v35 = sub_1000080F8();
    sub_100005000(v35, &qword_10008EDF8, &unk_10006E860);

    sub_100009988();

    sub_100001D4C();
    sub_100008E28();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
  }

  swift_unknownObjectRelease();
  result = sub_1000102C0();
  if (v19)
  {
    v20 = qword_100095AD8;
    v14[124] = qword_100095AD8;
    if (!v20)
    {
      __break(1u);
      return result;
    }

    sub_1000128CC();

    sub_10000D9BC((v14 + 44));
    sub_10000D9BC((v14 + 46));
    sub_10000D9BC((v14 + 48));
    v21 = sub_100010914();
    v14[125] = v21;
    *v21 = v14;
    sub_100001E44(v21);
    sub_100006F5C(v22);
    sub_100008E28();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
  }

  sub_100005C34();

  sub_10000D9BC((v14 + 44));
  sub_10000D9BC((v14 + 46));
  sub_10000D9BC((v14 + 48));

  sub_100009988();
  sub_100005000(v14[76], &qword_10008EDF8, &unk_10006E860);

  sub_100004D00();
  sub_100008E28();

  return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10005D5A8()
{
  sub_100004F30();
  sub_100002928();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1008) = v0;

  if (v0)
  {
  }

  ObjectType = swift_getObjectType();
  sub_100061734(ObjectType);
  sub_100003F70();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10005D748()
{
  v27 = v0;
  v23 = v0[83];
  v24 = v0[82];
  v25 = v0[81];
  sub_1000228D4(&qword_10008E4A0, &unk_100070080);
  sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0);
  sub_100003F10();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10006D1D0;
  v5 = (v4 + v3);
  v6 = *(v1 + 56);
  sub_100003CFC();
  *v5 = v7;
  v5[1] = 0xE700000000000000;
  *(v5 + v6) = 0;
  type metadata accessor for EventValue(0);
  sub_10006174C(v5 + v6);
  sub_10000FFD8();
  *v8 = v9;
  v8[1] = 0xE700000000000000;
  *(v8 + v10) = 0;
  sub_10006174C(v8 + v10);
  v22 = Dictionary.init(dictionaryLiteral:)();
  static Locale.current.getter();
  v11 = Locale.regionCode.getter();
  v13 = v12;
  (*(v24 + 8))(v23, v25);
  if (!v13)
  {
    v11 = 16191;
    v13 = 0xE200000000000000;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10006CAD0;
  v15 = (v14 + v3);
  v16 = (v14 + v3 + *(v1 + 56));
  *v15 = 0x656C61636F4CLL;
  v15[1] = 0xE600000000000000;
  *v16 = v11;
  v16[1] = v13;
  swift_storeEnumTagMultiPayload();
  v17 = Dictionary.init(dictionaryLiteral:)();
  swift_isUniquelyReferenced_nonNull_native();
  v26 = v22;
  sub_100007B80();
  sub_100060854(v17, v18, 0, v19, &v26);
  v0[127] = v26;
  v20 = swift_task_alloc();
  v0[128] = v20;
  *v20 = v0;
  v20[1] = sub_10005DA40;

  return sub_10000BA94();
}

uint64_t sub_10005DA40()
{
  sub_100002624();
  v1 = *v0;
  sub_1000043E4();
  *v2 = v1;

  ObjectType = swift_getObjectType();
  sub_100061734(ObjectType);
  sub_100003F70();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10005DBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002760();
  sub_100002618();
  sub_10006177C();
  sub_100009988();
  sub_100005000(*(v12 + 608), &qword_10008EDF8, &unk_10006E860);

  sub_100004D00();
  sub_100008E44();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_10005DCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100010548();
  sub_100003EBC();
  v28 = *(v14 + 856);

  v16 = *(v14 + 632);

  v17 = *(v16 + 232);

  sub_10006158C();
  sub_100061698();
  type metadata accessor for Date();
  sub_100003C44();
  (*(v18 + 8))(v17 + v15);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  sub_100005000(v16, &qword_10008EDF8, &unk_10006E860);
  swift_deallocPartialClassInstance();
  sub_100009988();

  sub_100001D4C();
  sub_100008E28();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28, a11, a12, a13, a14);
}

uint64_t sub_10005DE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002760();
  sub_100002618();
  sub_10006177C();
  v12 = sub_1000080F8();
  sub_100005000(v12, &qword_10008EDF8, &unk_10006E860);

  sub_100009988();

  sub_100001D4C();
  sub_100008E44();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_10005DF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002760();
  sub_100002618();
  sub_10006177C();
  v12 = sub_1000080F8();
  sub_100005000(v12, &qword_10008EDF8, &unk_10006E860);

  sub_100009988();

  sub_100001D4C();
  sub_100008E44();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_10005E080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002760();
  sub_100002618();
  sub_10006177C();
  v12 = sub_1000080F8();
  sub_100005000(v12, &qword_10008EDF8, &unk_10006E860);

  sub_100009988();

  sub_100001D4C();
  sub_100008E44();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_10005E174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002760();
  sub_100002618();

  v12 = sub_1000080F8();
  sub_100005000(v12, &qword_10008EDF8, &unk_10006E860);

  sub_100009988();

  sub_100001D4C();
  sub_100008E44();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t *sub_10005E27C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result && (a2 - result + 7) >= 0xF)
  {
    v3 = 0;
    v4 = 8 * ((a2 - result) / 8);
    do
    {
      v5 = *result++;
      v3 ^= v5;
      v4 -= 8;
    }

    while (v4);
  }

  else
  {
    v3 = 0;
  }

  *a3 = v3;
  return result;
}

uint64_t sub_10005E49C()
{
  sub_100002624();
  sub_100004500();
  sub_10000A864(v0, v1);
  sub_1000616D4();

  sub_100001D4C();

  return v2();
}

uint64_t sub_10005E51C()
{
  sub_100002624();

  sub_1000616D4();

  sub_100001D4C();

  return v0();
}

uint64_t sub_10005E714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v10;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  return _swift_task_switch(sub_10005E744, a4, 0);
}

uint64_t sub_10005E744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005464();
  if (*(v14[6] + OBJC_IVAR____TtC13rtcreportingd7Session_haveNonRealtimeEvents) == 1)
  {
    v15 = swift_task_alloc();
    v14[12] = v15;
    *v15 = v14;
    v15[1] = sub_10005E8F8;
    v17 = v14[7];
    v16 = v14[8];

    return sub_10005EF44(v17, v16);
  }

  else
  {
    sub_100012848();
    sub_1000228D4(&unk_10008FD30, &qword_100070028);
    v19 = swift_allocObject();
    v14[14] = v19;
    sub_100011A04(v19, xmmword_10006CAD0);

    v20 = swift_task_alloc();
    v21 = sub_10000B9C4(v20);
    *v21 = v22;
    v23 = sub_10000C6D0(v21);

    return v24(v23);
  }
}

uint64_t sub_10005E8F8()
{
  sub_100002624();
  v2 = *v1;
  sub_100002928();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 104) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_10005EC5C;
  }

  else
  {
    v6 = sub_10005EA18;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005EA18()
{
  sub_100005464();
  sub_100012848();
  sub_1000228D4(&unk_10008FD30, &qword_100070028);
  v1 = swift_allocObject();
  *(v0 + 112) = v1;
  sub_100011A04(v1, xmmword_10006CAD0);

  v2 = swift_task_alloc();
  v3 = sub_10000B9C4(v2);
  *v3 = v4;
  v5 = sub_10000C6D0(v3);

  return v6(v5);
}

uint64_t sub_10005EB3C()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    v7 = *(v3 + 48);

    return _swift_task_switch(sub_10005EDCC, v7, 0);
  }

  else
  {

    sub_100001D4C();

    return v8();
  }
}

uint64_t sub_10005EF44(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_10005EF68, v2, 0);
}

void sub_10005EF68()
{
  sub_100004F30();
  v27 = v0;
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC13rtcreportingd7Session_sendingNonRealtimeEvents;
  v0[11] = OBJC_IVAR____TtC13rtcreportingd7Session_sendingNonRealtimeEvents;
  if ((*(v1 + v2) & 1) != 0 || (v3 = OBJC_IVAR____TtC13rtcreportingd7Session_haveNonRealtimeEvents, v0[12] = OBJC_IVAR____TtC13rtcreportingd7Session_haveNonRealtimeEvents, *(v1 + v3) != 1))
  {
    sub_100001D4C();
    sub_100002794();

    __asm { BRAA            X1, X16 }
  }

  *(v1 + v2) = 1;
  if (qword_10008DDE8 != -1)
  {
    sub_10000522C(&qword_10008DDE8);
  }

  v4 = type metadata accessor for Logger();
  v0[13] = sub_1000050E4(v4, qword_10008FB00);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[10];
    v8 = sub_100004D20();
    v9 = sub_100004F18();
    v26 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1000053A0(*(v7 + 112), *(v7 + 120), &v26);
    sub_1000028B8();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_100005284(v9);
    sub_100001D1C(v9);
    sub_100001D1C(v8);
  }

  v15 = qword_100095AD8;
  v0[14] = qword_100095AD8;
  if (v15)
  {

    v16 = swift_task_alloc();
    v17 = sub_10000B9C4(v16);
    *v17 = v18;
    sub_10000B764(v17);
    sub_100002794();

    sub_10003E06C(v19, v20, v21, v22);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005F148()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  *v4 = *v1;
  v3[16] = v5;
  v3[17] = v0;

  if (v0)
  {
    v6 = v3[10];
    v7 = sub_10005F818;
  }

  else
  {
    v8 = v3[10];

    v7 = sub_10005F260;
    v6 = v8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10005F260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100010548();
  sub_100003EBC();
  v15 = v14[16];
  v16 = *(v15 + 16);
  v14[18] = v16;
  if (v16)
  {
    v14[5] = _swiftEmptyArrayStorage;
    sub_10001C5CC(0, v16, 0);
    v17 = v14[5];
    v18 = (v15 + 56);
    do
    {
      v20 = *(v18 - 2);
      v19 = *(v18 - 1);
      v21 = *v18;
      v14[5] = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);

      if (v23 >= v22 >> 1)
      {
        sub_1000615B0();
        sub_10001C5CC(v25, v26, v27);
        v17 = v14[5];
      }

      v14[19] = v17;
      *(v17 + 16) = v23 + 1;
      v24 = (v17 + 24 * v23);
      v24[4] = v20;
      v24[5] = v19;
      v24[6] = v21;
      v18 += 4;
      --v16;
    }

    while (v16);
    v51 = v14[9];
    swift_getObjectType();
    v28 = *(v51 + 24);
    v52 = v51 + 24;
    v50 = v28 + *v28;
    v29 = swift_task_alloc();
    v14[20] = v29;
    *v29 = v14;
    v29[1] = sub_10005F474;
    sub_100008E28();

    return v33(v30, v31, v32, v33, v34, v35, v36, v37, a9, v50, v52, a12, a13, a14);
  }

  else
  {
    v39 = v14[11];
    v40 = v14[12];
    v41 = v14[10];

    *(v41 + v40) = 0;
    *(v41 + v39) = 0;
    sub_100001D4C();
    sub_100008E28();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_10005F474()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
    v7 = *(v3 + 80);
    v8 = sub_10005F884;
  }

  else
  {
    v9 = *(v3 + 80);

    v8 = sub_10005F584;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_10005F584()
{
  sub_100003F58();
  sub_100005464();
  v1 = qword_100095AD8;
  v0[22] = qword_100095AD8;
  if (v1)
  {
    v2 = v0[18];
    v0[6] = _swiftEmptyArrayStorage;

    sub_100013250();
    sub_100061670();
    do
    {
      sub_100061510();
      if (v4)
      {
        sub_100060CA4((v3 > 1), v2, 1);
      }

      sub_100011CF0();
    }

    while (!v5);

    v6 = swift_task_alloc();
    v0[24] = v6;
    *v6 = v0;
    sub_100011770(v6);
    sub_100008E70();

    sub_10003E188(v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005F668()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
    v7 = *(v3 + 80);
    v8 = sub_10005FA40;
  }

  else
  {
    v9 = *(v3 + 80);

    v8 = sub_10005F780;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_10005F780()
{
  v1 = qword_100095AD8;
  *(v0 + 112) = qword_100095AD8;
  if (v1)
  {
    sub_100002624();

    v2 = swift_task_alloc();
    v3 = sub_10000B9C4(v2);
    *v3 = v4;
    v5 = sub_10000B764(v3);

    sub_10003E06C(v5, v6, v7, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005F818()
{
  sub_100002624();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);

  *(v2 + v1) = 0;
  sub_100001D4C();

  return v3();
}

void sub_10005F884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  sub_100003F58();
  a17 = v19;
  a18 = v20;
  sub_100005464();
  a16 = v18;

  swift_errorRetain();
  v21 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (sub_1000110CC())
  {
    v22 = sub_100004D20();
    v23 = sub_100004F18();
    a9 = v23;
    *v22 = 136446210;
    swift_getErrorValue();
    v24 = sub_1000052DC();
    v26 = sub_1000053A0(v24, v25, &a9);

    *(v22 + 4) = v26;
    sub_100005B74();
    _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
    sub_100005284(v23);
    sub_100001D64();
    sub_100003D78();
  }

  else
  {
  }

  v32 = qword_100095AD8;
  v18[22] = qword_100095AD8;
  if (v32)
  {
    v33 = v18[18];
    v18[6] = _swiftEmptyArrayStorage;

    sub_100013250();
    sub_100061670();
    do
    {
      sub_100061510();
      if (v35)
      {
        sub_100060CA4((v34 > 1), v33, 1);
      }

      sub_100011CF0();
    }

    while (!v36);

    v37 = swift_task_alloc();
    v18[24] = v37;
    *v37 = v18;
    sub_100011770(v37);
    sub_100008E70();

    sub_10003E188(v38);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005FA40()
{
  sub_100002624();

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);

  *(v2 + v1) = 0;
  sub_100001D4C();

  return v3();
}

uint64_t sub_10005FABC(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SessionUser(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SessionUser(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SessionUser(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_10005FC2C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005FC48(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

uint64_t sub_10005FC78(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

char *sub_10005FD18(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_10005FD40(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1000047D8(a3, result);
  }

  return result;
}

void sub_10005FD98(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  sub_100061548();
  if (v9 < v8 || (a4(0), sub_100003C44(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    sub_100002684();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    sub_100002684();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_10005FE74(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1000047D8(a3, result);
  }

  return result;
}

char *sub_10005FE9C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_1000047D8(a3, result);
  }

  return result;
}

uint64_t sub_10005FEBC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1000228D4(&qword_10008EE10, &qword_10006E8B8), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1000228D4(&qword_10008EE10, &qword_10006E8B8);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_10005FFC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000228D4(&unk_10008FDF0, &qword_10006E8E0);
  sub_100002684();
  v34 = a2;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!v5[2])
  {
LABEL_28:

LABEL_29:
    *v3 = v6;
    return;
  }

  v7 = 0;
  v8 = v5 + 8;
  sub_10006152C();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v13)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_9;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_29;
    }

    sub_100061684();
    v3 = v2;
    if (v32 != v33)
    {
      *v8 = -1 << v31;
    }

    else
    {
      sub_100019D90(0, (v31 + 63) >> 6, (v5 + 8));
    }

    v5[2] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v18 = v15 | (v7 << 6);
    v19 = *(v5[6] + v18);
    v20 = *(v5[7] + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    Hasher._combine(_:)(v19 + 1);
    Hasher._finalize()();
    sub_1000616AC();
    if (((v23 << v22) & ~v14[v21]) == 0)
    {
      break;
    }

    sub_10000CDBC();
LABEL_20:
    sub_100009B9C();
    *(v14 + v28) |= v29;
    *(v6[6] + v30) = v19;
    *(v6[7] + 8 * v30) = v20;
    ++v6[2];
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  sub_100007030();
  while (++v24 != v26 || (v25 & 1) == 0)
  {
    v27 = v24 == v26;
    if (v24 == v26)
    {
      v24 = 0;
    }

    v25 |= v27;
    if (v14[v24] != -1)
    {
      sub_100003E1C();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_1000601E8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for EventValue(0);
  v35 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1000228D4(&unk_10008FD60, &qword_100070060);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v9;
    return result;
  }

  v33 = v2;
  v34 = v7;
  v10 = 0;
  v11 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = result + 64;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      sub_100019D90(0, (v32 + 63) >> 6, v11);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = (*(v7 + 48) + 16 * (v17 | (v10 << 6)));
    v21 = *v20;
    v22 = v20[1];
    if (v36)
    {
      sub_100006F04();
    }

    else
    {
      sub_100006EAC();
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v16 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v21;
    v31[1] = v22;
    result = sub_100006F04();
    ++*(v9 + 16);
    v7 = v34;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

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
    v30 = *(v16 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_10006055C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CachedSession(0);
  v6 = sub_10000392C(v5);
  v41 = v7;
  __chkstk_darwin(v6);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000228D4(&qword_10008EE20, &qword_10006E8C0);
  sub_100002684();
  v42 = a2;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!v9[2])
  {
LABEL_29:

LABEL_30:
    *v3 = v10;
    return;
  }

  v39 = v2;
  v40 = v9;
  v11 = 0;
  v12 = v9 + 8;
  sub_10006152C();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v18 = v10 + 64;
  if ((v14 & v13) == 0)
  {
LABEL_4:
    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v17)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_9;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_30;
    }

    sub_100061684();
    v3 = v39;
    if (v37 != v38)
    {
      *v12 = -1 << v36;
    }

    else
    {
      sub_100019D90(0, (v36 + 63) >> 6, v12);
    }

    v9[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_9:
    v22 = (v9[6] + 16 * (v19 | (v11 << 6)));
    v23 = *v22;
    v24 = v22[1];
    if (v42)
    {
      sub_100006F04();
    }

    else
    {
      sub_100006EAC();
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    sub_1000616AC();
    if (((v27 << v26) & ~*(v18 + 8 * v25)) == 0)
    {
      break;
    }

    sub_10000CDBC();
LABEL_21:
    sub_100009B9C();
    *(v18 + v32) |= v33;
    v35 = (*(v10 + 48) + 16 * v34);
    *v35 = v23;
    v35[1] = v24;
    sub_10000CDE8();
    sub_100006F04();
    ++*(v10 + 16);
    v9 = v40;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  sub_100007030();
  while (++v28 != v30 || (v29 & 1) == 0)
  {
    v31 = v28 == v30;
    if (v28 == v30)
    {
      v28 = 0;
    }

    v29 |= v31;
    if (*(v18 + 8 * v28) != -1)
    {
      sub_100003E1C();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_100060854(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_100061548();
  v9 = type metadata accessor for EventValue(0);
  v10 = sub_10000392C(v9);
  v54 = v11;
  v12 = __chkstk_darwin(v10);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  v16 = sub_1000228D4(&unk_10008FD50, &unk_100070050);
  v17 = sub_100001D80(v16);
  __chkstk_darwin(v17);
  v19 = (&v43 - v18);
  v20 = sub_100003B18();
  sub_100007064(v20, v21, a3, v22);
  v46 = v50;
  v47 = v51;
  v48 = v52;
  v49 = v53;
  v44 = v5;

  v43 = a3;

  while (1)
  {
    sub_100007C94(v19);
    v23 = sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0);
    if (sub_100002694(v19, 1, v23) == 1)
    {
      sub_100008104(v46);
    }

    v25 = *v19;
    v24 = v19[1];
    sub_100002808();
    sub_100006F04();
    v26 = *a5;
    v28 = sub_100003BC0(v25, v24);
    v29 = *(v26 + 16);
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (*(v26 + 24) >= v31)
    {
      if ((a4 & 1) == 0)
      {
        sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      sub_1000601E8(v31, a4 & 1);
      v33 = sub_100003BC0(v25, v24);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_16;
      }

      v28 = v33;
    }

    v35 = *a5;
    if (v32)
    {
      v36 = v45;
      sub_100006EAC();
      sub_10000A864(v15, type metadata accessor for EventValue);

      sub_1000616E0();
      sub_100020548(v36, v37);
      a4 = 1;
    }

    else
    {
      *(v35 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v38 = (*(v35 + 48) + 16 * v28);
      *v38 = v25;
      v38[1] = v24;
      sub_1000616E0();
      sub_100002808();
      sub_100006F04();
      v39 = *(v35 + 16);
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_15;
      }

      *(v35 + 16) = v41;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100060BA4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100060CE4(a1, a2, a3, *v3, &unk_10008FDC0, &unk_1000700C0, type metadata accessor for EventValue, type metadata accessor for EventValue);
  *v3 = result;
  return result;
}

void *sub_100060BFC()
{
  sub_10001C1A0();
  result = sub_100060CE4(v1, v2, v3, v4, v5, v6, v7, &type metadata accessor for URL);
  *v0 = result;
  return result;
}

char *sub_100060C44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100060EA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100060C64(void *a1, int64_t a2, char a3)
{
  result = sub_100019510(a1, a2, a3, *v3, &qword_10008FDB8, &qword_1000700B8, &qword_10008E780, &unk_10006FFD0);
  *v3 = result;
  return result;
}

char *sub_100060CA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100060FAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100060CC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000610AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100060CE4(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000228D4(a5, a6);
  v16 = a7(0);
  sub_10000392C(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  result = j__malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v20) == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((result - v20) / v18);
LABEL_19:
  v23 = *(a7(0) - 8);
  if (v11)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_10005FD98(a4 + v24, v14, v21 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v21;
}

char *sub_100060EA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000228D4(&unk_10008FD90, &qword_10006CC48);
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

char *sub_100060FAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000228D4(&qword_10008E1F8, &qword_10006CC58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_1000610AC(void *result, int64_t a2, char a3, uint64_t a4)
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

  sub_1000228D4(&unk_10008FDD0, &unk_1000700D0);
  v10 = *(sub_1000228D4(&qword_10008EE10, &qword_10006E8B8) - 8);
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
  v15 = *(sub_1000228D4(&qword_10008EE10, &qword_10006E8B8) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10005FEBC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100061278()
{
  sub_100002618();
  sub_100005BD0();
  swift_task_alloc();
  sub_100008D5C();
  *(v0 + 16) = v1;
  *v1 = v2;
  sub_1000091A0(v1);
  sub_100008E44();

  return sub_10005E714(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_100061318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008FDA0;
  if (!qword_10008FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FDA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100061450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008FDE8;
  if (!qword_10008FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FDE8);
  }

  return result;
}

uint64_t sub_1000614AC(void x0_0, void x1_0, void x2_0, void a4, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

void sub_1000614CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v15 = v12;
  v16 = v13;

  String.append(_:)(*&v15);
}

uint64_t sub_1000614F4()
{

  return swift_slowAlloc();
}

uint64_t sub_100061564()
{

  return swift_allocObject();
}

void sub_1000615BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v15 = v13;
  v16 = v12;

  String.append(_:)(*&v15);
}

unint64_t sub_1000615D8(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v6 = a1;
  v8 = *(v5 + 112);
  v9 = *(v5 + 120);

  return sub_1000053A0(v8, v9, va);
}

uint64_t sub_1000615F4(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100061618()
{
}

uint64_t sub_100061634()
{
  *(v1 + 120) = *v0;
  *(v1 + 128) = v0[1];
}

void sub_1000616F4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t sub_100061714(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_100060854(v6, a2, 0, a4, va);
}

uint64_t sub_100061734(uint64_t a1)
{

  return dispatch thunk of Actor.unownedExecutor.getter();
}

uint64_t sub_10006174C(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100061764(uint64_t a1)
{

  return sub_100005000(a1, v1, v2);
}

uint64_t sub_10006177C()
{
}

uint64_t sub_100061794()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_10008FE00);
  sub_1000050E4(v0, qword_10008FE00);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10006180C(char a1)
{
  v2 = v1;
  v25 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100001EDC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100001EAC();
  v8 = v7 - v6;
  v24 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100001EDC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100001EAC();
  v23 = v13 - v12;
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  sub_100001EAC();
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  sub_100001EAC();
  sub_10002E894();
  static DispatchQoS.default.getter();
  sub_100062594();
  sub_1000228D4(&qword_10008E8B8, &qword_10006E190);
  sub_10002E8D8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v10 + 104))(v23, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v24);
  (*(v4 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v25);
  static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v8, v25);
  v1[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[3] = 0;
  sub_1000228D4(&qword_10008FED8, &qword_100070268);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v1[4] = v16;
  if (sub_100059CF8())
  {
    sub_100067D28(_swiftEmptyArrayStorage);
    v18 = v17;
  }

  else
  {
    v18 = &_swiftEmptySetSingleton;
  }

  sub_1000228D4(&qword_10008FEE0, &unk_100070270);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = v18;
  *(v2 + 40) = v19;
  *(v2 + 48) = a1 & 1;
  v20 = *(v2 + 16);
  type metadata accessor for XPCConnection();
  swift_allocObject();
  v21 = v20;

  *(v2 + 24) = XPCConnection.init(machService:targetQ:listen:delegate:)(0xD000000000000017, 0x8000000100071660, v21, 1, v2, &off_100088838);

  return v2;
}

void sub_100061BB8(void *a1)
{
  xpc_copy_description(a1);
  v1 = String.init(cString:)();
  v3 = v2;
  _StringGuts.grow(_:)(36);

  v4._countAndFlagsBits = v1;
  v4._object = v3;
  String.append(_:)(v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100061C60(_xpc_connection_s *a1)
{
  v3 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for XPCObject(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  swift_unknownObjectRetain();
  XPCIncomingConnection.entitlementValue(forKey:)(v17);
  sub_100019DF4(v17, v15);
  if (sub_100002694(v15, 1, v6) == 1)
  {
    sub_100062450(v15);
LABEL_14:
    pid = xpc_connection_get_pid(a1);
    if (qword_10008DDF0 != -1)
    {
      sub_1000020B8(&qword_10008DDF0);
    }

    v25 = type metadata accessor for Logger();
    sub_1000050E4(v25, qword_10008FE00);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 67240192;
      *(v28 + 4) = pid;
      _os_log_impl(&_mh_execute_header, v26, v27, "connection attempted by unentitled process %{public}d", v28, 8u);
    }

    xpc_connection_cancel(a1);
    swift_unknownObjectRelease();
    return sub_100062450(v17);
  }

  sub_100004254(v15, v11);
  sub_10004AC88(v11, v9);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10002E5EC(v11);
    v23 = v9;
LABEL_13:
    sub_10002E5EC(v23);
    goto LABEL_14;
  }

  if ((*v9 & 1) == 0)
  {
    v23 = v11;
    goto LABEL_13;
  }

  if (*(v1 + 48))
  {
    v18 = xpc_connection_get_pid(a1);
    if (qword_10008DDF0 != -1)
    {
      sub_1000020B8(&qword_10008DDF0);
    }

    v19 = type metadata accessor for Logger();
    sub_1000050E4(v19, qword_10008FE00);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67240192;
      *(v22 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v20, v21, "rejecting connection from %{public}d while reporting is disabled", v22, 8u);
    }

    xpc_connection_cancel(a1);
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = type metadata accessor for TaskPriority();
    sub_1000026BC(v5, 1, 1, v30);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v1;
    v31[5] = a1;
    swift_unknownObjectRetain();

    sub_10002D48C(0, 0, v5, &unk_100070260, v31);
    swift_unknownObjectRelease();
  }

  sub_10002E5EC(v11);
  return sub_100062450(v17);
}

uint64_t sub_1000620B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  type metadata accessor for Client();
  swift_allocObject();

  swift_unknownObjectRetain();
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_10006218C;

  return sub_10002CB0C();
}

uint64_t sub_10006218C(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_10006228C, 0, 0);
}

uint64_t sub_10006228C()
{
  v1 = *(*(v0 + 16) + 40);

  os_unfair_lock_lock(v1 + 6);
  sub_100062578(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006235C(uint64_t a1, uint64_t a2)
{

  sub_10004E348(&v4, a2);
}

uint64_t sub_1000623AC()
{

  return v0;
}

uint64_t sub_1000623E4()
{
  sub_1000623AC();

  return _swift_deallocClassInstance(v0, 49, 7);
}

uint64_t sub_100062450(uint64_t a1)
{
  v2 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000624B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001BF00;

  return sub_1000620B4(a1, v4, v5, v7, v6);
}

unint64_t sub_100062594()
{
  result = qword_10008E8B0;
  if (!qword_10008E8B0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E8B0);
  }

  return result;
}

uint64_t sub_1000625EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006262C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10006267C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6775138 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10006274C(char a1)
{
  if (a1)
  {
    return 0x727574616E676973;
  }

  else
  {
    return 6775138;
  }
}

uint64_t sub_100062780(void *a1)
{
  v3 = sub_1000228D4(&qword_10008FEE8, &qword_100070408);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = a1[4];
  v8 = sub_100008DE4(a1, a1[3]);
  sub_100062A3C(v8, v9, v10);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v14 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100005284(a1);
  return v7;
}

uint64_t sub_10006296C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006267C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100062994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100062A3C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000629D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100062A3C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100062A0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100062780(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_100062A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008FEF0;
  if (!qword_10008FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FEF0);
  }

  return result;
}

uint64_t sub_100062A90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 32))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_100062ADC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RawStorebag._EncodedRawStorebag.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100062C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008FEF8;
  if (!qword_10008FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FEF8);
  }

  return result;
}

unint64_t sub_100062C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008FF00;
  if (!qword_10008FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FF00);
  }

  return result;
}

unint64_t sub_100062CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008FF08;
  if (!qword_10008FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FF08);
  }

  return result;
}

uint64_t sub_100062D20(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100062D60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100062DC0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100086130, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100062E38@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100062DC0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100062E68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100020094(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100062E94@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100062E0C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100062EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001FFD4(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100062F04(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100056AB4(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100062FC4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100056A9C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}