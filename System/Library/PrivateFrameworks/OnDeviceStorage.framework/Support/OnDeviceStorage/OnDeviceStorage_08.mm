uint64_t sub_10009E2CC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10009E3C4;

  return v6(a1);
}

uint64_t sub_10009E3C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10009E4C0(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000A444C;

  return sub_1000BC7E8();
}

unint64_t sub_10009E574(Swift::UInt a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  v4 = Hasher._finalize()();

  return sub_1000A18E4(a1, a2, v4);
}

unint64_t sub_10009E5F4(uint64_t *a1)
{
  Hasher.init(_seed:)();
  sub_1000535DC(v4);
  v2 = Hasher._finalize()();

  return sub_1000A195C(a1, v2);
}

unint64_t sub_10009E660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();

  return sub_1000A1C14(a1, a2, a3, a4, v8);
}

unint64_t sub_10009E700(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000A1D14(a1, a2, v4);
}

unint64_t sub_10009E778(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000A1DCC(a1, v2);
}

unint64_t sub_10009E80C(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1000A1ED0(a1, v2);
}

unint64_t sub_10009E850(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000A1F3C(a1, v4);
}

Swift::Int sub_10009E894(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100026F94(&qword_10016C478, &unk_1001325E0);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v34 = *(*(v5 + 48) + v21);
      v22 = (*(v5 + 56) + v21);
      v23 = *v22;
      v24 = v22[1];
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v34);
      Hasher._combine(_:)(*(&v34 + 1));
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      *(*(v7 + 48) + v16) = v34;
      v17 = (*(v7 + 56) + v16);
      *v17 = v23;
      v17[1] = v24;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10009EB50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100026F94(&qword_10016BF68, &qword_100131BD0);
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = *(v8 + 64);
    v36 = v2;
    v37 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    v18 = v39;
    v38 = v16;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v21 = (v15 - 1) & v15;
LABEL_15:
      v25 = v20 | (v11 << 6);
      v26 = *(v8 + 48);
      v41 = *(v6 + 72);
      v42 = v21;
      v27 = v26 + v41 * v25;
      if (v4)
      {
        sub_100057720(v27, v18);
        v40 = *(*(v8 + 56) + 8 * v25);
      }

      else
      {
        sub_100054A14(v27, v18);
        v40 = *(*(v8 + 56) + 8 * v25);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      type metadata accessor for StorageCategory();
      sub_1000A3FAC(&qword_10016B550, 255, &type metadata accessor for StorageCategory, &protocol conformance descriptor for StorageCategory);
      dispatch thunk of Hashable.hash(into:)();
      if (*(v18 + v5[6] + 8))
      {
        Hasher._combine(_:)(1u);
        v18 = v39;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(*(v18 + v5[7]));
      Hasher._combine(_:)(*(v18 + v5[8]));
      result = Hasher._finalize()();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_100057720(v18, *(v10 + 48) + v41 * v19);
      *(*(v10 + 56) + 8 * v19) = v40;
      ++*(v10 + 16);
      v16 = v38;
      v15 = v42;
    }

    v22 = v11;
    result = v37;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v37[v11];
      ++v22;
      if (v24)
      {
        v20 = __clz(__rbit64(v24));
        v21 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_37;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v37, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v37 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_37:
  *v3 = v10;
  return result;
}

Swift::Int sub_10009EF74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100026F94(&qword_10016BF88, &unk_100131BF0);
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = *(v8 + 64);
    v36 = v2;
    v37 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    v18 = v39;
    v38 = v16;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v21 = (v15 - 1) & v15;
LABEL_15:
      v25 = v20 | (v11 << 6);
      v26 = *(v8 + 48);
      v41 = *(v6 + 72);
      v42 = v21;
      v27 = v26 + v41 * v25;
      if (v4)
      {
        sub_100057720(v27, v18);
        v40 = *(*(v8 + 56) + 8 * v25);
      }

      else
      {
        sub_100054A14(v27, v18);
        v40 = *(*(v8 + 56) + 8 * v25);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      type metadata accessor for StorageCategory();
      sub_1000A3FAC(&qword_10016B550, 255, &type metadata accessor for StorageCategory, &protocol conformance descriptor for StorageCategory);
      dispatch thunk of Hashable.hash(into:)();
      if (*(v18 + v5[6] + 8))
      {
        Hasher._combine(_:)(1u);
        v18 = v39;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(*(v18 + v5[7]));
      Hasher._combine(_:)(*(v18 + v5[8]));
      result = Hasher._finalize()();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_100057720(v18, *(v10 + 48) + v41 * v19);
      *(*(v10 + 56) + 8 * v19) = v40;
      ++*(v10 + 16);
      v16 = v38;
      v15 = v42;
    }

    v22 = v11;
    result = v37;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v37[v11];
      ++v22;
      if (v24)
      {
        v20 = __clz(__rbit64(v24));
        v21 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_37;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v37, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v37 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_37:
  *v3 = v10;
  return result;
}

Swift::Int sub_10009F398(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100026F94(&qword_10016BF78, &qword_100131BE0);
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = *(v8 + 64);
    v36 = v2;
    v37 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    v18 = v39;
    v38 = v16;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v21 = (v15 - 1) & v15;
LABEL_15:
      v25 = v20 | (v11 << 6);
      v26 = *(v8 + 48);
      v41 = *(v6 + 72);
      v42 = v21;
      v27 = v26 + v41 * v25;
      if (v4)
      {
        sub_100057720(v27, v18);
        v40 = *(*(v8 + 56) + 8 * v25);
      }

      else
      {
        sub_100054A14(v27, v18);
        v40 = *(*(v8 + 56) + 8 * v25);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      type metadata accessor for StorageCategory();
      sub_1000A3FAC(&qword_10016B550, 255, &type metadata accessor for StorageCategory, &protocol conformance descriptor for StorageCategory);
      dispatch thunk of Hashable.hash(into:)();
      if (*(v18 + v5[6] + 8))
      {
        Hasher._combine(_:)(1u);
        v18 = v39;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(*(v18 + v5[7]));
      Hasher._combine(_:)(*(v18 + v5[8]));
      result = Hasher._finalize()();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_100057720(v18, *(v10 + 48) + v41 * v19);
      *(*(v10 + 56) + 8 * v19) = v40;
      ++*(v10 + 16);
      v16 = v38;
      v15 = v42;
    }

    v22 = v11;
    result = v37;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v37[v11];
      ++v22;
      if (v24)
      {
        v20 = __clz(__rbit64(v24));
        v21 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_37;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v37, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v37 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_37:
  *v3 = v10;
  return result;
}

Swift::Int sub_10009F7BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100026F94(&qword_10016B5A0, &qword_1001311F8);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10009FA64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100026F94(&qword_10016BF90, &qword_1001321F0);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10009FD24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100026F94(&qword_10016B000, &qword_100131BC0);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = v22[1];
      v37 = *v22;
      v24 = v22[3];
      v36 = v22[2];
      v25 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v37;
      v16[1] = v23;
      v16[2] = v36;
      v16[3] = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10009FFF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100026F94(&qword_10016BF58, &qword_100131BB8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = static Hasher._hash(seed:_:)();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_1000A0258(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100026F94(&qword_10016C470, &unk_1001325D0);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + (v21 << 6);
      if (v39)
      {
        v41 = *v25;
        v40 = *(v25 + 16);
        v43 = *(v25 + 8);
        v44 = *(v25 + 24);
        v42 = *(v25 + 32);
        v45 = *(v25 + 48);
        v46 = *(v25 + 40);
        v26 = *(v25 + 56);
      }

      else
      {
        v27 = *v25;
        v28 = *(v25 + 16);
        v29 = *(v25 + 32);
        *&v48[9] = *(v25 + 41);
        v47[1] = v28;
        *v48 = v29;
        v47[0] = v27;
        v45 = *&v48[16];
        v46 = *(&v29 + 1);
        v26 = v48[24];
        v42 = v29;
        v43 = *(&v27 + 1);
        v44 = *(&v28 + 1);
        v40 = v28;
        v41 = v27;

        sub_100092A0C(v47, v49);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v47[0]) = v26;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + (v15 << 6);
      *v17 = v41;
      *(v17 + 8) = v43;
      *(v17 + 16) = v40;
      *(v17 + 24) = v44;
      *(v17 + 32) = v42;
      *(v17 + 40) = v46;
      *(v17 + 48) = v45;
      *(v17 + 56) = v26;
      ++*(v7 + 16);
      v5 = v38;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_1000A05B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100026F94(&qword_10016C468, &unk_100132590);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1000A0858(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = *(v4 - 1);
  result = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = *(v5 + 72);
    v26 = (v13 + 1) & v12;
    v27 = a2 + 64;
    v25 = v14;
    do
    {
      v15 = v14 * v11;
      sub_100054A14(*(a2 + 48) + v14 * v11, v8);
      Hasher.init(_seed:)();
      String.hash(into:)();
      type metadata accessor for StorageCategory();
      sub_1000A3FAC(&qword_10016B550, 255, &type metadata accessor for StorageCategory, &protocol conformance descriptor for StorageCategory);
      dispatch thunk of Hashable.hash(into:)();
      if (*&v8[v4[6] + 8])
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(v8[v4[7]]);
      Hasher._combine(_:)(v8[v4[8]]);
      v16 = Hasher._finalize()();
      result = sub_100054A78(v8);
      v17 = v16 & v12;
      v9 = v27;
      if (a1 >= v26)
      {
        v14 = v25;
        if (v17 < v26)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v14 = v25;
        if (v17 >= v26)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v17)
      {
LABEL_13:
        v18 = *(a2 + 48);
        result = v18 + v14 * a1;
        if (v14 * a1 < v15 || result >= v18 + v15 + v14)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v14 * a1 != v15)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 8 * a1);
        v21 = (v19 + 8 * v11);
        if (a1 != v11 || v20 >= v21 + 1)
        {
          *v20 = *v21;
          a1 = v11;
        }
      }

LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

uint64_t sub_1000A0B84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 32 * v3);
        v13 = (v11 + 32 * v6);
        if (v3 != v6 || v12 >= v13 + 2)
        {
          v14 = v13[1];
          *v12 = *v13;
          v12[1] = v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1000A0D5C(uint64_t a1, uint64_t a2, Swift::UInt a3, Swift::UInt a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_10009E574(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10009E894(v18, a5 & 1);
      result = sub_10009E574(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        type metadata accessor for _NSRange(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1000A2004();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    v25 = (v23[6] + 16 * result);
    *v25 = a3;
    v25[1] = a4;
    v26 = (v23[7] + 16 * result);
    *v26 = a1;
    v26[1] = a2;
    v27 = v23[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v23[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  v24 = (v23[7] + 16 * result);
  *v24 = a1;
  v24[1] = a2;
}

uint64_t sub_1000A0ED0(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_10009E5F4(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1000A2384();
      goto LABEL_7;
    }

    sub_10009EF74(v16, a3 & 1);
    v21 = sub_10009E5F4(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100054A14(a2, v10);
      return sub_1000A1844(v13, v10, a1, v19);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_1000A1060(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_10009E5F4(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1000A259C();
      goto LABEL_7;
    }

    sub_10009F398(v16, a3 & 1);
    v21 = sub_10009E5F4(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100054A14(a2, v10);
      return sub_1000A1844(v13, v10, a1, v19);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_1000A11F0(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_10009E5F4(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1000A216C();
      goto LABEL_7;
    }

    sub_10009EB50(v16, a3 & 1);
    v21 = sub_10009E5F4(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100054A14(a2, v10);
      return sub_1000A1844(v13, v10, a1, v19);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_1000A1380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10009E700(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10009FA64(v18, a5 & 1);
      v13 = sub_10009E700(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1000A2924();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_1000A1508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_10009E660(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_10009FD24(v20, a6 & 1);
      v15 = sub_10009E660(a2, a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1000A2A9C();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 32 * v15);
  *v27 = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

uint64_t sub_1000A16B4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10009E700(a2, a3);
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
      sub_1000A0258(v16, a4 & 1);
      v11 = sub_10009E700(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000A2D70();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + (v11 << 6);

    return sub_1000A43B8(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + (v11 << 6));
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[2];
  *(v25 + 41) = *(a1 + 41);
  v25[1] = v27;
  v25[2] = v28;
  *v25 = v26;
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;
}

uint64_t sub_1000A1844(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  result = sub_100057720(a2, v8 + *(*(v9 - 8) + 72) * a1);
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

unint64_t sub_1000A18E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000A195C(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  __chkstk_darwin(v5);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v2 + 64;
  v25 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = *a1;
    v12 = a1[1];
    v13 = *(v6 + 72);
    v22 = ~v9;
    v23 = v13;
    do
    {
      sub_100054A14(*(v25 + 48) + v23 * v10, v8);
      v14 = *v8 == v11 && v8[1] == v12;
      if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      type metadata accessor for StorageCategory();
      sub_1000A3FAC(&qword_10016B588, 255, &type metadata accessor for StorageCategory, &protocol conformance descriptor for StorageCategory);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v28 == v26 && v29 == v27)
      {
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v16 = v5[6];
      v17 = (v8 + v16);
      v18 = *(v8 + v16 + 8);
      v19 = (a1 + v16);
      v20 = v19[1];
      if (v18)
      {
        if (!v20 || (*v17 != *v19 || v18 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v20)
      {
        goto LABEL_4;
      }

      if (*(v8 + v5[7]) == *(a1 + v5[7]) && *(v8 + v5[8]) == *(a1 + v5[8]))
      {
        sub_100054A78(v8);
        return v10;
      }

LABEL_4:
      sub_100054A78(v8);
      v10 = (v10 + 1) & v22;
    }

    while (((*(v24 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1000A1C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1000A1D14(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000A1DCC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000A1ED0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000A1F3C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000A419C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000A41F8(v8);
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

void *sub_1000A2004()
{
  v1 = v0;
  sub_100026F94(&qword_10016C478, &unk_1001325E0);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 56) + v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_1000A216C()
{
  v1 = v0;
  v2 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026F94(&qword_10016BF68, &qword_100131BD0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_100054A14(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_100057720(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void *sub_1000A2384()
{
  v1 = v0;
  v2 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026F94(&qword_10016BF88, &unk_100131BF0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_100054A14(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_100057720(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void *sub_1000A259C()
{
  v1 = v0;
  v2 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026F94(&qword_10016BF78, &qword_100131BE0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_100054A14(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_100057720(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void *sub_1000A27B4()
{
  v1 = v0;
  sub_100026F94(&qword_10016B5A0, &qword_1001311F8);
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

void *sub_1000A2924()
{
  v1 = v0;
  sub_100026F94(&qword_10016BF90, &qword_1001321F0);
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

  return result;
}

void *sub_1000A2A9C()
{
  v1 = v0;
  sub_100026F94(&qword_10016B000, &qword_100131BC0);
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
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

void *sub_1000A2C24()
{
  v1 = v0;
  sub_100026F94(&qword_10016BF58, &qword_100131BB8);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1000A2D70()
{
  v1 = v0;
  sub_100026F94(&qword_10016C470, &unk_1001325D0);
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
        v17 <<= 6;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        *&v34[9] = *(v19 + v17 + 41);
        v33 = v24;
        *v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = *v34;
        *(v27 + 41) = *&v34[9];
        v27[1] = v29;
        v27[2] = v30;
        *v27 = v28;

        result = sub_100092A0C(&v32, &v31);
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

void *sub_1000A2F20()
{
  v1 = v0;
  sub_100026F94(&qword_10016B5A8, &unk_100131200);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
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

void *sub_1000A3064()
{
  v1 = v0;
  sub_100026F94(&qword_10016B560, &qword_1001311D0);
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

void *sub_1000A31C0()
{
  v1 = v0;
  v2 = type metadata accessor for ForwardDeletionRules();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026F94(&qword_10016B580, &qword_1001311D8);
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

id sub_1000A33F8()
{
  v1 = v0;
  sub_100026F94(&qword_10016B590, &qword_1001325A0);
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

uint64_t sub_1000A3548(uint64_t a1, uint64_t a2)
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
    sub_1000A3064();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1000A3684(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1000A3684(unint64_t result)
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

uint64_t sub_1000A3848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v23[3] = type metadata accessor for DatabaseConnectionManagerImplementation();
  v23[4] = &off_100164E98;
  v23[0] = a1;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100026EEC(v23, v22);
  sub_1000A3D14(a2, v20);
  v11 = sub_1000A3FAC(&qword_10016C460, v10, type metadata accessor for AccessCredentialDataCleanupTask, &unk_10013247C);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  sub_10002C604(v22, v12 + 32);
  v13 = v20[4];
  *(v12 + 152) = v20[5];
  v14 = v20[7];
  *(v12 + 168) = v20[6];
  *(v12 + 184) = v14;
  v15 = v20[0];
  *(v12 + 88) = v20[1];
  v16 = v20[3];
  *(v12 + 104) = v20[2];
  *(v12 + 120) = v16;
  *(v12 + 136) = v13;
  v17 = v21;
  *(v12 + 72) = v15;
  *(v12 + 200) = v17;
  *(v12 + 208) = a3;
  swift_retain_n();

  sub_10009C9B8(0, 0, v8, &unk_100132560, v12);

  return sub_100026FDC(v23);
}

uint64_t sub_1000A3A38(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A588 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016C388);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v19, v18, a1, v16, v17, 2u);

LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1000A3DC4()
{
  result = qword_10016AD30;
  if (!qword_10016AD30)
  {
    sub_10002AD94(&qword_10016AD28, &unk_1001318C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AD30);
  }

  return result;
}

uint64_t sub_1000A3E28()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A3E68()
{
  swift_unknownObjectRelease();
  sub_100026FDC((v0 + 32));

  sub_100026FDC((v0 + 120));

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_1000A3EE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[26];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100042680;

  return sub_10009DEC4(a1, v4, v5, (v1 + 4), (v1 + 9), v6);
}

uint64_t sub_1000A3FAC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A3FF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A402C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000A444C;

  return sub_10009E2CC(a1, v4);
}

uint64_t sub_1000A40E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100042680;

  return sub_10009E2CC(a1, v4);
}

uint64_t getEnumTagSinglePayload for AccessCredentialDataCleanupTask.Config(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessCredentialDataCleanupTask.Config(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_1000A4450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

uint64_t sub_1000A44B0()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016C4A8);
  v1 = sub_10002FD14(v0, qword_10016C4A8);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000A4578(uint64_t a1)
{
  v2[68] = v1;
  v2[67] = a1;
  v3 = sub_100026F94(&qword_10016C450, &unk_1001324B8);
  v2[69] = v3;
  v2[70] = *(v3 - 8);
  v2[71] = swift_task_alloc();
  v4 = type metadata accessor for Delete();
  v2[72] = v4;
  v2[73] = *(v4 - 8);
  v2[74] = swift_task_alloc();
  v5 = type metadata accessor for Setter();
  v2[75] = v5;
  v2[76] = *(v5 - 8);
  v2[77] = swift_task_alloc();
  v6 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v2[78] = v6;
  v2[79] = *(v6 - 8);
  v2[80] = swift_task_alloc();
  v7 = type metadata accessor for Update();
  v2[81] = v7;
  v2[82] = *(v7 - 8);
  v2[83] = swift_task_alloc();
  v8 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v2[84] = v8;
  v2[85] = *(v8 - 8);
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v9 = type metadata accessor for Table();
  v2[88] = v9;
  v2[89] = *(v9 - 8);
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v2[92] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v2[93] = swift_task_alloc();
  v10 = type metadata accessor for OSSignpostID();
  v2[94] = v10;
  v2[95] = *(v10 - 8);
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v2[98] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v2[99] = sub_1000A8F48(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[100] = v12;
  v2[101] = v11;

  return _swift_task_switch(sub_1000A4A08, v12, v11);
}

uint64_t sub_1000A4A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A598 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016C4A8);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "AppDataCleanupTask.run", "", v7, 2u);
  }

  v9 = *(v3 + 776);
  v10 = *(v3 + 768);
  v11 = *(v3 + 760);
  v12 = *(v3 + 752);

  (*(v11 + 16))(v10, v9, v12);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v3 + 816) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v12);
  if (qword_10016A590 != -1)
  {
    swift_once();
  }

  v13 = *(v3 + 544);
  sub_100026F50(qword_10016C480, qword_10016C498);
  *(v3 + 824) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v14 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 832) = *(v14 + 72);
  *(v3 + 1040) = *(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x800000010013C2D0;
  v15._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  v16 = *(v13 + 112);
  *(v3 + 840) = v16;
  v17 = *(v13 + 120);
  *(v3 + 848) = v17;
  *(v3 + 296) = &type metadata for String;
  *(v3 + 272) = v16;
  *(v3 + 280) = v17;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v3 + 272);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v19 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v20 = swift_task_alloc();
  *(v3 + 856) = v20;
  *v20 = v3;
  v20[1] = sub_1000A4DA4;

  return BaseObjectGraph.inject<A>(_:)(v3 + 152, v19, v19);
}

uint64_t sub_1000A4DA4()
{
  v2 = *v1;
  *(*v1 + 864) = v0;

  v3 = *(v2 + 808);
  v4 = *(v2 + 800);
  if (v0)
  {
    v5 = sub_1000A7BB0;
  }

  else
  {
    v5 = sub_1000A4EE0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000A4EE0()
{
  sub_100026F50(v0 + 19, v0[22]);
  v1 = swift_task_alloc();
  v0[109] = v1;
  *v1 = v0;
  v1[1] = sub_1000A4F7C;

  return sub_10005CC18();
}

uint64_t sub_1000A4F7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 880) = v1;

  if (v1)
  {
    v5 = v4[101];
    v6 = v4[100];
    v7 = sub_1000A54A8;
  }

  else
  {
    v4[111] = a1;
    v5 = v4[101];
    v6 = v4[100];
    v7 = sub_1000A50AC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000A50AC()
{
  v1 = v0[111];
  v2 = v0[106];
  v0[58] = v0[105];
  v0[59] = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 58;
  v4 = sub_10008AC28(sub_10002F1A8, v3, v1);

  if (v4)
  {
    v5 = sub_100026F94(&qword_10016C570, &qword_1001326A8);
    v6 = swift_task_alloc();
    v0[112] = v6;
    *v6 = v0;
    v6[1] = sub_1000A56B0;

    return BaseObjectGraph.inject<A>(_:)(v0 + 24, v5, v5);
  }

  else
  {
    v7 = v0[106];
    v8 = v0[105];
    sub_100026F50(qword_10016C480, qword_10016C498);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._object = 0x800000010013C300;
    v9._countAndFlagsBits = 0xD000000000000013;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    v0[41] = &type metadata for String;
    v0[38] = v8;
    v0[39] = v7;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504((v0 + 38));
    v10._countAndFlagsBits = 0xD000000000000026;
    v10._object = 0x800000010013C320;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC(v0 + 19);
    v11 = v0[102];
    v12 = v0[99];
    v13 = v0[98];
    v14 = v0[92];
    v15 = v0[67];
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = v13;
    v17[3] = v12;
    v17[4] = v15;

    sub_10009C9B8(0, 0, v14, &unk_1001326A0, v17);

    sub_1000A8C6C("AppDataCleanupTask.run", 22, 2, v11);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1000A54A8()
{
  sub_100026FDC(v0 + 19);
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[92];
  v5 = v0[67];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001327D0, v7);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000A56B0()
{
  v2 = *v1;
  *(*v1 + 904) = v0;

  v3 = *(v2 + 808);
  v4 = *(v2 + 800);
  if (v0)
  {
    v5 = sub_1000A7DB0;
  }

  else
  {
    v5 = sub_1000A57EC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000A57EC()
{
  v1 = v0[113];
  v2 = v0[106];
  v3 = v0[105];
  objc_allocWithZone(LSApplicationRecord);

  v4 = sub_1000A8530(v3, v2, 0);
  if (v1)
  {

LABEL_3:
    v5 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
    v6 = swift_task_alloc();
    v0[116] = v6;
    *v6 = v0;
    v6[1] = sub_1000A5FF0;

    return BaseObjectGraph.inject<A>(_:)(v0 + 29, v5, v5);
  }

  if (!v4)
  {
    goto LABEL_3;
  }

  v7 = v0[106];
  v8 = v0[105];

  sub_100026F50(qword_10016C480, qword_10016C498);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD00000000000001DLL;
  v9._object = 0x800000010013C3B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v0[57] = &type metadata for String;
  v0[54] = v8;
  v0[55] = v7;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 54));
  v10._object = 0x800000010013C3D0;
  v10._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100026F50(v0 + 19, v0[22]);
  v11 = swift_task_alloc();
  v0[114] = v11;
  *v11 = v0;
  v11[1] = sub_1000A5A9C;
  v12 = v0[106];
  v13 = v0[105];

  return sub_10005BB70(v13, v12);
}

uint64_t sub_1000A5A9C()
{
  v2 = *v1;
  *(*v1 + 920) = v0;

  v3 = *(v2 + 808);
  v4 = *(v2 + 800);
  if (v0)
  {
    v5 = sub_1000A5DE0;
  }

  else
  {
    v5 = sub_1000A5BD8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000A5BD8()
{
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 19);
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[92];
  v5 = v0[67];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_100132710, v7);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000A5DE0()
{
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 19);
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[92];
  v5 = v0[67];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_100132708, v7);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000A5FF0()
{
  v2 = *v1;
  *(*v1 + 936) = v0;

  v3 = *(v2 + 808);
  v4 = *(v2 + 800);
  if (v0)
  {
    v5 = sub_1000A7FB8;
  }

  else
  {
    v5 = sub_1000A612C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000A612C()
{
  sub_100026F50(v0 + 19, v0[22]);
  v1 = swift_task_alloc();
  v0[118] = v1;
  *v1 = v0;
  v1[1] = sub_1000A61D4;
  v2 = v0[106];
  v3 = v0[105];

  return sub_10006015C(v3, v2);
}

uint64_t sub_1000A61D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 952) = a1;
  *(v4 + 960) = v1;

  v5 = *(v3 + 808);
  v6 = *(v3 + 800);
  if (v1)
  {
    v7 = sub_1000A65D0;
  }

  else
  {
    v7 = sub_1000A631C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000A631C()
{
  result = v0[119];
  v2 = *(result + 16);
  v0[121] = v2;
  if (v2)
  {
    v0[122] = 0;
    if (*(result + 16))
    {
      sub_1000A3D14(result + 32, (v0 + 2));
      sub_100026F50(qword_10016C480, qword_10016C498);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v3._object = 0x800000010013C350;
      v3._countAndFlagsBits = 0xD000000000000021;
      LogMessage.StringInterpolation.appendLiteral(_:)(v3);
      v5 = v0[15];
      v4 = v0[16];
      v0[123] = v5;
      v0[124] = v4;
      v0[45] = &type metadata for String;
      v0[42] = v5;
      v0[43] = v4;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002D504((v0 + 42));
      v6._countAndFlagsBits = 0x203A6E69202CLL;
      v6._object = 0xE600000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v6);
      v8 = v0[17];
      v7 = v0[18];
      v0[49] = &type metadata for String;
      v0[46] = v8;
      v0[47] = v7;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002D504((v0 + 46));
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v9);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100026F50(v0 + 29, v0[32]);
      v10 = swift_task_alloc();
      v0[125] = v10;
      *v10 = v0;
      v10[1] = sub_1000A67E8;
      v11 = v0[106];
      v12 = v0[105];

      return sub_10009D2E4((v0 + 2), v12, v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_100026F50(v0 + 19, v0[22]);
    v13 = swift_task_alloc();
    v0[128] = v13;
    *v13 = v0;
    v13[1] = sub_1000A7568;
    v14 = v0[106];
    v15 = v0[105];

    return sub_10005BB70(v15, v14);
  }

  return result;
}

uint64_t sub_1000A65D0()
{
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 29);
  sub_100026FDC(v0 + 19);
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[92];
  v5 = v0[67];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_100132AD0, v7);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000A67E8(uint64_t a1)
{
  v3 = *v2;
  v3[126] = a1;
  v3[127] = v1;

  if (v1)
  {

    v4 = v3[101];
    v5 = v3[100];
    v6 = sub_1000A81C8;
  }

  else
  {
    v4 = v3[101];
    v5 = v3[100];
    v6 = sub_1000A6910;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1000A6910()
{
  v62 = v0[127];
  v1 = v0[106];
  v2 = v0[105];
  v63 = v0[90];
  v66 = v0[89];
  v56 = v0[88];
  v58 = v0[86];
  v65 = v0[85];
  v3 = v0[84];
  v4 = v0[80];
  v5 = v0[79];
  v57 = v0[78];
  v59 = v0[77];
  v60 = v0[76];
  v61 = v0[75];

  Table.init(_:database:)();
  static Connection.ServiceColumns.bundleIds.getter();
  v0[60] = 47;
  v0[61] = 0xE100000000000000;
  v6._countAndFlagsBits = v2;
  v6._object = v1;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 47;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  sub_1000A3DC4();
  ExpressionType<>.like(_:escape:)();

  sub_1000A8F48(&qword_10016AD20, 255, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  QueryType.where(_:)();
  v55 = *(v5 + 8);
  v55(v4, v57);
  v0[62] = 47;
  v0[63] = 0xE100000000000000;
  v8._countAndFlagsBits = v2;
  v8._object = v1;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 47;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  ExpressionType<>.replace(_:with:)();

  <- infix<A>(_:_:)();
  v10 = *(v65 + 8);
  v10(v58, v3);
  QueryType.update(_:_:)();
  (*(v60 + 8))(v59, v61);
  v11 = *(v66 + 8);
  v11(v63, v56);
  Connection.run(_:)();
  v12 = v0[88];
  v64 = v0[87];
  if (v62)
  {
    v13 = v0[91];
    v14 = v0[84];
    v15 = v0[83];
    v16 = v0[82];
    v17 = v11;
    v18 = v0[81];
    v19 = v0[68];

    (*(v16 + 8))(v15, v18);
    v10(v64, v14);
    v17(v13, v12);
    v23 = sub_100026F50(v0 + 29, v0[32]);
    sub_1000A8A3C(*v23, (v0 + 2), v19);

    sub_1000A3D70((v0 + 2));
    sub_100026FDC(v0 + 24);
    sub_100026FDC(v0 + 29);
    sub_100026FDC(v0 + 19);
    v24 = v0[102];
    v25 = v0[99];
    v26 = v0[98];
    v27 = v0[92];
    v28 = v0[67];
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = v26;
    v30[3] = v25;
    v30[4] = v28;

    sub_10009C9B8(0, 0, v27, &unk_1001326D8, v30);

    sub_1000A8C6C("AppDataCleanupTask.run", 22, 2, v24);

    v31 = v0[1];

    return v31();
  }

  else
  {
    v20 = v0[90];
    v21 = v0[80];
    v22 = v0[78];
    (*(v0[82] + 8))(v0[83], v0[81]);
    v0[64] = 0;
    v0[65] = 0xE000000000000000;
    static Expression<A>.== infix<A>(_:_:)();
    QueryType.where(_:)();
    v55(v21, v22);
    QueryType.delete()();
    v11(v20, v12);
    Connection.run(_:)();
    (*(v0[73] + 8))(v0[74], v0[72]);
    sub_1000A8F48(&qword_10016AD68, 255, &type metadata accessor for Table, &protocol conformance descriptor for Table);
    SchemaType.count.getter();
    Connection.scalar<A>(_:)();
    (*(v0[70] + 8))(v0[71], v0[69]);
    if (!v0[66])
    {
      v54 = default argument 0 of SchemaType.drop(ifExists:)();
      SchemaType.drop(ifExists:)(v54 & 1);
      Connection.run(_:_:)();
    }

    v33 = v0[121];
    v34 = v0[91];
    v35 = v0[88];
    v36 = v0[68];
    v37 = v0[122] + 1;
    v10(v0[87], v0[84]);
    v11(v34, v35);
    v38 = sub_100026F50(v0 + 29, v0[32]);
    sub_1000A8A3C(*v38, (v0 + 2), v36);

    result = sub_1000A3D70((v0 + 2));
    if (v37 == v33)
    {

      sub_100026F50(v0 + 19, v0[22]);
      v39 = swift_task_alloc();
      v0[128] = v39;
      *v39 = v0;
      v39[1] = sub_1000A7568;
      v40 = v0[106];
      v41 = v0[105];

      return sub_10005BB70(v41, v40);
    }

    else
    {
      v42 = v0[122] + 1;
      v0[122] = v42;
      v43 = v0[119];
      if (v42 >= *(v43 + 16))
      {
        __break(1u);
      }

      else
      {
        sub_1000A3D14(v43 + 136 * v42 + 32, (v0 + 2));
        sub_100026F50(qword_10016C480, qword_10016C498);
        *(swift_allocObject() + 16) = xmmword_10012FA10;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v44._object = 0x800000010013C350;
        v44._countAndFlagsBits = 0xD000000000000021;
        LogMessage.StringInterpolation.appendLiteral(_:)(v44);
        v46 = v0[15];
        v45 = v0[16];
        v0[123] = v46;
        v0[124] = v45;
        v0[45] = &type metadata for String;
        v0[42] = v46;
        v0[43] = v45;

        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002D504((v0 + 42));
        v47._countAndFlagsBits = 0x203A6E69202CLL;
        v47._object = 0xE600000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v47);
        v49 = v0[17];
        v48 = v0[18];
        v0[49] = &type metadata for String;
        v0[46] = v49;
        v0[47] = v48;

        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002D504((v0 + 46));
        v50._countAndFlagsBits = 0;
        v50._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v50);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100026F50(v0 + 29, v0[32]);
        v51 = swift_task_alloc();
        v0[125] = v51;
        *v51 = v0;
        v51[1] = sub_1000A67E8;
        v52 = v0[106];
        v53 = v0[105];

        return sub_10009D2E4((v0 + 2), v53, v52);
      }
    }
  }

  return result;
}

uint64_t sub_1000A7568()
{
  v2 = *v1;
  *(*v1 + 1032) = v0;

  v3 = *(v2 + 808);
  v4 = *(v2 + 800);
  if (v0)
  {
    v5 = sub_1000A76A4;
  }

  else
  {
    v5 = sub_1000A78BC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000A76A4()
{
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 29);
  sub_100026FDC(v0 + 19);
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[92];
  v5 = v0[67];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001326F8, v7);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000A78BC()
{
  v1 = v0[106];
  v2 = v0[105];
  sub_100026F50(qword_10016C480, qword_10016C498);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x800000010013C380;
  v3._countAndFlagsBits = 0xD00000000000002CLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  v0[53] = &type metadata for String;
  v0[50] = v2;
  v0[51] = v1;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 50));
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 29);
  sub_100026FDC(v0 + 19);
  v5 = v0[102];
  v6 = v0[99];
  v7 = v0[98];
  v8 = v0[92];
  v9 = v0[67];
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v6;
  v11[4] = v9;

  sub_10009C9B8(0, 0, v8, &unk_100132700, v11);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2, v5);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000A7BB0()
{
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[92];
  v5 = v0[67];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001324D0, v7);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000A7DB0()
{
  sub_100026FDC(v0 + 19);
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[92];
  v5 = v0[67];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001326B0, v7);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000A7FB8()
{
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 19);
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[92];
  v5 = v0[67];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001326C0, v7);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000A81C8()
{
  sub_1000A3D70((v0 + 2));
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 29);
  sub_100026FDC(v0 + 19);
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[92];
  v5 = v0[67];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001326D0, v7);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000A840C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100042680;

  return sub_1000A4578(a1);
}

uint64_t sub_1000A84A4()
{
  v1 = *(*v0 + 112);

  return v1;
}

uint64_t sub_1000A84D8(uint64_t a1, uint64_t a2)
{
  result = sub_1000A8F48(&qword_10016C568, a2, type metadata accessor for AppDataCleanupTask, &unk_100132614);
  *(a1 + 8) = result;
  return result;
}

id sub_1000A8530(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

void sub_1000A860C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A8618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for StorageCategory();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_1000A8F48(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A876C, v9, v8);
}

uint64_t sub_1000A876C()
{
  v1 = *(v0 + 32);
  v2 = sub_100026F50(*(v0 + 16), *(*(v0 + 16) + 24));
  *(v0 + 64) = *(v1 + 112);
  *(v0 + 72) = *(v1 + 120);
  *(v0 + 80) = *v2;

  return _swift_task_switch(sub_1000A87F4, 0, 0);
}

uint64_t sub_1000A87F4()
{
  v1 = v0[3];
  v3 = *(v1 + 120);
  v2 = *(v1 + 128);
  (*(v0[6] + 104))(v0[7], enum case for StorageCategory.classC(_:), v0[5]);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1000A88E0;
  v5 = v0[9];
  v6 = v0[7];
  v7 = v0[8];

  return sub_10009D9D8(v3, v2, v6, v1 + 16, v7, v5);
}

uint64_t sub_1000A88E0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000A8A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v24[3] = type metadata accessor for DatabaseConnectionManagerImplementation();
  v24[4] = &off_100164E98;
  v24[0] = a1;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100026EEC(v24, v23);
  sub_1000A3D14(a2, v21);
  v10 = qword_10016A6C8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_1001738A8;
  v12 = sub_1000A8F48(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  sub_10002C604(v23, v13 + 32);
  v14 = v21[4];
  *(v13 + 152) = v21[5];
  v15 = v21[7];
  *(v13 + 168) = v21[6];
  *(v13 + 184) = v15;
  v16 = v21[0];
  *(v13 + 88) = v21[1];
  v17 = v21[3];
  *(v13 + 104) = v21[2];
  *(v13 + 120) = v17;
  *(v13 + 136) = v14;
  v18 = v22;
  *(v13 + 72) = v16;
  *(v13 + 200) = v18;
  *(v13 + 208) = a3;

  sub_10009C9B8(0, 0, v8, &unk_100132720, v13);

  return sub_100026FDC(v24);
}

uint64_t sub_1000A8C6C(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A598 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016C4A8);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v19, v18, a1, v16, v17, 2u);

LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000A8F48(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A8F90()
{
  swift_unknownObjectRelease();
  sub_100026FDC((v0 + 32));

  sub_100026FDC((v0 + 120));

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_1000A9010(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[26];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100042680;

  return sub_1000A8618(a1, v4, v5, (v1 + 4), (v1 + 9), v6);
}

uint64_t sub_1000A910C()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016C578);
  v1 = sub_10002FD14(v0, qword_10016C578);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000A91F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100042680;

  return sub_1000A9604(a1);
}

uint64_t sub_1000A92D0(uint64_t a1, uint64_t a2)
{
  result = sub_1000ABADC(&qword_10016C630, a2, type metadata accessor for CheckInstalledAppsTask, &unk_100132748);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000A9328(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A5A0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016C578);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v19, v18, a1, v16, v17, 2u);

LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000A9604(uint64_t a1)
{
  v1[28] = a1;
  v2 = type metadata accessor for ForwardDeletionRules();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v1[32] = swift_task_alloc();
  v3 = type metadata accessor for OSSignpostID();
  v1[33] = v3;
  v1[34] = *(v3 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v1[37] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v1[38] = sub_1000ABADC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[39] = v4;
  v1[40] = v5;

  return _swift_task_switch(sub_1000A9830, v4, v5);
}

uint64_t sub_1000A9830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A5A0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016C578);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "CheckInstalledAppsTask.run", "", v7, 2u);
  }

  v9 = *(v3 + 280);
  v10 = *(v3 + 288);
  v11 = *(v3 + 264);
  v12 = *(v3 + 272);

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v3 + 328) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  *(v3 + 336) = qword_100173878;
  TaskLocal.get()();
  sub_100026F50((v3 + 16), *(v3 + 40));
  *(v3 + 344) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v13 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 352) = *(v13 + 72);
  *(v3 + 512) = *(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC((v3 + 16));
  v14 = sub_100026F94(&qword_10016C458, &qword_1001324C8);
  v15 = swift_task_alloc();
  *(v3 + 360) = v15;
  *v15 = v3;
  v15[1] = sub_1000A9BA0;

  return BaseObjectGraph.inject<A>(_:)(v3 + 56, v14, v14);
}

uint64_t sub_1000A9BA0()
{
  v2 = *v1;
  v2[46] = v0;

  if (v0)
  {
    v3 = v2[39];
    v4 = v2[40];

    return _swift_task_switch(sub_1000AB5E4, v3, v4);
  }

  else
  {
    v5 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v6 = swift_task_alloc();
    v2[47] = v6;
    *v6 = v2;
    v6[1] = sub_1000A9D84;

    return BaseObjectGraph.inject<A>(_:)(v2 + 12, v5, v5);
  }
}

uint64_t sub_1000A9D84()
{
  v2 = *v1;
  v2[48] = v0;

  if (v0)
  {
    v3 = v2[39];
    v4 = v2[40];

    return _swift_task_switch(sub_1000AB784, v3, v4);
  }

  else
  {
    v5 = sub_100026F94(&qword_10016C570, &qword_1001326A8);
    v6 = swift_task_alloc();
    v2[49] = v6;
    *v6 = v2;
    v6[1] = sub_1000A9F68;

    return BaseObjectGraph.inject<A>(_:)(v2 + 17, v5, v5);
  }
}

uint64_t sub_1000A9F68()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_1000AB92C;
  }

  else
  {
    v5 = sub_1000AA0D0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000AA0D0()
{
  sub_100026F50(v0 + 7, v0[10]);
  v1 = swift_task_alloc();
  v0[51] = v1;
  *v1 = v0;
  v1[1] = sub_1000AA198;

  return sub_100038FC0();
}

uint64_t sub_1000AA198(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 416) = a1;
  *(v4 + 424) = v1;

  v5 = *(v3 + 320);
  v6 = *(v3 + 312);
  if (v1)
  {
    v7 = sub_1000AA848;
  }

  else
  {
    v7 = sub_1000AA308;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000AA308()
{
  v1 = *(v0 + 416);
  v2 = v1[2];
  *(v0 + 432) = v2;
  if (v2)
  {
    *(v0 + 516) = *(*(v0 + 240) + 80);
    *(v0 + 440) = 0;
    if (v1[2])
    {
      v3 = 0;
      while (1)
      {
        (*(*(v0 + 240) + 16))(*(v0 + 248), v1 + ((*(v0 + 516) + 32) & ~*(v0 + 516)) + *(*(v0 + 240) + 72) * v3, *(v0 + 232));
        v1 = ForwardDeletionRules.bundleIds.getter();
        *(v0 + 448) = v1;
        v4 = v1[2];
        *(v0 + 456) = v4;
        if (v4)
        {
          break;
        }

        v6 = *(v0 + 432);
        v5 = *(v0 + 440);
        v8 = *(v0 + 240);
        v7 = *(v0 + 248);
        v9 = *(v0 + 232);

        (*(v8 + 8))(v7, v9);
        if (v5 + 1 == v6)
        {
          goto LABEL_13;
        }

        v3 = *(v0 + 440) + 1;
        *(v0 + 440) = v3;
        v1 = *(v0 + 416);
        if (v3 >= v1[2])
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      __break(1u);
    }

    *(v0 + 464) = 0;
    if (!v1[2])
    {
      __break(1u);
    }

    v11 = v1[4];
    v10 = v1[5];
    *(v0 + 472) = v10;
    v12 = objc_allocWithZone(LSApplicationRecord);

    v13 = String._bridgeToObjectiveC()();
    *(v0 + 216) = 0;
    v14 = [v12 initWithBundleIdentifier:v13 allowPlaceholder:0 error:v0 + 216];

    v15 = *(v0 + 216);
    if (v14)
    {
      v16 = v15;

      sub_100026F50((v0 + 96), *(v0 + 120));
      v17 = swift_task_alloc();
      *(v0 + 496) = v17;
      *v17 = v0;
      v17[1] = sub_1000AAB84;

      return sub_10005BB70(v11, v10);
    }

    else
    {
      v24 = v15;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_100026F50((v0 + 96), *(v0 + 120));
      ForwardDeletionRules.retentionInterval.getter();
      v26 = v25;
      v27 = swift_task_alloc();
      *(v0 + 480) = v27;
      *v27 = v0;
      v27[1] = sub_1000AAA00;

      return sub_100058A70(v11, v10, v26);
    }
  }

  else
  {
LABEL_13:

    v29 = *(v0 + 304);
    v30 = *(v0 + 328);
    v28 = *(v0 + 296);
    v19 = *(v0 + 256);
    v20 = *(v0 + 224);
    TaskLocal.get()();
    sub_100026F50((v0 + 176), *(v0 + 200));
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 136));
    sub_100026FDC((v0 + 176));
    sub_100026FDC((v0 + 96));
    sub_100026FDC((v0 + 56));
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = v28;
    v22[3] = v29;
    v22[4] = v20;

    sub_10009C9B8(0, 0, v19, &unk_1001327E8, v22);

    sub_1000A9328("CheckInstalledAppsTask.run", 26, 2, v30);

    v23 = *(v0 + 8);

    return v23();
  }
}

void sub_1000AA83C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __break(1u);
}

uint64_t sub_1000AA848()
{
  sub_100026FDC(v0 + 17);
  sub_100026FDC(v0 + 12);
  sub_100026FDC(v0 + 7);
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[32];
  v5 = v0[28];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001326B0, v7);

  sub_1000A9328("CheckInstalledAppsTask.run", 26, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000AAA00()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {

    v3 = *(v2 + 312);
    v4 = *(v2 + 320);
    v5 = sub_1000AB414;
  }

  else
  {
    v3 = *(v2 + 312);
    v4 = *(v2 + 320);
    v5 = sub_1000ABBF4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000AAB84()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {

    v3 = *(v2 + 312);
    v4 = *(v2 + 320);
    v5 = sub_1000AB244;
  }

  else
  {
    v3 = *(v2 + 312);
    v4 = *(v2 + 320);
    v5 = sub_1000AAD08;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000AAD08()
{
  v1 = *(v0 + 464) + 1;
  if (v1 == *(v0 + 456))
  {
    while (1)
    {
      v3 = *(v0 + 432);
      v2 = *(v0 + 440);
      v5 = *(v0 + 240);
      v4 = *(v0 + 248);
      v6 = *(v0 + 232);

      (*(v5 + 8))(v4, v6);
      if (v2 + 1 == v3)
      {
        break;
      }

      v7 = *(v0 + 440) + 1;
      *(v0 + 440) = v7;
      v8 = *(v0 + 416);
      if (v7 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      (*(*(v0 + 240) + 16))(*(v0 + 248), v8 + ((*(v0 + 516) + 32) & ~*(v0 + 516)) + *(*(v0 + 240) + 72) * v7, *(v0 + 232));
      v9 = ForwardDeletionRules.bundleIds.getter();
      *(v0 + 448) = v9;
      v10 = *(v9 + 16);
      *(v0 + 456) = v10;
      if (v10)
      {
        v1 = 0;
        goto LABEL_7;
      }
    }

    v31 = *(v0 + 304);
    v32 = *(v0 + 328);
    v30 = *(v0 + 296);
    v25 = *(v0 + 256);
    v26 = *(v0 + 224);
    TaskLocal.get()();
    sub_100026F50((v0 + 176), *(v0 + 200));
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 136));
    sub_100026FDC((v0 + 176));
    sub_100026FDC((v0 + 96));
    sub_100026FDC((v0 + 56));
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = v30;
    v28[3] = v31;
    v28[4] = v26;

    sub_10009C9B8(0, 0, v25, &unk_1001327E8, v28);

    sub_1000A9328("CheckInstalledAppsTask.run", 26, 2, v32);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v9 = *(v0 + 448);
LABEL_7:
    *(v0 + 464) = v1;
    if (v1 >= *(v9 + 16))
    {
LABEL_19:
      __break(1u);
    }

    v11 = v9 + 16 * v1;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    *(v0 + 472) = v12;
    v14 = objc_allocWithZone(LSApplicationRecord);

    v15 = String._bridgeToObjectiveC()();
    *(v0 + 216) = 0;
    v16 = [v14 initWithBundleIdentifier:v15 allowPlaceholder:0 error:v0 + 216];

    v17 = *(v0 + 216);
    if (v16)
    {
      v18 = v17;

      sub_100026F50((v0 + 96), *(v0 + 120));
      v19 = swift_task_alloc();
      *(v0 + 496) = v19;
      *v19 = v0;
      v19[1] = sub_1000AAB84;

      return sub_10005BB70(v13, v12);
    }

    else
    {
      v21 = v17;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_100026F50((v0 + 96), *(v0 + 120));
      ForwardDeletionRules.retentionInterval.getter();
      v23 = v22;
      v24 = swift_task_alloc();
      *(v0 + 480) = v24;
      *v24 = v0;
      v24[1] = sub_1000AAA00;

      return sub_100058A70(v13, v12, v23);
    }
  }
}

void sub_1000AB238(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __break(1u);
}

uint64_t sub_1000AB244()
{
  (*(v0[30] + 8))(v0[31], v0[29]);
  sub_100026FDC(v0 + 17);
  sub_100026FDC(v0 + 12);
  sub_100026FDC(v0 + 7);
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[32];
  v5 = v0[28];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001326D0, v7);

  sub_1000A9328("CheckInstalledAppsTask.run", 26, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000AB414()
{
  (*(v0[30] + 8))(v0[31], v0[29]);
  sub_100026FDC(v0 + 17);
  sub_100026FDC(v0 + 12);
  sub_100026FDC(v0 + 7);
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[32];
  v5 = v0[28];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001326C0, v7);

  sub_1000A9328("CheckInstalledAppsTask.run", 26, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000AB5E4()
{
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[32];
  v5 = v0[28];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001324D0, v7);

  sub_1000A9328("CheckInstalledAppsTask.run", 26, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000AB784()
{
  sub_100026FDC(v0 + 7);
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[32];
  v5 = v0[28];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001327D0, v7);

  sub_1000A9328("CheckInstalledAppsTask.run", 26, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000AB92C()
{
  sub_100026FDC(v0 + 12);
  sub_100026FDC(v0 + 7);
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[32];
  v5 = v0[28];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001327E0, v7);

  sub_1000A9328("CheckInstalledAppsTask.run", 26, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000ABADC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000ABB28(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100042680;

  return sub_1000BC7E8();
}

uint64_t sub_1000ABBF4()
{

  return sub_1000AAD08();
}

uint64_t sub_1000ABC68()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016C638);
  v1 = sub_10002FD14(v0, qword_10016C638);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000ABD54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100042680;

  return sub_1000AC130(a1);
}

uint64_t sub_1000ABDFC(uint64_t a1, uint64_t a2)
{
  result = sub_1000ACE00(&qword_10016C6F0, a2, type metadata accessor for CheckInvalidAccessCredentialsTask, &unk_100132814);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000ABE54(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A5A8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016C638);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v19, v18, a1, v16, v17, 2u);

LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000AC130(uint64_t a1)
{
  v1[17] = a1;
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v1[18] = swift_task_alloc();
  v2 = type metadata accessor for OSSignpostID();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v1[23] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v1[24] = sub_1000ACE00(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[25] = v4;
  v1[26] = v3;

  return _swift_task_switch(sub_1000AC2CC, v4, v3);
}

uint64_t sub_1000AC2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A5A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016C638);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "CheckInvalidAccessCredentialsTask.run", "", v7, 2u);
  }

  v9 = *(v3 + 168);
  v10 = *(v3 + 176);
  v11 = *(v3 + 152);
  v12 = *(v3 + 160);

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v3 + 216) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  *(v3 + 224) = qword_100173878;
  TaskLocal.get()();
  sub_100026F50((v3 + 16), *(v3 + 40));
  *(v3 + 232) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v13 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 240) = *(v13 + 72);
  *(v3 + 280) = *(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC((v3 + 16));
  v14 = sub_100026F94(&qword_10016C458, &qword_1001324C8);
  v15 = swift_task_alloc();
  *(v3 + 248) = v15;
  *v15 = v3;
  v15[1] = sub_1000AC610;

  return BaseObjectGraph.inject<A>(_:)(v3 + 56, v14, v14);
}

uint64_t sub_1000AC610()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = sub_1000ACCA0;
  }

  else
  {
    v5 = sub_1000AC74C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000AC74C()
{
  sub_100026F50(v0 + 7, v0[10]);
  v1 = swift_task_alloc();
  v0[33] = v1;
  *v1 = v0;
  v1[1] = sub_1000AC7F0;
  v2 = v0[17];

  return sub_100034D04(v2);
}

uint64_t sub_1000AC7F0()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = sub_1000AC92C;
  }

  else
  {
    v5 = sub_1000ACA94;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000AC92C()
{
  sub_100026FDC(v0 + 7);
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v5 = v0[17];
  v4 = v0[18];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001327D0, v7);

  sub_1000ABE54("CheckInvalidAccessCredentialsTask.run", 37, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000ACA94()
{
  v8 = v0[24];
  v9 = v0[27];
  v7 = v0[23];
  v2 = v0[17];
  v1 = v0[18];
  TaskLocal.get()();
  sub_100026F50(v0 + 12, v0[15]);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC(v0 + 12);
  sub_100026FDC(v0 + 7);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v2;

  sub_10009C9B8(0, 0, v1, &unk_1001326A0, v4);

  sub_1000ABE54("CheckInvalidAccessCredentialsTask.run", 37, 2, v9);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000ACCA0()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v5 = v0[17];
  v4 = v0[18];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001324D0, v7);

  sub_1000ABE54("CheckInvalidAccessCredentialsTask.run", 37, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000ACE00(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1000ACE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

uint64_t sub_1000ACEB4()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016C720);
  v1 = sub_10002FD14(v0, qword_10016C720);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000ACF7C(uint64_t a1)
{
  v2[61] = a1;
  v2[62] = v1;
  type metadata accessor for LogMessage.StringInterpolation();
  v2[63] = swift_task_alloc();
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v2[64] = swift_task_alloc();
  v3 = type metadata accessor for OSSignpostID();
  v2[65] = v3;
  v2[66] = *(v3 - 8);
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();

  return _swift_task_switch(sub_1000AD0AC, v1, 0);
}

uint64_t sub_1000AD0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A5B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016C720);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "DataOwnershipIndexCleanupTask.run", "", v7, 2u);
  }

  v9 = *(v3 + 544);
  v10 = *(v3 + 536);
  v11 = *(v3 + 528);
  v12 = *(v3 + 520);

  (*(v11 + 16))(v10, v9, v12);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v3 + 552) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v12);
  if (qword_10016A5B0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016C6F8, qword_10016C710);
  *(v3 + 560) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v13 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 568) = *(v13 + 72);
  *(v3 + 680) = *(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v14 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
  v15 = swift_task_alloc();
  *(v3 + 576) = v15;
  *v15 = v3;
  v15[1] = sub_1000AD3E0;

  return BaseObjectGraph.inject<A>(_:)(v3 + 152, v14, v14);
}

uint64_t sub_1000AD3E0()
{
  v2 = *v1;
  v2[73] = v0;

  if (v0)
  {
    v3 = v2[62];

    return _swift_task_switch(sub_1000AE420, v3, 0);
  }

  else
  {
    v4 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v5 = swift_task_alloc();
    v2[74] = v5;
    *v5 = v2;
    v5[1] = sub_1000AD584;

    return BaseObjectGraph.inject<A>(_:)(v2 + 24, v4, v4);
  }
}

uint64_t sub_1000AD584()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  v3 = *(v2 + 496);
  if (v0)
  {
    v4 = sub_1000AE610;
  }

  else
  {
    v4 = sub_1000AD6B0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000AD6B0()
{
  sub_100026F50(v0 + 24, v0[27]);
  v1 = swift_task_alloc();
  v0[76] = v1;
  *v1 = v0;
  v1[1] = sub_1000AD74C;

  return sub_1000614EC();
}

uint64_t sub_1000AD74C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 616) = a1;
  *(v4 + 624) = v1;

  v5 = *(v3 + 496);
  if (v1)
  {
    v6 = sub_1000AD884;
  }

  else
  {
    v6 = sub_1000ADA84;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000AD884()
{
  v1 = v0[64];
  sub_100026FDC(v0 + 19);
  sub_100026FDC(v0 + 24);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = qword_10016A6C8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = v0[69];
  v5 = v0[64];
  v6 = v0[61];
  v7 = qword_1001738A8;
  v8 = sub_1000B0BF8(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;

  sub_10009C9B8(0, 0, v5, &unk_1001327E0, v9);

  sub_1000B091C("DataOwnershipIndexCleanupTask.run", 33, 2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000ADA84()
{
  v1 = *(v0 + 616);
  sub_100026F50(qword_10016C6F8, qword_10016C710);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x20646E756F46;
  v2._object = 0xE600000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  *(v0 + 232) = *(v1 + 16);
  v20 = (v0 + 192);
  *(v0 + 256) = &type metadata for Int;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 232);
  v3._object = 0x800000010013C640;
  v3._countAndFlagsBits = 0xD00000000000002CLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v4 = *(v1 + 16);
  *(v0 + 632) = v4;
  v5 = *(v0 + 616);
  if (v4)
  {
    *(v0 + 656) = 0;
    *(v0 + 640) = 0u;
    sub_1000A3D14(v5 + 32, v0 + 16);
    v6 = swift_task_alloc();
    *(v0 + 664) = v6;
    *v6 = v0;
    v6[1] = sub_1000ADF0C;

    return sub_1000AEDE0(v0 + 16, v0 + 152, v20);
  }

  else
  {

    v19 = *(v0 + 512);
    sub_100026F50(qword_10016C6F8, qword_10016C710);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v8._countAndFlagsBits = 0xD000000000000039;
    v8._object = 0x800000010013C6C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    *(v0 + 448) = &type metadata for Int;
    *(v0 + 424) = 0;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(v0 + 424);
    v9._countAndFlagsBits = 0x6520656C61747320;
    v9._object = 0xEE0073656972746ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 152));
    sub_100026FDC(v20);
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v19, 1, 1, v10);
    v11 = qword_10016A6C8;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 552);
    v13 = *(v0 + 512);
    v14 = *(v0 + 488);
    v15 = qword_1001738A8;
    v16 = sub_1000B0BF8(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = v16;
    v17[4] = v14;

    sub_10009C9B8(0, 0, v13, &unk_1001326B0, v17);

    sub_1000B091C("DataOwnershipIndexCleanupTask.run", 33, 2, v12);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1000ADF0C(char a1)
{
  v4 = *v2;
  *(v4 + 672) = v1;

  v5 = *(v4 + 496);
  if (v1)
  {
    v6 = sub_1000AE808;
  }

  else
  {
    *(v4 + 684) = a1 & 1;
    v6 = sub_1000AE04C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000AE04C()
{
  v1 = *(v0 + 684);
  sub_1000A3D70(v0 + 16);
  v2 = *(v0 + 648);
  if (v1)
  {
    v3 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    ++v2;
  }

  else
  {
    v3 = *(v0 + 640);
  }

  v4 = *(v0 + 656) + 1;
  if (v4 == *(v0 + 632))
  {

    v18 = *(v0 + 512);
    sub_100026F50(qword_10016C6F8, qword_10016C710);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v5._object = 0x800000010013C6C0;
    v5._countAndFlagsBits = 0xD000000000000039;
    LogMessage.StringInterpolation.appendLiteral(_:)(v5);
    *(v0 + 448) = &type metadata for Int;
    *(v0 + 424) = v3;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(v0 + 424);
    v6._countAndFlagsBits = 0x6520656C61747320;
    v6._object = 0xEE0073656972746ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v6);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 152));
    sub_100026FDC((v0 + 192));
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v18, 1, 1, v7);
    v8 = qword_10016A6C8;

    if (v8 == -1)
    {
LABEL_7:
      v9 = *(v0 + 552);
      v10 = *(v0 + 512);
      v11 = *(v0 + 488);
      v12 = qword_1001738A8;
      v13 = sub_1000B0BF8(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
      v14 = swift_allocObject();
      v14[2] = v12;
      v14[3] = v13;
      v14[4] = v11;

      sub_10009C9B8(0, 0, v10, &unk_1001326B0, v14);

      sub_1000B091C("DataOwnershipIndexCleanupTask.run", 33, 2, v9);

      v15 = *(v0 + 8);

      return v15();
    }

LABEL_14:
    swift_once();
    goto LABEL_7;
  }

  *(v0 + 656) = v4;
  *(v0 + 648) = v2;
  *(v0 + 640) = v3;
  sub_1000A3D14(*(v0 + 616) + 136 * v4 + 32, v0 + 16);
  v17 = swift_task_alloc();
  *(v0 + 664) = v17;
  *v17 = v0;
  v17[1] = sub_1000ADF0C;

  return sub_1000AEDE0(v0 + 16, v0 + 152, v0 + 192);
}

uint64_t sub_1000AE420()
{
  v1 = v0[64];
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = qword_10016A6C8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = v0[69];
  v5 = v0[64];
  v6 = v0[61];
  v7 = qword_1001738A8;
  v8 = sub_1000B0BF8(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;

  sub_10009C9B8(0, 0, v5, &unk_1001324D0, v9);

  sub_1000B091C("DataOwnershipIndexCleanupTask.run", 33, 2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000AE610()
{
  v1 = v0[64];
  sub_100026FDC(v0 + 19);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = qword_10016A6C8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = v0[69];
  v5 = v0[64];
  v6 = v0[61];
  v7 = qword_1001738A8;
  v8 = sub_1000B0BF8(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;

  sub_10009C9B8(0, 0, v5, &unk_1001327D0, v9);

  sub_1000B091C("DataOwnershipIndexCleanupTask.run", 33, 2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000AE808()
{
  sub_100026F50(qword_10016C6F8, qword_10016C710);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._countAndFlagsBits = 0xD00000000000002FLL;
  v1._object = 0x800000010013C670;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  v3 = v0[15];
  v2 = v0[16];
  v0[36] = &type metadata for String;
  v0[33] = v3;
  v0[34] = v2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 33));
  v4._countAndFlagsBits = 0x65686373206E6920;
  v4._object = 0xEC000000203A616DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v6 = v0[17];
  v5 = v0[18];
  v0[40] = &type metadata for String;
  v0[37] = v6;
  v0[38] = v5;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 37));
  v7._object = 0x800000010013C6A0;
  v7._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v9 = v0[2];
  v8 = v0[3];
  v0[44] = &type metadata for String;
  v0[41] = v9;
  v0[42] = v8;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 41));
  v10._countAndFlagsBits = 0x656C646E7562202CLL;
  v10._object = 0xEC000000203A6449;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v12 = v0[4];
  v11 = v0[5];
  v0[48] = &type metadata for String;
  v0[45] = v12;
  v0[46] = v11;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 45));
  v13._countAndFlagsBits = 0x3A726F727265202CLL;
  v13._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  swift_getErrorValue();
  v15 = v0[57];
  v14 = v0[58];
  v0[52] = v14;
  v16 = sub_100042BAC(v0 + 49);
  (*(*(v14 - 8) + 16))(v16, v15, v14);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 49));
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_1000A3D70((v0 + 2));
  v18 = v0[82] + 1;
  if (v18 == v0[79])
  {
    v19 = v0[80];

    v33 = v0[64];
    sub_100026F50(qword_10016C6F8, qword_10016C710);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._countAndFlagsBits = 0xD000000000000039;
    v20._object = 0x800000010013C6C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v0[56] = &type metadata for Int;
    v0[53] = v19;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504((v0 + 53));
    v21._countAndFlagsBits = 0x6520656C61747320;
    v21._object = 0xEE0073656972746ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC(v0 + 19);
    sub_100026FDC(v0 + 24);
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v33, 1, 1, v22);
    v23 = qword_10016A6C8;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = v0[69];
    v25 = v0[64];
    v26 = v0[61];
    v27 = qword_1001738A8;
    v28 = sub_1000B0BF8(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
    v29 = swift_allocObject();
    v29[2] = v27;
    v29[3] = v28;
    v29[4] = v26;

    sub_10009C9B8(0, 0, v25, &unk_1001326B0, v29);

    sub_1000B091C("DataOwnershipIndexCleanupTask.run", 33, 2, v24);

    v30 = v0[1];

    return v30();
  }

  else
  {
    v0[82] = v18;
    sub_1000A3D14(v0[77] + 136 * v18 + 32, (v0 + 2));
    v32 = swift_task_alloc();
    v0[83] = v32;
    *v32 = v0;
    v32[1] = sub_1000ADF0C;

    return sub_1000AEDE0((v0 + 2), (v0 + 19), (v0 + 24));
  }
}

uint64_t sub_1000AEDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[65] = v3;
  v4[63] = a2;
  v4[64] = a3;
  v4[62] = a1;
  v5 = sub_100026F94(&qword_10016AD10, &qword_100132950);
  v4[66] = v5;
  v4[67] = *(v5 - 8);
  v4[68] = swift_task_alloc();
  v6 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v4[69] = v6;
  v4[70] = *(v6 - 8);
  v4[71] = swift_task_alloc();
  v7 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v4[72] = v7;
  v4[73] = *(v7 - 8);
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v8 = type metadata accessor for Table();
  v4[77] = v8;
  v4[78] = *(v8 - 8);
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v4[81] = swift_task_alloc();

  return _swift_task_switch(sub_1000AF030, v3, 0);
}

uint64_t sub_1000AF030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A5B0 != -1)
  {
    swift_once();
  }

  v5 = *(v3 + 496);
  v4 = *(v3 + 504);
  sub_100026F50(qword_10016C6F8, qword_10016C710);
  *(v3 + 656) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v6 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 664) = *(v6 + 72);
  *(v3 + 800) = *(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013C700;
  v7._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v8 = *v5;
  *(v3 + 672) = *v5;
  v9 = v5[1];
  *(v3 + 680) = v9;
  *(v3 + 40) = &type metadata for String;
  *(v3 + 16) = v8;
  *(v3 + 24) = v9;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v3 + 16);
  v10._countAndFlagsBits = 0x656C646E7562202CLL;
  v10._object = 0xEC000000203A6449;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v11 = v5[2];
  *(v3 + 688) = v11;
  v12 = v5[3];
  *(v3 + 696) = v12;
  *(v3 + 72) = &type metadata for String;
  *(v3 + 48) = v11;
  *(v3 + 56) = v12;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v3 + 48);
  v13._countAndFlagsBits = 0x3A656C626174202CLL;
  v13._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  v14 = v5[13];
  *(v3 + 704) = v14;
  v15 = v5[14];
  *(v3 + 712) = v15;
  *(v3 + 104) = &type metadata for String;
  *(v3 + 80) = v14;
  *(v3 + 88) = v15;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v3 + 80);
  v16._countAndFlagsBits = 0x616D65686373202CLL;
  v16._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  v17 = v5[15];
  *(v3 + 720) = v17;
  v18 = v5[16];
  *(v3 + 728) = v18;
  *(v3 + 136) = &type metadata for String;
  *(v3 + 112) = v17;
  *(v3 + 120) = v18;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v3 + 112);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100026F50(v4, v4[3]);
  v20 = _typeName(_:qualified:)();
  v22 = v21;
  *(v3 + 736) = v21;
  v23 = swift_task_alloc();
  *(v3 + 744) = v23;
  *v23 = v3;
  v23[1] = sub_1000AF3D0;
  v24 = *(v3 + 496);

  return sub_10009D2E4(v24, v20, v22);
}

uint64_t sub_1000AF3D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[94] = a1;
  v3[95] = v1;

  if (v1)
  {

    v5 = v4[1];

    return v5(0);
  }

  else
  {
    v7 = v3[65];

    return _swift_task_switch(sub_1000AF5B8, v7, 0);
  }
}

uint64_t sub_1000AF5B8()
{
  v74 = *(v0 + 760);
  v59 = *(v0 + 696);
  v1 = *(v0 + 680);
  v2 = *(v0 + 672);
  v76 = *(v0 + 624);
  v68 = *(v0 + 616);
  v3 = *(v0 + 600);
  v61 = *(v0 + 688);
  v62 = *(v0 + 592);
  v63 = *(v0 + 584);
  v64 = *(v0 + 608);
  v65 = *(v0 + 576);
  v4 = *(v0 + 568);
  v60 = *(v0 + 560);
  v5 = *(v0 + 552);
  v69 = *(v0 + 632);

  Table.init(_:database:)();

  static Connection.ServiceColumns.requestIds.getter();
  v6._countAndFlagsBits = v2;
  v6._object = v1;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 47;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 47;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 37;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  sub_1000A3DC4();
  ExpressionType<>.like(_:escape:)();

  v10 = *(v60 + 8);
  v10(v4, v5);
  static Connection.ServiceColumns.bundleIds.getter();
  v11._countAndFlagsBits = v61;
  v11._object = v59;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 47;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 47;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 37;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  ExpressionType<>.like(_:escape:)();

  v10(v4, v5);
  static Expression<A>.&& infix(_:_:)();
  v15 = *(v63 + 8);
  v15(v62, v65);
  v15(v3, v65);
  sub_1000B0BF8(&qword_10016AD20, 255, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  QueryType.where(_:)();
  v15(v64, v65);
  QueryType.exists.getter();
  v16 = *(v76 + 8);
  *(v0 + 768) = v16;
  *(v0 + 776) = (v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v69, v68);
  Connection.scalar<A>(_:)();
  if (v74)
  {
    v17 = *(v0 + 640);
    v18 = *(v0 + 616);
    v19 = *(v0 + 544);
    v20 = *(v0 + 536);
    v21 = *(v0 + 528);
    v71 = *(v0 + 520);
    v22 = *(v0 + 496);
    v23 = *(v0 + 504);

    (*(v20 + 8))(v19, v21);
    v16(v17, v18);
    v24 = sub_100026F50(v23, v23[3]);
    sub_1000B072C(*v24, v22, v71);

    v25 = *(v0 + 8);
    v26 = 0;
LABEL_5:

    return v25(v26);
  }

  (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
  v27 = *(v0 + 804);
  *(v0 + 805) = v27;
  if (v27)
  {
    v28 = *(v0 + 712);
    v29 = *(v0 + 704);
    v72 = *(v0 + 688);
    v73 = *(v0 + 696);
    v70 = *(v0 + 680);
    v30 = *(v0 + 672);
    sub_100026F50(qword_10016C6F8, qword_10016C710);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v31._countAndFlagsBits = 0x203A656C626154;
    v31._object = 0xE700000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v31);
    *(v0 + 424) = &type metadata for String;
    *(v0 + 400) = v29;
    *(v0 + 408) = v28;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(v0 + 400);
    v32._countAndFlagsBits = 0xD000000000000024;
    v32._object = 0x800000010013C7D0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v32);
    *(v0 + 456) = &type metadata for String;
    *(v0 + 432) = v30;
    *(v0 + 440) = v70;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(v0 + 432);
    v33._countAndFlagsBits = 0x646E756220726F20;
    v33._object = 0xEE00203A6449656CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v33);
    *(v0 + 488) = &type metadata for String;
    *(v0 + 464) = v72;
    *(v0 + 472) = v73;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(v0 + 464);
    v34._object = 0x800000010013C800;
    v34._countAndFlagsBits = 0xD000000000000019;
    LogMessage.StringInterpolation.appendLiteral(_:)(v34);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();
    v77 = *(v0 + 805);
    v35 = *(v0 + 768);
    v36 = *(v0 + 640);
    v37 = *(v0 + 616);
    v38 = *(v0 + 520);
    v39 = *(v0 + 496);
    v40 = *(v0 + 504);

    v35(v36, v37);
    v41 = sub_100026F50(v40, v40[3]);
    sub_1000B072C(*v41, v39, v38);

    v25 = *(v0 + 8);
    v26 = (v77 & 1) == 0;
    goto LABEL_5;
  }

  v43 = *(v0 + 712);
  v44 = *(v0 + 696);
  v66 = *(v0 + 688);
  v67 = *(v0 + 704);
  v45 = *(v0 + 680);
  v46 = *(v0 + 672);
  v75 = *(v0 + 512);
  v78 = *(v0 + 496);
  sub_100026F50(qword_10016C6F8, qword_10016C710);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v47._countAndFlagsBits = 0xD00000000000002DLL;
  v47._object = 0x800000010013C760;
  LogMessage.StringInterpolation.appendLiteral(_:)(v47);
  *(v0 + 168) = &type metadata for String;
  *(v0 + 144) = v46;
  *(v0 + 152) = v45;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 144);
  v48._countAndFlagsBits = 0x656C646E7562202CLL;
  v48._object = 0xEC000000203A6449;
  LogMessage.StringInterpolation.appendLiteral(_:)(v48);
  *(v0 + 200) = &type metadata for String;
  *(v0 + 176) = v66;
  *(v0 + 184) = v44;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 176);
  v49._countAndFlagsBits = 0x3A656C626174202CLL;
  v49._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v49);
  *(v0 + 232) = &type metadata for String;
  *(v0 + 208) = v67;
  *(v0 + 216) = v43;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 208);
  v50._countAndFlagsBits = 2108704;
  v50._object = 0xE300000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v50);
  *(v0 + 264) = &type metadata for String;
  *(v0 + 240) = 0xD000000000000023;
  *(v0 + 248) = 0x800000010013C730;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 240);
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v51);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100026F50(v75, v75[3]);
  v52 = swift_task_alloc();
  *(v0 + 784) = v52;
  *v52 = v0;
  v52[1] = sub_1000AFF58;
  v53 = *(v0 + 728);
  v54 = *(v0 + 720);
  v55 = *(v0 + 712);
  v56 = *(v0 + 704);
  v57 = *(v0 + 680);
  v58 = *(v0 + 672);

  return sub_10005EDF0(v58, v57, v78 + 16, v56, v55, v54, v53);
}

uint64_t sub_1000AFF58()
{
  v2 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {
    v3 = *(v2 + 520);

    v4 = sub_1000B0080;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 520);
    v4 = sub_1000B0198;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000B0080()
{
  v1 = *(v0 + 520);
  v3 = *(v0 + 496);
  v2 = *(v0 + 504);
  (*(v0 + 768))(*(v0 + 640), *(v0 + 616));
  v4 = sub_100026F50(v2, v2[3]);
  sub_1000B072C(*v4, v3, v1);

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_1000B0198()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 712);
  v21 = *(v0 + 704);
  v22 = *(v0 + 720);
  v19 = *(v0 + 688);
  v20 = *(v0 + 696);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  sub_100026F50(qword_10016C6F8, qword_10016C710);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x800000010013C790;
  v5._countAndFlagsBits = 0xD000000000000033;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  *(v0 + 296) = &type metadata for String;
  *(v0 + 272) = v4;
  *(v0 + 280) = v3;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 272);
  v6._countAndFlagsBits = 0x656C646E7562202CLL;
  v6._object = 0xEC000000203A6449;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  *(v0 + 328) = &type metadata for String;
  *(v0 + 304) = v19;
  *(v0 + 312) = v20;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 304);
  v7._countAndFlagsBits = 0x3A656C626174202CLL;
  v7._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  *(v0 + 360) = &type metadata for String;
  *(v0 + 336) = v21;
  *(v0 + 344) = v2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 336);
  v8._countAndFlagsBits = 0x616D65686373202CLL;
  v8._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  *(v0 + 392) = &type metadata for String;
  *(v0 + 368) = v22;
  *(v0 + 376) = v1;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 368);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();
  v23 = *(v0 + 805);
  v10 = *(v0 + 768);
  v11 = *(v0 + 640);
  v12 = *(v0 + 616);
  v13 = *(v0 + 520);
  v14 = *(v0 + 496);
  v15 = *(v0 + 504);

  v10(v11, v12);
  v16 = sub_100026F50(v15, v15[3]);
  sub_1000B072C(*v16, v14, v13);

  v17 = *(v0 + 8);

  return v17((v23 & 1) == 0);
}

uint64_t sub_1000B04C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100042680;

  return sub_1000ACF7C(a1);
}

uint64_t sub_1000B0558(uint64_t a1, uint64_t a2)
{
  result = sub_1000B0BF8(&qword_10016C7D8, a2, type metadata accessor for DataOwnershipIndexCleanupTask, &unk_1001328C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B05B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = type metadata accessor for StorageCategory();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000B0678, a6, 0);
}

uint64_t sub_1000B0678()
{
  v1 = sub_100026F50(*(v0 + 16), *(*(v0 + 16) + 24));
  *(v0 + 64) = _typeName(_:qualified:)();
  *(v0 + 72) = v2;
  *(v0 + 80) = *v1;

  return _swift_task_switch(sub_10009E06C, 0, 0);
}

uint64_t sub_1000B072C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v23[3] = type metadata accessor for DatabaseConnectionManagerImplementation();
  v23[4] = &off_100164E98;
  v23[0] = a1;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100026EEC(v23, v22);
  sub_1000A3D14(a2, v20);
  v11 = sub_1000B0BF8(&qword_10016C7E0, v10, type metadata accessor for DataOwnershipIndexCleanupTask, &unk_10013290C);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  sub_10002C604(v22, v12 + 32);
  v13 = v20[4];
  *(v12 + 152) = v20[5];
  v14 = v20[7];
  *(v12 + 168) = v20[6];
  *(v12 + 184) = v14;
  v15 = v20[0];
  *(v12 + 88) = v20[1];
  v16 = v20[3];
  *(v12 + 104) = v20[2];
  *(v12 + 120) = v16;
  *(v12 + 136) = v13;
  v17 = v21;
  *(v12 + 72) = v15;
  *(v12 + 200) = v17;
  *(v12 + 208) = a3;
  swift_retain_n();

  sub_10009C9B8(0, 0, v8, &unk_100132960, v12);

  return sub_100026FDC(v23);
}

uint64_t sub_1000B091C(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A5B8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016C720);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v19, v18, a1, v16, v17, 2u);

LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000B0BF8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B0C40()
{
  swift_unknownObjectRelease();
  sub_100026FDC((v0 + 32));

  sub_100026FDC((v0 + 120));

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_1000B0CC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[26];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100042680;

  return sub_1000B05B0(a1, v4, v5, (v1 + 4), (v1 + 9), v6);
}

uint64_t sub_1000B0D90()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016C7E8);
  v1 = sub_10002FD14(v0, qword_10016C7E8);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000B0E58(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v2[19] = swift_task_alloc();
  v3 = type metadata accessor for OSSignpostID();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v2[24] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v2[25] = sub_1000B1C54(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[26] = v5;
  v2[27] = v4;

  return _swift_task_switch(sub_1000B0FF4, v5, v4);
}

uint64_t sub_1000B0FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A5C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016C7E8);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "FetchRevokedAccessCredentialsTask.run", "", v7, 2u);
  }

  v9 = *(v3 + 176);
  v10 = *(v3 + 184);
  v11 = *(v3 + 160);
  v12 = *(v3 + 168);

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v3 + 224) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  *(v3 + 232) = qword_100173878;
  TaskLocal.get()();
  sub_100026F50((v3 + 16), *(v3 + 40));
  *(v3 + 240) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v13 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 248) = *(v13 + 72);
  *(v3 + 288) = *(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC((v3 + 16));
  v14 = sub_100026F94(&qword_10016C458, &qword_1001324C8);
  v15 = swift_task_alloc();
  *(v3 + 256) = v15;
  *v15 = v3;
  v15[1] = sub_1000B1338;

  return BaseObjectGraph.inject<A>(_:)(v3 + 56, v14, v14);
}

uint64_t sub_1000B1338()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_1000B19DC;
  }

  else
  {
    v5 = sub_1000B1474;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000B1474()
{
  v1 = v0[18];
  sub_100026F50(v0 + 7, v0[10]);
  v2 = *(v1 + 112);
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_1000B1524;
  v4 = v0[17];

  return sub_100037A8C(v4, v2);
}

uint64_t sub_1000B1524()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_1000B1660;
  }

  else
  {
    v5 = sub_1000B17CC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000B1660()
{
  sub_100026FDC(v0 + 7);
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[19];
  v5 = v0[17];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001327D0, v7);

  sub_1000B1CA0("FetchRevokedAccessCredentialsTask.run", 37, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B17CC()
{
  v8 = v0[25];
  v9 = v0[28];
  v7 = v0[24];
  v1 = v0[19];
  v2 = v0[17];
  TaskLocal.get()();
  sub_100026F50(v0 + 12, v0[15]);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC(v0 + 12);
  sub_100026FDC(v0 + 7);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v2;

  sub_10009C9B8(0, 0, v1, &unk_1001326A0, v4);

  sub_1000B1CA0("FetchRevokedAccessCredentialsTask.run", 37, 2, v9);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000B19DC()
{
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[19];
  v5 = v0[17];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001324D0, v7);

  sub_1000B1CA0("FetchRevokedAccessCredentialsTask.run", 37, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B1B64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100042680;

  return sub_1000B0E58(a1);
}

uint64_t sub_1000B1BFC(uint64_t a1, uint64_t a2)
{
  result = sub_1000B1C54(&qword_10016C8A8, a2, type metadata accessor for FetchRevokedAccessCredentialsTask, &unk_1001329A4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B1C54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B1CA0(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A5C0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016C7E8);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v19, v18, a1, v16, v17, 2u);

LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000B1F84()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016C8B0);
  v1 = sub_10002FD14(v0, qword_10016C8B0);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000B204C(uint64_t a1)
{
  v2[47] = a1;
  v2[48] = v1;
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v2[49] = swift_task_alloc();
  v3 = type metadata accessor for OSSignpostID();
  v2[50] = v3;
  v2[51] = *(v3 - 8);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v2[54] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v2[55] = sub_1000B50AC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[56] = v5;
  v2[57] = v4;

  return _swift_task_switch(sub_1000B21E8, v5, v4);
}

uint64_t sub_1000B21E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A5C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016C8B0);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "MaintenanceTask.run", "", v7, 2u);
  }

  v9 = *(v3 + 416);
  v10 = *(v3 + 424);
  v11 = *(v3 + 400);
  v12 = *(v3 + 408);

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v3 + 464) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  *(v3 + 472) = qword_100173878;
  TaskLocal.get()();
  sub_100026F50((v3 + 16), *(v3 + 40));
  *(v3 + 480) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v13 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 488) = *(v13 + 72);
  *(v3 + 608) = *(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC((v3 + 16));
  v14 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v15 = swift_task_alloc();
  *(v3 + 496) = v15;
  *v15 = v3;
  v15[1] = sub_1000B252C;

  return BaseObjectGraph.inject<A>(_:)(v3 + 56, v14, v14);
}

uint64_t sub_1000B252C()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  v3 = *(v2 + 456);
  v4 = *(v2 + 448);
  if (v0)
  {
    v5 = sub_1000B3590;
  }

  else
  {
    v5 = sub_1000B2668;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000B2668()
{
  v1 = type metadata accessor for CheckInvalidAccessCredentialsTask();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v0[15] = v1;
  v0[16] = sub_1000B50AC(&qword_10016C970, 255, type metadata accessor for CheckInvalidAccessCredentialsTask, &unk_100132848);
  v0[12] = v2;
  v3 = swift_task_alloc();
  v0[64] = v3;
  *v3 = v0;
  v3[1] = sub_1000B2770;
  v4 = v0[47];

  return sub_1000B3FA4((v0 + 12), (v0 + 7), v4);
}

uint64_t sub_1000B2770()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = v2[56];
    v4 = v2[57];
    v5 = sub_1000B36F4;
  }

  else
  {
    sub_100026FDC(v2 + 12);
    v3 = v2[56];
    v4 = v2[57];
    v5 = sub_1000B288C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000B288C()
{
  v1 = type metadata accessor for CheckInstalledAppsTask();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v0[20] = v1;
  v0[21] = sub_1000B50AC(&qword_10016C978, 255, type metadata accessor for CheckInstalledAppsTask, &unk_100132778);
  v0[17] = v2;
  v3 = swift_task_alloc();
  v0[66] = v3;
  *v3 = v0;
  v3[1] = sub_1000B2994;
  v4 = v0[47];

  return sub_1000B3FA4((v0 + 17), (v0 + 7), v4);
}

uint64_t sub_1000B2994()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = v2[56];
    v4 = v2[57];
    v5 = sub_1000B3868;
  }

  else
  {
    sub_100026FDC(v2 + 17);
    v3 = v2[56];
    v4 = v2[57];
    v5 = sub_1000B2AB0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000B2AB0()
{
  v1 = type metadata accessor for TriggerForwardDeletionRulesTask();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v0[25] = v1;
  v0[26] = sub_1000B50AC(&qword_10016C980, 255, type metadata accessor for TriggerForwardDeletionRulesTask, &unk_100132DC0);
  v0[22] = v2;
  v3 = swift_task_alloc();
  v0[68] = v3;
  *v3 = v0;
  v3[1] = sub_1000B2BB8;
  v4 = v0[47];

  return sub_1000B3FA4((v0 + 22), (v0 + 7), v4);
}

uint64_t sub_1000B2BB8()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = v2[56];
    v4 = v2[57];
    v5 = sub_1000B39DC;
  }

  else
  {
    sub_100026FDC(v2 + 22);
    v3 = v2[56];
    v4 = v2[57];
    v5 = sub_1000B2CD4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000B2CD4()
{
  v1 = type metadata accessor for ScheduledTTLCleanupTask();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = sub_1000B8294;
  *(v2 + 120) = 0;
  v0[30] = v1;
  v0[31] = sub_1000B50AC(&qword_10016C988, 255, type metadata accessor for ScheduledTTLCleanupTask, &unk_100132CC8);
  v0[27] = v2;
  v3 = swift_task_alloc();
  v0[70] = v3;
  *v3 = v0;
  v3[1] = sub_1000B2DF0;
  v4 = v0[47];

  return sub_1000B3FA4((v0 + 27), (v0 + 7), v4);
}

uint64_t sub_1000B2DF0()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v3 = v2[56];
    v4 = v2[57];
    v5 = sub_1000B3B50;
  }

  else
  {
    sub_100026FDC(v2 + 27);
    v3 = v2[56];
    v4 = v2[57];
    v5 = sub_1000B2F0C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000B2F0C()
{
  v1 = type metadata accessor for DataOwnershipIndexCleanupTask();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v0[35] = v1;
  v0[36] = sub_1000B50AC(&qword_10016C990, 255, type metadata accessor for DataOwnershipIndexCleanupTask, &unk_1001328F0);
  v0[32] = v2;
  v3 = swift_task_alloc();
  v0[72] = v3;
  *v3 = v0;
  v3[1] = sub_1000B300C;
  v4 = v0[47];

  return sub_1000B3FA4((v0 + 32), (v0 + 7), v4);
}

uint64_t sub_1000B300C()
{
  v2 = *v1;
  v2[73] = v0;

  if (v0)
  {
    v3 = v2[56];
    v4 = v2[57];

    return _swift_task_switch(sub_1000B3CC4, v3, v4);
  }

  else
  {
    sub_100026FDC(v2 + 32);
    v5 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
    v6 = swift_task_alloc();
    v2[74] = v6;
    *v6 = v2;
    v6[1] = sub_1000B31B4;

    return BaseObjectGraph.inject<A>(_:)(v2 + 37, v5, v5);
  }
}

uint64_t sub_1000B31B4()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  v3 = *(v2 + 456);
  v4 = *(v2 + 448);
  if (v0)
  {
    v5 = sub_1000B3E38;
  }

  else
  {
    v5 = sub_1000B32F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000B32F0()
{
  v11 = v0[55];
  v12 = v0[58];
  v1 = v0[49];
  v9 = v0[47];
  v10 = v0[54];
  v2 = *sub_100026F50(v0 + 37, v0[40]);
  v3 = type metadata accessor for TaskPriority();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;

  sub_10009C9B8(0, 0, v1, &unk_1001332E0, v5);

  sub_100026FDC(v0 + 37);
  TaskLocal.get()();
  sub_100026F50(v0 + 42, v0[45]);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 42);
  v4(v1, 1, 1, v3);
  v6 = swift_allocObject();
  v6[2] = v10;
  v6[3] = v11;
  v6[4] = v9;

  sub_10009C9B8(0, 0, v1, &unk_100132AE0, v6);

  sub_1000B4DD0("MaintenanceTask.run", 19, 2, v12);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000B3590()
{
  v1 = v0[58];
  v2 = v0[54];
  v3 = v0[55];
  v4 = v0[49];
  v5 = v0[47];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001324D0, v7);

  sub_1000B4DD0("MaintenanceTask.run", 19, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B36F4()
{
  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 12);
  v1 = v0[58];
  v2 = v0[54];
  v3 = v0[55];
  v4 = v0[49];
  v5 = v0[47];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001327D0, v7);

  sub_1000B4DD0("MaintenanceTask.run", 19, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B3868()
{
  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 17);
  v1 = v0[58];
  v2 = v0[54];
  v3 = v0[55];
  v4 = v0[49];
  v5 = v0[47];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001327E0, v7);

  sub_1000B4DD0("MaintenanceTask.run", 19, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B39DC()
{
  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 22);
  v1 = v0[58];
  v2 = v0[54];
  v3 = v0[55];
  v4 = v0[49];
  v5 = v0[47];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001326B0, v7);

  sub_1000B4DD0("MaintenanceTask.run", 19, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B3B50()
{
  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 27);
  v1 = v0[58];
  v2 = v0[54];
  v3 = v0[55];
  v4 = v0[49];
  v5 = v0[47];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001326C0, v7);

  sub_1000B4DD0("MaintenanceTask.run", 19, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B3CC4()
{
  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 32);
  v1 = v0[58];
  v2 = v0[54];
  v3 = v0[55];
  v4 = v0[49];
  v5 = v0[47];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_100132AD0, v7);

  sub_1000B4DD0("MaintenanceTask.run", 19, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B3E38()
{
  sub_100026FDC(v0 + 7);
  v1 = v0[58];
  v2 = v0[54];
  v3 = v0[55];
  v4 = v0[49];
  v5 = v0[47];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001326D0, v7);

  sub_1000B4DD0("MaintenanceTask.run", 19, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B3FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[33] = a3;
  v4[34] = v3;
  v4[32] = a1;
  type metadata accessor for LogMessage.StringInterpolation();
  v4[35] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v4[36] = v5;
  v4[37] = *(v5 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_1000B40A0, v3, 0);
}

uint64_t sub_1000B40A0()
{
  static Task<>.checkCancellation()();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_1000B50AC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 320) = v2;
  *(v0 + 328) = v1;

  return _swift_task_switch(sub_1000B41F8, v2, v1);
}

uint64_t sub_1000B41F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = v3;
  if (qword_10016A568 != -1)
  {
    swift_once();
  }

  v4 = *(v3 + 256);
  v5 = type metadata accessor for OSSignposter();
  sub_10002FD14(v5, qword_10016C1C0);
  sub_100026EEC(v4, v3 + 16);
  static OSSignpostID.exclusive.getter();
  v6 = OSSignposter.logHandle.getter();
  v7 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    sub_100026F50((v3 + 16), *(v3 + 40));
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100026FDC((v3 + 16));
    v13 = sub_10006CB64(v10, v12, &v31);

    *(v8 + 4) = v13;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, v7, v14, "TaskCenter.run", "task=%s", v8, 0xCu);
    sub_100026FDC(v9);
  }

  else
  {

    sub_100026FDC((v3 + 16));
  }

  v15 = *(v3 + 312);
  v16 = *(v3 + 288);
  v17 = *(v3 + 296);
  (*(v17 + 16))(*(v3 + 304), v15, v16);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v3 + 336) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v17 + 8))(v15, v16);
  if (qword_10016A560 != -1)
  {
    swift_once();
  }

  v18 = *(v3 + 256);
  sub_100026F50(qword_10016C198, qword_10016C1B0);
  *(v3 + 344) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v19 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 352) = *(v19 + 72);
  *(v3 + 376) = *(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._object = 0x800000010013BF60;
  v20._countAndFlagsBits = 0xD00000000000001ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  v21 = v18[3];
  v22 = sub_100026F50(v18, v21);
  *(v3 + 120) = v21;
  v23 = sub_100042BAC((v3 + 96));
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v3 + 96);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v25 = v18[3];
  v26 = v18[4];
  sub_100026F50(v18, v25);
  v30 = (*(v26 + 24) + **(v26 + 24));
  v27 = swift_task_alloc();
  *(v3 + 360) = v27;
  *v27 = v3;
  v27[1] = sub_1000B46D0;
  v28 = *(v3 + 264);

  return v30(v28, v25, v26);
}

uint64_t sub_1000B46D0()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);
  if (v0)
  {
    v5 = sub_1000B49DC;
  }

  else
  {
    v5 = sub_1000B480C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000B480C()
{
  v1 = v0[42];
  v2 = v0[32];
  sub_100026F50(qword_10016C198, qword_10016C1B0);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x800000010013BF80;
  v3._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  v4 = v2[3];
  v5 = sub_100026F50(v2, v4);
  v0[27] = v4;
  v6 = sub_100042BAC(v0 + 24);
  (*(*(v4 - 8) + 16))(v6, v5, v4);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 24));
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_1000964EC("TaskCenter.run", 14, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B49DC()
{
  v1 = *(v0 + 272);
  sub_1000964EC("TaskCenter.run", 14, 2, *(v0 + 336));

  return _swift_task_switch(sub_1000B4A64, v1, 0);
}

uint64_t sub_1000B4A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  v4 = v3[32];
  TaskLocal.get()();
  sub_100026F50(v3 + 7, v3[10]);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x800000010013C9D0;
  v5._countAndFlagsBits = 0xD000000000000014;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  sub_100026F50(v4, v4[3]);
  DynamicType = swift_getDynamicType();
  v3[19] = swift_getMetatypeMetadata();
  v3[16] = DynamicType;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v3 + 16));
  v7._countAndFlagsBits = 2629678;
  v7._object = 0xE300000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v3[28];
  v9 = v3[29];
  v3[23] = v9;
  v10 = sub_100042BAC(v3 + 20);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v3 + 20));
  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100026FDC(v3 + 7);

  v12 = v3[1];

  return v12();
}

uint64_t sub_1000B4CDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100042680;

  return sub_1000B204C(a1);
}

uint64_t sub_1000B4D74(uint64_t a1, uint64_t a2)
{
  result = sub_1000B50AC(&qword_10016C968, a2, type metadata accessor for MaintenanceTask, &unk_100132A44);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B4DD0(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A5C8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016C8B0);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v19, v18, a1, v16, v17, 2u);

LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000B50AC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B5114()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016C998);
  v1 = sub_10002FD14(v0, qword_10016C998);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000B51DC(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v2[29] = swift_task_alloc();
  v3 = type metadata accessor for OSSignpostID();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v2[34] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v2[35] = sub_1000B6BFC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[36] = v5;
  v2[37] = v4;

  return _swift_task_switch(sub_1000B5378, v5, v4);
}

uint64_t sub_1000B5378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A5D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016C998);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "OnlineMaintenanceTask.run", "", v7, 2u);
  }

  v9 = *(v3 + 256);
  v10 = *(v3 + 264);
  v11 = *(v3 + 240);
  v12 = *(v3 + 248);

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v3 + 304) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  *(v3 + 312) = qword_100173878;
  TaskLocal.get()();
  sub_100026F50((v3 + 16), *(v3 + 40));
  *(v3 + 320) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v13 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 328) = *(v13 + 72);
  *(v3 + 384) = *(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC((v3 + 16));
  v14 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v15 = swift_task_alloc();
  *(v3 + 336) = v15;
  *v15 = v3;
  v15[1] = sub_1000B56BC;

  return BaseObjectGraph.inject<A>(_:)(v3 + 56, v14, v14);
}

uint64_t sub_1000B56BC()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_1000B5E54;
  }

  else
  {
    v5 = sub_1000B57F8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000B57F8()
{
  RevokedAccessCredentialsTask = type metadata accessor for FetchRevokedAccessCredentialsTask();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  v0[15] = RevokedAccessCredentialsTask;
  v0[16] = sub_1000B6BFC(&qword_10016CA58, 255, type metadata accessor for FetchRevokedAccessCredentialsTask, &unk_1001329D8);
  v0[12] = v2;
  v3 = swift_task_alloc();
  v0[44] = v3;
  *v3 = v0;
  v3[1] = sub_1000B5904;
  v4 = v0[27];

  return sub_1000B62A0((v0 + 12), (v0 + 7), v4);
}

uint64_t sub_1000B5904()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = v2[36];
    v4 = v2[37];
    v5 = sub_1000B5FB8;
  }

  else
  {
    sub_100026FDC(v2 + 12);
    v3 = v2[36];
    v4 = v2[37];
    v5 = sub_1000B5A20;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000B5A20()
{
  v1 = type metadata accessor for CheckInvalidAccessCredentialsTask();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v0[20] = v1;
  v0[21] = sub_1000B6BFC(&qword_10016C970, 255, type metadata accessor for CheckInvalidAccessCredentialsTask, &unk_100132848);
  v0[17] = v2;
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_1000B5B28;
  v4 = v0[27];

  return sub_1000B62A0((v0 + 17), (v0 + 7), v4);
}

uint64_t sub_1000B5B28()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = v2[36];
    v4 = v2[37];
    v5 = sub_1000B612C;
  }

  else
  {
    sub_100026FDC(v2 + 17);
    v3 = v2[36];
    v4 = v2[37];
    v5 = sub_1000B5C44;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000B5C44()
{
  v8 = v0[35];
  v9 = v0[38];
  v7 = v0[34];
  v1 = v0[29];
  v2 = v0[27];
  TaskLocal.get()();
  sub_100026F50(v0 + 22, v0[25]);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 22);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v2;

  sub_10009C9B8(0, 0, v1, &unk_100132B90, v4);

  sub_1000B6920("OnlineMaintenanceTask.run", 25, 2, v9);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000B5E54()
{
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[29];
  v5 = v0[27];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001324D0, v7);

  sub_1000B6920("OnlineMaintenanceTask.run", 25, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B5FB8()
{
  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 12);
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[29];
  v5 = v0[27];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001327D0, v7);

  sub_1000B6920("OnlineMaintenanceTask.run", 25, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B612C()
{
  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 17);
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[29];
  v5 = v0[27];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001327E0, v7);

  sub_1000B6920("OnlineMaintenanceTask.run", 25, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B62A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_1000B6334, v3, 0);
}

uint64_t sub_1000B6334()
{
  static Task<>.checkCancellation()();
  sub_100026F50(*(v0 + 160), *(*(v0 + 160) + 24));
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_1000B6430;
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);

  return sub_100095AAC(v3, v2);
}

uint64_t sub_1000B6430()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {
    v3 = v2[22];

    return _swift_task_switch(sub_1000B656C, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1000B656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  v4 = v3[19];
  TaskLocal.get()();
  sub_100026F50(v3 + 2, v3[5]);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x800000010013C9D0;
  v5._countAndFlagsBits = 0xD000000000000014;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  sub_100026F50(v4, v4[3]);
  DynamicType = swift_getDynamicType();
  v3[10] = swift_getMetatypeMetadata();
  v3[7] = DynamicType;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v3 + 7));
  v7._countAndFlagsBits = 2629678;
  v7._object = 0xE300000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v3[15];
  v9 = v3[16];
  v3[14] = v9;
  v10 = sub_100042BAC(v3 + 11);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v3 + 11));
  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100026FDC(v3 + 2);

  v12 = v3[1];

  return v12();
}

uint64_t sub_1000B682C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100042680;

  return sub_1000B51DC(a1);
}

uint64_t sub_1000B68C4(uint64_t a1, uint64_t a2)
{
  result = sub_1000B6BFC(&qword_10016CA50, a2, type metadata accessor for OnlineMaintenanceTask, &unk_100132B08);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B6920(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A5D0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016C998);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v19, v18, a1, v16, v17, 2u);

LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000B6BFC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B6C50()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016CA60);
  v1 = sub_10002FD14(v0, qword_10016CA60);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000B6D18(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v2[9] = swift_task_alloc();
  sub_100026F94(&qword_10016CB48, &qword_100132C60);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for AccessCredential();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v2[18] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v2[19] = sub_1000B7D68(&qword_10016ADA0, type metadata accessor for DaemonActor, &unk_100134054);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[20] = v6;
  v2[21] = v5;

  return _swift_task_switch(sub_1000B6F44, v6, v5);
}

uint64_t sub_1000B6F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A5D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016CA60);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "PostScheduledNotificationsTask.run", "", v7, 2u);
  }

  v9 = v3[16];
  v10 = v3[17];
  v11 = v3[14];
  v12 = v3[15];

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v3[22] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  v13 = sub_100026F94(&qword_10016CB50, &qword_100133370);
  v14 = swift_task_alloc();
  v3[23] = v14;
  *v14 = v3;
  v14[1] = sub_1000B7150;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v13, v13);
}

uint64_t sub_1000B7150()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_1000B7974;
  }

  else
  {
    v5 = sub_1000B728C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000B728C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  sub_1000B8090(v0[8] + OBJC_IVAR____TtC19amsondevicestoraged30PostScheduledNotificationsTask_credential, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000B8100(v0[10]);
    sub_100026F50(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[26] = v4;
    *v4 = v0;
    v4[1] = sub_1000B76D0;

    return sub_100072840();
  }

  else
  {
    (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
    sub_100026F50(v0 + 2, v0[5]);
    v6 = swift_task_alloc();
    v0[25] = v6;
    *v6 = v0;
    v6[1] = sub_1000B7414;
    v7 = v0[13];

    return sub_100071670(v7);
  }
}

uint64_t sub_1000B7414()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_1000B7534, v3, v2);
}

uint64_t sub_1000B7534()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[9];
  v5 = v0[7];
  sub_100026FDC(v0 + 2);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_100132C68, v7);

  sub_1000B7DB4("PostScheduledNotificationsTask.run", 34, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B76D0()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_1000B77F0, v3, v2);
}

uint64_t sub_1000B77F0()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[9];
  v5 = v0[7];
  sub_100026FDC(v0 + 2);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_100132C68, v7);

  sub_1000B7DB4("PostScheduledNotificationsTask.run", 34, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B7974()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v5;

  sub_10009C9B8(0, 0, v4, &unk_1001324D0, v7);

  sub_1000B7DB4("PostScheduledNotificationsTask.run", 34, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B7AF0()
{
  sub_1000B8100(v0 + OBJC_IVAR____TtC19amsondevicestoraged30PostScheduledNotificationsTask_credential);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for PostScheduledNotificationsTask(uint64_t a1)
{
  result = qword_10016CAA8;
  if (!qword_10016CAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B7B84(uint64_t a1)
{
  sub_1000B7C20(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000B7C20(uint64_t a1)
{
  if (!qword_10016CAB8)
  {
    type metadata accessor for AccessCredential();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10016CAB8);
    }
  }
}

uint64_t sub_1000B7C78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100042680;

  return sub_1000B6D18(a1);
}

uint64_t sub_1000B7D10(uint64_t a1)
{
  result = sub_1000B7D68(&qword_10016CB40, type metadata accessor for PostScheduledNotificationsTask, &unk_100132BD8);
  *(a1 + 8) = result;
  return result;
}