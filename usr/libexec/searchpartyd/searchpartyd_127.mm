uint64_t sub_100E0B844(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&unk_1016BC190, &unk_101406290);
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for AnyCancellable();
      sub_1000097BC(&qword_1016BC180, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
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

uint64_t sub_100E0BABC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v30 = v5;
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
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v20 = v19;
      String.hash(into:)();
      v21 = Hasher._finalize()();

      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      ++*(v7 + 16);
      v5 = v30;
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

        v4 = v29;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_100E0BD08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC0E8, &unk_101406260);
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));

      sub_1000BC4D4(&unk_1016BC0D0, qword_1013EA6A0);
      sub_1000041A4(&qword_1016BC500, &unk_1016BC0D0, qword_1013EA6A0, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
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

uint64_t sub_100E0BF84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = static Hasher._hash(seed:_:)();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v4 = v7;
  }

  return result;
}

Swift::Int sub_100E0C16C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for BeaconIdentifier(0);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000BC4D4(&unk_1016BBE50, &unk_1013B34E0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      sub_100E0ED24(v19 + v20 * (v16 | (v8 << 6)), v32, type metadata accessor for BeaconIdentifier);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
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
      result = sub_100E0ECBC(v32, *(v7 + 48) + v15 * v20, type metadata accessor for BeaconIdentifier);
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

Swift::Int sub_100E0C4B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC098, &qword_1013E9E80);
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
      v18 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v21 = *(v3 + 48) + 88 * (v18 | (v6 << 6));
      v23 = *(v21 + 48);
      v22 = *(v21 + 64);
      v24 = *(v21 + 32);
      v39 = *(v21 + 80);
      v37 = v23;
      v38 = v22;
      v36 = v24;
      v25 = *(v21 + 16);
      v34 = *v21;
      v35 = v25;
      Hasher.init(_seed:)();
      sub_100E0ED8C(&v34, v33);
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v5 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v11 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v11 + 8 * v28);
          if (v32 != -1)
          {
            v12 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v27) & ~*(v11 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 88 * v12;
      v14 = v35;
      *v13 = v34;
      v15 = v36;
      v16 = v37;
      v17 = v38;
      *(v13 + 80) = v39;
      *(v13 + 48) = v16;
      *(v13 + 64) = v17;
      *(v13 + 16) = v14;
      *(v13 + 32) = v15;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v20 = *(v3 + 56 + 8 * v6);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v9 = (v20 - 1) & v20;
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

Swift::Int sub_100E0C734(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v43 = *(v6 - 8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v36 - v10;
  v11 = *v1;
  sub_1000BC4D4(&qword_1016BA360, &unk_1013E48B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v11 + 16))
  {
    v42 = v3;
    v36 = v1;
    v14 = 0;
    v15 = v11 + 56;
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v40 = (v4 + 48);
    v41 = v11;
    v37 = (v4 + 8);
    v38 = (v4 + 32);
    v20 = result + 56;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v44 = *(v43 + 72);
      v26 = v45;
      sub_1000D2A70(v25 + v44 * (v22 | (v14 << 6)), v45, &qword_1016980D0, &unk_10138F3B0);
      Hasher.init(_seed:)();
      sub_1000D2A70(v26, v9, &qword_1016980D0, &unk_10138F3B0);
      v27 = v42;
      if ((*v40)(v9, 1, v42) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v28 = v39;
        (*v38)(v39, v9, v27);
        Hasher._combine(_:)(1u);
        sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        (*v37)(v28, v27);
      }

      result = Hasher._finalize()();
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      v11 = v41;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_1000D2AD8(v45, *(v13 + 48) + v21 * v44, &qword_1016980D0, &unk_10138F3B0);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v2 = v36;
        goto LABEL_29;
      }

      v24 = *(v15 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v13;
  }

  return result;
}

uint64_t sub_100E0CBB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&unk_1016BBE70, &qword_1013E9DC0);
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      result = static Hasher._hash(seed:bytes:count:)();
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
      *(*(v5 + 48) + 4 * v12) = v16;
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

Swift::Int sub_100E0CDA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&unk_1016BC0C0, &qword_101406240);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v1;
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
      Hasher.init(_seed:)();
      v17 = *(v16 + 32);

      v18 = v17;
      NSObject.hash(into:)();

      result = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

        v2 = v26;
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

Swift::Int sub_100E0CFD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC0B8, &qword_1013E9E98);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v1;
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
      Hasher.init(_seed:)();
      v17 = *(v16 + 40);

      v18 = v17;
      NSObject.hash(into:)();

      result = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

        v2 = v26;
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

uint64_t sub_100E0D20C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC068, &unk_101406230);
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));

      sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
      sub_1000041A4(&qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
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

Swift::Int sub_100E0D488(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC018, &qword_1013E9E40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
    v34 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v37 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 40 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v38 = v18[3];
      v22 = v18[4];
      Hasher.init(_seed:)();

      v35 = v20;
      v36 = v19;
      String.hash(into:)();
      Hasher._combine(_:)(*(v21 + 16));
      v23 = *(v21 + 16);
      if (v23)
      {
        v24 = v21 + 40;
        do
        {

          String.hash(into:)();

          v24 += 16;
          --v23;
        }

        while (v23);
      }

      String.hash(into:)();
      result = Hasher._finalize()();
      v5 = v34;
      v25 = -1 << *(v34 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v3 = v33;
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v34 + 48) + 40 * v13);
      *v14 = v36;
      v14[1] = v35;
      v14[2] = v21;
      v14[3] = v38;
      v14[4] = v22;
      ++*(v34 + 16);
      v10 = v37;
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

        v2 = v32;
        goto LABEL_29;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v37 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100E0D768(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BBEF0, &qword_1014060B0);
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));

      sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
      sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
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

unint64_t sub_100E0D9E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&unk_1016BC0A0, &qword_1013E9E88);
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
    for (i = result + 56; v9; ++*(v5 + 16))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v14 = (*(v3 + 48) + 160 * (v11 | (v6 << 6)));
      v15 = v14[5];
      v17 = v14[2];
      v16 = v14[3];
      v36 = v14[4];
      v37 = v15;
      v34 = v17;
      v35 = v16;
      v18 = v14[6];
      v19 = v14[7];
      v20 = v14[9];
      v40 = v14[8];
      v41 = v20;
      v38 = v18;
      v39 = v19;
      v21 = v14[1];
      v32 = *v14;
      v33 = v21;
      Hasher.init(_seed:)();
      sub_10013CD18(&v32, v31);
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v40);
      Hasher._combine(_:)(BYTE1(v40));
      Hasher._combine(_:)(BYTE2(v40));
      Hasher._combine(_:)(BYTE3(v40));
      Hasher._combine(_:)(BYTE8(v40));
      String.hash(into:)();
      Hasher._finalize()();
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v22 = (*(v5 + 48) + 160 * result);
      v23 = v33;
      *v22 = v32;
      v22[1] = v23;
      v24 = v37;
      v26 = v34;
      v25 = v35;
      v22[4] = v36;
      v22[5] = v24;
      v22[2] = v26;
      v22[3] = v25;
      v27 = v38;
      v28 = v39;
      v29 = v41;
      v22[8] = v40;
      v22[9] = v29;
      v22[6] = v27;
      v22[7] = v28;
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_16;
      }

      v13 = *(v3 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100E0DCB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&unk_1016BBFE0, &unk_101406210);
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));

      sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
      sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
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

Swift::Int sub_100E0DF30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      result = NSObject._rawHashValue(seed:)(v18);
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

uint64_t sub_100E0E13C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BBE08, &qword_1013E9D90);
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));

      sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
      sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
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

Swift::Int sub_100E0E3B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v18;
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

        v4 = v3;
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

Swift::Int sub_100E0E5D0(uint64_t a1)
{
  v2 = *v1;
  sub_1000BC4D4(&unk_1016BBF70, &qword_1013B3530);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v2 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      *&v4 = *(*(v2 + 48) + 8 * (v13 | (v6 << 6)));
      v23 = v4;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v23);
      Hasher._combine(_:)(DWORD1(v23));
      result = Hasher._finalize()();
      v16 = -1 << *(v5 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v11 + 8 * v18);
          if (v22 != -1)
          {
            v12 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(&v4 + 1) = *(&v23 + 1);
      *(*(v5 + 48) + 8 * v12) = v23;
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

      v15 = *(v2 + 56 + 8 * v6);
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

    *v1 = v5;
  }

  return result;
}

Swift::Int sub_100E0E7F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = *(v5 + 48) + 24 * (v17 | (v8 << 6));
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      Hasher.init(_seed:)();
      sub_100017D5C(v21, v22);
      sub_100017D5C(v21, v22);
      Data.hash(into:)();
      sub_100016590(v21, v22);
      Hasher._combine(_:)(v23);
      result = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v21;
      *(v16 + 8) = v22;
      *(v16 + 16) = v23;
      ++*(v7 + 16);
      v5 = v31;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v19 = *(v9 + 8 * v8);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
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

BOOL sub_100E0EA64(uint64_t a1, uint64_t a2)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v4 = sub_1010749A0(v9);

  v5 = sub_101129A64(v4);

  v9 = v5;
  sub_100DEFA08(v8, 8212, &unk_1016BBDF0, &qword_1013D6808, &type metadata for Int);
  sub_100DEFA08(v8, 8213, &unk_1016BBDF0, &qword_1013D6808, &type metadata for Int);
  sub_100DEFA08(v8, 8216, &unk_1016BBDF0, &qword_1013D6808, &type metadata for Int);
  sub_100DEFA08(v8, 8219, &unk_1016BBDF0, &qword_1013D6808, &type metadata for Int);
  sub_100DEFA08(v8, 8220, &unk_1016BBDF0, &qword_1013D6808, &type metadata for Int);
  sub_100DEFA08(v8, 8223, &unk_1016BBDF0, &qword_1013D6808, &type metadata for Int);
  sub_100DEFA08(v8, 8231, &unk_1016BBDF0, &qword_1013D6808, &type metadata for Int);
  sub_100DEFA08(v8, 8233, &unk_1016BBDF0, &qword_1013D6808, &type metadata for Int);
  v6 = a1 == 76 && sub_10111F5D4(a2, v9);

  return v6;
}

uint64_t sub_100E0EC5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100E0ECBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E0ED24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E0EE4C(void *a1, uint64_t a2)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v6[6] = Bool.intValue.getter();
  sub_1000C3258();
  v4 = FixedWidthInteger.data.getter();
  v5 = v2;
  sub_10015049C(v6, v6[3]);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v4, v5);
  return sub_100007BAC(v6);
}

uint64_t sub_100E0EF20@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100E0EFF0(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

unint64_t sub_100E0EF50(uint64_t a1)
{
  *(a1 + 8) = sub_100E0EF80();
  result = sub_10064D478();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100E0EF80()
{
  result = qword_1016BC1D0;
  if (!qword_1016BC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC1D0);
  }

  return result;
}

uint64_t sub_100E0EFF0(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v3 = sub_10015049C(v9, v9[3]);
  v4 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v6 = v4;
    v7 = v5;
    sub_1000E0A3C();
    v9[6] = DataProtocol.intValue.getter();
    sub_1000C3258();
    v3 = FixedWidthInteger.BOOLValue.getter();
    sub_100016590(v6, v7);
  }

  sub_100007BAC(v9);
  sub_100007BAC(a1);
  return v3 & 1;
}

void sub_100E0F118(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100E0F1C4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100E0F1C4(uint64_t a1)
{
  if (!qword_1016BC248)
  {
    type metadata accessor for UUID();
    sub_100009804(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1016BC248);
    }
  }
}

void sub_100E0F270(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v59[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v59[-v7];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v59[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v59[-v14];
  if (CKRecord.recordType.getter() == 0xD000000000000012 && 0x80000001013EA0F0 == v16)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      sub_100E110BC();
      swift_allocError();
      *v27 = 0;
      goto LABEL_13;
    }
  }

  v66 = v13;
  v69 = v15;
  v18 = [a1 recordID];
  v19 = [v18 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v20 = *(v10 + 48);
  if (v20(v8, 1, v9) == 1)
  {
    sub_1002EA198(v8);
    sub_100E110BC();
    swift_allocError();
    *v21 = 1;
LABEL_13:
    swift_willThrow();

    return;
  }

  v22 = v69;
  v63 = *(v10 + 32);
  v64 = v10 + 32;
  v63(v69, v8, v9);
  v23 = [a1 encryptedValues];
  v24 = String._bridgeToObjectiveC()();
  v65 = v23;
  v25 = [v23 objectForKeyedSubscript:v24];

  if (!v25 || (v72 = v25, sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    sub_100E110BC();
    swift_allocError();
    *v26 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    (*(v10 + 8))(v22, v9);
    return;
  }

  UUID.init(uuidString:)();

  if (v20(v6, 1, v9) == 1)
  {
    sub_1002EA198(v6);
    goto LABEL_11;
  }

  v63(v66, v6, v9);
  v28 = String._bridgeToObjectiveC()();
  v29 = v65;
  v30 = [v65 objectForKeyedSubscript:v28];

  if (!v30 || (v70 = v30, (swift_dynamicCast() & 1) == 0) || (v31 = v72, v72 > 3))
  {
    sub_100E110BC();
    swift_allocError();
    *v39 = 3;
    swift_willThrow();
    goto LABEL_22;
  }

  v32 = String._bridgeToObjectiveC()();
  v33 = [v29 objectForKeyedSubscript:v32];

  v34 = v66;
  if (!v33 || (v72 = v33, (swift_dynamicCast() & 1) == 0))
  {
    sub_100E110BC();
    swift_allocError();
    *v41 = 4;
    swift_willThrow();
    swift_unknownObjectRelease();

    v40 = *(v10 + 8);
    v40(v34, v9);
    goto LABEL_23;
  }

  v35 = v70;
  v62 = v71;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016BC2D0, &unk_1013E4B00);
  sub_100E11BB0();
  v36 = v35;
  v37 = v62;
  v38 = v68;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v38)
  {

    sub_100016590(v36, v37);
LABEL_22:
    swift_unknownObjectRelease();

    v40 = *(v10 + 8);
    v40(v66, v9);
LABEL_23:
    v40(v69, v9);
    return;
  }

  v68 = v36;

  v42 = v70;
  v43 = String._bridgeToObjectiveC()();
  v44 = [v65 objectForKeyedSubscript:v43];

  if (!v44 || (v61 = v42, v70 = v44, (swift_dynamicCast() & 1) == 0) || (v45 = _s12searchpartyd20MessagingDestinationV0C4TypeO8rawValueAESgSi_tcfC_0(v72), v45 == 6))
  {

    v46 = v66;
    v47 = v62;
    v48 = v68;
    sub_100E110BC();
    swift_allocError();
    *v49 = 5;
    swift_willThrow();
    sub_100016590(v48, v47);
    swift_unknownObjectRelease();

    v40 = *(v10 + 8);
    v40(v46, v9);
    goto LABEL_23;
  }

  v60 = v45;
  v50 = objc_autoreleasePoolPush();
  v51 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v51];
  [v51 finishEncoding];
  v52 = [v51 encodedData];
  v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  objc_autoreleasePoolPop(v50);
  sub_100016590(v68, v62);
  swift_unknownObjectRelease();

  v56 = v67;
  *v67 = v53;
  v56[1] = v55;
  v57 = type metadata accessor for OwnerSharingCircle(0);
  v58 = v63;
  v63(v56 + v57[5], v69, v9);
  v58(v56 + v57[6], v66, v9);
  *(v56 + v57[8]) = v61;
  *(v56 + v57[7]) = v31;
  *(v56 + v57[9]) = v60;
}

unint64_t sub_100E0FBBC()
{
  result = qword_1016BC290;
  if (!qword_1016BC290)
  {
    sub_1000BC580(&qword_1016BC298, &qword_1013EA198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC290);
  }

  return result;
}

unint64_t sub_100E0FC24()
{
  result = qword_1016BC2A0;
  if (!qword_1016BC2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC2A0);
  }

  return result;
}

unint64_t sub_100E0FCC0()
{
  v1 = 0x726168536D657469;
  if (*v0 != 2)
  {
    v1 = 0x65746167656C6564;
  }

  v2 = 0xD000000000000018;
  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_100E0FD60()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000011;
  v4 = 0x737265626D656DLL;
  if (v1 != 4)
  {
    v4 = 0x6E61747065636361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100E0FE3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100E11F90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100E0FE64(uint64_t a1)
{
  v2 = sub_100E11CC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100E0FEA0(uint64_t a1)
{
  v2 = sub_100E11CC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100E0FEE0(int *a1)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_100009804(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + a1[7]));
  sub_100E1168C(v4, *(v1 + a1[8]));
  Hasher._combine(_:)(*(v1 + a1[9]));
  return Hasher._finalize()();
}

void sub_100E0FFE0(uint64_t a1, int *a2)
{
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_100009804(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + a2[7]));
  sub_100E1168C(a1, *(v2 + a2[8]));
  Hasher._combine(_:)(*(v2 + a2[9]));
}

Swift::Int sub_100E100C0(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_100009804(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + a2[7]));
  sub_100E1168C(v5, *(v2 + a2[8]));
  Hasher._combine(_:)(*(v2 + a2[9]));
  return Hasher._finalize()();
}

uint64_t sub_100E101BC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177C0D8);
  sub_1000076D4(v0, qword_10177C0D8);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100E10318(id *a1)
{
  v1 = *a1;
  [*a1 encryptedValues];
  v2 = static os_log_type_t.debug.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v3 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  v5 = v1;
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Updating OwnerSharingCircle record: %@", 38, 2, v4);

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for OwnerSharingCircle(0);

  sub_1000BC4D4(&qword_1016BC2D0, &unk_1013E4B00);
  sub_100D489BC();
  v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v12 = v11;
  swift_getObjectType();

  UUID.uuidString.getter();
  CKRecordKeyValueSetting.subscript.setter();
  sub_100017D5C(v10, v12);
  CKRecordKeyValueSetting.subscript.setter();
  CKRecordKeyValueSetting.subscript.setter();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  return sub_100016590(v10, v12);
}

uint64_t sub_100E10700(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&unk_1016BC340, &qword_1013EA3A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100E11CC0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v14 = 0;
  sub_100017D5C(v12, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v12, v13);
  }

  else
  {
    sub_100016590(v12, v13);
    v10 = type metadata accessor for OwnerSharingCircle(0);
    LOBYTE(v12) = 1;
    type metadata accessor for UUID();
    sub_100009804(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = *(v3 + v10[7]);
    v14 = 3;
    sub_100E11D68();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + v10[8]);
    v14 = 4;
    sub_1000BC4D4(&qword_1016BC2D0, &unk_1013E4B00);
    sub_100D489BC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = *(v3 + v10[9]);
    v14 = 5;
    sub_100328B5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100E10A0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for UUID();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  v9 = sub_1000BC4D4(&qword_1016BC318, &qword_1013EA398);
  v33 = *(v9 - 8);
  v34 = v9;
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for OwnerSharingCircle(0);
  __chkstk_darwin(v12);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v36 = a1;
  sub_1000035D0(a1, v15);
  sub_100E11CC0();
  v16 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_100007BAC(v36);
  }

  v35 = v6;
  v17 = v12;
  v18 = v32;
  v38 = 0;
  sub_1000E307C();
  v19 = v11;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v14;
  *v14 = v37;
  LOBYTE(v37) = 1;
  sub_100009804(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v21 = v8;
  v22 = v18;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v17;
  v23 = *(v31 + 32);
  v23(v20 + *(v17 + 20), v21, v22);
  LOBYTE(v37) = 2;
  v24 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v22;
  v26 = v29;
  v23(v20 + v29[6], v24, v25);
  v38 = 3;
  sub_100E11D14();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v20 + v26[7]) = v37;
  sub_1000BC4D4(&qword_1016BC2D0, &unk_1013E4B00);
  v38 = 4;
  sub_100E11BB0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v33;
  *(v20 + v26[8]) = v37;
  v38 = 5;
  sub_100328A48();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v27 + 8))(v19, v34);
  *(v20 + v26[9]) = v37;
  sub_1003158CC(v20, v30);
  sub_100007BAC(v36);
  return sub_100315930(v20);
}

uint64_t sub_100E10FE0(uint64_t a1)
{
  *(a1 + 8) = sub_100009804(&unk_1016BC2B0, type metadata accessor for OwnerSharingCircle, &unk_1013EA308);
  result = sub_100009804(&qword_1016B1608, type metadata accessor for OwnerSharingCircle, &unk_1013EA2E0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100E11064(uint64_t a1)
{
  result = sub_100009804(&qword_1016B1600, type metadata accessor for OwnerSharingCircle, &unk_1013EA330);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100E110BC()
{
  result = qword_1016BC2C0;
  if (!qword_1016BC2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC2C0);
  }

  return result;
}

void sub_100E11110(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = &v38 - v8;
  v9 = sub_1000BC4D4(&unk_1016BC140, &qword_1013E9EB8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v38 - v13;
  v14 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 64);
  v18 = (v15 + 63) >> 6;
  v38 = v4 + 16;
  v48 = (v4 + 32);
  v43 = v4;
  v44 = a2;
  v45 = (v4 + 8);

  v19 = 0;
  v42 = v7;
  v39 = v12;
  v40 = v3;
  v49 = 0;
  if (v17)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v23 | (v20 << 6);
      v25 = v43;
      v26 = *(*(v44 + 48) + v24);
      v3 = v40;
      v27 = v41;
      (*(v43 + 16))(v41, *(v44 + 56) + *(v43 + 72) * v24, v40);
      v28 = sub_1000BC4D4(&unk_1016BC3A0, &unk_1013DBEE0);
      v29 = *(v28 + 48);
      v30 = v39;
      *v39 = v26;
      v31 = v27;
      v12 = v30;
      (*(v25 + 32))(&v30[v29], v31, v3);
      (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
      v22 = v20;
      v7 = v42;
LABEL_13:
      v32 = v47;
      sub_1000D2AD8(v12, v47, &unk_1016BC140, &qword_1013E9EB8);
      v33 = sub_1000BC4D4(&unk_1016BC3A0, &unk_1013DBEE0);
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
      {
        break;
      }

      (*v48)(v7, v32 + *(v33 + 48), v3);
      v34 = *(v46 + 48);
      v52 = *(v46 + 32);
      v53 = v34;
      v54 = *(v46 + 64);
      v35 = *(v46 + 16);
      v50 = *v46;
      v51 = v35;
      String.hash(into:)();

      sub_100009804(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      dispatch thunk of Hashable.hash(into:)();
      (*v45)(v7, v3);
      v36 = Hasher._finalize()();
      v19 = v22;
      v49 ^= v36;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    Hasher._combine(_:)(v49);
  }

  else
  {
LABEL_5:
    if (v18 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v18;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
        v37 = sub_1000BC4D4(&unk_1016BC3A0, &unk_1013DBEE0);
        (*(*(v37 - 8) + 56))(v12, 1, 1, v37);
        v17 = 0;
        goto LABEL_13;
      }

      v17 = *(v14 + 8 * v20);
      ++v19;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_100E1168C(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v48 = type metadata accessor for UUID();
  v3 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v39 - v9;
  v11 = *(a2 + 64);
  v39[0] = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v39[1] = v3 + 16;
  v47 = (v3 + 32);
  v42 = v3;
  v43 = a2;
  v44 = (v3 + 8);

  v16 = 0;
  v40 = v10;
  v41 = v8;
  v49 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = v20 | (v17 << 6);
      v22 = v42;
      v23 = v43;
      v24 = v46;
      v25 = v48;
      (*(v42 + 16))(v46, *(v43 + 48) + *(v42 + 72) * v21, v48);
      v26 = *(*(v23 + 56) + v21);
      v27 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
      v28 = *(v27 + 48);
      v29 = *(v22 + 32);
      v8 = v41;
      v29(v41, v24, v25);
      v8[v28] = v26;
      (*(*(v27 - 8) + 56))(v8, 0, 1, v27);
      v19 = v17;
      v10 = v40;
LABEL_13:
      sub_1000D2AD8(v8, v10, &unk_1016BC360, &qword_10139CBE0);
      v30 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
      if ((*(*(v30 - 8) + 48))(v10, 1, v30) == 1)
      {
        break;
      }

      v31 = *(v30 + 48);
      v32 = v46;
      v33 = v48;
      (*v47)(v46, v10, v48);
      v34 = v10[v31];
      v35 = *(v45 + 48);
      v52 = *(v45 + 32);
      v53 = v35;
      v54 = *(v45 + 64);
      v36 = *(v45 + 16);
      v50 = *v45;
      v51 = v36;
      sub_100009804(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      (*v44)(v32, v33);
      Hasher._combine(_:)(v34);
      v37 = Hasher._finalize()();
      v16 = v19;
      v49 ^= v37;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    Hasher._combine(_:)(v49);
  }

  else
  {
LABEL_5:
    if (v15 <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    else
    {
      v18 = v15;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
        v38 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
        (*(*(v38 - 8) + 56))(v8, 1, 1, v38);
        v14 = 0;
        goto LABEL_13;
      }

      v14 = *(v39[0] + 8 * v17);
      ++v16;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

BOOL sub_100E11AF8(uint64_t a1, uint64_t a2)
{
  if (_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) && (v4 = type metadata accessor for OwnerSharingCircle(0), (static UUID.== infix(_:_:)() & 1) != 0) && (static UUID.== infix(_:_:)() & 1) != 0 && *(a1 + v4[7]) == *(a2 + v4[7]) && (sub_100DE7CB4(*(a1 + v4[8]), *(a2 + v4[8])) & 1) != 0)
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100E11BB0()
{
  result = qword_1016BC2D8;
  if (!qword_1016BC2D8)
  {
    sub_1000BC580(&qword_1016BC2D0, &unk_1013E4B00);
    sub_100009804(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_100E11C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC2D8);
  }

  return result;
}

unint64_t sub_100E11C6C()
{
  result = qword_1016BC2E8;
  if (!qword_1016BC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC2E8);
  }

  return result;
}

unint64_t sub_100E11CC0()
{
  result = qword_1016BC320;
  if (!qword_1016BC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC320);
  }

  return result;
}

unint64_t sub_100E11D14()
{
  result = qword_1016BC330;
  if (!qword_1016BC330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC330);
  }

  return result;
}

unint64_t sub_100E11D68()
{
  result = qword_1016BC350;
  if (!qword_1016BC350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC350);
  }

  return result;
}

unint64_t sub_100E11DBC()
{
  result = qword_1016BC370;
  if (!qword_1016BC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC370);
  }

  return result;
}

unint64_t sub_100E11E34()
{
  result = qword_1016BC378;
  if (!qword_1016BC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC378);
  }

  return result;
}

unint64_t sub_100E11E8C()
{
  result = qword_1016BC380;
  if (!qword_1016BC380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC380);
  }

  return result;
}

unint64_t sub_100E11EE4()
{
  result = qword_1016BC388;
  if (!qword_1016BC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC388);
  }

  return result;
}

unint64_t sub_100E11F3C()
{
  result = qword_1016BC390;
  if (!qword_1016BC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC390);
  }

  return result;
}

uint64_t sub_100E11F90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101370310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737265626D656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E61747065636361 && a2 == 0xEF65746174536563)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_100E121AC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 16);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (qword_101695258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C668);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "invalidate", v10, 2u);
  }
}

uint64_t sub_100E12360(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    v15 = v7;
    swift_once();
    v7 = v15;
  }

  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10177C410, "AccessoryDiscoveryService.initiatePairing", 41, 2, _swiftEmptyArrayStorage);
  v8 = *(v3 + 48);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  v9[5] = v3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100E1D464;
  *(v10 + 24) = v9;
  v16[4] = sub_10040B9F8;
  v16[5] = v10;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10013FE14;
  v16[3] = &unk_1016523A0;
  v11 = _Block_copy(v16);

  v12 = a1;

  dispatch_sync(v8, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E12540()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C0F0);
  sub_1000076D4(v0, qword_10177C0F0);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_100E125C0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100E12634(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100E12688@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C730, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100E126FC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C108);
  v1 = sub_1000076D4(v0, qword_10177C108);
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C0F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100E127C4()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = type metadata accessor for AccessoryDiscoveryTrampoline();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC12searchpartyd28AccessoryDiscoveryTrampoline_implementation] = v0;
    v9.receiver = v4;
    v9.super_class = v3;

    v5 = objc_msgSendSuper2(&v9, "init");
    v6 = *(v0 + 64);
    *(v0 + 64) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_100E12860(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = type metadata accessor for UUID();
  __chkstk_darwin(v3 - 8);
  v19 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  __chkstk_darwin(v5 - 8);
  v18 = v17 - v6;
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0xD000000000000019;
  *(v2 + 24) = 0x80000001013EA5D0;
  v13 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v17[1] = "ssoryPairingSession: %@ ";
  v17[2] = v13;
  (*(v10 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10000403C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v2 + 48) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for XPCSessionManager();
  swift_allocObject();
  *(v2 + 56) = XPCSessionManager.init(name:)();
  type metadata accessor for WorkItemQueue();
  v14 = type metadata accessor for WorkItemQueue.WarningOptions();
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  (*(*(v14 - 8) + 56))(v18, 1, 1, v14);
  UUID.init()();
  *(v2 + 112) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v15 = v21;
  *(v2 + 32) = v20;
  *(v2 + 40) = v15;
  return v2;
}

uint64_t sub_100E12C50()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 48);
  aBlock[4] = sub_100E14598;
  v14 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101651F68;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_10000403C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_100E12F04(uint64_t a1)
{
  v2 = type metadata accessor for XPCServiceDescription();
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MachServiceName();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a1 + 48);
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  MachServiceName.init(_:)();
  (*(v6 + 16))(v9, v11, v5);
  sub_100E127C4();
  if (qword_101694ED0 != -1)
  {
LABEL_5:
    swift_once();
  }

  v18 = qword_1016BC3B0;
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 interfaceWithProtocol:&OBJC_PROTOCOL___SPAccessoryDiscoveryXPCClientProtocol];
  swift_retain_n();
  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:remoteObjectInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  XPCSessionManager.register(service:)();
  (*(v23 + 8))(v4, v24);
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_100E132A0(void *a1)
{
  v2 = v1;
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C0F0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "interruptionHandler: %@", v8, 0xCu);
    sub_100288C6C(v9);
  }

  v11 = *(v2 + 48);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100E1A73C;
  *(v13 + 24) = v12;
  v18[4] = sub_10040B9F8;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10013FE14;
  v18[3] = &unk_101652198;
  v14 = _Block_copy(v18);
  v15 = v5;

  dispatch_sync(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E13504(void *a1)
{
  v2 = v1;
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C0F0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "invalidationHandler: %@", v8, 0xCu);
    sub_100288C6C(v9);
  }

  v11 = *(v2 + 48);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100E1D598;
  *(v13 + 24) = v12;
  v18[4] = sub_1000D2FB0;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10013FE14;
  v18[3] = &unk_101651FE0;
  v14 = _Block_copy(v18);
  v15 = v5;

  dispatch_sync(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100E13768()
{
  v0 = objc_opt_self();
  v1 = &OBJC_PROTOCOL___SPAccessoryDiscoveryXPCProtocol;
  v2 = [v0 interfaceWithProtocol:v1];

  qword_1016BC3B0 = v2;
}

uint64_t sub_100E137D0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v2[6];
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v11 = v2[9];
    if (!v11)
    {
LABEL_7:
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = a1;
      v19 = a1;

      dispatch thunk of WorkItemQueue.enqueue(_:)();
    }

    v12 = *(v11 + 16);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = a1;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_100E1A6D0;
    *(v14 + 24) = v13;
    aBlock[4] = sub_10040B9F8;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013FE14;
    aBlock[3] = &unk_1016520A8;
    v15 = _Block_copy(aBlock);
    swift_retain_n();
    v16 = a1;

    dispatch_sync(v12, v15);
    _Block_release(v15);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      OS_dispatch_queue.sync<A>(execute:)();
      if (LOBYTE(aBlock[0]) == 1)
      {
        sub_10062EF30();

        v2[9] = 0;

        v2[10] = 0;
      }

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100E13B04(uint64_t a1, void *a2)
{
  if (!*(a1 + 72))
  {
    type metadata accessor for AccessoryDiscoverySession(0);
    swift_allocObject();
    v4 = sub_10062E9B4();
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C0F0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v8 = 136315138;
      v16 = v15;

      sub_1000BC4D4(&unk_1016C2220, &unk_1013EA670);
      sub_1000041A4(&unk_1016BC4B0, &unk_1016C2220, &unk_1013EA670, &unk_101404F78);
      v9._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v9);

      v10._countAndFlagsBits = 8250;
      v10._object = 0xE200000000000000;
      String.append(_:)(v10);
      v11._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 62;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);

      v13 = sub_1000136BC(60, 0xE100000000000000, &v16);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Created new AccessoryDiscoverySession: %s", v8, 0xCu);
      sub_100007BAC(v15);
    }

    *(a1 + 72) = v4;
    swift_retain_n();
  }

  swift_retain_n();
  sub_100F9D38C(a2);
}

uint64_t sub_100E13DB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return _swift_task_switch(sub_100E13DD4, 0, 0);
}

uint64_t sub_100E13DD4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 96);
    v0[14] = v2;
    if (v2)
    {
      swift_unknownObjectRetain();

      return _swift_task_switch(sub_100E13EB4, v2, 0);
    }

    *(Strong + 96) = 0;
    *(Strong + 104) = 0;
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_100E13EB4()
{
  v1 = v0[12];
  v2 = *(v0[14] + 216);
  v3 = *(v2 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100E1D594;
  *(v5 + 24) = v4;
  v0[6] = sub_10040B9F8;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10013FE14;
  v0[5] = &unk_101652120;
  v6 = _Block_copy(v0 + 2);

  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  v8 = swift_unknownObjectRelease();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_100E14060;
    v9 = 0;
    v10 = 0;
  }

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100E14060()
{
  v1 = v0[13];
  v4 = *(v1 + 96);
  v2 = (v1 + 96);
  v3 = v4;
  v0[15] = v4;
  if (v4)
  {
    swift_unknownObjectRetain();

    return _swift_task_switch(sub_100E14118, v3, 0);
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100E14118()
{
  sub_100BCB548();
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100E14188, 0, 0);
}

uint64_t sub_100E14188()
{
  v1 = *(v0 + 104);
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100E141FC(uint64_t a1, void *a2)
{
  if (!*(a1 + 88))
  {
    type metadata accessor for LocalFindableAccessoryDiscoverySession(0);
    swift_allocObject();
    v4 = sub_100F04FA4();
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C0F0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v8 = 136315138;
      v16 = v15;

      sub_1000BC4D4(&unk_1016C2220, &unk_1013EA670);
      sub_1000041A4(&unk_1016BC4B0, &unk_1016C2220, &unk_1013EA670, &unk_101404F78);
      v9._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v9);

      v10._countAndFlagsBits = 8250;
      v10._object = 0xE200000000000000;
      String.append(_:)(v10);
      v11._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 62;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);

      v13 = sub_1000136BC(60, 0xE100000000000000, &v16);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Created new LocalFindableAccessoryDiscoverySession: %s", v8, 0xCu);
      sub_100007BAC(v15);
    }

    *(a1 + 88) = v4;
    swift_retain_n();
  }

  swift_retain_n();
  sub_100F9D38C(a2);
}

uint64_t sub_100E144AC()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100E1451C()
{
  sub_100E144AC();

  return swift_deallocClassInstance();
}

uint64_t sub_100E145AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_100E14640;

  return daemon.getter();
}

uint64_t sub_100E14640(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for PencilPairingService(0);
  v6 = sub_10000403C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000403C(&qword_10169A090, type metadata accessor for PencilPairingService, &unk_1013E8708);
  *v3 = v9;
  v3[1] = sub_100E1481C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E1481C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10050A90C, 0, 0);
  }

  else
  {

    v4[7] = a1;
    v6 = swift_task_alloc();
    v4[8] = v6;
    *v6 = v5;
    v6[1] = sub_100E149B8;
    v7 = v4[2];

    return sub_100D927C4(v7, 2, 0x1000000000000000);
  }
}

uint64_t sub_100E149B8()
{

  return _swift_task_switch(sub_100BCB8D8, 0, 0);
}

uint64_t sub_100E14AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = swift_task_alloc();
  v4[9] = v5;
  *v5 = v4;
  v5[1] = sub_100E14B4C;

  return daemon.getter();
}

uint64_t sub_100E14B4C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DiscoveryService();
  v6 = sub_10000403C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000403C(&unk_1016B7D70, type metadata accessor for DiscoveryService, &unk_1013DD630);
  *v3 = v9;
  v3[1] = sub_100E14D28;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E14D28(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_100E15020;
  }

  else
  {

    v4 = sub_100E14E44;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100E14E44()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = *(v0 + 96);
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_10000403C(&qword_1016BC570, type metadata accessor for DiscoveryService, &unk_1013DD4F0);
    *(v3 + 96) = v2;
    *(v3 + 104) = v4;

    swift_unknownObjectRelease();
  }

  return _swift_task_switch(sub_100E14F2C, v2, 0);
}

uint64_t sub_100E14F2C()
{
  sub_100F9D38C(*(v0 + 48));

  sub_100BCB268();

  return _swift_task_switch(sub_100E14FA8, 0, 0);
}

uint64_t sub_100E14FA8()
{
  (*(v0 + 56))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100E15020()
{
  v13 = v0;

  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C0F0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000136BC(0xD00000000000002DLL, 0x8000000101371850, &v12);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in %s: %{public}@", v4, 0x16u);
    sub_100288C6C(v5);

    sub_100007BAC(v6);
  }

  v8 = v0[13];
  v9 = v0[7];
  swift_errorRetain();
  v9(v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100E15254()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 96);
    v0[7] = v2;
    if (v2)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100E15424, v4, v3);
    }

    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C0F0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No current proximity discovery session!", v8, 2u);
    }

    v9 = v0[6];
    *(v9 + 96) = 0;
    *(v9 + 104) = 0;
    swift_unknownObjectRelease();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100E15424()
{
  sub_100BCB548();

  return _swift_task_switch(sub_100E1548C, 0, 0);
}

uint64_t sub_100E1548C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 48);
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100E15508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = swift_task_alloc();
  v5[10] = v6;
  *v6 = v5;
  v6[1] = sub_100E155A4;

  return daemon.getter();
}

uint64_t sub_100E155A4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 88) = a1;

  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DiscoveryService();
  v6 = sub_10000403C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000403C(&unk_1016B7D70, type metadata accessor for DiscoveryService, &unk_1013DD630);
  *v3 = v9;
  v3[1] = sub_100E15780;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E15780(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_100E15A84;
  }

  else
  {

    v4 = sub_100E1589C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100E1589C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = *(v0 + 104);
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_10000403C(&qword_1016BC570, type metadata accessor for DiscoveryService, &unk_1013DD4F0);
    *(v3 + 96) = v2;
    *(v3 + 104) = v4;

    swift_unknownObjectRelease();
  }

  return _swift_task_switch(sub_100E15984, v2, 0);
}

uint64_t sub_100E15984()
{
  v1 = *(v0 + 56);
  sub_100F9D38C(*(v0 + 48));

  sub_100BCA284(v1);

  return _swift_task_switch(sub_100E15A0C, 0, 0);
}

uint64_t sub_100E15A0C()
{
  (*(v0 + 64))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100E15A84()
{
  v13 = v0;

  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C0F0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000136BC(0xD00000000000002BLL, 0x8000000101371820, &v12);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in %s: %{public}@", v4, 0x16u);
    sub_100288C6C(v5);

    sub_100007BAC(v6);
  }

  v8 = v0[14];
  v9 = v0[8];
  swift_errorRetain();
  v9(v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100E15C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_100E15D30;

  return daemon.getter();
}

uint64_t sub_100E15D30(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DiscoveryService();
  v6 = sub_10000403C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000403C(&unk_1016B7D70, type metadata accessor for DiscoveryService, &unk_1013DD630);
  *v3 = v9;
  v3[1] = sub_100E15F0C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E15F0C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_100E1612C;
    v6 = 0;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_100E16048;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100E16048()
{
  sub_100BCAA38(*(v0 + 16), *(v0 + 24));

  return _swift_task_switch(sub_100E160B4, 0, 0);
}

uint64_t sub_100E160B4()
{
  (*(v0 + 32))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100E1612C()
{
  v13 = v0;

  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C0F0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000136BC(0xD000000000000037, 0x80000001013717E0, &v12);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in %s: %{public}@", v4, 0x16u);
    sub_100288C6C(v5);

    sub_100007BAC(v6);
  }

  v8 = v0[9];
  v9 = v0[4];
  swift_errorRetain();
  v9(v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100E16340(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v72 = a1;
  v73 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v6 - 8);
  __chkstk_darwin(v6);
  v68 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v69 = *(v8 - 8);
  v70 = v8;
  __chkstk_darwin(v8);
  v67 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
  unsafeFromAsyncTask<A>(_:)();
  v18 = aBlock;
  if (aBlock)
  {
    v64 = a3;
    v65 = v6;
    v19 = [a3 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v20);
    *(&v63 - 2) = v17;
    *(&v63 - 1) = v18;
    v66 = v18;
    sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
    Lock.callAsFunction<A>(_:)();
    v21 = aBlock;
    (*(v15 + 8))(v17, v14);
    if (v21)
    {
      v22 = static os_log_type_t.debug.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      v23 = qword_10177C410;
      if (os_log_type_enabled(qword_10177C410, v22))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v21;
        *v25 = v21;
        v26 = v21;
        _os_log_impl(&_mh_execute_header, v23, v22, "TRACE: Create AccessoryPairingSession for %@", v24, 0xCu);
        sub_100288C6C(v25);
      }

      v27 = a4[4];
      v28 = a4[5];
      type metadata accessor for AccessoryPairingSession();
      swift_allocObject();
      v29 = v21;

      v63 = v29;
      v30 = sub_100A5FE14(v27, v28, v29);
      if (v30)
      {
        v31 = v30;
        v32 = static os_log_type_t.default.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_101385D80;
        aBlock = v31;

        v34 = String.init<A>(describing:)();
        v36 = v35;
        *(v33 + 56) = &type metadata for String;
        *(v33 + 64) = sub_100008C00();
        *(v33 + 32) = v34;
        *(v33 + 40) = v36;
        os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v23, "Created new AccessoryPairingSession: %@ ", 40, 2, v33);

        a4[10] = v31;

        sub_100A605EC(v64, v72, v73);
      }

      v53 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v23, "Unable to create a new pairing session!", 39, 2, _swiftEmptyArrayStorage);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
      v54 = static OS_dispatch_queue.global(qos:)();
      (*(v11 + 8))(v13, v10);
      v55 = swift_allocObject();
      v56 = v73;
      *(v55 + 16) = v72;
      *(v55 + 24) = v56;
      v79 = sub_100E1D59C;
      v80 = v55;
      aBlock = _NSConcreteStackBlock;
      v76 = 1107296256;
      v77 = sub_100006684;
      v78 = &unk_101652490;
      v57 = _Block_copy(&aBlock);

      v50 = v67;
      static DispatchQoS.unspecified.getter();
      v74 = _swiftEmptyArrayStorage;
      sub_10000403C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v58 = v68;
      v59 = v65;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v57);

      (*(v71 + 8))(v58, v59);
    }

    else
    {
      v45 = static os_log_type_t.error.getter();
      if (qword_1016950C8 != -1)
      {
        v62 = v45;
        swift_once();
        v45 = v62;
      }

      os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, qword_10177C410, "No peripheral for accessory.", 28, 2, _swiftEmptyArrayStorage);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
      v46 = static OS_dispatch_queue.global(qos:)();
      (*(v11 + 8))(v13, v10);
      v47 = swift_allocObject();
      v48 = v73;
      *(v47 + 16) = v72;
      *(v47 + 24) = v48;
      v79 = sub_100E1D48C;
      v80 = v47;
      aBlock = _NSConcreteStackBlock;
      v76 = 1107296256;
      v77 = sub_100006684;
      v78 = &unk_101652440;
      v49 = _Block_copy(&aBlock);

      v50 = v67;
      static DispatchQoS.unspecified.getter();
      v74 = _swiftEmptyArrayStorage;
      sub_10000403C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v51 = v68;
      v52 = v65;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v49);

      (*(v71 + 8))(v51, v52);
    }

    (*(v69 + 8))(v50, v70);
  }

  sub_100101B58();
  swift_allocError();
  *v37 = 16;
  *(v37 + 8) = 0u;
  *(v37 + 24) = 0u;
  *(v37 + 40) = 11;
  swift_willThrow();

  v38 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    v61 = v38;
    swift_once();
    v38 = v61;
  }

  os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, qword_10177C410, "Cannot initiate pairing without central manager.", 48, 2, _swiftEmptyArrayStorage);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
  v39 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  v40 = swift_allocObject();
  v41 = v73;
  *(v40 + 16) = v72;
  *(v40 + 24) = v41;
  v79 = sub_100E1D59C;
  v80 = v40;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = sub_100006684;
  v78 = &unk_1016523F0;
  v42 = _Block_copy(&aBlock);

  v43 = v67;
  static DispatchQoS.unspecified.getter();
  v74 = _swiftEmptyArrayStorage;
  sub_10000403C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v44 = v68;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v42);

  (*(v71 + 8))(v44, v6);
  (*(v69 + 8))(v43, v70);
}

void sub_100E16FD8(void (*a1)())
{
  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_10000403C(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1();
}

uint64_t sub_100E17094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[19] = v7;
  *v7 = v4;
  v7[1] = sub_100E17208;

  return daemon.getter();
}

uint64_t sub_100E17208(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 160) = a1;

  v3 = swift_task_alloc();
  *(v2 + 168) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for PencilPairingService(0);
  v6 = sub_10000403C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000403C(&qword_10169A090, type metadata accessor for PencilPairingService, &unk_1013E8708);
  *v3 = v9;
  v3[1] = sub_100E173E4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E173E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_100E1868C;
  }

  else
  {

    v4 = sub_100E17500;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100E17500()
{
  v37 = v0;
  v1 = v0[7];
  v2 = [v1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v2) = [v1 checkSerialNumber];
  v3 = [v1 verifyFMNID];
  v4 = [v1 verifyWithServer];
  if (!v2)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    if (v4)
    {
      (*(v0[16] + 16))(v0[17], v0[18], v0[15]);
      type metadata accessor for Peripheral();
      Identifier.init(_:)();
      v5 = swift_task_alloc();
      v0[27] = v5;
      *v5 = v0;
      v5[1] = sub_100E17D38;
      v6 = v0[13];

      return sub_100DB4414(v6);
    }

    goto LABEL_8;
  }

  if (v4)
  {
LABEL_8:
    if (qword_101694EC0 != -1)
    {
      swift_once();
    }

    v8 = v0[7];
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177C0F0);
    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[7];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v36 = v15;
      *v14 = 136446210;
      v16 = v13;
      v17 = [v16 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = sub_1000136BC(v18, v20, &v36);

      *(v14 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "Invalid request %{public}s!", v14, 0xCu);
      sub_100007BAC(v15);
    }

    v22 = v0[18];
    v23 = v0[15];
    v24 = v0[16];
    type metadata accessor for SPAccessoryDiscoverySessionError(0);
    v0[6] = 3;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_101389998);
    _BridgedStoredNSError.init(_:userInfo:)();
    v25 = v0[5];
    swift_willThrow();

    (*(v24 + 8))(v22, v23);
    v26 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v27 = qword_10177C410;
    if (os_log_type_enabled(qword_10177C410, v26))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138543362;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v27, v26, "Pairing status related error %{public}@", v28, 0xCu);
      sub_100288C6C(v29);
    }

    v31 = v0[8];
    v32 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:0 lostModeInfo:0];
    swift_errorRetain();
    v31(v32, v25);

    v33 = v0[1];

    return v33();
  }

  (*(v0[16] + 16))(v0[17], v0[18], v0[15]);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  v34 = swift_task_alloc();
  v0[24] = v34;
  *v34 = v0;
  v34[1] = sub_100E17AB0;
  v35 = v0[14];

  return sub_100DADF40(v35);
}

uint64_t sub_100E17AB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v4[25] = v1;

  v6 = (v5 + 8);
  v7 = v4[14];
  v8 = v4[11];
  if (v1)
  {
    (*v6)(v7, v8);
    v9 = sub_100E18858;
  }

  else
  {
    v4[26] = a1;
    (*v6)(v7, v8);
    v9 = sub_100E17C3C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100E17C3C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[8];
  v5 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:v0[26] lostModeInfo:0];
  v4(v5, 0);

  (*(v3 + 8))(v1, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100E17D38(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[28] = a1;
  v4[29] = v1;

  (*(v3[12] + 8))(v3[13], v3[11]);
  if (v1)
  {
    v5 = sub_100E18A44;
  }

  else
  {
    v5 = sub_100E17EA8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100E17EA8(id a1)
{
  if (*(v1 + 224) == 3 && [*(v1 + 56) wantsLostModeInfo])
  {
    v2 = static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      v21 = v2;
      swift_once();
      v2 = v21;
    }

    v3 = qword_10177C410;
    *(v1 + 240) = qword_10177C410;
    os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Paired to another account and request wants lost mode info", 58, 2, _swiftEmptyArrayStorage);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v1 + 248) = Strong;
    if (Strong)
    {
      v5 = swift_task_alloc();
      *(v1 + 256) = v5;
      *v5 = v1;
      v5[1] = sub_100E181AC;
      v6 = *(v1 + 144);

      return sub_100E1C36C(v6);
    }

    v18 = *(v1 + 240);
    v10 = *(v1 + 144);
    v11 = *(v1 + 120);
    v12 = *(v1 + 128);
    v13 = *(v1 + 64);
    v19 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v18, "No lost mode info, so just return pairing status", 48, 2, _swiftEmptyArrayStorage);
    v14 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:3 lostModeInfo:0];
  }

  else
  {
    v8 = static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      v20 = v8;
      swift_once();
      v8 = v20;
    }

    v9 = *(v1 + 224);
    v10 = *(v1 + 144);
    v11 = *(v1 + 120);
    v12 = *(v1 + 128);
    v13 = *(v1 + 64);
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_10177C410, "Neither paired to another account nor in lost mode, so just return pairing status", 81, 2, _swiftEmptyArrayStorage);
    v14 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:v9 lostModeInfo:0];
  }

  v15 = v14;
  v16 = v14;
  v13(v15, 0);

  (*(v12 + 8))(v10, v11);

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_100E181AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {
    v4 = sub_100E184A0;
  }

  else
  {
    v4 = sub_100E182E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100E182E8(uint64_t a1)
{
  v2 = v1[33];
  v3 = v1[30];
  v4 = v1[18];
  v5 = v1[15];
  v6 = v1[16];
  v7 = v1[8];
  v8 = static os_log_type_t.default.getter();
  if (v2)
  {
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v3, "Fetched lost mode info, returning with pairing status and lost mode info", 72, 2, _swiftEmptyArrayStorage);
    v9 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:3 lostModeInfo:v2];
    v10 = v9;
    v7(v9, 0);
  }

  else
  {
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v3, "No lost mode info, so just return pairing status", 48, 2, _swiftEmptyArrayStorage);
    v11 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:3 lostModeInfo:0];
    v10 = v11;
    v7(v11, 0);

    v2 = v10;
  }

  (*(v6 + 8))(v4, v5);

  v12 = v1[1];

  return v12();
}

uint64_t sub_100E184A0()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];

  (*(v3 + 8))(v1, v2);
  v4 = v0[34];
  v5 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C410;
  if (os_log_type_enabled(qword_10177C410, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v6, v5, "Pairing status related error %{public}@", v7, 0xCu);
    sub_100288C6C(v8);
  }

  v10 = v0[8];
  v11 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:0 lostModeInfo:0];
  swift_errorRetain();
  v10(v11, v4);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100E1868C()
{

  v1 = v0[23];
  v2 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v3 = qword_10177C410;
  if (os_log_type_enabled(qword_10177C410, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v3, v2, "Pairing status related error %{public}@", v4, 0xCu);
    sub_100288C6C(v5);
  }

  v7 = v0[8];
  v8 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:0 lostModeInfo:0];
  swift_errorRetain();
  v7(v8, v1);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100E18858()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];

  (*(v3 + 8))(v1, v2);
  v4 = v0[25];
  v5 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C410;
  if (os_log_type_enabled(qword_10177C410, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v6, v5, "Pairing status related error %{public}@", v7, 0xCu);
    sub_100288C6C(v8);
  }

  v10 = v0[8];
  v11 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:0 lostModeInfo:0];
  swift_errorRetain();
  v10(v11, v4);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100E18A44()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];

  (*(v3 + 8))(v1, v2);
  v4 = v0[29];
  v5 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C410;
  if (os_log_type_enabled(qword_10177C410, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v6, v5, "Pairing status related error %{public}@", v7, 0xCu);
    sub_100288C6C(v8);
  }

  v10 = v0[8];
  v11 = [objc_allocWithZone(SPAccessoryDiscoveryPairingStatusResult) initWithPairingStatus:0 lostModeInfo:0];
  swift_errorRetain();
  v10(v11, v4);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100E18C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[11] = v6;
  *v6 = v3;
  v6[1] = sub_100E18D8C;

  return daemon.getter();
}

uint64_t sub_100E18D8C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for PencilPairingService(0);
  v6 = sub_10000403C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000403C(&qword_10169A090, type metadata accessor for PencilPairingService, &unk_1013E8708);
  *v3 = v9;
  v3[1] = sub_100E18F68;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E18F68(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_100E1947C;
  }

  else
  {

    v4 = sub_100E19084;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100E19084()
{
  (*(v0[6] + 16))(v0[7], v0[2], v0[5]);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_100E19158;
  v2 = v0[10];

  return sub_100DA8340(v2);
}

uint64_t sub_100E19158(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_100E1969C;
  }

  else
  {
    v7 = sub_100E192CC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100E192CC()
{
  v10 = v0;
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C0F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD000000000000039, 0x80000001013718E0, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s completed successfully!", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v0 + 136);
  (*(v0 + 24))(0, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100E1947C()
{
  v13 = v0;
  v1 = v0[15];

  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C0F0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_1000136BC(0xD000000000000039, 0x80000001013718E0, &v12);
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s failed with %{public}@!", v5, 0x16u);
    sub_100288C6C(v6);

    sub_100007BAC(v7);
  }

  v9 = v0[3];
  swift_errorRetain();
  v9(v1, 0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100E1969C()
{
  v13 = v0;
  v1 = v0[18];

  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C0F0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_1000136BC(0xD000000000000039, 0x80000001013718E0, &v12);
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s failed with %{public}@!", v5, 0x16u);
    sub_100288C6C(v6);

    sub_100007BAC(v7);
  }

  v9 = v0[3];
  swift_errorRetain();
  v9(v1, 0);

  v10 = v0[1];

  return v10();
}

void sub_100E1998C(void *a1, void *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t *a7, uint64_t *a8, unint64_t *a9)
{
  swift_beginAccess();
  v13 = a1[4];
  v78 = a1;
  v79 = a3;
  v80 = a4;
  if ((v13 & 0xC000000000000001) != 0)
  {
    swift_bridgeObjectRetain_n();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(a3, a4);
    sub_1000041A4(a5, a3, a4, &protocol conformance descriptor for XPCSession<A>);
    Set.Iterator.init(_cocoa:)();
    v14 = v85;
    v15 = v86;
    v16 = v87;
    v17 = v88;
    v18 = v89;
  }

  else
  {
    v19 = -1 << *(v13 + 32);
    v15 = v13 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v13 + 56);
    v14 = a1[4];
    swift_bridgeObjectRetain_n();
    v17 = 0;
  }

  v22 = (v16 + 64) >> 6;
  if (v14 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v23 = v17;
  v24 = v18;
  v25 = v17;
  if (v18)
  {
LABEL_12:
    v26 = (v24 - 1) & v24;
    v27 = *(*(v14 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

    if (!v27)
    {
LABEL_19:

      sub_1000128F8(v14);
      if (qword_101695258 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_44;
    }

    while (1)
    {
      v29 = v14;
      sub_100008BB8(0, &qword_1016C21A0, NSObject_ptr);
      v30 = v27;
      v31 = XPCSession.connection.getter();
      v32 = static NSObject.== infix(_:_:)();

      if (v32)
      {
        break;
      }

      v17 = v25;
      v18 = v26;
      v14 = v29;
      if ((v29 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v28 = __CocoaSet.Iterator.next()();
      if (v28)
      {
        v84 = v28;
        sub_1000BC4D4(v79, v80);
        swift_dynamicCast();
        v27 = v83;
        v25 = v17;
        v26 = v18;
        if (v83)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    sub_1000128F8(v29);
    v50 = v78[4];
    if ((v50 & 0xC000000000000001) != 0)
    {

      v51 = __CocoaSet.count.getter();
    }

    else
    {
      v51 = *(v50 + 16);
    }

    swift_beginAccess();
    a6(v30);
    swift_endAccess();

    (*(*v78 + 200))(v30);
    v52 = v78[4];
    if ((v52 & 0xC000000000000001) != 0)
    {

      v53 = __CocoaSet.count.getter();
    }

    else
    {
      v53 = *(v52 + 16);
    }

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000076D4(v54, qword_10177C668);
    swift_retain_n();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v81 = v53;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v84 = v58;
      *v57 = 136446722;
      sub_1000BC4D4(a7, a8);
      sub_1000041A4(a9, a7, a8, &unk_101404F78);
      v59._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v59);

      v60._countAndFlagsBits = 8250;
      v60._object = 0xE200000000000000;
      String.append(_:)(v60);
      v61._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v61);

      v62._countAndFlagsBits = 62;
      v62._object = 0xE100000000000000;
      String.append(_:)(v62);
      v63 = sub_1000136BC(60, 0xE100000000000000, &v84);

      *(v57 + 4) = v63;
      *(v57 + 12) = 2048;
      *(v57 + 14) = v51;
      *(v57 + 22) = 2048;
      v64 = v78[4];
      if ((v64 & 0xC000000000000001) != 0)
      {

        v65 = __CocoaSet.count.getter();
      }

      else
      {
        v65 = *(v64 + 16);
      }

      *(v57 + 24) = v65;

      _os_log_impl(&_mh_execute_header, v55, v56, "%{public}s: Session count: %ld -> %ld", v57, 0x20u);
      sub_100007BAC(v58);

      if (v81)
      {
        goto LABEL_42;
      }
    }

    else
    {

      if (v53)
      {
LABEL_42:

        return;
      }
    }

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v84 = v69;
      *v68 = 136446210;
      sub_1000BC4D4(a7, a8);
      sub_1000041A4(a9, a7, a8, &unk_101404F78);
      v70._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v70);

      v71._countAndFlagsBits = 8250;
      v71._object = 0xE200000000000000;
      String.append(_:)(v71);
      v72._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v72);

      v73._countAndFlagsBits = 62;
      v73._object = 0xE100000000000000;
      String.append(_:)(v73);

      v74 = sub_1000136BC(60, 0xE100000000000000, &v84);

      *(v68 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v66, v67, "%{public}s: Final session removed", v68, 0xCu);
      sub_100007BAC(v69);
    }

    else
    {
    }

    (*(*v78 + 192))();
    sub_100E121AC();
    goto LABEL_42;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
      goto LABEL_19;
    }

    v24 = *(v15 + 8 * v25);
    ++v23;
    if (v24)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_44:
  swift_once();
LABEL_20:
  v33 = type metadata accessor for Logger();
  sub_1000076D4(v33, qword_10177C668);
  swift_retain_n();
  v34 = a2;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *v37 = 136446722;
    sub_1000BC4D4(a7, a8);
    sub_1000041A4(a9, a7, a8, &unk_101404F78);
    v39._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v39);

    v40._countAndFlagsBits = 8250;
    v40._object = 0xE200000000000000;
    String.append(_:)(v40);
    v41._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v41);

    v42._countAndFlagsBits = 62;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    v43 = sub_1000136BC(60, 0xE100000000000000, &v84);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2112;
    *(v37 + 14) = v34;
    *v38 = v34;
    *(v37 + 22) = 2080;
    v44 = v34;
    v45._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
    String.append(_:)(v45);

    v46._countAndFlagsBits = 8250;
    v46._object = 0xE200000000000000;
    String.append(_:)(v46);
    v47._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
    String.append(_:)(v47);

    v48._countAndFlagsBits = 62;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);

    v49 = sub_1000136BC(60, 0xE100000000000000, &v84);

    *(v37 + 24) = v49;
    _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s: Attempting to remove unknown connection: %@ from %s", v37, 0x20u);
    sub_100288C6C(v38);

    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100E1A638()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100E13DB4(v2, v3);
}

void sub_100E1A764(uint64_t a1, uint64_t a2)
{
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C0F0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "AccessoryDiscoveryService.start", v7, 2u);
  }

  v8 = [objc_opt_self() currentConnection];
  if (!v8)
  {
    type metadata accessor for SPAccessoryDiscoverySessionError(0);
    v18 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_101389998);
    _BridgedStoredNSError.init(_:userInfo:)();
    v15 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v15);

LABEL_11:
    return;
  }

  v9 = v8;
  v10 = *(a1 + 48);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  v12[2] = sub_100E1D4A8;
  v12[3] = v11;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101652508;
  v13 = _Block_copy(aBlock);

  v14 = v9;

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if ((v10 & 1) == 0)
  {
    if (*(a1 + 72))
    {

      sub_10062F678();
      sub_1006319E8();
      (*(a2 + 16))(a2, 0);

      return;
    }

    type metadata accessor for SPAccessoryDiscoverySessionError(0);
    v18 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_101389998);
    _BridgedStoredNSError.init(_:userInfo:)();
    v16 = aBlock[0];
    v15 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v15);

    goto LABEL_11;
  }

  __break(1u);
}

void sub_100E1AB1C(uint64_t a1, uint64_t a2)
{
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C0F0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "AccessoryDiscoveryService.stopAccessoryDiscovery", v7, 2u);
  }

  if (*(a1 + 72))
  {

    sub_10062EF30();
    (*(a2 + 16))(a2, 0);
  }

  else
  {
    type metadata accessor for SPAccessoryDiscoverySessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_101389998);
    _BridgedStoredNSError.init(_:userInfo:)();
    v8 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v8);
  }
}

void sub_100E1ACFC(uint64_t a1, uint64_t a2)
{
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C0F0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "AccessoryDiscoveryService.startLocalFindableAccessoryDiscovery", v7, 2u);
  }

  v8 = [objc_opt_self() currentConnection];
  if (!v8)
  {
    type metadata accessor for SPAccessoryDiscoverySessionError(0);
    v18 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_101389998);
    _BridgedStoredNSError.init(_:userInfo:)();
    v15 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v15);

LABEL_11:
    return;
  }

  v9 = v8;
  v10 = *(a1 + 48);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  v12[2] = sub_100E1D45C;
  v12[3] = v11;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101652328;
  v13 = _Block_copy(aBlock);

  v14 = v9;

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if ((v10 & 1) == 0)
  {
    if (*(a1 + 88))
    {

      sub_10022AE40();
      (*(a2 + 16))(a2, 0);

      return;
    }

    type metadata accessor for SPAccessoryDiscoverySessionError(0);
    v18 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_101389998);
    _BridgedStoredNSError.init(_:userInfo:)();
    v16 = aBlock[0];
    v15 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v15);

    goto LABEL_11;
  }

  __break(1u);
}

void sub_100E1B0B0(uint64_t a1, uint64_t a2)
{
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C0F0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "AccessoryDiscoveryService.stopLocalFindableAccessoryDiscovery", v7, 2u);
  }

  if (qword_101694EC8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v4, qword_10177C108);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "TRACE: stopLocalFindableAccessoryDiscovery() ", v10, 2u);
  }

  if (*(a1 + 88))
  {

    sub_10022D5E0();
    (*(a2 + 16))(a2, 0);
  }

  else
  {
    type metadata accessor for SPAccessoryDiscoverySessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_101389998);
    _BridgedStoredNSError.init(_:userInfo:)();
    v11 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v11);
  }
}

uint64_t sub_100E1B344(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C0F0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "AccessoryDiscoveryService.disableFindMyPairing", v11, 2u);
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  (*(v3 + 16))(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v3 + 32))(v14 + v13, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_100A838D4(0, 0, v7, &unk_1013EA750, v14);
}

void sub_100E1B5D0(void *a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  v9 = static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    v11 = v9;
    swift_once();
    v9 = v11;
  }

  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, qword_10177C410, "AccessoryDiscoveryService.finalizePairing", 41, 2, _swiftEmptyArrayStorage);
  if (*(a3 + 80))
  {

    sub_100A63FA0(a1, a2, sub_1001BC108, v8);
  }

  else
  {
    type metadata accessor for SPPairingSessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v10 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v10);
  }
}

void sub_100E1B7B8(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    v9 = v7;
    swift_once();
    v7 = v9;
  }

  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10177C410, "AccessoryDiscoveryService.invalidatePairing", 43, 2, _swiftEmptyArrayStorage);
  if (*(a2 + 80))
  {

    sub_100A65A00(a1, sub_10026AE30, v6);
  }

  else
  {
    type metadata accessor for SPPairingSessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v8 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v8);
  }
}

void sub_100E1B994(uint64_t a1, void (**a2)(void, void))
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  _Block_copy(a2);
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C0F0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "AccessoryDiscoveryService.startAccessoryProximityDiscovery", v7, 2u);
  }

  v8 = [objc_opt_self() currentConnection];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v9;
    v11[4] = sub_10026AE30;
    v11[5] = v3;

    v12 = v9;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  else
  {
    type metadata accessor for SPAccessoryDiscoverySessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_101389998);
    _BridgedStoredNSError.init(_:userInfo:)();
    v13 = _convertErrorToNSError(_:)();
    (a2)[2](a2, v13);
  }
}

uint64_t sub_100E1BC48(uint64_t a1, uint64_t a2)
{
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C0F0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "AccessoryDiscoveryService.stopAccessoryProximityDiscovery", v6, 2u);
  }

  swift_allocObject();
  swift_weakInit();

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v7 = *(a2 + 16);

  return v7(a2, 0);
}

void sub_100E1BDAC(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  _Block_copy(a3);
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177C0F0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = v6;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "AccessoryDiscoveryService.proximityPairing", v13, 2u);
    v6 = v23;
  }

  v14 = [objc_opt_self() currentConnection];
  if (v14)
  {
    v15 = v14;
    v16 = swift_allocObject();
    swift_weakInit();
    (*(v6 + 16))(v8, a1, v5);
    v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v15;
    (*(v6 + 32))(v18 + v17, v8, v5);
    v19 = (v18 + ((v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v19 = sub_10001E370;
    v19[1] = v9;

    v20 = v15;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  else
  {
    type metadata accessor for SPAccessoryDiscoverySessionError(0);
    v24 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000403C(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError, &unk_101389998);
    _BridgedStoredNSError.init(_:userInfo:)();
    v21 = v25;
    v20 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v20);
  }
}

uint64_t sub_100E1C160(void *a1)
{
  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C0F0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "shouldAccept: %@", v6, 0xCu);
    sub_100288C6C(v7);
  }

  sub_10047020C();
  v9 = NSXPCConnection.hasEntitlement<A>(_:)();
  if ((v9 & 1) == 0)
  {
    v10 = v3;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "Missing entitlement: %@", v13, 0xCu);
      sub_100288C6C(v14);
    }
  }

  return v9 & 1;
}

uint64_t sub_100E1C36C(uint64_t a1)
{
  v1[2] = a1;
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = type metadata accessor for LostModeAlertInfo(0);
  v1[11] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[12] = v4;
  *v4 = v1;
  v4[1] = sub_100E1C52C;

  return daemon.getter();
}

uint64_t sub_100E1C52C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 104) = a1;

  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalFindableLostModeDetectionService();
  v6 = sub_10000403C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000403C(&unk_1016BC560, type metadata accessor for LocalFindableLostModeDetectionService, &unk_1013F7ED8);
  *v3 = v9;
  v3[1] = sub_100E1C708;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E1C708(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_100E1CC60;
  }

  else
  {

    v4 = sub_100E1C824;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100E1C824()
{
  (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_100E1C8FC;
  v2 = v0[11];
  v3 = v0[9];

  return sub_1010164B8(v2, v3);
}

uint64_t sub_100E1C8FC()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100E1CE8C;
  }

  else
  {
    v5 = sub_100E1CA6C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100E1CA6C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[3];
  v4 = *(v1 + *(v2 + 20) + 8);
  v5 = *(v1 + *(v2 + 24) + 8);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v3, 1, 1, v6);
  if (v4)
  {
    v8 = String._bridgeToObjectiveC()();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (v5)
  {
LABEL_3:
    v5 = String._bridgeToObjectiveC()();
  }

LABEL_4:
  v9 = v0[3];
  if ((*(v7 + 48))(v9, 1, v6) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v9, v6);
  }

  v11 = v0[11];
  v12 = [objc_allocWithZone(SPLostModeInfo) initWithMessage:0 email:v8 phoneNumber:v5 timestamp:isa];

  sub_100E1D0B8(v11);

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_100E1CC60()
{
  v11 = v0;

  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C0F0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013717C0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s failed with lost mode related error %{public}@!", v4, 0x16u);
    sub_100288C6C(v5);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0);
}

uint64_t sub_100E1CE8C()
{
  v11 = v0;

  if (qword_101694EC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C0F0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013717C0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s failed with lost mode related error %{public}@!", v4, 0x16u);
    sub_100288C6C(v5);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0);
}

uint64_t sub_100E1D0B8(uint64_t a1)
{
  v2 = type metadata accessor for LostModeAlertInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100E1D114()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_100E15508(v4, v5, v0 + v3, v7, v8);
}

uint64_t sub_100E1D230()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014650;

  return sub_100E15234(v0);
}

uint64_t sub_100E1D2C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100E14AB4(v2, v3, v5, v4);
}

uint64_t sub_100E1D36C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100E145AC(a1, v6, v7, v1 + v5);
}

unint64_t sub_100E1D4C4()
{
  result = qword_1016BC588;
  if (!qword_1016BC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC588);
  }

  return result;
}

unint64_t sub_100E1D51C()
{
  result = qword_1016BC590;
  if (!qword_1016BC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC590);
  }

  return result;
}

uint64_t type metadata accessor for FetchEndpoint(uint64_t a1)
{
  result = qword_1016BC5F8;
  if (!qword_1016BC5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100E1D638()
{
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v0 = URLComponents.path.modify();
  v1._countAndFlagsBits = 0x68637465662FLL;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  return v0(&v3, 0);
}

uint64_t sub_100E1D73C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C120);
  sub_1000076D4(v0, qword_10177C120);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100E1D7BC()
{
  type metadata accessor for UserNotificationPublisher();
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyArrayStorage;
  qword_10177C138 = result;
  return result;
}

uint64_t sub_100E1D7F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, BOOL))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_101694ED8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177C120);
    sub_10001F280(a2, v28);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v9 = 136315394;
      sub_10001F280(v28, v26);
      sub_1000BC4D4(&qword_1016B1800, &unk_1013EA8F0);
      v10 = String.init<A>(describing:)();
      v12 = v11;
      sub_100007BAC(v28);
      v13 = sub_1000136BC(v10, v12, &v27);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v26[0] = a1;
      swift_errorRetain();
      sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
      v14 = String.init<A>(describing:)();
      v16 = sub_1000136BC(v14, v15, &v27);

      *(v9 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to post user notification for notification: %s due to error: %s", v9, 0x16u);
      swift_arrayDestroy();
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_101694ED8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177C120);
    sub_10001F280(a2, v28);
    v7 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      sub_10001F280(v28, v26);
      sub_1000BC4D4(&qword_1016B1800, &unk_1013EA8F0);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      sub_100007BAC(v28);
      v24 = sub_1000136BC(v21, v23, &v27);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v7, v18, "Successfuly posted user notification for notification: %s", v19, 0xCu);
      sub_100007BAC(v20);
LABEL_10:

      if (!a3)
      {
        return sub_100A1B234(a1, a1 != 0);
      }

      goto LABEL_13;
    }
  }

  sub_100007BAC(v28);
  if (a3)
  {
LABEL_13:
    a3(a1, a1 != 0);
  }

  return sub_100A1B234(a1, a1 != 0);
}

void sub_100E1DB8C(unint64_t a1, uint64_t a2, void *a3)
{
  v21[2] = a2;

  v5 = sub_10013DEC8(sub_100E2064C, v21, a1);
  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    isa = Array._bridgeToObjectiveC()().super.isa;

    [a3 removeDeliveredNotificationsWithIdentifiers:isa];

    return;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v22 = _swiftEmptyArrayStorage;
  sub_101123BB8(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v22;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v11 request];
      v13 = [v12 identifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v22 = v9;
      v18 = v9[2];
      v17 = v9[3];
      if (v18 >= v17 >> 1)
      {
        sub_101123BB8((v17 > 1), v18 + 1, 1);
        v9 = v22;
      }

      ++v8;
      v9[2] = v18 + 1;
      v19 = &v9[2 * v18];
      v19[4] = v14;
      v19[5] = v16;
    }

    while (v7 != v8);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_100E1DD84(id *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a1;
  v8 = [v33 request];
  v9 = [v8 identifier];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v14 = a2[3];
  v13 = a2[4];
  sub_1000035D0(a2, v14);
  (*(v13 + 16))(v14, v13);
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  if (v10 == v15 && v12 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v20 = 0;
    if ((v19 & 1) == 0)
    {
      return v20 & 1;
    }
  }

  v21 = [v33 request];
  v22 = [v21 content];

  v23 = [v22 categoryIdentifier];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = a2[3];
  v28 = a2[4];
  sub_1000035D0(a2, v27);
  v29 = (*(v28 + 8))(v27, v28);
  if (v24 == sub_100E1E03C(v29) && v26 == v30)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

uint64_t sub_100E1E03C(unsigned __int8 a1)
{
  v1 = a1 >> 5;
  if (v1 <= 2)
  {
    if (v1 <= 1)
    {
      return static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v2 = 0xD000000000000024;
    if (a1 != 66)
    {
      v2 = 0xD00000000000001BLL;
    }

    v3 = 0xD000000000000030;
    if (a1 == 64)
    {
      v3 = 0xD00000000000002BLL;
    }

    v4 = a1 <= 0x41u;
    goto LABEL_21;
  }

  if (v1 == 3)
  {
    v5 = 0xD00000000000003ELL;
    if (a1 == 96)
    {
      v5 = 0xD000000000000025;
    }

    if (a1 <= 0x61u)
    {
      return v5;
    }

    else
    {
      return 0xD00000000000003FLL;
    }
  }

  else
  {
    if (v1 == 4)
    {
      v2 = 0xD000000000000032;
      if (a1 != 130)
      {
        v2 = 0xD000000000000038;
      }

      v3 = 0xD000000000000033;
      if (a1 == 128)
      {
        v3 = 0xD00000000000002FLL;
      }

      v4 = a1 <= 0x81u;
LABEL_21:
      if (v4)
      {
        return v3;
      }

      else
      {
        return v2;
      }
    }

    v6 = 0xD000000000000036;
    if (a1 == 161)
    {
      v6 = 0xD000000000000040;
    }

    if (a1 == 160)
    {
      return 0xD00000000000003FLL;
    }

    else
    {
      return v6;
    }
  }
}

void sub_100E1E2A8(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_101694ED8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177C120);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "replaceContentForRequest failed: %@", v3, 0xCu);
      sub_100288C6C(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_100E1E448(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, BOOL))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_101694ED8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C120);
    sub_10001F280(a3, v33);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      *v10 = 136315394;
      sub_10001F280(v33, v32);
      sub_1000BC4D4(&qword_1016B1800, &unk_1013EA8F0);
      v11 = String.init<A>(describing:)();
      v13 = v12;
      sub_100007BAC(v33);
      v14 = sub_1000136BC(v11, v13, v30);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v32[0] = a1;
      swift_errorRetain();
      sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
      v15 = String.init<A>(describing:)();
      v17 = sub_1000136BC(v15, v16, v30);

      *(v10 + 14) = v17;
      v18 = "Failed to update notification for notification: %s due to error: %s";
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_101694ED8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177C120);
    sub_10001F280(a2, v33);
    sub_10001F280(a3, v32);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v10 = 136315394;
      sub_10001F280(v33, v30);
      sub_1000BC4D4(&qword_1016B1800, &unk_1013EA8F0);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      sub_100007BAC(v33);
      v24 = sub_1000136BC(v21, v23, &v31);

      *(v10 + 4) = v24;
      *(v10 + 12) = 2080;
      sub_10001F280(v32, v30);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      sub_100007BAC(v32);
      v28 = sub_1000136BC(v25, v27, &v31);

      *(v10 + 14) = v28;
      v18 = "Successfuly updated user notification %s with %s";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v8, v9, v18, v10, 0x16u);
      swift_arrayDestroy();

      if (!a4)
      {
        return sub_100A1B234(a1, a1 != 0);
      }

      goto LABEL_15;
    }

    sub_100007BAC(v32);
  }

  sub_100007BAC(v33);
  if (a4)
  {
LABEL_15:
    a4(a1, a1 != 0);
  }

  return sub_100A1B234(a1, a1 != 0);
}

uint64_t sub_100E1E838()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100E1E8A0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

BOOL sub_100E1E90C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1 >> 5;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      if (a1 > 0x61u)
      {
        if (a1 == 98)
        {
          if (a2 == 98)
          {
            return 1;
          }
        }

        else if (a2 == 99)
        {
          return 1;
        }
      }

      else if (a1 == 96)
      {
        if (a2 == 96)
        {
          return 1;
        }
      }

      else if (a2 == 97)
      {
        return 1;
      }
    }

    else if (v2 == 4)
    {
      if (a1 > 0x81u)
      {
        if (a1 == 130)
        {
          if (a2 == 130)
          {
            return 1;
          }
        }

        else if (a2 == 131)
        {
          return 1;
        }
      }

      else if (a1 == 128)
      {
        if (a2 == 128)
        {
          return 1;
        }
      }

      else if (a2 == 129)
      {
        return 1;
      }
    }

    else if (a1 == 160)
    {
      if (a2 == 160)
      {
        return 1;
      }
    }

    else if (a1 == 161)
    {
      if (a2 == 161)
      {
        return 1;
      }
    }

    else if (a2 == 162)
    {
      return 1;
    }
  }

  else if (a1 >> 5)
  {
    if (v2 == 1)
    {
      if ((a2 & 0xE0) == 0x20)
      {
        return ((a2 ^ a1) & 0x1F) == 0;
      }
    }

    else if (a1 > 0x41u)
    {
      if (a1 == 66)
      {
        if (a2 == 66)
        {
          return 1;
        }
      }

      else if (a2 == 67)
      {
        return 1;
      }
    }

    else if (a1 == 64)
    {
      if (a2 == 64)
      {
        return 1;
      }
    }

    else if (a2 == 65)
    {
      return 1;
    }
  }

  else if (a2 <= 0x1Fu)
  {
    return a1 == a2;
  }

  return 0;
}

id sub_100E1EABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v10 = *(a2 - 8);
  __chkstk_darwin(v7);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, a2);
  v13 = [objc_allocWithZone(UNMutableNotificationContent) init];
  (*(a3 + 96))(a2, a3);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v17 = 0;
  if ((*(v15 + 48))(v9, 1, v14) != 1)
  {
    URL._bridgeToObjectiveC()(v16);
    v17 = v18;
    (*(v15 + 8))(v9, v14);
  }

  [v13 setDefaultActionURL:v17];

  v19 = [objc_opt_self() defaultSound];
  [v13 setSound:v19];

  v20 = *(a3 + 8);
  v21 = v20(a2, a3);
  sub_100E1E03C(v21);
  v22 = String._bridgeToObjectiveC()();

  [v13 setCategoryIdentifier:v22];

  (*(a3 + 24))(a2, a3);
  v23 = String._bridgeToObjectiveC()();

  [v13 setTitle:v23];

  (*(a3 + 32))(a2, a3);
  v24 = String._bridgeToObjectiveC()();

  [v13 setBody:v24];

  if (v20(a2, a3) == 67)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  [v13 setInterruptionLevel:v25];
  v26 = (*(a3 + 40))(a2, a3);
  v27 = (*(a3 + 64))(a2, a3);
  v35 = &type metadata for Bool;
  LOBYTE(v34) = v27 & 1;
  sub_1001E6224(&v34, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v26;
  sub_100FFB368(v33, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v32);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v13 setUserInfo:isa];

  [v13 setShouldIgnoreDoNotDisturb:{(*(a3 + 48))(a2, a3) & 1}];
  [v13 setShouldUseRequestIdentifierForDismissalSync:{(*(a3 + 80))(a2, a3) & 1}];
  (*(v10 + 8))(v12, a2);
  return v13;
}

uint64_t sub_100E1EF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65[3] = a4;
  v65[4] = a5;
  v14 = sub_1000280DC(v65);
  (*(*(a4 - 8) + 16))(v14, a1, a4);
  if ((*(a5 + 72))(a4, a5))
  {
    v57 = a2;
    v58 = a3;
    (*(a5 + 88))(a4, a5);
    v15 = objc_allocWithZone(UNUserNotificationCenter);
    v16 = String._bridgeToObjectiveC()();

    v56 = [v15 initWithBundleIdentifier:v16];

    v17 = sub_100E1EABC(v14, a4, a5);
    if ((*(a5 + 56))(a4, a5))
    {
      v18 = 15;
    }

    else
    {
      v18 = 7;
    }

    v52 = *(a5 + 16);
    v52(a4, a5);
    UUID.uuidString.getter();
    v19 = *(v11 + 8);
    v54 = v10;
    v55 = v11 + 8;
    v53 = v19;
    v19(v13, v10);
    v20 = v17;
    v21 = String._bridgeToObjectiveC()();
    v22 = v20;

    v23 = [objc_opt_self() requestWithIdentifier:v21 content:v20 trigger:0 destinations:v18];

    if (((*(a5 + 64))(a4, a5) & 1) == 0)
    {
      if (qword_101694ED8 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_1000076D4(v24, qword_10177C120);
      sub_10001F280(v65, aBlock);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v51 = v23;
        v29 = v22;
        v30 = v28;
        *&v63[0] = v28;
        *v27 = 136315138;
        sub_1000035D0(aBlock, v60);
        v52(a4, a5);
        sub_1002FFBAC();
        v31 = v54;
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v33;
        v53(v13, v31);
        sub_100007BAC(aBlock);
        v35 = sub_1000136BC(v32, v34, v63);

        *(v27 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v25, v26, "Notification with identifier %s **WILL NOT** be forwarded to the companion", v27, 0xCu);
        sub_100007BAC(v30);
        v22 = v29;
        v23 = v51;
      }

      else
      {

        sub_100007BAC(aBlock);
      }
    }

    sub_10001F280(v65, v63);
    v45 = swift_allocObject();
    sub_100031694(v63, v45 + 16);
    v47 = v57;
    v46 = v58;
    *(v45 + 56) = v57;
    *(v45 + 64) = v46;
    v61 = sub_100358EC4;
    v62 = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10077732C;
    v60 = &unk_101652610;
    v48 = _Block_copy(aBlock);
    sub_100012908(v47, v46);

    v49 = v56;
    [v56 addNotificationRequest:v23 withCompletionHandler:v48];

    _Block_release(v48);
  }

  else
  {
    if (qword_101694ED8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177C120);
    sub_10001F280(v65, aBlock);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v64 = v40;
      *v39 = 136315138;
      sub_10001F280(aBlock, v63);
      sub_1000BC4D4(&qword_1016B1800, &unk_1013EA8F0);
      v41 = String.init<A>(describing:)();
      v43 = v42;
      sub_100007BAC(aBlock);
      v44 = sub_1000136BC(v41, v43, &v64);

      *(v39 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "Refusing to post disabled notification: %s", v39, 0xCu);
      sub_100007BAC(v40);
    }

    else
    {

      sub_100007BAC(aBlock);
    }
  }

  return sub_100007BAC(v65);
}

void sub_100E1F694(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v52[0] = _swiftEmptyArrayStorage;
    sub_101123BB8(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v5 = (a1 + 32);
    v6 = _swiftEmptyArrayStorage[2];
    v7 = 2 * v6;
    do
    {
      v8 = *v5++;
      v9 = v8 >= 2;
      if (v8 >= 2)
      {
        v10 = 0xD000000000000029;
      }

      else
      {
        v10 = 0xD000000000000010;
      }

      if (v9)
      {
        v11 = "sHandle8@NSError16";
      }

      else
      {
        v11 = "followingPlaySound&id=";
      }

      v52[0] = v3;
      v12 = v3[3];
      v13 = v6 + 1;
      if (v6 >= v12 >> 1)
      {
        sub_101123BB8((v12 > 1), v6 + 1, 1);
        v3 = v52[0];
      }

      v3[2] = v13;
      v14 = &v3[v7];
      v14[4] = v10;
      v14[5] = v11 | 0x8000000000000000;
      v7 += 2;
      v6 = v13;
      --v2;
    }

    while (v2);
  }

  v15 = sub_101129930(v3);

  v16 = 0;
  v48 = v15 + 56;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 56);
  v47 = (v17 + 63) >> 6;
  v20 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (!v19)
    {
      while (1)
      {
        v21 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v21 >= v47)
        {
          goto LABEL_50;
        }

        v19 = *(v48 + 8 * v21);
        ++v16;
        if (v19)
        {
          v16 = v21;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      return;
    }

LABEL_21:
    v22 = objc_allocWithZone(UNUserNotificationCenter);

    v23 = String._bridgeToObjectiveC()();

    v24 = [v22 initWithBundleIdentifier:v23];

    v25 = [v24 deliveredNotifications];
    sub_100889060();
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = v26 >> 62;
    v51 = v26;
    v28 = v26 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v20 >> 62;
    if (v20 >> 62)
    {
      break;
    }

    v30 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v30 + v28;
    if (__OFADD__(v30, v28))
    {
      goto LABEL_49;
    }

LABEL_25:
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v29)
      {
LABEL_30:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_31:
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v32 = v20 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_32;
    }

    if (v29)
    {
      goto LABEL_30;
    }

    v32 = v20 & 0xFFFFFFFFFFFFFF8;
    if (v31 > *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_31;
    }

LABEL_32:
    v50 = v20;
    v33 = *(v32 + 16);
    v34 = *(v32 + 24);
    if (v27)
    {
      v36 = v32;
      v37 = _CocoaArrayWrapper.endIndex.getter();
      v32 = v36;
      v35 = v37;
    }

    else
    {
      v35 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 &= v19 - 1;
    if (v35)
    {
      if (((v34 >> 1) - v33) < v28)
      {
        goto LABEL_53;
      }

      v38 = v32 + 8 * v33 + 32;
      v49 = v32;
      if (v27)
      {
        if (v35 < 1)
        {
          goto LABEL_55;
        }

        sub_100E1FD60();
        for (i = 0; i != v35; ++i)
        {
          sub_1000BC4D4(&qword_1016BC740, "n;\b");
          v40 = sub_100268264(v52, i, v51);
          v42 = *v41;
          (v40)(v52, 0);
          *(v38 + 8 * i) = v42;
        }
      }

      else
      {
        swift_arrayInitWithCopy();
      }

      v20 = v50;
      if (v28 > 0)
      {
        v43 = *(v49 + 16);
        v44 = __OFADD__(v43, v28);
        v45 = v43 + v28;
        if (v44)
        {
          goto LABEL_54;
        }

        *(v49 + 16) = v45;
      }
    }

    else
    {

      v20 = v50;
      if (v28 > 0)
      {
        goto LABEL_52;
      }
    }
  }

  v46 = _CocoaArrayWrapper.endIndex.getter();
  v31 = v46 + v28;
  if (!__OFADD__(v46, v28))
  {
    goto LABEL_25;
  }

LABEL_49:
  __break(1u);
LABEL_50:
}

uint64_t sub_100E1FB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 - 8);
  __chkstk_darwin(a1);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v10, v11);
  (*(a5 + 88))(a4, a5);
  v12 = objc_allocWithZone(UNUserNotificationCenter);
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 initWithBundleIdentifier:v13];

  v15 = sub_100E1EABC(v9, a4, a5);
  v16 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_100E1E2A8;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  aBlock[3] = &unk_1016525C0;
  v17 = _Block_copy(aBlock);
  [v14 replaceContentForRequestWithIdentifier:v16 replacementContent:v15 completionHandler:v17];
  _Block_release(v17);

  return (*(v7 + 8))(v9, a4);
}

unint64_t sub_100E1FD60()
{
  result = qword_1016BC748;
  if (!qword_1016BC748)
  {
    sub_1000BC580(&qword_1016BC740, "n;\b");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC748);
  }

  return result;
}

void *sub_100E1FDC4(char a1)
{
  LOBYTE(v1) = a1;
  v2 = objc_allocWithZone(UNUserNotificationCenter);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithBundleIdentifier:v3];

  v5 = [v4 deliveredNotifications];
  sub_100889060();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_72;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v38 = v4;
    v8 = 0;
    v9 = v1;
    v10 = v1 >> 5;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_71;
        }

        v11 = *(v6 + 8 * v8 + 32);
      }

      v12 = v11;
      v4 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = i;
      v14 = [v11 request];
      v15 = [v14 content];

      v16 = [v15 categoryIdentifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v27 = 0xD000000000000025;
          v28 = 0x8000000101371CA0;
          if (v9 == 98)
          {
            v28 = 0x8000000101371CE0;
          }

          if (v9 != 96)
          {
            v27 = 0xD00000000000003ELL;
          }

          v29 = 0x8000000101371D20;
          if (v9 == 96)
          {
            v29 = 0x8000000101371D60;
          }

          if (v9 <= 97)
          {
            v34 = v27;
          }

          else
          {
            v34 = 0xD00000000000003FLL;
          }

          if (v9 <= 97)
          {
            v36 = v29;
          }

          else
          {
            v36 = v28;
          }
        }

        else
        {
          v20 = 0xD00000000000002FLL;
          v21 = 0xD000000000000032;
          if (v9 != 130)
          {
            v21 = 0xD000000000000038;
          }

          v22 = 0x8000000101371BB0;
          if (v9 == 130)
          {
            v22 = 0x8000000101371BF0;
          }

          if (v9 != 128)
          {
            v20 = 0xD000000000000033;
          }

          v23 = 0x8000000101371C30;
          if (v9 == 128)
          {
            v23 = 0x8000000101371C70;
          }

          if (v9 <= 129)
          {
            v24 = v23;
          }

          else
          {
            v20 = v21;
            v24 = v22;
          }

          v25 = 0xD000000000000036;
          if (v9 == 161)
          {
            v25 = 0xD000000000000040;
          }

          v26 = 0x8000000101371AE0;
          if (v9 == 161)
          {
            v26 = 0x8000000101371B20;
          }

          if (v9 == 160)
          {
            v25 = 0xD00000000000003FLL;
            v26 = 0x8000000101371B70;
          }

          if (v10 == 4)
          {
            v34 = v20;
          }

          else
          {
            v34 = v25;
          }

          if (v10 == 4)
          {
            v36 = v24;
          }

          else
          {
            v36 = v26;
          }
        }
      }

      else if (v10 > 1)
      {
        v30 = 0xD00000000000002BLL;
        v31 = 0xD000000000000024;
        if (v9 != 66)
        {
          v31 = 0xD00000000000001BLL;
        }

        v32 = 0x8000000101371D90;
        if (v9 == 66)
        {
          v32 = 0x800000010134AA00;
        }

        if (v9 != 64)
        {
          v30 = 0xD000000000000030;
        }

        v33 = 0x8000000101371DB0;
        if (v9 == 64)
        {
          v33 = 0x8000000101371DF0;
        }

        if (v9 <= 65)
        {
          v34 = v30;
        }

        else
        {
          v34 = v31;
        }

        if (v9 <= 65)
        {
          v36 = v33;
        }

        else
        {
          v36 = v32;
        }
      }

      else
      {
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
      }

      if (v17 == v34 && v19 == v36)
      {
      }

      else
      {
        LOBYTE(v1) = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v1 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v1 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_6:
      i = v13;
      ++v8;
      if (v4 == v13)
      {
        v4 = v38;
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    ;
  }

LABEL_73:

  return _swiftEmptyArrayStorage;
}

void sub_100E2033C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  sub_1000035D0(a1, v10);
  (*(v11 + 88))(v10, v11);
  v12 = objc_allocWithZone(UNUserNotificationCenter);
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 initWithBundleIdentifier:v13];

  v15 = a2[3];
  v16 = a2[4];
  v17 = sub_1000035D0(a2, v15);
  v18 = sub_100E1EABC(v17, v15, v16);
  v20 = a1[3];
  v19 = a1[4];
  sub_1000035D0(a1, v20);
  (*(v19 + 16))(v20, v19);
  UUID.uuidString.getter();
  (*(v7 + 8))(v9, v6);
  v21 = String._bridgeToObjectiveC()();

  sub_10001F280(a1, v30);
  sub_10001F280(a2, v29);
  v22 = swift_allocObject();
  sub_100031694(v30, v22 + 16);
  sub_100031694(v29, v22 + 56);
  v24 = v26;
  v23 = v27;
  *(v22 + 96) = v26;
  *(v22 + 104) = v23;
  aBlock[4] = sub_100E2063C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  aBlock[3] = &unk_101652660;
  v25 = _Block_copy(aBlock);
  sub_100012908(v24, v23);

  [v14 replaceContentForRequestWithIdentifier:v21 replacementContent:v18 completionHandler:v25];
  _Block_release(v25);
}

uint64_t getEnumTagSinglePayload for UserNotificationCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3B)
  {
    goto LABEL_17;
  }

  if (a2 + 197 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 197) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 197;
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

      return (*a1 | (v4 << 8)) - 197;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 197;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFFC7 | (8 * ((*a1 >> 2) & 7))) ^ 0x3F;
  if (v6 >= 0x3A)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for UserNotificationCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 197 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 197) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3B)
  {
    v4 = 0;
  }

  if (a2 > 0x3A)
  {
    v5 = ((a2 - 59) >> 8) + 1;
    *result = a2 - 59;
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
    *result = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100E207C8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x3F)
  {
    return v1 >> 5;
  }

  else
  {
    return (v1 & 3 | (4 * (v1 >> 5))) - 6;
  }
}

_BYTE *sub_100E207F8(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (32 * a2);
  }

  else
  {
    *result = ((a2 - 2) & 3 | (32 * ((a2 - 2) >> 2))) + 64;
  }

  return result;
}

uint64_t sub_100E2083C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100E20860(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void *sub_100E208BC(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

unint64_t sub_100E20908()
{
  result = qword_1016BC750;
  if (!qword_1016BC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC750);
  }

  return result;
}

void sub_100E209B8(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_100E20A88(319);
    if (v2 <= 0x3F)
    {
      sub_100E20B00();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100E20A88(uint64_t a1)
{
  if (!qword_1016BC7C0)
  {
    type metadata accessor for CachedHistoricalLocation(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016BC7C0);
    }
  }
}

void sub_100E20B00()
{
  if (!qword_10169D5F0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10169D5F0);
    }
  }
}

unint64_t sub_100E20B90(uint64_t a1)
{
  result = sub_100E20BB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100E20BB8()
{
  result = qword_1016BC8A8;
  if (!qword_1016BC8A8)
  {
    type metadata accessor for CachedHistoricalLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC8A8);
  }

  return result;
}

uint64_t sub_100E20C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169BA28, &unk_1013EAA60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_100E20C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedHistoricalLocation(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000BC4D4(&qword_10169BA28, &unk_1013EAA60);
  __chkstk_darwin(v8 - 8);
  v10 = (&v25 - v9);
  v11 = sub_1000BC4D4(&qword_1016BC8B0, &qword_1013EAB38);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 40), *(a1 + 48), *(a2 + 40), *(a2 + 48)))
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v14 = type metadata accessor for BeaconPayload(0);
  if ((static Date.== infix(_:_:)() & 1) == 0 || *(a1 + v14[10]) != *(a2 + v14[10]))
  {
    return 0;
  }

  v15 = v14[11];
  v16 = *(v11 + 48);
  sub_100E20C10(a1 + v15, v13);
  sub_100E20C10(a2 + v15, &v13[v16]);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_10000B3A8(v13, &qword_10169BA28, &unk_1013EAA60);
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  sub_100E20C10(v13, v10);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    sub_100E2100C(v10);
LABEL_16:
    v21 = &qword_1016BC8B0;
    v22 = &qword_1013EAB38;
LABEL_23:
    sub_10000B3A8(v13, v21, v22);
    return 0;
  }

  sub_100E21068(&v13[v16], v7);
  if (*v10 != *v7 || v10[1] != v7[1] || v10[2] != v7[2])
  {
    sub_100E2100C(v7);
    sub_100E2100C(v10);
    v21 = &qword_10169BA28;
    v22 = &unk_1013EAA60;
    goto LABEL_23;
  }

  v23 = static Date.== infix(_:_:)();
  sub_100E2100C(v7);
  sub_100E2100C(v10);
  sub_10000B3A8(v13, &qword_10169BA28, &unk_1013EAA60);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v18 = v14[12];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 != 2)
  {
    return v20 != 2 && ((v20 ^ v19) & 1) == 0;
  }

  return v20 == 2;
}

uint64_t sub_100E2100C(uint64_t a1)
{
  v2 = type metadata accessor for CachedHistoricalLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100E21068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedHistoricalLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100E210CC(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for CachedHistoricalLocation(0);

  return static Date.== infix(_:_:)();
}

uint64_t sub_100E2114C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v8 = result + 40;
    do
    {
      v9 = *(v8 - 8);

      v9(a2, a3, a4);

      v8 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_100E211D4(uint64_t a1, uint64_t *a2)
{
  v53 = a2;
  v3 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v51 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v52 = &v49 - v8;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return result;
  }

  v10 = (a1 + 40);
  *&v7 = 141558275;
  v50 = v7;
  while (1)
  {
    v14 = *(v10 - 1);
    v13 = *v10;
    sub_100017D5C(v14, *v10);
    v15 = Data.subdata(in:)();
    v17 = v16;
    v57[0] = v15;
    v57[1] = v16;
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000076D4(v18, qword_10177C418);
      sub_100017D5C(v15, v17);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      sub_100016590(v15, v17);
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v58 = v9;
        v22 = v21;
        v23 = swift_slowAlloc();
        v56 = v13;
        v57[0] = v23;
        v24 = v23;
        *v22 = v50;
        *(v22 + 4) = 1752392040;
        *(v22 + 12) = 2081;
        v25 = Data.hexString.getter();
        v55 = v14;
        v27 = sub_1000136BC(v25, v26, v57);

        *(v22 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v19, v20, "Invalid serial number %{private,mask.hash}s", v22, 0x16u);
        sub_100007BAC(v24);

        v9 = v58;

        sub_100016590(v15, v17);

        v11 = v55;
        v12 = v56;
      }

      else
      {

        sub_100016590(v15, v17);
        v11 = v14;
        v12 = v13;
      }

      result = sub_100016590(v11, v12);
      goto LABEL_5;
    }

    v55 = v14;
    v56 = v13;
    v58 = v9;
    v28 = Data.trimmed.getter();
    v30 = v29;
    v31 = type metadata accessor for MACAddress();
    v32 = v52;
    (*(*(v31 - 8) + 56))(v52, 1, 1, v31);
    sub_1000D2AD8(v32, v54, &qword_1016A40D0, &unk_10138BE70);
    v33 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v33;
    v57[0] = v35;
    v37 = sub_100771E30(v28, v30);
    v38 = *(v35 + 16);
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      break;
    }

    v41 = v36;
    if (*(v35 + 24) >= v40)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v44 = v57[0];
        if ((v36 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_1010052E8();
        v44 = v57[0];
        if ((v41 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_100FE68E4(v40, isUniquelyReferenced_nonNull_native);
      v42 = sub_100771E30(v28, v30);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_26;
      }

      v37 = v42;
      v44 = v57[0];
      if ((v41 & 1) == 0)
      {
LABEL_15:
        v44[(v37 >> 6) + 8] |= 1 << v37;
        v45 = (v44[6] + 16 * v37);
        *v45 = v28;
        v45[1] = v30;
        sub_1000D2AD8(v54, v44[7] + *(v51 + 72) * v37, &qword_1016A40D0, &unk_10138BE70);
        v46 = v44[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_25;
        }

        v44[2] = v48;
        goto LABEL_20;
      }
    }

    sub_10002311C(v54, v44[7] + *(v51 + 72) * v37, &qword_1016A40D0, &unk_10138BE70);
    sub_100016590(v28, v30);
LABEL_20:
    *v53 = v44;
    sub_100016590(v15, v17);
    result = sub_100016590(v55, v56);
    v9 = v58;
LABEL_5:
    v10 += 2;
    if (!--v9)
    {
      return result;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E216A8(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 32);
    v6 = v3 - 1;
    do
    {
      v7 = v6;
      v8 = *v5++;
      v9 = v8;
      sub_100017D5C(v8, *(&v8 + 1));
      sub_100E60B78(&v9, a2);
      result = sub_100016590(v9, *(&v9 + 1));
      if (v2)
      {
        break;
      }

      v6 = v7 - 1;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_100E21730(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 32);
    v6 = v3 - 1;
    do
    {
      v7 = v6;
      v8 = *v5++;
      v9 = v8;
      sub_100017D5C(v8, *(&v8 + 1));
      sub_100E60864(&v9, a2);
      result = sub_100016590(v9, *(&v9 + 1));
      if (v2)
      {
        break;
      }

      v6 = v7 - 1;
    }

    while (v7);
  }

  return result;
}

void *sub_100E217B8(uint64_t a1)
{
  v44 = type metadata accessor for MACAddress();
  v3 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v35 = v1;
  v49 = _swiftEmptyArrayStorage;
  sub_101123BB8(0, v5, 0);
  v6 = v49;
  v7 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = 0;
  v41 = v3 + 16;
  v42 = v3;
  v39 = a1;
  v40 = v3 + 8;
  v36 = a1 + 64;
  v37 = v5;
  v38 = a1 + 56;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v13 = *(a1 + 36);
    v45 = v10;
    v46 = v13;
    v14 = v42;
    v15 = v6;
    v16 = v43;
    v17 = v44;
    (*(v42 + 16))(v43, *(a1 + 48) + *(v42 + 72) * v9, v44);
    v18 = MACAddress.dataRepresentation.getter();
    v20 = v19;
    v21 = Data.hexString.getter();
    v47 = v22;
    v48 = v21;
    sub_100016590(v18, v20);
    v23 = v16;
    v6 = v15;
    result = (*(v14 + 8))(v23, v17);
    v49 = v15;
    v25 = v15[2];
    v24 = v15[3];
    if (v25 >= v24 >> 1)
    {
      result = sub_101123BB8((v24 > 1), v25 + 1, 1);
      v6 = v49;
    }

    v6[2] = v25 + 1;
    v26 = &v6[2 * v25];
    v27 = v47;
    v26[4] = v48;
    v26[5] = v27;
    a1 = v39;
    v11 = 1 << *(v39 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v7 = v38;
    v28 = *(v38 + 8 * v12);
    if ((v28 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v46 != *(v39 + 36))
    {
      goto LABEL_24;
    }

    v29 = v28 & (-2 << (v9 & 0x3F));
    if (v29)
    {
      v11 = __clz(__rbit64(v29)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v12 << 6;
      v31 = v12 + 1;
      v32 = (v36 + 8 * v12);
      while (v31 < (v11 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_1000BB408(v9, v46, 0);
          v11 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_1000BB408(v9, v46, 0);
    }

LABEL_4:
    v10 = v45 + 1;
    v9 = v11;
    if (v45 + 1 == v37)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_100E21AD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v43 = _swiftEmptyArrayStorage;
  sub_1011244D8(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v4 = v3 + 64;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v33 = v3 + 72;
  v36 = v3 + 64;
  v37 = v3;
  v35 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_41;
    }

    v10 = *(*(v3 + 48) + 16 * v6);
    v38 = *(v3 + 36);
    v42 = v10;
    v11 = v10;
    v12 = *(&v10 + 1) >> 62;
    if ((*(&v10 + 1) >> 62) <= 1)
    {
      if (!v12)
      {
        v13 = BYTE14(v10);
        goto LABEL_19;
      }

      v14 = v10;
      if (__OFSUB__(DWORD1(v10), v10))
      {
        goto LABEL_47;
      }

      v13 = DWORD1(v10) - v10;
      goto LABEL_17;
    }

    if (v12 == 2)
    {
      v14 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      v13 = v15 - v16;
      if (__OFSUB__(v15, v16))
      {
        goto LABEL_48;
      }

LABEL_17:
      sub_100017D5C(v14, *(&v10 + 1));
      result = sub_100017D5C(v14, *(&v11 + 1));
      goto LABEL_19;
    }

    v13 = 0;
LABEL_19:
    v17 = 20 - v13;
    if (__OFSUB__(20, v13))
    {
      goto LABEL_42;
    }

    if (v17)
    {
      if (v17 <= 14)
      {
        if (v17 < 0)
        {
          goto LABEL_46;
        }

        v19 = 0;
        v20 = v34 & 0xF00000000000000 | ((20 - v13) << 48);
        v34 = v20;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v18 = __DataStorage.init(length:)();
        if (v17 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v19 = swift_allocObject();
          *(v19 + 16) = 0;
          *(v19 + 24) = v17;
          v20 = v18 | 0x8000000000000000;
        }

        else
        {
          v19 = v17 << 32;
          v20 = v18 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v19 = 0;
      v20 = 0xC000000000000000;
    }

    v40 = v19;
    v41 = v20;
    sub_100776394(&v40, 0);
    v22 = v40;
    v21 = v41;
    Data.append(_:)();
    sub_100016590(v22, v21);
    result = sub_100016590(v11, *(&v11 + 1));
    v23 = v42;
    v43 = v2;
    v25 = v2[2];
    v24 = v2[3];
    if (v25 >= v24 >> 1)
    {
      v39 = v42;
      result = sub_1011244D8((v24 > 1), v25 + 1, 1);
      v23 = v39;
      v2 = v43;
    }

    v2[2] = v25 + 1;
    *&v2[2 * v25 + 4] = v23;
    v4 = v36;
    v3 = v37;
    v8 = 1 << *(v37 + 32);
    if (v6 >= v8)
    {
      goto LABEL_43;
    }

    v26 = *(v36 + 8 * v9);
    if ((v26 & (1 << v6)) == 0)
    {
      goto LABEL_44;
    }

    if (v38 != *(v37 + 36))
    {
      goto LABEL_45;
    }

    v27 = v26 & (-2 << (v6 & 0x3F));
    if (v27)
    {
      v8 = __clz(__rbit64(v27)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v9 << 6;
      v29 = v9 + 1;
      v30 = (v33 + 8 * v9);
      while (v29 < (v8 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_1000BB408(v6, v38, 0);
          v8 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_1000BB408(v6, v38, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v35)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

Swift::Int sub_100E21E68(uint64_t *a1)
{
  v2 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B320AC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100E625F0(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100E21F34()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013EAFD0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100E21FBC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013EAFD0[v2]);
  return Hasher._finalize()();
}

uint64_t sub_100E22008@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100E66C50(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100E2204C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100E6B200();
  v5 = sub_1000C3258();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_100E220BC@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(result + 168) & 1) != 0 || (result = QueueSynchronizer.conditionalSync<A>(_:)(), (v5))
  {
    v3 = 1;
  }

  else
  {
    result = QueueSynchronizer.conditionalSync<A>(_:)();
    v3 = v4;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_100E2215C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 216))
  {

    OS_dispatch_queue.sync<A>(execute:)();

    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_100E221E0()
{
  v1 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v1 - 8);
  v3 = &v28 - v2;
  v4 = type metadata accessor for MACAddress();
  v30 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + 16);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v13 = [objc_opt_self() standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 objectForKey:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37[0] = v35;
  v37[1] = v36;
  if (!*(&v36 + 1))
  {
    sub_10000B3A8(v37, &unk_1016A0B10, &qword_10139BF40);
    return &_swiftEmptySetSingleton;
  }

  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return &_swiftEmptySetSingleton;
  }

  v16 = v34;
  v33 = *(v34 + 16);
  if (v33)
  {
    v17 = 0;
    v18 = (v30 + 56);
    v31 = (v30 + 32);
    v19 = (v34 + 40);
    v20 = _swiftEmptyArrayStorage;
    v29 = v4;
    while (v17 < *(v16 + 16))
    {
      v21 = *v19;
      *&v37[0] = *(v19 - 1);
      *(&v37[0] + 1) = v21;
      sub_1000DF96C();
      swift_bridgeObjectRetain_n();
      Data.init<A>(hexString:)();
      if (v22 >> 60 == 15)
      {

        (*v18)(v3, 1, 1, v4);
        result = sub_10000B3A8(v3, &qword_1016A40D0, &unk_10138BE70);
      }

      else
      {
        MACAddress.init(dataRepresentation:)();

        (*v18)(v3, 0, 1, v4);
        v23 = *v31;
        (*v31)(v32, v3, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100A5EBA8(0, v20[2] + 1, 1, v20);
        }

        v25 = v20[2];
        v24 = v20[3];
        if (v25 >= v24 >> 1)
        {
          v20 = sub_100A5EBA8((v24 > 1), v25 + 1, 1, v20);
        }

        v20[2] = v25 + 1;
        v26 = v20 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25;
        v4 = v29;
        result = (v23)(v26, v32, v29);
      }

      ++v17;
      v19 += 2;
      if (v33 == v17)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_21:

  v27 = sub_10112B8D8(v20);

  return v27;
}

void sub_100E226B8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = [objc_opt_self() standardUserDefaults];
    sub_100E217B8(a1);

    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = String._bridgeToObjectiveC()();
    [v9 setObject:isa forKey:v11];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100E22864()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 16);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  v8 = *(v2 + 8);
  v7 = v2 + 8;
  v8(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    swift_once();
    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C418);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v27[0] = v16;
      *v15 = 136446210;
      *&v25 = v4;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v17 = String.init<A>(describing:)();
      v19 = sub_1000136BC(v17, v18, v27);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to retrieve pairing tokens due to %{public}s", v15, 0xCu);
      sub_100007BAC(v16);
    }

    v21 = sub_10090B984(_swiftEmptyArrayStorage);

    goto LABEL_13;
  }

  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (!*(&v26 + 1))
  {
    sub_10000B3A8(v27, &unk_1016A0B10, &qword_10139BF40);
    return sub_10090B984(_swiftEmptyArrayStorage);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_10090B984(_swiftEmptyArrayStorage);
  }

  v1 = v23;
  v7 = v24;
  sub_100017D5C(v23, v24);
  type metadata accessor for MACAddress();
  sub_100E62554(&qword_1016A41D0, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  sub_100E62554(&qword_10169B550, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  sub_100E62554(&unk_1016BC080, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  sub_1000E307C();
  sub_1000E3190();
  v21 = Dictionary<>.init(dataRepresentation:)();
LABEL_13:
  sub_100016590(v1, v7);
  return v21;
}

void sub_100E22CD8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 16);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    type metadata accessor for MACAddress();
    sub_100E62554(&qword_1016A41D0, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    sub_100E62554(&qword_10169B550, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    sub_100E62554(&unk_1016BC080, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    sub_1000E307C();
    sub_1000E3190();
    v9 = Dictionary<>.dataRepresentation.getter();
    v11 = v10;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v9, v11);
    v13 = String._bridgeToObjectiveC()();
    [v8 setObject:isa forKey:v13];
  }

  else
  {
    __break(1u);
  }
}