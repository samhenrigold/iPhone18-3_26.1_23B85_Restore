uint64_t sub_1006A2C28(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Location();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10022C350(&qword_100CD11E0, &unk_100A76520);
  v7 = static _SetStorage.resize(original:capacity:move:)();
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
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10005E46C(&qword_100CA39F8, &type metadata accessor for Location, &protocol conformance descriptor for Location);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1006A2F40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10022C350(&qword_100CD1538, &qword_100A769A8);
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
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = static Hasher._hash(seed:_:)();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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
          goto LABEL_23;
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
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1006A312C(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for DetailChartCondition();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10022C350(&qword_100CD1250, &unk_100A765C0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
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
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10005E46C(&qword_100CA39D8, &type metadata accessor for DetailChartCondition, &protocol conformance descriptor for DetailChartCondition);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_1006A3444(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10022C350(&qword_100CD14C0, &qword_100A76928);
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
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v15);
        result = Hasher._finalize()();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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

Swift::Int sub_1006A3660(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10022C350(&qword_100CD14D0, &qword_100A76940);
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
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        Hasher.init(_seed:)();
        String.hash(into:)();

        result = Hasher._finalize()();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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

Swift::Int sub_1006A3918(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10022C350(&qword_100CD14C8, &qword_100A76938);
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
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        Hasher.init(_seed:)();
        String.hash(into:)();

        result = Hasher._finalize()();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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

uint64_t sub_1006A3BF4(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for LocationOfInterestType();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10022C350(&qword_100CD1400, &qword_100A76838);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1006A76B8(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10005E46C(&qword_100CA3590, &type metadata accessor for LocationOfInterestType, &protocol conformance descriptor for LocationOfInterestType);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A3F4C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10022C350(&qword_100CD1408, &qword_100A76840);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v6 + 16))
  {
LABEL_27:

    *v2 = v8;
    return result;
  }

  v31 = v1;
  v32 = v6;
  v9 = 0;
  v10 = (v6 + 56);
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
  v15 = result + 56;
  if (!v13)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      sub_1006A76B8(0, (v29 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(v6 + 48);
    v20 = *(v33 + 72);
    sub_100235F88(v19 + v20 * (v16 | (v9 << 6)), v5);
    Hasher.init(_seed:)();
    String.hash(into:)();
    type metadata accessor for LocationOfInterestType();
    sub_10005E46C(&qword_100CA3590, &type metadata accessor for LocationOfInterestType, &protocol conformance descriptor for LocationOfInterestType);
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v8 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_100235F88(v5, *(v8 + 48) + v24 * v20);
    ++*(v8 + 16);
    v6 = v32;
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v15 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A428C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10022C350(&qword_100CD12B0, &qword_100A76648);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1006A76B8(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
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
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
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

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A456C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10022C350(&qword_100CACD28, &qword_100A3C130);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1006A76B8(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A47C8(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Location();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10022C350(&qword_100CD11E0, &unk_100A76520);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1006A76B8(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10005E46C(&qword_100CA39F8, &type metadata accessor for Location, &protocol conformance descriptor for Location);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A4B20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10022C350(&qword_100CD1538, &qword_100A769A8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_1006A76B8(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = static Hasher._hash(seed:_:)();
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
    if (!v11)
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

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A4D44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10022C350(&qword_100CD1200, &qword_100A76548);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1006A76B8(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
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
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
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

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A51E4(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for DetailChartCondition();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10022C350(&qword_100CD1250, &unk_100A765C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1006A76B8(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10005E46C(&qword_100CA39D8, &type metadata accessor for DetailChartCondition, &protocol conformance descriptor for DetailChartCondition);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A553C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10022C350(&qword_100CD14C0, &qword_100A76928);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1006A76B8(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v16);
    result = Hasher._finalize()();
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
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
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

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A5788(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10022C350(&qword_100CD14D0, &qword_100A76940);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1006A76B8(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
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
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
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

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A5A70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10022C350(&qword_100CD14C8, &qword_100A76938);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1006A76B8(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
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
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
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

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A5D7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10022C350(&qword_100CD14F8, &qword_100A76968);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1006A76B8(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    Hasher.init(_seed:)();
    Namespace.ID.hash(into:)();
    result = Hasher._finalize()();
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
    if (!v10)
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

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1006A5FC8(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = type metadata accessor for LocationOfInterestType();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1006A3BF4(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1006A211C(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_10005E46C(&qword_100CA3590, &type metadata accessor for LocationOfInterestType, &protocol conformance descriptor for LocationOfInterestType);
      v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10005E46C(&qword_100CA35B0, &type metadata accessor for LocationOfInterestType, &protocol conformance descriptor for LocationOfInterestType);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1006A1E48();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_1006A6278(uint64_t *a1, unint64_t a2, char a3)
{
  v26 = a1;
  v6 = type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  v24 = v3;
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a3)
  {
    sub_1006A3F4C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1006A19B8();
      goto LABEL_17;
    }

    sub_1006A2434(v9 + 1);
  }

  v11 = *v3;
  Hasher.init(_seed:)();
  v12 = *v26;
  v13 = v26[1];
  String.hash(into:)();
  type metadata accessor for LocationOfInterestType();
  sub_10005E46C(&qword_100CA3590, &type metadata accessor for LocationOfInterestType, &protocol conformance descriptor for LocationOfInterestType);
  dispatch thunk of Hashable.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = -1 << *(v11 + 32);
  a2 = v14 & ~v15;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v25 + 72);
    do
    {
      sub_1006A9B9C(*(v11 + 48) + v17 * a2, v8);
      v18 = *v8 == v12 && v8[1] == v13;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static LocationOfInterestType.== infix(_:_:)())
      {
        goto LABEL_20;
      }

      sub_1006A9C00(v8);
      a2 = (a2 + 1) & v16;
    }

    while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_17:
  v19 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100235F88(v26, *(v19 + 48) + *(v25 + 72) * a2);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_20:
  sub_1006A9C00(v8);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1006A650C()
{
  sub_100071768();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = *(*v0 + 16);
  v9 = *(*v0 + 24);
  if (v9 > v8 && (v2 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (v2)
  {
    sub_1006A428C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1001AF060(&qword_100CD12B0, &qword_100A76648);
      goto LABEL_24;
    }

    sub_1006A2744(v8 + 1);
  }

  v10 = *v0;
  Hasher.init(_seed:)();
  sub_1002BB3AC();
  Hasher._finalize()();
  sub_100071DC8();
  v5 = v12 & ~v11;
  if ((*(v10 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v13 = ~v11;
    sub_1006A9D44();
    do
    {
      v14 = 0xEA00000000007974;
      v15 = v1;
      switch(*(*(v10 + 48) + v5))
      {
        case 1:
          v15 = 0x7469706963657270;
          v14 = 0xED00006E6F697461;
          break;
        case 2:
          v15 = 0x74617265706D6574;
          v14 = 0xEB00000000657275;
          break;
        case 3:
          v15 = sub_100008C94();
          break;
        default:
          break;
      }

      v16 = v1;
      v17 = 0xEA00000000007974;
      switch(v7)
      {
        case 1:
          v16 = 0x7469706963657270;
          v17 = 0xED00006E6F697461;
          break;
        case 2:
          v16 = 0x74617265706D6574;
          v17 = 0xEB00000000657275;
          break;
        case 3:
          v17 = 0xE400000000000000;
          v16 = 1684957559;
          break;
        default:
          break;
      }

      if (v15 == v16 && v14 == v17)
      {
        goto LABEL_27;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_28;
      }

      v5 = (v5 + 1) & v13;
    }

    while (((*(v10 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

LABEL_24:
  v20 = *v3;
  *(*v3 + 8 * (v5 >> 6) + 56) |= 1 << v5;
  *(*(v20 + 48) + v5) = v7;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    sub_100051A4C();
    return;
  }

  __break(1u);
LABEL_27:

LABEL_28:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1006A6794(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1006A456C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1006A29F4(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == a1 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_1006A1B60();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_1006A68FC(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = type metadata accessor for Location();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1006A47C8(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1006A2C28(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_10005E46C(&qword_100CA39F8, &type metadata accessor for Location, &protocol conformance descriptor for Location);
      v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10005E46C(&qword_100CA3A00, &type metadata accessor for Location, &protocol conformance descriptor for Location);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1006A1E48();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

unint64_t sub_1006A6BAC(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1006A4B20(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1006A2F40(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = static Hasher._hash(seed:_:)();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1006A1CB8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1006A6CB0(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = type metadata accessor for DetailChartCondition();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1006A51E4(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1006A312C(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_10005E46C(&qword_100CA39D8, &type metadata accessor for DetailChartCondition, &protocol conformance descriptor for DetailChartCondition);
      v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10005E46C(&qword_100CA39E0, &type metadata accessor for DetailChartCondition, &protocol conformance descriptor for DetailChartCondition);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1006A1E48();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

void sub_1006A6F60(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = a1;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1006A553C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1006A3444(v6 + 1);
LABEL_10:
      v12 = *v3;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v5);
      v13 = Hasher._finalize()();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1001AF060(&qword_100CD14C0, &qword_100A76928);
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1006A70A8(char a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_1006A5788(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1001AF060(&qword_100CD14D0, &qword_100A76940);
      goto LABEL_28;
    }

    sub_1006A3660(v7 + 1);
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  sub_100542CB0(a1);
  String.hash(into:)();

  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = 0xE800000000000000;
      v14 = 0x73776F626E696172;
      switch(*(*(v9 + 48) + a2))
      {
        case 1:
          v14 = 0x6E696E746867696CLL;
          v13 = 0xE900000000000067;
          break;
        case 2:
          v13 = 0xE400000000000000;
          v14 = 1818845544;
          break;
        case 3:
          v13 = 0xE500000000000000;
          v14 = 0x656B6F6D73;
          break;
        case 4:
          v13 = 0xE300000000000000;
          v14 = 6778726;
          break;
        case 5:
          v13 = 0xE400000000000000;
          v14 = 1702519144;
          break;
        default:
          break;
      }

      v15 = 0xE800000000000000;
      v16 = 0x73776F626E696172;
      switch(a1)
      {
        case 1:
          v16 = 0x6E696E746867696CLL;
          v15 = 0xE900000000000067;
          break;
        case 2:
          v15 = 0xE400000000000000;
          v16 = 1818845544;
          break;
        case 3:
          v15 = 0xE500000000000000;
          v16 = 0x656B6F6D73;
          break;
        case 4:
          v15 = 0xE300000000000000;
          v16 = 6778726;
          break;
        case 5:
          v15 = 0xE400000000000000;
          v16 = 1702519144;
          break;
        default:
          break;
      }

      if (v14 == v16 && v13 == v15)
      {
        goto LABEL_31;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_32;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_31:

LABEL_32:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1006A738C(char a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_34;
  }

  if (a3)
  {
    sub_1006A5A70(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1001AF060(&qword_100CD14C8, &qword_100A76938);
      goto LABEL_34;
    }

    sub_1006A3918(v7 + 1);
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  sub_100542D8C(a1);
  String.hash(into:)();

  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = 0xE800000000000000;
      v14 = 0x746E617361656C70;
      switch(*(*(v9 + 48) + a2))
      {
        case 1:
          v14 = 0x617361656C706E75;
          v13 = 0xEA0000000000746ELL;
          break;
        case 2:
          v13 = 0xE300000000000000;
          v14 = 7630696;
          break;
        case 3:
          v13 = 0xE600000000000000;
          v14 = 0x796C6C696863;
          break;
        case 4:
          v13 = 0xE500000000000000;
          v15 = 1734833517;
          goto LABEL_18;
        case 5:
          v13 = 0xE300000000000000;
          v14 = 7959140;
          break;
        case 6:
          v13 = 0xE500000000000000;
          v15 = 1684957559;
LABEL_18:
          v14 = v15 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 7:
          v13 = 0xE400000000000000;
          v14 = 1835819363;
          break;
        default:
          break;
      }

      v16 = 0xE800000000000000;
      v17 = 0x746E617361656C70;
      switch(a1)
      {
        case 1:
          v17 = 0x617361656C706E75;
          v16 = 0xEA0000000000746ELL;
          break;
        case 2:
          v16 = 0xE300000000000000;
          v17 = 7630696;
          break;
        case 3:
          v16 = 0xE600000000000000;
          v17 = 0x796C6C696863;
          break;
        case 4:
          v16 = 0xE500000000000000;
          v18 = 1734833517;
          goto LABEL_27;
        case 5:
          v16 = 0xE300000000000000;
          v17 = 7959140;
          break;
        case 6:
          v16 = 0xE500000000000000;
          v18 = 1684957559;
LABEL_27:
          v17 = v18 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
          break;
        case 7:
          v16 = 0xE400000000000000;
          v17 = 1835819363;
          break;
        default:
          break;
      }

      if (v14 == v17 && v13 == v16)
      {
        goto LABEL_37;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_38;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_34:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_37:

LABEL_38:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1006A76B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100A3BBB0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

char *sub_1006A792C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1006A8510(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1006A794C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1006A864C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1006A796C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1006A874C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1006A798C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1006A8888(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1006A7AB4()
{
  sub_1000523EC();
  sub_10003275C();
  *v0 = v1;
}

char *sub_1006A7BC4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1006A8B38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1006A7BE4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1006A8C4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1006A7C04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1006A8D4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1006A7F8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1006A8EC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1006A7FAC()
{
  sub_1000C8A28();
  sub_10003275C();
  *v0 = v1;
}

char *sub_1006A8124(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1006A9254(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1006A8234()
{
  sub_1000526EC();
  sub_10003275C();
  *v0 = v1;
}

char *sub_1006A827C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1006A9398(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1006A82F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1006A94AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1006A8314(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1006A95C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1006A8510(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD1540, &qword_100A769B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[80 * v8] <= v12)
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1006A864C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CAB980, &qword_100A3A800);
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

char *sub_1006A874C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD14E0, &qword_100A76950);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 32 * v8);
  }

  return v10;
}

char *sub_1006A8888(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD1558, &qword_100A769D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1006A899C()
{
  sub_1000210F4();
  if (v5)
  {
    sub_100014CB4();
    if (v6 != v7)
    {
      sub_100030000();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100037C7C();
  if (v2)
  {
    v8 = sub_10022C350(&qword_100CD1500, &qword_100A76970);
    v9 = sub_1006A9D78(v8);
    sub_1000D3F3C(v9);
    v9[2] = v3;
    v9[3] = 2 * (v10 / v4);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_1000B0EB8();
  if (v1)
  {
    if (v9 != v0 || v12 + 40 * v3 <= v11)
    {
      sub_1006A9D24();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1006A9D24();
    memcpy(v17, v18, v19);
  }
}

void sub_1006A8A70()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    sub_10022C350(&qword_100CACDE8, &unk_100A3C1A0);
    v7 = sub_1000BCEFC();
    sub_10000ECE0(v7);
    sub_10003C6F8(v8);
  }

  sub_1000B99E0();
  if (v1)
  {
    sub_1000926EC();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1006A8B38(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD12A8, &qword_100A76640);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[120 * v8] <= v12)
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1006A8C4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CAC430, &qword_100A76930);
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

char *sub_1006A8D4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD1230, &qword_100A76598);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[88 * v8] <= v12)
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1006A8EC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD14A8, &unk_100A76910);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_1006A9168()
{
  sub_10000CDC8();
  if (v3)
  {
    sub_100014CB4();
    if (v4 != v5)
    {
      sub_100030000();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100088474();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_1000BAF18(v6, v7, v8, v9, v10, v11);
    v15 = swift_allocObject();
    sub_1000D3F3C(v15);
    sub_100087E14(v16);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v15 != v0 || &v0[3 * v2 + 4] <= v15 + 4)
    {
      memmove(v15 + 4, v0 + 4, 24 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    v18 = sub_100021CEC();
    v20 = sub_10022C350(v18, v19);
    sub_1000C9040(v20);
  }
}

char *sub_1006A9254(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD1328, &qword_100A76728);
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

char *sub_1006A9398(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD1178, &qword_100A76250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1006A94AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1006A95C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD14D8, &qword_100A76948);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_1006A96B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a2;
  v4[10] = a4;
  v4[8] = a1;
  v4[5] = type metadata accessor for LocalSearchRequestManager();
  v4[6] = &off_100C6CB98;
  v4[2] = a3;

  return _swift_task_switch(sub_1006A9748, 0, 0);
}

uint64_t sub_1006A9748()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v0[11] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v4[5] = v0 + 2;
  v5 = swift_task_alloc();
  v0[12] = v5;
  v6 = sub_10022C350(&qword_100CD11B0, qword_100A76388);
  *v5 = v0;
  v5[1] = sub_1006A9864;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD000000000000012, 0x8000000100ADB320, sub_1006A9CC0, v4, v6);
}

uint64_t sub_1006A9864()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1006A9964()
{
  sub_100003B08();
  v1 = v0[7];
  sub_100006F14(v0 + 2);
  v2 = v0[1];

  return v2(v1);
}

unint64_t sub_1006A99EC()
{
  result = qword_100CD1190;
  if (!qword_100CD1190)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationSearchEntityQuery, &type metadata for LocationSearchEntityQuery, v0, v1);
    atomic_store(result, &qword_100CD1190);
  }

  return result;
}

unint64_t sub_1006A9A44()
{
  result = qword_100CD1198;
  if (!qword_100CD1198)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationSearchEntityQuery, &type metadata for LocationSearchEntityQuery, v0, v1);
    atomic_store(result, &qword_100CD1198);
  }

  return result;
}

unint64_t sub_1006A9AA0()
{
  result = qword_100CD11A0;
  if (!qword_100CD11A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationSearchEntityQuery, &type metadata for LocationSearchEntityQuery, v0, v1);
    atomic_store(result, &qword_100CD11A0);
  }

  return result;
}

unint64_t sub_1006A9AF8()
{
  result = qword_100CD11A8;
  if (!qword_100CD11A8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CD11B0, qword_100A76388);
    v4[0] = sub_10015E1DC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CD11A8);
  }

  return result;
}

uint64_t sub_1006A9B9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006A9C00(uint64_t a1)
{
  v2 = type metadata accessor for ListViewTipManager.LocationNameAndLocationOfInterestType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1006A9C5C()
{
  result = qword_100CD1428;
  if (!qword_100CD1428)
  {
    v3 = sub_10022E824(&qword_100CA2DA8, &unk_100A6BEF0);
    result = swift_getWitnessTable(&protocol conformance descriptor for EntityProperty<A>, v3, v0, v1);
    atomic_store(result, &qword_100CD1428);
  }

  return result;
}

uint64_t sub_1006A9CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1006A9D58()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1006A9D78(uint64_t a1)
{

  return swift_allocObject();
}

double sub_1006A9D98(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2520 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2530 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2528 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2518 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2510 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:

  return result;
}

void *sub_1006A9F04(char a1, char a2, uint64_t a3)
{
  v80 = type metadata accessor for TipPriorityQueue.GridEntry(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v77 = &v73 - v10;
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v73 - v13;
  v15 = type metadata accessor for LocationComponentViewModel(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  __chkstk_darwin(v21);
  sub_100013628();
  __chkstk_darwin(v22);
  v24 = &v73 - v23;
  __chkstk_darwin(v25);
  v27 = &v73 - v26;
  v28 = sub_10022C350(&qword_100CAC7F8, &qword_100A65EA0);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  v33 = &v73 - v32;
  __chkstk_darwin(v34);
  v36 = &v73 - v35;
  sub_1006A9D98(a1, a2);
  v38 = v37;
  v39 = OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v39, v14, &qword_100CA5008, &unk_100A2F7B0);
  v40 = type metadata accessor for LocationComponentContainerViewModel(0);
  if (sub_100024D10(v14, 1, v40) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008, &unk_100A2F7B0);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v41], v24, v42);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v24, v27, v43);
    sub_100566A5C(v38, v82);
    if ((v83 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v27, v33, v46);
      v44 = 0;
      v45 = v80;
      v47 = &v33[*(v80 + 20)];
      v48 = v82[1];
      *v47 = v82[0];
      *(v47 + 1) = v48;
      goto LABEL_7;
    }

    sub_1003169AC(v27, type metadata accessor for LocationComponentViewModel);
  }

  v44 = 1;
  v45 = v80;
LABEL_7:
  sub_10001B350(v33, v44, 1, v45);
  sub_1003168DC(v33, v36);
  sub_10031694C(a3 + *(v40 + 20) + OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
  sub_100566A40(v38, v84);
  sub_100924AFC(v3, v84, v81);
  sub_10031694C(*(a3 + 16) + *(v40 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v20, type metadata accessor for LocationComponentViewModel);
  sub_100566A94(v38, v85);
  v49 = v75;
  if (v86 & 1) != 0 || (sub_100011474(), v50 = v77, sub_1001B6FB0(v20, v77, v51), v52 = (v50 + *(v45 + 20)), v53 = v85[1], *v52 = v85[0], v52[1] = v53, sub_100035AD0(v36, v49, &qword_100CAC7F8, &qword_100A65EA0), sub_10001BD64(), v56 = v74, sub_10031694C(v54 + v55, v74, v57), sub_100566AB0(v38, v87), v58 = v78, (v88))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v56, v58, v59);
    v60 = (v58 + *(v45 + 20));
    v61 = v87[1];
    *v60 = v87[0];
    v60[1] = v61;
    sub_10001BD64();
    v64 = v76;
    sub_10031694C(v62 + v63, v76, v65);
    sub_100566AE8(v38, v89);
    if ((v90 & 1) == 0)
    {

      sub_100011474();
      v66 = v64;
      v67 = v79;
      sub_1001B6FB0(v66, v79, v68);
      v69 = (v67 + *(v45 + 20));
      v70 = v89[1];
      *v69 = v89[0];
      v69[1] = v70;
      v71 = sub_100924C14(v81, v50, v49, v58, v67);
      sub_1000180EC(v36, &qword_100CAC7F8, &qword_100A65EA0);
      return v71;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1006AA588(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v131 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008, &unk_100A2F7B0);
  v11 = sub_100024D10(v5, 1, v6);
  v135 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008, &unk_100A2F7B0);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    sub_10001361C(v16, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10000E904(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10000E904(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_airQuality);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v30 = sub_100013600();
    sub_100003E18(v30);
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_severeAlert);
    *(v12 + 128) = sub_1001B38A0(v30);
    *(v12 + 136) = v31;
    *(v12 + 144) = v32;
    v132 = v13 + 2 * v14;
    v133 = v14;
    v33 = v14;
    v34 = v15;
    v35 = swift_allocObject();
    v36 = sub_10001361C(v35, xmmword_100A2D320) + v13;
    v37 = a1;
    v38 = *(a1 + 16);
    v39 = v37;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v38 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v36[v33], v7);
    *(v12 + 152) = sub_1001B38A0(v35);
    *(v12 + 160) = v40;
    *(v12 + 168) = v41;
    v134 = v34;
    v42 = swift_allocObject();
    sub_1000056EC(v42);
    v44 = v43 + v13;
    v45 = *(v39 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v45 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, &v133[v44], v7);
    *(v12 + 176) = sub_1001B38A0(v35);
    *(v12 + 184) = v46;
    *(v12 + 192) = v47;
    v48 = swift_allocObject();
    sub_1000056EC(v48);
    v50 = v49 + v13;
    v51 = v135;
    v52 = *(v135 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v53 = v133;
    sub_10031694C(v52 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, &v133[v50], v7);
    *(v12 + 200) = sub_1001B38A0(v35);
    *(v12 + 208) = v54;
    *(v12 + 216) = v55;
    v56 = sub_10000C998();
    sub_1000056EC(v56);
    v58 = v57 + v13;
    v59 = *(v51 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v60 = v58 + v53;
    v61 = v53;
    sub_10031694C(v59 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v60, v7);
    *(v12 + 224) = sub_1001B38A0(v35);
    *(v12 + 232) = v62;
    *(v12 + 240) = v63;
    v64 = sub_10000C998();
    sub_100003E18(v64);
    v66 = v65 + v13;
    v67 = *(v51 + 16);
    sub_10031694C(v67 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v65 + v13, v7);
    sub_10031694C(v67 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v66 + v61, v7);
    *(v12 + 248) = sub_1001B38A0(v64);
    *(v12 + 256) = v68;
    *(v12 + 264) = v69;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3BCA0;
    v70 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v71 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v72 = *(v7 + 72);
    v73 = *(v7 + 80);
    v74 = v70;
    v75 = swift_allocObject();
    sub_10001361C(v75, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v76, v75 + v71, v77);
    *(v12 + 32) = sub_1001B38A0(v75);
    *(v12 + 40) = v78;
    *(v12 + 48) = v79;
    sub_1000167B0();
    v80 = swift_allocObject();
    sub_1000056EC(v80);
    sub_10002C5F4(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast);
    *(v12 + 56) = sub_1001B38A0(v75);
    *(v12 + 64) = v81;
    *(v12 + 72) = v82;
    sub_1000167B0();
    v83 = swift_allocObject();
    sub_1000056EC(v83);
    sub_10002C5F4(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast);
    *(v12 + 80) = sub_1001B38A0(v75);
    *(v12 + 88) = v84;
    *(v12 + 96) = v85;
    sub_1000167B0();
    v86 = swift_allocObject();
    sub_1000056EC(v86);
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_airQuality);
    *(v12 + 104) = sub_1001B38A0(v75);
    *(v12 + 112) = v87;
    *(v12 + 120) = v88;
    sub_1000167B0();
    v89 = swift_allocObject();
    sub_1000056EC(v89);
    sub_10031694C(v9, v90 + v71, v7);
    *(v12 + 128) = sub_1001B38A0(v75);
    *(v12 + 136) = v91;
    *(v12 + 144) = v92;
    v134 = v73;
    v93 = swift_allocObject();
    sub_1000056EC(v93);
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_severeAlert);
    *(v12 + 152) = sub_1001B38A0(v75);
    *(v12 + 160) = v94;
    *(v12 + 168) = v95;
    v96 = v71 + 2 * v72;
    v97 = v72;
    sub_1000167B0();
    v98 = swift_allocObject();
    v99 = sub_10001361C(v98, xmmword_100A2D320);
    v133 = v9;
    v100 = v99 + v71;
    v101 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v131[0] = v97;
    sub_10031694C(v101 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v100[v97], v7);
    *(v12 + 176) = sub_1001B38A0(v98);
    *(v12 + 184) = v102;
    *(v12 + 192) = v103;
    v131[1] = v96;
    v104 = swift_allocObject();
    sub_100003E18(v104);
    v106 = v105 + v71;
    v107 = v135;
    v108 = *(v135 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v108 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v106 + v97, v7);
    *(v12 + 200) = sub_1001B38A0(v104);
    *(v12 + 208) = v109;
    *(v12 + 216) = v110;
    sub_1000167B0();
    v132 = v74;
    v111 = swift_allocObject();
    sub_100003E18(v111);
    v113 = v112 + v71;
    v114 = *(v107 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v115 = v131[0];
    sub_10031694C(v114 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v113 + v131[0], v7);
    *(v12 + 224) = sub_1001B38A0(v111);
    *(v12 + 232) = v116;
    *(v12 + 240) = v117;
    sub_1000167B0();
    v118 = swift_allocObject();
    sub_100003E18(v118);
    v120 = v119 + v71;
    v121 = *(v107 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v121 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v120 + v115, v7);
    *(v12 + 248) = sub_1001B38A0(v118);
    *(v12 + 256) = v122;
    *(v12 + 264) = v123;
    v124 = swift_allocObject();
    sub_100003E18(v124);
    v126 = v125 + v71;
    v127 = *(v135 + 16);
    sub_10031694C(v127 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v125 + v71, v7);
    sub_10031694C(v127 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v126 + v115, v7);
    *(v12 + 272) = sub_1001B38A0(v124);
    *(v12 + 280) = v128;
    *(v12 + 288) = v129;
    sub_1003169AC(v133, v7);
  }

  return v12;
}

void sub_1006AAE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A3BC50;
  v22[0] = xmmword_100A2C3F0;
  v22[1] = xmmword_100A3BB90;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3AEB0;
  v20[0] = xmmword_100A3BBB0;
  v20[1] = xmmword_100A3BBC0;
  v26 = v21;
  v27 = v20;
  v19[0] = xmmword_100A3BB70;
  v19[1] = xmmword_100A2C3F0;
  v18[0] = xmmword_100A2C3F0;
  v18[1] = xmmword_100A3BBC0;
  v28 = v19;
  v29 = v18;
  v17[0] = xmmword_100A3BB70;
  v17[1] = xmmword_100A41B80;
  v16[0] = xmmword_100A3BBB0;
  v16[1] = xmmword_100A3BB90;
  v30 = v17;
  v31 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BBB0;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BBF0;
  v32 = v15;
  v33 = v14;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC00;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BC20;
  v34 = v13;
  v35 = v12;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC10;
  v36 = v11;
  v37 = &v10;
  sub_1000177F4(&v9, a2, a3, a4, a5, a6, a7, a8, 0, 1, 10, 11, 0, 1, 12, 13, 0, 1, 9, 10);
  qword_100D907E8 = v8;
}

void sub_1006AAF88()
{
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BC50;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BBC0;
  v16 = v15;
  v17 = v14;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3AEB0;
  v12[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BC10;
  v18 = v13;
  v19 = v12;
  v11[0] = xmmword_100A3BB70;
  v11[1] = xmmword_100A2C3F0;
  v10[0] = xmmword_100A2C3F0;
  v10[1] = xmmword_100A3BC10;
  v20 = v11;
  v21 = v10;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BBC0;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A3BBB0;
  v22 = v9;
  v23 = v8;
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC00;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC20;
  v24 = v7;
  v25 = v6;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BB80;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BC30;
  v26 = v5;
  v27 = v4;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BC30;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC00;
  v28 = v3;
  v29 = v2;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC20;
  v30 = v1;
  sub_100555FC0();
  qword_100D907F0 = v0;
}

void sub_1006AB0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[0] = 2;
  v24[1] = 4;
  v25 = xmmword_100A3BC40;
  v23[0] = xmmword_100A3BC40;
  v23[1] = xmmword_100A3BC30;
  v26 = v24;
  v27 = v23;
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BBA0;
  v21[0] = xmmword_100A3BBD0;
  v21[1] = xmmword_100A3BB80;
  v28 = v22;
  v29 = v21;
  v19[0] = 0;
  v19[1] = 4;
  v20 = xmmword_100A3BBD0;
  v18[0] = xmmword_100A3BBB0;
  v18[1] = xmmword_100A3BC30;
  v30 = v19;
  v31 = v18;
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BB70;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A3BB80;
  v32 = v17;
  v33 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BBB0;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BC30;
  v34 = v15;
  v35 = v14;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BB80;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A2C3F0;
  v36 = v13;
  v37 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC50;
  v38 = v11;
  v39 = &v10;
  sub_1000177F4(&v9, a2, a3, a4, a5, a6, a7, a8, 2, 4, 4, 5, 1, 2, 7, 8, 2, 3, 5, 6);
  qword_100D907F8 = v8;
}

void sub_1006AB1DC()
{
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BBD0;
  v16[0] = xmmword_100A3BC40;
  v16[1] = xmmword_100A3BB80;
  v18 = v17;
  v19 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3AEB0;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BC50;
  v20 = v15;
  v21 = v14;
  v11 = 0;
  v12 = xmmword_100A3BC70;
  v13 = 2;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BB80;
  v22 = &v11;
  v23 = v10;
  v9[0] = xmmword_100A3BB70;
  v9[1] = xmmword_100A3BC50;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A3BBB0;
  v24 = v9;
  v25 = v8;
  v7[0] = xmmword_100A3BBD0;
  v7[1] = xmmword_100A3BB80;
  v6[0] = xmmword_100A3BC40;
  v6[1] = xmmword_100A3BC50;
  v26 = v7;
  v27 = v6;
  v5[0] = xmmword_100A2D320;
  v5[1] = xmmword_100A3BBB0;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC60;
  v28 = v5;
  v29 = v4;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC60;
  v2[0] = xmmword_100A2C3F0;
  v2[1] = xmmword_100A3BB80;
  v30 = v3;
  v31 = v2;
  v1[0] = xmmword_100A2D320;
  v1[1] = xmmword_100A3BC40;
  v32 = v1;
  sub_100555FC0();
  qword_100D90800 = v0;
}

void sub_1006AB310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A2D320;
  v23[1] = xmmword_100A3BBD0;
  v22[0] = xmmword_100A3BC50;
  v22[1] = xmmword_100A3BC60;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3AEB0;
  v20[0] = xmmword_100A3BC60;
  v20[1] = xmmword_100A3BC40;
  v26 = v21;
  v27 = v20;
  v19[0] = xmmword_100A3BC80;
  v19[1] = xmmword_100A2C3F0;
  v18[0] = xmmword_100A3BC50;
  v18[1] = xmmword_100A3BC40;
  v28 = v19;
  v29 = v18;
  v17[0] = xmmword_100A3BC90;
  v17[1] = xmmword_100A3BB70;
  v16[0] = xmmword_100A3BBD0;
  v16[1] = xmmword_100A3BC60;
  v30 = v17;
  v31 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BBB0;
  v14[0] = xmmword_100A3BC60;
  v14[1] = xmmword_100A3BC60;
  v32 = v15;
  v33 = v14;
  v13[0] = xmmword_100A3BC50;
  v13[1] = xmmword_100A3BBD0;
  v12[0] = xmmword_100A2D320;
  v12[1] = xmmword_100A3BBB0;
  v34 = v13;
  v35 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC40;
  v36 = v11;
  v37 = &v10;
  sub_1000177F4(&v9, a2, a3, a4, a5, a6, a7, a8, 4, 5, 2, 3, 3, 4, 4, 5, 2, 3, 3, 4);
  qword_100D90808 = v8;
}

uint64_t sub_1006AB430(uint64_t a1, void (*a2)(char *))
{
  v38 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003848();
  v41 = v6;
  __chkstk_darwin(v7);
  sub_100003878();
  v40 = v8;
  __chkstk_darwin(v9);
  sub_100003878();
  v39 = v10;
  __chkstk_darwin(v11);
  sub_100013628();
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v18 = type metadata accessor for LocationViewComponent(0);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v36 - v27;

  sub_1005D71C4(v29, a2);
  v37 = v30;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather34LocationNhpMinorAlertConfiguration8_Storage_map, v21, type metadata accessor for LocationViewComponent);
  a2(v21);
  sub_100020648();
  sub_10001B350(v28, 0, 1, v38);
  sub_1000176E8(OBJC_IVAR____TtCV7Weather34LocationNhpMinorAlertConfiguration8_Storage_airQuality);
  a2(v21);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather34LocationNhpMinorAlertConfiguration8_Storage_nextHourPrecipitation);
  a2(v21);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather34LocationNhpMinorAlertConfiguration8_Storage_severeAlert);
  a2(v21);
  sub_100020648();
  sub_100035AD0(v28, v25, &qword_100CA5008, &unk_100A2F7B0);
  v31 = v39;
  sub_10031694C(v17, v39, type metadata accessor for LocationComponentContainerViewModel);
  v32 = v40;
  sub_10031694C(v14, v40, type metadata accessor for LocationComponentContainerViewModel);
  v33 = v41;
  sub_10031694C(v2, v41, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for NhpMinorAlertContent._Storage(0);
  swift_allocObject();
  v34 = sub_1002D2BB0(v37, v25, v31, v32, v33);
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v17, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v28, &qword_100CA5008, &unk_100A2F7B0);
  return v34;
}

BOOL sub_1006AB7D8(uint64_t a1, uint64_t a2)
{
  v90 = type metadata accessor for ContentStatusBanner(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v88 - v8;
  v10 = sub_10022C350(&qword_100CA50C0, &qword_100A2F2F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  v91 = &v88 - v12;
  type metadata accessor for ListLocationViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CC4158, &qword_100A5D730);
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v88 - v17;
  v19 = sub_10022C350(&qword_100CD1660, &qword_100A76AC8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v88 - v21;
  v23 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  if (*(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10) || !sub_1001AEF68(*(a1 + 11) | (*(a1 + 13) << 16), *(a2 + 11) | (*(a2 + 13) << 16)))
  {
    return 0;
  }

  v88 = v6;
  v89 = type metadata accessor for ListViewModel(0);
  v24 = v89[8];
  v25 = *(v19 + 48);
  sub_100035AD0(a1 + v24, v22, &qword_100CC4158, &qword_100A5D730);
  sub_100035AD0(a2 + v24, &v22[v25], &qword_100CC4158, &qword_100A5D730);
  sub_100003BDC(v22);
  if (v32)
  {
    sub_100003BDC(&v22[v25]);
    if (v32)
    {
      sub_1000180EC(v22, &qword_100CC4158, &qword_100A5D730);
      goto LABEL_21;
    }

LABEL_18:
    v33 = &qword_100CD1660;
    v34 = &qword_100A76AC8;
    v35 = v22;
LABEL_19:
    sub_1000180EC(v35, v33, v34);
    return 0;
  }

  sub_100035AD0(v22, v18, &qword_100CC4158, &qword_100A5D730);
  sub_100003BDC(&v22[v25]);
  if (v32)
  {
    sub_1006AC2CC(v18, type metadata accessor for ListLocationViewModel);
    goto LABEL_18;
  }

  sub_10003DF84(&v22[v25], v15, type metadata accessor for ListLocationViewModel);
  sub_1009AB434();
  v37 = v36;
  sub_1006AC2CC(v15, type metadata accessor for ListLocationViewModel);
  sub_1006AC2CC(v18, type metadata accessor for ListLocationViewModel);
  sub_1000180EC(v22, &qword_100CC4158, &qword_100A5D730);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v38 = v89;
  sub_1009EEBA8(*(a1 + v89[9]), *(a2 + v89[9]), v26, v27, v28, v29, v30, v31, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
  if ((v39 & 1) == 0)
  {
    return 0;
  }

  v40 = v38[10];
  v41 = *(a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  v44 = v41 == *v43 && v42 == v43[1];
  if (!v44 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1000085DC();
  if (v45)
  {
    if (!v46)
    {
      return 0;
    }

    v49 = *v47 == *v48 && v45 == v46;
    if (!v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v46)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v32)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v32)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v32)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v32)
  {
    return 0;
  }

  if ((sub_100187E68((a1 + v38[16]), (a2 + v38[16])) & 1) == 0)
  {
    return 0;
  }

  sub_1002DCB04();
  if ((v50 & 1) == 0)
  {
    return 0;
  }

  sub_100003CE8();
  if (!v32)
  {
    return 0;
  }

  sub_1000085DC();
  if (v53)
  {
    if (!v54)
    {
      return 0;
    }

    v57 = *v55 == *v56 && v53 == v54;
    if (!v57 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v54)
  {
    return 0;
  }

  v58 = v89[20];
  v59 = *(a2 + v58);
  v60 = LocationAuthorizationState.rawValue.getter(*(a1 + v58));
  v62 = v61;
  if (v60 == LocationAuthorizationState.rawValue.getter(v59) && v62 == v63)
  {
  }

  else
  {
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v65 & 1) == 0)
    {
      return 0;
    }
  }

  sub_100003CE8();
  if (!v32)
  {
    return 0;
  }

  v66 = v89[22];
  v67 = *(v10 + 48);
  v68 = v91;
  sub_100035AD0(a1 + v66, v91, &qword_100CA5010, &unk_100A2F250);
  sub_100035AD0(a2 + v66, v68 + v67, &qword_100CA5010, &unk_100A2F250);
  if (sub_100024D10(v68, 1, v90) == 1)
  {
    if (sub_100024D10(v91 + v67, 1, v90) == 1)
    {
      sub_1000180EC(v91, &qword_100CA5010, &unk_100A2F250);
      goto LABEL_74;
    }

    goto LABEL_72;
  }

  v69 = v91;
  sub_100035AD0(v91, v9, &qword_100CA5010, &unk_100A2F250);
  if (sub_100024D10(v69 + v67, 1, v90) == 1)
  {
    sub_1006AC2CC(v9, type metadata accessor for ContentStatusBanner);
LABEL_72:
    v33 = &qword_100CA50C0;
    v34 = &qword_100A2F2F0;
    v35 = v91;
    goto LABEL_19;
  }

  v70 = v91;
  v71 = v88;
  sub_10003DF84(v91 + v67, v88, type metadata accessor for ContentStatusBanner);
  v72 = sub_100133BA0(v9, v71);
  sub_1006AC2CC(v71, type metadata accessor for ContentStatusBanner);
  sub_1006AC2CC(v9, type metadata accessor for ContentStatusBanner);
  sub_1000180EC(v70, &qword_100CA5010, &unk_100A2F250);
  if (!v72)
  {
    return 0;
  }

LABEL_74:
  sub_100003CE8();
  if (!v32)
  {
    return 0;
  }

  v73 = v89[24];
  v74 = (a1 + v73);
  v75 = *(a1 + v73 + 4);
  v76 = *(a1 + v73 + 5);
  v77 = *(a1 + v73 + 6);
  v78 = *(a1 + v73 + 7);
  v79 = *(a1 + v73 + 16);
  v80 = (a2 + v73);
  v32 = (v75 & 1) == 0;
  v81 = &_mh_execute_header;
  if (v32)
  {
    v82 = 0;
  }

  else
  {
    v82 = &_mh_execute_header;
  }

  v32 = (v76 & 1) == 0;
  v83 = 0x10000000000;
  if (v32)
  {
    v84 = 0;
  }

  else
  {
    v84 = 0x10000000000;
  }

  v32 = (v78 & 1) == 0;
  v85 = 0x100000000000000;
  if (v32)
  {
    v86 = 0;
  }

  else
  {
    v86 = 0x100000000000000;
  }

  v87 = *v74 | (v77 << 48) | v82;
  if ((v80[1] & 1) == 0)
  {
    v81 = 0;
  }

  if ((*(v80 + 5) & 1) == 0)
  {
    v83 = 0;
  }

  if ((*(v80 + 7) & 1) == 0)
  {
    v85 = 0;
  }

  return sub_100410884(v87 | v84 | v86, *(v74 + 8), v79, *v80 | (*(v80 + 6) << 48) | v81 | v83 | v85, *(v80 + 8), *(v80 + 2));
}

uint64_t sub_1006ABF68@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3ECD0;
  sub_1000103C4();
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = v5;
  v6 = *(v1 + 8);
  *(v4 + 48) = *v1;
  *(v4 + 56) = v6;
  sub_1000103C4();
  *(v7 + 72) = v8;
  *(v7 + 80) = 0xD000000000000018;
  *(v7 + 88) = v9;
  *(v7 + 96) = *(v1 + 9);
  sub_1000103C4();
  v10[15] = &type metadata for Bool;
  v10[16] = 0xD00000000000001CLL;
  v10[17] = v11;
  if (*(v1 + 10))
  {
    if (*(v1 + 10) == 1)
    {
      v12 = 0xEE006465696E6544;
      v13 = 0x6E6F697461636F6CLL;
    }

    else
    {
      sub_1000103C4();
      v13 = 0xD000000000000013;
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    v13 = 0x6E6564646968;
  }

  *(inited + 144) = v13;
  *(inited + 152) = v12;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x6863726165537369;
  *(inited + 184) = 0xEB00000000676E69;
  v14 = type metadata accessor for ListViewModel(0);
  *(inited + 192) = *(v1 + v14[12]);
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0x72656767697274;
  *(inited + 232) = 0xE700000000000000;
  *(inited + 240) = *(v1 + v14[18]);
  *(inited + 264) = &type metadata for ListSessionTrigger;
  *(inited + 272) = 0x697469736E617274;
  *(inited + 280) = 0xEF6449676E696E6FLL;
  v15 = (v1 + v14[19]);
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  if (v16)
  {
    v18 = v16;
  }

  *(inited + 288) = v17;
  *(inited + 296) = v18;
  sub_1000103C4();
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0xD000000000000016;
  *(inited + 328) = v19;
  *(inited + 336) = *(v1 + v14[20]);
  *(inited + 360) = &type metadata for LocationAuthorizationState;
  *(inited + 368) = 0xD00000000000001FLL;
  *(inited + 376) = 0x8000000100ABDDA0;
  LOBYTE(v19) = *(v1 + v14[21]);
  *(inited + 408) = &type metadata for Bool;
  *(inited + 384) = v19;

  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CD1668, &unk_100A76AD0);
  a1[4] = sub_1006AC324();
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1006AC240(uint64_t a1)
{
  sub_1006AC388(&qword_100CD1678, aM_69);

  return ShortDescribable.description.getter();
}

uint64_t sub_1006AC2CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1006AC324()
{
  result = qword_100CD1670;
  if (!qword_100CD1670)
  {
    v3 = sub_10022E824(&qword_100CD1668, &unk_100A76AD0);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CD1670);
  }

  return result;
}

uint64_t sub_1006AC388(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for ListViewModel(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006AC3CC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    type metadata accessor for SavedLocation();
    return sub_1000BC9D0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1006AC48C(uint64_t a1, char *a2)
{
  v33 = a2;
  v2 = type metadata accessor for Location.Identifier();
  v32 = *(v2 - 8);
  __chkstk_darwin(v2);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CADD58, &unk_100A3E650);
  __chkstk_darwin(v4);
  v6 = &v30 - v5;
  v7 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  SavedLocation.location.getter();
  v19 = type metadata accessor for Location();
  if (sub_100024D10(v9, 1, v19) == 1)
  {
    sub_1000180EC(v9, &qword_100CA65D8, &unk_100A3D9D0);
    v20 = 1;
  }

  else
  {
    Location.identifier.getter();
    (*(*(v19 - 8) + 8))(v9, v19);
    v20 = 0;
  }

  sub_10001B350(v18, v20, 1, v2);
  Location.identifier.getter();
  sub_10001B350(v15, 0, 1, v2);
  v21 = *(v4 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v6, 1, v2) != 1)
  {
    v23 = v12;
    sub_100095588();
    if (sub_100024D10(&v6[v21], 1, v2) != 1)
    {
      v24 = v32;
      v25 = &v6[v21];
      v26 = v31;
      (*(v32 + 32))(v31, v25, v2);
      sub_1000E8FAC();
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = v23;
      v22 = v27;
      v28 = *(v24 + 8);
      v28(v26, v2);
      sub_1000180EC(v15, &qword_100CADBA0, &qword_100A3D250);
      sub_1000180EC(v18, &qword_100CADBA0, &qword_100A3D250);
      v28(v33, v2);
      sub_1000180EC(v6, &qword_100CADBA0, &qword_100A3D250);
      return v22 & 1;
    }

    sub_1000180EC(v15, &qword_100CADBA0, &qword_100A3D250);
    sub_1000180EC(v18, &qword_100CADBA0, &qword_100A3D250);
    (*(v32 + 8))(v12, v2);
    goto LABEL_9;
  }

  sub_1000180EC(v15, &qword_100CADBA0, &qword_100A3D250);
  sub_1000180EC(v18, &qword_100CADBA0, &qword_100A3D250);
  if (sub_100024D10(&v6[v21], 1, v2) != 1)
  {
LABEL_9:
    sub_1000180EC(v6, &qword_100CADD58, &unk_100A3E650);
    v22 = 0;
    return v22 & 1;
  }

  sub_1000180EC(v6, &qword_100CADBA0, &qword_100A3D250);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_1006AC954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedLocation();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006AC9B8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_10022E824(&qword_100CCC9D0, &unk_100A76B40);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006ACA4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v5 + 16);

  v7 = 0;
  v8 = 1;
LABEL_2:

  v10 = v5 + 40 + 16 * v7;
  while (1)
  {
    if (v6 == v7)
    {

      return v8;
    }

    if (v7 >= *(v5 + 16))
    {
      break;
    }

    ++v7;
    v11 = v10 + 16;
    v12 = *(v10 - 8);
    v14 = a1;

    v12(&v15, &v14, a2);

    v13 = v15;
    v10 = v11;
    if (v15 != 1)
    {
      if (v15)
      {
        sub_1006BA808(v8);

        a1 = v13;
        v8 = v13;
        goto LABEL_2;
      }

      sub_1006BA808(v8);

      return 0;
    }
  }

  __break(1u);
  return result;
}

void sub_1006ACB80()
{
  v0 = type metadata accessor for URL();
  sub_100007FD0();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = (v5 - v4);
  UnfairLock.lock()();
  v7 = objc_opt_self();
  v8 = [v7 defaultManager];
  sub_1006B9E6C(v6);
  URL.path.getter();
  v9 = *(v2 + 8);
  v9(v6, v0);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v8 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = [v7 defaultManager];
    sub_1006B9E6C(v6);
    URL._bridgeToObjectiveC()(v13);
    v14 = sub_100008CA4();
    v9(v14, v0);
    v37 = 0;
    v15 = [v12 removeItemAtURL:v6 error:&v37];

    if (v15)
    {
      v16 = qword_100CA26E0;
      v17 = v37;
      if (v16 != -1)
      {
        sub_100019C5C(&qword_100CA26E0);
      }

      v18 = type metadata accessor for Logger();
      sub_10000703C(v18, qword_100D90B08);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Removed state file", v21, 2u);
      }
    }

    else
    {
      v22 = v37;
      v23 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v37 = v23;
      sub_10022C350(&qword_100CD8220, &qword_100A4A330);
      sub_10000C70C(0, &qword_100CD19E0, NSError_ptr);
      swift_dynamicCast();
      if (qword_100CA26E0 != -1)
      {
        sub_100019C5C(&qword_100CA26E0);
      }

      v24 = type metadata accessor for Logger();
      sub_10000703C(v24, qword_100D90B08);
      v25 = v36;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v38 = v29;
        *v28 = 136446210;
        v30 = v25;
        v31 = [v30 description];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = sub_100078694(v32, v34, &v38);

        *(v28 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v26, v27, "Failed to delete state file with error: %{public}s", v28, 0xCu);
        sub_100006F14(v29);
      }

      else
      {
      }
    }
  }

  UnfairLock.unlock()();
}

uint64_t sub_1006ACFEC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000668DC();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = *(Strong + 80);

    v12 = swift_allocObject();
    v22 = v7;
    v13 = v12;
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v10;
    v20 = v13;
    aBlock[4] = sub_1006BA728;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000742F0;
    aBlock[3] = &unk_100C66610;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v23 = _swiftEmptyArrayStorage;
    sub_10006CD24(&qword_100CD81C0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
    v19 = v6;
    sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = v21;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v3 + 8))(v5, v2);
    (*(v22 + 8))(v9, v19);
  }
}

void *sub_1006AD384(uint64_t a1, uint64_t a2)
{
  v3 = sub_10022C350(&qword_100CD1998, &qword_100A76D68);
  __chkstk_darwin(v3);
  v5 = &v26[-v4];
  v6 = sub_10022C350(&qword_100CD19D0, &unk_100AA4CD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26[-v7];
  v9 = sub_10022C350(&qword_100CD19D8, &qword_100A76DD8);
  __chkstk_darwin(v9 - 8);
  v11 = &v26[-v10];
  v12 = type metadata accessor for MainStateProcessingContext(0);
  __chkstk_darwin(v12);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = result[5];

    v17(v18);

    sub_100050E14(v14, v11);
    sub_10001B350(v11, 0, 1, v12);
    v19 = sub_1006ACA4C(a2, v11);
    sub_1000180EC(v11, &qword_100CD19D8, &qword_100A76DD8);
    if (v19 == 1)
    {
      v21 = v16[8];
      v5[1] = v16[9];
      v5[2] = a2;
      *v5 = v21;
      sub_1006BA734(v14, v5 + *(v3 + 72));
      sub_1006BA798(v5, v8);
      sub_10001B350(v8, 0, 1, v3);
      v22 = *(*v16 + 184);
      swift_beginAccess();

      v23 = v16 + v22;
    }

    else
    {
      if (!v19)
      {
        sub_10001B350(v8, 1, 1, v3);
        v20 = *(*v16 + 184);
        swift_beginAccess();
        sub_100035B94(v8, v16 + v20, &qword_100CD19D0, &unk_100AA4CD0);
        swift_endAccess();
        sub_1006ACB80();
        sub_10004FA40(v14, type metadata accessor for MainStateProcessingContext);
      }

      v24 = v16[8];
      v5[1] = v16[9];
      v5[2] = v19;
      *v5 = v24;
      sub_1006BA734(v14, v5 + *(v3 + 72));
      sub_1006BA798(v5, v8);
      sub_10001B350(v8, 0, 1, v3);
      v25 = *(*v16 + 184);
      swift_beginAccess();

      v23 = v16 + v25;
    }

    sub_100035B94(v8, v23, &qword_100CD19D0, &unk_100AA4CD0);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1006AD764@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2248 != -1)
  {
    swift_once();
  }

  v2 = SettingReader.isEnabled(_:with:)();

  *(a1 + 24) = &type metadata for AutomationInfoSetting;
  *(a1 + 32) = &off_100C6A9C0;
  *a1 = v2 & 1;
  return result;
}

uint64_t sub_1006AD808@<X0>(_BYTE *a2@<X8>)
{
  type metadata accessor for Capabilities();
  result = static Capabilities.isInternalBuild()();
  if (result)
  {
    if (qword_100CA21C8 != -1)
    {
      swift_once();
    }

    sub_10006CD24(&qword_100CD19E8, v4, type metadata accessor for MainAssembly, byte_100A76B70);
    return Configurable.setting<A>(_:)();
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void *sub_1006AD8FC(uint64_t a1, void *a2)
{
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CD1830, &qword_100A76C28);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  sub_1000403F4(a1);
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CD18F8, &qword_100A76CF0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v5 = result;

  sub_1000446E4(0, sub_1006BA688, v5, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for NotificationsStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = result;

  sub_1000446E4(0, sub_1006BA68C, v6, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for NotificationsOptInStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v7 = result;

  sub_1000446E4(0, sub_1006BA690, v7, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for SavedLocationsStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = result;

  sub_1000446E4(0, sub_1006BA694, v8, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for ReverseGeocodingStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = result;

  sub_1000446E4(0, sub_1006BA698, v9, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for WeatherDataStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v10 = result;

  sub_1000446E4(0, sub_1006BA69C, v10, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for WeatherMapOverlayDataStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v11 = result;

  sub_1000446E4(0, sub_1006BA6A0, v11, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for WidgetReloadStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = result;

  sub_1000446E4(0, sub_1006BA6A4, v12, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for LocationViewerStoreObserver(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = result;

  sub_1000446E4(0, sub_1006BA6A8, v13, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for OpenL2HandlerObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v14 = result;

  sub_1000446E4(0, sub_1006BA6AC, v14, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for InteractionDonationStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v15 = result;

  sub_1000446E4(0, sub_1006BA6B0, v15, v35);

  sub_100006F14(v35);
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CCC310, &qword_100A6BCF8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v34)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_100013188(&v33, v35);
  sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  sub_100035B30(v35, &v33);
  v17 = swift_allocObject();
  sub_100013188(&v33, v17 + 16);
  sub_1000446E4(v16, sub_1006BA6B4, v17, &v33);

  sub_100006F14(&v33);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for WeatherConditionBackgroundStoreObserver(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v18 = result;
  v19 = static OS_dispatch_queue.main.getter();

  sub_1000446E4(v19, sub_1006BA6BC, v18, &v33);

  sub_100006F14(&v33);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for TimeStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v20 = result;
  v21 = static OS_dispatch_queue.main.getter();

  sub_1000446E4(v21, sub_1006BA6C0, v20, &v33);

  sub_100006F14(&v33);
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CBE1D0, &qword_100A558A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v32)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  sub_100013188(&v31, &v33);
  v22 = static OS_dispatch_queue.main.getter();
  sub_100035B30(&v33, &v31);
  v23 = swift_allocObject();
  sub_100013188(&v31, v23 + 16);
  sub_1000446E4(v22, sub_1006BA6C4, v23, &v31);

  sub_100006F14(&v31);
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CD17F0, &qword_100A76BF0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v30)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_100013188(&v29, &v31);
  v24 = static OS_dispatch_queue.main.getter();
  sub_100035B30(&v31, &v29);
  v25 = swift_allocObject();
  sub_100013188(&v29, v25 + 16);
  sub_1000446E4(v24, sub_1006BA6CC, v25, &v29);

  sub_100006F14(&v29);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Daemon.enablePushLocationViewLoadData.getter();
  SettingReader.read<A>(_:)();

  if (v29 != 1)
  {
    goto LABEL_21;
  }

  sub_1000161C0(a2, a2[3]);
  type metadata accessor for VisibleLocationWeatherLoadStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v26 = result;
    v27 = static OS_dispatch_queue.main.getter();

    sub_1000446E4(v27, sub_1006BA6DC, v26, &v29);

    sub_100006F14(&v29);
LABEL_21:
    sub_1000161C0(a2, a2[3]);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v29 != 3)
    {
      if (!v29)
      {

        goto LABEL_26;
      }

      sub_1000161C0(a2, a2[3]);
      type metadata accessor for DiagnosticManager();
      result = dispatch thunk of ResolverType.resolve<A>(_:)();
      if (result)
      {
        v28 = result;

        sub_1000446E4(0, sub_1006BA6D4, v28, &v29);

        sub_100006F14(&v29);
LABEL_26:
        sub_100006F14(&v31);
        sub_100006F14(&v33);
        return sub_100006F14(v35);
      }

      goto LABEL_45;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006AE4D8(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  sub_1000161C0(a2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

void sub_1006AE570(uint64_t a1, void *a2)
{
  v3 = *sub_1000161C0(a2, a2[3]);

  sub_100054CC8(a1, v3);
}

uint64_t sub_1006AE5E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherDataUpdater();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a2[3] = &type metadata for LoadStatisticsOnDemandStoreObserver;
    a2[4] = &off_100C52CE0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1006AE650@<X0>(void *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>))@<X0>(uint64_t *a1@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBF860, &unk_100A61BF0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    *a2 = sub_100066888;
    a2[1] = result;
    a2[2] = sub_10009E87C;
    a2[3] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1006AE6EC@<X0>(void *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>))(uint64_t a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD17F8, &qword_100A76BF8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    *a2 = sub_10006D5AC;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1006AE764(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for ReverseGeocodingStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = result[17];
  result[17] = v4;
  result[18] = v3;
  swift_retain_n();
  sub_10002B028(v6);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for NotificationsOptInStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result[2];
  result[2] = v4;
  result[3] = v3;

  sub_10002B028(v7);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for SavedLocationsStoreObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = result;

  v9 = v8[2];
  v8[2] = v4;
  v8[3] = v3;
  sub_10002B028(v9);
}

uint64_t sub_1006AE8B4(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBF860, &unk_100A61BF0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v2 = result;
    sub_10022C350(&qword_100CD17F8, &qword_100A76BF8);
    result = swift_allocObject();
    *(result + 16) = v2;
    *(result + 24) = _swiftEmptyArrayStorage;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1006AE944(uint64_t a1, void *a2)
{
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for WeatherDataDebounceMiddleware(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_10006A9AC(sub_10004F458, result);

  sub_1000161C0(a2, a2[3]);
  type metadata accessor for ShortcutItemMiddleware();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10006A9AC(sub_10005037C, result);

  sub_1000161C0(a2, a2[3]);
  type metadata accessor for UnitManagerMiddleware();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10006A9AC(sub_10006DAC0, result);

  sub_1000161C0(a2, a2[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v4 != 2 && (v4 & 1) != 0)
  {
    sub_1000161C0(a2, a2[3]);
    type metadata accessor for DemoPresetMiddleware();
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      sub_10006A9AC(sub_1006BA680, result);
    }

LABEL_12:
    __break(1u);
  }

  return result;
}

void *sub_1006AEB58(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&unk_100CAF460, &unk_100A3EDC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1858, &qword_100A76C50);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v5 != 2)
  {
    sub_10022C350(&qword_100CD1800, &unk_100AA4CE0);
    result = swift_allocObject();
    result[2] = v3;
    result[3] = v4;
    *(result + 32) = v5 & 1;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1006AECBC()
{
  sub_10022C350(&unk_100CAF460, &unk_100A3EDC0);
  swift_allocObject();
  return sub_10002AE6C(0, 0, 0, 0);
}

double *sub_1006AED30@<X0>(void *a1@<X0>, double **a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v6)
    {
      v5 = type metadata accessor for RemotelyConfiguredSlowLocationLoadingMonitor();
      swift_allocObject();
      result = sub_100047BE0(v8, v9, v10, v11, v6, v7);
      a2[3] = v5;
      a2[4] = &off_100C739E8;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1006AEE60(void *a1)
{
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v8 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v88 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v11 - 8);
  v93 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v87 = v126;
  if (!v126)
  {
    __break(1u);
    goto LABEL_17;
  }

  v85 = v129;
  v86 = v6;
  v83 = v127;
  v84 = v128;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v82 = v124;
  if (!v124)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v91 = v3;
  v81 = v125;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherService();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v80 = result;
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96D0, &unk_100A67970);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v123[3])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60, &unk_100A6B640);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v122[3])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18D8, &qword_100A76CD0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v121)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD19B0, &qword_100A76D70);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v119)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1290, &qword_100A76620);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v117[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1818, &qword_100A76C10);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v116[3])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v15 = v115;
  if (v115 == 2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1810, &qword_100A76C08);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v114)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96E0, &unk_100A67980);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v112[3])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v76 = v15;
  v77 = v14;
  v78 = v8;
  v79 = v5;
  v94 = v2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1880, &qword_100A41E90);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v111)
  {
    v16 = sub_10002D7F8(v120, v121);
    v75[10] = v75;
    v17 = __chkstk_darwin(v16);
    v19 = (v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = sub_10002D7F8(v118, v119);
    v75[9] = v75;
    v22 = __chkstk_darwin(v21);
    v24 = (v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24, v22);
    v26 = sub_10002D7F8(v113, v114);
    v75[8] = v75;
    v27 = __chkstk_darwin(v26);
    v29 = (v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29, v27);
    v31 = sub_10002D7F8(v110, v111);
    v75[7] = v75;
    v32 = __chkstk_darwin(v31);
    v34 = (v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34, v32);
    v36 = *v19;
    v37 = *v24;
    v38 = *v29;
    v39 = *v34;
    v40 = type metadata accessor for WeatherDataPreprocessor();
    v109[4] = &off_100C6A0D0;
    v109[3] = v40;
    v109[0] = v36;
    v92 = type metadata accessor for NewsDataManager();
    v108 = &off_100C76D50;
    v107 = v92;
    v106[0] = v37;
    v41 = type metadata accessor for RemotelyConfiguredSlowLocationLoadingMonitor();
    v104 = v41;
    v105 = &off_100C739E8;
    v103[0] = v38;
    v42 = type metadata accessor for DailyForecastFilter();
    v101 = v42;
    v102 = &off_100C4AB20;
    v100[0] = v39;
    type metadata accessor for WeatherDataUpdater();
    v43 = swift_allocObject();
    v44 = sub_10002D7F8(v109, v40);
    v75[6] = v75;
    v45 = __chkstk_darwin(v44);
    v47 = (v75 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v48 + 16))(v47, v45);
    v49 = sub_10002D7F8(v106, v107);
    v75[5] = v75;
    v50 = __chkstk_darwin(v49);
    v52 = (v75 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v53 + 16))(v52, v50);
    v54 = sub_10002D7F8(v103, v104);
    v75[4] = v75;
    v55 = __chkstk_darwin(v54);
    v57 = (v75 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v58 + 16))(v57, v55);
    v59 = sub_10002D7F8(v100, v101);
    v75[3] = v75;
    v60 = __chkstk_darwin(v59);
    v62 = (v75 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v63 + 16))(v62, v60);
    v64 = *v47;
    v65 = *v52;
    v66 = *v57;
    v67 = *v62;
    v99[3] = v40;
    v99[4] = &off_100C6A0D0;
    v99[0] = v64;
    v98[4] = &off_100C76D50;
    v98[3] = v92;
    v98[0] = v65;
    v97[3] = v41;
    v97[4] = &off_100C739E8;
    v97[0] = v66;
    v96[3] = v42;
    v96[4] = &off_100C4AB20;
    v96[0] = v67;
    sub_10000C70C(0, &qword_100CA2E40, OS_os_log_ptr);
    *(v43 + 448) = OS_os_log.init(subsystem:category:)();
    *(v43 + 456) = &_swiftEmptySetSingleton;
    *(v43 + 464) = &_swiftEmptyDictionarySingleton;
    static UnfairLock.Options.dataSynchronization.getter();
    type metadata accessor for UnfairLock();
    swift_allocObject();
    *(v43 + 472) = UnfairLock.init(options:)();
    v68 = sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);
    v75[1] = "r.StatePersistenceManager";
    v75[2] = v68;
    static DispatchQoS.userInitiated.getter();
    v95 = _swiftEmptyArrayStorage;
    v93 = sub_10006CD24(&qword_100CA2E50, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    v89 = sub_10022C350(&qword_100CA2E58, &qword_100A2C5A0);
    v90 = sub_100006F64(&qword_100CA2E60, &qword_100CA2E58, &qword_100A2C5A0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    LODWORD(v92) = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
    v91 = *(v91 + 104);
    v69 = v79;
    (v91)(v79);
    *(v43 + 520) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    static DispatchQoS.utility.getter();
    v95 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (v91)(v69, v92, v94);
    *(v43 + 528) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    static DispatchQoS.utility.getter();
    v95 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (v91)(v69, v92, v94);
    *(v43 + 536) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    static Settings.Daemon.enableDynamicCacheQueries.getter();
    sub_10022C350(&qword_100CC84C0, &unk_100A65F50);
    swift_allocObject();
    *(v43 + 544) = SettingProperty.init(_:)();
    v70 = v83;
    v71 = v84;
    *(v43 + 16) = v87;
    *(v43 + 24) = v70;
    v72 = v85;
    *(v43 + 32) = v71;
    *(v43 + 40) = v72;
    v73 = v81;
    *(v43 + 48) = v82;
    *(v43 + 56) = v73;
    v74 = v77;
    *(v43 + 64) = v80;
    *(v43 + 72) = v74;
    sub_100035B30(v123, v43 + 80);
    sub_100035B30(v122, v43 + 120);
    sub_100035B30(v99, v43 + 160);
    sub_100035B30(v98, v43 + 200);
    sub_100035B30(v117, v43 + 240);
    sub_100035B30(v116, v43 + 280);
    *(v43 + 320) = v76 & 1;
    sub_100035B30(v97, v43 + 328);
    sub_100035B30(v112, v43 + 368);
    sub_100035B30(v96, v43 + 408);
    *(v43 + 504) = &type metadata for DefaultForecastFetchingPolicy;
    *(v43 + 512) = &off_100C74A30;
    sub_100006F14(v112);
    sub_100006F14(v116);
    sub_100006F14(v117);
    sub_100006F14(v122);
    sub_100006F14(v123);
    sub_100006F14(v96);
    sub_100006F14(v97);
    sub_100006F14(v98);
    sub_100006F14(v99);
    sub_100006F14(v100);
    sub_100006F14(v103);
    sub_100006F14(v106);
    sub_100006F14(v109);
    sub_100006F14(v110);
    sub_100006F14(v113);
    sub_100006F14(v118);
    sub_100006F14(v120);
    return v43;
  }

LABEL_29:
  __break(1u);
  return result;
}

void *sub_1006AFEF4(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v3)
  {
    type metadata accessor for VisibleLocationWeatherLoadMonitor(0);
    v2 = swift_allocObject();
    sub_10013894C(v2 + OBJC_IVAR____TtC7Weather33VisibleLocationWeatherLoadMonitor_loadState);
    *(v2 + 16) = v3;
    *(v2 + 24) = v4;
    *(v2 + 40) = v5;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1006AFFE0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v12)
  {
    v6 = v14;
    v5 = v15;
    v7 = v13;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CD1820, &qword_100A76C18);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v11)
    {
      v8 = type metadata accessor for LocationFinder();
      v9 = swift_allocObject();
      v9[2] = v12;
      v9[3] = v7;
      v9[4] = v6;
      v9[5] = v5;
      result = sub_100013188(&v10, (v9 + 6));
      a2[3] = v8;
      a2[4] = &off_100C5EE88;
      *a2 = v9;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1006B0100@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    v4 = type metadata accessor for CellularRadioAccessTechnologyProvider();
    v5 = swift_allocObject();
    *(v5 + 16) = v6;
    *(v5 + 24) = v7;
    *(v5 + 40) = v8;
    a2[3] = v4;
    result = sub_10006CD24(&qword_100CD19A8, 255, type metadata accessor for CellularRadioAccessTechnologyProvider, byte_100A5CD18);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1006B01F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14A0, &qword_100A41A30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for LocationAccessDataProvider();
    swift_allocObject();
    result = LocationAccessDataProvider.init(locationManager:)();
    a2[3] = v4;
    a2[4] = &protocol witness table for LocationAccessDataProvider;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B02CC@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  swift_allocObject();
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

void *sub_1006B0334(void *a1)
{
  v2 = type metadata accessor for WeatherServiceCaching();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CD1950, &qword_100A76D38);
  __chkstk_darwin(v3 - 8);
  v5 = v15 - v4;
  type metadata accessor for WeatherAQIScaleCacheManager();
  static WeatherAQIScaleCacheManager.shared.getter();
  sub_1000161C0(a1, a1[3]);
  v6 = type metadata accessor for WDSEndpoint();
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100024D10(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (LOBYTE(v20[0]) == 2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v20[0])
  {
    static WeatherServiceCaching.disabled.getter();
  }

  else
  {
    static WeatherServiceCaching.enabled.getter();
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1968, &qword_100A76D48);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v8 = v21;
  if (!v21)
  {
    goto LABEL_13;
  }

  v9 = sub_1000161C0(v20, v21);
  v19[3] = v8;
  v10 = sub_100042FB0(v19);
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18F0, &qword_100A76CE8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v11 = v18;
  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = sub_1000161C0(v17, v18);
  v16[3] = v11;
  v13 = sub_100042FB0(v16);
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18E0, &qword_100A76CD8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v15[8])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1970, &qword_100A76D50);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v15[3])
  {
    type metadata accessor for WeatherService();
    swift_allocObject();
    v14 = WeatherService.init(scaleCacheManager:endpoint:caching:networkMonitor:authenticator:fetchOptionsProvider:serviceConfigurationProvider:)();
    sub_100006F14(v17);
    sub_100006F14(v20);
    return v14;
  }

LABEL_16:
  __break(1u);
  return result;
}

void *sub_1006B06EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherService();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1818, &qword_100A76C10);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14A0, &qword_100A41A30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60, &unk_100A6B640);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v9)
  {
    v6 = type metadata accessor for GeocodeWeatherService();
    swift_allocObject();
    v7 = sub_100983D4C(v5, &v12, &v10, &v8);
    a2[3] = v6;
    result = sub_10006CD24(&qword_100CD19A0, 255, type metadata accessor for GeocodeWeatherService, byte_100A9DC68);
    a2[4] = result;
    *a2 = v7;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

double *sub_1006B08CC(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&unk_100CAF460, &unk_100A3EDC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1858, &qword_100A76C50);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1860, &qword_100A76C58);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v5 = qword_100CAE038;
    v6 = off_100CAE040;
    sub_10022C350(&qword_100CD1830, &qword_100A76C28);
    swift_allocObject();

    return sub_1000443F4(v3, v4, v7, v8, v5, v6, 1.0);
  }

LABEL_7:
  __break(1u);
  return result;
}

void (*sub_1006B0A54(void *a1))(uint64_t *__return_ptr)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14A0, &qword_100A41A30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v4[3])
  {
    v3 = objc_allocWithZone(type metadata accessor for DebugOfflineViewController());
    return sub_1003BA9A8(v7, v8, v9, v10, v5, v6, v4);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1006B0BAC()
{
  v0 = type metadata accessor for Container.TestSuite();
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v15 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Scope();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA4B60, &qword_100A2EE20);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC95D8, &qword_100A67850);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC95E0, &qword_100A67858);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1838, &qword_100A76C30);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1840, &qword_100A76C38);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&unk_100CE0F40, &unk_100A502E0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1848, &qword_100A76C40);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for MainReducer();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1850, &qword_100A76C48);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1858, &qword_100A76C50);
  RegistrationContainer.register<A>(_:name:factory:)();

  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1860, &qword_100A76C58);
  RegistrationContainer.register<A>(_:name:factory:)();

  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1868, &qword_100A76C60);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1870, &qword_100A76C68);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1878, &qword_100A76C70);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for LocationAuthorizationReducer();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1880, &qword_100A76C78);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1888, &qword_100A76C80);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1890, &qword_100A76C88);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD1898, &qword_100A76C90);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD18A0, &qword_100A76C98);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD18A8, &qword_100A76CA0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD18B0, &qword_100A76CA8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD18B8, &qword_100A76CB0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD18C0, &qword_100A76CB8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD18C8, &qword_100A76CC0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD18D0, &qword_100A76CC8);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for WeatherService();
  RegistrationContainer.register<A>(_:name:factory:)();
  v6 = enum case for Scope.containerSingleton(_:);
  v7 = *(v3 + 104);
  v7(v5, enum case for Scope.containerSingleton(_:), v2);
  Definition.inScope(_:)();

  v8 = *(v3 + 8);
  v8(v5, v2);
  sub_10022C350(&qword_100CD18D8, &qword_100A76CD0);
  RegistrationContainer.register<A>(_:name:factory:)();
  v9 = enum case for Scope.singleton(_:);
  v7(v5, enum case for Scope.singleton(_:), v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for WDSEndpoint();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  sub_10022C350(&qword_100CD18E0, &qword_100A76CD8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD18E8, &qword_100A76CE0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD18F0, &qword_100A76CE8);
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v9, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  sub_10022C350(&qword_100CD18F8, &qword_100A76CF0);
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v9, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for NotificationsStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for NotificationsOptInStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for ReverseGeocodingStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for SavedLocationsStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for WeatherDataStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for WeatherMapOverlayDataStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for WidgetReloadStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for LocationViewerStoreObserver(0);
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for OpenL2HandlerObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for InteractionDonationStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for WeatherConditionBackgroundStoreObserver(0);
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for TimeStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  type metadata accessor for VisibleLocationWeatherLoadStoreObserver();
  RegistrationContainer.register<A>(_:name:factory:)();
  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  RegistrationContainer.register<A>(_:name:factory:)();
  v11 = v15;
  v10 = v16;
  v12 = v17;
  (*(v16 + 104))(v15, enum case for Container.TestSuite.performance(_:), v17);
  Definition.whenTesting(_:_:)();

  (*(v10 + 8))(v11, v12);
  type metadata accessor for WeatherDataDebounceMiddleware(0);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for ShortcutItemMiddleware();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for ShortcutItemUpdater();
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for UnitManagerMiddleware();
  RegistrationContainer.register<A>(_:name:factory:)();
}

void *sub_1006B1E7C(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v24;
  v4 = v25;
  v6 = v23;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95D8, &qword_100A67850);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v20, v21);
  active = type metadata accessor for ActiveLocationInputFactory();
  v19 = &off_100C4F948;
  v17[0] = v7;
  sub_100035B30(v17, v16);
  v8 = swift_allocObject();
  sub_100013188(v16, v8 + 16);

  sub_100006F14(v17);
  sub_100006F14(v20);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1005DE3B0;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000E7EFC;
  *(v10 + 24) = v9;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95E0, &qword_100A67858);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v11 = *sub_1000161C0(v20, v21);
    active = type metadata accessor for ActiveLocationModelFactory();
    v19 = &off_100C4F938;
    v17[0] = v11;
    sub_100035B30(v17, v16);
    v12 = swift_allocObject();
    sub_100013188(v16, v12 + 16);

    sub_100006F14(v17);
    sub_100006F14(v20);
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1005DE3B8;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1000E7F08;
    *(v14 + 24) = v10;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000E8AE8;
    *(v15 + 24) = v13;
    sub_10022C350(&qword_100CA4B60, &qword_100A2EE20);
    swift_allocObject();
    return sub_10009CDA0(v3, v6, v5, v4, sub_1000D5B6C, 0, sub_10009F81C, v14, sub_1000E87D0, v15);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1006B2210@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for MainTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_100C78C80;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1006B2298@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v30;
  if (!v30)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1838, &qword_100A76C30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v29)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v21 = v31;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v6 = v24;
  if (!v24)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v26;
  v20 = v27;
  v8 = v25;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA728, &unk_100A60C40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    v9 = sub_10002D7F8(v28, v29);
    v10 = __chkstk_darwin(v9);
    v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = sub_10002D7F8(v22, v23);
    v15 = __chkstk_darwin(v14);
    v17 = (&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = sub_1000836B4(v5, v21, *v12, v6, v8, v7, v20, *v17);
    sub_100006F14(v22);
    sub_100006F14(v28);
    result = type metadata accessor for MainInteractor();
    a2[3] = result;
    a2[4] = &off_100C5E2C8;
    *a2 = v19;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1006B25A0(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v16;
  if (v16)
  {
    v5 = v18;
    v4 = v19;
    v6 = v17;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CD1848, &qword_100A76C40);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v15)
    {
      v7 = *sub_1000161C0(v14, v15);
      v13[3] = type metadata accessor for MainViewModelFactory();
      v13[4] = &off_100C64CB8;
      v13[0] = v7;
      sub_100035B30(v13, v12);
      v8 = swift_allocObject();
      sub_100013188(v12, v8 + 16);

      sub_100006F14(v13);
      sub_100006F14(v14);
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1006BA678;
      *(v9 + 24) = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1000A065C;
      *(v10 + 24) = v9;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_10009F868;
      *(v11 + 24) = v10;
      sub_10022C350(&unk_100CE0F40, &unk_100A502E0);
      swift_allocObject();
      return sub_100083948(v3, v6, v5, v4, sub_1005DCAD0, 0, sub_10009F610, 0, sub_10009F81C, v11);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1006B2858(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1980, &qword_100A76D58);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v356)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1868, &qword_100A76C60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v354)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1870, &qword_100A76C68);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v352)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1878, &qword_100A76C70);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v350)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1880, &qword_100A76C78);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v348)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18A0, &qword_100A76C98);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v346)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18A8, &qword_100A76CA0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v344)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18B0, &qword_100A76CA8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v342)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9540, &qword_100A677A8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v340)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18C8, &qword_100A76CC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v338)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC6200, &qword_100A61BD0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v336)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18D0, &qword_100A76CC8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v334)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1888, &qword_100A76C80);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v332)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1890, &qword_100A76C88);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v330)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1878, &qword_100A41E88);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v328)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1988, &qword_100A8C8E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v326)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAC9F8, &qword_100A3BE68);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v324)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1990, &qword_100A76D60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v322)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB19F0, &qword_100A41FF0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v320)
  {
    v3 = sub_10002D7F8(v355, v356);
    v263 = v198;
    v4 = __chkstk_darwin(v3);
    v244 = (v198 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v4);
    v7 = sub_10002D7F8(v353, v354);
    v262 = v198;
    v8 = __chkstk_darwin(v7);
    v243 = (v198 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v8);
    v11 = sub_10002D7F8(v351, v352);
    v261 = v198;
    v12 = __chkstk_darwin(v11);
    v242 = (v198 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v12);
    v15 = sub_10002D7F8(v349, v350);
    v260 = v198;
    v16 = __chkstk_darwin(v15);
    v241 = (v198 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v16);
    v19 = sub_10002D7F8(v347, v348);
    v259 = v198;
    v20 = __chkstk_darwin(v19);
    v240 = (v198 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v20);
    v23 = sub_10002D7F8(v345, v346);
    v258 = v198;
    v24 = __chkstk_darwin(v23);
    v239 = (v198 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v24);
    v27 = sub_10002D7F8(v343, v344);
    v257 = v198;
    v28 = __chkstk_darwin(v27);
    v238 = (v198 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v28);
    v31 = sub_10002D7F8(v341, v342);
    v256 = v198;
    v32 = __chkstk_darwin(v31);
    v237 = (v198 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v32);
    v35 = sub_10002D7F8(v339, v340);
    v255 = v198;
    v36 = __chkstk_darwin(v35);
    v236 = (v198 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v36);
    v39 = sub_10002D7F8(v337, v338);
    v254 = v198;
    v40 = __chkstk_darwin(v39);
    v235 = (v198 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v40);
    v43 = sub_10002D7F8(v335, v336);
    v253 = v198;
    v44 = __chkstk_darwin(v43);
    v234 = (v198 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v46 + 16))(v44);
    v47 = sub_10002D7F8(v333, v334);
    v252 = v198;
    v48 = __chkstk_darwin(v47);
    v233 = (v198 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v50 + 16))(v48);
    v51 = sub_10002D7F8(v331, v332);
    v251 = v198;
    v52 = __chkstk_darwin(v51);
    v232 = (v198 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v54 + 16))(v52);
    v55 = sub_10002D7F8(v329, v330);
    v250 = v198;
    v56 = __chkstk_darwin(v55);
    v231 = (v198 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v58 + 16))(v56);
    v59 = sub_10002D7F8(v327, v328);
    v249 = v198;
    v60 = __chkstk_darwin(v59);
    v230 = (v198 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v62 + 16))(v60);
    v63 = sub_10002D7F8(v325, v326);
    v248 = v198;
    v64 = __chkstk_darwin(v63);
    v66 = (v198 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v67 + 16))(v66, v64);
    v68 = sub_10002D7F8(v323, v324);
    v247 = v198;
    v69 = __chkstk_darwin(v68);
    v71 = (v198 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v72 + 16))(v71, v69);
    v73 = sub_10002D7F8(v321, v322);
    v246 = v198;
    v74 = __chkstk_darwin(v73);
    v76 = (v198 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v77 + 16))(v76, v74);
    v78 = sub_10002D7F8(v319, v320);
    v245 = v198;
    v79 = __chkstk_darwin(v78);
    v81 = (v198 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v82 + 16))(v81, v79);
    v83 = *v244;
    v84 = *v243;
    v85 = *v242;
    v86 = *v241;
    v87 = *v240;
    v88 = *v238;
    v224 = *v239;
    v225 = v88;
    v89 = *v236;
    v226 = *v237;
    v227 = v89;
    v90 = *v234;
    v228 = *v235;
    v229 = v90;
    v233 = *v233;
    v238 = *v232;
    v91 = *v230;
    v235 = *v231;
    v236 = v91;
    v92 = *v66;
    v93 = *v71;
    v94 = *v76;
    v243 = *v81;
    v95 = type metadata accessor for AutomationReducer();
    v318[4] = &off_100C65D38;
    v318[3] = v95;
    v318[0] = v83;
    v244 = type metadata accessor for AppLifecycleReducer();
    v317 = &off_100C74D80;
    v316 = v244;
    v315[0] = v84;
    v242 = type metadata accessor for AppConfigurationReducer();
    v314 = &off_100C68310;
    v313 = v242;
    v312[0] = v85;
    v241 = type metadata accessor for EnvironmentReducer();
    v311 = &off_100C6A7F8;
    v310 = v241;
    v309[0] = v86;
    v240 = type metadata accessor for LocationsReducer();
    v308 = &off_100C662B8;
    v307 = v240;
    v306[0] = v87;
    v239 = type metadata accessor for TimeReducer();
    v305 = &off_100C65550;
    v304 = v239;
    v303[0] = v224;
    v237 = type metadata accessor for ViewStateReducer();
    v302 = &off_100C5C230;
    v301 = v237;
    v300[0] = v225;
    v234 = type metadata accessor for ModalViewStateReducer();
    v299 = &off_100C75210;
    v298 = v234;
    v297[0] = v226;
    v232 = type metadata accessor for LocationViewStateReducer();
    v296 = &off_100C4A0C8;
    v295 = v232;
    v294[0] = v227;
    v230 = type metadata accessor for WeatherDataReducer();
    v293 = &off_100C751D8;
    v292 = v230;
    v291[0] = v228;
    v228 = type metadata accessor for PerformanceTestReducer();
    v290 = &off_100C69CF0;
    v289 = v228;
    v288[0] = v229;
    v226 = type metadata accessor for DebugReducer();
    v287 = &off_100C50AD8;
    v286 = v226;
    v285[0] = v233;
    v224 = type metadata accessor for NotificationsReducer();
    v284 = &off_100C513B8;
    v283 = v224;
    v282[0] = v238;
    v238 = type metadata accessor for NotificationsOptInReducer();
    v281 = &off_100C55510;
    v280 = v238;
    v279[0] = v235;
    v235 = type metadata accessor for ConditionDetailViewStateReducer();
    v278 = &off_100C77CF0;
    v277 = v235;
    v276[0] = v236;
    v233 = type metadata accessor for SunriseSunsetDetailViewStateReducer();
    v275 = &off_100C69B08;
    v274 = v233;
    v273[0] = v92;
    v231 = type metadata accessor for MoonDetailViewStateReducer();
    v272 = &off_100C696D8;
    v271 = v231;
    v270[0] = v93;
    v229 = type metadata accessor for AveragesDetailViewStateReducer();
    v269 = &off_100C709B8;
    v268 = v229;
    v267[0] = v94;
    v227 = type metadata accessor for UnitsConfigurationViewStateReducer();
    v266 = &off_100C75968;
    v265 = v227;
    v264[0] = v243;
    type metadata accessor for MainReducer();
    v96 = swift_allocObject();
    v97 = sub_10002D7F8(v318, v95);
    v243 = v198;
    v219 = v95;
    v98 = __chkstk_darwin(v97);
    v221 = (v198 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v100 + 16))(v98);
    v101 = sub_10002D7F8(v315, v316);
    v236 = v198;
    v102 = __chkstk_darwin(v101);
    v218 = (v198 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v104 + 16))(v102);
    v105 = sub_10002D7F8(v312, v313);
    v225 = v198;
    v106 = __chkstk_darwin(v105);
    v216 = (v198 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v108 + 16))(v106);
    v109 = sub_10002D7F8(v309, v310);
    v223 = v198;
    v110 = __chkstk_darwin(v109);
    v214 = (v198 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v112 + 16))(v110);
    v113 = sub_10002D7F8(v306, v307);
    v222 = v198;
    v114 = __chkstk_darwin(v113);
    v212 = (v198 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v116 + 16))(v114);
    v117 = sub_10002D7F8(v303, v304);
    v220 = v198;
    v118 = __chkstk_darwin(v117);
    v211 = (v198 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v120 + 16))(v118);
    v121 = sub_10002D7F8(v300, v301);
    v217 = v198;
    v122 = __chkstk_darwin(v121);
    v209 = (v198 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v124 + 16))(v122);
    v125 = sub_10002D7F8(v297, v298);
    v215 = v198;
    v126 = __chkstk_darwin(v125);
    v207 = (v198 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v128 + 16))(v126);
    v129 = sub_10002D7F8(v294, v295);
    v213 = v198;
    v130 = __chkstk_darwin(v129);
    v205 = (v198 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v132 + 16))(v130);
    v133 = sub_10002D7F8(v291, v292);
    v210 = v198;
    v134 = __chkstk_darwin(v133);
    v203 = (v198 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v136 + 16))(v134);
    v137 = sub_10002D7F8(v288, v289);
    v208 = v198;
    v138 = __chkstk_darwin(v137);
    v201 = (v198 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v140 + 16))(v138);
    v141 = sub_10002D7F8(v285, v286);
    v206 = v198;
    v142 = __chkstk_darwin(v141);
    v199 = (v198 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v144 + 16))(v142);
    v145 = sub_10002D7F8(v282, v283);
    v204 = v198;
    v146 = __chkstk_darwin(v145);
    v148 = (v198 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v149 + 16))(v148, v146);
    v150 = sub_10002D7F8(v279, v280);
    v202 = v198;
    v151 = __chkstk_darwin(v150);
    v153 = (v198 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v154 + 16))(v153, v151);
    v155 = sub_10002D7F8(v276, v277);
    v200 = v198;
    v156 = __chkstk_darwin(v155);
    v158 = (v198 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v159 + 16))(v158, v156);
    v160 = sub_10002D7F8(v273, v274);
    v198[3] = v198;
    v161 = __chkstk_darwin(v160);
    v163 = (v198 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v164 + 16))(v163, v161);
    v165 = sub_10002D7F8(v270, v271);
    v198[2] = v198;
    v166 = __chkstk_darwin(v165);
    v168 = (v198 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v169 + 16))(v168, v166);
    v170 = sub_10002D7F8(v267, v268);
    v198[1] = v198;
    v171 = __chkstk_darwin(v170);
    v173 = (v198 - ((v172 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v174 + 16))(v173, v171);
    v175 = sub_10002D7F8(v264, v265);
    v198[0] = v198;
    v176 = __chkstk_darwin(v175);
    v178 = (v198 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v179 + 16))(v178, v176);
    v96[5] = v219;
    v96[6] = &off_100C65D38;
    v96[10] = v244;
    v96[11] = &off_100C74D80;
    v96[15] = v242;
    v96[16] = &off_100C68310;
    v96[20] = v241;
    v96[21] = &off_100C6A7F8;
    v96[25] = v240;
    v96[26] = &off_100C662B8;
    v96[35] = v239;
    v96[36] = &off_100C65550;
    v96[40] = v237;
    v96[41] = &off_100C5C230;
    v96[45] = v234;
    v96[46] = &off_100C75210;
    v96[50] = v232;
    v96[51] = &off_100C4A0C8;
    v96[55] = v230;
    v96[56] = &off_100C751D8;
    v96[30] = v228;
    v96[31] = &off_100C69CF0;
    v96[60] = v226;
    v96[61] = &off_100C50AD8;
    v96[65] = v224;
    v96[66] = &off_100C513B8;
    v180 = *v218;
    v181 = *v216;
    v182 = *v214;
    v183 = *v212;
    v184 = *v211;
    v185 = *v209;
    v186 = *v207;
    v187 = *v205;
    v188 = *v203;
    v189 = *v201;
    v190 = *v199;
    v191 = *v148;
    v192 = *v153;
    v193 = *v158;
    v194 = *v163;
    v195 = *v168;
    v196 = *v173;
    v197 = *v178;
    v96[2] = *v221;
    v96[7] = v180;
    v96[12] = v181;
    v96[17] = v182;
    v96[22] = v183;
    v96[32] = v184;
    v96[37] = v185;
    v96[42] = v186;
    v96[47] = v187;
    v96[52] = v188;
    v96[27] = v189;
    v96[57] = v190;
    v96[62] = v191;
    v96[70] = v238;
    v96[71] = &off_100C55510;
    v96[67] = v192;
    v96[75] = v235;
    v96[76] = &off_100C77CF0;
    v96[72] = v193;
    v96[80] = v233;
    v96[81] = &off_100C69B08;
    v96[77] = v194;
    v96[85] = v231;
    v96[86] = &off_100C696D8;
    v96[82] = v195;
    v96[90] = v229;
    v96[91] = &off_100C709B8;
    v96[87] = v196;
    v96[95] = v227;
    v96[96] = &off_100C75968;
    v96[92] = v197;
    sub_100006F14(v264);
    sub_100006F14(v267);
    sub_100006F14(v270);
    sub_100006F14(v273);
    sub_100006F14(v276);
    sub_100006F14(v279);
    sub_100006F14(v282);
    sub_100006F14(v285);
    sub_100006F14(v288);
    sub_100006F14(v291);
    sub_100006F14(v294);
    sub_100006F14(v297);
    sub_100006F14(v300);
    sub_100006F14(v303);
    sub_100006F14(v306);
    sub_100006F14(v309);
    sub_100006F14(v312);
    sub_100006F14(v315);
    sub_100006F14(v318);
    sub_100006F14(v319);
    sub_100006F14(v321);
    sub_100006F14(v323);
    sub_100006F14(v325);
    sub_100006F14(v327);
    sub_100006F14(v329);
    sub_100006F14(v331);
    sub_100006F14(v333);
    sub_100006F14(v335);
    sub_100006F14(v337);
    sub_100006F14(v339);
    sub_100006F14(v341);
    sub_100006F14(v343);
    sub_100006F14(v345);
    sub_100006F14(v347);
    sub_100006F14(v349);
    sub_100006F14(v351);
    sub_100006F14(v353);
    sub_100006F14(v355);
    return v96;
  }

LABEL_39:
  __break(1u);
  return result;
}

void sub_1006B4D9C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for MainReducer();
  v4 = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;

  sub_100040028();
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8 >= *(v6 + 24) >> 1)
  {
    sub_100040028();
    v7 = v12;
  }

  *(v7 + 16) = v8 + 1;
  v9 = v7 + 16 * v8;
  *(v9 + 32) = sub_1000518F4;
  *(v9 + 40) = v5;

  sub_1000161C0(a1, a1[3]);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v14)
  {
    goto LABEL_9;
  }

  v10 = *(v7 + 16);
  if (v10 >= *(v7 + 24) >> 1)
  {
    sub_100040028();
    v7 = v13;
  }

  *(v7 + 16) = v10 + 1;
  v11 = v7 + 16 * v10;
  *(v11 + 32) = sub_10005284C;
  *(v11 + 40) = 0;
  *a2 = v7;
}

void *sub_1006B4F0C(void *a1)
{
  sub_10022C350(&qword_100CD1858, &qword_100A76C50);
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    sub_100036520(sub_1006BA530, v4);

    sub_100036520(sub_1006BA538, 0);
    sub_100036520(sub_1006BA560, 0);
    sub_100036520(sub_1006BA588, 0);
    sub_100036520(sub_1006BA5B0, 0);
    sub_100036520(sub_1006BA5D8, 0);
    sub_100036520(sub_1006BA600, 0);
    sub_100036520(sub_1006BA628, 0);
    sub_100036520(sub_1006BA650, 0);
    return v2;
  }

  return result;
}

uint64_t sub_1006B50D4()
{
  sub_10022C350(&qword_100CD1858, &qword_100A76C50);
  v0 = swift_allocObject();
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_100036520(sub_1006BA4B8, 0);
  sub_100036520(sub_1006BA4E0, 0);
  sub_100036520(sub_1006BA508, 0);
  return v0;
}

void *sub_1006B51DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  v4 = type metadata accessor for LocationAuthorizationReducer();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v34[3] = v4;
  v34[4] = &off_100C542F0;
  v34[0] = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1898, &qword_100A76C90);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v33)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18B8, &qword_100A76CB0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v31)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18C0, &qword_100A76CB8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v29)
  {
    v6 = sub_10002D7F8(v34, v4);
    v7 = __chkstk_darwin(v6);
    v9 = (&v28[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = sub_10002D7F8(v32, v33);
    v12 = __chkstk_darwin(v11);
    v14 = (&v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14, v12);
    v16 = sub_10002D7F8(v30, v31);
    v17 = __chkstk_darwin(v16);
    v19 = (&v28[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = sub_10002D7F8(v28, v29);
    v22 = __chkstk_darwin(v21);
    v24 = (&v28[-1] - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24, v22);
    v26 = sub_10003E2EC(*v9, *v14, *v19, *v24);
    sub_100006F14(v28);
    sub_100006F14(v30);
    sub_100006F14(v32);
    sub_100006F14(v34);
    result = type metadata accessor for EnvironmentReducer();
    a2[3] = result;
    a2[4] = &off_100C6A7F8;
    *a2 = v26;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1006B564C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA730, &unk_100A4FE30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v4 = type metadata accessor for LocationsReducer();
    v5 = swift_allocObject();
    result = sub_100013188(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_100C662B8;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1006B5778@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCC2E0, &qword_100A6BCC8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v34)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBE30, &qword_100A6B608);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v32)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4438, &qword_100A47780);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v30)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCEFC8, &qword_100A703A8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v28)
  {
    v5 = sub_10002D7F8(v33, v34);
    v6 = __chkstk_darwin(v5);
    v8 = (&v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = sub_10002D7F8(v31, v32);
    v11 = __chkstk_darwin(v10);
    v13 = (&v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = sub_10002D7F8(v29, v30);
    v16 = __chkstk_darwin(v15);
    v18 = (&v27[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = sub_10002D7F8(v27, v28);
    v21 = __chkstk_darwin(v20);
    v23 = (&v27[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v25 = sub_10003EF70(*v8, *v13, *v18, *v23);
    sub_100006F14(v27);
    sub_100006F14(v29);
    sub_100006F14(v31);
    sub_100006F14(v33);
    result = type metadata accessor for ViewStateReducer();
    a2[3] = result;
    a2[4] = &off_100C5C230;
    *a2 = v25;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1006B5BB0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA6F8, &qword_100A4FDF0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v34)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1978, &unk_100AA3E50);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v32)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD0348, &unk_100A74D80);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v30)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1438, &qword_100A419A8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v28)
  {
    v5 = sub_10002D7F8(v33, v34);
    v6 = __chkstk_darwin(v5);
    v8 = (&v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = sub_10002D7F8(v31, v32);
    v11 = __chkstk_darwin(v10);
    v13 = (&v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = sub_10002D7F8(v29, v30);
    v16 = __chkstk_darwin(v15);
    v18 = (&v27[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = sub_10002D7F8(v27, v28);
    v21 = __chkstk_darwin(v20);
    v23 = (&v27[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v25 = sub_100034B18(*v8, *v13, *v18, *v23);
    sub_100006F14(v27);
    sub_100006F14(v29);
    sub_100006F14(v31);
    sub_100006F14(v33);
    result = type metadata accessor for ModalViewStateReducer();
    a2[3] = result;
    a2[4] = &off_100C75210;
    *a2 = v25;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1006B6068@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

void *sub_1006B60B8(void *a1)
{
  v2 = type metadata accessor for WeatherServiceCaching();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10022C350(&qword_100CD1950, &qword_100A76D38);
  __chkstk_darwin(v3 - 8);
  v5 = v16 - v4;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1960, &unk_100A9F4D0);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  v6 = v21;
  if (v21 >= 2)
  {
    swift_getObjectType();
    dispatch thunk of AutomationWeatherDataManagerType.setupStubData()();
    sub_100040910(v6);
  }

  type metadata accessor for WeatherAQIScaleCacheManager();
  static WeatherAQIScaleCacheManager.shared.getter();
  sub_1000161C0(a1, a1[3]);
  v7 = type metadata accessor for WDSEndpoint();
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100024D10(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v21 == 2)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v21)
  {
    static WeatherServiceCaching.disabled.getter();
  }

  else
  {
    static WeatherServiceCaching.enabled.getter();
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1968, &qword_100A76D48);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v9 = v22;
  if (!v22)
  {
    goto LABEL_15;
  }

  v10 = sub_1000161C0(&v21, v22);
  v20[3] = v9;
  v11 = sub_100042FB0(v20);
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18F0, &qword_100A76CE8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v12 = v19;
  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = sub_1000161C0(v18, v19);
  v17[3] = v12;
  v14 = sub_100042FB0(v17);
  (*(*(v12 - 8) + 16))(v14, v13, v12);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18E0, &qword_100A76CD8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v16[8])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1970, &qword_100A76D50);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v16[3])
  {
    type metadata accessor for WeatherService();
    swift_allocObject();
    v15 = WeatherService.init(scaleCacheManager:endpoint:caching:networkMonitor:authenticator:fetchOptionsProvider:serviceConfigurationProvider:)();
    sub_100006F14(v18);
    sub_100006F14(&v21);
    return v15;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1006B64D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1900, &qword_100A76CF8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v223)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9570, &qword_100A677E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v222)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9578, &qword_100A677E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v220)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9580, &unk_100A677F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v218)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCC2E8, &qword_100A6BCD0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v216)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9588, &qword_100A67800);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v214)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9590, &qword_100A67808);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v212)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9598, &qword_100A67810);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v210)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95A0, &qword_100A67818);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v208)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95A8, &qword_100A67820);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v206)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBE38, &qword_100A6B610);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v204)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v167 = v224;
  v168 = v223;
  v169 = a2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC95B0, &qword_100A67828);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v202)
  {
    v5 = sub_10002D7F8(v221, v222);
    v166 = v131;
    v6 = __chkstk_darwin(v5);
    v8 = (v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = sub_10002D7F8(v219, v220);
    v165 = v131;
    v11 = __chkstk_darwin(v10);
    v13 = (v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = sub_10002D7F8(v217, v218);
    v164 = v131;
    v16 = __chkstk_darwin(v15);
    v18 = (v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = sub_10002D7F8(v215, v216);
    v163 = v131;
    v21 = __chkstk_darwin(v20);
    v155 = (v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v21);
    v24 = sub_10002D7F8(v213, v214);
    v162 = v131;
    v25 = __chkstk_darwin(v24);
    v27 = (v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27, v25);
    v29 = sub_10002D7F8(v211, v212);
    v161 = v131;
    v30 = __chkstk_darwin(v29);
    v154 = (v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v30);
    v33 = sub_10002D7F8(v209, v210);
    v160 = v131;
    v34 = __chkstk_darwin(v33);
    v153 = (v131 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))(v34);
    v37 = sub_10002D7F8(v207, v208);
    v159 = v131;
    v38 = __chkstk_darwin(v37);
    v40 = (v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v41 + 16))(v40, v38);
    v42 = sub_10002D7F8(v205, v206);
    v158 = v131;
    v43 = __chkstk_darwin(v42);
    v45 = (v131 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v46 + 16))(v45, v43);
    v47 = sub_10002D7F8(v203, v204);
    v157 = v131;
    v48 = __chkstk_darwin(v47);
    v50 = (v131 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))(v50, v48);
    v52 = sub_10002D7F8(v201, v202);
    v156 = v131;
    v53 = __chkstk_darwin(v52);
    v55 = (v131 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v56 + 16))(v55, v53);
    v57 = *v8;
    v58 = *v13;
    v59 = *v18;
    v60 = *v155;
    v61 = *v27;
    v62 = *v153;
    v148 = *v154;
    v149 = v62;
    v63 = *v40;
    v64 = *v45;
    v155 = *v50;
    v65 = *v55;
    v66 = type metadata accessor for DailyForecastComponentViewModelFactory();
    v200[4] = &off_100C54B68;
    v200[3] = v66;
    v200[0] = v57;
    v152 = type metadata accessor for FeelsLikeComponentViewModelFactory();
    v199 = &off_100C75070;
    v198 = v152;
    v197[0] = v58;
    v154 = type metadata accessor for HourlyForecastComponentViewModelFactory();
    v196 = &off_100C5BDA8;
    v195 = v154;
    v194[0] = v59;
    v153 = type metadata accessor for ListViewModelFactory(0);
    v193 = &off_100C5CAC0;
    v192 = v153;
    v191[0] = v60;
    v151 = type metadata accessor for PrecipitationTotalComponentViewModelFactory();
    v190 = &off_100C68500;
    v189 = v151;
    v188[0] = v61;
    v150 = type metadata accessor for UVIndexComponentViewModelFactory();
    v187 = &off_100C6CA98;
    v186 = v150;
    v185[0] = v148;
    v148 = type metadata accessor for VisibilityComponentViewModelFactory();
    v184 = &off_100C69B38;
    v183 = v148;
    v182[0] = v149;
    v147 = type metadata accessor for PressureComponentViewModelFactory();
    v180 = v147;
    v181 = &off_100C79900;
    v179[0] = v63;
    v146 = type metadata accessor for WindComponentViewModelFactory();
    v177 = v146;
    v178 = &off_100C64E68;
    v176[0] = v64;
    v145 = type metadata accessor for WeatherConditionBackgroundModelInputFactory(0);
    v174 = v145;
    v175 = &off_100C74B00;
    v173[0] = v155;
    v144 = type metadata accessor for LocationViewModelFactory(0);
    v171 = v144;
    v172 = &off_100C719A8;
    v170[0] = v65;
    v155 = type metadata accessor for WeatherDataPreprocessor();
    v67 = swift_allocObject();
    v68 = sub_10002D7F8(v200, v66);
    v149 = v131;
    v139 = v66;
    v69 = __chkstk_darwin(v68);
    v141 = (v131 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v71 + 16))(v69);
    v72 = sub_10002D7F8(v197, v198);
    v143 = v131;
    v73 = __chkstk_darwin(v72);
    v138 = v131 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v75 + 16))(v73);
    v76 = sub_10002D7F8(v194, v195);
    v142 = v131;
    v77 = __chkstk_darwin(v76);
    v136 = (v131 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v79 + 16))(v77);
    v80 = sub_10002D7F8(v191, v192);
    v140 = v131;
    v81 = __chkstk_darwin(v80);
    v134 = (v131 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v83 + 16))(v81);
    v84 = sub_10002D7F8(v188, v189);
    v137 = v131;
    v85 = __chkstk_darwin(v84);
    v132 = (v131 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v87 + 16))(v85);
    v88 = sub_10002D7F8(v185, v186);
    v135 = v131;
    v89 = __chkstk_darwin(v88);
    v91 = (v131 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v92 + 16))(v91, v89);
    v93 = sub_10002D7F8(v182, v183);
    v133 = v131;
    v94 = __chkstk_darwin(v93);
    v96 = (v131 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v97 + 16))(v96, v94);
    v98 = sub_10002D7F8(v179, v180);
    v131[2] = v131;
    v99 = __chkstk_darwin(v98);
    v101 = (v131 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v102 + 16))(v101, v99);
    v103 = sub_10002D7F8(v176, v177);
    v131[1] = v131;
    v104 = __chkstk_darwin(v103);
    v106 = (v131 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v107 + 16))(v106, v104);
    v108 = sub_10002D7F8(v173, v174);
    v131[0] = v131;
    v109 = __chkstk_darwin(v108);
    v111 = (v131 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v112 + 16))(v111, v109);
    v113 = sub_10002D7F8(v170, v171);
    v114 = __chkstk_darwin(v113);
    v116 = (v131 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v117 + 16))(v116, v114);
    v118 = v138;
    v67[7] = v139;
    v67[8] = &off_100C54B68;
    v67[12] = v152;
    v67[13] = &off_100C75070;
    v119 = *v118;
    v120 = *v136;
    v121 = *v134;
    v122 = *v132;
    v123 = *v91;
    v124 = *v96;
    v125 = *v101;
    v126 = *v106;
    v127 = *v111;
    v128 = *v116;
    v67[4] = *v141;
    v67[9] = v119;
    v67[17] = v154;
    v67[18] = &off_100C5BDA8;
    v67[14] = v120;
    v67[22] = v153;
    v67[23] = &off_100C5CAC0;
    v67[19] = v121;
    v67[27] = v151;
    v67[28] = &off_100C68500;
    v67[24] = v122;
    v67[32] = v150;
    v67[33] = &off_100C6CA98;
    v67[29] = v123;
    v67[37] = v148;
    v67[38] = &off_100C69B38;
    v67[34] = v124;
    v67[42] = v147;
    v67[43] = &off_100C79900;
    v67[39] = v125;
    v67[47] = v146;
    v67[48] = &off_100C64E68;
    v67[44] = v126;
    v67[52] = v145;
    v67[53] = &off_100C74B00;
    v67[49] = v127;
    v67[57] = v144;
    v67[58] = &off_100C719A8;
    v67[54] = v128;
    v129 = v167;
    v67[2] = v168;
    v67[3] = v129;
    sub_100006F14(v170);
    sub_100006F14(v173);
    sub_100006F14(v176);
    sub_100006F14(v179);
    sub_100006F14(v182);
    sub_100006F14(v185);
    sub_100006F14(v188);
    sub_100006F14(v191);
    sub_100006F14(v194);
    sub_100006F14(v197);
    sub_100006F14(v200);
    sub_100006F14(v201);
    sub_100006F14(v203);
    sub_100006F14(v205);
    sub_100006F14(v207);
    sub_100006F14(v209);
    sub_100006F14(v211);
    sub_100006F14(v213);
    sub_100006F14(v215);
    sub_100006F14(v217);
    sub_100006F14(v219);
    result = sub_100006F14(v221);
    v130 = v169;
    v169[3] = v155;
    v130[4] = &off_100C6A0D0;
    *v130 = v67;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1006B7AC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for URL();
  __chkstk_darwin(v3 - 8);
  v22 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for EndpointConfiguration();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v23);
  v20 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v21 = type metadata accessor for AppConfiguration();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.WeatherEnvironment.contentEnvironment.getter();
  SettingReader.read<A>(_:)();

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60, &unk_100A6B640);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v26)
  {
    sub_100013188(&v25, v27);
    sub_1000161C0(v27, v27[3]);
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    AppConfiguration.endpointConfig(for:)();
    v14 = EndpointConfiguration.useDynamicPortForWeatherData.getter();
    EndpointConfiguration.weatherDataURL.getter();
    if (v14)
    {
      v15 = v20;
      v16 = v23;
      (*(v5 + 16))(v20, v9, v23);
      v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v18 = swift_allocObject();
      (*(v5 + 32))(v18 + v17, v15, v16);
      WDSEndpoint.init(url:portOverrideProvider:)();
    }

    else
    {
      WDSEndpoint.init(url:)();
      v16 = v23;
    }

    (*(v5 + 8))(v9, v16);
    (*(v10 + 8))(v12, v21);
    return sub_100006F14(v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B7E24(uint64_t a1)
{
  v24 = a1;
  v25 = type metadata accessor for Logger();
  v1 = *(v25 - 8);
  __chkstk_darwin(v25);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CB5478, &qword_100A48D80);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  type metadata accessor for MockServer();
  static MockServer.shared.getter();
  v14 = MockServer.listeningPort.getter();
  v16 = v15;

  if (v16)
  {
    EndpointConfiguration.weatherDataURL.getter();
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    (*(v5 + 8))(v7, v4);
    static Logger.automation.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to get port from mock server", v19, 2u);
    }

    (*(v1 + 8))(v3, v25);
    sub_1000955E0(v13, v10, &qword_100CB5478, &qword_100A48D80);
    v20 = type metadata accessor for URLComponents();
    if (sub_100024D10(v10, 1, v20) == 1)
    {
      sub_1000180EC(v13, &qword_100CB5478, &qword_100A48D80);
      sub_1000180EC(v10, &qword_100CB5478, &qword_100A48D80);
      return 0;
    }

    else
    {
      v14 = URLComponents.port.getter();
      v22 = v21;
      sub_1000180EC(v13, &qword_100CB5478, &qword_100A48D80);
      (*(*(v20 - 8) + 8))(v10, v20);
      if (v22)
      {
        return 0;
      }
    }
  }

  return v14;
}

uint64_t sub_1006B819C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GeocodeService();
  swift_allocObject();
  GeocodeService.init()();
  type metadata accessor for GeocodeManager();
  swift_allocObject();
  GeocodeManager.init(service:store:)();
  OptionsProvider = type metadata accessor for WeatherServiceFetchOptionsProvider();
  swift_allocObject();
  result = WeatherServiceFetchOptionsProvider.init(geocodeManager:)();
  a1[3] = OptionsProvider;
  a1[4] = &protocol witness table for WeatherServiceFetchOptionsProvider;
  *a1 = result;
  return result;
}

uint64_t sub_1006B825C()
{
  type metadata accessor for GeocodeStore();
  swift_allocObject();
  return GeocodeStore.init()();
}

void *sub_1006B8294@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1958, &qword_100A76D40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for WDSAuthenticatorFactory();
    swift_allocObject();
    result = WDSAuthenticatorFactory.init(clientConfigurationProvider:)();
    a2[3] = v4;
    a2[4] = &protocol witness table for WDSAuthenticatorFactory;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1006B833C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for URL();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for WDSEndpoint();
  v16 = *(v4 - 8);
  v17 = v4;
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CD1950, &qword_100A76D38);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for WDSEndpoint();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD18E8, &qword_100A76CE0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v20)
  {
    sub_100013188(&v19, v21);
    sub_1000161C0(a1, a1[3]);
    dispatch thunk of ResolverType.resolve<A>(_:)();
    result = sub_100024D10(v9, 1, v10);
    if (result != 1)
    {
      (*(v11 + 32))(v13, v9, v10);
      WDSEndpoint.url.getter();
      WDSEndpoint.portOverrideProvider.getter();
      WDSEndpoint.init(url:portOverrideProvider:)();
      sub_1000161C0(v21, v21[3]);
      dispatch thunk of WDSAuthenticatorFactoryType.makeAuthenticator(for:)();
      (*(v16 + 8))(v6, v17);
      (*(v11 + 8))(v13, v10);
      return sub_100006F14(v21);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B864C()
{
  sub_10022C350(&qword_100CD18F8, &qword_100A76CF0);
  v0 = swift_allocObject();
  Logger.init(subsystem:category:)();
  return v0;
}

void *sub_1006B86C4(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBB48, &qword_100A6B400);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBB40, &qword_100A6B3F8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBB78, &qword_100A6B430);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14A0, &qword_100A41A30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v4)
  {
    type metadata accessor for NotificationsStoreObserver();
    swift_allocObject();
    return sub_1000430B4(&v9, &v7, &v5, &v3);
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1006B883C(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB9788, &unk_100A4E230);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v16)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1938, &unk_100A9F510);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v14)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD0360, &unk_100AA3E80);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1940, &unk_100A9F500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v10)
  {
    v3 = sub_10002D7F8(v15, v16);
    v4 = __chkstk_darwin(v3);
    v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6, v4);
    v8 = sub_1006BA2B4(*v6, &v13, &v11, &v9);
    sub_100006F14(v15);
    return v8;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1006B8A4C(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA718, &unk_100A4FE10);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1930, &qword_100A76D28);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v3 != 2)
  {
    type metadata accessor for ReverseGeocodingStoreObserver();
    swift_allocObject();
    return sub_1000451C8(v8, v9, v10, v11, &v6, &v4, v3 & 1);
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1006B8BF8(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1928, &qword_100A76D20);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v22)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CBE208, &unk_100A55900);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v20)
    {
      v3 = sub_10002D7F8(v21, v22);
      v4 = __chkstk_darwin(v3);
      v6 = (&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6, v4);
      v8 = *v6;
      v9 = type metadata accessor for AppStoreReviewManager();
      v18[3] = v9;
      v18[4] = &off_100C5A380;
      v18[0] = v8;
      type metadata accessor for SavedLocationsStoreObserver();
      v10 = swift_allocObject();
      v11 = sub_10002D7F8(v18, v9);
      v12 = __chkstk_darwin(v11);
      v14 = (&v18[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v15 + 16))(v14, v12);
      v16 = *v14;
      v10[7] = v9;
      v10[8] = &off_100C5A380;
      v10[3] = 0;
      v10[4] = v16;
      v10[2] = 0;
      sub_100013188(&v19, (v10 + 9));
      sub_100006F14(v18);
      sub_100006F14(v21);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1006B8E60(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherDataUpdater();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA728, &unk_100A60C40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1918, &qword_100A76D10);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v11)
  {
    v4 = sub_10002D7F8(v12, v13);
    v5 = __chkstk_darwin(v4);
    v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = sub_10009BAB4(v3, *v7, &v10);
    sub_100006F14(v12);
    return v9;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1006B9058(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), void (*a5)(void *, uint64_t))
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(a2, a3);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v12)
  {
    a4(0);
    v10 = swift_allocObject();
    a5(v11, v10 + 16);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1006B9114(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v2)
  {
    type metadata accessor for WidgetReloadStoreObserver();
    swift_allocObject();
    return sub_100048084(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006B91BC(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for TipCoordinator(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v2 = result;
    type metadata accessor for LocationViewerStoreObserver(0);
    v3 = swift_allocObject();
    v4 = OBJC_IVAR____TtC7Weather27LocationViewerStoreObserver_lastViewedLocationIdentifier;
    v5 = type metadata accessor for Location.Identifier();
    sub_10001B350(v3 + v4, 1, 1, v5);
    *(v3 + 16) = v2;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1006B9258(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1908, &qword_100A76D00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v38)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CB9798, &unk_100A4E240);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v36)
    {
      v3 = sub_10002D7F8(v37, v38);
      v30[2] = v30;
      v4 = __chkstk_darwin(v3);
      v6 = (v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6, v4);
      v8 = sub_10002D7F8(v35, v36);
      v30[1] = v30;
      v9 = __chkstk_darwin(v8);
      v11 = (v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11, v9);
      v13 = *v6;
      v14 = *v11;
      v15 = type metadata accessor for AppContinuationBridge(0);
      v34[3] = v15;
      v34[4] = &off_100C50230;
      v34[0] = v13;
      v16 = type metadata accessor for LocationFinder();
      v32 = v16;
      v33 = &off_100C5EE88;
      v31[0] = v14;
      type metadata accessor for OpenL2HandlerObserver();
      v17 = swift_allocObject();
      v18 = sub_10002D7F8(v34, v15);
      v19 = __chkstk_darwin(v18);
      v21 = (v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21, v19);
      v23 = sub_10002D7F8(v31, v32);
      v24 = __chkstk_darwin(v23);
      v26 = (v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v27 + 16))(v26, v24);
      v28 = *v21;
      v29 = *v26;
      v17[5] = v15;
      v17[6] = &off_100C50230;
      v17[2] = v28;
      v17[10] = v16;
      v17[11] = &off_100C5EE88;
      v17[7] = v29;
      sub_100006F14(v31);
      sub_100006F14(v34);
      sub_100006F14(v35);
      sub_100006F14(v37);
      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}