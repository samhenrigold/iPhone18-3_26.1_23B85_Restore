Swift::Int sub_10010B558(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100068FC4(&unk_100503FD0, &unk_10040B320);
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
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
      *(*(v5 + 48) + v13) = v17;
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

uint64_t sub_10010B7A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100068FC4(&unk_100503FE0, &unk_10040B330);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      result = static Hasher._hash(seed:_:)();
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

uint64_t sub_10010B9CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100068FC4(&qword_100503650, &qword_10040AA10);
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = static Hasher._hash(seed:_:)();
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

Swift::Int sub_10010BC14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_100068FC4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
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

unint64_t sub_10010BE50(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10010BF4C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(a1 + 16));
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10010C008(uint64_t a1, uint64_t a2, void (*a3)(void *, void, void))
{
  Hasher.init(_seed:)();
  a3(v7, *(a1 + 16), *(a1 + 24));
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10010C0B4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10010C1BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  v8 = [*(a1 + 24) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v5 + 8))(v7, v4);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10010C35C(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void *sub_10010C3F4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068FC4(&unk_100503F30, &unk_10040B2B0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
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

void *sub_10010C640()
{
  v1 = v0;
  sub_100068FC4(&qword_100503620, &unk_10040B2C0);
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

void sub_10010C7BC()
{
  v1 = v0;
  sub_100068FC4(&unk_100503EF0, &unk_10040B280);
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        sub_100069E2C(v18, *(&v18 + 1));
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

void sub_10010C918()
{
  v1 = v0;
  sub_100068FC4(&qword_100503618, &unk_10040B290);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = (*(v4 + 48) + v17);
        v20 = *v18;
        v21 = v18[1];
        *v19 = *v18;
        v19[1] = v21;
        sub_100069E2C(v20, *(&v20 + 1));
        sub_100069E2C(v21, *(&v21 + 1));
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

void *sub_10010CAC0()
{
  v1 = v0;
  sub_100068FC4(&qword_100503F90, &qword_10040A9F8);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
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

void *sub_10010CC14(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100068FC4(a1, a2);
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
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
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

void *sub_10010CD68()
{
  v1 = v0;
  sub_100068FC4(&qword_100503648, &qword_10040AA08);
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

void *sub_10010CEC4()
{
  v1 = v0;
  sub_100068FC4(&qword_100503658, &qword_10040AA18);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 32);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v19;
        *(v21 + 16) = v22;
        *(v21 + 32) = v20;
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

void *sub_10010D03C()
{
  v1 = v0;
  sub_100068FC4(&unk_100503FD0, &unk_10040B320);
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

void *sub_10010D17C()
{
  v1 = v0;
  sub_100068FC4(&unk_100503FE0, &unk_10040B330);
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

void *sub_10010D2BC()
{
  v1 = v0;
  sub_100068FC4(&qword_100503650, &qword_10040AA10);
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

id sub_10010D410(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100068FC4(a1, a2);
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

uint64_t sub_10010D550(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_10010E900(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for UWBSession();
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10010D410(&unk_100503E90, &qword_10040A9E0);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_100110210(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_10010D6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1001081DC(&qword_100502C18, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10010C3F4();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_10010F268(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_10010D998(Swift::UInt a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10010C640();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_10010F574(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_10010DAA4(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_10010EA7C(v4, a1);

      return v6;
    }

    return 0;
  }

  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {

    v12 = static UUID.== infix(_:_:)();

    if (v12)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  v16 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10010CC14(&unk_100507CE0, &unk_10040B260);
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_10010F71C(v10);
  result = v15;
  *v1 = v16;
  return result;
}

uint64_t sub_10010DCAC(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_10010EC44(v4, a1);

      return v6;
    }

    return 0;
  }

  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {

    v12 = static UUID.== infix(_:_:)();

    if (v12)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  v16 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10010CC14(&unk_100503E80, &unk_10040B250);
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_10010F93C(v10);
  result = v15;
  *v1 = v16;
  return result;
}

double sub_10010DEBC@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_64:
    result = 0.0;
    *a3 = xmmword_1004098E0;
    return result;
  }

  v11 = ~v9;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v45 = v13;
  v14 = a2 >> 62;
  v15 = __OFSUB__(HIDWORD(a1), a1);
  v42 = v15;
  v40 = a2;
  v41 = HIDWORD(a1) - a1;
  v43 = v11;
  v44 = BYTE6(a2);
  v39 = a1;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      break;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_67;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_68;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v44;
        if (v14)
        {
          v27 = v41;
          if (v42)
          {
            goto LABEL_66;
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_62;
      }

      goto LABEL_13;
    }

    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_62;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v47 = v18;
        *&v47[8] = v17;
        v47[10] = BYTE2(v17);
        v47[11] = BYTE3(v17);
        v47[12] = BYTE4(v17);
        v47[13] = BYTE5(v17);
        sub_100069E2C(v18, v17);
        v11 = v43;
        goto LABEL_61;
      }

      a2 = (v18 >> 32) - v18;
      if (v18 >> 32 < v18)
      {
        goto LABEL_69;
      }

      sub_100069E2C(v18, v17);
      v31 = __DataStorage._bytes.getter();
      if (v31)
      {
        v33 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v33))
        {
          goto LABEL_72;
        }

        v31 += v18 - v33;
      }

LABEL_58:
      __DataStorage._length.getter();
      a1 = v39;
      a2 = v40;
      sub_10019F024(v31, v39, v40, v47);
      sub_10006A178(v18, v17);
      v8 = v6 + 56;
      v11 = v43;
      if (v47[0])
      {
        goto LABEL_62;
      }

      goto LABEL_13;
    }

    if (v19 == 2)
    {
      a2 = *(v18 + 16);
      v30 = *(v18 + 24);
      sub_100069E2C(v18, v17);
      v31 = __DataStorage._bytes.getter();
      if (v31)
      {
        v32 = __DataStorage._offset.getter();
        if (__OFSUB__(a2, v32))
        {
          goto LABEL_71;
        }

        v31 += a2 - v32;
      }

      v26 = __OFSUB__(v30, a2);
      a2 = v30 - a2;
      if (v26)
      {
        goto LABEL_70;
      }

      goto LABEL_58;
    }

    *&v47[6] = 0;
    *v47 = 0;
    sub_100069E2C(v18, v17);
LABEL_61:
    sub_10019F024(v47, a1, a2, &v46);
    sub_10006A178(v18, v17);
    if (v46)
    {
      goto LABEL_62;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17 == 0xC000000000000000;
  }

  v22 = !v20 || v14 < 3;
  if ((v22 | v45))
  {
LABEL_36:
    v23 = 0;
    if (v14 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_62:
  a2 = v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v37;
  *v47 = *v37;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_63;
  }

LABEL_73:
  sub_10010C7BC();
  v35 = *v47;
LABEL_63:
  *a3 = *(*(v35 + 48) + 16 * v10);
  sub_10010FB9C(v10);
  *a2 = *v47;
  return result;
}

uint64_t sub_10010E308(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v8 < 0)
    {
      v9 = *v1;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = __CocoaSet.contains(_:)();

    if (v10)
    {
      sub_10010EE1C(v9, a1);
      v12 = v11;

      return v12;
    }

    return 0;
  }

  v29 = v1;
  v14 = v5;
  Hasher.init(_seed:)();
  v15 = [*(a1 + 24) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v4 + 8))(v7, v14);
  v16 = Hasher._finalize()();
  v17 = -1 << *(v8 + 32);
  v18 = v16 & ~v17;
  if (((*(v8 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
    return 0;
  }

  v19 = ~v17;
  sub_10009393C(0, &qword_100502D20, NSObject_ptr);
  while (1)
  {
    v20 = *(*(*(v8 + 48) + 8 * v18) + 24);
    v21 = *(a1 + 24);

    v22 = v20;
    v23 = v21;
    v24 = static NSObject.== infix(_:_:)();

    if (v24)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v8 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }
  }

  v25 = v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v25;
  v30 = *v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10010CC14(&qword_100503678, &qword_10040AA28);
    v27 = v30;
  }

  v28 = *(*(v27 + 48) + 8 * v18);
  sub_10010FD70(v18);
  result = v28;
  *v29 = v30;
  return result;
}

uint64_t sub_10010E5EC(void *a1, unint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v12 = *v5;
    }

    else
    {
      v12 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v13 = a1;
    v14 = __CocoaSet.contains(_:)();

    if (v14)
    {
      v15 = sub_10010F0E8(v12, v13, a4, a5, a2, a3);

      return v15;
    }

    return 0;
  }

  v26 = v5;
  sub_10009393C(0, a2, a3);
  v17 = NSObject._rawHashValue(seed:)(*(v9 + 40));
  v18 = -1 << *(v9 + 32);
  v19 = v17 & ~v18;
  if (((*(v9 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
    return 0;
  }

  v20 = ~v18;
  while (1)
  {
    v21 = *(*(v9 + 48) + 8 * v19);
    v22 = static NSObject.== infix(_:_:)();

    if (v22)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v9 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v26;
  v27 = *v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10010D410(a4, a5);
    v24 = v27;
  }

  v25 = *(*(v24 + 48) + 8 * v19);
  sub_100110210(v19);
  result = v25;
  *v26 = v27;
  return result;
}

uint64_t sub_10010E7A0(uint64_t a1, uint64_t a2)
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
    sub_10010CD68();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_10011004C(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_10010E900(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1001093E4(v5, v4, &unk_100503E90, &qword_10040A9E0, type metadata accessor for UWBSession);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    type metadata accessor for UWBSession();
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_100110210(v10);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010EA7C(uint64_t a1, uint64_t a2)
{

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_10010857C(v4, v3);
  v13 = v5;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  dispatch thunk of Hashable.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v10 = static UUID.== infix(_:_:)();

      if (v10)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v5 + 48) + 8 * v8);
  sub_10010F71C(v8);
  result = static UUID.== infix(_:_:)();
  if (result)
  {
    *v2 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010EC44(uint64_t a1, uint64_t a2)
{

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_100108E38(v3, v2);
  v13 = v4;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  dispatch thunk of Hashable.hash(into:)();
  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {

      v9 = static UUID.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v4 + 48) + 8 * v7);
  sub_10010F93C(v7);
  result = static UUID.== infix(_:_:)();
  if (result)
  {
    *v12 = v13;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10010EE1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v2;

  v8 = __CocoaSet.count.getter();
  v9 = swift_unknownObjectRetain();
  v10 = sub_100109094(v9, v8);
  v28 = v10;
  Hasher.init(_seed:)();
  v11 = *(a2 + 24);

  v12 = [v11 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v5 + 8))(v7, v4);
  v13 = Hasher._finalize()();
  v14 = -1 << *(v10 + 32);
  v15 = v13 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    sub_10009393C(0, &qword_100502D20, NSObject_ptr);
    while (1)
    {
      v17 = *(*(*(v10 + 48) + 8 * v15) + 24);
      v18 = *(a2 + 24);

      v19 = v17;
      v20 = v18;
      LOBYTE(v17) = static NSObject.== infix(_:_:)();

      if (v17)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v21 = *(*(v28 + 48) + 8 * v15);
  sub_10010FD70(v15);
  v22 = *(v21 + 24);
  v23 = *(a2 + 24);
  v24 = v22;
  v25 = static NSObject.== infix(_:_:)();

  if (v25)
  {
    *v27 = v28;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10010F0E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  v11 = v6;

  v12 = __CocoaSet.count.getter();
  v13 = swift_unknownObjectRetain();
  v14 = sub_10010837C(v13, v12, a3, a4, a5, a6);
  v24 = v14;
  v15 = *(v14 + 40);

  v16 = NSObject._rawHashValue(seed:)(v15);
  v17 = -1 << *(v14 + 32);
  v18 = v16 & ~v17;
  if ((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    sub_10009393C(0, a5, a6);
    while (1)
    {
      v20 = *(*(v14 + 48) + 8 * v18);
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v22 = *(*(v14 + 48) + 8 * v18);
  sub_100110210(v18);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v11 = v24;
    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10010F268(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

unint64_t sub_10010F574(unint64_t result)
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
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
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
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
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

unint64_t sub_10010F71C(unint64_t result)
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
        type metadata accessor for UUID();
        sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

        dispatch thunk of Hashable.hash(into:)();
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
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
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

unint64_t sub_10010F93C(unint64_t result)
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
      v20 = v4;
      do
      {
        v10 = v3;
        v11 = v9;
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

        dispatch thunk of Hashable.hash(into:)();
        v12 = Hasher._finalize()();

        v9 = v11;
        v13 = v12 & v7;
        if (v2 >= v11)
        {
          if (v13 < v11)
          {
            v4 = v20;
            v3 = v10;
          }

          else
          {
            v4 = v20;
            v3 = v10;
            if (v2 >= v13)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v4 = v20;
          v3 = v10;
          if (v13 >= v9 || v2 >= v13)
          {
LABEL_12:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
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

unint64_t sub_10010FB9C(unint64_t result)
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
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        Hasher.init(_seed:)();
        sub_100069E2C(v11, v12);
        Data.hash(into:)();
        v13 = Hasher._finalize()();
        sub_10006A178(v11, v12);
        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2);
          v17 = (v15 + 16 * v6);
          if (v2 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
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

void sub_10010FD70(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v26 = v8;
      v13 = (v12 + 1) & v11;
      v14 = (v4 + 8);
      while (1)
      {
        v15 = *(*(v7 + 48) + 8 * v10);
        Hasher.init(_seed:)();
        v16 = *(v15 + 24);

        v17 = [v16 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        (*v14)(v6, v3);
        v18 = Hasher._finalize()();

        v19 = v18 & v11;
        if (a1 >= v13)
        {
          if (v19 < v13)
          {
            goto LABEL_5;
          }
        }

        else if (v19 >= v13)
        {
          goto LABEL_11;
        }

        if (a1 >= v19)
        {
LABEL_11:
          v20 = *(v7 + 48);
          v21 = (v20 + 8 * a1);
          v22 = (v20 + 8 * v10);
          if (a1 != v10 || v21 >= v22 + 1)
          {
            *v21 = *v22;
            a1 = v10;
          }
        }

LABEL_5:
        v10 = (v10 + 1) & v11;
        if (((*(v26 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {

          v8 = v26;
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v23 = *(v7 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v25;
    ++*(v7 + 36);
  }
}

unint64_t sub_10011004C(unint64_t result)
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

unint64_t sub_100110210(unint64_t result)
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
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t *sub_1001103B0(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = a4;
    sub_1001115B8(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

void *sub_100110448(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_100114FB0(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1001104E4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_1000DF7F0(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

void sub_100110574(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v21 = a2;
    v7 = 1 << *(a3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a3 + 56);
    v10 = (v7 + 63) >> 6;
    v23 = a4;
    v11 = 0;
    v12 = 0;
    while (2)
    {
      v22 = v11;
      do
      {
        if (!v9)
        {
          v14 = v12;
          while (1)
          {
            v12 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v12 >= v10)
            {
              goto LABEL_20;
            }

            v15 = *(a3 + 56 + 8 * v12);
            ++v14;
            if (v15)
            {
              v13 = __clz(__rbit64(v15));
              v9 = (v15 - 1) & v15;
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_22;
        }

        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_15:
        v16 = v13 | (v12 << 6);
        v17 = *(*(*(a3 + 48) + 8 * v16) + 56);
        if (!v17)
        {
          break;
        }

        sub_10009393C(0, &qword_100503F18, CBPeripheral_ptr);
        v18 = v23;

        v19 = v17;
        v20 = static NSObject.== infix(_:_:)();
      }

      while ((v20 & 1) != 0);
      *&a1[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
      v11 = v22 + 1;
      if (!__OFADD__(v22, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
LABEL_20:
    sub_10024B00C(a1, v21, v22, a3);
  }
}

uint64_t sub_100110740(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v1;
    v7 = a1;
    goto LABEL_8;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaSet.count.getter();
  if (!__OFADD__(result, 1))
  {
    v9 = sub_100108E38(v5, result + 1);
    v7 = a1;
    isUniquelyReferenced_nonNull_native = 1;
LABEL_8:
    result = sub_1001108A0(v7, isUniquelyReferenced_nonNull_native);
    *v2 = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001107E0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v1;
    v7 = a1;
    goto LABEL_8;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaSet.count.getter();
  if (!__OFADD__(result, 1))
  {
    v9 = sub_10010837C(v5, result + 1, &unk_100507D10, &qword_10040A9E8, &qword_100503F00, SEEndPoint_ptr);
    v7 = a1;
    isUniquelyReferenced_nonNull_native = 1;
LABEL_8:
    result = sub_100110BBC(v7, isUniquelyReferenced_nonNull_native);
    *v2 = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001108A0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  v30 = v2;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v28 = a2;
    v10 = ~v8;
    while (1)
    {

      v11 = static UUID.== infix(_:_:)();

      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        v12 = 1;
        goto LABEL_8;
      }
    }

    v12 = 0;
LABEL_8:
    v13 = v11 ^ 1;
    a2 = v28;
  }

  else
  {
    v13 = 1;
    v12 = 1;
  }

  v14 = *(v6 + 16);
  v15 = v14 + v12;
  if (__OFADD__(v14, v12))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v16 = *(v6 + 24);
  if (v16 < v15 || (a2 & 1) == 0)
  {
    if (a2)
    {
      v29 = v13;
      sub_10010A814(v15);
    }

    else
    {
      if (v16 >= v15)
      {
        sub_10010CC14(&unk_100503E80, &unk_10040B250);
        if ((v13 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      v29 = v13;
      sub_1000DBAE8(v15);
    }

    v17 = *v3;
    Hasher.init(_seed:)();
    dispatch thunk of Hashable.hash(into:)();
    v18 = Hasher._finalize()();
    v19 = -1 << *(v17 + 32);
    v9 = v18 & ~v19;
    if ((*(v17 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v20 = ~v19;
      while (1)
      {

        v21 = static UUID.== infix(_:_:)();

        if (v21)
        {
          break;
        }

        v9 = (v9 + 1) & v20;
        if (((*(v17 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v3 = v30;
      if ((v29 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
LABEL_24:
      v3 = v30;
      if (v29)
      {
LABEL_25:
        v22 = *v3;
        *(*v3 + 8 * (v9 >> 6) + 56) |= 1 << v9;
        *(*(v22 + 48) + 8 * v9) = a1;
        v23 = *(v22 + 16);
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (!v24)
        {
          result = 0;
          *(v22 + 16) = v25;
          return result;
        }

        goto LABEL_31;
      }
    }

LABEL_32:
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  if (v13)
  {
    goto LABEL_25;
  }

LABEL_28:
  v27 = *(*v3 + 48);
  result = *(v27 + 8 * v9);
  *(v27 + 8 * v9) = a1;
  return result;
}

uint64_t sub_100110BBC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = NSObject._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    v11 = 1;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v9);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v11 = 0;
LABEL_8:
    v14 = v13 ^ 1;
    v3 = v2;
  }

  else
  {
    v14 = 1;
    v11 = 1;
  }

  v15 = *(v6 + 16);
  v16 = v15 + v11;
  if (__OFADD__(v15, v11))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v17 = *(v6 + 24);
  if (v17 >= v16 && (a2 & 1) != 0)
  {
    if ((v14 & 1) == 0)
    {
LABEL_28:
      v29 = *(*v3 + 48);
      result = *(v29 + 8 * v9);
      *(v29 + 8 * v9) = a1;
      return result;
    }

    goto LABEL_25;
  }

  if (a2)
  {
    sub_10010BC14(v16, &unk_100507D10, &qword_10040A9E8);
  }

  else
  {
    if (v17 >= v16)
    {
      sub_10010D410(&unk_100507D10, &qword_10040A9E8);
      if ((v14 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    sub_1000DAD34(v16);
  }

  v18 = *v3;
  v19 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v20 = -1 << *(v18 + 32);
  v9 = v19 & ~v20;
  if (((*(v18 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_24:
    if ((v14 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_25:
    v24 = *v3;
    *(*v3 + 8 * (v9 >> 6) + 56) |= 1 << v9;
    *(*(v24 + 48) + 8 * v9) = a1;
    v25 = *(v24 + 16);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (!v26)
    {
      result = 0;
      *(v24 + 16) = v27;
      return result;
    }

    goto LABEL_30;
  }

  v21 = ~v20;
  sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
  while (1)
  {
    v22 = *(*(v18 + 48) + 8 * v9);
    v23 = static NSObject.== infix(_:_:)();

    if (v23)
    {
      break;
    }

    v9 = (v9 + 1) & v21;
    if (((*(v18 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_31:
  sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100110E54(void *result)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = result;
  v5 = 0;
  v6 = 0;
  while (LOBYTE(v2[v5 + 4]) == 1)
  {
    ++v6;
    v5 += 3;
    if (v3 == v6)
    {
      return *(*result + 16);
    }
  }

  if (v1)
  {
    return v6;
  }

  v7 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    if (v7 == v3)
    {
      return v6;
    }

    while (v7 < v3)
    {
      if (v2[v5 + 7])
      {
        if (v7 != v6)
        {
          if (v6 >= v3)
          {
            goto LABEL_23;
          }

          v8 = &v2[3 * v6 + 4];
          v15 = *v8;
          v10 = *(v8 + 8);
          v9 = *(v8 + 16);
          v12 = v2[v5 + 8];
          v11 = v2[v5 + 9];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1001A1620(v2);
          }

          v13 = &v2[3 * v6];
          *(v13 + 32) = 1;
          v13[5] = v12;
          v13[6] = v11;

          if (v7 >= v2[2])
          {
            goto LABEL_24;
          }

          v14 = &v2[v5];
          *(v14 + 56) = v15;
          v14[8] = v10;
          v14[9] = v9;

          *v4 = v2;
        }

        ++v6;
      }

      ++v7;
      v3 = v2[2];
      v5 += 3;
      if (v7 == v3)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100110FE4(void *result)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = result;
  v5 = 0;
  v6 = 0;
  while ((v2[v5 + 4] & 1) == 0)
  {
    ++v6;
    v5 += 3;
    if (v3 == v6)
    {
      return *(*result + 16);
    }
  }

  if (v1)
  {
    return v6;
  }

  v7 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    if (v7 == v3)
    {
      return v6;
    }

    while (v7 < v3)
    {
      if ((v2[v5 + 7] & 1) == 0)
      {
        if (v7 != v6)
        {
          if (v6 >= v3)
          {
            goto LABEL_23;
          }

          v8 = &v2[3 * v6 + 4];
          v15 = *v8;
          v10 = *(v8 + 8);
          v9 = *(v8 + 16);
          v12 = v2[v5 + 8];
          v11 = v2[v5 + 9];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1001A1620(v2);
          }

          v13 = &v2[3 * v6];
          *(v13 + 32) = 0;
          v13[5] = v12;
          v13[6] = v11;

          if (v7 >= v2[2])
          {
            goto LABEL_24;
          }

          v14 = &v2[v5];
          *(v14 + 56) = v15;
          v14[8] = v10;
          v14[9] = v9;

          *v4 = v2;
        }

        ++v6;
      }

      ++v7;
      v3 = v2[2];
      v5 += 3;
      if (v7 == v3)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001111C0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v16[3] = type metadata accessor for DSKBLE(0);
  v16[4] = &off_1004C7070;
  v16[0] = a1;
  v8 = qword_100501D90;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v10)
  {
    sub_1000BC094(v16, v15);
    v13 = OBJC_IVAR____TtC10seserviced24DSKBLEConnectionPriority_delegate;
    swift_beginAccess();
    sub_10011F438(v15, a2 + v13);
    swift_endAccess();
    return sub_1000752F4(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100111368(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[3] = type metadata accessor for DSKBLE.BLEScanRequest();
  v12[4] = &off_1004C7108;
  v12[0] = a3;
  type metadata accessor for DSKBLE.BLEPeripheral();
  v8 = swift_allocObject();
  *(v8 + 80) = 0;
  *(v8 + 88) = &_swiftEmptySetSingleton;
  *(v8 + 96) = _swiftEmptyDictionarySingleton;
  *(v8 + 104) = xmmword_1004098E0;
  *(v8 + 120) = 0;
  *(v8 + 122) = 1;
  *(v8 + 128) = 0;
  v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v9 + 16) = 4096;
  bzero((v9 + 32), 0x1000uLL);
  *(v8 + 136) = v9;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = _swiftEmptyArrayStorage;
  *(v8 + 168) = 2;
  *(v8 + 176) = 0;
  *(v8 + 184) = 0;
  *(v8 + 192) = 1;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  sub_1000BC094(v12, v8 + 40);
  *(v8 + 16) = a4;
  v10 = *(a3 + 88);
  *(v8 + 176) = *(a3 + 72);
  *(v8 + 192) = v10;
  sub_1000752F4(v12);
  return v8;
}

uint64_t sub_100111490(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[3] = type metadata accessor for DSKBLE.BLEConnectionRequest();
  v12[4] = &off_1004C7088;
  v12[0] = a3;
  type metadata accessor for DSKBLE.BLEPeripheral();
  v8 = swift_allocObject();
  *(v8 + 80) = 0;
  *(v8 + 88) = &_swiftEmptySetSingleton;
  *(v8 + 96) = _swiftEmptyDictionarySingleton;
  *(v8 + 104) = xmmword_1004098E0;
  *(v8 + 120) = 0;
  *(v8 + 122) = 1;
  *(v8 + 128) = 0;
  v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v9 + 16) = 4096;
  bzero((v9 + 32), 0x1000uLL);
  *(v8 + 136) = v9;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = _swiftEmptyArrayStorage;
  *(v8 + 168) = 2;
  *(v8 + 176) = 0;
  *(v8 + 184) = 0;
  *(v8 + 192) = 1;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  sub_1000BC094(v12, v8 + 40);
  *(v8 + 16) = a4;
  v10 = *(a3 + 80);
  *(v8 + 176) = *(a3 + 64);
  *(v8 + 192) = v10;
  sub_1000752F4(v12);
  return v8;
}

void sub_1001115B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);

    v14 = String._bridgeToObjectiveC()();
    v15 = [objc_opt_self() UUIDWithString:v14];

    sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
    LOBYTE(v14) = static NSObject.== infix(_:_:)();

    if ((v14 & 1) == 0)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
LABEL_15:

        sub_10024A434(a1, a2, v19, a3);
        return;
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
      goto LABEL_15;
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
}

Swift::Int sub_100111770(int64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v30 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v25 = v7;
    v26 = v3;
    v24 = &v24;
    __chkstk_darwin(v9);
    v27 = &v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v8);
    v28 = 0;
    v29 = v4;
    v10 = 0;
    v3 = v4 + 56;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v7 = v12 & *(v4 + 56);
    v4 = (v11 + 63) >> 6;
    while (v7)
    {
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v16 = v13 | (v10 << 6);

      v17 = String._bridgeToObjectiveC()();
      v18 = [objc_opt_self() UUIDWithString:v17];

      sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
      v8 = static NSObject.== infix(_:_:)();

      if ((v8 & 1) == 0)
      {
        *&v27[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = sub_10024A434(v27, v25, v28, v29);

          return v20;
        }
      }
    }

    v14 = v10;
    while (1)
    {
      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v10 >= v4)
      {
        goto LABEL_16;
      }

      v15 = *(v3 + 8 * v10);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v7 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = v30;
  v20 = sub_1001103B0(v22, v7, v4, v23);

  return v20;
}

Swift::Int sub_100111A50(int64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_100111770(a1, a2);
  }

  v2 = a2;
  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for DSKBLE.BLEScanRequest();
    do
    {
      swift_dynamicCast();
      v3 = String._bridgeToObjectiveC()();
      v4 = [objc_opt_self() UUIDWithString:v3];

      sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
      LOBYTE(v3) = static NSObject.== infix(_:_:)();

      if (v3)
      {
      }

      else
      {
        v5 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v5)
        {
          sub_10010A5C0(v5 + 1, &unk_100507CF0, &qword_10040B270, &String.hash(into:));
        }

        Hasher.init(_seed:)();
        String.hash(into:)();
        result = Hasher._finalize()();
        v7 = &_swiftEmptySetSingleton + 56;
        v8 = -1 << *(&_swiftEmptySetSingleton + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7)) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v10 == v13;
            if (v10 == v13)
            {
              v10 = 0;
            }

            v12 |= v14;
            v15 = *&v7[8 * v10];
          }

          while (v15 == -1);
          v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        }

        *&v7[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v11) = v16;
        ++*(&_swiftEmptySetSingleton + 2);
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100111CE0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v19 = a3;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a1 + 48) + ((v13 << 11) | (32 * __clz(__rbit64(v9)))));
      v16 = v14[1];
      v17 = *v14;
      v18 = v16;
      sub_100069E2C(v17, *(&v17 + 1));
      sub_100069E2C(v16, *(&v16 + 1));
      sub_1000F0C4C(&v17, a2, v19);
      v15 = v18;
      sub_10006A178(v17, *(&v17 + 1));
      result = sub_10006A178(v15, *(&v15 + 1));
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100111E28(void *a1, char *a2, void *a3, void *a4, void *a5, uint64_t a6, char *a7, void (*a8)(char *, uint64_t))
{
  v164 = a1;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v161 = *(v15 - 8);
  v162 = v15;
  __chkstk_darwin(v15);
  v159 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for DispatchQoS();
  v158 = *(v160 - 8);
  __chkstk_darwin(v160);
  v157 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for DispatchTimeInterval();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v152 = (&v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v163 = type metadata accessor for DispatchTime();
  v156 = *(v163 - 8);
  __chkstk_darwin(v163);
  v151 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v155 = &v141 - v21;
  v150 = type metadata accessor for UUID();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v148 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 1);
  __chkstk_darwin(v23);
  v26 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = a6;
  v27[5] = a7;
  v169 = v27;
  v27[6] = a8;

  v168 = a8;

  v166 = a4;
  v167 = a5;
  sub_100069E2C(a4, a5);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v28 = qword_10051B7F0;
  *v26 = qword_10051B7F0;
  (*(v24 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v23);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  v31 = *(v24 + 8);
  v30 = (v24 + 8);
  v31(v26, v23);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_63;
  }

  v165 = a7;
  a4 = a3;
  a7 = *(a3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
  if (!a7)
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Not running", v34, 2u);
    }

    sub_1000A5DD4(3, 1, v166, v167, a6, v165, v168);

    return;
  }

  v147 = v29;
  v29 = a2;
  v23 = (a2 >> 62);
  if ((a2 >> 62) <= 1)
  {
    a3 = v164;
    if (!v23)
    {
      v26 = BYTE6(a2);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  a3 = v164;
  if (v23 != 2)
  {
    v39 = a7;
LABEL_20:
    sub_100069E2C(a3, v29);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    sub_10006A178(a3, v29);
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v42 = 136315138;
      v171 = sub_100288788(a3, v29);
      v44 = a6;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v45 = BidirectionalCollection<>.joined(separator:)();
      v47 = v46;

      v48 = sub_1002FFA0C(v45, v47, aBlock);
      a6 = v44;

      *(v42 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v40, v41, "Wrong address %s", v42, 0xCu);
      sub_1000752F4(v43);
    }

    sub_1000A5DD4(8, 1, v166, v167, a6, v165, v168);

    return;
  }

  v36 = v164[2];
  v35 = v164[3];
  v26 = v35 - v36;
  if (__OFSUB__(v35, v36))
  {
    __break(1u);
LABEL_15:
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v26 = HIDWORD(a3) - a3;
      goto LABEL_17;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_17:
  v37 = a7;
  if (v26 != 7)
  {
    goto LABEL_20;
  }

  a2 = v37;
  sub_100069E2C(a3, v29);
  v26 = 0;
  if (sub_1000939AC(a3, v29, 0, 0, 0))
  {
    goto LABEL_20;
  }

  if (v23 == 2)
  {
    v51 = a3[2];
    v50 = a3[3];
    v49 = v50 - v51;
    if (!__OFSUB__(v50, v51))
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  else if (v23 == 1)
  {
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      __break(1u);
LABEL_66:
      swift_once();
LABEL_44:
      v77 = v144;
      v78 = [v144 identifier];

      v79 = v148;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v80 = swift_allocObject();
      v80[2] = a4;
      v80[3] = a3;
      v80[4] = v29;
      v80[5] = sub_100114CC4;
      v80[6] = v169;
      type metadata accessor for DSKBLEPairing.BLEUnpairingRequest(0);
      v81 = swift_allocObject();
      (*(v149 + 32))(v81 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier, v79, v150);
      v82 = (v81 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_tag);
      *v82 = 0;
      v82[1] = 0;
      v83 = (v81 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted);
      *v83 = sub_100114D2C;
      v83[1] = v80;
      sub_100069E2C(a3, v29);
      v84 = a4;

      sub_1000E82EC(v81);

LABEL_54:
      return;
    }

    v49 = HIDWORD(a3) - a3;
    goto LABEL_32;
  }

  v49 = BYTE6(v29);
LABEL_32:
  v145 = a6;
  if (v49 < 1)
  {
    goto LABEL_68;
  }

  v52 = Data.subdata(in:)();
  v54 = v53;
  v55 = sub_1000E3F84(v52, v53);
  sub_10006A178(v52, v54);
  aBlock[0] = v55;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
  v56 = BidirectionalCollection<>.joined(separator:)();
  a6 = v57;

  v58 = String._bridgeToObjectiveC()();
  v59 = [a2 retrievePeripheralWithAddress:v58];

  if (v59)
  {
    v164 = v56;
    __chkstk_darwin(v60);
    v23 = &v141 - 4;
    a7 = v59;
    *(&v141 - 2) = v59;
    if (qword_100501D78 == -1)
    {
LABEL_35:
      __chkstk_darwin(v61);
      *(&v141 - 2) = sub_100114CD8;
      *(&v141 - 1) = v23;
      v30 = *(v62 + 24);
      __chkstk_darwin(v63);
      *(&v141 - 2) = sub_10006A280;
      *(&v141 - 1) = v64;
      os_unfair_lock_lock(v30 + 8);
      sub_1000B3514(&v30[4], aBlock);
      if (v26)
      {
LABEL_69:
        sub_10006A178(v166, v167);

        os_unfair_lock_unlock(v30 + 8);
        __break(1u);
        return;
      }

      os_unfair_lock_unlock(v30 + 8);
      if ((aBlock[0] & 1) == 0)
      {
        v65 = [a2 sharedPairingAgent];
        if (v65)
        {
          v66 = v65;
          v67 = [v65 retrievePairedPeers];
          if (v67)
          {
            v68 = v67;
            v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v70 = sub_1000F1970(v69);

            if (v70)
            {
              v143 = v66;
              aBlock[0] = a7;
              __chkstk_darwin(v71);
              *(&v141 - 2) = aBlock;
              v144 = v72;
              v73 = sub_1002FB068(sub_100114CFC, (&v141 - 4), v70);

              if (v73)
              {

                v74 = Logger.logObject.getter();
                v75 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v74, v75))
                {
                  v76 = swift_slowAlloc();
                  *v76 = 0;
                  _os_log_impl(&_mh_execute_header, v74, v75, "Trying to unpair since we're paired but the peripheral unpaired from us", v76, 2u);
                }

                if (qword_100501968 == -1)
                {
                  goto LABEL_44;
                }

                goto LABEL_66;
              }

              v66 = v144;
            }
          }
        }
      }

      v105 = a7;

      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();

      v108 = os_log_type_enabled(v106, v107);
      v146 = a6;
      if (!v108)
      {
        v120 = a2;

        goto LABEL_61;
      }

      v142 = v107;
      v143 = v106;
      v109 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      aBlock[0] = v141;
      *v109 = 136315650;
      v110 = [v105 identifier];
      v111 = v105;
      v112 = v148;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v113 = UUID.uuidString.getter();
      v115 = v114;
      v116 = v112;
      v30 = v111;
      (*(v149 + 8))(v116, v150);
      v117 = sub_1002FFA0C(v113, v115, aBlock);

      *(v109 + 4) = v117;
      *(v109 + 12) = 2080;
      v118 = [v111 getTags];
      if (v118)
      {
        v119 = v118;
        v120 = a2;

        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v121 = Array.description.getter();
        v123 = v122;
        v105 = v111;

        v124 = sub_1002FFA0C(v121, v123, aBlock);

        *(v109 + 14) = v124;
        *(v109 + 22) = 2080;
        *(v109 + 24) = sub_1002FFA0C(v164, v146, aBlock);
        v106 = v143;
        _os_log_impl(&_mh_execute_header, v143, v142, "Deleting existing peripheral %s with tags %s for %s", v109, 0x20u);
        swift_arrayDestroy();

LABEL_61:

        v144 = v105;
        v125 = String._bridgeToObjectiveC()();
        [v105 tag:v125];

        v126 = String._bridgeToObjectiveC()();
        [v105 tag:v126];

        v127 = v151;
        static DispatchTime.now()();
        v128 = v152;
        *v152 = 5;
        v129 = v153;
        v130 = v154;
        (*(v153 + 104))(v128, enum case for DispatchTimeInterval.seconds(_:), v154);
        v131 = v155;
        + infix(_:_:)();
        (*(v129 + 8))(v128, v130);
        v168 = *(v156 + 8);
        v168(v127, v163);
        v132 = swift_allocObject();
        v132[2] = a4;
        v132[3] = v120;
        v132[4] = a3;
        v132[5] = v29;
        v133 = v146;
        v132[6] = v164;
        v132[7] = v133;
        v134 = a3;
        v135 = v169;
        v132[8] = sub_100114CC4;
        v132[9] = v135;
        aBlock[4] = sub_100114CE4;
        aBlock[5] = v132;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100080830;
        aBlock[3] = &unk_1004C74A8;
        v136 = _Block_copy(aBlock);
        v167 = v120;
        sub_100069E2C(v134, v29);
        v137 = a4;

        v138 = v157;
        static DispatchQoS.unspecified.getter();
        v171 = _swiftEmptyArrayStorage;
        sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
        v139 = v159;
        v140 = v162;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v136);

        (*(v161 + 8))(v139, v140);
        (*(v158 + 8))(v138, v160);
        v168(v131, v163);

        return;
      }

      sub_10006A178(v166, v167);

      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

LABEL_64:
    v61 = swift_once();
    goto LABEL_35;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v86 = [a2 createPeripheralWithAddress:isa andIdentifier:0];

  v87 = Logger.logObject.getter();
  if (!v86)
  {
    v94 = static os_log_type_t.error.getter();

    v95 = os_log_type_enabled(v87, v94);
    v96 = v168;
    if (v95)
    {
      v97 = v56;
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      aBlock[0] = v99;
      *v98 = 136315138;
      v100 = sub_1002FFA0C(v97, a6, aBlock);

      *(v98 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v87, v94, "Failed to create peripheral for %s", v98, 0xCu);
      sub_1000752F4(v99);
    }

    else
    {
    }

    sub_1000A5DD4(2, 1, v166, v167, v145, v165, v96);

    goto LABEL_54;
  }

  v88 = v56;
  v89 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v87, v89))
  {
    v90 = swift_slowAlloc();
    v91 = a6;
    v92 = swift_slowAlloc();
    aBlock[0] = v92;
    *v90 = 136315138;
    v93 = sub_1002FFA0C(v88, v91, aBlock);

    *(v90 + 4) = v93;
    _os_log_impl(&_mh_execute_header, v87, v89, "Created new peripheral for %s", v90, 0xCu);
    sub_1000752F4(v92);
  }

  else
  {
  }

  v101 = v145;
  v103 = v167;
  v102 = v168;
  v104 = v86;
  sub_1000A5DD4(v86, 0, v166, v103, v101, v165, v102);
}

void sub_10011333C(int64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v47 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v15 = qword_100501D90;

  if (v15 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v16 = qword_10051B7F0;
    *v13 = qword_10051B7F0;
    (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
    v17 = v16;
    LOBYTE(v16) = _dispatchPreconditionTest(_:)();
    (*(v11 + 8))(v13, v10);
    if ((v16 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v18 = *(a2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (!v18)
    {
      sub_1000D1840(65539, a3, a4);

      return;
    }

    v46 = v8;
    v50 = a3;
    v51 = a4;
    v19 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v49 = a2;
    v20 = *(a2 + v19);
    v54 = v18;
    v55 = v14;
    v56 = a1;
    v53 = v20;
    if ((v20 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();
      v21 = v18;
      v13 = __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      a4 = v59;
      a2 = v60;
      v11 = v61;
      a3 = v62;
      v10 = v63;
    }

    else
    {
      v22 = -1 << *(v20 + 32);
      a2 = (v20 + 56);
      v11 = ~v22;
      v23 = -v22;
      v24 = v23 < 64 ? ~(-1 << v23) : -1;
      v10 = v24 & *(v20 + 56);
      a4 = v20;
      swift_bridgeObjectRetain_n();
      v25 = v18;
      a3 = 0;
    }

    v52 = v11;
    a1 = (v11 + 64) >> 6;
    if (a4 < 0)
    {
      break;
    }

LABEL_12:
    v26 = a3;
    v27 = v10;
    v28 = a3;
    if (v10)
    {
LABEL_16:
      v14 = (v27 - 1) & v27;
      v11 = *(*(a4 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));

      if (v11)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= a1)
      {
        goto LABEL_23;
      }

      v27 = a2[v28];
      v26 = (v26 + 1);
      if (v27)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  while (1)
  {
    v29 = __CocoaSet.Iterator.next()();
    if (!v29)
    {
      break;
    }

    v57 = v29;
    type metadata accessor for DSKBLE.BLEPeripheral();
    swift_dynamicCast();
    v11 = aBlock[0];
    v28 = a3;
    v14 = v10;
    if (!aBlock[0])
    {
      break;
    }

LABEL_20:
    v13 = *(v11 + 16);

    v8 = static UUID.== infix(_:_:)();

    if (v8)
    {
      sub_100093854(a4);

      v37 = v48;
      v38 = v47;
      v39 = v46;
      (*(v48 + 16))(v47, *(v11 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v46);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v37 + 8))(v38, v39);
      v41 = swift_allocObject();
      v42 = v55;
      *(v41 + 16) = sub_100113AC4;
      *(v41 + 24) = v42;
      aBlock[4] = sub_100113AD8;
      aBlock[5] = v41;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000F8460;
      aBlock[3] = &unk_1004C71D8;
      v43 = _Block_copy(aBlock);

      v44 = v54;
      [v54 retrieveConnectionHandleWithIdentifier:isa completion:v43];
      _Block_release(v43);

      return;
    }

    a3 = v28;
    v10 = v14;
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  sub_100093854(a4);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v32 = 136315138;
    sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = sub_1002FFA0C(v34, v35, aBlock);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "Peripheral not connected %s", v32, 0xCu);
    sub_1000752F4(v33);
  }

  sub_1000D1840(65540, v50, v51);
}

uint64_t sub_100113AD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    a1 = 65538;
  }

  else
  {
    a1 = a1;
  }

  return (*(v2 + 16))(a1);
}

uint64_t sub_100113B1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100113B54(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_100113BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_100113C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_100113C60(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v30 = a4;
  if (v8)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_8:
        v13 = (*(a1 + 48) + ((v11 << 11) | (32 * __clz(__rbit64(v8)))));
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];
        v18 = objc_allocWithZone(CBServiceUUIDParamInfo);
        v36 = v14;
        v19 = v14;
        v20 = v15;
        sub_100069E2C(v19, v15);
        v34 = v16;
        v35 = v17;
        sub_100069E2C(v16, v17);
        v21 = [v18 init];

        v22 = sub_10013044C(a2, a3);
        if (v23 >> 60 == 15)
        {
          isa = 0;
        }

        else
        {
          v25 = v22;
          v26 = v23;
          isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10006A2D0(v25, v26);
        }

        [v21 setServiceUUID:isa];

        v27 = Data._bridgeToObjectiveC()().super.isa;
        [v21 setMaskData:v27];

        v28 = Data._bridgeToObjectiveC()().super.isa;
        [v21 setBlobData:v28];

        v29 = v21;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v8 &= v8 - 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        sub_10006A178(v36, v20);
        result = sub_10006A178(v34, v35);
      }

      while (v8);
    }
  }

  __break(1u);
  return result;
}

void sub_100113EC4(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v6 = a1;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = 0;

  {
    while (1)
    {
LABEL_10:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = *(v6 + 56) + ((v12 << 11) | (32 * v15));
      v18 = *v16;
      v17 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
      v21 = *a2;
      if (v19 < v21)
      {
        LOBYTE(v21) = v19;
      }

      *a2 = v21;
      if (!*(v20 + 16) || a3 >= 9)
      {
        break;
      }

      sub_100113C60(v13, v18, v17, a4);

      if (!v10)
      {
        goto LABEL_6;
      }
    }

    v32 = v5;
    v23 = objc_allocWithZone(CBServiceUUIDParamInfo);

    v31 = [v23 init];

    v24 = sub_10013044C(v18, v17);
    if (v25 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      v27 = v24;
      v28 = v25;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A2D0(v27, v28);
    }

    [v31 setServiceUUID:isa];

    v29 = v31;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v5 = v32;
  }

LABEL_6:
  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_10011412C()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1001141A0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v49 = a2;
  v50 = a3;
  v51 = type metadata accessor for UUID();
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v11 = qword_10051B7F0;
    *v10 = qword_10051B7F0;
    (*(v8 + 13))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
    v12 = v11;
    v13 = _dispatchPreconditionTest(_:)();
    (*(v8 + 1))(v10, v7);
    if (v13)
    {
      if (qword_100501960 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_4:
    v14 = *(qword_10051B288 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    v15 = v52;
    if (!v14)
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Failed to retrieve central manager", v29, 2u);
      }

      return;
    }

    v8 = v14;
    v16 = [v8 sharedPairingAgent];
    if (!v16)
    {
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Failed to retrieve shared pairing agent", v35, 2u);
      }

      return;
    }

    v17 = v16;
    v18 = [v16 retrievePairedPeers];
    if (!v18 || (v19 = v18, v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v19, v21 = sub_1000F1970(v20), , !v21))
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Failed to retrieve paired peers", v32, 2u);
      }

      return;
    }

    v47 = a4;
    v48 = v8;
    v53 = _swiftEmptyArrayStorage;
    a4 = (v21 & 0xFFFFFFFFFFFFFF8);
    v10 = v21 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = v17;
    if (!v10)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v23 = *(v21 + 8 * v7 + 32);
      }

      v24 = v23;
      v25 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v26 = String._bridgeToObjectiveC()();
      v8 = [v24 hasTag:{v26, v46, v47, v48, v49, v50}];

      if (v8)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v8 = v53[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v7;
      v22 = v25 == v10;
      v15 = v52;
      if (v22)
      {
        v36 = v53;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v36 = _swiftEmptyArrayStorage;
LABEL_32:

  if ((v36 & 0x8000000000000000) == 0 && (v36 & 0x4000000000000000) == 0)
  {
    v37 = *(v36 + 16);
    if (v37)
    {
      goto LABEL_35;
    }

LABEL_51:

    v39 = _swiftEmptyArrayStorage;
LABEL_52:
    v45 = sub_1000E0348(v39);

    sub_1000A9CF4(v45, v47);

    return;
  }

  v37 = _CocoaArrayWrapper.endIndex.getter();
  if (!v37)
  {
    goto LABEL_51;
  }

LABEL_35:
  v53 = _swiftEmptyArrayStorage;
  sub_10019F420(0, v37 & ~(v37 >> 63), 0);
  if ((v37 & 0x8000000000000000) == 0)
  {
    v38 = 0;
    v39 = v53;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v36 + 8 * v38 + 32);
      }

      v41 = v40;
      v42 = [v40 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = v39;
      v44 = v39[2];
      v43 = v39[3];
      if (v44 >= v43 >> 1)
      {
        sub_10019F420((v43 > 1), v44 + 1, 1);
        v39 = v53;
      }

      ++v38;
      v39[2] = v44 + 1;
      (*(v5 + 32))(v39 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v44, v15, v51);
    }

    while (v37 != v38);

    goto LABEL_52;
  }

  __break(1u);
}

uint64_t sub_100114834(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), char *a4)
{
  v37 = a2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = qword_100501D90;
  v38 = a4;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  v13 = enum case for DispatchPredicate.onQueue(_:);
  v15 = (v8 + 104);
  v14 = *(v8 + 104);
  v14(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v36 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v18 = *(v8 + 8);
  v16 = v8 + 8;
  v17 = v18;
  v18(v10, v7);
  if (v12)
  {
    v34 = v17;
    v35 = v14;
    v17 = a3;
    if (qword_100501960 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v19 = qword_10051B288;
  v20 = swift_allocObject();
  v20[2] = v17;
  v20[3] = a1;
  v33 = a1;
  v21 = v38;
  v20[4] = v37;
  v20[5] = sub_100114BDC;
  v20[6] = v21;
  v22 = v35;
  *v10 = v36;
  v22(v10, v13, v7);

  v23 = v17;
  v24 = _dispatchPreconditionTest(_:)();
  v34(v10, v7);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    v15 = sub_10012E6B0(0, v15[2] + 1, 1, v15);
    *&v23[v19] = v15;
    goto LABEL_10;
  }

  v25 = *(v19 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
  if (v25 == 10 || v25 == 5)
  {
    v26 = v38;

    sub_1001141A0(v23, v33, v37, v26);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = sub_100114C2C;
  *(v16 + 24) = v20;
  v23 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
  swift_beginAccess();
  v15 = *&v23[v19];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v23[v19] = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v30 = v15[2];
  v29 = v15[3];
  if (v30 >= v29 >> 1)
  {
    v15 = sub_10012E6B0((v29 > 1), v30 + 1, 1, v15);
  }

  v15[2] = v30 + 1;
  v31 = &v15[3 * v30];
  *(v31 + 32) = 1;
  v31[5] = sub_1000B3564;
  v31[6] = v16;
  *&v23[v19] = v15;
  swift_endAccess();
}

uint64_t sub_100114BE4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100114C3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100114C74()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100114D30()
{
  sub_10006A178(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100114DA0()
{
  sub_10006A178(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100114E6C()
{
  sub_10006A178(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100114EC4(uint64_t a1)
{
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {

      LOBYTE(v9) = 0;
      return v9 & 1;
    }
  }

  v10 = [v1 code];

  v9 = 0x6104u >> v10;
  if (v10 >= 0xF)
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

Swift::Int sub_100114FB0(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v18 = *(*(a3 + 48) + 8 * v17);
    result = *(v18 + 16);
    if (result != *(a4 + 16) || *(v18 + 24) != *(a4 + 24))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        *(v6 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v7++, 1))
        {
          __break(1u);
LABEL_19:

          return sub_10024A434(v6, a2, v7, a3);
        }
      }
    }
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

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1001150F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v26 = v8;
    v27 = v3;
    v25 = &v25;
    __chkstk_darwin(v10);
    v11 = &v25 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v9);
    v9 = 0;
    v12 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v3 = (v13 + 63) >> 6;
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v8 = v16 | (v12 << 6);
      v19 = *(*(a1 + 48) + 8 * v8);
      if ((*(v19 + 16) != *(a2 + 16) || *(v19 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        *&v11[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_20:
          v22 = sub_10024A434(v11, v26, v9, a1);

          return v22;
        }
      }
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v3)
      {
        goto LABEL_20;
      }

      v18 = *(a1 + 56 + 8 * v12);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_23:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();

  v22 = sub_100110448(v24, v8, a1, a2);

  return v22;
}

Swift::Int sub_10011536C(uint64_t a1, uint64_t *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1001150F8(a1, a2);
  }

  __CocoaSet.makeIterator()();
  while (__CocoaSet.Iterator.next()())
  {
    swift_dynamicCast();
    v3 = *(v15 + 16) == a2[2] && *(v15 + 24) == a2[3];
    if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
    }

    else
    {
      v4 = *(&_swiftEmptySetSingleton + 2);
      if (*(&_swiftEmptySetSingleton + 3) <= v4)
      {
        sub_10010A5C0(v4 + 1, &unk_100507CF0, &qword_10040B270, &String.hash(into:));
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v6 = &_swiftEmptySetSingleton + 56;
      v7 = -1 << *(&_swiftEmptySetSingleton + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(&_swiftEmptySetSingleton + (v8 >> 6) + 7)) != 0)
      {
        v10 = __clz(__rbit64((-1 << v8) & ~*(&_swiftEmptySetSingleton + (v8 >> 6) + 7))) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = 0;
        v12 = (63 - v7) >> 6;
        do
        {
          if (++v9 == v12 && (v11 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v13 = v9 == v12;
          if (v9 == v12)
          {
            v9 = 0;
          }

          v11 |= v13;
          v14 = *&v6[8 * v9];
        }

        while (v14 == -1);
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
      }

      *&v6[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
      *(*(&_swiftEmptySetSingleton + 6) + 8 * v10) = v15;
      ++*(&_swiftEmptySetSingleton + 2);
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_1001155CC(void *a1, NSObject *a2, NSObject *a3)
{
  v245 = a2;
  v246 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v231 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  isa = v9[-1].isa;
  __chkstk_darwin(v9);
  v12 = (&v231 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(isa + 13))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(isa + 1))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_127:

LABEL_90:

    goto LABEL_142;
  }

  v15 = *(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
  if (!v15)
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Not running", v26, 2u);
    }

    goto LABEL_9;
  }

  v16 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
  swift_beginAccess();
  v244 = v3;
  v236 = v16;
  v17 = *(v3 + v16);
  v239 = v5;
  v238 = v6;
  v240 = v8;
  v241 = v15;
  v237 = a3;
  v243 = v17;
  if ((v17 & 0xC000000000000001) != 0)
  {
    swift_bridgeObjectRetain_n();
    v18 = v15;
    __CocoaSet.makeIterator()();
    v3 = type metadata accessor for DSKBLE.BLEPeripheral();
    sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
    Set.Iterator.init(_cocoa:)();
    v20 = v252;
    v19 = v253;
    v21 = v254;
    v22 = v255;
    v23 = v256;
  }

  else
  {
    v27 = -1 << *(v17 + 32);
    v19 = v17 + 56;
    v21 = ~v27;
    v28 = -v27;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v23 = v29 & *(v17 + 56);
    v20 = v17;
    swift_bridgeObjectRetain_n();
    v30 = v15;
    v22 = 0;
  }

  v242 = v21;
  while ((v20 & 0x8000000000000000) == 0)
  {
    v31 = v22;
    v32 = v23;
    if (!v23)
    {
      while (1)
      {
        v22 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v22 >= ((v21 + 64) >> 6))
        {
          goto LABEL_26;
        }

        v32 = *(v19 + 8 * v22);
        ++v31;
        if (v32)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_66;
    }

LABEL_20:
    v23 = (v32 - 1) & v32;
    v33 = *(*(v20 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v32)))));

    if (!v33)
    {
      goto LABEL_26;
    }

LABEL_24:
    sub_10009393C(0, &qword_100502D20, NSObject_ptr);
    v15 = *(v33 + 24);
    v3 = static NSObject.== infix(_:_:)();

    if (v3)
    {

      sub_100093854(v20);

      return;
    }
  }

  v34 = __CocoaSet.Iterator.next()();
  if (v34)
  {
    *&v247 = v34;
    type metadata accessor for DSKBLE.BLEPeripheral();
    swift_dynamicCast();
    v33 = v249;
    if (v249)
    {
      goto LABEL_24;
    }
  }

LABEL_26:
  sub_100093854(v20);

  v35 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
  v36 = v246;
  v37 = v245;

  v38 = v244;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();

  v41 = os_log_type_enabled(v39, v40);
  v246 = v36;
  if (v41)
  {
    v42 = swift_slowAlloc();
    *&v249 = swift_slowAlloc();
    *v42 = 136315394;
    v43 = [v36 identifier];
    v44 = v240;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v45 = v239;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    (*(v238 + 8))(v44, v45);
    v49 = sub_1002FFA0C(v46, v48, &v249);

    *(v42 + 4) = v49;
    *(v42 + 12) = 2080;
    v50 = Dictionary.description.getter();
    v52 = sub_1002FFA0C(v50, v51, &v249);

    *(v42 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v39, v40, "Discovered new peripheral %s with advertisement data %s", v42, 0x16u);
    swift_arrayDestroy();
    v37 = v245;
  }

  v53 = OBJC_IVAR____TtC10seserviced6DSKBLE_scanRequests;
  swift_beginAccess();

  v15 = 0;
  v55 = sub_1000E42E0(v54);

  if (!(v55 >> 62))
  {
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

LABEL_138:

    v9 = Logger.logObject.getter();
    v227 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v227))
    {
      v228 = swift_slowAlloc();
      *v228 = 0;
      _os_log_impl(&_mh_execute_header, v9, v227, "Discovered a peripheral but there's no scan request", v228, 2u);
LABEL_140:
    }

    goto LABEL_141;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_138;
  }

LABEL_30:
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v37[2].isa)
  {

    goto LABEL_46;
  }

  v58 = sub_10008C908(v56, v57);
  v60 = v59;

  if ((v60 & 1) == 0 || (sub_1000754F0(v37[7].isa + 32 * v58, &v249), sub_100068FC4(&qword_100504070, &qword_10040B380), (swift_dynamicCast() & 1) == 0))
  {
LABEL_46:
    if (!v37[2].isa)
    {
      goto LABEL_61;
    }

    goto LABEL_47;
  }

  v61 = v247;
  if (v247 >> 62)
  {
    v62 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v62 = *((v247 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v242 = v53;
  v243 = v35;
  if (v62)
  {
    v63 = 0;
    v64 = v61 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v61 & 0xC000000000000001) != 0)
      {
        v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v63 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_144;
        }

        v65 = *(v61 + 8 * v63 + 32);
      }

      v3 = v65;
      v66 = (v63 + 1);
      if (__OFADD__(v63, 1))
      {
        break;
      }

      *&v249 = v65;
      __chkstk_darwin(v65);
      *(&v231 - 2) = &v249;
      if (sub_1002FB068(sub_10011F7D0, (&v231 - 4), v55))
      {

        goto LABEL_67;
      }

      ++v63;
      if (v66 == v62)
      {
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:

    goto LABEL_147;
  }

LABEL_60:

  v38 = v244;
  v35 = v243;
  v53 = v242;
  v37 = v245;
  if (v245[2].isa)
  {
LABEL_47:
    v67 = sub_10008C908(0xD000000000000015, 0x8000000100463440);
    if ((v68 & 1) == 0)
    {
      goto LABEL_61;
    }

    sub_1000754F0(v37[7].isa + 32 * v67, &v249);
    sub_100068FC4(&qword_100504068, &qword_10040B378);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_61;
    }

    v242 = v53;
    v243 = v35;
    v69 = v247;
    v70 = v247 + 64;
    v71 = 1 << *(v247 + 32);
    v72 = -1;
    if (v71 < 64)
    {
      v72 = ~(-1 << v71);
    }

    v73 = v72 & *(v247 + 64);
    v74 = (v71 + 63) >> 6;

    v76 = 0;
    if (v73)
    {
      while (1)
      {
        v77 = v76;
LABEL_56:
        v37 = &v231;
        *&v249 = *(*(v69 + 48) + ((v77 << 9) | (8 * __clz(__rbit64(v73)))));
        __chkstk_darwin(v75);
        *(&v231 - 2) = &v249;
        v3 = v78;
        if (sub_1002FB068(sub_10011F7D0, (&v231 - 4), v55))
        {
          break;
        }

        v73 &= v73 - 1;

        v76 = v77;
        if (!v73)
        {
          goto LABEL_53;
        }
      }

LABEL_66:

LABEL_67:

      v88 = v3;
      v89 = v244;
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.info.getter();
      v235 = v88;

      v92 = os_log_type_enabled(v90, v91);
      v93 = v242;
      if (v92)
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v94 = 138412290;
        v96 = v235;
        *(v94 + 4) = v235;
        *v95 = v96;
        v97 = v96;
        _os_log_impl(&_mh_execute_header, v90, v91, "Discovered service %@", v94, 0xCu);
        sub_100075768(v95, &unk_100503F70, &unk_10040B2E0);
      }

      v232 = *&v89[v93];
      if ((v232 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for DSKBLE.BLEScanRequest();
        sub_1001081DC(&qword_100503EB8, v98, type metadata accessor for DSKBLE.BLEScanRequest, &unk_10040B188);
        Set.Iterator.init(_cocoa:)();
        v64 = v257;
        v99 = v258;
        v100 = v259;
        v101 = v260;
        v102 = v261;
      }

      else
      {
        v103 = -1 << *(v232 + 32);
        v99 = v232 + 56;
        v100 = ~v103;
        v104 = -v103;
        if (v104 < 64)
        {
          v105 = ~(-1 << v104);
        }

        else
        {
          v105 = -1;
        }

        v102 = (v105 & *(v232 + 56));
        v64 = v232;
        swift_bridgeObjectRetain_n();
        v101 = 0;
      }

      v231 = v100;
      v106 = (v100 + 64) >> 6;
      while (1)
      {
        v234 = v101;
        if (v64 < 0)
        {
          v110 = __CocoaSet.Iterator.next()();
          if (!v110)
          {
            goto LABEL_87;
          }

          *&v247 = v110;
          type metadata accessor for DSKBLE.BLEScanRequest();
          swift_dynamicCast();
          v109 = v249;
          v61 = v101;
          v233 = v102;
        }

        else
        {
          v107 = v101;
          v108 = v102;
          v61 = v101;
          v62 = v243;
          if (!v102)
          {
            do
            {
              v61 = &v107->isa + 1;
              if (__OFADD__(v107, 1))
              {
                goto LABEL_145;
              }

              if (v61 >= v106)
              {
                goto LABEL_87;
              }

              v108 = *(v99 + 8 * v61);
              v107 = (v107 + 1);
            }

            while (!v108);
          }

          v233 = v102;
          v102 = ((v108 - 1) & v108);
          v109 = *(*(v64 + 48) + ((v61 << 9) | (8 * __clz(__rbit64(v108)))));
        }

        if (!v109)
        {
LABEL_87:
          sub_100093854(v64);

          v9 = Logger.logObject.getter();
          v115 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v9, v115))
          {
            v116 = swift_slowAlloc();
            *v116 = 0;
            _os_log_impl(&_mh_execute_header, v9, v115, "Failed to retrieve scan request", v116, 2u);

            goto LABEL_141;
          }

          goto LABEL_90;
        }

        sub_10009393C(0, &qword_100502D20, NSObject_ptr);
        v111 = String._bridgeToObjectiveC()();
        v112 = v109;
        v113 = [objc_opt_self() UUIDWithString:{v111, v231, v232}];

        v114 = static NSObject.== infix(_:_:)();
        if (v114)
        {
          break;
        }

        v101 = v61;
      }

      sub_100093854(v64);

      v117 = v237;
      v37 = v112;
      if ([v237 integerValue]< *(v112 + 32))
      {
        swift_retain_n();
        v118 = v117;
        v119 = v246;
        v120 = v118;
        v9 = Logger.logObject.getter();
        v121 = static os_log_type_t.info.getter();

        v122 = os_log_type_enabled(v9, v121);
        v123 = v240;
        if (v122)
        {
          v124 = v112;
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          *&v249 = v126;
          *v125 = 136315650;
          v127 = [v119 identifier];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v128 = v239;
          v129 = dispatch thunk of CustomStringConvertible.description.getter();
          v131 = v130;
          (*(v238 + 8))(v123, v128);
          v132 = sub_1002FFA0C(v129, v131, &v249);

          *(v125 + 4) = v132;
          *(v125 + 12) = 2048;
          v133 = [v120 integerValue];

          *(v125 + 14) = v133;
          *(v125 + 22) = 256;
          LOBYTE(v133) = *(v124 + 32);

          *(v125 + 24) = v133;

          _os_log_impl(&_mh_execute_header, v9, v121, "Ignoring %s due to RSSI %ld minimum %hhd", v125, 0x19u);
          sub_1000752F4(v126);

          goto LABEL_141;
        }

        return;
      }

      v134 = *(v112 + 40);
      v135 = *(v134 + 16);
      v237 = v112;
      if (!v135)
      {
        goto LABEL_110;
      }

      v136 = 0;
      v137 = (v134 + 40);
      v138 = _swiftEmptyArrayStorage;
      while (v136 < *(v134 + 16))
      {
        if (v245[2].isa)
        {
          v140 = *(v137 - 1);
          v139 = *v137;

          v141 = v245;
          v142 = sub_10008C908(v140, v139);
          if (v143)
          {
            sub_1000754F0(v141[7].isa + 32 * v142, &v249);
            *&v247 = v140;
            *(&v247 + 1) = v139;
            sub_100075D50(&v249, v248);
            v249 = v247;
            v250 = v248[0];
            v251 = v248[1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v138 = sub_10012F07C(0, v138[2] + 1, 1, v138);
            }

            v37 = v237;
            v145 = v138[2];
            v144 = v138[3];
            if (v145 >= v144 >> 1)
            {
              v138 = sub_10012F07C((v144 > 1), v145 + 1, 1, v138);
            }

            v138[2] = v145 + 1;
            v146 = &v138[6 * v145];
            v147 = v249;
            v148 = v251;
            v146[3] = v250;
            v146[4] = v148;
            v146[2] = v147;
          }

          else
          {

            v37 = v237;
          }
        }

        ++v136;
        v137 += 2;
        if (v135 == v136)
        {
          goto LABEL_111;
        }
      }

      __break(1u);
      goto LABEL_152;
    }

LABEL_53:
    while (1)
    {
      v77 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        break;
      }

      if (v77 >= v74)
      {

        v38 = v244;
        goto LABEL_62;
      }

      v73 = *(v70 + 8 * v77);
      ++v76;
      if (v73)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_110:
    v138 = _swiftEmptyArrayStorage;
LABEL_111:
    if (v138[2])
    {
      sub_100068FC4(&unk_100504000, &unk_10040B350);
      v149 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v149 = _swiftEmptyDictionarySingleton;
    }

    v150 = v243;
    *&v249 = v149;

    sub_1002699FC(v151, 1, &v249);
    if (v15)
    {
      goto LABEL_153;
    }

    v152 = v249;
    v153 = *(v37[5].isa + 2);
    v154 = *(v249 + 16);

    if (v153 != v154)
    {

      v9 = Logger.logObject.getter();
      v206 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v9, v206))
      {
        goto LABEL_127;
      }

      v207 = swift_slowAlloc();
      *&v249 = swift_slowAlloc();
      *v207 = 136315394;

      v208 = Array.description.getter();
      v210 = v209;

      v211 = sub_1002FFA0C(v208, v210, &v249);

      *(v207 + 4) = v211;
      *(v207 + 12) = 2080;
      v212 = Dictionary.Keys.description.getter();
      v214 = v213;

      v215 = sub_1002FFA0C(v212, v214, &v249);

      *(v207 + 14) = v215;
      _os_log_impl(&_mh_execute_header, v9, v206, "Missing advertisements requested %s found %s", v207, 0x16u);
      swift_arrayDestroy();

      goto LABEL_141;
    }

    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.info.getter();

    v157 = os_log_type_enabled(v155, v156);
    v243 = v150;
    v245 = 0;
    if (v157)
    {
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      *&v249 = v159;
      *v158 = 136315138;
      v160 = Dictionary.description.getter();
      v162 = sub_1002FFA0C(v160, v161, &v249);

      *(v158 + 4) = v162;
      _os_log_impl(&_mh_execute_header, v155, v156, "Found advertisements %s", v158, 0xCu);
      sub_1000752F4(v159);
      v37 = v237;
    }

    v163 = v246;
    v164 = [v246 identifier];
    v165 = v240;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for Peer(0);
    swift_allocObject();
    v166 = sub_10025CF18(v165);
    v167 = v163;

    v168 = sub_100111368(v167, 0, v37, v166);
    swift_beginAccess();

    sub_1000D730C(&v247, v168);
    swift_endAccess();

    v169 = voucher_copy();
    v170 = v168[18];
    v168[18] = v169;

    v171 = v167;

    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.info.getter();

    v174 = os_log_type_enabled(v172, v173);
    v246 = v168;
    if (v174)
    {
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v234 = v166;
      v177 = v176;
      v233 = swift_slowAlloc();
      *&v249 = v233;
      *v175 = 138412546;
      v178 = v168[18];
      *(v175 + 4) = v178;
      *v177 = v178;
      *(v175 + 12) = 2080;
      v179 = v178;
      v180 = [v171 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v181 = v239;
      v182 = dispatch thunk of CustomStringConvertible.description.getter();
      v184 = v183;
      (*(v238 + 8))(v165, v181);
      v185 = sub_1002FFA0C(v182, v184, &v249);

      *(v175 + 14) = v185;
      _os_log_impl(&_mh_execute_header, v172, v173, "Got voucher (BT) %@ for %s", v175, 0x16u);
      sub_100075768(v177, &unk_100503F70, &unk_10040B2E0);
      v166 = v234;

      sub_1000752F4(v233);

      v37 = v237;
    }

    v186 = v37;
    v187 = v37[13].isa;
    v189 = v186[2].isa;
    v188 = v186[3].isa;

    v190 = v245;
    v187(v189, v188, v152, v166);
    if (!v190)
    {

      v216 = v237;
      if ((BYTE1(v237[4].isa) & 1) == 0)
      {
        v217 = v244;
        v218 = v242;

        v220 = sub_10011536C(v219, v216);

        *&v217[v218] = v220;

        sub_1000EE338();
      }

      v221 = v216[12];
      if (v221)
      {
        v222 = *(v221 + 16);

        if (v222)
        {
          v223 = 0;
          v224 = v221 + 40;
          while (v223 < *(v221 + 16))
          {
            ++v223;

            v225 = String._bridgeToObjectiveC()();
            [v171 tag:v225];

            v224 += 16;
            if (v222 == v223)
            {
              goto LABEL_135;
            }
          }

LABEL_152:
          __break(1u);
LABEL_153:
          swift_unexpectedError();
          __break(1u);
          return;
        }

LABEL_135:
      }

      v226 = Dictionary._bridgeToObjectiveC()().super.isa;

      v24 = v241;
      [v241 connectPeripheral:v171 options:v226];

      goto LABEL_9;
    }

    v64 = v246;
    v191 = *(v246 + 18);
    if (v191)
    {
      v192 = v191;
      v193 = v171;
      v62 = v192;
      v61 = Logger.logObject.getter();
      v194 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v61, v194))
      {
        goto LABEL_146;
      }

      v195 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      v234 = v166;
      v197 = v196;
      v198 = swift_slowAlloc();
      *&v249 = v198;
      *v195 = 138412546;
      *(v195 + 4) = v62;
      *v197 = v191;
      *(v195 + 12) = 2080;
      v245 = v62;
      v199 = [v193 identifier];
      v200 = v240;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v201 = v239;
      v202 = dispatch thunk of CustomStringConvertible.description.getter();
      v204 = v203;
      (*(v238 + 8))(v200, v201);
      v205 = sub_1002FFA0C(v202, v204, &v249);

      *(v195 + 14) = v205;
      _os_log_impl(&_mh_execute_header, v61, v194, "Releasing voucher (BT) %@ for %s", v195, 0x16u);
      sub_100075768(v197, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v198);
      v64 = v246;
    }

LABEL_147:
    swift_beginAccess();
    sub_10010E308(v64);
    swift_endAccess();

    v24 = Logger.logObject.getter();
    v229 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v229))
    {
      v230 = swift_slowAlloc();
      *v230 = 0;
      _os_log_impl(&_mh_execute_header, v24, v229, "Ignoring discovery as requested by client", v230, 2u);
    }

    else
    {
    }

LABEL_9:

    return;
  }

LABEL_61:

LABEL_62:
  v79 = v38;
  v9 = Logger.logObject.getter();
  v80 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *&v249 = v82;
    *v81 = 136315138;

    sub_1000E5B18(v83);

    v84 = Array.description.getter();
    v86 = v85;

    v87 = sub_1002FFA0C(v84, v86, &v249);

    *(v81 + 4) = v87;
    _os_log_impl(&_mh_execute_header, v9, v80, "Discovered a peripheral which does not include any service we're scanning for %s", v81, 0xCu);
    sub_1000752F4(v82);

    goto LABEL_140;
  }

LABEL_141:

LABEL_142:
}

void sub_100117630(void *a1)
{
  v175 = a1;
  v173 = type metadata accessor for UUID();
  v164 = *(v173 - 8);
  __chkstk_darwin(v173);
  v171 = v159 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v172 = v159 - v5;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_94;
  }

  while (1)
  {
    v10 = qword_10051B7F0;
    *v9 = qword_10051B7F0;
    (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
    v11 = v10;
    LOBYTE(v10) = _dispatchPreconditionTest(_:)();
    (*(v7 + 8))(v9, v6);
    if ((v10 & 1) == 0)
    {
      __break(1u);
      goto LABEL_96;
    }

    v12 = *(v1 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (!v12)
    {
      break;
    }

    v13 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v162 = v13;
    v14 = *(v1 + v13);
    v167 = v1;
    v163 = v12;
    v174 = v14;
    if ((v14 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();
      v15 = v12;
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      v6 = v179;
      v16 = v180;
      v1 = v181;
      v7 = v182;
      v2 = v183;
    }

    else
    {
      v20 = -1 << *(v14 + 32);
      v16 = v14 + 56;
      v1 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v2 = v22 & *(v14 + 56);
      v6 = v14;
      swift_bridgeObjectRetain_n();
      v23 = v12;
      v7 = 0;
    }

    v170 = v1;
    v9 = ((v1 + 64) >> 6);
    while (1)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        v24 = v7;
        v25 = v2;
        if (!v2)
        {
          while (1)
          {
            v7 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v7 >= v9)
            {
              goto LABEL_29;
            }

            v25 = *(v16 + 8 * v7);
            ++v24;
            if (v25)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

LABEL_20:
        v2 = (v25 - 1) & v25;
        v26 = *(*(v6 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v25)))));

        if (!v26)
        {
          break;
        }

        goto LABEL_24;
      }

      v27 = __CocoaSet.Iterator.next()();
      if (!v27)
      {
        break;
      }

      v184 = v27;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      v26 = v189[0];
      if (!v189[0])
      {
        break;
      }

LABEL_24:
      sub_10009393C(0, &qword_100502D20, NSObject_ptr);
      v28 = *(v26 + 24);
      v1 = static NSObject.== infix(_:_:)();

      if (v1)
      {
        v1 = *(v26 + 32);

        if (v1)
        {
          sub_100093854(v6);

          v29 = v175;
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v189[0] = v33;
            *v32 = 136315138;
            v34 = [v29 identifier];
            v35 = v172;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v36 = v173;
            v37 = dispatch thunk of CustomStringConvertible.description.getter();
            v39 = v38;
            (*(v164 + 8))(v35, v36);
            v40 = sub_1002FFA0C(v37, v39, v189);

            *(v32 + 4) = v40;
            _os_log_impl(&_mh_execute_header, v30, v31, "Ignoring unexpected connection to already connected peripheral %s", v32, 0xCu);
            sub_1000752F4(v33);
          }

LABEL_72:
          return;
        }
      }

      else
      {
      }
    }

LABEL_29:
    sub_100093854(v6);

    v41 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
    v42 = v175;
    v43 = v167;
    v161 = v41;
    v1 = v167 + v41;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();

    v46 = os_log_type_enabled(v44, v45);
    v175 = v42;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v189[0] = v48;
      *v47 = 136315138;
      v49 = [v42 identifier];
      v2 = v172;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v50 = v173;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v164 + 8))(v2, v50);
      v1 = sub_1002FFA0C(v51, v53, v189);

      *(v47 + 4) = v1;
      _os_log_impl(&_mh_execute_header, v44, v45, "New connection to peripheral %s", v47, 0xCu);
      sub_1000752F4(v48);
    }

    v174 = *(v43 + v162);
    if ((v174 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      v1 = type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      v54 = v184;
      v6 = v185;
      v55 = v186;
      v7 = v187;
      v56 = v188;
    }

    else
    {
      v57 = -1 << *(v174 + 32);
      v6 = v174 + 56;
      v55 = ~v57;
      v58 = -v57;
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      else
      {
        v59 = -1;
      }

      v56 = v59 & *(v174 + 56);
      v54 = v174;
      swift_bridgeObjectRetain_n();
      v7 = 0;
    }

    v170 = v55;
    v9 = ((v55 + 64) >> 6);
    while (2)
    {
      if ((v54 & 0x8000000000000000) == 0)
      {
        v60 = v7;
        v61 = v56;
        for (i = v7; !v61; ++v60)
        {
          i = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            goto LABEL_92;
          }

          if (i >= v9)
          {
            goto LABEL_51;
          }

          v61 = *(v6 + 8 * i);
        }

        v63 = (v61 - 1) & v61;
        v2 = *(*(v54 + 48) + ((i << 9) | (8 * __clz(__rbit64(v61)))));

        if (!v2)
        {
          goto LABEL_51;
        }

LABEL_48:
        sub_10009393C(0, &qword_100502D20, NSObject_ptr);
        v65 = *(v2 + 24);
        v1 = static NSObject.== infix(_:_:)();

        if ((v1 & 1) == 0 || *(v2 + 32))
        {

          v7 = i;
          v56 = v63;
          continue;
        }

        sub_100093854(v54);

        *(v2 + 32) = 1;

        v66 = v175;
LABEL_74:
        v100 = [v163 advertisingAddress];
        if (v100)
        {
          v101 = v100;
          v102 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v104 = v103;
        }

        else
        {
          v102 = 0;
          v104 = 0xF000000000000000;
        }

        v105 = *(v2 + 104);
        v106 = *(v2 + 112);
        *(v2 + 104) = v102;
        *(v2 + 112) = v104;
        sub_10006A2D0(v105, v106);

        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v176 = v110;
          *v109 = 136315138;
          v111 = *(v2 + 112);
          if (v111 >> 60 == 15)
          {
            v112 = 0xE300000000000000;
            v113 = 7104878;
          }

          else
          {
            v114 = *(v2 + 104);
            sub_100069E2C(v114, *(v2 + 112));
            v178[0] = sub_100288788(v114, v111);
            sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
            sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
            v115 = BidirectionalCollection<>.joined(separator:)();
            v112 = v116;
            sub_10006A2D0(v114, v111);

            v113 = v115;
          }

          v66 = v175;
          v117 = sub_1002FFA0C(v113, v112, &v176);

          *(v109 + 4) = v117;
          _os_log_impl(&_mh_execute_header, v107, v108, "Advertising address %s", v109, 0xCu);
          sub_1000752F4(v110);
        }

        v176 = 0;
        v177 = 0xE000000000000000;
        _StringGuts.grow(_:)(48);

        v176 = 0xD00000000000002ELL;
        v177 = 0x8000000100463410;
        v118 = [v66 identifier];
        v119 = v172;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v120 = v173;
        v121._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v121);

        v122 = (v164 + 8);
        v174 = *(v164 + 8);
        (v174)(v119, v120);
        String.utf8CString.getter();

        v123 = os_transaction_create();

        *(v2 + 152) = v123;
        swift_unknownObjectRelease();
        v124 = *(v2 + 144);
        v125 = v124;

        v171 = v122;
        if (v124)
        {
        }

        else
        {
          v126 = voucher_copy();
          v127 = *(v2 + 144);
          *(v2 + 144) = v126;

          v128 = v66;

          v129 = Logger.logObject.getter();
          v130 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v132 = swift_slowAlloc();
            v169 = v132;
            v170 = swift_slowAlloc();
            v176 = v170;
            *v131 = 138412546;
            v133 = *(v2 + 144);
            *(v131 + 4) = v133;
            *v132 = v133;
            *(v131 + 12) = 2080;
            v134 = v133;
            v135 = [v128 identifier];
            v136 = v172;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v137 = v173;
            v138 = dispatch thunk of CustomStringConvertible.description.getter();
            v139 = v66;
            v141 = v140;
            (v174)(v136, v137);
            v142 = sub_1002FFA0C(v138, v141, &v176);
            v66 = v139;

            *(v131 + 14) = v142;
            _os_log_impl(&_mh_execute_header, v129, v130, "Got voucher (BT) %@ for %s", v131, 0x16u);
            sub_100075768(v169, &unk_100503F70, &unk_10040B2E0);

            sub_1000752F4(v170);
          }
        }

        [v66 setDelegate:v167];
        sub_100068FC4(&qword_100504060, &qword_10040B370);
        v143 = swift_allocObject();
        *(v143 + 16) = xmmword_100409E40;
        swift_beginAccess();
        v144 = *(v2 + 64);
        v145 = *(v2 + 72);
        v146 = sub_1000752B0((v2 + 40), v144);
        v147 = *(v144 - 8);
        v148 = __chkstk_darwin(v146);
        v150 = v159 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v147 + 16))(v150, v148);
        (*(v145 + 8))(v144, v145);
        (*(v147 + 8))(v150, v144);
        v151 = String._bridgeToObjectiveC()();

        v152 = [objc_opt_self() UUIDWithString:v151];

        *(v143 + 32) = v152;
        sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v66 discoverServices:isa];

        if ((*(v2 + 192) & 1) == 0)
        {
          v155 = *(v2 + 176);
          v154 = *(v2 + 184);
          v156 = *(v2 + 16);

          sub_1000F3B5C(v155, v154, 0, 0x100u, v156);
        }

        v6 = v163;
        if (qword_100501DA0 == -1)
        {
LABEL_90:
          v157 = v172;
          v158 = v173;
          (*(v164 + 16))(v172, *(v2 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v173);
          sub_100338184(v157);

          (v174)(v157, v158);

          return;
        }

LABEL_96:
        swift_once();
        goto LABEL_90;
      }

      break;
    }

    v64 = __CocoaSet.Iterator.next()();
    if (v64)
    {
      v178[1] = v64;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      v2 = v189[0];
      i = v7;
      v63 = v56;
      if (v189[0])
      {
        goto LABEL_48;
      }
    }

LABEL_51:
    sub_100093854(v54);

    v6 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
    v67 = v167;
    swift_beginAccess();
    v160 = *(v67 + v6);
    if ((v160 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      v6 = __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      sub_1001081DC(&unk_100503E70, v68, type metadata accessor for DSKBLE.BLEConnectionRequest, &unk_10040B110);
      Set.Iterator.init(_cocoa:)();
      v70 = v189[0];
      v69 = v189[1];
      v1 = v189[2];
      v2 = v189[3];
      v71 = v189[4];
    }

    else
    {
      v72 = -1 << *(v160 + 32);
      v69 = v160 + 56;
      v1 = ~v72;
      v73 = -v72;
      if (v73 < 64)
      {
        v74 = ~(-1 << v73);
      }

      else
      {
        v74 = -1;
      }

      v71 = v74 & *(v160 + 56);
      v70 = v160;
      swift_bridgeObjectRetain_n();
      v2 = 0;
    }

    v159[1] = v1;
    v9 = ((v1 + 64) >> 6);
    v169 = (v164 + 16);
    v170 = (v164 + 8);
    v168 = v69;
    for (j = v171; v70 < 0; v69 = v168)
    {
      v80 = __CocoaSet.Iterator.next()();
      if (!v80)
      {
        goto LABEL_69;
      }

      v178[0] = v80;
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      swift_dynamicCast();
      v79 = v176;
      v7 = v2;
      v78 = v71;
      if (!v176)
      {
        goto LABEL_69;
      }

LABEL_66:
      v165 = v2;
      v166 = v71;
      v174 = v79;
      v81 = v172;
      v82 = v173;
      (*v169)(v172, *(v79 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v173);
      v83 = [v175 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v1 = static UUID.== infix(_:_:)();
      v6 = v170;
      v84 = *v170;
      (*v170)(j, v82);
      v84(v81, v82);
      if (v1)
      {
        sub_100093854(v70);

        v97 = v174;
        v98 = *(v174 + 16);
        v66 = v175;
        v99 = v175;

        v2 = sub_100111490(v99, 1, v97, v98);
        swift_beginAccess();
        swift_retain_n();
        sub_1000D730C(v178, v2);
        swift_endAccess();

        goto LABEL_74;
      }

      v2 = v7;
      v71 = v78;
    }

    v76 = v2;
    v77 = v71;
    v7 = v2;
    if (v71)
    {
LABEL_62:
      v78 = (v77 - 1) & v77;

      if (v79)
      {
        goto LABEL_66;
      }

LABEL_69:
      sub_100093854(v70);

      v85 = v175;
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v176 = v89;
        *v88 = 136315138;
        v90 = [v85 identifier];
        v91 = v172;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v92 = v173;
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = v94;
        (*v170)(v91, v92);
        v96 = sub_1002FFA0C(v93, v95, &v176);

        *(v88 + 4) = v96;
        _os_log_impl(&_mh_execute_header, v86, v87, "Cancelling connection to unknown peripheral %s", v88, 0xCu);
        sub_1000752F4(v89);
      }

      sub_1000EF154(v85);
      goto LABEL_72;
    }

    while (1)
    {
      v7 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        break;
      }

      if (v7 >= v9)
      {
        goto LABEL_69;
      }

      v77 = *(v69 + 8 * v7);
      ++v76;
      if (v77)
      {
        goto LABEL_62;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    swift_once();
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Not running", v19, 2u);
  }
}

void sub_100118E98(void *a1, uint64_t a2)
{
  v83 = a2;
  v90 = a1;
  v89 = type metadata accessor for UUID();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v82 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v15 = qword_10051B7F0;
    *v14 = qword_10051B7F0;
    (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
    v81 = v15;
    LOBYTE(v15) = _dispatchPreconditionTest(_:)();
    (*(v12 + 8))(v14, v11);
    if ((v15 & 1) == 0)
    {
      __break(1u);
LABEL_48:
      v20 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v20, v74, "No callback registered for onTimeSyncEvent", v75, 2u);
LABEL_42:
      }

LABEL_43:

      goto LABEL_27;
    }

    if (!*(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_27;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Not running", v22, 2u);
      goto LABEL_26;
    }

    v76 = v9;
    v77 = v7;
    v78 = v8;
    v79 = v5;
    v16 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v86 = v2;
    v17 = *(v2 + v16);
    v80 = v4;
    v85 = v17;
    if ((v17 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      v2 = type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      v18 = v95;
      v11 = v96;
      v19 = v97;
      v12 = v98;
      v14 = v99;
    }

    else
    {
      v23 = -1 << *(v17 + 32);
      v11 = v17 + 56;
      v19 = ~v23;
      v24 = -v23;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v14 = (v25 & *(v17 + 56));
      v18 = v17;
      swift_bridgeObjectRetain_n();
      v12 = 0;
    }

    v84 = v19;
    v4 = (v19 + 64) >> 6;
    if (v18 < 0)
    {
      while (1)
      {
        v28 = __CocoaSet.Iterator.next()();
        if (!v28)
        {
          goto LABEL_24;
        }

        v94[0] = v28;
        type metadata accessor for DSKBLE.BLEPeripheral();
        swift_dynamicCast();
        v9 = aBlock[0];
        v7 = v12;
        v5 = v14;
        if (!aBlock[0])
        {
          goto LABEL_24;
        }

LABEL_21:
        sub_10009393C(0, &qword_100502D20, NSObject_ptr);
        v8 = *(v9 + 24);
        v2 = static NSObject.== infix(_:_:)();

        if (v2)
        {
          break;
        }

        v12 = v7;
        v14 = v5;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }
      }

      sub_100093854(v18);

      v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v40;
      AnyHashable.init<A>(_:)();
      v41 = v83;
      if (!*(v83 + 16))
      {
        goto LABEL_39;
      }

      v42 = sub_10008CA7C(aBlock);
      if ((v43 & 1) == 0)
      {
        goto LABEL_39;
      }

      sub_1000754F0(*(v41 + 56) + 32 * v42, v94);
      sub_100092F28(aBlock);
      if (swift_dynamicCast())
      {
        v44 = v92;
        v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v45;
        AnyHashable.init<A>(_:)();
        if (!*(v41 + 16))
        {
          goto LABEL_39;
        }

        v46 = sub_10008CA7C(aBlock);
        if ((v47 & 1) == 0)
        {
          goto LABEL_39;
        }

        sub_1000754F0(*(v41 + 56) + 32 * v46, v94);
        sub_100092F28(aBlock);
        if (swift_dynamicCast())
        {
          v48 = v92;
          v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v93 = v49;
          AnyHashable.init<A>(_:)();
          if (*(v41 + 16))
          {
            v50 = sub_10008CA7C(aBlock);
            if (v51)
            {
              sub_1000754F0(*(v41 + 56) + 32 * v50, v94);
              sub_100092F28(aBlock);
              if (swift_dynamicCast())
              {
                v52 = v92;
                swift_beginAccess();
                v54 = *(v9 + 64);
                v53 = *(v9 + 72);
                v55 = sub_1000752B0((v9 + 40), v54);
                v56 = *(v54 - 8);
                v57 = __chkstk_darwin(v55);
                v59 = &v76 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v56 + 16))(v59, v57);
                v60 = (*(v53 + 112))(v54, v53);
                v62 = v61;
                (*(v56 + 8))(v59, v54);
                if (!v60)
                {
                  goto LABEL_48;
                }

                v63 = swift_allocObject();
                v63[2] = v60;
                v63[3] = v62;
                v63[4] = v44;
                v63[5] = v48;
                v63[6] = v52;
                v63[7] = v9;
                aBlock[4] = sub_10011F390;
                aBlock[5] = v63;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                aBlock[2] = sub_100080830;
                aBlock[3] = &unk_1004C7890;
                v64 = _Block_copy(aBlock);
                sub_100113B54(v60, v62);

                v65 = v82;
                static DispatchQoS.unspecified.getter();
                v92 = _swiftEmptyArrayStorage;
                sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
                sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
                v66 = v77;
                v67 = v80;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                _Block_release(v64);

                sub_1000B2A4C(v60, v62);
                (*(v79 + 8))(v66, v67);
                (*(v76 + 8))(v65, v78);

                return;
              }

              goto LABEL_40;
            }
          }

LABEL_39:
          sub_100092F28(aBlock);
        }
      }

LABEL_40:

      v20 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v20, v68))
      {
        goto LABEL_43;
      }

      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      aBlock[0] = v70;
      *v69 = 136315138;
      v71 = Dictionary.description.getter();
      v73 = sub_1002FFA0C(v71, v72, aBlock);

      *(v69 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v20, v68, "Invalid time sync data %s", v69, 0xCu);
      sub_1000752F4(v70);

      goto LABEL_42;
    }

LABEL_13:
    v26 = v12;
    v27 = v14;
    v7 = v12;
    if (v14)
    {
      break;
    }

    while (1)
    {
      v7 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v7 >= v4)
      {
        goto LABEL_24;
      }

      v27 = *(v11 + 8 * v7);
      ++v26;
      if (v27)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_46:
    swift_once();
  }

LABEL_17:
  v5 = (v27 - 1) & v27;
  v9 = *(*(v18 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v27)))));

  if (v9)
  {
    goto LABEL_21;
  }

LABEL_24:
  sub_100093854(v18);

  v29 = v90;
  v20 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v31 = 136315138;
    v33 = [v29 identifier];
    v34 = v87;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v35 = v89;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    (*(v88 + 8))(v34, v35);
    v39 = sub_1002FFA0C(v36, v38, aBlock);

    *(v31 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v20, v30, "Got time sync event for unknown peripheral %s", v31, 0xCu);
    sub_1000752F4(v32);

LABEL_26:
  }

LABEL_27:
}

void sub_100119C28(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v170 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for DispatchQoS();
  v169 = *(v171 - 8);
  __chkstk_darwin(v171);
  v168 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for UUID();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_50:
    v56 = v163;
    if (v18)
    {
      v98 = *(v6 + 176);
      v177 = 0xD000000000000024;
      v178 = 0x80000001004633B0;
      AnyHashable.init<A>(_:)();
      v99 = v160;
      if (*(v160 + 16) && (v100 = sub_10008CA7C(aBlock), (v101 & 1) != 0))
      {
        sub_1000754F0(*(v99 + 56) + 32 * v100, v181);
        sub_100092F28(aBlock);
        if (swift_dynamicCast())
        {
          v102 = v177;
          if (v177 < v98)
          {
            goto LABEL_62;
          }

          v103 = Logger.logObject.getter();
          v104 = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v103, v104))
          {
            v106 = 0;
            goto LABEL_77;
          }

          v105 = swift_slowAlloc();
          *v105 = 134218240;
          *(v105 + 4) = v102;
          *(v105 + 12) = 2048;
          *(v105 + 14) = v98;
          _os_log_impl(&_mh_execute_header, v103, v104, "Device detected in the closer zone RSSI %ld >= %ld", v105, 0x16u);
          v106 = 0;
LABEL_74:

LABEL_77:

          *(v6 + 168) = v106;
LABEL_78:
          swift_beginAccess();
          v123 = *(v6 + 64);
          v124 = *(v6 + 72);
          v125 = sub_1000752B0((v6 + 40), v123);
          v126 = *(v123 - 8);
          v127 = __chkstk_darwin(v125);
          v129 = &v159 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v126 + 16))(v129, v127);
          LOBYTE(v124) = (*(v124 + 72))(v123, v124);
          (*(v126 + 8))(v129, v123);
          if ((v124 & 1) == 0)
          {
            v130 = *(v6 + 176);
            v131 = *(v6 + 184);
            v132 = *(v6 + 192);
            v133 = *(v6 + 16);

            sub_1000F3B5C(v130, v131, v132, 0x100u, v133);
          }

          if (*(v6 + 32) == 8)
          {
            v135 = *(v6 + 64);
            v134 = *(v6 + 72);
            v136 = sub_1000752B0((v6 + 40), v135);
            v137 = *(v135 - 8);
            v138 = __chkstk_darwin(v136);
            v140 = &v159 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v137 + 16))(v140, v138);
            v141 = (*(v134 + 120))(v135, v134);
            v143 = v142;
            (*(v137 + 8))(v140, v135);
            if (v141)
            {
              v144 = swift_allocObject();
              v144[2] = v141;
              v144[3] = v143;
              v172 = v143;
              v144[4] = v6;
              aBlock[4] = sub_10011F344;
              aBlock[5] = v144;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100080830;
              aBlock[3] = &unk_1004C7840;
              v145 = _Block_copy(aBlock);
              sub_100113B54(v141, v143);
              v146 = v6;

              v147 = v168;
              static DispatchQoS.unspecified.getter();
              v179 = _swiftEmptyArrayStorage;
              sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
              sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
              sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
              v148 = v170;
              v149 = v167;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v145);
              (*(v166 + 8))(v148, v149);
              (*(v169 + 8))(v147, v171);

              v150 = objc_opt_self();
              isa = Dictionary._bridgeToObjectiveC()().super.isa;
              v152 = v174;
              v153 = *(v146 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
              v154 = v173;
              v155 = v175;
              (*(v174 + 16))(v173, v153, v175);
              v156 = UUID._bridgeToObjectiveC()().super.isa;
              (*(v152 + 8))(v154, v155);
              [v150 bleLogRSSI:isa peerUUID:v156];

              sub_1000B2A4C(v141, v172);

              return;
            }

            v117 = Logger.logObject.getter();
            v157 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v117, v157))
            {
              v158 = swift_slowAlloc();
              *v158 = 0;
              _os_log_impl(&_mh_execute_header, v117, v157, "No callback registered for onRSSIZoneUpdate", v158, 2u);
            }

LABEL_70:

            return;
          }

LABEL_62:

          return;
        }
      }

      else
      {
        sub_100092F28(aBlock);
      }

      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v117, v118))
      {
        goto LABEL_70;
      }

      v119 = swift_slowAlloc();
      *v119 = 0;
      v120 = "Failed to retrieve kCBGetRssiStatisticsDetectionMaximum";
    }

    else
    {
      v19 = *(v6 + 184);
      v177 = 0xD000000000000024;
      v178 = 0x80000001004633E0;
      AnyHashable.init<A>(_:)();
      v107 = v160;
      if (*(v160 + 16) && (v108 = sub_10008CA7C(aBlock), (v109 & 1) != 0))
      {
        sub_1000754F0(*(v107 + 56) + 32 * v108, v181);
        sub_100092F28(aBlock);
        if (swift_dynamicCast())
        {
          v67 = v177;
          if (v19 < v177)
          {
            swift_beginAccess();
            v110 = *(v6 + 64);
            v111 = *(v6 + 72);
            v112 = sub_1000752B0((v6 + 40), v110);
            v113 = *(v110 - 8);
            v114 = __chkstk_darwin(v112);
            v116 = &v159 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v113 + 16))(v116, v114);
            LOBYTE(v111) = (*(v111 + 72))(v110, v111);
            (*(v113 + 8))(v116, v110);
            if ((v111 & 1) == 0)
            {
              goto LABEL_62;
            }

            goto LABEL_78;
          }

          goto LABEL_72;
        }
      }

      else
      {
        sub_100092F28(aBlock);
      }

      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v117, v118))
      {
        goto LABEL_70;
      }

      v119 = swift_slowAlloc();
      *v119 = 0;
      v120 = "Failed to retrieve kCBGetRssiStatisticsDetectionMinimum";
    }

    _os_log_impl(&_mh_execute_header, v117, v118, v120, v119, 2u);

    goto LABEL_70;
  }

  v165 = v16;
  v19 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
  v20 = a1;
  v21 = v176;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  v24 = os_log_type_enabled(v22, v23);
  v167 = v6;
  v166 = v7;
  v172 = v20;
  if (v24)
  {
    v6 = a2;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315138;
    v27 = [v20 identifier];
    v28 = v19;
    v29 = v27;
    v30 = v173;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = UUID.uuidString.getter();
    v33 = v32;
    (*(v174 + 8))(v30, v175);
    v34 = v31;
    v21 = v176;
    v35 = sub_1002FFA0C(v34, v33, aBlock);
    v19 = v28;

    *(v25 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v22, v23, "Received RSSI update %s", v25, 0xCu);
    sub_1000752F4(v26);

    a2 = v6;
  }

  v36 = *(v21 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
  if (!v36)
  {
    v37 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v37, v45, "Not running", v46, 2u);
    }

    goto LABEL_12;
  }

  if (!a3)
  {
    v181[0] = 0x724167734D42436BLL;
    v181[1] = 0xEF746C7573655267;
    v47 = v36;
    AnyHashable.init<A>(_:)();
    if (*(a2 + 16) && (v48 = sub_10008CA7C(aBlock), (v49 & 1) != 0))
    {
      sub_1000754F0(*(a2 + 56) + 32 * v48, v182);
      sub_100092F28(aBlock);
      if ((swift_dynamicCast() & 1) != 0 && !v181[0])
      {
        v50 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
        swift_beginAccess();
        v51 = *(v21 + v50);
        v163 = v47;
        v162 = v51;
        if ((v51 & 0xC000000000000001) != 0)
        {

          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          type metadata accessor for DSKBLE.BLEPeripheral();
          sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
          Set.Iterator.init(_cocoa:)();
          v52 = v182[0];
          v53 = v182[1];
          v54 = v182[2];
          v55 = v182[3];
          v56 = v182[4];
        }

        else
        {
          v64 = -1 << *(v51 + 32);
          v53 = v51 + 56;
          v54 = ~v64;
          v65 = -v64;
          if (v65 < 64)
          {
            v66 = ~(-1 << v65);
          }

          else
          {
            v66 = -1;
          }

          v56 = (v66 & *(v51 + 56));
          v52 = v51;
          swift_bridgeObjectRetain_n();
          v55 = 0;
        }

        v160 = a2;
        v161 = v54;
        v67 = (v54 + 64) >> 6;
        v164 = v19;
        if (v52 < 0)
        {
          goto LABEL_34;
        }

LABEL_29:
        v68 = v55;
        v69 = v56;
        v70 = v55;
        if (v56)
        {
LABEL_33:
          v56 = ((v69 - 1) & v69);
          v6 = *(*(v52 + 48) + ((v70 << 9) | (8 * __clz(__rbit64(v69)))));

          while (v6)
          {
            sub_10009393C(0, &qword_100502D20, NSObject_ptr);
            v72 = *(v6 + 24);
            v73 = static NSObject.== infix(_:_:)();

            if (v73)
            {
              v86 = v172;
              sub_100093854(v52);

              v18 = *(v6 + 168);
              if (v18 != 2 && (*(v6 + 192) & 1) == 0)
              {
                goto LABEL_50;
              }

              v87 = v86;
              v75 = Logger.logObject.getter();
              v88 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v75, v88))
              {
                v89 = swift_slowAlloc();
                v90 = swift_slowAlloc();
                aBlock[0] = v90;
                *v89 = 136315138;
                v91 = [v87 identifier];
                v92 = v173;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v93 = v175;
                v94 = dispatch thunk of CustomStringConvertible.description.getter();
                v96 = v95;
                (*(v174 + 8))(v92, v93);
                v97 = sub_1002FFA0C(v94, v96, aBlock);

                *(v89 + 4) = v97;
                _os_log_impl(&_mh_execute_header, v75, v88, "Got RSSI update while detection is disabled for %s", v89, 0xCu);
                sub_1000752F4(v90);
              }

              goto LABEL_48;
            }

            v55 = v70;
            v19 = v164;
            if ((v52 & 0x8000000000000000) == 0)
            {
              goto LABEL_29;
            }

LABEL_34:
            v71 = __CocoaSet.Iterator.next()();
            if (!v71)
            {
              break;
            }

            v181[0] = v71;
            type metadata accessor for DSKBLE.BLEPeripheral();
            swift_dynamicCast();
            v6 = aBlock[0];
            v70 = v55;
          }

LABEL_40:
          sub_100093854(v52);

          v74 = v172;
          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            aBlock[0] = v78;
            *v77 = 136315138;
            v79 = [v74 identifier];
            v80 = v173;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v81 = v175;
            v82 = dispatch thunk of CustomStringConvertible.description.getter();
            v84 = v83;
            (*(v174 + 8))(v80, v81);
            v85 = sub_1002FFA0C(v82, v84, aBlock);

            *(v77 + 4) = v85;
            _os_log_impl(&_mh_execute_header, v75, v76, "Got RSSI update for unknown peripheral %s", v77, 0xCu);
            sub_1000752F4(v78);
          }

LABEL_48:

          return;
        }

        while (1)
        {
          v70 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            break;
          }

          if (v70 >= v67)
          {
            goto LABEL_40;
          }

          v69 = *(v53 + 8 * v70);
          ++v68;
          if (v69)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_72:
        v103 = Logger.logObject.getter();
        v121 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v103, v121))
        {
          v106 = 1;
          goto LABEL_77;
        }

        v122 = swift_slowAlloc();
        *v122 = 134218240;
        *(v122 + 4) = v67;
        *(v122 + 12) = 2048;
        *(v122 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v103, v121, "Device detected in the further zone RSSI %ld <= %ld", v122, 0x16u);
        v106 = 1;
        goto LABEL_74;
      }
    }

    else
    {
      sub_100092F28(aBlock);
    }

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock[0] = v60;
      *v59 = 136315138;
      v61 = Dictionary.description.getter();
      v63 = sub_1002FFA0C(v61, v62, aBlock);

      *(v59 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v57, v58, "RSSI detection failed %s", v59, 0xCu);
      sub_1000752F4(v60);
    }

    return;
  }

  swift_errorRetain();
  v37 = v36;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v40 = 136315138;
    swift_getErrorValue();
    v42 = Error.localizedDescription.getter();
    v44 = sub_1002FFA0C(v42, v43, aBlock);

    *(v40 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v38, v39, "Error on reception of RSSI update %s", v40, 0xCu);
    sub_1000752F4(v41);

LABEL_12:
    return;
  }
}

Swift::Int sub_10011B3F0(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v32 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v28 = v7;
    v29 = v3;
    v27 = &v27;
    __chkstk_darwin(v9);
    v30 = &v27 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v8);
    v31 = 0;
    v10 = 0;
    v3 = a1 + 56;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v7 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v10 << 6);
      v18 = *(*(*(a1 + 48) + 8 * v17) + 56);
      if (v18)
      {
        v33 = v13;
        sub_10009393C(0, &qword_100503F18, CBPeripheral_ptr);
        v19 = v32;

        v20 = v18;
        v8 = static NSObject.== infix(_:_:)();

        v13 = v33;
        if (v8)
        {
          continue;
        }
      }

      *&v30[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_17:
        v22 = sub_10024B00C(v30, v28, v31, a1);

        return v22;
      }
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_17;
      }

      v16 = *(v3 + 8 * v10);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v32;
  sub_100110574(v24, v7, a1, v25);
  v22 = v26;

  return v22;
}

Swift::Int sub_10011B6B4(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_10011B3F0(a1, a2);
  }

  v2 = a2;
  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    do
    {
      swift_dynamicCast();
      v3 = v19;
      v4 = *(v19 + 56);
      if (v4 && (sub_10009393C(0, &qword_100503F18, CBPeripheral_ptr), v5 = v2, v6 = v4, v7 = static NSObject.== infix(_:_:)(), v6, v5, v3 = v19, (v7 & 1) != 0))
      {
      }

      else
      {
        v8 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v8)
        {
          sub_10010A814(v8 + 1);
        }

        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_1001081DC(&unk_100507480, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
        v10 = &_swiftEmptySetSingleton + 56;
        v11 = -1 << *(&_swiftEmptySetSingleton + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(&_swiftEmptySetSingleton + (v12 >> 6) + 7)) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(&_swiftEmptySetSingleton + (v12 >> 6) + 7))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v13 == v16;
            if (v13 == v16)
            {
              v13 = 0;
            }

            v15 |= v17;
            v18 = *&v10[8 * v13];
          }

          while (v18 == -1);
          v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        }

        *&v10[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v14) = v3;
        ++*(&_swiftEmptySetSingleton + 2);
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return &_swiftEmptySetSingleton;
}

void sub_10011B958(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v70 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v15 = *(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (!v15)
    {
      v17 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v17, v32, "Not running", v33, 2u);
      }

      goto LABEL_22;
    }

    v68 = v7;
    v69 = v6;
    v16 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
    v17 = v15;
    v18 = a1;
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v65 = v16;
      v66 = v3;
      v67 = v17;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v71[0] = v64;
      *v21 = 136315394;
      v23 = [v18 identifier];
      v24 = v70;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = v69;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v68 + 8))(v24, v25);
      v29 = sub_1002FFA0C(v26, v28, v71);

      *(v21 + 4) = v29;
      *(v21 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = v30;
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      *(v21 + 14) = v30;
      *v22 = v31;
      _os_log_impl(&_mh_execute_header, v19, v20, "Peripheral failed to connect %s error %@", v21, 0x16u);
      sub_100075768(v22, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v64);

      v3 = v66;
      v17 = v67;
      if (!a2)
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (!a2)
      {
        goto LABEL_19;
      }
    }

    swift_errorRetain();
    if (sub_100114EC4(a2))
    {
      v34 = v18;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v67 = v17;
        v71[0] = v66;
        *v37 = 136315138;
        v38 = [v34 identifier];
        v39 = v70;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v40 = v3;
        v41 = v69;
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = v43;
        v45 = v41;
        v3 = v40;
        (*(v68 + 8))(v39, v45);
        v46 = sub_1002FFA0C(v42, v44, v71);

        *(v37 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v35, v36, "Fatal failure %s", v37, 0xCu);
        sub_1000752F4(v66);
        v17 = v67;
      }

      v47 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
      swift_beginAccess();
      v48 = v34;

      v50 = sub_10011B6B4(v49, v48);

      *(v3 + v47) = v50;

      swift_errorRetain();
      sub_1000EF594(v48, a2);

LABEL_22:

      return;
    }

LABEL_19:
    v51 = v18;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v71[0] = v55;
      *v54 = 136315138;
      v56 = [v51 identifier];
      v57 = v70;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v58 = v69;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v68 + 8))(v57, v58);
      v62 = sub_1002FFA0C(v59, v61, v71);

      *(v54 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v52, v53, "Retrying connection to %s", v54, 0xCu);
      sub_1000752F4(v55);
    }

    [v17 connectPeripheral:v51 options:0];
    goto LABEL_22;
  }

  __break(1u);
}

void sub_10011C174(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (*(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      if (a2)
      {
        swift_errorRetain();
        v15 = a1;
        v32 = v2;
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v31 = a1;
          v20 = v19;
          v30 = swift_slowAlloc();
          v33 = v30;
          *v18 = 136315394;
          v21 = [v15 identifier];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v22 = UUID.uuidString.getter();
          v24 = v23;
          (*(v6 + 8))(v8, v5);
          v25 = sub_1002FFA0C(v22, v24, &v33);

          *(v18 + 4) = v25;
          *(v18 + 12) = 2112;
          swift_errorRetain();
          v26 = _swift_stdlib_bridgeErrorToNSError();
          *(v18 + 14) = v26;
          *v20 = v26;
          _os_log_impl(&_mh_execute_header, v16, v17, "Disconnected %s with error %@", v18, 0x16u);
          sub_100075768(v20, &unk_100503F70, &unk_10040B2E0);
          a1 = v31;

          sub_1000752F4(v30);
        }

        else
        {
        }
      }

      sub_1000EF594(a1, 0);
    }

    else
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Not running", v29, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10011C594(void *a1, void *a2, uint64_t a3)
{
  v81 = a3;
  v80 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v78 - v9;
  __chkstk_darwin(v11);
  v13 = &v78 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v18 = qword_10051B7F0;
  *v17 = qword_10051B7F0;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v20 = v82;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Peripheral did request pairing", v23, 2u);
    v20 = v82;
  }

  v24 = *&v20[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest];
  if (!v24)
  {
    goto LABEL_15;
  }

  (*(v5 + 16))(v13, *(v24 + 32) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v4);
  if (!a2)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v79 = a2;
  v25 = [a2 identifier];
  v26 = v24;
  v27 = v25;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v27) = static UUID.== infix(_:_:)();
  v28 = *(v5 + 8);
  v28(v10, v4);
  v28(v13, v4);
  if (v27)
  {
    v29 = v82;
    if (!*&v82[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent])
    {
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        v35 = "Missing shared pairing agent";
        goto LABEL_24;
      }

LABEL_25:

      sub_1000E1E2C();
      v49 = swift_allocError();
      *v50 = 2;
      sub_100106638(v49);
LABEL_29:

LABEL_30:

      return;
    }

    v30 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state;
    if (v82[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state] != 2)
    {
      v51 = v82;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v83[0] = v55;
        *v54 = 136315138;
        LOBYTE(v84) = v29[v30];
        v56 = String.init<A>(describing:)();
        v58 = sub_1002FFA0C(v56, v57, v83);

        *(v54 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v52, v53, "Peripheral requested pairing in wrong state %s", v54, 0xCu);
        sub_1000752F4(v55);
      }

      sub_1000E1E2C();
      v59 = swift_allocError();
      *v60 = 2;
      sub_100106638(v59);
      goto LABEL_29;
    }

    v31 = *(v26 + 24);
    if (v31 >> 60 == 15)
    {
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        v35 = "Missing OOB data";
LABEL_24:
        _os_log_impl(&_mh_execute_header, v32, v33, v35, v34, 2u);

        goto LABEL_25;
      }

      goto LABEL_25;
    }

    v61 = *(v26 + 16);
    sub_100069E2C(v61, *(v26 + 24));
    v62 = Logger.logObject.getter();
    v63 = v81;
    if (v81 != 5)
    {
      v70 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v62, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v83[0] = v72;
        *v71 = 136315138;
        v84 = v63;
        type metadata accessor for CBPairingType(0);
        v73 = String.init<A>(describing:)();
        v75 = sub_1002FFA0C(v73, v74, v83);

        *(v71 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v62, v70, "Peer requested unsupported pairing type %s", v71, 0xCu);
        sub_1000752F4(v72);
      }

      sub_1000E1E2C();
      v76 = swift_allocError();
      *v77 = 2;
      sub_100106638(v76);

      goto LABEL_39;
    }

    v64 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v62, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v62, v64, "Responding to pairing request with OOB data", v65, 2u);
    }

    v66 = v80;
    if (v80)
    {
      sub_100068FC4(&unk_100503F50, &unk_10040D950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004098F0;
      v83[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83[1] = v68;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for Data;
      *(inited + 72) = v61;
      *(inited + 80) = v31;
      sub_10006A2BC(v61, v31);
      sub_100090BC4(inited);
      swift_setDeallocating();
      sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v66 respondToPairingRequest:v79 type:5 accept:1 data:isa];

LABEL_39:
      sub_10006A2D0(v61, v31);
      goto LABEL_30;
    }

    goto LABEL_43;
  }

  a2 = v79;
LABEL_15:
  v36 = a2;
  v37 = Logger.logObject.getter();
  v38 = a2;
  v39 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v37, v39))
  {

    goto LABEL_19;
  }

  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v83[0] = v41;
  *v40 = 136315138;
  if (!v38)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return;
  }

  v42 = v41;

  v43 = [v36 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v44 = dispatch thunk of CustomStringConvertible.description.getter();
  v46 = v45;
  (*(v5 + 8))(v7, v4);
  v47 = sub_1002FFA0C(v44, v46, v83);

  *(v40 + 4) = v47;
  _os_log_impl(&_mh_execute_header, v37, v39, "Peripheral did request pairing for unknown request %s", v40, 0xCu);
  sub_1000752F4(v42);

LABEL_19:

  v48 = *&v82[OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent];
  if (v48)
  {
    [v48 setOOBPairingEnabled:0 forPeer:v36];
  }

  sub_100106638(0);
}

void sub_10011CFA0(void *a1)
{
  v2 = v1;
  v72 = a1;
  v65 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v71 = *(v6 - 8);
  __chkstk_darwin(v6);
  v66 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v68 = &v57 - v9;
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  __chkstk_darwin(v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 1);
  __chkstk_darwin(v16);
  v19 = (&v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v20 = qword_10051B7F0;
    *v19 = qword_10051B7F0;
    (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
    v60 = v20;
    LOBYTE(v20) = _dispatchPreconditionTest(_:)();
    (*(v17 + 8))(v19, v16);
    if ((v20 & 1) == 0)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v70 = v6;
    v59 = v3;
    v21 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_logger;
    v22 = v72;
    v16 = v72;
    v69 = v21;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v58 = v12;
      v67 = v2;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136315138;
      if (!v22)
      {
        goto LABEL_25;
      }

      v27 = v26;

      v28 = [v16 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v29 = v70;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v71 + 8))(v15, v29);
      v33 = sub_1002FFA0C(v30, v32, aBlock);

      *(v25 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "Pairing completed for %s", v25, 0xCu);
      sub_1000752F4(v27);

      v2 = v67;
      v22 = v72;
      v12 = v58;
    }

    else
    {
    }

    v15 = *(v2 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest);
    v34 = v71;
    if (!v15)
    {
      goto LABEL_16;
    }

    v35 = v70;
    (*(v71 + 16))(v12, *(v15 + 4) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v70);
    if (!v22)
    {
      goto LABEL_24;
    }

    v36 = [v16 identifier];
    v37 = v68;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v36) = static UUID.== infix(_:_:)();
    v38 = *(v34 + 8);
    v38(v37, v35);
    v38(v12, v35);
    if ((v36 & 1) == 0)
    {
      break;
    }

    v67 = v2;
    v19 = *(v15 + 5);
    v17 = v19[2];

    if (!v17)
    {
LABEL_14:

      sub_100106638(0);
      aBlock[4] = sub_10011EE94;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C7610;
      v40 = _Block_copy(aBlock);

      v41 = v61;
      static DispatchQoS.unspecified.getter();
      v73 = _swiftEmptyArrayStorage;
      sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
      v42 = v63;
      v43 = v65;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v40);

      (v59[1])(v42, v43);
      (*(v62 + 8))(v41, v64);

      return;
    }

    v6 = 0;
    v3 = v19 + 5;
    v2 = &selRef_retrievePeripheralsWithIdentifiers_;
    while (v6 < v19[2])
    {
      ++v6;
      v12 = *v3;

      v39 = String._bridgeToObjectiveC()();
      [v16 tag:v39];

      v3 += 2;
      if (v17 == v6)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

LABEL_16:
  v44 = v16;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v45, v46))
  {

    goto LABEL_20;
  }

  v47 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  aBlock[0] = v48;
  *v47 = 136315138;
  if (v72)
  {
    v49 = v48;

    v50 = [v44 identifier];
    v51 = v66;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v52 = v70;
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    (*(v34 + 8))(v51, v52);
    v56 = sub_1002FFA0C(v53, v55, aBlock);

    *(v47 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v45, v46, "Peripheral pairing completed for unknown request %s", v47, 0xCu);
    sub_1000752F4(v49);

LABEL_20:

    return;
  }

LABEL_26:
  __break(1u);
}

void sub_10011D904(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v56 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v54 = &v51 - v8;
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v19 = qword_10051B7F0;
  *v18 = qword_10051B7F0;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v52 = a2;
  v53 = v6;
  v21 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_logger;
  v22 = a1;
  v55 = v21;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v58 = v26;
    *v25 = 136315138;
    v51 = a1;
    if (!a1)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v27 = v26;

    v28 = [v22 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v56 + 8))(v14, v4);
    v32 = sub_1002FFA0C(v29, v31, &v58);

    *(v25 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "Pairing failed for %s", v25, 0xCu);
    sub_1000752F4(v27);

    a1 = v51;
  }

  else
  {
  }

  v33 = v56;
  v34 = *(v57 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest);
  if (v34)
  {
    (*(v56 + 16))(v11, *(v34 + 32) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v4);
    if (a1)
    {

      v35 = [v22 identifier];
      v36 = v54;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v35) = static UUID.== infix(_:_:)();
      v37 = *(v33 + 8);
      v37(v36, v4);
      v37(v11, v4);
      if (v35)
      {
        sub_100106638(v52);

        return;
      }

      goto LABEL_13;
    }

    goto LABEL_19;
  }

LABEL_13:
  v38 = a1;
  v39 = v22;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v40, v41))
  {

    goto LABEL_17;
  }

  v42 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  v58 = v43;
  *v42 = 136315138;
  if (v38)
  {
    v44 = v43;

    v45 = [v39 identifier];
    v46 = v53;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    (*(v33 + 8))(v46, v4);
    v50 = sub_1002FFA0C(v47, v49, &v58);

    *(v42 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v40, v41, "Got peerDidCompletePairing for unknown request %s", v42, 0xCu);
    sub_1000752F4(v44);

LABEL_17:

    return;
  }

LABEL_21:
  __break(1u);
}