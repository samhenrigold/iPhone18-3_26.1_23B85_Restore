void *sub_1001849A0()
{
  v1 = v0;
  sub_1000039E8(&qword_1004AA748, &qword_1003F3E10);
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 240;
        v23 = *(v19 + v17 + 96);
        v25 = *(v19 + v17 + 48);
        v24 = *(v19 + v17 + 64);
        v53 = *(v19 + v17 + 80);
        v54 = v23;
        v51 = v25;
        v52 = v24;
        v26 = *(v19 + v17 + 160);
        v28 = *(v19 + v17 + 112);
        v27 = *(v19 + v17 + 128);
        v57 = *(v19 + v17 + 144);
        v58 = v26;
        v55 = v28;
        v56 = v27;
        v29 = *(v19 + v17 + 224);
        v31 = *(v19 + v17 + 176);
        v30 = *(v19 + v17 + 192);
        v61 = *(v19 + v17 + 208);
        v62 = v29;
        v59 = v31;
        v60 = v30;
        v33 = *(v19 + v17 + 16);
        v32 = *(v19 + v17 + 32);
        v48 = *(v19 + v17);
        v49 = v33;
        v50 = v32;
        v34 = (*(v4 + 48) + v18);
        *v34 = v22;
        v34[1] = v21;
        v35 = (*(v4 + 56) + v17);
        v36 = v48;
        v37 = v50;
        v35[1] = v49;
        v35[2] = v37;
        *v35 = v36;
        v38 = v51;
        v39 = v52;
        v40 = v54;
        v35[5] = v53;
        v35[6] = v40;
        v35[3] = v38;
        v35[4] = v39;
        v41 = v55;
        v42 = v56;
        v43 = v58;
        v35[9] = v57;
        v35[10] = v43;
        v35[7] = v41;
        v35[8] = v42;
        v44 = v59;
        v45 = v60;
        v46 = v62;
        v35[13] = v61;
        v35[14] = v46;
        v35[11] = v44;
        v35[12] = v45;

        result = sub_100189980(&v48, &v47);
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

uint64_t sub_100184BA4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_10018555C(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_100184D50(void *a1, void *a2, void *a3, void *a4)
{
  v8 = *v4;
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_100189A44(&qword_1004A6DB8, type metadata accessor for CFString, &unk_1003F3558);
  _CFObject.hash(into:)();
  v35 = a3;
  _CFObject.hash(into:)();
  v34 = a4;
  _CFObject.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    do
    {
      v13 = *(v8 + 48) + 24 * v11;
      v14 = *(v13 + 8);
      v15 = *(v13 + 16);
      v16 = *v13;
      v17 = v14;
      v18 = v15;
      if (static _CFObject.== infix(_:_:)() & 1) != 0 && (static _CFObject.== infix(_:_:)())
      {
        v19 = static _CFObject.== infix(_:_:)();

        if (v19)
        {

          v20 = *(v8 + 48) + 24 * v11;
          v21 = *v20;
          v22 = *(v20 + 8);
          v23 = *(v20 + 16);
          *a1 = *v20;
          a1[1] = v22;
          a1[2] = v23;
          v24 = v21;
          v25 = v22;
          v26 = v23;
          return 0;
        }
      }

      else
      {
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v32;
  v29 = a2;
  v30 = v35;
  v31 = v34;
  sub_100185744(v29, v30, v31, v11, isUniquelyReferenced_nonNull_native);
  *v32 = v36;
  *a1 = v29;
  a1[1] = v30;
  a1[2] = v31;
  return 1;
}

uint64_t sub_100184FEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000039E8(&qword_1004AA790, &qword_1003F3E60);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v18 = Hasher._finalize()();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100185268(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000039E8(&qword_1004AA7C8, &unk_1003F3E98);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = v3;
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
      v32 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 24 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      Hasher.init(_seed:)();
      type metadata accessor for CFString(0);
      sub_100189A44(&qword_1004A6DB8, type metadata accessor for CFString, &unk_1003F3558);
      _CFObject.hash(into:)();
      _CFObject.hash(into:)();
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
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
      v14 = (*(v5 + 48) + 24 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      ++*(v5 + 16);
      v3 = v31;
      v10 = v32;
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
        v32 = (v17 - 1) & v17;
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

    v2 = v30;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10018555C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_100184FEC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1001859B8();
      goto LABEL_16;
    }

    sub_100185C80(v7 + 1);
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for URLResourceKey(0);
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100185744(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a5 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a5)
  {
    sub_100185268(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_100185B08();
      goto LABEL_16;
    }

    sub_100185ED4(v7 + 1);
  }

  v9 = *v5;
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_100189A44(&qword_1004A6DB8, type metadata accessor for CFString, &unk_1003F3558);
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a4 = v10 & ~v11;
  if ((*(v9 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v9 + 48) + 24 * a4;
      v14 = *(v13 + 8);
      v15 = *(v13 + 16);
      v16 = *v13;
      v17 = v14;
      v18 = v15;
      if (static _CFObject.== infix(_:_:)() & 1) != 0 && (static _CFObject.== infix(_:_:)())
      {
        v19 = static _CFObject.== infix(_:_:)();

        if (v19)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
      }

      a4 = (a4 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_16:
  v20 = *v25;
  *(*v25 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v21 = (*(v20 + 48) + 24 * a4);
  *v21 = a1;
  v21[1] = a2;
  v21[2] = a3;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

id sub_1001859B8()
{
  v1 = v0;
  sub_1000039E8(&qword_1004AA790, &qword_1003F3E60);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

id sub_100185B08()
{
  v1 = v0;
  sub_1000039E8(&qword_1004AA7C8, &unk_1003F3E98);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v20;
        v22[2] = v21;
        v23 = v19;
        v24 = v20;
        result = v21;
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

uint64_t sub_100185C80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000039E8(&qword_1004AA790, &qword_1003F3E60);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v18 = v17;
      String.hash(into:)();
      v19 = Hasher._finalize()();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
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

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

Swift::Int sub_100185ED4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000039E8(&qword_1004AA7C8, &unk_1003F3E98);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      Hasher.init(_seed:)();
      type metadata accessor for CFString(0);
      sub_100189A44(&qword_1004A6DB8, type metadata accessor for CFString, &unk_1003F3558);
      v22 = v19;
      v23 = v20;
      v24 = v21;
      _CFObject.hash(into:)();
      _CFObject.hash(into:)();
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v5 + 32);
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 24 * v13);
      v3 = v33;
      *v14 = v22;
      v14[1] = v23;
      v14[2] = v24;
      ++*(v5 + 16);
      v10 = v34;
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
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

unint64_t sub_1001861B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004AA798, &qword_1003F3E68);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100013E54(v4, &v11, &qword_1004AA7A0, &qword_1003F3E70);
      v5 = v11;
      result = sub_1000133DC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000279A4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1001862DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004A7D08, &qword_1003F3DC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100013364(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_1001863F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x534F63616DLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1397716596 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 5459817 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x534F6863746177 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100186598(void *a1)
{
  v45 = sub_1000039E8(&qword_1004AA7E0, &qword_1003F3EB8);
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v35 - v2;
  v3 = sub_1000039E8(&qword_1004AA7E8, &qword_1003F3EC0);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v46 = &v35 - v4;
  v5 = sub_1000039E8(&qword_1004AA7F0, &qword_1003F3EC8);
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v48 = &v35 - v6;
  v7 = sub_1000039E8(&qword_1004AA7F8, &qword_1003F3ED0);
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = sub_1000039E8(&qword_1004AA800, &qword_1003F3ED8);
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = sub_1000039E8(&qword_1004AA808, &qword_1003F3EE0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = a1[3];
  v49 = a1;
  sub_10000E2A8(a1, v17);
  sub_10017BA20();
  v18 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_9;
  }

  v19 = v12;
  v36 = v10;
  v20 = v48;
  v50 = v14;
  v21 = v16;
  v22 = KeyedDecodingContainer.allKeys.getter();
  v23 = (2 * *(v22 + 16)) | 1;
  v51 = v22;
  v52 = v22 + 32;
  v53 = 0;
  v54 = v23;
  v24 = sub_100190FCC();
  if (v24 == 5 || v53 != v54 >> 1)
  {
    v28 = v13;
    v29 = type metadata accessor for DecodingError();
    v14 = swift_allocError();
    v31 = v30;
    sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
    *v31 = &type metadata for ComputerPlatform;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v29);
    swift_willThrow();
    (*(v50 + 8))(v21, v28);
    swift_unknownObjectRelease();
LABEL_9:
    sub_100003C3C(v49);
    return v14;
  }

  v14 = v24;
  if (v24 <= 1u)
  {
    if (v24)
    {
      v55 = 1;
      sub_10017BB70();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v38 + 8))(v9, v39);
    }

    else
    {
      v55 = 0;
      sub_10017BBC4();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v37 + 8))(v19, v36);
    }

    (*(v50 + 8))(v16, v13);
  }

  else if (v24 == 2)
  {
    v55 = 2;
    sub_10017BB1C();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v33 = v50;
    (*(v40 + 8))(v20, v41);
    (*(v33 + 8))(v16, v13);
  }

  else
  {
    v25 = v50;
    v26 = v21;
    if (v24 == 3)
    {
      v55 = 3;
      sub_10017BAC8();
      v27 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v43 + 8))(v27, v44);
    }

    else
    {
      v55 = 4;
      sub_10017BA74();
      v34 = v47;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v42 + 8))(v34, v45);
    }

    (*(v25 + 8))(v26, v13);
  }

  swift_unknownObjectRelease();
  sub_100003C3C(v49);
  return v14;
}

uint64_t sub_100186CFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100186DEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000039E8(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100013364(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
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

unint64_t sub_100186EE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004AA7C0, &qword_1003F3E90);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100013364(v5, v6);
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

unint64_t sub_100186FEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004AA7A8, &qword_1003F3E78);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100013E54(v4, &v11, &qword_1004AA7B0, &qword_1003F3E80);
      v5 = v11;
      result = sub_100181500(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000279A4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_100187114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004AA728, &qword_1003F3DD8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100013364(v5, v6);
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

unint64_t sub_100187218(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AA770, &qword_1003F3E38);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000039E8(&qword_1004AA778, &unk_1003F3E40);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100013E54(v9, v5, &qword_1004AA770, &qword_1003F3E38);
      result = sub_1001815D0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CodingUserInfoKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_1000279A4(&v5[v8], (v7[7] + 32 * v13));
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

unint64_t sub_100187404(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AA720, &qword_1003F3DD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000039E8(&qword_1004AA718, &qword_1003F3DC8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100013E54(v9, v5, &qword_1004AA720, &qword_1003F3DD0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100013364(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Config.Cryptex.Cryptex(0);
      result = sub_10018991C(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_1001875D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000039E8(&qword_1004AA748, &qword_1003F3E10);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 240);
  v56 = *(a1 + 224);
  v57 = v4;
  v5 = *(a1 + 272);
  v58 = *(a1 + 256);
  v59 = v5;
  v6 = *(a1 + 176);
  v52 = *(a1 + 160);
  v53 = v6;
  v7 = *(a1 + 208);
  v54 = *(a1 + 192);
  v55 = v7;
  v8 = *(a1 + 112);
  v48 = *(a1 + 96);
  v49 = v8;
  v9 = *(a1 + 144);
  v50 = *(a1 + 128);
  v51 = v9;
  v10 = *(a1 + 48);
  v44 = *(a1 + 32);
  v45 = v10;
  v11 = *(a1 + 80);
  v46 = *(a1 + 64);
  v47 = v11;
  v13 = *(&v44 + 1);
  v12 = v44;
  sub_100013E54(&v44, v43, &qword_1004AA760, &qword_1003F3E28);
  result = sub_100013364(v12, v13);
  if (v15)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v16 = (a1 + 288);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v17 = (v3[6] + 16 * result);
    *v17 = v12;
    v17[1] = v13;
    v18 = (v3[7] + 240 * result);
    v19 = v45;
    v20 = v47;
    v18[1] = v46;
    v18[2] = v20;
    *v18 = v19;
    v21 = v48;
    v22 = v49;
    v23 = v51;
    v18[5] = v50;
    v18[6] = v23;
    v18[3] = v21;
    v18[4] = v22;
    v24 = v52;
    v25 = v53;
    v26 = v55;
    v18[9] = v54;
    v18[10] = v26;
    v18[7] = v24;
    v18[8] = v25;
    v27 = v56;
    v28 = v57;
    v29 = v59;
    v18[13] = v58;
    v18[14] = v29;
    v18[11] = v27;
    v18[12] = v28;
    v30 = v3[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      break;
    }

    v3[2] = v32;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v33 = v16 + 16;
    v34 = v16[13];
    v56 = v16[12];
    v57 = v34;
    v35 = v16[15];
    v58 = v16[14];
    v59 = v35;
    v36 = v16[9];
    v52 = v16[8];
    v53 = v36;
    v37 = v16[11];
    v54 = v16[10];
    v55 = v37;
    v38 = v16[5];
    v48 = v16[4];
    v49 = v38;
    v39 = v16[7];
    v50 = v16[6];
    v51 = v39;
    v40 = v16[1];
    v44 = *v16;
    v45 = v40;
    v41 = v16[3];
    v46 = v16[2];
    v47 = v41;
    v13 = *(&v44 + 1);
    v12 = v44;
    sub_100013E54(&v44, v43, &qword_1004AA760, &qword_1003F3E28);
    result = sub_100013364(v12, v13);
    v16 = v33;
    if (v42)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1001877F8(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AA768, &qword_1003F3E30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000039E8(&qword_1004AA730, &qword_1003F3DE0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100013E54(v9, v5, &qword_1004AA768, &qword_1003F3E30);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100013364(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for URL();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_1001879E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004AA780, &qword_1003F3E50);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100181630(v5, v6);
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

unint64_t sub_100187AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004A7CC8, &unk_1003779E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_1000318C0(v7, v8, v9, v10);
      result = sub_100013364(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 16 * result);
      *v14 = v7;
      v14[1] = v8;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_100187C00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004AA738, &qword_1003F3DE8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100013E54(v4, v13, &qword_1004AA740, &unk_1003F3DF0);
      result = sub_100013470(v13);
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
      result = sub_1000279A4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100187D3C()
{
  result = qword_1004AAE50;
  if (!qword_1004AAE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAE50);
  }

  return result;
}

uint64_t sub_100187D90(uint64_t a1, uint64_t a2)
{
  v14 = 60;
  v4 = IOKitWaitQuiet(kIOMainPortDefault, &v14);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000270B4(v5, qword_1004B00F8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, "IOKitWaitQuiet returned %d", v8, 8u);
  }

  if ((a2 & 0x100000000) != 0)
  {
    result = shim_reboot3();
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = shim_reboot3_with_purpose(a1);
  if (result)
  {
LABEL_9:
    v10 = result;
    sub_100187D3C();
    v11 = swift_allocError();
    *v12 = v10;
    sub_100187FC0();
    swift_allocError();
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *v13 = v11;
    *(v13 + 24) = 1;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_100187F6C()
{
  result = qword_1004AA4A0;
  if (!qword_1004AA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA4A0);
  }

  return result;
}

unint64_t sub_100187FC0()
{
  result = qword_1004AA4A8;
  if (!qword_1004AA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA4A8);
  }

  return result;
}

unint64_t sub_100188018()
{
  result = qword_1004AA4B0;
  if (!qword_1004AA4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA4B0);
  }

  return result;
}

uint64_t sub_100188074@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_1001880C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(**a2 + 120);

  return v4(v5);
}

uint64_t dispatch thunk of Computer.set(computerName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100189CAC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of Computer.set(hostName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100189CAC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of Computer.set(localHostName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100189CAC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RealComputer.set(computerName:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100001FE0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of RealComputer.set(hostName:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100189CAC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of RealComputer.set(localHostName:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 160) + **(*v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100189CAC;

  return v8(a1, a2);
}

unint64_t sub_100189444()
{
  result = qword_1004AA6B0;
  if (!qword_1004AA6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6B0);
  }

  return result;
}

unint64_t sub_10018949C()
{
  result = qword_1004AA6B8;
  if (!qword_1004AA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6B8);
  }

  return result;
}

unint64_t sub_1001894F4()
{
  result = qword_1004AA6C0;
  if (!qword_1004AA6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6C0);
  }

  return result;
}

unint64_t sub_10018954C()
{
  result = qword_1004AA6C8;
  if (!qword_1004AA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6C8);
  }

  return result;
}

unint64_t sub_1001895A4()
{
  result = qword_1004AA6D0;
  if (!qword_1004AA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6D0);
  }

  return result;
}

unint64_t sub_1001895FC()
{
  result = qword_1004AA6D8;
  if (!qword_1004AA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6D8);
  }

  return result;
}

unint64_t sub_100189654()
{
  result = qword_1004AA6E0;
  if (!qword_1004AA6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6E0);
  }

  return result;
}

unint64_t sub_1001896AC()
{
  result = qword_1004AA6E8;
  if (!qword_1004AA6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6E8);
  }

  return result;
}

unint64_t sub_100189704()
{
  result = qword_1004AA6F0;
  if (!qword_1004AA6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6F0);
  }

  return result;
}

unint64_t sub_10018975C()
{
  result = qword_1004AA6F8;
  if (!qword_1004AA6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6F8);
  }

  return result;
}

unint64_t sub_1001897B4()
{
  result = qword_1004AA700;
  if (!qword_1004AA700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA700);
  }

  return result;
}

unint64_t sub_10018980C()
{
  result = qword_1004AA708;
  if (!qword_1004AA708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA708);
  }

  return result;
}

unint64_t sub_100189864()
{
  result = qword_1004AA710;
  if (!qword_1004AA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA710);
  }

  return result;
}

uint64_t sub_1001898B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Config.Cryptex.Cryptex(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018991C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Config.Cryptex.Cryptex(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001899DC()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100189A44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100189A8C()
{
  result = qword_1004A7A80;
  if (!qword_1004A7A80)
  {
    sub_100003A94(&qword_1004A7A78, &qword_1003F2F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7A80);
  }

  return result;
}

uint64_t sub_100189B00()
{
  v1 = sub_1000039E8(&qword_1004AA7D0, &unk_1003F3EA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100189BD0()
{
  sub_1000039E8(&qword_1004AA7D0, &unk_1003F3EA8);
  v1 = *(v0 + 16);

  return sub_100181468(v1);
}

uint64_t sub_100189C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
}

unint64_t sub_100189C58()
{
  result = qword_1004AA7D8;
  if (!qword_1004AA7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA7D8);
  }

  return result;
}

char *UUID.init(md5:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Insecure.MD5Digest();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  (*(v5 + 16))(v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  sub_10018EE20(&qword_1004AA810, &type metadata accessor for Insecure.MD5Digest, &protocol conformance descriptor for Insecure.MD5Digest);
  dispatch thunk of Sequence.makeIterator()();
  v8 = v30;
  v7 = v31;
  v9 = *(v30 + 16);
  v28 = v5;
  v29 = v4;
  v27 = a2;
  if (v31 == v9)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_3:

    v12 = *(v10 + 2);
    if (v12)
    {
      if (v12 != 1)
      {
        if (v12 >= 3)
        {
          if (v12 != 3)
          {
            if (v12 >= 5)
            {
              if (v12 != 5)
              {
                if (v12 >= 7)
                {
                  if (v12 != 7)
                  {
                    if (v12 >= 9)
                    {
                      if (v12 != 9)
                      {
                        if (v12 >= 0xB)
                        {
                          if (v12 != 11)
                          {
                            if (v12 >= 0xD)
                            {
                              if (v12 != 13)
                              {
                                if (v12 >= 0xF)
                                {
                                  if (v12 != 15)
                                  {
                                    v13 = v10[32];
                                    v25 = v10[33];
                                    v26 = v13;
                                    v24 = v10[34];
                                    v14 = v10[35];
                                    v22[2] = v10[36];
                                    v22[3] = v14;
                                    v22[1] = v10[37];
                                    v23 = a1;

                                    UUID.init(uuid:)();
                                    return (*(v28 + 8))(v23, v29);
                                  }

                                  goto LABEL_45;
                                }

LABEL_44:
                                __break(1u);
LABEL_45:
                                __break(1u);
                                goto LABEL_46;
                              }

LABEL_43:
                              __break(1u);
                              goto LABEL_44;
                            }

LABEL_42:
                            __break(1u);
                            goto LABEL_43;
                          }

LABEL_41:
                          __break(1u);
                          goto LABEL_42;
                        }

LABEL_40:
                        __break(1u);
                        goto LABEL_41;
                      }

LABEL_39:
                      __break(1u);
                      goto LABEL_40;
                    }

LABEL_38:
                    __break(1u);
                    goto LABEL_39;
                  }

LABEL_37:
                  __break(1u);
                  goto LABEL_38;
                }

LABEL_36:
                __break(1u);
                goto LABEL_37;
              }

LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  result = sub_100012054(0, 1, 1, _swiftEmptyArrayStorage, &qword_1004A6148, &qword_1003769F0);
  if (v7 < v9)
  {
    v10 = result;
    v15 = v7;
    v16 = &qword_1003769F0;
    while ((v7 & 0x8000000000000000) == 0)
    {
      if (v15 >= *(v8 + 16))
      {
        goto LABEL_29;
      }

      v17 = *(v8 + 32 + v15);
      v19 = *(v10 + 2);
      v18 = *(v10 + 3);
      if (v19 >= v18 >> 1)
      {
        v20 = v10;
        v21 = v16;
        result = sub_100012054((v18 > 1), v19 + 1, 1, v20, &qword_1004A6148, v16);
        v16 = v21;
        v10 = result;
      }

      ++v15;
      *(v10 + 2) = v19 + 1;
      v10[v19 + 32] = v17;
      if (v9 == v15)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t SKAPFSDisk.rawAPFSRole.getter()
{
  v1 = [v0 diskIdentifier];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.utf8CString.getter();
  }

  APFSVolumeRole();
  swift_unknownObjectRelease();
  return 0;
}

id SKManager.internalDisk()()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 diskForPath:v1];

  if (!v2)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000270B4(v7, qword_1004B00F8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to find internal disk", v10, 2u);
    }

    return 0;
  }

  sub_10018C8AC();
  if (![v2 isKindOfClass:swift_getObjCClassFromMetadata()])
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000270B4(v11, qword_1004B00F8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Internal disk is not an APFS container", v14, 2u);
    }

    return 0;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = v2;
  result = [v3 container];
  if (result)
  {
    v6 = result;

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *SKManager.allVolumes()()
{
  result = SKManager.internalDisk()();
  if (result)
  {
    v1 = result;
    v2 = [result volumesExcludingSnapshots];
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_10018A3E8(v3);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10018A3E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v6 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      sub_100003CA0(v4, &v5);
      sub_10018C8AC();
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

void (**SKManager.findVolume(withName:uuid:)(uint64_t a1, void *a2))(uint64_t, uint64_t)
{
  v43._countAndFlagsBits = a1;
  v43._object = a2;
  v2 = type metadata accessor for Insecure.MD5Digest();
  __chkstk_darwin(v2 - 8);
  v42 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Insecure.MD5();
  v4 = *(v41 - 8);
  __chkstk_darwin(v41);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for UUID();
  v7 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = SKManager.internalDisk()();
  if (result)
  {
    v10 = result;
    v11 = [result volumesExcludingSnapshots];
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = sub_10018A3E8(v12);

    if (v13 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v15 = 0;
      v44 = v13 & 0xFFFFFFFFFFFFFF8;
      v45 = v13 & 0xC000000000000001;
      v36 = v7 + 1;
      v37 = (v4 + 8);
      v39 = v13;
      v35 = i;
      while (1)
      {
        if (v45)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v44 + 16))
          {
            goto LABEL_23;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v7 = v16;
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v18 = [v16 volumeUUID];
        if (v18)
        {
          v19 = v18;
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v4 = v21;
        }

        else
        {
          v20 = 0;
          v4 = 0;
        }

        Insecure.MD5.init()();
        object = v43._object;

        v23 = sub_10018AD60(v43._countAndFlagsBits, object);
        v25 = v24;
        sub_10018D7AC(v23, v24, v6);
        sub_100031928(v23, v25);
        v26 = v42;
        Insecure.MD5.finalize()();
        v27 = v38;
        UUID.init(md5:)(v26, v38);
        (*v37)(v6, v41);
        v28 = UUID.uuidString.getter();
        v30 = v29;
        (*v36)(v27, v40);
        if (v4)
        {
          if (v20 == v28 && v4 == v30)
          {

LABEL_21:

            return v7;
          }

          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v31)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }

        ++v15;
        v13 = v39;
        if (v17 == v35)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_25:
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    v32._countAndFlagsBits = 0xD00000000000002ALL;
    v32._object = 0x800000010043DCA0;
    String.append(_:)(v32);
    String.append(_:)(v43);
    v33._object = 0x800000010043DCD0;
    v33._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v33);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static Volume.uuidForName(name:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Insecure.MD5Digest();
  __chkstk_darwin(v6 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Insecure.MD5();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Insecure.MD5.init()();

  v13 = sub_10018AD60(a1, a2);
  v15 = v14;
  sub_10018D7AC(v13, v14, v12);
  sub_100031928(v13, v15);
  Insecure.MD5.finalize()();
  UUID.init(md5:)(v8, a3);
  return (*(v10 + 8))(v12, v9);
}

void SKManager.withUnsafeContainerNodeCString<A>(body:)(void (*a1)(id))
{
  v2 = SKManager.internalDisk()();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 diskIdentifier];
    if (v4)
    {
      v5 = v4;
      a1([v4 fileSystemRepresentation]);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id Volume.name.getter()
{
  result = [*(v0 + 24) volumeName];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Volume.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Insecure.MD5Digest();
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Insecure.MD5();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = (*(*v1 + 144))(v8);
  v13 = v12;
  Insecure.MD5.init()();

  v14 = sub_10018AD60(v11, v13);
  v16 = v15;
  sub_10018D7AC(v14, v15, v10);
  sub_100031928(v14, v16);
  Insecure.MD5.finalize()();
  UUID.init(md5:)(v5, a1);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10018AD60(uint64_t a1, unint64_t a2)
{
  v43[0] = a1;
  v43[1] = a2;
  *&v46 = a1;
  *(&v46 + 1) = a2;

  sub_1000039E8(&qword_1004AAA38, &qword_1003F40E0);
  if (swift_dynamicCast())
  {
    sub_100003C88(__src, &v47);
    sub_10000E2A8(&v47, v48);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v46;
    sub_100003C3C(&v47);
    goto LABEL_63;
  }

  v45 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10018EE68(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v6 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = _StringObject.sharedUTF8.getter();
  }

  sub_10018DA90(&v47, v6, v7);
  v8 = *(&v47 + 1);
  v9 = v47;
  if (*(&v47 + 1) >> 60 != 15)
  {
    __src[0] = v47;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_10018E100(v10);
  *(&__src[0] + 1) = v11;
  __chkstk_darwin(*&__src[0]);
  v38[2] = v43;
  v14 = sub_10018DB58(sub_10018EED0, v38, v12, v13);
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v21 == 2)
    {
      v23 = *(*&__src[0] + 16);
      v22 = *(*&__src[0] + 24);
      v24 = __OFSUB__(v22, v23);
      v25 = v22 - v23;
      if (v24)
      {
        goto LABEL_70;
      }

      if (v17 != v25)
      {
        goto LABEL_23;
      }
    }

    else if (v17)
    {
      v26 = 0;
      goto LABEL_60;
    }
  }

  else if (v21)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v17 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v21 == 2)
      {
        v26 = *(*&__src[0] + 24);
      }

      else if (v21 == 1)
      {
        v26 = *&__src[0] >> 32;
      }

      else
      {
        v26 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v26 >= v17)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v17 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v40 = v9;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v27 = v14 & 0xFFFFFFFFFFFFLL;
  }

  *(&v46 + 7) = 0;
  *&v46 = 0;
  if (4 * v27 == v16 >> 14)
  {
    goto LABEL_57;
  }

  v39 = v8;
  LOBYTE(v28) = 0;
  v29 = (v14 >> 59) & 1;
  if ((v15 & 0x1000000000000000) == 0)
  {
    LOBYTE(v29) = 1;
  }

  v30 = 4 << v29;
  v41 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v42 = v15 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v31 = v20 & 0xC;
    v32 = v20;
    if (v31 == v30)
    {
      v32 = sub_1000C34F8(v20, v18, v19);
    }

    v33 = v32 >> 16;
    if (v32 >> 16 >= v27)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v10 = String.UTF8View._foreignCount()();
      v9 = 0;
      v8 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v19 & 0x1000000000000000) != 0)
    {
      v35 = String.UTF8View._foreignSubscript(position:)();
      if (v31 != v30)
      {
        goto LABEL_46;
      }
    }

    else if ((v19 & 0x2000000000000000) != 0)
    {
      *&v47 = v18;
      *(&v47 + 1) = v42;
      v35 = *(&v47 + v33);
      if (v31 != v30)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v34 = v41;
      if ((v18 & 0x1000000000000000) == 0)
      {
        v34 = _StringObject.sharedUTF8.getter();
      }

      v35 = *(v34 + v33);
      if (v31 != v30)
      {
LABEL_46:
        if ((v19 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v20 = sub_1000C34F8(v20, v18, v19);
    if ((v19 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v20 = (v20 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v27 <= v20 >> 16)
    {
      goto LABEL_66;
    }

    v20 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v46 + v28) = v35;
    v28 = v28 + 1;
    if ((v28 >> 8))
    {
      goto LABEL_65;
    }

    if (v28 == 14)
    {
      *&v47 = v46;
      *(&v47 + 6) = *(&v46 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v28) = 0;
    }
  }

  while (4 * v27 != v20 >> 14);
  v8 = v39;
  if (v28)
  {
    *&v47 = v46;
    *(&v47 + 6) = *(&v46 + 6);
    Data._Representation.append(contentsOf:)();
    sub_100031914(v40, v8);
    goto LABEL_62;
  }

LABEL_57:

  sub_100031914(v40, v8);
LABEL_63:
  v36 = __src[0];
  sub_1000318C0(*&__src[0], *(&__src[0] + 1), v4, v5);

  sub_100031928(v36, *(&v36 + 1));
  return v36;
}

uint64_t Volume.__allocating_init(createVolumeNamed:secret:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  Volume.init(createVolumeNamed:secret:)(a1, a2, a3, a4);
  return v8;
}

uint64_t Volume.init(createVolumeNamed:secret:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v90 = a4;
  v92 = a3;
  v8 = type metadata accessor for Insecure.MD5Digest();
  __chkstk_darwin(v8 - 8);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Insecure.MD5();
  v11 = *(v87 - 8);
  __chkstk_darwin(v87);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v91 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v80 - v18;
  v86 = v5;
  *(v5 + 16) = 0;
  v85 = (v5 + 16);
  Insecure.MD5.init()();

  v84 = a1;
  v89 = a2;
  v20 = sub_10018AD60(a1, a2);
  v22 = v21;
  v23 = v88;
  sub_10018D7AC(v20, v21, v13);
  v88 = v23;
  v24 = v22;
  v25 = v92;
  sub_100031928(v20, v24);
  Insecure.MD5.finalize()();
  UUID.init(md5:)(v10, v19);
  v26 = v91;
  (*(v11 + 8))(v13, v87);
  v27 = v90;
  v28 = objc_opt_self();
  v29 = [v28 syncSharedManager];
  (*(v26 + 16))(v17, v19, v14);
  type metadata accessor for CacheVolumeKeyManager(0);
  swift_allocObject();
  sub_1000318C0(v25, v27, v30, v31);
  v32 = v88;
  v33 = CacheVolumeKeyManager.init(forNewVolumeWith:secret:)(v17, v25, v27);
  if (v32)
  {
    (*(v26 + 8))(v19, v14);
    sub_100031928(v25, v27);

LABEL_7:

    v42 = v86;

    type metadata accessor for Volume();
    swift_deallocPartialClassInstance();
    return v42;
  }

  v83 = 0;
  v34 = v85;
  v88 = v33;
  v81 = v28;
  v87 = v19;
  v82 = v14;
  v35 = v29;
  v36 = SKManager.internalDisk()();
  if (!v36)
  {
    __break(1u);
    goto LABEL_17;
  }

  v37 = v36;
  v38 = [v36 diskIdentifier];
  v35 = v88;
  if (!v38)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v39 = v38;
  v40 = [v38 fileSystemRepresentation];
  v41 = v83;
  (*(*v35 + 336))(v40);
  if (v41)
  {
    (*(v91 + 8))(v87, v82);

    sub_100031928(v92, v27);
    goto LABEL_7;
  }

  swift_beginAccess();
  *v34 = v35;

  UUID.uuidString.getter();
  v44 = String._bridgeToObjectiveC()();

  v83 = v44;
  v45 = CFUUIDCreateFromString(kCFAllocatorDefault, v44);
  sub_1000039E8(&qword_1004AA820, &qword_1003F3EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376260;
  v47 = kAPFSVolumeCreateSynchronousKey;
  *(inited + 32) = kAPFSVolumeCreateSynchronousKey;
  *(inited + 40) = 1;
  v48 = kAPFSVolumeNameKey;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = v48;
  v49 = v48;
  v50 = v47;
  v51 = String._bridgeToObjectiveC()();
  type metadata accessor for CFString(0);
  *(inited + 80) = v51;
  v52 = kAPFSVolumeRoleKey;
  *(inited + 104) = v53;
  *(inited + 112) = v52;
  *(inited + 120) = 768;
  v54 = kAPFSVolumeUUIDKey;
  *(inited + 144) = &type metadata for Int32;
  *(inited + 152) = v54;
  *(inited + 184) = sub_1000039E8(&qword_1004AA828, &qword_1003F3EF8);
  *(inited + 160) = v45;
  v55 = v54;
  v56 = v45;
  v57 = v52;
  sub_100186FEC(inited);
  swift_setDeallocating();
  sub_1000039E8(&qword_1004AA7B0, &qword_1003F3E80);
  swift_arrayDestroy();
  v28 = sub_1000039E8(&qword_1004AA830, &qword_1003F3F00);
  sub_10018E2A0();
  v58.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v85 = v29;
  v35 = v29;
  v59 = SKManager.internalDisk()();
  if (!v59)
  {
    goto LABEL_18;
  }

  v28 = v59;
  v80 = v56;
  v60 = [v59 diskIdentifier];
  if (v60)
  {
    v61 = v60;
    sub_10018BC8C([v60 fileSystemRepresentation], v58.super.isa);
    v62 = v90;
    isa = v58.super.isa;

    waitTime = 5;
    v64 = IOKitWaitQuiet(kIOMainPortDefault, &waitTime);
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_1000270B4(v65, qword_1004B00F8);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v94 = v69;
      *v68 = 67109378;
      *(v68 + 4) = v64;
      *(v68 + 8) = 2080;
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_100376A40;
      *(v70 + 56) = &type metadata for Int32;
      *(v70 + 64) = &protocol witness table for Int32;
      *(v70 + 32) = v64;
      v71 = String.init(format:_:)();
      v73 = sub_1000026C0(v71, v72, &v94);

      *(v68 + 10) = v73;
      _os_log_impl(&_mh_execute_header, v66, v67, "Recieved IOKitWaitQuite status code: %d = %s", v68, 0x12u);
      sub_100003C3C(v69);
    }

    v74 = v92;
    v75 = v84;
    v76 = v87;
    v77 = [v81 syncSharedManager];

    v78 = v77;
    v79 = SKManager.findVolume(withName:uuid:)(v75, v89);

    sub_100031928(v74, v62);
    (*(v91 + 8))(v76, v82);
    v42 = v86;
    *(v86 + 24) = v79;
    return v42;
  }

LABEL_19:
  __break(1u);

  type metadata accessor for Volume();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

void sub_10018BC8C(uint64_t a1, CFDictionaryRef theDict)
{
  MutableCopy = CFDictionaryCreateMutableCopy(0, 4, theDict);
  v3 = APFSVolumeCreate();

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000270B4(v4, qword_1004B00F8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 67109378;
    *(v7 + 4) = v3;
    *(v7 + 8) = 2080;
    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100376A40;
    *(v9 + 56) = &type metadata for Int32;
    *(v9 + 64) = &protocol witness table for Int32;
    *(v9 + 32) = v3;
    v10 = String.init(format:_:)();
    v12 = sub_1000026C0(v10, v11, &v13);

    *(v7 + 10) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received APFSVolumeCreate status code: %d = %s", v7, 0x12u);
    sub_100003C3C(v8);
  }
}

uint64_t Volume.__allocating_init(existingVolume:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

uint64_t Volume.init(existingVolume:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Volume.unlock()()
{
  v1 = (*(*v0 + 96))();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() syncSharedManager];
    v4 = SKManager.internalDisk()();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 diskIdentifier];
      if (v6)
      {
        v7 = v6;
        (*(*v2 + 336))([v6 fileSystemRepresentation]);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_10018E7AC();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_10018C010()
{
  (*(**(v0 + 24) + 176))();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = sub_1000039E8(&unk_1004A73A0, &qword_100376F70);
  *v1 = v0;
  v1[1] = sub_10018C164;
  v3 = *(v0 + 24);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x2928746E756F6DLL, 0xE700000000000000, sub_10018E800, v3, v2);
}

uint64_t sub_10018C164()
{

  return _swift_task_switch(sub_10018C260, 0, 0);
}

uint64_t sub_10018C260(uint64_t a1)
{
  if (*(v1 + 16))
  {
    swift_willThrow();
  }

  v2 = *(v1 + 8);

  return v2();
}

void sub_10018C2D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AAA28, &qword_1003F40D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 24);
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_10018ED8C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C4E4;
  aBlock[3] = &unk_10048A210;
  v11 = _Block_copy(aBlock);
  v12 = v8;

  [v12 mountWithCompletionBlock:v11];
  _Block_release(v11);
}

uint64_t sub_10018C494(uint64_t a1)
{
  swift_errorRetain();
  sub_1000039E8(&qword_1004AAA28, &qword_1003F40D8);
  return CheckedContinuation.resume(returning:)();
}

void sub_10018C4E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2);
}

uint64_t Volume.description.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  strcpy(v11, "<Volume name:");
  HIWORD(v11[1]) = -4864;
  v6._countAndFlagsBits = (*(*v0 + 144))(v5);
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x3A6469757520;
  v7._object = 0xE600000000000000;
  String.append(_:)(v7);
  (*(*v0 + 152))();
  sub_10018EE20(&qword_1004AA848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return v11[0];
}

uint64_t Volume.deinit()
{

  return v0;
}

uint64_t Volume.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10018C8AC()
{
  result = qword_1004AA818;
  if (!qword_1004AA818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004AA818);
  }

  return result;
}

char *sub_10018C8F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AAA48, &qword_1003F40F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10018CA44(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000039E8(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000039E8(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_10018CB8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AA9D8, &qword_1003F40A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10018CCAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AA9D0, &qword_1003F40A0);
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

char *sub_10018CDE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AA9A8, &qword_1003F4078);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10018CFB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AA9E0, &qword_1003F40B0);
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

char *sub_10018D138(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AA9A0, &qword_1003F4070);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10018D258(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AA998, &qword_1003F4068);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10018D3A0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1000039E8(a5, a6);
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

char *sub_10018D57C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AA990, &unk_1003F8E40);
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

char *sub_10018D6A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AA980, &qword_1003F4058);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_10018D7AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for Insecure.MD5();
      sub_10018EE20(&qword_1004AAA30, &type metadata accessor for Insecure.MD5, &protocol conformance descriptor for Insecure.MD5);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10018D9B0(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_10018D9B0(v5, v6);
  }

  type metadata accessor for Insecure.MD5();
  sub_10018EE20(&qword_1004AAA30, &type metadata accessor for Insecure.MD5, &protocol conformance descriptor for Insecure.MD5);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_10018D9B0(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for Insecure.MD5();
      sub_10018EE20(&qword_1004AAA30, &type metadata accessor for Insecure.MD5, &protocol conformance descriptor for Insecure.MD5);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_10018DA90@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_100346FCC(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_10018DB58(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = *v4;
  v8 = v4[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v10)
    {
      sub_100031928(v9, v8);
      v21[0] = v9;
      LOWORD(v21[1]) = v8;
      BYTE2(v21[1]) = BYTE2(v8);
      BYTE3(v21[1]) = BYTE3(v8);
      BYTE4(v21[1]) = BYTE4(v8);
      BYTE5(v21[1]) = BYTE5(v8);
      BYTE6(v21[1]) = BYTE6(v8);
      result = a1(&v19, v21, v21 + BYTE6(v8));
      if (!v5)
      {
        result = v19;
      }

      v12 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v6 = v21[0];
      v6[1] = v12;
      return result;
    }

    v14 = v8 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100031928(v9, v8);
    *v6 = xmmword_1003780A0;
    sub_100031928(0, 0xC000000000000000);
    v15 = v9 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v15 < v9)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v9, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v14 = v16;
    }

    if (v15 >= v9)
    {

      v17 = sub_10018DFFC(v9, v9 >> 32, a1);

      v13 = v14 | 0x4000000000000000;
      if (!v5)
      {
        *v6 = v9;
        v6[1] = v13;
        return v17;
      }

      *v6 = v9;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v10 == 2)
  {

    sub_100031928(v9, v8);
    v19 = v9;
    v20 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *v6 = xmmword_1003780A0;
    sub_100031928(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_10018DFFC(*(v19 + 2), *(v19 + 3), a1);
    v13 = v20 | 0x8000000000000000;
    if (!v5)
    {
      *v6 = v19;
      v6[1] = v13;
      return result;
    }

    *v6 = v19;
LABEL_21:
    v6[1] = v13;
    return result;
  }

  memset(v21, 0, 15);
  result = (a1)(&v19, v21, v21, a3, a4);
  if (!v5)
  {
    return v19;
  }

  return result;
}

_BYTE *sub_10018DEFC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100346FCC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10018E1A0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10018E21C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_10018DF90(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_10018DFFC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_10018E0B0@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
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

uint64_t sub_10018E100(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_100346FAC(result);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_10018E1A0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10018E21C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_10018E2A0()
{
  result = qword_1004AA838;
  if (!qword_1004AA838)
  {
    sub_100003A94(&qword_1004AA830, &qword_1003F3F00);
    sub_10018EE20(&qword_1004A6CB0, type metadata accessor for CFString, &unk_1003767C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA838);
  }

  return result;
}

uint64_t sub_10018E354(uint64_t a1)
{
  v9 = sub_1000039E8(&qword_1004A71E0, &qword_100376D60);
  v10 = sub_10018EC94();
  v8[0] = a1;
  v2 = sub_10000E2A8(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10018DEFC(v3, &v3[v4], &v7);
  v5 = v7;
  sub_100003C3C(v8);
  return v5;
}

unint64_t _s10DarwinInit6VolumeC4listSDySSACGyFZ_0()
{
  v0 = sub_100187114(_swiftEmptyArrayStorage);
  v1 = [objc_opt_self() sharedManager];
  if (!v1)
  {
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v2 = v1;
  v3 = SKManager.internalDisk()();
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = v3;
  v5 = [v3 volumesExcludingSnapshots];
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_10018A3E8(v6);

  if (v7 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    while ((v7 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_16;
      }

LABEL_13:
      v12 = v10;
      v13 = [v12 diskIdentifier];
      if (v13)
      {
        v14 = v13;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        String.utf8CString.getter();
      }

      APFSVolumeRole();
      swift_unknownObjectRelease();

      ++v9;
      if (v11 == i)
      {
        goto LABEL_19;
      }
    }

    if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v10 = *(v7 + 8 * v9 + 32);
    v11 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_13;
    }

LABEL_16:
    __break(1u);
    __break(1u);
LABEL_17:
    __break(1u);
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  return v0;
}

unint64_t sub_10018E7AC()
{
  result = qword_1004AA840;
  if (!qword_1004AA840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA840);
  }

  return result;
}

unint64_t sub_10018E80C()
{
  result = qword_1004AA850;
  if (!qword_1004AA850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA850);
  }

  return result;
}

uint64_t sub_10018E860@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_10018E8AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(**a2 + 104);

  return v4(v5);
}

uint64_t dispatch thunk of Volume.mount()()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100001FE0;

  return v4();
}

uint64_t dispatch thunk of Volume.destroy()()
{
  v4 = (*(*v0 + 192) + **(*v0 + 192));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100189CAC;

  return v4();
}

unint64_t sub_10018EC94()
{
  result = qword_1004AA068;
  if (!qword_1004AA068)
  {
    sub_100003A94(&qword_1004A71E0, &qword_100376D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA068);
  }

  return result;
}

uint64_t sub_10018ECF8()
{
  v1 = sub_1000039E8(&qword_1004AAA28, &qword_1003F40D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10018ED8C(uint64_t a1)
{
  sub_1000039E8(&qword_1004AAA28, &qword_1003F40D8);

  return sub_10018C494(a1);
}

uint64_t sub_10018EE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
}

uint64_t sub_10018EE20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10018EE68(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AAA40, &qword_1003F40E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10018EED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_10018DF90(sub_10018EF38, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_10018EF58()
{
  v0 = type metadata accessor for Logger();
  sub_1000279B4(v0, static LibCryptex.logger);
  v1 = sub_1000270B4(v0, static LibCryptex.logger);
  if (qword_1004A9F38 != -1)
  {
    swift_once();
  }

  v2 = sub_1000270B4(v0, static Logger.libcryptex);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t LibCryptex.logger.unsafeMutableAddressor()
{
  if (qword_1004A9DF8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000270B4(v0, static LibCryptex.logger);
}

uint64_t static LibCryptex.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9DF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000270B4(v2, static LibCryptex.logger);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10018F12C()
{
  v0 = type metadata accessor for URL();
  sub_1000279B4(v0, qword_1004AAA50);
  sub_1000270B4(v0, qword_1004AAA50);
  return URL.init(fileURLWithPath:)();
}

uint64_t static LibCryptex.personalizeCryptex(at:ticketPath:withVariant:usingAuthorizationService:locatedAt:usingAppleConnect:ginfPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v113 = a5;
  v114 = a8;
  v111 = a6;
  v112 = a3;
  v116 = a4;
  v122 = a9;
  v14 = sub_1000039E8(&qword_1004A9CF8, &qword_10037BF90);
  __chkstk_darwin(v14 - 8);
  v16 = &v104[-v15];
  v17 = type metadata accessor for FilePath();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v110 = &v104[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v109 = &v104[-v22];
  v23 = __chkstk_darwin(v21);
  v120 = &v104[-v24];
  v25 = __chkstk_darwin(v23);
  v27 = &v104[-v26];
  v28 = __chkstk_darwin(v25);
  v30 = &v104[-v29];
  __chkstk_darwin(v28);
  v32 = &v104[-v31];
  sub_10018FEF4(a2, v16);
  v33 = (*(v18 + 48))(v16, 1, v17);
  v124 = v32;
  if (v33 == 1)
  {
    sub_10018FF64(v16);
    (*(v18 + 16))(v32, a1, v17);
    v34 = FilePath.extension.getter();
    if (v35)
    {
      v125[0] = v34;
      v125[1] = v35;
      v36._countAndFlagsBits = 46;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);
      v37._countAndFlagsBits = 0x74656B636974;
      v37._object = 0xE600000000000000;
      String.append(_:)(v37);
    }

    FilePath.extension.setter();
  }

  else
  {
    v38 = *(v18 + 32);
    v38(v30, v16, v17);
    v38(v124, v30, v17);
    v32 = v124;
  }

  if (qword_1004A9DF8 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v40 = sub_1000270B4(v39, static LibCryptex.logger);
  v41 = *(v18 + 16);
  (v41)(v27, v32, v17);
  v42 = v120;
  v118 = a1;
  v115 = v18 + 16;
  v123 = v41;
  (v41)(v120, a1, v17);
  v117 = v40;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  v45 = os_log_type_enabled(v43, v44);
  v121 = v18;
  v119 = v17;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v108 = a7;
    v47 = v46;
    v107 = swift_slowAlloc();
    v125[0] = v107;
    *v47 = 136315394;
    sub_100190550();
    v106 = v43;
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v105 = v44;
    v49 = v42;
    v51 = v50;
    v52 = *(v18 + 8);
    (v52)(v27, v17);
    v53 = sub_1000026C0(v48, v51, v125);

    *(v47 + 4) = v53;
    *(v47 + 12) = 2080;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    v120 = v52;
    (v52)(v49, v17);
    v57 = sub_1000026C0(v54, v56, v125);

    *(v47 + 14) = v57;
    v58 = v106;
    _os_log_impl(&_mh_execute_header, v106, v105, "Writing personalization ticket to output Directory: %s using cryptex: %s", v47, 0x16u);
    swift_arrayDestroy();

    a7 = v108;
  }

  else
  {

    v59 = *(v18 + 8);
    (v59)(v42, v17);
    v120 = v59;
    (v59)(v27, v17);
  }

  v125[0] = _swiftEmptyArrayStorage;
  if (a7)
  {
    sub_1000039E8(&qword_1004AAA18, &qword_1003F5E20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376BB0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = &protocol witness table for String;
    strcpy((inited + 32), "--signing-url");
    *(inited + 46) = -4864;
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = v111;
    *(inited + 80) = a7;

    sub_10034A380(inited);
  }

  v61 = v113;
  if (v113 != 4)
  {
    sub_1000039E8(&qword_1004AAA18, &qword_1003F5E20);
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_100376BB0;
    *(v62 + 56) = &type metadata for String;
    *(v62 + 64) = &protocol witness table for String;
    *(v62 + 32) = 0xD000000000000015;
    *(v62 + 40) = 0x800000010043DD90;
    if (v61 > 1)
    {
      if (v61 == 2)
      {
        v63 = 0xE700000000000000;
        v64 = 0x79726F74636166;
      }

      else
      {
        v63 = 0xE400000000000000;
        v64 = 1701736302;
      }
    }

    else if (v61)
    {
      v63 = 0xE600000000000000;
      v64 = 0x6F6C76616964;
    }

    else
    {
      v63 = 0xE500000000000000;
      v64 = 0x7573746174;
    }

    *(v62 + 96) = &type metadata for String;
    *(v62 + 104) = &protocol witness table for String;
    *(v62 + 72) = v64;
    *(v62 + 80) = v63;
    sub_10034A380(v62);
  }

  if (v114)
  {
    sub_1000039E8(&qword_1004AAA18, &qword_1003F5E20);
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_100376A40;
    *(v65 + 56) = &type metadata for String;
    *(v65 + 64) = &protocol witness table for String;
    strcpy((v65 + 32), "--signing-sso");
    *(v65 + 46) = -4864;
    sub_10034A380(v65);
  }

  sub_1000039E8(&qword_1004AAA18, &qword_1003F5E20);
  v66 = swift_initStackObject();
  *(v66 + 16) = xmmword_100376A40;
  *(v66 + 56) = &type metadata for String;
  *(v66 + 64) = &protocol witness table for String;
  *(v66 + 32) = 0x6C616E6F73726570;
  *(v66 + 40) = 0xEB00000000657A69;
  sub_10034A380(v66);
  v67 = v116;
  if (v116)
  {
    v68 = swift_initStackObject();
    *(v68 + 16) = xmmword_100376BB0;
    *(v68 + 56) = &type metadata for String;
    *(v68 + 64) = &protocol witness table for String;
    *(v68 + 32) = 0x6E61697261762D2DLL;
    *(v68 + 40) = 0xE900000000000074;
    *(v68 + 96) = &type metadata for String;
    *(v68 + 104) = &protocol witness table for String;
    *(v68 + 72) = v112;
    *(v68 + 80) = v67;

    sub_10034A380(v68);
  }

  if (a11)
  {
    v69 = swift_initStackObject();
    *(v69 + 16) = xmmword_100376BB0;
    *(v69 + 56) = &type metadata for String;
    *(v69 + 64) = &protocol witness table for String;
    strcpy((v69 + 32), "--write-ginf");
    *(v69 + 45) = 0;
    *(v69 + 46) = -5120;
    *(v69 + 96) = &type metadata for String;
    *(v69 + 104) = &protocol witness table for String;
    *(v69 + 72) = a10;
    *(v69 + 80) = a11;

    sub_10034A380(v69);
  }

  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_100376260;
  *(v70 + 56) = &type metadata for String;
  *(v70 + 64) = &protocol witness table for String;
  *(v70 + 32) = 0x692D74736F682D2DLL;
  *(v70 + 40) = 0xEF797469746E6564;
  *(v70 + 96) = &type metadata for String;
  *(v70 + 104) = &protocol witness table for String;
  *(v70 + 72) = 0xD00000000000001CLL;
  *(v70 + 80) = 0x800000010043DD70;
  v71 = v119;
  *(v70 + 136) = v119;
  v72 = sub_100190550();
  *(v70 + 144) = v72;
  v73 = sub_100064BF8((v70 + 112));
  v74 = v123;
  v75 = v124;
  v123(v73, v124, v71);
  *(v70 + 176) = v71;
  *(v70 + 184) = v72;
  v76 = sub_100064BF8((v70 + 152));
  v74(v76, v118, v71);
  sub_10034A380(v70);
  if (qword_1004A9E00 != -1)
  {
    swift_once();
  }

  v77 = type metadata accessor for URL();
  v78 = sub_1000270B4(v77, qword_1004AAA50);
  sub_10034B9E0(v78, v125[0]);
  v79 = v121;

  v80 = FilePath.fileExists()();
  if (v81)
  {

LABEL_37:
    v123(v110, v75, v71);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v125[0] = v123;
      *v95 = 136315138;
      v96 = v110;
      v97 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v98;
      v100 = v96;
      v101 = v120;
      (v120)(v100, v71);
      v102 = sub_1000026C0(v97, v99, v125);

      *(v95 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v93, v94, "Personalization didn't produce personalization ticket at %s", v95, 0xCu);
      sub_100003C3C(v123);

      v101(v124, v71);
    }

    else
    {

      v103 = v120;
      (v120)(v110, v71);
      v103(v75, v71);
    }

    v82 = 1;
    return (*(v79 + 56))(v122, v82, 1, v71);
  }

  if (!v80)
  {
    goto LABEL_37;
  }

  v84 = v109;
  v123(v109, v75, v71);
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v125[0] = v88;
    *v87 = 136315138;
    v89 = dispatch thunk of CustomStringConvertible.description.getter();
    v91 = v90;
    (v120)(v84, v71);
    v92 = sub_1000026C0(v89, v91, v125);

    *(v87 + 4) = v92;
    _os_log_impl(&_mh_execute_header, v85, v86, "Successfully wrote personalization ticket to %s", v87, 0xCu);
    sub_100003C3C(v88);
    v75 = v124;
  }

  else
  {

    (v120)(v84, v71);
  }

  (*(v79 + 32))(v122, v75, v71);
  v82 = 0;
  return (*(v79 + 56))(v122, v82, 1, v71);
}

uint64_t sub_10018FEF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A9CF8, &qword_10037BF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018FF64(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004A9CF8, &qword_10037BF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static LibCryptex.installCryptex(at:ticketAt:withVariant:usingAuthorizationService:locatedAt:limitLoadToREM:readWrite:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v14 = &unk_100376000;
  if (a7)
  {
    sub_1000039E8(&qword_1004AAA18, &qword_1003F5E20);
    v17 = a1;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376BB0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = &protocol witness table for String;
    strcpy((inited + 32), "--signing-url");
    *(inited + 46) = -4864;
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = a6;
    *(inited + 80) = a7;

    v19 = inited;
    a1 = v17;
    v14 = &unk_100376000;
    sub_10034A380(v19);
  }

  if (a5 != 4)
  {
    sub_1000039E8(&qword_1004AAA18, &qword_1003F5E20);
    v20 = swift_initStackObject();
    *(v20 + 16) = v14[187];
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = &protocol witness table for String;
    *(v20 + 32) = 0xD000000000000015;
    *(v20 + 40) = 0x800000010043DD90;
    if (a5 > 1u)
    {
      if (a5 == 2)
      {
        v21 = 0xE700000000000000;
        v22 = 0x79726F74636166;
      }

      else
      {
        v21 = 0xE400000000000000;
        v22 = 1701736302;
      }
    }

    else if (a5)
    {
      v21 = 0xE600000000000000;
      v22 = 0x6F6C76616964;
    }

    else
    {
      v21 = 0xE500000000000000;
      v22 = 0x7573746174;
    }

    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = &protocol witness table for String;
    *(v20 + 72) = v22;
    *(v20 + 80) = v21;
    sub_10034A380(v20);
  }

  sub_1000039E8(&qword_1004AAA18, &qword_1003F5E20);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_100376A40;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = &protocol witness table for String;
  *(v23 + 32) = 0x6C6C6174736E69;
  *(v23 + 40) = 0xE700000000000000;
  sub_10034A380(v23);
  if (a4)
  {
    v24 = swift_initStackObject();
    *(v24 + 16) = v14[187];
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = &protocol witness table for String;
    *(v24 + 32) = 0x6E61697261762D2DLL;
    *(v24 + 40) = 0xE900000000000074;
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = &protocol witness table for String;
    *(v24 + 72) = a3;
    *(v24 + 80) = a4;

    sub_10034A380(v24);
  }

  if (a8 != 2 && (a8 & 1) != 0)
  {
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_100376A40;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = &protocol witness table for String;
    *(v25 + 32) = 0xD000000000000013;
    *(v25 + 40) = 0x800000010043DDB0;
    sub_10034A380(v25);
  }

  if (a9 != 2 && (a9 & 1) != 0)
  {
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_100376A40;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = &protocol witness table for String;
    *(v26 + 32) = 0x7277646165722D2DLL;
    *(v26 + 40) = 0xEB00000000657469;
    sub_10034A380(v26);
  }

  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_100376F00;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = &protocol witness table for String;
  strcpy((v27 + 32), "--ticket-path");
  *(v27 + 46) = -4864;
  v28 = FilePath.string.getter();
  *(v27 + 96) = &type metadata for String;
  *(v27 + 104) = &protocol witness table for String;
  *(v27 + 72) = v28;
  *(v27 + 80) = v29;
  v30 = type metadata accessor for FilePath();
  *(v27 + 136) = v30;
  *(v27 + 144) = sub_100190550();
  v31 = sub_100064BF8((v27 + 112));
  (*(*(v30 - 8) + 16))(v31, a1, v30);
  sub_10034A380(v27);
  if (qword_1004A9E00 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for URL();
  v33 = sub_1000270B4(v32, qword_1004AAA50);
  sub_10034B9E0(v33, _swiftEmptyArrayStorage);

  return 1;
}

unint64_t sub_100190550()
{
  result = qword_1004AA058;
  if (!qword_1004AA058)
  {
    type metadata accessor for FilePath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA058);
  }

  return result;
}

uint64_t _s10DarwinInit10LibCryptexO5trust15rootCertificate17usingAppleConnect10signingURLSb10Foundation4DataV_SbSStFZ_0(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v36 = a4;
  v34 = a3;
  v7 = type metadata accessor for NonZeroExit(0);
  v8 = __chkstk_darwin(v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v33 - v11;
  v13 = type metadata accessor for FilePath();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v38 = (v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v18 = v33 - v17;
  static FilePath.newTemporaryPath()(v33 - v17);
  v39 = v18;
  FilePath.save(_:append:)(a1, a2, 0);
  v33[2] = v12;
  v33[3] = v7;
  v33[1] = v10;
  v37 = v13;
  v38 = v14;
  v43 = _swiftEmptyArrayStorage;
  v19 = v35;
  if (v34)
  {
    v20 = sub_10018C9FC(0, 1, 1, _swiftEmptyArrayStorage);
    v22 = v20[2];
    v21 = v20[3];
    if (v22 >= v21 >> 1)
    {
      v20 = sub_10018C9FC((v21 > 1), v22 + 1, 1, v20);
    }

    v41 = &type metadata for String;
    v42 = &protocol witness table for String;
    strcpy(&v40, "--signing-sso");
    HIWORD(v40) = -4864;
    v20[2] = v22 + 1;
    sub_100003C88(&v40, &v20[5 * v22 + 4]);
    v43 = v20;
  }

  sub_1000039E8(&qword_1004AAA18, &qword_1003F5E20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376260;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &protocol witness table for String;
  *(inited + 32) = 0x7473757274;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = &protocol witness table for String;
  *(inited + 72) = 29997;
  *(inited + 80) = 0xE200000000000000;
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = &protocol witness table for String;
  *(inited + 112) = v36;
  *(inited + 120) = v19;

  v24 = FilePath.string.getter();
  *(inited + 176) = &type metadata for String;
  *(inited + 184) = &protocol witness table for String;
  *(inited + 152) = v24;
  *(inited + 160) = v25;
  sub_10034A380(inited);
  if (qword_1004A9E00 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for URL();
  v27 = sub_1000270B4(v26, qword_1004AAA50);
  sub_10034B9E0(v27, v43);
  v28 = v37;

  v30 = v38;
  v29 = v39;
  FilePath.remove()();
  if (v31)
  {
  }

  v30[1](v29, v28);
  return 1;
}

uint64_t sub_100190F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonZeroExit(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100190F70(uint64_t a1)
{
  v2 = type metadata accessor for NonZeroExit(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100190FCC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100191000()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100191038()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10019106C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001910C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x727453726F727265 && a2 == 0xEB00000000676E69)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10019114C(uint64_t a1)
{
  v2 = sub_100191300();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100191188(uint64_t a1)
{
  v2 = sub_100191300();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DarwinInitApplyFailureInfo.encode(to:)(void *a1)
{
  v2 = sub_1000039E8(&qword_1004AAA68, &qword_1003F4120);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000E2A8(a1, a1[3]);
  sub_100191300();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100191300()
{
  result = qword_1004AAA70;
  if (!qword_1004AAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAA70);
  }

  return result;
}

uint64_t DarwinInitApplyFailureInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AAA78, &unk_1003F4128);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_100191300();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return sub_100003C3C(a1);
}

uint64_t DarwinInitApplyStatus.toJSON()()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100191574();
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v0;
}

unint64_t sub_100191574()
{
  result = qword_1004AAA80;
  if (!qword_1004AAA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAA80);
  }

  return result;
}

uint64_t static DarwinInitApplyStatus.fromJSON(_:)()
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10019165C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

unint64_t sub_10019165C()
{
  result = qword_1004AAA88;
  if (!qword_1004AAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAA88);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DarwinInitApplyStatus.save()()
{
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  if (qword_1004A9EA0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000270B4(v2, kDInitStatusFilepath);
  (*(v3 + 16))(v5, v8, v2);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v13[0] = v6;
  v13[1] = v7;
  sub_100191574();
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = v9;
    v12 = v10;

    FilePath.save(_:append:)(v11, v12, 0);
    (*(v3 + 8))(v5, v2);
    sub_100031928(v11, v12);
  }
}

uint64_t static DarwinInitApplyStatus.loadBootStatus()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v43 = *(v2 - 8);
  __chkstk_darwin(v2);
  v42 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for FilePath();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v41 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  if (qword_1004A9EA0 != -1)
  {
    swift_once();
  }

  v44 = v6;
  v13 = sub_1000270B4(v7, kDInitStatusFilepath);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000270B4(v14, qword_1004B00F8);
  v39 = *(v8 + 16);
  v40 = v13;
  v39(v12, v13, v7);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v2;
    v18 = v17;
    v35 = swift_slowAlloc();
    v45 = v35;
    *v18 = 136315138;
    sub_100190550();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = a1;
    v21 = v20;
    (*(v8 + 8))(v12, v7);
    v22 = sub_1000026C0(v19, v21, &v45);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Loading raw data of file at %s", v18, 0xCu);
    sub_100003C3C(v35);

    v2 = v36;
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  v23 = v41;
  v39(v41, v40, v7);
  v24 = v42;
  (*(v43 + 104))(v42, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
  v25 = v44;
  sub_1001746A8(v23, v24, v44);
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  result = (*(v27 + 48))(v25, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v29 = v38;
    v30 = Data.init(contentsOf:options:)();
    if (v29)
    {
      return (*(v27 + 8))(v25, v26);
    }

    else
    {
      v32 = v30;
      v33 = v25;
      v34 = v31;
      (*(v27 + 8))(v33, v26);
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_10019165C();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      return sub_100031928(v32, v34);
    }
  }

  return result;
}

uint64_t sub_100191D88()
{
  if (*v0)
  {
    return 0x73736563637573;
  }

  else
  {
    return 0x6572756C696166;
  }
}

uint64_t sub_100191DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6572756C696166 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100191E98(uint64_t a1)
{
  v2 = sub_100192870();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100191ED4(uint64_t a1)
{
  v2 = sub_100192870();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100191F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1868983913 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100191FB0(uint64_t a1)
{
  v2 = sub_100192918();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100191FEC(uint64_t a1)
{
  v2 = sub_100192918();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100192028(uint64_t a1)
{
  v2 = sub_1001928C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100192064(uint64_t a1)
{
  v2 = sub_1001928C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DarwinInitApplyStatus.encode(to:)(void *a1)
{
  v19 = sub_1000039E8(&qword_1004AAA90, &qword_1003F4138);
  v17 = *(v19 - 8);
  __chkstk_darwin(v19);
  v15 = &v14 - v3;
  v18 = sub_1000039E8(&qword_1004AAA98, &qword_1003F4140);
  v16 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v14 - v4;
  v6 = sub_1000039E8(&qword_1004AAAA0, &qword_1003F4148);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  v10 = v1[1];
  v14 = *v1;
  sub_10000E2A8(a1, a1[3]);
  sub_100192870();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v10 == 1)
  {
    LOBYTE(v20) = 1;
    sub_1001928C4();
    v11 = v15;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v17 + 8))(v11, v19);
  }

  else
  {
    LOBYTE(v20) = 0;
    sub_100192918();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v14;
    v21 = v10;
    sub_10019296C();
    v13 = v18;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    (*(v16 + 8))(v5, v13);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t DarwinInitApplyStatus.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v27 = a2;
  v24 = sub_1000039E8(&qword_1004AAAC8, &qword_1003F4150);
  v26 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v23 - v3;
  v5 = sub_1000039E8(&qword_1004AAAD0, &qword_1003F4158);
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = sub_1000039E8(&qword_1004AAAD8, &unk_1003F4160);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = a1[3];
  v30 = a1;
  sub_10000E2A8(a1, v12);
  sub_100192870();
  v13 = v28;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v28 = v5;
    v14 = v27;
    v15 = KeyedDecodingContainer.allKeys.getter();
    if (*(v15 + 16) == 1)
    {
      if (*(v15 + 32))
      {
        LOBYTE(v29) = 1;
        sub_1001928C4();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v26 + 8))(v4, v24);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        *v14 = xmmword_1003772E0;
      }

      else
      {
        LOBYTE(v29) = 0;
        sub_100192918();
        v20 = v7;
        v21 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_1001929C0();
        v22 = v28;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        (*(v25 + 8))(v20, v22);
        (*(v9 + 8))(v21, v8);
        swift_unknownObjectRelease();
        *v14 = v29;
      }
    }

    else
    {
      v16 = type metadata accessor for DecodingError();
      swift_allocError();
      v18 = v17;
      sub_1000039E8(&qword_1004A7168, &unk_100376CB0);
      *v18 = &type metadata for DarwinInitApplyStatus;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
      swift_willThrow();
      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }
  }

  return sub_100003C3C(v30);
}

unint64_t sub_100192870()
{
  result = qword_1004AAAA8;
  if (!qword_1004AAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAAA8);
  }

  return result;
}

unint64_t sub_1001928C4()
{
  result = qword_1004AAAB0;
  if (!qword_1004AAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAAB0);
  }

  return result;
}

unint64_t sub_100192918()
{
  result = qword_1004AAAB8;
  if (!qword_1004AAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAAB8);
  }

  return result;
}

unint64_t sub_10019296C()
{
  result = qword_1004AAAC0;
  if (!qword_1004AAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAAC0);
  }

  return result;
}

unint64_t sub_1001929C0()
{
  result = qword_1004AAAE0;
  if (!qword_1004AAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAAE0);
  }

  return result;
}

uint64_t sub_100192A24(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_100192A48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100192AA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100192B00(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_100192B88()
{
  result = qword_1004AAAE8;
  if (!qword_1004AAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAAE8);
  }

  return result;
}

unint64_t sub_100192BE0()
{
  result = qword_1004AAAF0;
  if (!qword_1004AAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAAF0);
  }

  return result;
}

unint64_t sub_100192C38()
{
  result = qword_1004AAAF8;
  if (!qword_1004AAAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAAF8);
  }

  return result;
}

unint64_t sub_100192C90()
{
  result = qword_1004AAB00;
  if (!qword_1004AAB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB00);
  }

  return result;
}

unint64_t sub_100192CE8()
{
  result = qword_1004AAB08;
  if (!qword_1004AAB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB08);
  }

  return result;
}

unint64_t sub_100192D40()
{
  result = qword_1004AAB10;
  if (!qword_1004AAB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB10);
  }

  return result;
}

unint64_t sub_100192D98()
{
  result = qword_1004AAB18;
  if (!qword_1004AAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB18);
  }

  return result;
}

unint64_t sub_100192DF0()
{
  result = qword_1004AAB20;
  if (!qword_1004AAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB20);
  }

  return result;
}

unint64_t sub_100192E48()
{
  result = qword_1004AAB28;
  if (!qword_1004AAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB28);
  }

  return result;
}

unint64_t sub_100192EA0()
{
  result = qword_1004AAB30;
  if (!qword_1004AAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB30);
  }

  return result;
}

unint64_t sub_100192EF8()
{
  result = qword_1004AAB38;
  if (!qword_1004AAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB38);
  }

  return result;
}

uint64_t DInitSHA256Digest.init(_:)(uint64_t a1)
{
  sub_100193028(a1);
  sub_1000039E8(&qword_1004A6B48, &unk_100376810);
  sub_10004AF7C();
  v2 = BidirectionalCollection<>.joined(separator:)();
  v3 = type metadata accessor for SHA256Digest();
  (*(*(v3 - 8) + 8))(a1, v3);

  return v2;
}

void *sub_100193028(uint64_t a1)
{
  v2 = type metadata accessor for SHA256Digest();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100193960();
  v6 = dispatch thunk of Sequence.underestimatedCount.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_10000DFF4(0, v6 & ~(v6 >> 63), 0);
  v7 = v34;
  (*(v3 + 16))(v5, a1, v2);
  result = dispatch thunk of Sequence.makeIterator()();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = v33;
    if (v6)
    {
      v10 = v32;
      *&v31 = *(v32 + 16);
      v30 = xmmword_100376A40;
      v11 = v33;
      while (v31 != v11)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v11 >= *(v10 + 16))
        {
          goto LABEL_22;
        }

        v12 = *(v10 + 32 + v11);
        sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
        v13 = swift_allocObject();
        *(v13 + 16) = v30;
        *(v13 + 56) = &type metadata for UInt8;
        *(v13 + 64) = &protocol witness table for UInt8;
        *(v13 + 32) = v12;
        result = String.init(format:_:)();
        v34 = v7;
        v16 = v7[2];
        v15 = v7[3];
        if (v16 >= v15 >> 1)
        {
          v29 = result;
          v18 = v14;
          sub_10000DFF4((v15 > 1), v16 + 1, 1);
          v14 = v18;
          result = v29;
          v7 = v34;
        }

        v7[2] = v16 + 1;
        v17 = &v7[2 * v16];
        v17[4] = result;
        v17[5] = v14;
        ++v11;
        if (!--v6)
        {
          v33 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v11 = v33;
LABEL_12:
      v19 = v32;
      v20 = *(v32 + 16);
      if (v11 == v20)
      {
LABEL_13:

        return v7;
      }

      v31 = xmmword_100376A40;
      while (v11 < v20)
      {
        v21 = *(v19 + 32 + v11);
        v33 = v11 + 1;
        sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
        v22 = swift_allocObject();
        *(v22 + 16) = v31;
        *(v22 + 56) = &type metadata for UInt8;
        *(v22 + 64) = &protocol witness table for UInt8;
        *(v22 + 32) = v21;
        result = String.init(format:_:)();
        v34 = v7;
        v25 = v7[2];
        v24 = v7[3];
        if (v25 >= v24 >> 1)
        {
          v27 = result;
          v28 = v23;
          sub_10000DFF4((v24 > 1), v25 + 1, 1);
          v23 = v28;
          result = v27;
          v7 = v34;
        }

        v7[2] = v25 + 1;
        v26 = &v7[2 * v25];
        v26[4] = result;
        v26[5] = v23;
        v20 = *(v19 + 16);
        v11 = v33;
        if (v33 == v20)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1001933E8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100193768(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t DInitSHA256Digest.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100003BEC(v4, v4[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100003C3C(v4);
}

uint64_t sub_1001934B0(void *a1)
{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100003BEC(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100003C3C(v2);
}

uint64_t static DInitSHA256Digest.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100193568@<X0>(uint64_t a1@<X0>, void *a2@<X8>, void *a3@<X1>)
{
  result = _s10DarwinInit17DInitSHA256DigestV8argumentACSgSS_tcfC_0(a1, a3);
  *a2 = result;
  a2[1] = v5;
  return result;
}

Swift::Int DInitSHA256Digest.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int CredentialString.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100193644()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _s10DarwinInit17DInitSHA256DigestV8argumentACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  if (String.count.getter() == 64)
  {
    countAndFlagsBits = String.lowercased()()._countAndFlagsBits;

    while (String.Iterator.next()().value._object)
    {
      Character.hexDigitValue.getter();
      v4 = v3;

      if (v4)
      {

        goto LABEL_6;
      }
    }

    return countAndFlagsBits;
  }

  else
  {
LABEL_6:

    return 0;
  }
}

void *sub_100193768(void *a1)
{
  v3 = sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_10000E2A8(v11, v11[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v7 = v6;

    v8 = _s10DarwinInit17DInitSHA256DigestV8argumentACSgSS_tcfC_0(v5, v7);
    if (v9)
    {
      v3 = v8;

      sub_100003C3C(v11);
      sub_100003C3C(a1);
      return v3;
    }

    _StringGuts.grow(_:)(32);

    v10._countAndFlagsBits = v5;
    v10._object = v7;
    String.append(_:)(v10);

    v3 = 0xD00000000000001ELL;
    type metadata accessor for DecodingError();
    swift_allocError();
    static DecodingError.dataCorruptedError(in:debugDescription:)();

    swift_willThrow();
    sub_100003C3C(v11);
  }

  sub_100003C3C(a1);
  return v3;
}

unint64_t sub_1001938FC()
{
  result = qword_1004AAB40;
  if (!qword_1004AAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB40);
  }

  return result;
}

unint64_t sub_100193960()
{
  result = qword_1004AAB48;
  if (!qword_1004AAB48)
  {
    type metadata accessor for SHA256Digest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB48);
  }

  return result;
}

uint64_t sub_100193A3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10019472C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100193A64(uint64_t a1)
{
  v2 = sub_1001949F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100193AA0(uint64_t a1)
{
  v2 = sub_1001949F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static DiavloCertAudience.shared.getter()
{
  result = sub_100194844();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t DiavloCertRequest.audienceProperties.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *v3 = result;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t sub_100193B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000010043DE10 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100193BC0(uint64_t a1)
{
  v2 = sub_100194C18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100193BFC(uint64_t a1)
{
  v2 = sub_100194C18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DiavloCertAudience.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a3;
  v6 = sub_1000039E8(&qword_1004AAB50, &qword_1003F4850);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10000E2A8(a1, a1[3]);
  sub_1001949F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v4)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v13 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100193E28@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100194A4C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t DiavloCertRequest.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000039E8(&qword_1004AAB60, &qword_1003F4858);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_10000E2A8(a1, a1[3]);
  sub_100194C18();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  sub_100194C6C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100194030(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = a2(a1);
  if (v2)
  {
    return v4;
  }

  return result;
}

void *sub_10019405C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100194CC0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t PathCoded.codingPath.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1001940FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6369666974726563 && a2 == 0xEC00000073657461)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100194188(uint64_t a1)
{
  v2 = sub_100194E3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001941C4(uint64_t a1)
{
  v2 = sub_100194E3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DiavloCertList.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AAB78, &qword_1003F4860);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10000E2A8(a1, a1[3]);
  sub_100194E3C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1000039E8(&qword_1004AAB88, &qword_1003F4868);
  sub_100195820(&qword_1004AAB90, sub_100194E90, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void *sub_1001943A4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100194EE4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t DInitData.rawValue.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100031928(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_100194464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1953654115 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001944EC(uint64_t a1)
{
  v2 = sub_100195098();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100194528(uint64_t a1)
{
  v2 = sub_100195098();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DiavloCert.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000039E8(&qword_1004AABA0, &qword_1003F4870);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  sub_10000E2A8(a1, a1[3]);
  sub_100195098();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v14 = a3;
  sub_1000318C0(a2, a3, v10, v11);
  sub_1000688F8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100031928(v13, v14);
  return (*(v7 + 8))(v9, v6);
}

void *sub_1001946CC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001950EC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10019472C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1146244930 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1346979907 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1297040467 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100194844()
{
  if (qword_1004A9DF0 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    swift_beginAccess();
    v0 = *(*static RealComputer.shared + 232);

    v2 = v0(v1);
    v4 = v3;

    if (v4)
    {
      v5 = 0;
      goto LABEL_8;
    }

    v6 = *(*static RealComputer.shared + 240);

    v8 = v6(v7);
    v10 = v9;

    if (v10)
    {
      v5 = 1;
      goto LABEL_8;
    }

    v11 = *(*static RealComputer.shared + 224);

    v13 = v11(v12);
    v15 = v14;

    if (v15)
    {
      break;
    }

    if (((v8 | v2 | v13) & 0x8000000000000000) == 0)
    {
      return v2;
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

  v5 = 2;
LABEL_8:
  sub_100195940();
  swift_allocError();
  *v16 = v5;
  swift_willThrow();
  return v2;
}

unint64_t sub_1001949F8()
{
  result = qword_1004AAB58;
  if (!qword_1004AAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB58);
  }

  return result;
}

uint64_t sub_100194A4C(void *a1)
{
  v2 = sub_1000039E8(&qword_1004AAC38, &unk_1003F4F78);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10000E2A8(a1, a1[3]);
  sub_1001949F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11 = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v10 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v9 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100003C3C(a1);
  return v6;
}

unint64_t sub_100194C18()
{
  result = qword_1004AAB68;
  if (!qword_1004AAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB68);
  }

  return result;
}

unint64_t sub_100194C6C()
{
  result = qword_1004AAB70;
  if (!qword_1004AAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB70);
  }

  return result;
}

void *sub_100194CC0(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AAC28, &qword_1003F4F70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10000E2A8(a1, a1[3]);
  sub_100194C18();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100003C3C(a1);
  }

  else
  {
    sub_1001958EC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100003C3C(a1);
  }

  return v7;
}

unint64_t sub_100194E3C()
{
  result = qword_1004AAB80;
  if (!qword_1004AAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB80);
  }

  return result;
}

unint64_t sub_100194E90()
{
  result = qword_1004AAB98;
  if (!qword_1004AAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAB98);
  }

  return result;
}

void *sub_100194EE4(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AAC10, &qword_1003F4F68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10000E2A8(a1, a1[3]);
  sub_100194E3C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100003C3C(a1);
  }

  else
  {
    sub_1000039E8(&qword_1004AAB88, &qword_1003F4868);
    sub_100195820(&qword_1004AAC18, sub_100195898, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100003C3C(a1);
  }

  return v7;
}

unint64_t sub_100195098()
{
  result = qword_1004AABA8;
  if (!qword_1004AABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABA8);
  }

  return result;
}

void *sub_1001950EC(void *a1)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    sub_100003C3C(a1);
  }

  else
  {
    sub_10000E2A8(v13, v13[3]);
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    static String.Encoding.utf8.getter();
    v9 = String.data(using:allowLossyConversion:)();
    v11 = v10;

    (*(v4 + 8))(v6, v3);
    if (v11 >> 60 == 15)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9;
    }

    sub_100003C3C(v13);
    sub_100003C3C(a1);
  }

  return v7;
}

uint64_t getEnumTagSinglePayload for Network.ContentRangeComponents(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Network.ContentRangeComponents(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100195310(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100195364(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_100195404()
{
  result = qword_1004AABB0;
  if (!qword_1004AABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABB0);
  }

  return result;
}

unint64_t sub_10019545C()
{
  result = qword_1004AABB8;
  if (!qword_1004AABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABB8);
  }

  return result;
}

unint64_t sub_1001954B4()
{
  result = qword_1004AABC0;
  if (!qword_1004AABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABC0);
  }

  return result;
}

unint64_t sub_10019550C()
{
  result = qword_1004AABC8;
  if (!qword_1004AABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABC8);
  }

  return result;
}

unint64_t sub_100195564()
{
  result = qword_1004AABD0;
  if (!qword_1004AABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABD0);
  }

  return result;
}

unint64_t sub_1001955BC()
{
  result = qword_1004AABD8;
  if (!qword_1004AABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABD8);
  }

  return result;
}

unint64_t sub_100195614()
{
  result = qword_1004AABE0;
  if (!qword_1004AABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABE0);
  }

  return result;
}

unint64_t sub_10019566C()
{
  result = qword_1004AABE8;
  if (!qword_1004AABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABE8);
  }

  return result;
}

unint64_t sub_1001956C4()
{
  result = qword_1004AABF0;
  if (!qword_1004AABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABF0);
  }

  return result;
}

unint64_t sub_10019571C()
{
  result = qword_1004AABF8;
  if (!qword_1004AABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AABF8);
  }

  return result;
}

unint64_t sub_100195774()
{
  result = qword_1004AAC00;
  if (!qword_1004AAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAC00);
  }

  return result;
}

unint64_t sub_1001957CC()
{
  result = qword_1004AAC08;
  if (!qword_1004AAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAC08);
  }

  return result;
}

uint64_t sub_100195820(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(&qword_1004AAB88, &qword_1003F4868);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100195898()
{
  result = qword_1004AAC20;
  if (!qword_1004AAC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAC20);
  }

  return result;
}

unint64_t sub_1001958EC()
{
  result = qword_1004AAC30;
  if (!qword_1004AAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAC30);
  }

  return result;
}

unint64_t sub_100195940()
{
  result = qword_1004AAC40;
  if (!qword_1004AAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAC40);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.chown(owner:group:)(Swift::UInt32 owner, Swift::UInt32 group)
{
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000270B4(v10, qword_1004B00F8);
  (*(v7 + 16))(v9, v2, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v3;
    v14 = v13;
    v26 = swift_slowAlloc();
    v28 = v26;
    *v14 = 136315650;
    sub_100190550();
    v29 = v12;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v11;
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v18 = sub_1000026C0(v15, v17, &v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 1024;
    *(v14 + 14) = owner;
    *(v14 + 18) = 1024;
    *(v14 + 20) = group;
    v19 = v25;
    _os_log_impl(&_mh_execute_header, v25, v29, "Changing owner of item at %s to owner %u and group %u", v14, 0x18u);
    sub_100003C3C(v26);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  while (1)
  {
    FilePath.description.getter();
    v20 = String.utf8CString.getter();

    v21 = chown((v20 + 32), owner, group);

    if (v21 != -1)
    {
      break;
    }

    v22 = errno.getter();
    if (v22 != 4)
    {
      v30 = v22;
      v23 = v22;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v24 = v23;
      return;
    }
  }
}

uint64_t FilePath.chmod(permissions:)(uint64_t a1)
{
  v3 = a1;
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000270B4(v8, qword_1004B00F8);
  (*(v5 + 16))(v7, v1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = v2;
    v12 = v11;
    v27 = swift_slowAlloc();
    v29 = v27;
    *v12 = 136315394;
    sub_100190550();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v10;
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_1000026C0(v13, v15, &v29);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = FilePermissions.description.getter();
    v19 = sub_1000026C0(v17, v18, &v29);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v30, "Changing permission of item at %s to %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    FilePath.description.getter();
    v20 = String.utf8CString.getter();

    v21 = chmod((v20 + 32), v3);

    if (v21 != -1)
    {
      break;
    }

    v23 = errno.getter();
    if (v23 != 4)
    {
      v31 = v23;
      v24 = v23;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v25 = v24;
      return result;
    }
  }

  return result;
}

uint64_t sub_100195FD0()
{
  v0 = sub_1000039E8(&qword_1004AAD78, &unk_1003F52C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000279B4(v3, static MementoKeys.configuration);
  sub_1000270B4(v3, static MementoKeys.configuration);
  v4 = type metadata accessor for NameSpecification();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t MementoKeys.configuration.unsafeMutableAddressor()
{
  if (qword_1004A9E08 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CommandConfiguration();

  return sub_1000270B4(v0, static MementoKeys.configuration);
}

uint64_t static MementoKeys.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000270B4(v2, static MementoKeys.configuration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100196238(uint64_t a1)
{
  v1 = type metadata accessor for ArrayParsingStrategy();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000039E8(&qword_1004AAD60, &unk_100404D80);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v8 - 8);
  sub_1000039E8(&qword_1004AAD70, &qword_100404D90);
  type metadata accessor for NameSpecification.Element();
  *(swift_allocObject() + 16) = xmmword_100376BB0;
  static NameSpecification.Element.customLong(_:withSingleDash:)();
  static NameSpecification.Element.short.getter();
  NameSpecification.init(arrayLiteral:)();
  ArgumentHelp.init(stringLiteral:)();
  v9 = type metadata accessor for ArgumentHelp();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = type metadata accessor for CompletionKind();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  static ArrayParsingStrategy.singleValue.getter();
  return Option.init<A>(wrappedValue:name:parsing:help:completion:)();
}

uint64_t MementoKeys.users.getter()
{
  sub_1000039E8(&qword_1004AAC48, &qword_1003F4FA0);
  Option.wrappedValue.getter();
  return v1;
}

uint64_t sub_10019656C(uint64_t *a1)
{

  sub_1000039E8(&qword_1004AAC48, &qword_1003F4FA0);
  return Option.wrappedValue.setter();
}

uint64_t (*MementoKeys.users.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1000039E8(&qword_1004AAC48, &qword_1003F4FA0);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t sub_10019668C(uint64_t a1)
{
  v1 = type metadata accessor for ArrayParsingStrategy();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000039E8(&qword_1004AAD60, &unk_100404D80);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v8 - 8);
  sub_1000039E8(&qword_1004AAD70, &qword_100404D90);
  type metadata accessor for NameSpecification.Element();
  *(swift_allocObject() + 16) = xmmword_100376BB0;
  static NameSpecification.Element.customLong(_:withSingleDash:)();
  static NameSpecification.Element.short.getter();
  NameSpecification.init(arrayLiteral:)();
  ArgumentHelp.init(stringLiteral:)();
  v9 = type metadata accessor for ArgumentHelp();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = type metadata accessor for CompletionKind();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  static ArrayParsingStrategy.singleValue.getter();
  return Option.init<A>(wrappedValue:name:parsing:help:completion:)();
}

uint64_t MementoKeys.groups.getter()
{
  type metadata accessor for MementoKeys(0);
  sub_1000039E8(&qword_1004AAC48, &qword_1003F4FA0);
  Option.wrappedValue.getter();
  return v1;
}

uint64_t type metadata accessor for MementoKeys(uint64_t a1)
{
  result = qword_1004AACF8;
  if (!qword_1004AACF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100196A28@<X0>(void *a1@<X8>)
{
  type metadata accessor for MementoKeys(0);
  sub_1000039E8(&qword_1004AAC48, &qword_1003F4FA0);
  result = Option.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100196A90(uint64_t *a1)
{
  type metadata accessor for MementoKeys(0);

  sub_1000039E8(&qword_1004AAC48, &qword_1003F4FA0);
  return Option.wrappedValue.setter();
}

uint64_t MementoKeys.groups.setter(uint64_t a1)
{
  type metadata accessor for MementoKeys(0);
  sub_1000039E8(&qword_1004AAC48, &qword_1003F4FA0);
  return Option.wrappedValue.setter();
}

uint64_t (*MementoKeys.groups.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for MementoKeys(0);
  sub_1000039E8(&qword_1004AAC48, &qword_1003F4FA0);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10019B5FC;
}

uint64_t sub_100196BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000039E8(&qword_1004AAD60, &unk_100404D80);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  v8 = sub_1000039E8(&qword_1004AAD68, &unk_1003F52B0);
  __chkstk_darwin(v8 - 8);
  v10 = v15 - v9;
  v11 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v11 - 8);
  v15[0] = a1;
  v15[1] = a2;
  sub_1000039E8(&qword_1004AAD70, &qword_100404D90);
  type metadata accessor for NameSpecification.Element();
  *(swift_allocObject() + 16) = xmmword_100376BB0;
  static NameSpecification.Element.customLong(_:withSingleDash:)();
  static NameSpecification.Element.customShort(_:allowingJoined:)();
  NameSpecification.init(arrayLiteral:)();
  ArgumentHelp.init(stringLiteral:)();
  v12 = type metadata accessor for ArgumentHelp();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  v13 = type metadata accessor for CompletionKind();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  static SingleValueParsingStrategy.next.getter();
  return Option<A>.init(wrappedValue:name:parsing:help:completion:)();
}

uint64_t MementoKeys.ldapServer.getter()
{
  type metadata accessor for MementoKeys(0);
  sub_1000039E8(&qword_1004AAC50, &unk_1003F4FA8);
  Option.wrappedValue.getter();
  return v1;
}

void *sub_100196F54@<X0>(void *a1@<X8>)
{
  type metadata accessor for MementoKeys(0);
  sub_1000039E8(&qword_1004AAC50, &unk_1003F4FA8);
  result = Option.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_100196FBC(void *a1)
{
  type metadata accessor for MementoKeys(0);

  sub_1000039E8(&qword_1004AAC50, &unk_1003F4FA8);
  return Option.wrappedValue.setter();
}

uint64_t MementoKeys.ldapServer.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MementoKeys(0);
  sub_1000039E8(&qword_1004AAC50, &unk_1003F4FA8);
  return Option.wrappedValue.setter();
}

uint64_t (*MementoKeys.ldapServer.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for MementoKeys(0);
  sub_1000039E8(&qword_1004AAC50, &unk_1003F4FA8);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_100197120;
}

void sub_100197124(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t MementoKeys.getCacheFile()@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = type metadata accessor for FilePath();
  v49 = *(v1 - 8);
  v50 = v1;
  __chkstk_darwin(v1);
  v47 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SHA256();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SHA256Digest();
  v46 = *(v7 - 1);
  v8 = __chkstk_darwin(v7);
  *&v48 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  v51 = static CommandLine.arguments.getter();
  v12 = sub_1000039E8(&qword_1004A6B48, &unk_100376810);
  v42 = sub_10000E720(&qword_1004A6B50, &qword_1004A6B48, &unk_100376810, &protocol conformance descriptor for [A]);
  v43 = v12;
  v13 = BidirectionalCollection<>.joined(separator:)();
  v15 = v14;

  v51 = v13;
  v52 = v15;
  v16 = String.init<A>(_:)();
  v18 = sub_10018AD60(v16, v17);
  v20 = v19;
  sub_10019B5B4(&unk_1004A7820, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_1000318C0(v18, v20, v21, v22);
  sub_100093720(v18, v20, v6);
  v40 = v20;
  v41 = v18;
  sub_100031928(v18, v20);
  dispatch thunk of HashFunction.finalize()();
  (*(v4 + 8))(v6, v3);
  if (qword_1004A9E98 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v23 = v50;
    v24 = sub_1000270B4(v50, kDInitPersistStorage);
    (*(v49 + 16))(v47, v24, v23);
    v25 = v46;
    v26 = *(v46 + 16);
    v44 = v11;
    v26(v48, v11, v7);
    sub_10019B5B4(&qword_1004AAB48, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    dispatch thunk of Sequence.makeIterator()();
    v27 = v52;
    v50 = v51;
    v28 = *(v51 + 16);
    v29 = v7;
    v7 = _swiftEmptyArrayStorage;
    if (v52 == v28)
    {
      break;
    }

    v49 = v50 + 32;
    v48 = xmmword_100376A40;
    v11 = v52;
    v31 = v25;
    while ((v27 & 0x8000000000000000) == 0)
    {
      if (v11 >= *(v50 + 16))
      {
        goto LABEL_14;
      }

      v32 = v11[v49];
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v33 = swift_allocObject();
      *(v33 + 16) = v48;
      *(v33 + 56) = &type metadata for UInt8;
      *(v33 + 64) = &protocol witness table for UInt8;
      *(v33 + 32) = v32;
      v34 = String.init(format:_:)();
      v36 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100011A4C(0, *(v7 + 2) + 1, 1, v7);
      }

      v38 = *(v7 + 2);
      v37 = *(v7 + 3);
      if (v38 >= v37 >> 1)
      {
        v7 = sub_100011A4C((v37 > 1), v38 + 1, 1, v7);
      }

      ++v11;
      *(v7 + 2) = v38 + 1;
      v39 = &v7[16 * v38];
      *(v39 + 4) = v34;
      *(v39 + 5) = v36;
      v25 = v31;
      if (v28 == v11)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
  }

LABEL_3:

  v51 = v7;
  BidirectionalCollection<>.joined(separator:)();

  FilePath.appending(_:)();
  sub_100031928(v41, v40);
  return (*(v25 + 8))(v44, v29);
}

uint64_t MementoKeys.readCache(from:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v41 - v9;
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v41 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  v42 = v12;
  v17 = *(v12 + 16);
  v43 = a1;
  v18 = a1;
  v19 = v17;
  v17(&v41 - v15, v18, v11);
  sub_1002EC1CC(v16, &v46);
  if (!v1)
  {
    Date.init(timeIntervalSince1970:)();
    static Date.now.getter();
    Date.distance(to:)();
    v21 = v20;
    v22 = *(v5 + 8);
    v22(v8, v4);
    v22(v10, v4);
    if (v21 >= 7200.0)
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1000270B4(v25, qword_1004B00F8);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Memento cache expired", v28, 2u);
      }

      sub_10019AB54();
      v2 = swift_allocError();
      *v29 = 1;
      swift_willThrow();
    }

    else
    {
      result = FilePath.loadString()()._countAndFlagsBits;
      v2 = v24;
      if (!v24)
      {
        return result;
      }
    }
  }

  v45 = v2;
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
  result = swift_dynamicCast();
  if (result && v44 == 2)
  {

    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000270B4(v30, qword_1004B00F8);
    v31 = v41;
    v19(v41, v43, v11);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v35;
      *v34 = 136315138;
      sub_10019B5B4(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v42 + 8))(v31, v11);
      v39 = sub_1000026C0(v36, v38, &v45);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "Memento cache %s doesn't exist", v34, 0xCu);
      sub_100003C3C(v35);
    }

    else
    {

      (*(v42 + 8))(v31, v11);
    }

    sub_10019AB54();
    swift_allocError();
    *v40 = 0;
    return swift_willThrow();
  }

  return result;
}

void MementoKeys.writeCache(_:to:)(uint64_t a1, void *a2)
{
  if (qword_1004A9E98 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FilePath();
  sub_1000270B4(v4, kDInitPersistStorage);
  v5 = FilePath.directoryExists()();
  if (!v6)
  {
    if (!v5)
    {
      FilePath.createDirectory(permissions:intermediateDirectories:)(511, 0);
    }

    v7._countAndFlagsBits = a1;
    v7._object = a2;
    FilePath.save(_:append:)(v7, 0);
  }
}

uint64_t sub_100197D74()
{
  sub_1000039E8(&qword_1004AAC48, &qword_1003F4FA0);
  Option.wrappedValue.getter();
  v1 = sub_100013D10(*(v0 + 184));

  *(v0 + 176) = v1;
  *(v0 + 192) = _swiftEmptyArrayStorage;
  v2 = type metadata accessor for MementoKeys(0);
  *(v0 + 256) = v2;
  Option.wrappedValue.getter();
  v3 = *(v0 + 200);
  *(v0 + 264) = v3;
  v4 = v3[2];
  *(v0 + 272) = v4;
  if (v4)
  {
    *(v0 + 432) = *(v2 + 24);
    *(v0 + 280) = 0;
    v5 = v3[4];
    *(v0 + 288) = v5;
    v6 = v3[5];
    *(v0 + 296) = v6;

    sub_1000039E8(&qword_1004AAC50, &unk_1003F4FA8);
    Option.wrappedValue.getter();
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);
    *(v0 + 304) = v8;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *(v0 + 96) = 4025955;
    *(v0 + 104) = 0xE300000000000000;
    v9._countAndFlagsBits = v5;
    v9._object = v6;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 0xD00000000000001ALL;
    v10._object = 0x800000010043DE30;
    String.append(_:)(v10);
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);
    *(v0 + 312) = v12;
    v13 = swift_task_alloc();
    *(v0 + 320) = v13;
    v13[2] = v7;
    v13[3] = v8;
    v13[4] = v11;
    v13[5] = v12;
    v13[6] = &off_100484CD8;
    v14 = swift_task_alloc();
    *(v0 + 328) = v14;
    v15 = sub_1000039E8(&qword_1004B07E0, &unk_1003788C0);
    *v14 = v0;
    v14[1] = sub_1001982A4;
    v16 = sub_10019AC64;
    v17 = v0 + 208;
    v18 = 0x800000010043DE50;
LABEL_11:

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v17, 0, 0, 0xD000000000000020, v18, v16, v13, v15);
  }

  *(v0 + 344) = 0x800000010043DE50;
  *(v0 + 352) = v1;
  v19 = *(v1 + 32);
  *(v0 + 436) = v19;
  v20 = -1;
  v21 = -1 << v19;
  if (-(-1 << v19) < 64)
  {
    v20 = ~(-1 << -(-1 << v19));
  }

  v22 = v20 & *(v1 + 56);
  if (v22)
  {
    v23 = 0;
LABEL_10:
    *(v0 + 360) = v22;
    *(v0 + 368) = v23;
    v26 = (*(v1 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v22)))));
    v27 = *v26;
    *(v0 + 376) = *v26;
    v28 = v26[1];
    *(v0 + 384) = v28;

    sub_1000039E8(&qword_1004AAC50, &unk_1003F4FA8);
    Option.wrappedValue.getter();
    v29 = *(v0 + 128);
    v30 = *(v0 + 136);
    *(v0 + 392) = v30;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *(v0 + 144) = 1029990773;
    *(v0 + 152) = 0xE400000000000000;
    v31._countAndFlagsBits = v27;
    v31._object = v28;
    String.append(_:)(v31);
    v32._countAndFlagsBits = 0xD000000000000019;
    v32._object = 0x800000010043DE80;
    String.append(_:)(v32);
    v33 = *(v0 + 144);
    v34 = *(v0 + 152);
    *(v0 + 400) = v34;
    v13 = swift_task_alloc();
    *(v0 + 408) = v13;
    v13[2] = v29;
    v13[3] = v30;
    v13[4] = v33;
    v13[5] = v34;
    v13[6] = &off_100484D08;
    v35 = swift_task_alloc();
    *(v0 + 416) = v35;
    v15 = sub_1000039E8(&qword_1004B07E0, &unk_1003788C0);
    *v35 = v0;
    v35[1] = sub_100198FD0;
    v18 = *(v0 + 344);
    v16 = sub_10019B600;
    v17 = v0 + 216;
    goto LABEL_11;
  }

  v24 = 0;
  v25 = ((63 - v21) >> 6) - 1;
  while (v25 != v24)
  {
    v23 = v24 + 1;
    v22 = *(v1 + 8 * v24++ + 64);
    if (v22)
    {
      goto LABEL_10;
    }
  }

  *(v0 + 232) = *(v0 + 192);
  sub_1000039E8(&qword_1004A6B48, &unk_100376810);
  sub_10000E720(&qword_1004A6B50, &qword_1004A6B48, &unk_100376810, &protocol conformance descriptor for [A]);
  v36 = BidirectionalCollection<>.joined(separator:)();
  v38 = v37;

  v39 = *(v0 + 8);

  return v39(v36, v38);
}

uint64_t sub_1001982A4()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_100198948;
  }

  else
  {

    v2 = sub_1001983E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001983E4()
{
  v1 = *(v0 + 208);
  if (*(v1 + 16))
  {
    v2 = sub_100013364(0x69557265626D656DLL, 0xE900000000000064);
    if (v3)
    {
      sub_100003CA0(*(v1 + 56) + 32 * v2, v0 + 48);

      sub_1000039E8(&qword_1004A6B48, &unk_100376810);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_6;
      }

      sub_10019ACE0(*(v0 + 240));
    }
  }

LABEL_6:
  v4 = *(v0 + 280) + 1;
  if (v4 != *(v0 + 272))
  {
    *(v0 + 280) = v4;
    v11 = *(v0 + 264) + 16 * v4;
    v12 = *(v11 + 32);
    *(v0 + 288) = v12;
    v13 = *(v11 + 40);
    *(v0 + 296) = v13;

    sub_1000039E8(&qword_1004AAC50, &unk_1003F4FA8);
    Option.wrappedValue.getter();
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    *(v0 + 304) = v15;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *(v0 + 96) = 4025955;
    *(v0 + 104) = 0xE300000000000000;
    v16._countAndFlagsBits = v12;
    v16._object = v13;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 0xD00000000000001ALL;
    v17._object = 0x800000010043DE30;
    String.append(_:)(v17);
    v18 = *(v0 + 96);
    v19 = *(v0 + 104);
    *(v0 + 312) = v19;
    v20 = swift_task_alloc();
    *(v0 + 320) = v20;
    v20[2] = v14;
    v20[3] = v15;
    v20[4] = v18;
    v20[5] = v19;
    v20[6] = &off_100484CD8;
    v21 = swift_task_alloc();
    *(v0 + 328) = v21;
    v22 = sub_1000039E8(&qword_1004B07E0, &unk_1003788C0);
    *v21 = v0;
    v21[1] = sub_1001982A4;
    v23 = sub_10019AC64;
    v24 = 0x800000010043DE50;
    v25 = v0 + 208;
LABEL_16:

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v25, 0, 0, 0xD000000000000020, v24, v23, v20, v22);
  }

  v5 = *(v0 + 176);
  *(v0 + 344) = 0x800000010043DE50;
  *(v0 + 352) = v5;
  v6 = *(v5 + 32);
  *(v0 + 436) = v6;
  v7 = -1;
  v8 = -1 << v6;
  if (-(-1 << v6) < 64)
  {
    v7 = ~(-1 << -(-1 << v6));
  }

  v9 = v7 & *(v5 + 56);
  if (v9)
  {
    v10 = 0;
LABEL_15:
    *(v0 + 360) = v9;
    *(v0 + 368) = v10;
    v28 = (*(v5 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v9)))));
    v29 = *v28;
    *(v0 + 376) = *v28;
    v30 = v28[1];
    *(v0 + 384) = v30;

    sub_1000039E8(&qword_1004AAC50, &unk_1003F4FA8);
    Option.wrappedValue.getter();
    v31 = *(v0 + 128);
    v32 = *(v0 + 136);
    *(v0 + 392) = v32;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *(v0 + 144) = 1029990773;
    *(v0 + 152) = 0xE400000000000000;
    v33._countAndFlagsBits = v29;
    v33._object = v30;
    String.append(_:)(v33);
    v34._countAndFlagsBits = 0xD000000000000019;
    v34._object = 0x800000010043DE80;
    String.append(_:)(v34);
    v35 = *(v0 + 144);
    v36 = *(v0 + 152);
    *(v0 + 400) = v36;
    v20 = swift_task_alloc();
    *(v0 + 408) = v20;
    v20[2] = v31;
    v20[3] = v32;
    v20[4] = v35;
    v20[5] = v36;
    v20[6] = &off_100484D08;
    v37 = swift_task_alloc();
    *(v0 + 416) = v37;
    v22 = sub_1000039E8(&qword_1004B07E0, &unk_1003788C0);
    *v37 = v0;
    v37[1] = sub_100198FD0;
    v24 = *(v0 + 344);
    v23 = sub_10019B600;
    v25 = v0 + 216;
    goto LABEL_16;
  }

  v26 = 0;
  v27 = ((63 - v8) >> 6) - 1;
  while (v27 != v26)
  {
    v10 = v26 + 1;
    v9 = *(v5 + 8 * v26++ + 64);
    if (v9)
    {
      goto LABEL_15;
    }
  }

  *(v0 + 232) = *(v0 + 192);
  sub_1000039E8(&qword_1004A6B48, &unk_100376810);
  sub_10000E720(&qword_1004A6B50, &qword_1004A6B48, &unk_100376810, &protocol conformance descriptor for [A]);
  v38 = BidirectionalCollection<>.joined(separator:)();
  v40 = v39;

  v41 = *(v0 + 8);

  return v41(v38, v40);
}

uint64_t sub_100198948()
{
  v52 = v0;

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 296);
  if (v4)
  {
    v6 = *(v0 + 288);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v51 = v9;
    *v7 = 136315394;
    v10 = sub_1000026C0(v6, v5, &v51);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to query memberUid from group %s: %@", v7, 0x16u);
    sub_10019AC78(v8);

    sub_100003C3C(v9);
  }

  else
  {
  }

  v12 = *(v0 + 280) + 1;
  if (v12 != *(v0 + 272))
  {
    *(v0 + 280) = v12;
    v19 = *(v0 + 264) + 16 * v12;
    v20 = *(v19 + 32);
    *(v0 + 288) = v20;
    v21 = *(v19 + 40);
    *(v0 + 296) = v21;

    sub_1000039E8(&qword_1004AAC50, &unk_1003F4FA8);
    Option.wrappedValue.getter();
    v22 = *(v0 + 80);
    v23 = *(v0 + 88);
    *(v0 + 304) = v23;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *(v0 + 96) = 4025955;
    *(v0 + 104) = 0xE300000000000000;
    v24._countAndFlagsBits = v20;
    v24._object = v21;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 0xD00000000000001ALL;
    v25._object = 0x800000010043DE30;
    String.append(_:)(v25);
    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    *(v0 + 312) = v27;
    v28 = swift_task_alloc();
    *(v0 + 320) = v28;
    v28[2] = v22;
    v28[3] = v23;
    v28[4] = v26;
    v28[5] = v27;
    v28[6] = &off_100484CD8;
    v29 = swift_task_alloc();
    *(v0 + 328) = v29;
    v30 = sub_1000039E8(&qword_1004B07E0, &unk_1003788C0);
    *v29 = v0;
    v29[1] = sub_1001982A4;
    v31 = sub_10019AC64;
    v32 = v0 + 208;
    v33 = 0x800000010043DE50;
LABEL_16:

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v32, 0, 0, 0xD000000000000020, v33, v31, v28, v30);
  }

  v13 = *(v0 + 176);
  *(v0 + 344) = 0x800000010043DE50;
  *(v0 + 352) = v13;
  v14 = *(v13 + 32);
  *(v0 + 436) = v14;
  v15 = -1;
  v16 = -1 << v14;
  if (-(-1 << v14) < 64)
  {
    v15 = ~(-1 << -(-1 << v14));
  }

  v17 = v15 & *(v13 + 56);
  if (v17)
  {
    v18 = 0;
LABEL_15:
    *(v0 + 360) = v17;
    *(v0 + 368) = v18;
    v36 = (*(v13 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v17)))));
    v37 = *v36;
    *(v0 + 376) = *v36;
    v38 = v36[1];
    *(v0 + 384) = v38;

    sub_1000039E8(&qword_1004AAC50, &unk_1003F4FA8);
    Option.wrappedValue.getter();
    v39 = *(v0 + 128);
    v40 = *(v0 + 136);
    *(v0 + 392) = v40;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *(v0 + 144) = 1029990773;
    *(v0 + 152) = 0xE400000000000000;
    v41._countAndFlagsBits = v37;
    v41._object = v38;
    String.append(_:)(v41);
    v42._countAndFlagsBits = 0xD000000000000019;
    v42._object = 0x800000010043DE80;
    String.append(_:)(v42);
    v43 = *(v0 + 144);
    v44 = *(v0 + 152);
    *(v0 + 400) = v44;
    v28 = swift_task_alloc();
    *(v0 + 408) = v28;
    v28[2] = v39;
    v28[3] = v40;
    v28[4] = v43;
    v28[5] = v44;
    v28[6] = &off_100484D08;
    v45 = swift_task_alloc();
    *(v0 + 416) = v45;
    v30 = sub_1000039E8(&qword_1004B07E0, &unk_1003788C0);
    *v45 = v0;
    v45[1] = sub_100198FD0;
    v33 = *(v0 + 344);
    v31 = sub_10019B600;
    v32 = v0 + 216;
    goto LABEL_16;
  }

  v34 = 0;
  v35 = ((63 - v16) >> 6) - 1;
  while (v35 != v34)
  {
    v18 = v34 + 1;
    v17 = *(v13 + 8 * v34++ + 64);
    if (v17)
    {
      goto LABEL_15;
    }
  }

  *(v0 + 232) = *(v0 + 192);
  sub_1000039E8(&qword_1004A6B48, &unk_100376810);
  sub_10000E720(&qword_1004A6B50, &qword_1004A6B48, &unk_100376810, &protocol conformance descriptor for [A]);
  v46 = BidirectionalCollection<>.joined(separator:)();
  v48 = v47;

  v49 = *(v0 + 8);

  return v49(v46, v48);
}

uint64_t sub_100198FD0()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_100199664;
  }

  else
  {

    v2 = sub_100199100;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100199100()
{
  v40 = v0;
  v1 = *(v0 + 216);
  if (*(v1 + 16) && (v2 = sub_100013364(0x696C627550687373, 0xEC00000079654B63), (v3 & 1) != 0))
  {
    sub_100003CA0(*(v1 + 56) + 32 * v2, v0 + 16);

    sub_1000039E8(&qword_1004A6B48, &unk_100376810);
    if (swift_dynamicCast())
    {

      sub_10034A28C(v4);
      if (qword_1004A9F20 != -1)
      {
LABEL_24:
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000270B4(v5, qword_1004B00F8);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();

      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 384);
      if (v8)
      {
        v10 = *(v0 + 376);
        v11 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v11 = 136315394;
        v12 = sub_1000026C0(v10, v9, &v39);

        *(v11 + 4) = v12;
        *(v11 + 12) = 2080;
        v13 = Array.description.getter();
        v15 = v14;

        v16 = sub_1000026C0(v13, v15, &v39);

        *(v11 + 14) = v16;
        _os_log_impl(&_mh_execute_header, v6, v7, "Added public key for user %s:\n%s", v11, 0x16u);
        swift_arrayDestroy();

        goto LABEL_9;
      }
    }
  }

  else
  {
  }

LABEL_9:
  v17 = *(v0 + 368);
  v18 = (*(v0 + 360) - 1) & *(v0 + 360);
  if (v18)
  {
    v19 = *(v0 + 352);
LABEL_15:
    *(v0 + 360) = v18;
    *(v0 + 368) = v17;
    v21 = (*(v19 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v18)))));
    v22 = *v21;
    *(v0 + 376) = *v21;
    v23 = v21[1];
    *(v0 + 384) = v23;

    sub_1000039E8(&qword_1004AAC50, &unk_1003F4FA8);
    Option.wrappedValue.getter();
    v24 = *(v0 + 128);
    v25 = *(v0 + 136);
    *(v0 + 392) = v25;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *(v0 + 144) = 1029990773;
    *(v0 + 152) = 0xE400000000000000;
    v26._countAndFlagsBits = v22;
    v26._object = v23;
    String.append(_:)(v26);
    v27._object = 0x800000010043DE80;
    v27._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v27);
    v28 = *(v0 + 144);
    v29 = *(v0 + 152);
    *(v0 + 400) = v29;
    v30 = swift_task_alloc();
    *(v0 + 408) = v30;
    v30[2] = v24;
    v30[3] = v25;
    v30[4] = v28;
    v30[5] = v29;
    v30[6] = &off_100484D08;
    v31 = swift_task_alloc();
    *(v0 + 416) = v31;
    v32 = sub_1000039E8(&qword_1004B07E0, &unk_1003788C0);
    *v31 = v0;
    v31[1] = sub_100198FD0;
    v33 = *(v0 + 344);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 216, 0, 0, 0xD000000000000020, v33, sub_10019B600, v30, v32);
  }

  else
  {
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v20 >= (((1 << *(v0 + 436)) + 63) >> 6))
      {
        break;
      }

      v19 = *(v0 + 352);
      v18 = *(v19 + 8 * v20 + 56);
      ++v17;
      if (v18)
      {
        v17 = v20;
        goto LABEL_15;
      }
    }

    *(v0 + 232) = *(v0 + 192);
    sub_1000039E8(&qword_1004A6B48, &unk_100376810);
    sub_10000E720(&qword_1004A6B50, &qword_1004A6B48, &unk_100376810, &protocol conformance descriptor for [A]);
    v34 = BidirectionalCollection<>.joined(separator:)();
    v36 = v35;

    v37 = *(v0 + 8);

    return v37(v34, v36);
  }
}

uint64_t sub_100199664()
{
  v35 = v0;

  if (qword_1004A9F20 != -1)
  {
LABEL_18:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 384);
  if (v4)
  {
    v6 = *(v0 + 376);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v7 = 136315394;
    v10 = sub_1000026C0(v6, v5, &v34);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to query sshPublicKey from user %s: %@", v7, 0x16u);
    sub_10019AC78(v8);

    sub_100003C3C(v9);
  }

  else
  {
  }

  v12 = *(v0 + 368);
  v13 = (*(v0 + 360) - 1) & *(v0 + 360);
  if (v13)
  {
    v14 = *(v0 + 352);
LABEL_11:
    *(v0 + 360) = v13;
    *(v0 + 368) = v12;
    v16 = (*(v14 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
    v17 = *v16;
    *(v0 + 376) = *v16;
    v18 = v16[1];
    *(v0 + 384) = v18;

    sub_1000039E8(&qword_1004AAC50, &unk_1003F4FA8);
    Option.wrappedValue.getter();
    v19 = *(v0 + 128);
    v20 = *(v0 + 136);
    *(v0 + 392) = v20;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *(v0 + 144) = 1029990773;
    *(v0 + 152) = 0xE400000000000000;
    v21._countAndFlagsBits = v17;
    v21._object = v18;
    String.append(_:)(v21);
    v22._object = 0x800000010043DE80;
    v22._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v22);
    v23 = *(v0 + 144);
    v24 = *(v0 + 152);
    *(v0 + 400) = v24;
    v25 = swift_task_alloc();
    *(v0 + 408) = v25;
    v25[2] = v19;
    v25[3] = v20;
    v25[4] = v23;
    v25[5] = v24;
    v25[6] = &off_100484D08;
    v26 = swift_task_alloc();
    *(v0 + 416) = v26;
    v27 = sub_1000039E8(&qword_1004B07E0, &unk_1003788C0);
    *v26 = v0;
    v26[1] = sub_100198FD0;
    v28 = *(v0 + 344);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 216, 0, 0, 0xD000000000000020, v28, sub_10019B600, v25, v27);
  }

  else
  {
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v15 >= (((1 << *(v0 + 436)) + 63) >> 6))
      {
        break;
      }

      v14 = *(v0 + 352);
      v13 = *(v14 + 8 * v15 + 56);
      ++v12;
      if (v13)
      {
        v12 = v15;
        goto LABEL_11;
      }
    }

    *(v0 + 232) = *(v0 + 192);
    sub_1000039E8(&qword_1004A6B48, &unk_100376810);
    sub_10000E720(&qword_1004A6B50, &qword_1004A6B48, &unk_100376810, &protocol conformance descriptor for [A]);
    v29 = BidirectionalCollection<>.joined(separator:)();
    v31 = v30;

    v32 = *(v0 + 8);

    return v32(v29, v31);
  }
}

uint64_t MementoKeys.run()()
{
  v1[2] = v0;
  v2 = type metadata accessor for FilePath();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100199BF8, 0, 0);
}

uint64_t sub_100199BF8()
{
  v1 = v0[5];
  MementoKeys.getCacheFile()(v1);
  v2 = MementoKeys.readCache(from:)(v1);
  v0[6] = 0;
  v3 = v2;
  v5 = v4;
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  sub_1000039E8(&qword_1004AA990, &unk_1003F8E40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100376A40;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 32) = v3;
  *(v9 + 40) = v5;
  print(_:separator:terminator:)();

  (*(v7 + 8))(v6, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100199E44(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = v2;

  if (v2)
  {
    v5 = sub_10019A240;
  }

  else
  {
    v5 = sub_100199F5C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100199F5C()
{
  if (qword_1004A9E98 != -1)
  {
    swift_once();
  }

  sub_1000270B4(*(v0 + 24), kDInitPersistStorage);
  v1 = FilePath.directoryExists()();
  if (!v2)
  {
    if (!v1)
    {
      FilePath.createDirectory(permissions:intermediateDirectories:)(511, 0);
    }

    FilePath.save(_:append:)(*(v0 + 72), 0);
    if (!v3)
    {
      v4 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v4, v17, "Memento cache saved", v18, 2u);
      }

      goto LABEL_9;
    }
  }

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
    _os_log_impl(&_mh_execute_header, v4, v5, "Fail to save memento cache: %@", v6, 0xCu);
    sub_10019AC78(v7);

LABEL_9:

    goto LABEL_11;
  }

LABEL_11:
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v12 = *(v0 + 32);
  v11 = *(v0 + 40);
  v13 = *(v0 + 24);
  sub_1000039E8(&qword_1004AA990, &unk_1003F8E40);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100376A40;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 32) = v10;
  *(v14 + 40) = v9;
  print(_:separator:terminator:)();

  (*(v12 + 8))(v11, v13);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10019A240()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10019A2D0()
{
  v1 = 0x7370756F7267;
  if (*v0 != 1)
  {
    v1 = 0x767265537061646CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7372657375;
  }
}

uint64_t sub_10019A328@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10019B49C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10019A350(uint64_t a1)
{
  v2 = sub_10019AD50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019A38C(uint64_t a1)
{
  v2 = sub_10019AD50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MementoKeys.init()()
{
  sub_100196238(_swiftEmptyArrayStorage);
  type metadata accessor for MementoKeys(0);
  sub_10019668C(_swiftEmptyArrayStorage);
  return sub_100196BF4(0x6C7070612E646F6ELL, 0xED00006D6F632E65);
}

uint64_t MementoKeys.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1000039E8(&qword_1004AAC50, &unk_1003F4FA8);
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v25 - v3;
  v32 = sub_1000039E8(&qword_1004AAC48, &qword_1003F4FA0);
  v30 = *(v32 - 8);
  v4 = __chkstk_darwin(v32);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v31 = &v25 - v7;
  v8 = sub_1000039E8(&qword_1004AAC60, &unk_1003F4FD0);
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for MementoKeys(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100196238(_swiftEmptyArrayStorage);
  v15 = *(v12 + 28);
  sub_10019668C(_swiftEmptyArrayStorage);
  v16 = *(v12 + 32);
  sub_100196BF4(0x6C7070612E646F6ELL, 0xED00006D6F632E65);
  v17 = a1[3];
  v36 = a1;
  sub_10000E2A8(a1, v17);
  sub_10019AD50();
  v18 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v35 = v15;
    v25 = v16;
    v39 = 0;
    sub_10000E720(&qword_1004AAC70, &qword_1004AAC48, &qword_1003F4FA0, &protocol conformance descriptor for Option<A>);
    v19 = v31;
    v20 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = *(v30 + 40);
    (v31)(v14, v19, v20);
    v38 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (v31)(&v14[v35], v6, v20);
    v37 = 2;
    sub_10000E720(&qword_1004AAC78, &qword_1004AAC50, &unk_1003F4FA8, &protocol conformance descriptor for Option<A>);
    v23 = v28;
    v22 = v29;
    v24 = v34;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v33 + 8))(v10, v24);
    (*(v26 + 40))(&v14[v25], v23, v22);
    sub_10019AE00(v14, v27);
  }

  sub_100003C3C(v36);
  return sub_10019ADA4(v14);
}

uint64_t MementoKeys.init(users:groups:ldapServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100196238(a1);
  type metadata accessor for MementoKeys(0);
  sub_10019668C(a2);
  return sub_100196BF4(a3, a4);
}

uint64_t sub_10019A980()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001FE0;

  return MementoKeys.run()();
}

uint64_t sub_10019AA28()
{
  sub_100196238(_swiftEmptyArrayStorage);
  sub_10019668C(_swiftEmptyArrayStorage);
  return sub_100196BF4(0x6C7070612E646F6ELL, 0xED00006D6F632E65);
}