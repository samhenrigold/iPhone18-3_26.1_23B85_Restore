uint64_t sub_10015C290(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10015C2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_10015C3E8()
{
  result = qword_1002F9300;
  if (!qword_1002F9300)
  {
    result = swift_getWitnessTable(&unk_1002294B0, &type metadata for CloudCoordinator.CloudCoordinatorError, v0, v1);
    atomic_store(result, &qword_1002F9300);
  }

  return result;
}

uint64_t sub_10015C43C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_10015C474(uint64_t a1)
{
  v3 = *(v1 + 40);
  (*(v1 + 24))();
  return v3(a1);
}

uint64_t sub_10015C4EC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v15 = *v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10015DAC8(a3, a4);
    v12 = v15;
  }

  v13 = *(*(v12 + 56) + 16 * v10);
  sub_10015D584(v10, v12);
  *v7 = v12;
  return v13;
}

uint64_t sub_10015C5A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1000F8C5C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10015DD90();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_10015D710(v6, v8);
  *v3 = v8;
  return v9;
}

Swift::Int sub_10015C640(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000EE870(&unk_1002F9420, &qword_100229338);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000FA784(0, &qword_1002F9430, CKFetchRecordZoneChangesConfiguration_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10015D074(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10015C88C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000EE870(&qword_1002F8030, qword_100229300);
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

Swift::Int sub_10015CB2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000EE870(&unk_1002F9510, &qword_100229390);
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v33 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v20;
      }

      Hasher.init(_seed:)();
      type metadata accessor for CFString(0);
      sub_1001624EC(&qword_1002F8028, type metadata accessor for CFString, L"%\t쓸\a", v22, v23, v24);
      _CFObject.hash(into:)();
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
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v33;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
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

Swift::Int sub_10015CE08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1000EE870(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v4;
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
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v33 = *(*(v7 + 56) + 16 * v21);
      if ((v6 & 1) == 0)
      {
        v23 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v9 + 40));
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 16 * v17) = v33;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v31 = 1 << *(v7 + 32);
      if (v31 >= 64)
      {
        bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v31;
      }

      *(v7 + 16) = 0;
    }

    v5 = v32;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

Swift::Int sub_10015D074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000EE870(&unk_1002F9420, &qword_100229338);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_35;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_10015D2DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000EE870(&qword_1002F93B8, &qword_100229318);
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

        swift_unknownObjectRetain();
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

void sub_10015D584(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_10015D710(uint64_t result, uint64_t a2)
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
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10015D8C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_10015D908(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *sub_10015D94C()
{
  v1 = v0;
  sub_1000EE870(&qword_1002F8030, qword_100229300);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_10015DAC8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000EE870(a1, a2);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 16 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 16 * v19) = v21;
        v22 = v20;
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

id sub_10015DC30()
{
  v1 = v0;
  sub_1000EE870(&unk_1002F9420, &qword_100229338);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_10015DD90()
{
  v1 = v0;
  sub_1000EE870(&qword_1002F93B8, &qword_100229318);
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

uint64_t sub_10015DF00(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = swift_stdlib_random();
  if (v4 * vcvtd_n_f64_u64(0, 0x35uLL) + a1 == a2)
  {
    return sub_10015DF00(a1, a2);
  }

  return result;
}

unint64_t sub_10015DFA4(unint64_t a1, unint64_t a2, void *a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  result = sub_1000F8D88(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_10015CE08(v16, isUniquelyReferenced_nonNull_native, &qword_1002F8018, &qword_100226FE8);
    result = sub_1000F8D88(a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = result;
    sub_10015DAC8(&qword_1002F8018, &qword_100226FE8);
    result = v19;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  if (v4)
  {
LABEL_7:
    v18 = (v10[7] + 16 * result);
    result = *v18;
    *v18 = a1;
    v18[1] = a2;
LABEL_12:
    *v5 = v10;
    return result;
  }

LABEL_10:
  v10[(result >> 6) + 8] |= 1 << result;
  *(v10[6] + 8 * result) = a3;
  v20 = (v10[7] + 16 * result);
  *v20 = a1;
  v20[1] = a2;
  v21 = v10[2];
  v15 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (!v15)
  {
    v10[2] = v22;
    v23 = a3;
    result = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_10015E130(unint64_t a1, unint64_t a2, void *a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  result = sub_1000F8DD8(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_10015CE08(v16, isUniquelyReferenced_nonNull_native, &qword_1002F8020, &unk_100226FF0);
    result = sub_1000F8DD8(a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = result;
    sub_10015DAC8(&qword_1002F8020, &unk_100226FF0);
    result = v19;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  if (v4)
  {
LABEL_7:
    v18 = (v10[7] + 16 * result);
    result = *v18;
    *v18 = a1;
    v18[1] = a2;
LABEL_12:
    *v5 = v10;
    return result;
  }

LABEL_10:
  v10[(result >> 6) + 8] |= 1 << result;
  *(v10[6] + 8 * result) = a3;
  v20 = (v10[7] + 16 * result);
  *v20 = a1;
  v20[1] = a2;
  v21 = v10[2];
  v15 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (!v15)
  {
    v10[2] = v22;
    v23 = a3;
    result = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_10015E2BC(void *a1, char a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = *(v2 + v7);
  v12 = *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);

  sub_100154934(a1, a2 & 1, v8, v9, v10, v2 + v6, v11, v12);
}

uint64_t sub_10015E3C4()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10015E440()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10015E488(uint64_t a1, char a2)
{
  v5 = *(v2 + 40);
  (*(v2 + 24))(a1, a2 & 1);
  return v5(a1, a2 & 1);
}

unint64_t *sub_10015E4EC(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    __chkstk_darwin(v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_10015EB7C(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v33 = Hasher._finalize()();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = &_swiftEmptySetSingleton;
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_10015E998(v44, v49, v2, v13, v57);

  if (!v45)
  {

    return v46;
  }

  __break(1u);
  return result;
}

unint64_t *sub_10015E998(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_10015EB7C(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v16 = Hasher._finalize()();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

Swift::Int sub_10015EB7C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1000EE870(&qword_1002F9D50, &unk_100229360);
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

void *sub_10015EDA0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10015EEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a1;
  v15[4] = &off_1002BE310;
  v15[5] = a2;
  v15[6] = a3;
  aBlock[4] = sub_10016290C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BEBC8;
  v16 = _Block_copy(aBlock);
  v17 = v14;

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v18, v19, v20);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v24 + 8))(v10, v8);
  (*(v11 + 8))(v13, v23);
}

uint64_t sub_10015F20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a2;
  v44 = a4;
  v41 = a1;
  v42 = a3;
  v47 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v47);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v38 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v10;
  *(v5 + 16) = 1;
  *(v5 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = dispatch_semaphore_create(0);
  v46 = sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);
  v37 = "availableSemaphore";
  v11 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v39 = *(v8 + 104);
  v40 = v8 + 104;
  v36 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v39(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  v15 = sub_1001624EC(&unk_1002F93A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes, v12, v13, v14);
  v16 = sub_1000EE870(&qword_1002F9710, &unk_100227B80);
  v17 = sub_1000FA0E0(&qword_1002F93B0, &qword_1002F9710, &unk_100227B80, &protocol conformance descriptor for [A]);
  v35[1] = v16;
  v35[2] = v15;
  v35[3] = v17;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v45;
  *(v5 + 64) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v37 = "oth.CloudServices.RecordUpdate";
  v19 = v18;
  v20 = v38;
  v21 = v39;
  v39(v19, v11, v38);
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v45;
  *(v5 + 72) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v37 = "udCoordinator.serialQueue";
  v21(v22, v36, v20);
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v5 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = _swiftEmptyDictionarySingleton;
  *(v5 + 120) = _swiftEmptyDictionarySingleton;
  *(v5 + 128) = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___container) = 0;
  v23 = (v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___privateSubscriptionId);
  *v23 = 0;
  v23[1] = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___cloudPushTriggeredGroup) = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___forcedGroup) = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___cloudInitialSetupGroup) = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___cloudUserActionExplicitGroup) = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___deferredUpdatesGroup) = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___multipleUpdatesGroup) = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_identityUpdateNotificationListener) = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator__available) = 0;
  v24 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v25 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100226100;
  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v27._countAndFlagsBits = 0xD000000000000034;
  v27._object = 0x8000000100269980;
  String.append(_:)(v27);
  v28 = type metadata accessor for CloudCoordinatorConfiguration(0);
  v29 = v41;
  String.append(_:)(*(v41 + *(v28 + 24)));
  v30._countAndFlagsBits = 0x4449656E6F7A202CLL;
  v30._object = 0xEB00000000203A73;
  String.append(_:)(v30);
  v31._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v31);

  v32 = v48;
  v33 = v49;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_1000EE954();
  *(v26 + 32) = v32;
  *(v26 + 40) = v33;
  os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "CloudCoordinator init for %@", 28, 2, v26);

  sub_100162814(v29, v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration);
  *(v5 + 32) = v42;
  swift_unknownObjectWeakAssign();
  *(v5 + 80) = v44;
  return v5;
}

uint64_t sub_10015F824(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
  aBlock[4] = sub_100162BB4;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BF0F0;
  v9 = _Block_copy(aBlock);
  v10 = v8;

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v11, v12, v13);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v17 + 8))(v4, v2);
  (*(v5 + 8))(v7, v16);
}

id sub_10015FAF0()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_primaryAppleAccount];

    if (v2)
    {
      v3 = [v2 aa_altDSID];
      if (v3)
      {
        v4 = v3;
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v5;
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015FBAC(uint64_t a1, void *a2)
{
  if (a2)
  {

    _StringGuts.grow(_:)(37);

    v4._countAndFlagsBits = a1;
    v4._object = a2;
    String.append(_:)(v4);
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = String._bridgeToObjectiveC()();

    [v5 removeObjectForKey:v6];

    v7 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v8 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100226100;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_1000EE954();
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Removed all zone creation records for user: %@", 46, 2, v9);
  }

  else
  {
    v11 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      v13 = v11;
      swift_once();
      v11 = v13;
    }

    v12 = qword_100300E28;

    return os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Cannot remove zone creation records from UserDefaults - no valid user identifier", 80, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_10015FDEC(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v19 = *(v7 - 8);
  v20 = v7;
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100162B10;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BEE70;
  v13 = _Block_copy(aBlock);
  v14 = v10;

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags, v15, v16, v17);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v21 + 8))(v6, v4);
  (*(v19 + 8))(v9, v20);
}

void sub_100160104(uint64_t a1, void *a2)
{
  if (a2)
  {
    v23 = a2;
    sub_10013ACAC(v23, a1);
    v3 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v4 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100226C80;
    v6 = URL.absoluteString.getter();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    v9 = sub_1000EE954();
    *(v5 + 64) = v9;
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    v10 = [v23 data];
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = Data.hexString.getter(v11, v13);
    v16 = v15;
    sub_1000EF870(v11, v13);
    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v9;
    *(v5 + 72) = v14;
    *(v5 + 80) = v16;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Updated change token, URL, %@, token, %@", 40, 2, v5);
  }

  else
  {
    sub_10013ABC4();
    v17 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v18 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100226100;
    v20 = URL.absoluteString.getter();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_1000EE954();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Deleted change token, URL, %@", 29, 2, v19);
  }
}

void *sub_1001605C4(uint64_t a1, void *a2)
{
  if (a2)
  {
    _StringGuts.grow(_:)(37);

    v4._countAndFlagsBits = a1;
    v4._object = a2;
    String.append(_:)(v4);
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = String._bridgeToObjectiveC()();

    v7 = [v5 arrayForKey:v6];

    if (!v7 || (v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v7, v9 = sub_10017E70C(v8), , !v9))
    {

      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v10 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      v12 = v10;
      swift_once();
      v10 = v12;
    }

    v9 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_100300E28, "Cannot get created zones - no valid user identifier", 51, 2, _swiftEmptyArrayStorage);
  }

  return v9;
}

uint64_t sub_10016076C(uint64_t a1)
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

      sub_1001C51E8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_100160804(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_22:
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v21 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v19 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 recordID];
    v7 = [v6 recordName];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [a2 recordName];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v8 == v12 && v10 == v14)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  return v3;
}

unint64_t sub_1001609C0(unint64_t *a1, void *a2)
{
  v5 = a2;
  v7 = *a1;
  result = sub_100160804(*a1, a2);
  if (v2)
  {
    return result;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = a1;
  v34 = result;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v34;
      }
    }

    else if (v10 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v34;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v12 = *(v7 + 8 * v10 + 32);
LABEL_17:
    v4 = v12;
    v13 = [v12 recordID];
    v14 = [v13 recordName];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v3 = v5;
    v18 = [v5 recordName];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v15 == v19 && v17 == v21)
    {
LABEL_8:

LABEL_9:
      v5 = v3;
      goto LABEL_10;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_9;
    }

    v5 = v3;
    if (v34 != v10)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v25 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34 >= v25)
        {
          goto LABEL_53;
        }

        if (v10 >= v25)
        {
          goto LABEL_54;
        }

        v26 = *(v7 + 32 + 8 * v10);
        v23 = *(v7 + 32 + 8 * v34);
        v24 = v26;
      }

      v27 = v24;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = sub_1001CE110();
        v28 = (v7 >> 62) & 1;
      }

      else
      {
        LODWORD(v28) = 0;
      }

      v29 = v7 & 0xFFFFFFFFFFFFFF8;
      v30 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v34 + 0x20);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v34 + 0x20) = v27;

      if ((v7 & 0x8000000000000000) != 0 || v28)
      {
        v7 = sub_1001CE110();
        v29 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
          return v34;
        }
      }

      else if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v10 >= *(v29 + 16))
      {
        goto LABEL_51;
      }

      v31 = v29 + 8 * v10;
      v32 = *(v31 + 32);
      *(v31 + 32) = v23;

      *v33 = v7;
    }

    v11 = __OFADD__(v34++, 1);
    if (v11)
    {
      goto LABEL_50;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_100160CF0(void *a1, uint64_t *a2)
{
  swift_beginAccess();
  v3 = *a2;
  if (*a2 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    v34 = a2;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      a2 = v6;
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v8 = [v6 recordID];
      v9 = [v8 recordName];

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = [a1 recordName];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (v10 == v14 && v12 == v16)
      {

LABEL_18:

        swift_beginAccess();
        v19 = a1;
        v20 = sub_1001609C0(v34, v19);

        if (!(*v34 >> 62))
        {
          v21 = *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v21 >= v20)
          {
            goto LABEL_20;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v21 = _CocoaArrayWrapper.endIndex.getter();
        if (v21 < v20)
        {
          goto LABEL_27;
        }

LABEL_20:
        sub_100172F38(v20, v21);
        swift_endAccess();
        v20 = static os_log_type_t.default.getter();
        if (qword_1002F7AD8 != -1)
        {
LABEL_28:
          swift_once();
        }

        v22 = qword_100300E28;
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_100226C80;
        v24 = CKRecord.recordType.getter();
        v26 = v25;
        *(v23 + 56) = &type metadata for String;
        v27 = sub_1000EE954();
        *(v23 + 64) = v27;
        *(v23 + 32) = v24;
        *(v23 + 40) = v26;
        v28 = a2;
        v29 = [v28 description];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        *(v23 + 96) = &type metadata for String;
        *(v23 + 104) = v27;
        *(v23 + 72) = v30;
        *(v23 + 80) = v32;
        os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v22, "Don't send this record as part of update list as it is in queue for deletion: %@, %@", 84, 2, v23);
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_18;
      }

      ++v5;
      if (v7 == i)
      {
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }
}

uint64_t sub_10016106C(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for URL();
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin(v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v53 - v10;
  __chkstk_darwin(v12);
  v57 = &v53 - v13;
  v54 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v55 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1002289A0;
  [a1 scope];
  v15 = CKDatabaseScope.description.getter();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  v18 = sub_1000EE954();
  *(v14 + 64) = v18;
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  v56 = a2;
  v19 = [a2 zoneName];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v18;
  *(v14 + 72) = v20;
  *(v14 + 80) = v22;
  v60 = a3;
  if (a3)
  {
    v53 = v11;
    v23 = a1;
    v24 = [a3 data];
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = Data.hexString.getter(v25, v27);
    v30 = v29;
    sub_1000EF870(v25, v27);
    v31 = (v14 + 112);
    *(v14 + 136) = &type metadata for String;
    *(v14 + 144) = v18;
    if (v30)
    {
      *v31 = v28;
      v32 = v59;
      a1 = v23;
      v11 = v53;
      v33 = v55;
      goto LABEL_9;
    }

    v32 = v59;
    a1 = v23;
    v11 = v53;
  }

  else
  {
    v31 = (v14 + 112);
    *(v14 + 136) = &type metadata for String;
    *(v14 + 144) = v18;
    v32 = v59;
  }

  v33 = v55;
  *v31 = 7104878;
  v30 = 0xE300000000000000;
LABEL_9:
  *(v14 + 120) = v30;
  os_log(_:dso:log:_:_:)(v54, &_mh_execute_header, v33, "New zone change token, database, %@, zoneName, %@, token, %@", 60, 2, v14);

  v34 = [a1 scope];
  sub_10013A598();
  URL.appendingPathComponent(_:isDirectory:)();
  v35 = v58;
  v36 = *(v58 + 8);
  v36(v8, v32);
  if (v34 == 3)
  {
    v37 = 0x646572616853;
    v38 = 0xE600000000000000;
    goto LABEL_17;
  }

  if (v34 == 2)
  {
    v37 = 0x65746176697250;
LABEL_16:
    v38 = 0xE700000000000000;
    goto LABEL_17;
  }

  if (v34 != 1)
  {
    v39 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v33, "Unknown CKDatabase.Scope!", 25, 2, _swiftEmptyArrayStorage);
    v37 = 0x6E776F6E6B6E55;
    goto LABEL_16;
  }

  v37 = 0x63696C627550;
  v38 = 0xE600000000000000;
LABEL_17:
  URL.appendPathComponent(_:)(*&v37);
  v40 = v56;
  v41 = [v56 ownerName];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v45._countAndFlagsBits = v42;
  v45._object = v44;
  URL.appendPathComponent(_:)(v45);

  v46 = [v40 zoneName];
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v61._countAndFlagsBits = v47;
  v61._object = v49;
  v50._countAndFlagsBits = 0x6E656B6F742ELL;
  v50._object = 0xE600000000000000;
  String.append(_:)(v50);
  URL.appendPathComponent(_:)(v61);

  v51 = v57;
  (*(v35 + 32))(v57, v11, v32);
  sub_100160104(v51, v60);
  return (v36)(v51, v32);
}

uint64_t sub_100161528(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {

    _StringGuts.grow(_:)(37);

    v8._countAndFlagsBits = a3;
    v8._object = a4;
    String.append(_:)(v8);

    v9 = sub_1001605C4(a3, a4);

    v27[0] = a1;
    v27[1] = a2;
    __chkstk_darwin(v10);
    v26[2] = v27;

    v11 = sub_10017CE74(sub_1001633BC, v26, v9);

    if (v11)
    {
    }

    else
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1001CF194(0, *(v9 + 2) + 1, 1, v9);
      }

      v17 = *(v9 + 2);
      v16 = *(v9 + 3);
      if (v17 >= v16 >> 1)
      {
        v9 = sub_1001CF194((v16 > 1), v17 + 1, 1, v9);
      }

      *(v9 + 2) = v17 + 1;
      v18 = &v9[16 * v17];
      *(v18 + 4) = a1;
      *(v18 + 5) = a2;
      v19 = [objc_opt_self() standardUserDefaults];
      isa = Array._bridgeToObjectiveC()().super.isa;

      v21 = String._bridgeToObjectiveC()();

      [v19 setObject:isa forKey:v21];

      v22 = static os_log_type_t.default.getter();
      if (qword_1002F7AD8 != -1)
      {
        swift_once();
      }

      v23 = qword_100300E28;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100226C80;
      *(v24 + 56) = &type metadata for String;
      v25 = sub_1000EE954();
      *(v24 + 32) = a1;
      *(v24 + 40) = a2;
      *(v24 + 96) = &type metadata for String;
      *(v24 + 104) = v25;
      *(v24 + 64) = v25;
      *(v24 + 72) = a3;
      *(v24 + 80) = a4;

      os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Marked zone %@ as created for user: %@", 38, 2, v24);
    }
  }

  else
  {
    v12 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v13 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100226100;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_1000EE954();
    *(v14 + 32) = a1;
    *(v14 + 40) = a2;

    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Cannot mark zone %@ as created - no valid user identifier", 57, 2, v14);
  }
}

id sub_100161910(uint64_t a1, void *a2)
{
  if (a2)
  {
    _StringGuts.grow(_:)(44);

    v4._countAndFlagsBits = a1;
    v4._object = a2;
    String.append(_:)(v4);
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = String._bridgeToObjectiveC()();

    v7 = [v5 BOOLForKey:v6];
  }

  else
  {
    v8 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      v10 = v8;
      swift_once();
      v8 = v10;
    }

    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_100300E28, "Cannot check subscription status - no valid user identifier", 59, 2, _swiftEmptyArrayStorage);
    return 0;
  }

  return v7;
}

void sub_100161A68(uint64_t a1, void *a2)
{
  sub_1000FA784(0, &qword_1002F9458, CKDatabaseSubscription_ptr);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  isa = CKDatabaseSubscription.init(subscriptionID:)(v4).super.super.isa;
  v6 = [objc_allocWithZone(CKNotificationInfo) init];
  [v6 setShouldSendContentAvailable:1];
  v7 = isa;
  [(objc_class *)v7 setNotificationInfo:v6];
  sub_1000FA784(0, &unk_1002F9460, CKModifySubscriptionsOperation_ptr);
  sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002290F0;
  *(v8 + 32) = v7;
  v9 = _swiftEmptyArrayStorage;
  v10 = CKModifySubscriptionsOperation.init(subscriptionsToSave:subscriptionIDsToDelete:)(*&v8, v14).super.super.super.super.isa;
  v11 = [(objc_class *)v10 configuration];
  if (v11)
  {
    v12 = v11;
    [v11 setAutomaticallyRetryNetworkFailures:0];

    v13 = [(objc_class *)v10 configuration];
    if (v13)
    {
      [v13 setDiscretionaryNetworkBehavior:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100161BF8(uint64_t a1, void *a2)
{
  if (a2)
  {

    _StringGuts.grow(_:)(44);

    v4._countAndFlagsBits = a1;
    v4._object = a2;
    String.append(_:)(v4);
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = String._bridgeToObjectiveC()();

    [v5 setBool:1 forKey:v6];

    v7 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v8 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100226100;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_1000EE954();
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Marked subscription as created for user: %@", 43, 2, v9);
  }

  else
  {
    v11 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      v13 = v11;
      swift_once();
      v11 = v13;
    }

    v12 = qword_100300E28;

    return os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Cannot mark subscription as created - no valid user identifier", 62, 2, _swiftEmptyArrayStorage);
  }
}

void sub_100161E3C(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!a4)
  {
    strcpy(v56, "NotApplicable");
    HIWORD(v56[1]) = -4864;
    goto LABEL_20;
  }

  swift_getErrorValue();
  v56[0] = Error.localizedDescription.getter();
  v56[1] = v6;
  v52[0] = a4;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v50 = String._bridgeToObjectiveC()();
    sub_1000EE870(&qword_1002F9378, &unk_1002292E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100229100;
    *(inited + 32) = 0x726F727245;
    *(inited + 40) = 0xE500000000000000;
    v38 = objc_allocWithZone(NSString);
    v39 = String._bridgeToObjectiveC()();
    v40 = [v38 initWithString:v39];

    *(inited + 48) = v40;
    *(inited + 56) = 0x6D69547473726946;
    *(inited + 64) = 0xE900000000000065;
    v41 = [a1 recordChangeTag];
    v42 = v41;
    if (v41)
    {
    }

    *(inited + 72) = [objc_allocWithZone(NSNumber) initWithBool:v42 == 0];
    *(inited + 80) = 0x795464726F636552;
    *(inited + 88) = 0xEA00000000006570;
    CKRecord.recordType.getter();
    v43 = objc_allocWithZone(NSString);
    v44 = String._bridgeToObjectiveC()();

    v45 = [v43 initWithString:v44];

    *(inited + 96) = v45;
    *(inited + 104) = 0x73736563637553;
    *(inited + 112) = 0xE700000000000000;
    *(inited + 120) = [objc_allocWithZone(NSNumber) initWithBool:a4 == 0];
    strcpy((inited + 128), "SyncDuration");
    *(inited + 141) = 0;
    *(inited + 142) = -5120;
    *(inited + 144) = [objc_allocWithZone(NSNumber) initWithDouble:0.0];
    strcpy((inited + 152), "UploadDuration");
    *(inited + 167) = -18;
    Date.timeIntervalSinceNow.getter();
    *(inited + 168) = [objc_allocWithZone(NSNumber) initWithDouble:-v46];
    strcpy((inited + 176), "UserInitiated");
    *(inited + 190) = -4864;
    *(inited + 192) = [objc_allocWithZone(NSNumber) initWithBool:a3 & 1];
    sub_1000F9D9C(inited);
    swift_setDeallocating();
    sub_1000EE870(&qword_1002F9380, &unk_100229A70);
    swift_arrayDestroy();
    sub_1000FA784(0, &qword_1002F9388, NSObject_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    CUMetricsLog();

    return;
  }

  v10 = v55;
  v52[0] = v55;
  sub_1001624EC(&qword_1002F9330, type metadata accessor for CKError, &unk_100226980, v7, v8, v9);
  _BridgedStoredNSError.code.getter();
  v11 = stringForCKErrorCode();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v56[0] = v12;
  v56[1] = v14;
  v15 = _BridgedStoredNSError.userInfo.getter();
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v15 + 16))
  {

    goto LABEL_18;
  }

  v18 = sub_1000F8C5C(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  sub_100162534(*(v15 + 56) + 32 * v18, v52);

  sub_1000EE870(&qword_1002F9390, &qword_1002292F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  v21 = v54 + 64;
  v22 = 1 << *(v54 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v54 + 64);
  v25 = (v22 + 63) >> 6;
  v48 = v54;
  v49 = v10;

  v26 = 0;
  while (v24)
  {
    v27 = v26;
LABEL_14:
    v28 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v29 = v28 | (v27 << 6);
    sub_1000FA898(*(v48 + 48) + 40 * v29, v52);
    v53 = *(*(v48 + 56) + 8 * v29);
    v30 = v53;
    v31._countAndFlagsBits = 8236;
    v31._object = 0xE200000000000000;
    String.append(_:)(v31);
    v55 = v49;
    _BridgedStoredNSError.code.getter();
    v32 = stringForCKErrorCode();
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36._countAndFlagsBits = v33;
    v36._object = v35;
    String.append(_:)(v36);

    sub_1000EEE6C(v52, &qword_1002F9398, &qword_1002292F8);
  }

  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v25)
    {

      goto LABEL_20;
    }

    v24 = *(v21 + 8 * v27);
    ++v26;
    if (v24)
    {
      v26 = v27;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1001624EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  result = *a1;
  if (!result)
  {
    v9 = a2(255);
    result = swift_getWitnessTable(a3, v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100162534(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100162590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EE870(&qword_1002F9340, &qword_1002292C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100162600(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));
  v9 = *(v8 + *(v3 + 64));

  return sub_1001552D8(a1, v4, v5, v6, v7, v8, v9);
}

void sub_100162698(unint64_t a1, char a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));

  sub_1001558C8(a1, a2 & 1, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100162740(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1000FA784(255, a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100162790(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100162814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudCoordinatorConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100162938(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v13 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1002289A0;
  v15 = Data.hexString.getter(a1, a2);
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  v18 = sub_1000EE954();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v18;
  *(v14 + 64) = v18;
  *(v14 + 72) = a3;
  *(v14 + 80) = a4;
  *(v14 + 136) = &type metadata for String;
  *(v14 + 144) = v18;
  *(v14 + 112) = a5;
  *(v14 + 120) = a6;

  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "APS token: <%@> forTopic: [%@] identifier: [%@]", 47, 2, v14);
}

uint64_t sub_100162A94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100162C70()
{
  v1 = *(v0 + 40);
  if (!__OFADD__(v1, 1))
  {
    return sub_10014BDC4(*(v0 + 24), *(v0 + 32), v1 + 1, *(v0 + 48), *(v0 + 56));
  }

  __break(1u);
  return result;
}

uint64_t sub_100162CBC(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 24));

  a2(*(v3 + 48));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_100162DA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100162DF4(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_100162E00()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_100162E70(uint64_t a1, char a2)
{
  v5 = *(v2 + 32);
  (*(v2 + 16))(a1, a2 & 1);
  return v5(a1, a2 & 1);
}

uint64_t sub_100162F68(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_100162F8C(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_100162F98(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_100162FF0(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

void sub_100163058(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_100163068(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100163078(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_100163100(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100163124(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10016317C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *sub_1001631CC(void *result, int a2)
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

unint64_t sub_100163204()
{
  result = qword_1002F9520;
  if (!qword_1002F9520)
  {
    result = swift_getWitnessTable(&unk_100229488, &type metadata for CloudCoordinator.DatabaseToken, v0, v1);
    atomic_store(result, &qword_1002F9520);
  }

  return result;
}

unint64_t sub_100163258()
{
  result = qword_1002F9528;
  if (!qword_1002F9528)
  {
    result = swift_getWitnessTable(&unk_100229408, &type metadata for CloudCoordinator.CloudCoordinatorError, v0, v1);
    atomic_store(result, &qword_1002F9528);
  }

  return result;
}

uint64_t sub_100163928()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v7, qword_100300D88);
  sub_1000EE91C(v3, qword_100300D88);
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

id AADeviceRecord.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v112 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v5 - 8);
  v107 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v102 - v8;
  __chkstk_darwin(v10);
  v12 = &v102 - v11;
  __chkstk_darwin(v13);
  v106 = &v102 - v14;
  __chkstk_darwin(v15);
  v17 = &v102 - v16;
  v18 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata), *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata + 8));
  v108 = v9;
  if (!isa)
  {
    isa = sub_1000F89F4().super.isa;
  }

  v105 = v12;
  v109 = isa;
  v114 = isa;
  sub_1001675F4(&v114);
  objc_autoreleasePoolPop(v18);
  v114 = 0;
  v115 = 0xE000000000000000;
  _StringGuts.grow(_:)(388);
  v116 = v114;
  v117 = v115;
  v20._countAndFlagsBits = 0x6563697665444141;
  v20._object = 0xEF2864726F636552;
  String.append(_:)(v20);
  type metadata accessor for UUID();
  sub_1001695B4(&unk_1002F7BC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 2108704;
  v22._object = 0xE300000000000000;
  String.append(_:)(v22);
  String.append(_:)(*(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress));
  v23._object = 0x800000010026E050;
  v23._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v23);
  LOBYTE(v114) = *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig);
  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v24);

  v25._object = 0x800000010026E070;
  v25._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v25);
  LOBYTE(v114) = *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff);
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v27._object = 0x800000010026E090;
  v27._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v27);
  v28 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
  swift_beginAccess();
  sub_10013250C(v1 + v28, v17);
  v29 = v112;
  v110 = v112[6];
  v111 = v112 + 6;
  if (v110(v17, 1, v2))
  {
    sub_1000EEE6C(v17, &qword_1002F7EF0, &unk_100226C90);
    v30 = 0xE200000000000000;
    v31 = 15932;
  }

  else
  {
    (v29[2])(v4, v17, v2);
    sub_1000EEE6C(v17, &qword_1002F7EF0, &unk_100226C90);
    v32 = objc_opt_self();
    v33 = Date._bridgeToObjectiveC()().super.isa;
    v34 = [v32 localizedStringFromDate:v33 dateStyle:2 timeStyle:2];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v36;

    (v29[1])(v4, v2);
    v31 = v35;
  }

  v37 = v30;
  String.append(_:)(*&v31);

  v38._countAndFlagsBits = 0xD000000000000017;
  v38._object = 0x800000010026E0B0;
  String.append(_:)(v38);
  v113[0] = *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig);
  v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v39);

  v40._object = 0x800000010026E0D0;
  v40._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v40);
  v113[0] = *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled);
  v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0xD00000000000001CLL;
  v42._object = 0x800000010026E0F0;
  String.append(_:)(v42);
  v113[0] = *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig);
  v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v43);

  v44._countAndFlagsBits = 0xD000000000000013;
  v44._object = 0x800000010026E110;
  v104 = 0xD000000000000013;
  String.append(_:)(v44);
  v113[0] = *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode);
  v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v45);

  v46._countAndFlagsBits = 0xD00000000000001DLL;
  v46._object = 0x800000010026E130;
  String.append(_:)(v46);
  v113[0] = *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed);
  v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v47);

  v48._object = 0x800000010026E150;
  v48._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v48);
  v113[0] = *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability);
  v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v49);

  v50._countAndFlagsBits = 0xD000000000000014;
  v50._object = 0x8000000100267810;
  String.append(_:)(v50);
  v51 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_lastModifiedDate;
  swift_beginAccess();
  v52 = v112;
  v53 = v112[2];
  v53(v4, v1 + v51, v2);
  sub_1001695B4(&qword_1002F9560, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v54);

  v102 = v52[1];
  v103 = v4;
  v102(v4, v2);
  v55._countAndFlagsBits = 0xD00000000000001ALL;
  v55._object = 0x8000000100267830;
  String.append(_:)(v55);
  v56 = v109;
  v57 = [v109 creationDate];
  if (v57)
  {
    v58 = v105;
    v59 = v57;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v60 = 0;
  }

  else
  {
    v60 = 1;
    v58 = v105;
  }

  v61 = v112[7];
  v61(v58, v60, 1, v2);
  v62 = v106;
  sub_1000EED5C(v58, v106);
  if (v110(v62, 1, v2))
  {
    sub_1000EEE6C(v62, &qword_1002F7EF0, &unk_100226C90);
    v63 = 0xE200000000000000;
    v64 = 15932;
  }

  else
  {
    v65 = v103;
    v53(v103, v62, v2);
    sub_1000EEE6C(v62, &qword_1002F7EF0, &unk_100226C90);
    v66 = objc_opt_self();
    v67 = Date._bridgeToObjectiveC()().super.isa;
    v68 = [v66 localizedStringFromDate:v67 dateStyle:2 timeStyle:2];

    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v70;

    v56 = v109;
    v102(v65, v2);
    v64 = v69;
  }

  v71 = v63;
  String.append(_:)(*&v64);

  v72._countAndFlagsBits = 0xD000000000000012;
  v72._object = 0x8000000100267850;
  String.append(_:)(v72);
  v73 = [v56 modificationDate];
  if (v73)
  {
    v74 = v107;
    v75 = v73;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = 0;
  }

  else
  {
    v76 = 1;
    v74 = v107;
  }

  v61(v74, v76, 1, v2);
  v77 = v108;
  sub_1000EED5C(v74, v108);
  if (v110(v77, 1, v2))
  {
    sub_1000EEE6C(v77, &qword_1002F7EF0, &unk_100226C90);
    v78 = 0xE200000000000000;
    v79 = 15932;
  }

  else
  {
    v80 = v103;
    v53(v103, v77, v2);
    sub_1000EEE6C(v77, &qword_1002F7EF0, &unk_100226C90);
    v81 = objc_opt_self();
    v82 = Date._bridgeToObjectiveC()().super.isa;
    v83 = [v81 localizedStringFromDate:v82 dateStyle:2 timeStyle:2];

    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v85;

    v56 = v109;
    v102(v80, v2);
    v79 = v84;
  }

  v86 = v78;
  String.append(_:)(*&v79);

  v87._object = 0x8000000100267870;
  v87._countAndFlagsBits = v104;
  String.append(_:)(v87);
  v88 = [v56 modifiedByDevice];
  if (v88)
  {
    v89 = v88;
    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;
  }

  else
  {
    v92 = 0xE200000000000000;
    v90 = 15932;
  }

  v93._countAndFlagsBits = v90;
  v93._object = v92;
  String.append(_:)(v93);

  v94._countAndFlagsBits = 0x746520202020202CLL;
  v94._object = 0xEC000000203A6761;
  String.append(_:)(v94);
  v95 = [v56 recordChangeTag];
  if (v95)
  {
    v96 = v95;
    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;
  }

  else
  {
    v99 = 0xE200000000000000;
    v97 = 15932;
  }

  v100._countAndFlagsBits = v97;
  v100._object = v99;
  String.append(_:)(v100);

  return v116;
}

void *sub_100164730(id a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v104 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v106 = &v98 - v9;
  v10 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v10 - 8);
  v103 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v109 = &v98 - v13;
  __chkstk_darwin(v14);
  v105 = &v98 - v15;
  v16 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v16 - 8);
  v18 = &v98 - v17;
  v19 = type metadata accessor for UUID();
  v112 = *(v19 - 8);
  v113 = v19;
  v20 = __chkstk_darwin(v19);
  v110 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
  v107 = v6;
  v23 = *(v6 + 56);
  v108 = v6 + 56;
  v111 = v23;
  (v23)(&v3[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp], 1, 1, v5, v20);
  if (CKRecord.recordType.getter() == 0x6563697665444141 && v24 == 0xEE0064726F636552)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      sub_100169560();
      swift_allocError();
      *v38 = 0;
      swift_willThrow();
LABEL_13:

      sub_1000EEE6C(&v3[v22], &qword_1002F7EF0, &unk_100226C90);
      type metadata accessor for AADeviceRecord(0);
      swift_deallocPartialClassInstance();
      return v3;
    }
  }

  v26 = [a1 encryptedValues];
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 objectForKeyedSubscript:v27];

  if (!v28 || (v117 = v28, v102 = sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_9:
    v34 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v35 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100226100;
    *(v36 + 56) = sub_1000EEE20();
    *(v36 + 64) = sub_1001695B4(&qword_1002F7BE0, sub_1000EEE20, &protocol conformance descriptor for NSObject);
    *(v36 + 32) = a1;
    a1 = a1;
    os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v35, "Invalid AADeviceRecord - %@", 27, 2, v36);

    sub_100169560();
    swift_allocError();
    *v37 = 4;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v100 = v2;
  v101 = v5;
  v29 = v116;
  v99 = v115;
  v30 = [a1 recordID];
  v31 = [v30 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v33 = v112;
  v32 = v113;
  if ((*(v112 + 48))(v18, 1, v113) == 1)
  {

    sub_1000EEE6C(v18, &qword_1002F8000, &unk_1002262C0);
    goto LABEL_9;
  }

  v40 = v110;
  (*(v33 + 32))(v110, v18, v32);
  (*(v33 + 16))(&v3[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_identifier], v40, v32);
  v41 = &v3[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress];
  *v41 = v99;
  v41[1] = v29;
  v42 = String._bridgeToObjectiveC()();
  v43 = [v26 objectForKeyedSubscript:v42];

  v44 = v101;
  if (v43 && (v115 = v43, swift_dynamicCast()))
  {
    v45 = v117;
  }

  else
  {
    if (qword_1002F7A78 != -1)
    {
      swift_once();
    }

    v45 = byte_1002F9540;
  }

  v3[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig] = v45;
  v99 = 0xD000000000000017;
  v46 = String._bridgeToObjectiveC()();
  v47 = [v26 objectForKeyedSubscript:v46];

  if (v47 && (v115 = v47, swift_dynamicCast()))
  {
    v48 = v117;
  }

  else
  {
    if (qword_1002F7A80 != -1)
    {
      swift_once();
    }

    v48 = byte_1002F9541;
  }

  v3[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff] = v48;
  v49 = String._bridgeToObjectiveC()();
  v50 = [v26 objectForKeyedSubscript:v49];

  if (v50)
  {
    v115 = v50;
    v51 = v105;
    v52 = swift_dynamicCast() ^ 1;
    v53 = v51;
  }

  else
  {
    v51 = v105;
    v53 = v105;
    v52 = 1;
  }

  v111(v53, v52, 1, v44);
  swift_beginAccess();
  sub_10013261C(v51, &v3[v22]);
  swift_endAccess();
  v54 = String._bridgeToObjectiveC()();
  v55 = [v26 objectForKeyedSubscript:v54];

  if (v55 && (v115 = v55, swift_dynamicCast()))
  {
    v56 = v117;
  }

  else
  {
    if (qword_1002F7A88 != -1)
    {
      swift_once();
    }

    v56 = byte_1002F9542;
  }

  v3[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig] = v56;
  v57 = String._bridgeToObjectiveC()();
  v58 = [v26 objectForKeyedSubscript:v57];

  if (v58 && (v115 = v58, swift_dynamicCast()))
  {
    v59 = v117;
  }

  else
  {
    if (qword_1002F7A90 != -1)
    {
      swift_once();
    }

    v59 = byte_1002F9543;
  }

  v3[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled] = v59;
  v60 = String._bridgeToObjectiveC()();
  v61 = [v26 objectForKeyedSubscript:v60];

  if (v61 && (v115 = v61, swift_dynamicCast()))
  {
    v62 = v117;
  }

  else
  {
    if (qword_1002F7A98 != -1)
    {
      swift_once();
    }

    v62 = byte_1002F9544;
  }

  v3[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig] = v62;
  v63 = String._bridgeToObjectiveC()();
  v64 = [v26 objectForKeyedSubscript:v63];

  if (v64 && (v115 = v64, swift_dynamicCast()))
  {
    v65 = v117;
  }

  else
  {
    if (qword_1002F7AA0 != -1)
    {
      swift_once();
    }

    v65 = byte_1002F9545;
  }

  v3[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode] = v65;
  v66 = String._bridgeToObjectiveC()();
  v67 = [v26 objectForKeyedSubscript:v66];

  v68 = v109;
  if (v67 && (v115 = v67, swift_dynamicCast()))
  {
    v69 = v117;
  }

  else
  {
    if (qword_1002F7AA8 != -1)
    {
      swift_once();
    }

    v69 = byte_1002F9546;
  }

  v3[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed] = v69;
  v70 = String._bridgeToObjectiveC()();
  v71 = [v26 objectForKeyedSubscript:v70];

  if (v71 && (v115 = v71, swift_dynamicCast()))
  {
    v72 = v117;
  }

  else
  {
    if (qword_1002F7AB0 != -1)
    {
      swift_once();
    }

    v72 = byte_1002F9547;
  }

  v3[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability] = v72;
  v73 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v73];
  [v73 finishEncoding];
  v74 = [v73 encodedData];
  v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;

  v78 = &v3[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata];
  *v78 = v75;
  v78[1] = v77;
  v79 = [a1 modificationDate];
  if (v79)
  {
    v80 = v104;
    v81 = v79;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    (*(v112 + 8))(v110, v113);
    v82 = v107;
    v83 = *(v107 + 32);
    v84 = v80;
    v85 = v101;
    v83(v68, v84, v101);
    v111(v68, 0, 1, v85);
    v86 = v106;
    v83(v106, v68, v85);
  }

  else
  {
    v85 = v101;
    v87 = v111;
    v111(v68, 1, 1, v101);
    v88 = [a1 creationDate];
    v82 = v107;
    if (v88)
    {
      v89 = v104;
      v90 = v87;
      v91 = v88;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      (*(v112 + 8))(v110, v113);
      v92 = *(v82 + 32);
      v93 = v103;
      v92(v103, v89, v85);
      v90(v93, 0, 1, v85);
      v68 = v109;
      v86 = v106;
      v92(v106, v93, v85);
      v94 = (*(v82 + 48))(v68, 1, v85);
    }

    else
    {
      v95 = v103;
      v87(v103, 1, 1, v85);
      v86 = v106;
      static Date.now.getter();
      swift_unknownObjectRelease();
      (*(v112 + 8))(v110, v113);
      v96 = *(v82 + 48);
      if (v96(v95, 1, v85) != 1)
      {
        sub_1000EEE6C(v95, &qword_1002F7EF0, &unk_100226C90);
      }

      v85 = v101;
      v94 = v96(v68, 1, v101);
    }

    if (v94 != 1)
    {
      sub_1000EEE6C(v68, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  (*(v82 + 32))(&v3[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_lastModifiedDate], v86, v85);
  v97 = type metadata accessor for AADeviceRecord(0);
  v114.receiver = v3;
  v114.super_class = v97;
  v3 = objc_msgSendSuper2(&v114, "init");

  return v3;
}

void (*sub_100165768(uint64_t a1, uint64_t a2, unint64_t a3, void *a4))(uint64_t, uint64_t)
{
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v53 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v13 = __chkstk_darwin(v12 - 8);
  v52 = &v50 - v14;
  v54 = v10;
  v55 = v9;
  v15 = *(v10 + 56);
  v56 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
  v51 = v15;
  (v15)(&v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp], 1, 1, v9, v13);
  v16 = &v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_identifier;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v61 = a1;
  v57 = v18;
  v20(&v4[v17], a1);
  v59 = a2;
  v60 = a3;
  sub_1000EE9F4(a2, a3);
  v58 = a4;
  v21 = [a4 bluetoothAddress];
  if (!v21)
  {
    v27 = 2;
    goto LABEL_10;
  }

  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26 || v23 == 0xD000000000000011 && 0x8000000100267AA0 == v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v27 = 3;
LABEL_10:
    sub_100169560();
    swift_allocError();
    *v28 = v27;
    swift_willThrow();

    sub_1000EF870(v59, v60);
    v29 = *(v19 + 8);
    v30 = v57;
    v29(v61, v57);
    sub_1000EF870(*v16, *(v16 + 1));
    v29(&v4[v17], v30);
    sub_1000EEE6C(&v4[v56], &qword_1002F7EF0, &unk_100226C90);
    type metadata accessor for AADeviceRecord(0);
    swift_deallocPartialClassInstance();
    return v29;
  }

  v32 = &v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress];
  *v32 = v23;
  v32[1] = v25;
  v33 = v58;
  v34 = [v58 acceptReplyPlayPauseConfig];
  v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig] = v34;
  v35 = [v33 listeningModeOffAllowed];
  v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff] = v35;
  v36 = [v33 audiogramEnrolledTimestamp];
  if (v36)
  {
    v37 = v52;
    v38 = v36;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = 0;
  }

  else
  {
    v39 = 1;
    v37 = v52;
  }

  v40 = v55;
  v51(v37, v39, 1, v55);
  v41 = v56;
  swift_beginAccess();
  sub_10013261C(v37, &v4[v41]);
  swift_endAccess();
  v42 = [v33 remoteCameraControlConfig];
  v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig] = v42;
  v43 = [v33 chargingReminderEnabled];
  v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled] = v43;
  v44 = [v33 declineDismissSkipConfig];
  v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig] = v44;
  v45 = [v33 headGestureToggle];
  v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode] = v45;
  v46 = [v33 healthKitDataWriteAllowed];
  v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed] = v46;
  v47 = [v33 heartRateMonitorCapability];
  v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability] = v47;
  v48 = v53;
  static Date.now.getter();
  (*(v54 + 32))(&v4[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_lastModifiedDate], v48, v40);
  v49 = type metadata accessor for AADeviceRecord(0);
  v62.receiver = v4;
  v62.super_class = v49;
  v29 = objc_msgSendSuper2(&v62, "init");

  sub_1000EF870(v59, v60);
  (*(v19 + 8))(v61, v57);
  return v29;
}

void *AADeviceRecord.init(from:)(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v79 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v80 = &v74 - v7;
  v8 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v8 - 8);
  v77 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v78 = &v74 - v11;
  __chkstk_darwin(v12);
  v82 = &v74 - v13;
  __chkstk_darwin(v14);
  v87 = &v74 - v15;
  v16 = type metadata accessor for UUID();
  v84 = *(v16 - 1);
  v85 = v16;
  __chkstk_darwin(v16);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1000EE870(&qword_1002F9568, &qword_100229518);
  v88 = *(v86 - 8);
  v19 = __chkstk_darwin(v86);
  v21 = &v74 - v20;
  v22 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
  v81 = v4;
  v25 = *(v4 + 56);
  v23 = v4 + 56;
  v24 = v25;
  v91 = v1;
  v83 = v3;
  (v25)(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp, 1, 1, v3, v19);
  v26 = a1[3];
  v90 = a1;
  sub_1000EF78C(a1, v26);
  sub_100168D64();
  v27 = v89;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    v30 = v91;
    sub_1000EF824(v90);
    sub_1000EEE6C(v30 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp, &qword_1002F7EF0, &unk_100226C90);
    type metadata accessor for AADeviceRecord(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v89 = v22;
    v28 = v87;
    v75 = v24;
    v76 = v23;
    v94 = 0;
    sub_1000EF8C4();
    v29 = v86;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v91;
    *(v91 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata) = *v93;
    LOBYTE(v93[0]) = 1;
    sub_1001695B4(&unk_1002F8750, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = v85;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v84 + 32))(v32 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_identifier, v18, v33);
    LOBYTE(v93[0]) = 2;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = (v32 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress);
    *v35 = v34;
    v35[1] = v36;
    LOBYTE(v93[0]) = 3;
    *(v32 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v93[0]) = 4;
    *(v32 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v93[0]) = 5;
    v37 = v28;
    v38 = sub_1001695B4(&qword_1002F7D90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v74 = v38;
    v39 = v89;
    swift_beginAccess();
    sub_10013261C(v37, v39 + v32);
    swift_endAccess();
    LOBYTE(v93[0]) = 6;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v40 & 0x100) != 0)
    {
      v41 = 0;
    }

    else
    {
      v41 = v40;
    }

    *(v32 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig) = v41;
    LOBYTE(v93[0]) = 7;
    v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v42 & 0x100) != 0)
    {
      v43 = 0;
    }

    else
    {
      v43 = v42;
    }

    *(v32 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled) = v43;
    LOBYTE(v93[0]) = 8;
    *(v32 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v93[0]) = 9;
    *(v91 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v93[0]) = 10;
    v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v44 & 0x100) != 0)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    *(v91 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed) = v45;
    LOBYTE(v93[0]) = 11;
    v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v46 & 0x100) != 0)
    {
      v47 = 0;
    }

    else
    {
      v47 = v46;
    }

    v48 = v91;
    *(v91 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability) = v47;
    v49 = v80;
    static Date.now.getter();
    v50 = *(v81 + 32);
    v87 = (v81 + 32);
    v89 = v50;
    v50(&v48[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_lastModifiedDate], v49, v83);
    v51 = type metadata accessor for AADeviceRecord(0);
    v92.receiver = v48;
    v92.super_class = v51;
    v30 = objc_msgSendSuper2(&v92, "init");
    LOBYTE(v93[0]) = 12;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v91 = *(v81 + 48);
    if ((v91)(v82, 1, v83) == 1)
    {
      v52 = v30;
      v85 = objc_autoreleasePoolPush();
      v53 = v52 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata;
      isa = sub_100169D38(*(v52 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata), *(v52 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata + 8));
      if (!isa)
      {
        isa = sub_1000F89F4().super.isa;
      }

      v55 = isa;
      v93[0] = isa;
      sub_1001675F4(v93);
      objc_autoreleasePoolPop(v85);
      v56 = [v55 modificationDate];

      if (v56)
      {
        v57 = v80;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v88 + 8))(v21, v29);
        v58 = v78;
        v59 = v83;
        v60 = v89;
        v89(v78, v57, v83);
        v75(v58, 0, 1, v59);
        v60(v79, v58, v59);
      }

      else
      {
        v75(v78, 1, 1, v83);
        v85 = objc_autoreleasePoolPush();
        v63 = sub_100169D38(*v53, *(v53 + 1));
        if (!v63)
        {
          v63 = sub_1000F89F4().super.isa;
        }

        v64 = v63;
        v93[0] = v63;
        sub_1001675F4(v93);
        objc_autoreleasePoolPop(v85);
        v65 = [v64 creationDate];

        if (v65)
        {
          v66 = v80;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v88 + 8))(v21, v29);
          v67 = v77;
          v68 = v66;
          v69 = v83;
          v70 = v89;
          v89(v77, v68, v83);
          v75(v67, 0, 1, v69);
          v70(v79, v67, v69);
        }

        else
        {
          v71 = v77;
          v72 = v83;
          v75(v77, 1, 1, v83);
          static Date.now.getter();
          (*(v88 + 8))(v21, v29);
          if ((v91)(v71, 1, v72) != 1)
          {
            sub_1000EEE6C(v77, &qword_1002F7EF0, &unk_100226C90);
          }
        }

        if ((v91)(v78, 1, v83) != 1)
        {
          sub_1000EEE6C(v78, &qword_1002F7EF0, &unk_100226C90);
        }
      }

      if ((v91)(v82, 1, v83) != 1)
      {
        sub_1000EEE6C(v82, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    else
    {
      v61 = *(v88 + 8);
      v62 = v30;
      v61(v21, v29);
      v89(v79, v82, v83);
    }

    v73 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_lastModifiedDate;
    swift_beginAccess();
    (*(v81 + 40))(v30 + v73, v79, v83);
    swift_endAccess();
    sub_1000EF824(v90);
  }

  return v30;
}

unint64_t sub_100166B78(char a1)
{
  result = 0x74654D64756F6C63;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
    case 12:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
    case 7:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0x7473654764616568;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100166D04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100169134(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100166D2C(uint64_t a1)
{
  v2 = sub_100168D64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100166D68(uint64_t a1)
{
  v2 = sub_100168D64();

  return CodingKey.debugDescription.getter(a1, v2);
}

id AADeviceRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AADeviceRecord(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t AADeviceRecord.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_1000EE870(&unk_1002F9580, &qword_100229520);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  sub_1000EF78C(a1, a1[3]);
  sub_100168D64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata + 8);
  v24 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata);
  v25 = v14;
  v23 = 0;
  sub_1000EE9F4(v24, v14);
  sub_1000EF9D8();
  v15 = v22;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v15)
  {
    sub_1000EF870(v24, v25);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v22 = v6;
    sub_1000EF870(v24, v25);
    LOBYTE(v24) = 1;
    type metadata accessor for UUID();
    sub_1001695B4(&qword_1002F8340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v24) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v24) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v24) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
    swift_beginAccess();
    sub_10013250C(v2 + v17, v9);
    v23 = 5;
    sub_1001695B4(&qword_1002F7DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000EEE6C(v9, &qword_1002F7EF0, &unk_100226C90);
    v23 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_lastModifiedDate;
    swift_beginAccess();
    (*(v20 + 16))(v22, v2 + v18, v21);
    v26 = 12;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v20 + 8))(v22, v21);
    return (*(v11 + 8))(v13, 0);
  }
}

uint64_t sub_100167500()
{
  v1 = *v0 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata;
  v2 = *v1;
  sub_1000EE9F4(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_100167544@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_lastModifiedDate;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1001675F4(id *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v49 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000EE870(&qword_1002F8B30, &unk_1002288C0);
  __chkstk_darwin(v51);
  v7 = &v49 - v6;
  v8 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v8 - 8);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v52 = &v49 - v11;
  __chkstk_darwin(v12);
  v53 = &v49 - v13;
  v14 = static os_log_type_t.debug.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v15 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100226100;
  v17 = *a1;
  v18 = [v17 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_1000EE954();
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Updating main aaDevice record: %@", 33, 2, v16);

  [v17 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v57 = v2;
  v23 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress);
  v22 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress + 8);
  if (!*(&v58 + 1))
  {
    goto LABEL_7;
  }

  if (v58 == __PAIR128__(v22, v23))
  {

    goto LABEL_8;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v24 & 1) == 0)
  {
LABEL_7:
    *(&v59 + 1) = &type metadata for String;
    v60 = &protocol witness table for String;
    *&v58 = v23;
    *(&v58 + 1) = v22;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_8:
  CKRecordKeyValueSetting.subscript.getter();
  v25 = v57;
  v26 = *(v57 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig);
  if (BYTE1(v58))
  {
    v27 = v53;
  }

  else
  {
    v27 = v53;
    if (v58 == v26)
    {
      goto LABEL_12;
    }
  }

  *(&v59 + 1) = &type metadata for UInt8;
  v60 = &protocol witness table for UInt8;
  LOBYTE(v58) = v26;
  CKRecordKeyValueSetting.subscript.setter();
LABEL_12:
  v56 = 0xD000000000000017;
  CKRecordKeyValueSetting.subscript.getter();
  v28 = *(v25 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff);
  if (BYTE1(v58))
  {
    v29 = v52;
  }

  else
  {
    v29 = v52;
    if (v58 == v28)
    {
      goto LABEL_16;
    }
  }

  *(&v59 + 1) = &type metadata for Int8;
  v60 = &protocol witness table for Int8;
  LOBYTE(v58) = v28;
  CKRecordKeyValueSetting.subscript.setter();
LABEL_16:
  v52 = "allowNoiseManagementOff";
  v30 = v55;
  CKRecordKeyValueSetting.subscript.getter();
  v31 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
  v32 = v57;
  swift_beginAccess();
  v33 = *(v51 + 48);
  sub_10013250C(v27, v7);
  v34 = v32 + v31;
  v35 = v30;
  sub_10013250C(v34, &v7[v33]);
  v36 = *(v54 + 48);
  if (v36(v7, 1, v30) == 1)
  {
    sub_1000EEE6C(v27, &qword_1002F7EF0, &unk_100226C90);
    if (v36(&v7[v33], 1, v30) == 1)
    {
      sub_1000EEE6C(v7, &qword_1002F7EF0, &unk_100226C90);
      goto LABEL_26;
    }
  }

  else
  {
    sub_10013250C(v7, v29);
    if (v36(&v7[v33], 1, v30) != 1)
    {
      v47 = v49;
      (*(v54 + 32))(v49, &v7[v33], v30);
      sub_1001695B4(&unk_1002F9600, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      LODWORD(v51) = dispatch thunk of static Equatable.== infix(_:_:)();
      v48 = *(v54 + 8);
      v48(v47, v55);
      sub_1000EEE6C(v53, &qword_1002F7EF0, &unk_100226C90);
      v48(v29, v55);
      v35 = v55;
      sub_1000EEE6C(v7, &qword_1002F7EF0, &unk_100226C90);
      if (v51)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    sub_1000EEE6C(v27, &qword_1002F7EF0, &unk_100226C90);
    (*(v54 + 8))(v29, v30);
  }

  sub_1000EEE6C(v7, &qword_1002F8B30, &unk_1002288C0);
LABEL_22:
  v37 = v50;
  sub_10013250C(v57 + v31, v50);
  if (v36(v37, 1, v35) == 1)
  {
    sub_1000EEE6C(v37, &qword_1002F7EF0, &unk_100226C90);
    v58 = 0u;
    v59 = 0u;
    v60 = 0;
  }

  else
  {
    *(&v59 + 1) = v35;
    v60 = &protocol witness table for Date;
    v38 = sub_100133584(&v58);
    (*(v54 + 32))(v38, v37, v35);
  }

  CKRecordKeyValueSetting.subscript.setter();
LABEL_26:
  CKRecordKeyValueSetting.subscript.getter();
  v39 = v57;
  v40 = *(v57 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig);
  if ((BYTE1(v58) & 1) != 0 || v58 != v40)
  {
    *(&v59 + 1) = &type metadata for UInt8;
    v60 = &protocol witness table for UInt8;
    LOBYTE(v58) = v40;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v41 = *(v39 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled);
  if ((BYTE1(v58) & 1) != 0 || v58 != v41)
  {
    *(&v59 + 1) = &type metadata for Int8;
    v60 = &protocol witness table for Int8;
    LOBYTE(v58) = v41;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v42 = *(v39 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig);
  if ((BYTE1(v58) & 1) != 0 || v58 != v42)
  {
    *(&v59 + 1) = &type metadata for UInt8;
    v60 = &protocol witness table for UInt8;
    LOBYTE(v58) = v42;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v43 = *(v39 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode);
  if ((BYTE1(v58) & 1) != 0 || v58 != v43)
  {
    *(&v59 + 1) = &type metadata for Int8;
    v60 = &protocol witness table for Int8;
    LOBYTE(v58) = v43;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v44 = *(v39 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed);
  if ((BYTE1(v58) & 1) != 0 || v58 != v44)
  {
    *(&v59 + 1) = &type metadata for Int8;
    v60 = &protocol witness table for Int8;
    LOBYTE(v58) = v44;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v45 = *(v39 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability);
  if ((BYTE1(v58) & 1) != 0 || v58 != v45)
  {
    *(&v59 + 1) = &type metadata for UInt8;
    v60 = &protocol witness table for UInt8;
    LOBYTE(v58) = v45;
    CKRecordKeyValueSetting.subscript.setter();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1001680E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_identifier;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *sub_100168160@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for AADeviceRecord(0));
  result = AADeviceRecord.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001681DC(unsigned __int8 *a1)
{
  v2 = v1;
  v54 = type metadata accessor for Date();
  v4 = *(v54 - 8);
  __chkstk_darwin(v54);
  v6 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000EE870(&qword_1002F8B30, &unk_1002288C0);
  __chkstk_darwin(v7);
  v9 = &v49[-v8];
  v10 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v10 - 8);
  v12 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v49[-v14];
  __chkstk_darwin(v16);
  v18 = &v49[-v17];
  if (sub_10016886C(a1))
  {
    v19 = a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig];
    if (*(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig) != v19)
    {
      *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig) = v19;
    }

    v51 = v12;
    v52 = v6;
    v20 = a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff];
    if (*(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff) != v20)
    {
      *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff) = v20;
    }

    v21 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
    swift_beginAccess();
    sub_10013250C(&a1[v21], v18);
    v22 = v18;
    v23 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
    swift_beginAccess();
    v24 = *(v7 + 48);
    sub_10013250C(v1 + v23, v9);
    v53 = v22;
    sub_10013250C(v22, &v9[v24]);
    v25 = *(v4 + 48);
    v26 = v54;
    if (v25(v9, 1, v54) == 1)
    {
      v27 = v26;
      if (v25(&v9[v24], 1, v26) == 1)
      {
        sub_1000EEE6C(v9, &qword_1002F7EF0, &unk_100226C90);
        v28 = v52;
LABEL_18:
        v39 = a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig];
        if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig) != v39)
        {
          *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig) = v39;
        }

        v40 = a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled];
        v41 = v53;
        if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled) != v40)
        {
          *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled) = v40;
        }

        v42 = a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig];
        if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig) != v42)
        {
          *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig) = v42;
        }

        v43 = a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode];
        if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode) != v43)
        {
          *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode) = v43;
        }

        v44 = a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed];
        if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed) != v44)
        {
          *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed) = v44;
        }

        v45 = a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability];
        if (qword_1002F7AB0 != -1)
        {
          swift_once();
        }

        if (v45 != byte_1002F9547 && *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability) != v45)
        {
          *(v2 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability) = v45;
        }

        static Date.now.getter();
        sub_1000EEE6C(v41, &qword_1002F7EF0, &unk_100226C90);
        v46 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_lastModifiedDate;
        swift_beginAccess();
        (*(v4 + 40))(v2 + v46, v28, v27);
        return swift_endAccess();
      }
    }

    else
    {
      sub_10013250C(v9, v15);
      if (v25(&v9[v24], 1, v26) != 1)
      {
        v47 = &v9[v24];
        v28 = v52;
        (*(v4 + 32))(v52, v47, v26);
        sub_1001695B4(&unk_1002F9600, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v50 = dispatch thunk of static Equatable.== infix(_:_:)();
        v48 = *(v4 + 8);
        v48(v28, v26);
        v48(v15, v26);
        sub_1000EEE6C(v9, &qword_1002F7EF0, &unk_100226C90);
        v27 = v26;
        if (v50)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      (*(v4 + 8))(v15, v26);
      v27 = v26;
    }

    sub_1000EEE6C(v9, &qword_1002F8B30, &unk_1002288C0);
    v28 = v52;
LABEL_17:
    v38 = v51;
    sub_10013250C(v53, v51);
    swift_beginAccess();
    sub_10013261C(v38, v2 + v23);
    swift_endAccess();
    goto LABEL_18;
  }

  v29 = static os_log_type_t.info.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v30 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100226100;
  v32 = a1;
  v33 = [v32 description];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = sub_1000EE954();
  *(v31 + 32) = v34;
  *(v31 + 40) = v36;
  os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "No change in updated device: %@", 31, 2, v31);
}

uint64_t sub_10016886C(unsigned __int8 *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EE870(&qword_1002F8B30, &unk_1002288C0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  if (!a1)
  {
    goto LABEL_18;
  }

  if (a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig] == *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_acceptReplyPlayPauseConfig) && a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff] == *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_allowNoiseManagementOff) && a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig] == *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cameraControlConfig) && a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled] == *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_chargingReminderEnabled) && a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig] == *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_declineDismissSkipConfig) && a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode] == *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_headGestureMode) && a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed] == *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_healthKitDataWriteAllowed))
  {
    v16 = a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability];
    if (v16 == *(v1 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_heartRateMonitorCapability))
    {
      v17 = a1;
    }

    else
    {
      v28 = qword_1002F7AB0;
      v19 = a1;
      if (v28 != -1)
      {
        v28 = v19;
        swift_once();
        v19 = v28;
      }

      if (v16 != byte_1002F9547)
      {

        v18 = 1;
        return v18 & 1;
      }
    }

    v20 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
    swift_beginAccess();
    sub_10013250C(&a1[v20], v15);
    v21 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
    swift_beginAccess();
    v22 = *(v7 + 48);
    sub_10013250C(v15, v9);
    sub_10013250C(v1 + v21, &v9[v22]);
    v23 = *(v4 + 48);
    if (v23(v9, 1, v3) == 1)
    {

      sub_1000EEE6C(v15, &qword_1002F7EF0, &unk_100226C90);
      if (v23(&v9[v22], 1, v3) == 1)
      {
        sub_1000EEE6C(v9, &qword_1002F7EF0, &unk_100226C90);
LABEL_18:
        v18 = 0;
        return v18 & 1;
      }
    }

    else
    {
      sub_10013250C(v9, v12);
      if (v23(&v9[v22], 1, v3) != 1)
      {
        (*(v4 + 32))(v6, &v9[v22], v3);
        sub_1001695B4(&unk_1002F9600, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();

        v26 = *(v4 + 8);
        v26(v6, v3);
        sub_1000EEE6C(v15, &qword_1002F7EF0, &unk_100226C90);
        v26(v12, v3);
        sub_1000EEE6C(v9, &qword_1002F7EF0, &unk_100226C90);
        v18 = v25 ^ 1;
        return v18 & 1;
      }

      sub_1000EEE6C(v15, &qword_1002F7EF0, &unk_100226C90);
      (*(v4 + 8))(v12, v3);
    }

    sub_1000EEE6C(v9, &qword_1002F8B30, &unk_1002288C0);
    v18 = 1;
    return v18 & 1;
  }

  v18 = 1;
  return v18 & 1;
}

unint64_t sub_100168D64()
{
  result = qword_1002F9570;
  if (!qword_1002F9570)
  {
    result = swift_getWitnessTable(&unk_1002296C4, &type metadata for AADeviceRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F9570);
  }

  return result;
}

uint64_t type metadata accessor for AADeviceRecord(uint64_t a1)
{
  result = qword_1002F95D0;
  if (!qword_1002F95D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100168E04(uint64_t a1)
{
  result = sub_1001695B4(&qword_1002F9590, type metadata accessor for AADeviceRecord, &unk_100229544);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100168E5C(uint64_t a1)
{
  *(a1 + 8) = sub_1001695B4(&qword_1002F9598, type metadata accessor for AADeviceRecord, &protocol conformance descriptor for AADeviceRecord);
  result = sub_1001695B4(&qword_1002F95A0, type metadata accessor for AADeviceRecord, &protocol conformance descriptor for AADeviceRecord);
  *(a1 + 16) = result;
  return result;
}

void sub_100168EE8(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1001328D8(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_100169030()
{
  result = qword_1002F95E8;
  if (!qword_1002F95E8)
  {
    result = swift_getWitnessTable(&unk_10022969C, &type metadata for AADeviceRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F95E8);
  }

  return result;
}

unint64_t sub_100169088()
{
  result = qword_1002F95F0;
  if (!qword_1002F95F0)
  {
    result = swift_getWitnessTable(&unk_10022960C, &type metadata for AADeviceRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F95F0);
  }

  return result;
}

unint64_t sub_1001690E0()
{
  result = qword_1002F95F8;
  if (!qword_1002F95F8)
  {
    result = swift_getWitnessTable(&unk_100229634, &type metadata for AADeviceRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F95F8);
  }

  return result;
}

uint64_t sub_100169134(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100267080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010026E210 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010026E230 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010026E250 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010026E270 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010026E290 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010026E2B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7473654764616568 && a2 == 0xEF65646F4D657275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000019 && 0x800000010026E2E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010026E300 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002672B0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

unint64_t sub_100169560()
{
  result = qword_1002F9610;
  if (!qword_1002F9610)
  {
    result = swift_getWitnessTable(&unk_10022979C, &type metadata for AADeviceRecord.AADeviceRecordError, v0, v1);
    atomic_store(result, &qword_1002F9610);
  }

  return result;
}

uint64_t sub_1001695B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100169610()
{
  result = qword_1002F9620;
  if (!qword_1002F9620)
  {
    result = swift_getWitnessTable(&unk_100229774, &type metadata for AADeviceRecord.AADeviceRecordError, v0, v1);
    atomic_store(result, &qword_1002F9620);
  }

  return result;
}

uint64_t sub_100169664(uint64_t a1, uint64_t a2)
{
  v5 = objc_autoreleasePoolPush();
  sub_1001698E0(v2, a1, a2, &v7);
  objc_autoreleasePoolPop(v5);
  return v7;
}

id sub_10016971C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), void (*a4)(uint64_t *))
{
  v7 = objc_autoreleasePoolPush();
  v8 = sub_100169D38(*v4, *(v4 + 8));
  if (!v8)
  {
    v8 = a3(v4);
  }

  v11 = v8;
  v9 = v8;
  a4(&v11);
  objc_autoreleasePoolPop(v7);
  return v9;
}

Class sub_1001697BC(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*(v1 + *(a1 + 20)), *(v1 + *(a1 + 20) + 8));
  if (!isa)
  {
    isa = sub_1000F8100().super.isa;
  }

  v7 = isa;
  v5 = isa;
  sub_10011A7B0(&v7);
  objc_autoreleasePoolPop(v3);
  return v5;
}

id sub_100169858(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(uint64_t *))
{
  v8 = objc_autoreleasePoolPush();
  v9 = sub_100169D38(*(v4 + *(a1 + 24)), *(v4 + *(a1 + 24) + 8));
  if (!v9)
  {
    v9 = a3(v4);
  }

  v12 = v9;
  v10 = v9;
  a4(&v12);
  objc_autoreleasePoolPop(v8);
  return v10;
}

uint64_t sub_1001698E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = (*(a3 + 32))(a2, a3);
  v10 = v9;
  isa = sub_100169D38(v8, v9);
  sub_1000EF870(v8, v10);
  if (!isa)
  {
    isa = sub_1001699AC(a1, a2, a3).super.isa;
  }

  v13 = isa;
  result = (*(a3 + 64))(&v13, a2, a3);
  *a4 = isa;
  return result;
}

CKRecord sub_1001699AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
  (*(*(a3 + 8) + 32))(a2);
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v12 = (*(a3 + 24))(a2, a3);
  v14 = v13;
  v15._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15._object = v16;
  v17._countAndFlagsBits = v12;
  v17._object = v14;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v17, v15).super.isa;
  v19._countAndFlagsBits = v9;
  v19._object = v11;
  v20.super.isa = CKRecordID.init(recordName:zoneID:)(v19, isa).super.isa;
  v21 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v22 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100226100;
  v24 = *(a3 + 16);
  v25 = v24(a2, a3);
  v27 = v26;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_1000EE954();
  *(v23 + 32) = v25;
  *(v23 + 40) = v27;
  os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Failed to unarchive record -- creating new %@ record", 52, 2, v23);

  sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  v28._countAndFlagsBits = v24(a2, a3);
  return CKRecord.init(recordType:recordID:)(v28, v20);
}

id sub_100169C78()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

id sub_100169D38(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return 0;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
LABEL_8:
    if (v3 != v4)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v2)
  {
    v3 = a1;
    v4 = a1 >> 32;
    goto LABEL_8;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    return 0;
  }

LABEL_9:
  v7 = objc_allocWithZone(NSKeyedUnarchiver);
  sub_1000EE9F4(a1, a2);
  v8 = sub_100169C78();
  sub_1000EF870(a1, a2);
  v10 = [objc_allocWithZone(CKRecord) initWithCoder:v8];
  if (!v10)
  {
    v12 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v13 = v12;
      swift_once();
      v12 = v13;
    }

    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_100300E38, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

    return 0;
  }

  v11 = v10;

  return v11;
}

id sub_100169F94()
{
  result = [objc_allocWithZone(type metadata accessor for CloudPushService()) init];
  qword_100300E00 = result;
  return result;
}

id sub_10016A020()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushDelegates] = _swiftEmptyDictionarySingleton;
  v16 = OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushServiceQueue;
  v15[1] = sub_100115C10();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10016D834(&unk_1002F93A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000EE870(&qword_1002F9710, &unk_100227B80);
  sub_100115260(&qword_1002F93B0, &qword_1002F9710, &unk_100227B80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v16] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = &v0[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushEnvironment];
  *v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8[1] = v9;
  *&v1[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_apsConnection] = 0;
  *&v1[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_buddyStateWatcher] = 0;
  *&v1[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_firstUnlockStateWatcher] = 0;
  v10 = type metadata accessor for CloudPushService();
  v17.receiver = v1;
  v17.super_class = v10;
  v11 = objc_msgSendSuper2(&v17, "init");
  v12 = static os_log_type_t.default.getter();
  if (qword_1002F7AD0 != -1)
  {
    v14 = v12;
    swift_once();
    v12 = v14;
  }

  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_100300E20, "APS Wrapper init, add needed delegates before we start...", 57, 2, _swiftEmptyArrayStorage);

  return v11;
}

void sub_10016A394()
{
  v1 = objc_opt_self();
  if (![v1 isBuddyComplete])
  {
    v14 = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      v23 = v14;
      swift_once();
      v14 = v23;
    }

    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, qword_100300E28, "CloudPushService buddy is NOT done, wait...", 43, 2, _swiftEmptyArrayStorage);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = sub_10016D788;
    v31 = v15;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_1001742E0;
    v29 = &unk_1002BFF90;
    v16 = _Block_copy(&aBlock);

    v17 = [v1 addBuddyCompleteObserver:v16];
    _Block_release(v16);
    v18 = OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_buddyStateWatcher;
    goto LABEL_15;
  }

  v2 = [v1 isFirstUnlocked];
  v3 = static os_log_type_t.default.getter();
  if (!v2)
  {
    if (qword_1002F7AD8 != -1)
    {
      v25 = v3;
      swift_once();
      v3 = v25;
    }

    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_100300E28, "CloudPushService cannot start, device needs to be first unlocked after boot", 75, 2, _swiftEmptyArrayStorage);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = sub_10016D790;
    v31 = v19;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_1001742E0;
    v29 = &unk_1002BFFB8;
    v20 = _Block_copy(&aBlock);

    v17 = [v1 addFirstUnlockObserver:v20];
    _Block_release(v20);
    v18 = OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_firstUnlockStateWatcher;
LABEL_15:
    v21 = *&v0[v18];
    *&v0[v18] = v17;

    return;
  }

  if (qword_1002F7AD0 != -1)
  {
    v24 = v3;
    swift_once();
    v3 = v24;
  }

  v4 = qword_100300E20;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_100300E20, "Start APS connection", 20, 2, _swiftEmptyArrayStorage);
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = v0;
    v11._countAndFlagsBits = v7;
    v11._object = v9;
    String.append(_:)(v11);

    v12 = objc_allocWithZone(type metadata accessor for BTUserTransaction());
    v13 = sub_100102B48("com.apple.bluetooth.user.setupAPS", 33, 2);
    sub_10016AA9C(v13, v10, 0xD000000000000018, 0x800000010026E7C0, 0xD00000000000001BLL, 0x800000010026E7A0);
  }

  else
  {
    v22 = static os_log_type_t.error.getter();

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v4, "Unable to get bundleIdentifier!", 31, 2, _swiftEmptyArrayStorage);
  }
}

void sub_10016A840(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v2 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100226100;
  v4 = [objc_opt_self() isBuddyComplete];
  *(v3 + 56) = &type metadata for Bool;
  *(v3 + 64) = &protocol witness table for Bool;
  *(v3 + 32) = v4;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "CloudPushService buddy done callback: %i", v9);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10016A394();
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = *&v7[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_buddyStateWatcher];
    *&v7[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_buddyStateWatcher] = 0;
  }
}

void sub_10016A9A4(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    v6 = v1;
    swift_once();
    v1 = v6;
  }

  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, qword_100300E28, "Setting up CloudPushService after device first unlocked after boot", 66, 2, _swiftEmptyArrayStorage);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10016A394();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_firstUnlockStateWatcher];
    *&v4[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_firstUnlockStateWatcher] = 0;
  }
}

uint64_t sub_10016AA9C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v27 = *(v14 - 8);
  v28 = v14;
  __chkstk_darwin(v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100115C10();
  v26 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v18 = v25;
  v17[2] = a2;
  v17[3] = v18;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = a1;
  aBlock[4] = sub_10016D798;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002C0008;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  v21 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10016D834(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v26;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v29 + 8))(v13, v11);
  return (*(v27 + 8))(v16, v28);
}

uint64_t sub_10016ADA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushServiceQueue);
  v9 = objc_allocWithZone(APSConnection);

  v10 = v8;
  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();
  v13 = [v9 initWithEnvironmentName:v11 namedDelegatePort:v12 queue:v10];

  v14 = OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_apsConnection;
  v15 = *(a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_apsConnection);
  *(a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_apsConnection) = v13;
  v16 = v13;

  if (v16)
  {
    sub_1000EE870(&unk_1002F9E70, qword_100229840);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100226100;
    *(v17 + 32) = a4;
    *(v17 + 40) = a5;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v16 _setEnabledTopics:isa];
  }

  v19 = *(a1 + v14);
  if (v19)
  {
    v20 = v19;
    v21 = String._bridgeToObjectiveC()();
    [v20 requestTokenForTopic:v21 identifier:0];

    v22 = *(a1 + v14);
    if (v22)
    {
      [v22 setDelegate:a1];
    }
  }

  v23 = static os_log_type_t.default.getter();
  if (qword_1002F7AD0 != -1)
  {
    v26 = v23;
    swift_once();
    v23 = v26;
  }

  v24 = qword_100300E20;

  return os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Set up APS connection", 21, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_10016B030(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushServiceQueue);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100163048;
  *(v6 + 24) = v5;
  v10[4] = sub_1001156A8;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100174328;
  v10[3] = &unk_1002BFF68;
  v7 = _Block_copy(v10);
  swift_unknownObjectRetain();

  v8 = v3;

  dispatch_sync(v8, v7);

  _Block_release(v7);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

void sub_10016B1BC(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    v3 = static os_log_type_t.default.getter();
    if (qword_1002F7AD0 != -1)
    {
      swift_once();
    }

    v4 = qword_100300E20;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100226C80;
    swift_unknownObjectRetain();
    sub_1000EE870(&unk_1002F96E8, &qword_100229830);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    v9 = sub_1000EE954();
    *(v5 + 64) = v9;
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    v10 = [a1 cloudContainerIdentifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v9;
    *(v5 + 72) = v11;
    *(v5 + 80) = v13;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Add push delegate: %@ using key: %@", 35, 2, v5);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = [a1 cloudContainerIdentifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushDelegates;
      swift_beginAccess();
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *&v15[v20];
      *&v15[v20] = 0x8000000000000000;
      sub_1000F958C(a1, v17, v19, isUniquelyReferenced_nonNull_native);

      *&v15[v20] = v22;
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10016B424(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushServiceQueue);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1001630C0;
  *(v6 + 24) = v5;
  v10[4] = sub_1000F2B98;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100174328;
  v10[3] = &unk_1002BFEF0;
  v7 = _Block_copy(v10);
  swift_unknownObjectRetain();

  v8 = v3;

  dispatch_sync(v8, v7);

  _Block_release(v7);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

void *sub_10016B5B0(uint64_t a1, uint64_t a2)
{
  v3 = static os_log_type_t.default.getter();
  if (qword_1002F7AD0 != -1)
  {
    swift_once();
  }

  v4 = qword_100300E20;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100226100;
  swift_unknownObjectRetain();
  sub_1000EE870(&qword_1002F96F8, &qword_100229838);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000EE954();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Remove push delegate: %@", 24, 2, v5);

  if (a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = result;
      v11 = [swift_unknownObjectRetain() cloudContainerIdentifier];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      swift_beginAccess();
      sub_10015C5A8(v12, v14);
      swift_endAccess();

      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10016B7A4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_10016B8D4(void *a1)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  [a1 didReceiveWithToken:isa forTopic:v3 identifier:v4];
}

uint64_t sub_10016BB38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v18 = *(v9 - 8);
  v19 = v9;
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushServiceQueue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_10016C660;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BFDD8;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10016D834(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v8, v6);
  (*(v18 + 8))(v11, v19);
}

void sub_10016BE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushDelegates;
    swift_beginAccess();
    v8 = *(*&v6[v7] + 16);
    v9 = static os_log_type_t.default.getter();
    if (v8)
    {
      v10 = v9;
      if (qword_1002F7AD0 != -1)
      {
        swift_once();
      }

      v11 = qword_100300E20;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100226C80;
      v13 = *(*&v6[v7] + 16);
      *(v12 + 56) = &type metadata for Int;
      *(v12 + 64) = &protocol witness table for Int;
      *(v12 + 32) = v13;

      sub_1000EE870(&unk_1002F96E8, &qword_100229830);
      v14 = Dictionary.description.getter();
      v16 = v15;

      *(v12 + 96) = &type metadata for String;
      *(v12 + 104) = sub_1000EE954();
      *(v12 + 72) = v14;
      *(v12 + 80) = v16;
      os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "invokeDelegates[%i] : %@", 24, 2, v12);

      swift_unknownObjectWeakInit();
      v17 = objc_allocWithZone(type metadata accessor for BTUserTransaction());
      v18 = sub_100102B48("com.apple.bluetooth.user.services.aps.processPush", 49, 2);
      sub_10016D360(v20, a2, a3);

      swift_unknownObjectWeakDestroy();
    }

    else
    {
      if (qword_1002F7AD0 != -1)
      {
        v19 = v9;
        swift_once();
        v9 = v19;
      }

      os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, qword_100300E20, "No delegates to invoke", 22, 2, _swiftEmptyArrayStorage);
    }
  }
}

char *sub_10016C0C0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v40 = a2;
  v41 = a3;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v5 = *(v35 - 8);
  __chkstk_darwin(v35);
  v43 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushDelegates;
    v9 = result;
    swift_beginAccess();
    v10 = *&v9[v8];

    v11 = v10 + 64;
    v12 = 1 << *(v10 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v10 + 64);
    v15 = (v12 + 63) >> 6;
    v34 = v46;
    v33 = (v3 + 8);
    v32 = (v5 + 8);
    v42 = v10;

    v16 = 0;
    if (v14)
    {
      goto LABEL_11;
    }

LABEL_7:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        while (1)
        {
          v18 = __clz(__rbit64(v14));
          v14 &= v14 - 1;
          v19 = v18 | (v17 << 6);
          v20 = (*(v42 + 48) + 16 * v19);
          v21 = *v20;
          v22 = v20[1];
          v23 = *(*(v42 + 56) + 8 * v19);

          v24 = [swift_unknownObjectRetain() pushDelegateQueue];
          if (v24)
          {
            v39 = v24;
            v25 = swift_allocObject();
            v26 = v41;
            v25[2] = v40;
            v25[3] = v26;
            v25[4] = v21;
            v25[5] = v22;
            v25[6] = v23;
            v46[2] = sub_10016D718;
            v46[3] = v25;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            v46[0] = sub_1001742E0;
            v46[1] = &unk_1002BFE78;
            v27 = _Block_copy(aBlock);

            swift_unknownObjectRetain();

            static DispatchQoS.unspecified.getter();
            v44 = _swiftEmptyArrayStorage;
            sub_10016D834(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            v38 = v22;
            sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
            sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
            v28 = v36;
            v29 = v37;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v30 = v43;
            v31 = v39;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v27);
            swift_unknownObjectRelease();

            (*v33)(v28, v29);
            (*v32)(v30, v35);

            v16 = v17;
            if (!v14)
            {
              goto LABEL_7;
            }
          }

          else
          {
            v40(v23);
            swift_unknownObjectRelease();

            v16 = v17;
            if (!v14)
            {
              goto LABEL_7;
            }
          }

LABEL_11:
          v17 = v16;
        }
      }
    }

    __break(1u);
  }

  return result;
}

id sub_10016C578()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudPushService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10016C66C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10016C684(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = static os_log_type_t.error.getter();
    if (qword_1002F7AD0 != -1)
    {
      v12 = v2;
      swift_once();
      v2 = v12;
    }

    v3 = qword_100300E20;

    return os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Invalid Public Token", 20, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    sub_1000EE9F4(a1, a2);
    if (IsAppleInternalBuild())
    {
      v7 = static os_log_type_t.default.getter();
      if (qword_1002F7AD0 != -1)
      {
        swift_once();
      }

      v8 = qword_100300E20;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_100226100;
      v10 = Data.base64EncodedString(options:)(0);
      *(v9 + 56) = &type metadata for String;
      *(v9 + 64) = sub_1000EE954();
      *(v9 + 32) = v10;
      os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "didReceivePublicToken: %@", 25, 2, v9);
    }

    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    sub_1000EE9F4(a1, a2);
    sub_10016BB38(sub_10016D7D8, v11);

    return sub_1000FF5CC(a1, a2);
  }
}

uint64_t sub_10016C89C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15 || a4 == 0 || a6 == 0)
  {
    v8 = static os_log_type_t.error.getter();
    if (qword_1002F7AD0 != -1)
    {
      v23 = v8;
      swift_once();
      v8 = v23;
    }

    v9 = qword_100300E20;

    return os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Invalid APS data arguments", 26, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    sub_1000FF5B8(a1, a2);

    if (IsAppleInternalBuild())
    {
      v18 = static os_log_type_t.default.getter();
      if (qword_1002F7AD0 != -1)
      {
        swift_once();
      }

      v24 = qword_100300E20;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1002289A0;
      v20 = Data.base64EncodedString(options:)(0);
      *(v19 + 56) = &type metadata for String;
      v21 = sub_1000EE954();
      *(v19 + 32) = v20;
      *(v19 + 96) = &type metadata for String;
      *(v19 + 104) = v21;
      *(v19 + 64) = v21;
      *(v19 + 72) = a3;
      *(v19 + 80) = a4;
      *(v19 + 136) = &type metadata for String;
      *(v19 + 144) = v21;
      *(v19 + 112) = a5;
      *(v19 + 120) = a6;

      os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v24, "didReceiveToken: %@, for topic: %@, identifier: %@", 50, 2, v19);
    }

    v22 = swift_allocObject();
    v22[2] = a1;
    v22[3] = a2;
    v22[4] = a3;
    v22[5] = a4;
    v22[6] = a5;
    v22[7] = a6;
    sub_1000EE9F4(a1, a2);
    sub_10016BB38(sub_10016D7C8, v22);

    return sub_1000FF5CC(a1, a2);
  }
}

void sub_10016CB2C(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v67 = v9;
    v12 = a1;
    v13 = [v12 userInfo];
    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = v13;
    v69 = v1;
    v70 = v12;
    v62 = v11;
    v63 = v8;
    v64 = v6;
    v65 = v4;
    v66 = v3;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v16 = [objc_opt_self() notificationFromRemoteNotificationDictionary:isa];

    v17 = static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v18 = qword_100300E28;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v19 = swift_allocObject();
    v68 = xmmword_100226100;
    *(v19 + 16) = xmmword_100226100;
    aBlock[0] = v16;
    v20 = v16;
    sub_1000EE870(&qword_1002F93D0, &qword_100229320);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    *(v19 + 56) = &type metadata for String;
    v24 = sub_1000EE954();
    *(v19 + 64) = v24;
    *(v19 + 32) = v21;
    *(v19 + 40) = v23;
    v25 = v20;
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "payload received: %@", 20, 2, v19);

    if (v20 && (v26 = [v20 containerIdentifier]) != 0)
    {
      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = v69;
      if (v28)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v28 = 0;
      v30 = 0xE000000000000000;
      v31 = v69;
    }

    if (v30 == 0xE000000000000000)
    {
LABEL_24:

      v52 = static os_log_type_t.default.getter();
      if (qword_1002F7AD0 != -1)
      {
        swift_once();
      }

      v53 = qword_100300E20;
      v54 = swift_allocObject();
      *(v54 + 16) = v68;
      aBlock[0] = v16;
      v55 = Optional.debugDescription.getter();
      *(v54 + 56) = &type metadata for String;
      *(v54 + 64) = v24;
      *(v54 + 32) = v55;
      *(v54 + 40) = v56;
      os_log(_:dso:log:_:_:)(v52, &_mh_execute_header, v53, "didReceive: message: %@", 23, 2, v54);

      v57 = swift_allocObject();
      v58 = v70;
      *(v57 + 16) = v70;
      v59 = v58;
      sub_10016BB38(sub_10016D7A8, v57);

      return;
    }

LABEL_11:
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v32 = OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushDelegates;
      swift_beginAccess();
      v33 = *&v31[v32];
      if (*(v33 + 16))
      {

        v34 = sub_1000F8C5C(v28, v30);
        if (v35)
        {
          v69 = v20;
          v36 = *(*(v33 + 56) + 8 * v34);
          swift_unknownObjectRetain();

          LODWORD(v68) = static os_log_type_t.default.getter();
          if (qword_1002F7AD0 != -1)
          {
            swift_once();
          }

          v37 = qword_100300E20;
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_100226C80;
          *(v38 + 56) = &type metadata for String;
          *(v38 + 64) = v24;
          *(v38 + 32) = v28;
          *(v38 + 40) = v30;
          aBlock[0] = v16;
          v39 = Optional.debugDescription.getter();
          *(v38 + 96) = &type metadata for String;
          *(v38 + 104) = v24;
          *(v38 + 72) = v39;
          *(v38 + 80) = v40;
          os_log(_:dso:log:_:_:)(v68, &_mh_execute_header, v37, "didReceive: message for container %@", 36, 2, v38);

          v41 = [v36 pushDelegateQueue];
          if (v41)
          {
            v42 = v41;
            v43 = swift_allocObject();
            v44 = v70;
            *(v43 + 16) = v36;
            *(v43 + 24) = v44;
            aBlock[4] = sub_10016D7B8;
            aBlock[5] = v43;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1001742E0;
            aBlock[3] = &unk_1002C0080;
            v45 = _Block_copy(aBlock);
            v46 = v44;
            swift_unknownObjectRetain();
            v47 = v62;
            static DispatchQoS.unspecified.getter();
            v71 = _swiftEmptyArrayStorage;
            sub_10016D834(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
            sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
            v48 = v64;
            v49 = v66;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v45);

            swift_unknownObjectRelease();
            (*(v65 + 8))(v48, v49);
            (*(v63 + 8))(v47, v67);
          }

          else
          {
            v60 = v70;
            [v36 didReceiveWithMessage:v70];
            swift_unknownObjectRelease();
          }

          return;
        }
      }
    }

    goto LABEL_24;
  }

  v50 = static os_log_type_t.error.getter();
  if (qword_1002F7AD0 != -1)
  {
    v61 = v50;
    swift_once();
    v50 = v61;
  }

  v51 = qword_100300E20;

  os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v51, "Invalid message Token", 21, 2, _swiftEmptyArrayStorage);
}

char *sub_10016D360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v25 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = v3;
    v13 = *&result[OBJC_IVAR____TtC15audioaccessoryd16CloudPushService_pushServiceQueue];
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a2;
    v21 = v14;
    v15[4] = a3;
    aBlock[4] = sub_10016D70C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002BFE28;
    v16 = _Block_copy(aBlock);
    v20 = v13;

    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_10016D834(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v17 = v24;
    v19 = v9;
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v20;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v17 + 8))(v8, v6);
    (*(v25 + 8))(v11, v19);
  }

  return result;
}

uint64_t sub_10016D6CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10016D748()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10016D7D8(void *a1)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a1 didReceiveWithPublicToken:isa];
}

uint64_t sub_10016D834(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10016D8BC(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = &type metadata for AudioAccessoryFeatures;
  v6 = sub_1000F1874();
  v45 = v6;
  v7 = isFeatureEnabled(_:)();
  result = sub_1000EF824(&v43);
  if (v7)
  {
    v9._object = 0x8000000100267570;
    v9._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 0xD00000000000002BLL;
    v10._object = 0x80000001002675A0;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 0xD00000000000002ELL;
    v11._object = 0x800000010026EB70;
    String.append(_:)(v11);
    v12._object = 0x8000000100267600;
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v12);
    v13 = static os_log_type_t.default.getter();
    if (qword_1002F7B00 != -1)
    {
      v38 = v13;
      swift_once();
      v13 = v38;
    }

    v14 = _swiftEmptyArrayStorage;
    v42 = qword_100300E50;
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_100300E50, "-------------AAProxCards Records-------------", 45, 2, _swiftEmptyArrayStorage);
    sub_100103934();
    v44 = &type metadata for AudioAccessoryFeatures;
    v45 = v6;
    v15 = isFeatureEnabled(_:)();
    sub_1000EF824(&v43);
    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }

    if (![objc_opt_self() isFirstUnlocked])
    {
      v18 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        v3 = v18;
        swift_once();
        v18 = v3;
      }

      os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, qword_100300E38, "aaProxCardsRecords call failed because device is in beforeFirstUnlock state", 75, 2, _swiftEmptyArrayStorage);
      goto LABEL_11;
    }

    sub_100192340();
    if (qword_1002F79D0 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v16 = sub_1000EE91C(v2, qword_100300B10);
      (*(v3 + 16))(v5, v16, v2);
      v14 = sub_10018E0FC(v5);

      v17 = *(v3 + 8);
      v3 += 8;
      v17(v5, v2);
LABEL_11:

      if (v14 >> 62)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
        if (!v19)
        {
        }
      }

      else
      {
        v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
        }
      }

      if (v19 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_23:
      swift_once();
    }

    v20 = 0;
    v41 = v14 & 0xC000000000000001;
    v40 = xmmword_100226100;
    v39[1] = a1;
    v21 = v14;
    do
    {
      if (v41)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(v14 + 8 * v20 + 32);
      }

      v23 = v22;
      ++v20;
      v24 = static os_log_type_t.default.getter();
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v25 = swift_allocObject();
      *(v25 + 16) = v40;
      v26 = v23;
      v27 = [v26 description];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_1000EE954();
      *(v25 + 32) = v28;
      *(v25 + 40) = v30;
      os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v42, "%@", 2, 2, v25);

      v31 = v26;
      v32 = [v31 description];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v43._countAndFlagsBits = 0xA2D2D2D2D2D0ALL;
      v43._object = 0xE700000000000000;
      v36._countAndFlagsBits = v33;
      v36._object = v35;
      String.append(_:)(v36);

      v37._countAndFlagsBits = 10;
      v37._object = 0xE100000000000000;
      String.append(_:)(v37);

      String.append(_:)(v43);

      v14 = v21;
    }

    while (v19 != v20);
  }

  return result;
}

void sub_10016DDD8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v11 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100226100;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_1000EE954();
    *(v12 + 32) = a4;
    *(v12 + 40) = a5;

    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "fetchAAProxCardsRecord: %@", 26, 2, v12);

    v13 = sub_10016DF44(a4, a5);
    a2();
  }

  else
  {
    a2();
  }
}

id sub_10016DF44(uint64_t a1, uint64_t a2)
{
  v19[3] = &type metadata for AudioAccessoryFeatures;
  v19[4] = sub_1000F1874();
  v4 = isFeatureEnabled(_:)();
  sub_1000EF824(v19);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_100103934();
  v5 = sub_1001B2908(a1, a2);

  if (!v5)
  {
    v16 = static os_log_type_t.debug.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v17 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100226100;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_1000EE954();
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;

    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "AAProxCardsRecord not found for  - %@", 37, 2, v18);

    return 0;
  }

  v6 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v7 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100226100;
  v9 = v5;
  v10 = [v9 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_1000EE954();
  *(v8 + 32) = v11;
  *(v8 + 40) = v13;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Found AAProxCardsRecord: %@", 27, 2, v8);

  v14 = sub_10016EA98();

  return v14;
}

uint64_t sub_10016E1B8(uint64_t a1, uint64_t a2)
{
  v16 = &type metadata for AudioAccessoryFeatures;
  v17 = sub_1000F1874();
  v5 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v19 = 0;
  v6 = *&v2[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = &v19;
  v7[5] = v2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10016FC08;
  *(v8 + 24) = v7;
  v17 = sub_1000F2B98;
  v18 = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100174328;
  v16 = &unk_1002C0260;
  v9 = _Block_copy(aBlock);
  v10 = v6;

  v11 = v2;

  dispatch_sync(v10, v9);

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v14 = v19;

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_10016E37C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v7 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100226100;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_1000EE954();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "fetchAAProxCardsRecordSync: %@", 30, 2, v8);

  v9 = sub_10016DF44(a1, a2);
  v10 = *a3;
  *a3 = v9;

  return _objc_release_x1(v9, v10);
}

uint64_t sub_10016E518(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v12 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100226100;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000EE954();
    *(v13 + 32) = a4;
    *(v13 + 40) = a5;

    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "CloudSync: remove AAProxCardsRecord with BT Address: %@", 55, 2, v13);

    sub_100103934();
    sub_1001A55A4(a4, a5, 0xD000000000000011, 0x800000010026EAC0, a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v15 = 0;
    a2();
  }
}

uint64_t sub_10016E6E4(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_10016E788(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    UUID.init()();
    v12 = objc_allocWithZone(type metadata accessor for AAProxCardsRecord(0));
    v13 = a4;
    v16 = sub_1000F4D10(v9, 0, 0xC000000000000000, v13);
    v17 = static os_log_type_t.default.getter();
    v26 = v17;
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v18 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100226100;
    v20 = v13;
    v21 = [v20 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_1000EE954();
    *(v19 + 32) = v22;
    *(v19 + 40) = v24;
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v18, "CloudSync: updateAAProxCardsInfo: %@", 36, 2, v19);

    sub_100103934();
    sub_1001B204C(v16, a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v14 = 0;
    a2();
  }
}

id sub_10016EA98()
{
  v1 = v0;
  v2 = objc_allocWithZone(AAProxCardsInfo);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithBluetoothAddress:v3];

  [v4 setFitEducationNotificationsShownCount:*(v1 + OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_fitEducationNotificationsShownCount)];
  v5 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_proxCardVersions;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_1000F8C5C(0x62756F4465736163, 0xED0000706154656CLL);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      if (v9)
      {
        [v4 setCaseDoubleTapVersion:v9];
      }
    }

    else
    {
    }
  }

  v10 = *(v1 + v5);
  if (*(v10 + 16))
  {

    v11 = sub_1000F8C5C(0xD000000000000011, 0x80000001002670A0);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      if (v13)
      {
        [v4 setChargingRemindersVersion:v13];
      }
    }

    else
    {
    }
  }

  v14 = *(v1 + v5);
  if (*(v14 + 16))
  {

    v15 = sub_1000F8C5C(0xD00000000000001ELL, 0x80000001002670C0);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);

      if (v17)
      {
        [v4 setDynamicEndOfChargeNotificationVersion:v17];
      }
    }

    else
    {
    }
  }

  v18 = *(v1 + v5);
  if (*(v18 + 16))
  {

    v19 = sub_1000F8C5C(0x7473654764616568, 0xEC00000073657275);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 8 * v19);

      if (v21)
      {
        [v4 setHeadGesturesVersion:v21];
      }
    }

    else
    {
    }
  }

  v22 = *(v1 + v5);
  if (*(v22 + 16))
  {

    v23 = sub_1000F8C5C(0x41676E6972616568, 0xED00007473697373);
    if (v24)
    {
      v25 = *(*(v22 + 56) + 8 * v23);

      if (v25)
      {
        [v4 setHearingAssistVersion:v25];
      }
    }

    else
    {
    }
  }

  v26 = *(v1 + v5);
  if (*(v26 + 16))
  {

    v27 = sub_1000F8C5C(0x54676E6972616568, 0xEB00000000747365);
    if (v28)
    {
      v29 = *(*(v26 + 56) + 8 * v27);

      if (v29)
      {
        [v4 setHearingTestVersion:v29];
      }
    }

    else
    {
    }
  }

  v30 = *(v1 + v5);
  if (*(v30 + 16))
  {

    v31 = sub_1000F8C5C(0x7461527472616568, 0xE900000000000065);
    if (v32)
    {
      v33 = *(*(v30 + 56) + 8 * v31);

      if (v33)
      {
        [v4 setHeartRateVersion:v33];
      }
    }

    else
    {
    }
  }

  v34 = *(v1 + v5);
  if (*(v34 + 16))
  {

    v35 = sub_1000F8C5C(0xD000000000000011, 0x8000000100267110);
    if (v36)
    {
      v37 = *(*(v34 + 56) + 8 * v35);

      if (v37)
      {
        [v4 setNewChargingStatusVersion:v37];
      }
    }

    else
    {
    }
  }

  v38 = *(v1 + v5);
  if (*(v38 + 16))
  {

    v39 = sub_1000F8C5C(0xD000000000000011, 0x8000000100267130);
    if (v40)
    {
      v41 = *(*(v38 + 56) + 8 * v39);

      if (v41)
      {
        [v4 setPauseMediaOnSleepVersion:v41];
      }
    }

    else
    {
    }
  }

  v42 = *(v1 + v5);
  if (*(v42 + 16))
  {

    v43 = sub_1000F8C5C(0xD000000000000012, 0x8000000100267150);
    if (v44)
    {
      v45 = *(*(v42 + 56) + 8 * v43);

      if (v45)
      {
        [v4 setPersonalTranslatorVersion:v45];
      }
    }

    else
    {
    }
  }

  v46 = *(v1 + v5);
  if (*(v46 + 16))
  {

    v47 = sub_1000F8C5C(0xD000000000000013, 0x8000000100267170);
    if (v48)
    {
      v49 = *(*(v46 + 56) + 8 * v47);

      if (v49)
      {
        [v4 setRemoteCameraControlVersion:v49];
      }
    }

    else
    {
    }
  }

  v50 = *(v1 + v5);
  if (*(v50 + 16))
  {

    v51 = sub_1000F8C5C(0x6F69647541627375, 0xE800000000000000);
    if (v52)
    {
      v53 = *(*(v50 + 56) + 8 * v51);

      if (v53)
      {
        [v4 setUsbAudioVersion:v53];
      }
    }

    else
    {
    }
  }

  v54 = *(v1 + v5);
  if (*(v54 + 16))
  {

    v55 = sub_1000F8C5C(0x6175516563696F76, 0xEC0000007974696CLL);
    if (v56)
    {
      v57 = *(*(v54 + 56) + 8 * v55);

      if (v57)
      {
        [v4 setVoiceQualityVersion:v57];
      }
    }

    else
    {
    }
  }

  v58 = *(v1 + v5);
  if (*(v58 + 16))
  {

    v59 = sub_1000F8C5C(0x77654E7374616877, 0xE800000000000000);
    if (v60)
    {
      v61 = *(*(v58 + 56) + 8 * v59);

      if (v61)
      {
        [v4 setWhatsNewVersion:v61];
      }
    }

    else
    {
    }
  }

  return v4;
}

uint64_t sub_10016F124(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v22 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v10 = *(v23 - 8);
  __chkstk_darwin(v23);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  v27 = &type metadata for AudioAccessoryFeatures;
  v28 = sub_1000F1874();
  _Block_copy(a4);
  v14 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if (v14)
  {
    v15 = *(a3 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = sub_1000F2BA0;
    v18 = v22;
    v17[4] = v13;
    v17[5] = v18;
    v17[6] = a2;
    v28 = sub_10016FC14;
    v29 = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    v27 = &unk_1002C02D8;
    v19 = _Block_copy(aBlock);
    v20 = v15;

    static DispatchQoS.unspecified.getter();
    v25 = _swiftEmptyArrayStorage;
    sub_1000F2A70();
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000F2AC8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v24 + 8))(v9, v7);
    (*(v10 + 8))(v12, v23);
  }

  else
  {
    a4[2](a4, 0);
  }
}

uint64_t sub_10016F48C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v24 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v10 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  v29 = &type metadata for AudioAccessoryFeatures;
  v30 = sub_1000F1874();
  _Block_copy(a4);
  v14 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if (v14)
  {
    v15 = *(a3 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = sub_1000F2C44;
    v18 = v24;
    v17[4] = v13;
    v17[5] = v18;
    v17[6] = a2;
    v30 = sub_10016FBF0;
    v31 = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    v29 = &unk_1002C01E8;
    v19 = _Block_copy(aBlock);
    v20 = v15;

    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_1000F2A70();
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000F2AC8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v26 + 8))(v9, v7);
    (*(v10 + 8))(v12, v25);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v21 = 4;
    v22 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v22);
  }
}

uint64_t sub_10016F830(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v25 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v26 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  v29 = &type metadata for AudioAccessoryFeatures;
  v30 = sub_1000F1874();
  _Block_copy(a3);
  v13 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if (v13)
  {
    v24 = v9;
    v14 = *(a2 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = sub_1000F29F0;
    v17 = v25;
    v16[4] = v12;
    v16[5] = v17;
    v30 = sub_10016FBCC;
    v31 = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    v29 = &unk_1002C0170;
    v18 = _Block_copy(aBlock);
    v19 = v14;

    v20 = v17;
    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_1000F2A70();
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000F2AC8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v6 + 8))(v8, v5);
    (*(v26 + 8))(v11, v24);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v21 = 4;
    v22 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v22);
  }
}

uint64_t sub_10016FBD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10016FC5C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_10016FCC0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6._object = 0x8000000100267570;
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD00000000000002BLL;
  v7._object = 0x80000001002675A0;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xD000000000000031;
  v8._object = 0x800000010026ED50;
  String.append(_:)(v8);
  v9._object = 0x8000000100267600;
  v9._countAndFlagsBits = 0xD00000000000002CLL;
  v38 = a1;
  String.append(_:)(v9);
  v10 = static os_log_type_t.default.getter();
  if (qword_1002F7B00 != -1)
  {
    v33 = v10;
    swift_once();
    v10 = v33;
  }

  v37 = qword_100300E50;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_100300E50, "-------------HMDevice Cloud Records-------------", 48, 2, _swiftEmptyArrayStorage);
  sub_100103934();
  if (![objc_opt_self() isFirstUnlocked])
  {
    v14 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v3 = v14;
      swift_once();
      v14 = v3;
    }

    v12 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, qword_100300E38, "hmDeviceCloudRecords call failed because device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);

    goto LABEL_9;
  }

  sub_100192340();
  if (qword_1002F7A60 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v11 = sub_1000EE91C(v2, qword_100300C40);
    (*(v3 + 16))(v5, v11, v2);
    v12 = sub_10018E124(v5);

    v13 = *(v3 + 8);
    v3 += 8;
    v13(v5, v2);
LABEL_9:
    if (v12 >> 62)
    {
      v2 = _CocoaArrayWrapper.endIndex.getter();
      if (!v2)
      {
      }
    }

    else
    {
      v2 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
      }
    }

    if (v2 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  v15 = 0;
  v36 = v12 & 0xC000000000000001;
  v35 = xmmword_100226100;
  v16 = v12;
  do
  {
    if (v36)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(v12 + 8 * v15 + 32);
    }

    v18 = v17;
    ++v15;
    v19 = static os_log_type_t.default.getter();
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v20 = swift_allocObject();
    *(v20 + 16) = v35;
    v21 = v18;
    v22 = [v21 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_1000EE954();
    *(v20 + 32) = v23;
    *(v20 + 40) = v25;
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v37, "%@", 2, 2, v20);

    v26 = v21;
    v27 = [v26 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v39._countAndFlagsBits = 0xA2D2D2D2D2D0ALL;
    v39._object = 0xE700000000000000;
    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    v32._countAndFlagsBits = 10;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);

    String.append(_:)(v39);

    v12 = v16;
  }

  while (v2 != v15);
}

uint64_t sub_1001701B0(uint64_t a1, SEL *a2)
{
  v4 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  if (v6 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v9 respondsToSelector:*a2])
      {
        type metadata accessor for HMDeviceCloudRecord(0);
        swift_unknownObjectRetain();
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v9 *a2];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_10017033C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v11 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100226100;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_1000EE954();
    *(v12 + 32) = a4;
    *(v12 + 40) = a5;

    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "fetchHMDeviceCloudRecord: %@", 28, 2, v12);

    v13 = sub_1001704A8(a4, a5);
    a2();
  }

  else
  {
    a2();
  }
}

id sub_1001704A8(uint64_t a1, uint64_t a2)
{
  sub_100103934();
  v4 = sub_1001B4250(a1, a2);

  if (v4)
  {
    v5 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v6 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100226100;
    v8 = v4;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_1000EE954();
    *(v7 + 32) = v10;
    *(v7 + 40) = v12;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Found HMDeviceCloudRecord: %@", 29, 2, v7);

    v13 = [v8 hmDeviceCloudRecordInfo];
  }

  else
  {
    v14 = static os_log_type_t.debug.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v15 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100226100;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1000EE954();
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;

    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "HMDeviceCloudRecord not found for  - %@", 39, 2, v16);

    return 0;
  }

  return v13;
}

uint64_t sub_1001707BC(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v5 = *&v2[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue];
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = &v15;
  v6[5] = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10017201C;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1000F2B98;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100174328;
  aBlock[3] = &unk_1002C0468;
  v8 = _Block_copy(aBlock);
  v9 = v5;

  v10 = v2;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v13 = v15;

    return v13;
  }

  return result;
}

uint64_t sub_10017094C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v7 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100226100;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_1000EE954();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "fetchHMDeviceCloudRecordSync: %@", 32, 2, v8);

  v9 = sub_1001704A8(a1, a2);
  v10 = *a3;
  *a3 = v9;

  return _objc_release_x1(v9, v10);
}

uint64_t sub_100170B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v26 = a3;
  v27 = a1;
  v28 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v13 = *(v31 - 8);
  __chkstk_darwin(v31);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v7 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v20 = v26;
  v19 = v27;
  v18[2] = v17;
  v18[3] = v20;
  v18[4] = a4;
  v18[5] = v19;
  v21 = v29;
  v18[6] = v28;
  aBlock[4] = v21;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = v30;
  v22 = _Block_copy(aBlock);
  v23 = v16;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_1000F2A70();
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000F2AC8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v31);
}

uint64_t sub_100170DE0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v12 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100226100;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000EE954();
    *(v13 + 32) = a4;
    *(v13 + 40) = a5;

    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "CloudSync: remove HMDeviceCloudRecord with BT Address: %@", 57, 2, v13);

    sub_100103934();
    sub_1001A55A4(a4, a5, 0xD000000000000013, 0x8000000100267B10, a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v15 = 0;
    a2();
  }
}

uint64_t sub_100171070(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v11 = *(v24 - 8);
  __chkstk_darwin(v24);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v17 = v23;
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a3;
  v16[5] = a1;
  aBlock[4] = sub_100171FE0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002C0378;
  v18 = _Block_copy(aBlock);
  v19 = v14;

  v20 = a1;
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1000F2A70();
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000F2AC8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v24);
}

uint64_t sub_100171348(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    UUID.init()();
    v12 = objc_allocWithZone(type metadata accessor for HMDeviceCloudRecord(0));
    v13 = a4;
    v16 = sub_10012BD48(v9, v13);
    v17 = static os_log_type_t.default.getter();
    v26 = v17;
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    v18 = qword_100300E30;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100226100;
    v20 = v13;
    v21 = [v20 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_1000EE954();
    *(v19 + 32) = v22;
    *(v19 + 40) = v24;
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v18, "CloudSync: update HMDeviceCloudRecordInfo: %@", 45, 2, v19);

    sub_100103934();
    sub_1001B3A08(v16, a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v14 = 0;
    a2();
  }
}

id sub_100171664()
{
  v1 = v0;
  v2 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v2 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v41 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = objc_allocWithZone(HMDeviceCloudRecordInfo);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 initWithBluetoothAddress:v15];

  [v16 setHaRegionStatus:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus)];
  [v16 setHaRegionStatusV2:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2)];
  [v16 setHpRegionStatus:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus)];
  [v16 setHpPPERegionStatus:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus)];
  [v16 setMediaAssistEnabled:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled)];
  [v16 setPmeMediaEnabled:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled)];
  [v16 setPmeVoiceEnabled:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled)];
  [v16 setSwipeGainEnabled:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled)];
  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft + 4) & 1) == 0)
  {
    v17 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft)];
    [v16 setBottomMicFaultCountLeft:v17];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight + 4) & 1) == 0)
  {
    v18 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight)];
    [v16 setBottomMicFaultCountRight:v18];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount + 4) & 1) == 0)
  {
    v19 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount)];
    [v16 setDiagnosticMeasurementsCount:v19];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft + 4) & 1) == 0)
  {
    v20 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft)];
    [v16 setFreqAccuracyFaultCountLeft:v20];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight + 4) & 1) == 0)
  {
    v21 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight)];
    [v16 setFreqAccuracyFaultCountRight:v21];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft + 4) & 1) == 0)
  {
    v22 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft)];
    [v16 setFrontVentFaultCountLeft:v22];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight + 4) & 1) == 0)
  {
    v23 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight)];
    [v16 setFrontVentFaultCountRight:v23];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft + 4) & 1) == 0)
  {
    v24 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft)];
    [v16 setInnerMicFaultCountLeft:v24];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight + 4) & 1) == 0)
  {
    v25 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight)];
    [v16 setInnerMicFaultCountRight:v25];
  }

  v26 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
  swift_beginAccess();
  sub_10013250C(v1 + v26, v7);
  v27 = *(v9 + 48);
  if (v27(v7, 1, v8) == 1)
  {
    sub_100102138(v7);
  }

  else
  {
    (*(v9 + 32))(v13, v7, v8);
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v16 setLatestDiagnosticTimestampLeft:isa];

    (*(v9 + 8))(v13, v8);
  }

  v29 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
  swift_beginAccess();
  sub_10013250C(v1 + v29, v4);
  if (v27(v4, 1, v8) == 1)
  {
    sub_100102138(v4);
  }

  else
  {
    v30 = v42;
    (*(v9 + 32))(v42, v4, v8);
    v31 = Date._bridgeToObjectiveC()().super.isa;
    [v16 setLatestDiagnosticTimestampRight:v31];

    (*(v9 + 8))(v30, v8);
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft + 4) & 1) == 0)
  {
    v32 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft)];
    [v16 setRearVentFaultCountLeft:v32];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight + 4) & 1) == 0)
  {
    v33 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight)];
    [v16 setRearVentFaultCountRight:v33];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft + 4) & 1) == 0)
  {
    v34 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft)];
    [v16 setSpeakerFaultCountLeft:v34];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight + 4) & 1) == 0)
  {
    v35 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight)];
    [v16 setSpeakerFaultCountRight:v35];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft + 4) & 1) == 0)
  {
    v36 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft)];
    [v16 setTopMicFaultCountLeft:v36];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight + 4) & 1) == 0)
  {
    v37 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight)];
    [v16 setTopMicFaultCountRight:v37];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft + 4) & 1) == 0)
  {
    v38 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft)];
    [v16 setTotalHarmonicDistortionFaultCountLeft:v38];
  }

  if ((*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight + 4) & 1) == 0)
  {
    v39 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight)];
    [v16 setTotalHarmonicDistortionFaultCountRight:v39];
  }

  return v16;
}

uint64_t sub_100171FEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id DefaultsObserver.__allocating_init(keys:defaults:notificationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_monitoredKeys] = a1;
  *&v9[OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_defaults] = a2;
  v10 = &v9[OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_notify];
  *v10 = a3;
  *(v10 + 1) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, "init");
}

id DefaultsObserver.init(keys:defaults:notificationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_monitoredKeys] = a1;
  *&v4[OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_defaults] = a2;
  v5 = &v4[OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_notify];
  *v5 = a3;
  *(v5 + 1) = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for DefaultsObserver();
  return objc_msgSendSuper2(&v7, "init");
}

id DefaultsObserver.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_monitoredKeys];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_defaults];
    v4 = v1 + 40;
    do
    {

      v5 = String._bridgeToObjectiveC()();

      [v3 removeObserver:v0 forKeyPath:v5 context:0];

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for DefaultsObserver();
  return objc_msgSendSuper2(&v7, "dealloc");
}

Swift::Void __swiftcall DefaultsObserver.start()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_monitoredKeys);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_defaults);
    v4 = v1 + 40;
    do
    {

      v5 = String._bridgeToObjectiveC()();

      [v3 addObserver:v0 forKeyPath:v5 options:0 context:0];

      v4 += 16;
      --v2;
    }

    while (v2);
  }
}

Swift::Void __swiftcall DefaultsObserver.stop()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_monitoredKeys);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_defaults);
    v4 = v1 + 40;
    do
    {

      v5 = String._bridgeToObjectiveC()();

      [v3 removeObserver:v0 forKeyPath:v5 context:0];

      v4 += 16;
      --v2;
    }

    while (v2);
  }
}

uint64_t DefaultsObserver.observeValue(forKeyPath:of:change:context:)(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_notify);

    v5(v4, a2);
  }

  return result;
}

void sub_100172758()
{
  v1 = *(v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1001727B0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 >> 62)
  {
LABEL_22:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v8 = *(v5 + 8 * i + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    swift_unknownObjectRelease();
    if (v8 == a1)
    {

      v16 = static os_log_type_t.debug.getter();
      if (qword_1002F7AE0 != -1)
      {
        swift_once();
      }

      v17 = qword_100300E30;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100226100;
      v22 = a1;
      swift_unknownObjectRetain();
      sub_1000EE870(&qword_1002F9758, &unk_100229878);
      v19 = String.init<A>(describing:)();
      v21 = v20;
      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_1000EE954();
      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "%@ already subscribed to updates.", 33, 2, v18, v22);
    }
  }

  v9 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v10 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100226100;
  swift_unknownObjectRetain();
  sub_1000EE870(&qword_1002F9758, &unk_100229878);
  v12 = String.init<A>(describing:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_1000EE954();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "%@ subscribed to updates.", 25, 2, v11, a1);

  swift_beginAccess();
  swift_unknownObjectRetain();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_100172B34(uint64_t a1)
{
  v3 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  v4 = qword_100300E30;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100226100;
  swift_unknownObjectRetain();
  sub_1000EE870(&qword_1002F9758, &unk_100229878);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000EE954();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "%@ unsubscribing from updates.", 30, 2, v5);

  v9 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v10 = sub_100173038((v1 + v9), a1);
  result = swift_unknownObjectRelease();
  v12 = *(v1 + v9);
  if (v12 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v13 = result;
    if (result >= v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 >= v10)
    {
LABEL_5:
      sub_10017338C(v10, v13, sub_100173280);
      return swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

void sub_100172D20(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_100172D98(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_100172E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1000EEE20();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_100172F50(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v7 == a2)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_100173038(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_100172F50(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v13 = *(v7 + 8 * v11 + 32);
    swift_unknownObjectRetain();
LABEL_17:
    swift_unknownObjectRelease();
    if (v13 != a2)
    {
      if (v10 != v11)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v15)
          {
            goto LABEL_47;
          }

          if (v11 >= v15)
          {
            goto LABEL_48;
          }

          v3 = *(v7 + 32 + 8 * v10);
          v14 = *(v7 + 32 + 8 * v11);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_1001CE110();
          v16 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;
        swift_unknownObjectRelease();
        if ((v7 & 0x8000000000000000) != 0 || v16)
        {
          v7 = sub_1001CE110();
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;
        swift_unknownObjectRelease();
        *a1 = v7;
      }

      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_44;
      }
    }

    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_43;
    }
  }

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
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_100173280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1000EE870(&qword_1002F9758, &unk_100229878);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10017338C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v6 = a1;
    v7 = *v5;
    v8 = *v5 >> 62;
    v13 = a3;
    if (!v8)
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (v12)
  {
    goto LABEL_18;
  }

  sub_100172D98(result, 1);

  return v13(v6, v4, 0);
}

uint64_t DarwinNotificationHelper.__allocating_init(notificationHandlers:)(unint64_t a1)
{
  v2 = swift_allocObject();
  DarwinNotificationHelper.init(notificationHandlers:)(a1);
  return v2;
}

const void *DarwinNotificationHelper.init(notificationHandlers:)(unint64_t a1)
{
  v2 = v1;
  v26 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v26)
  {
    v1[2] = a1;
    v4 = qword_1002F79F8;

    if (v4 != -1)
    {
LABEL_19:
      swift_once();
    }

    v5 = static DarwinNotificationManager.shared;
    v6 = OBJC_IVAR____TtC15audioaccessoryd25DarwinNotificationManager_helpers;
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v27 = a1;
    if (*((*(v5 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v7 = static os_log_type_t.default.getter();
    if (qword_1002F7AC8 != -1)
    {
      v22 = v7;
      swift_once();
      v7 = v22;
    }

    v24 = qword_100300E18;
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_100300E18, "Setup darwin callback handlers", 30, 2, _swiftEmptyArrayStorage);
    v8 = 0;
    v9 = a1 + 64;
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    a1 = v11 & *(a1 + 64);
    v12 = (v10 + 63) >> 6;
    v25 = v2;
    if (a1)
    {
      while (1)
      {
        v13 = v8;
LABEL_15:
        v14 = __clz(__rbit64(a1));
        a1 &= a1 - 1;
        v15 = *(*(v27 + 48) + 8 * (v14 | (v13 << 6)));

        v16 = static os_log_type_t.default.getter();
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_100226100;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        *(v17 + 56) = &type metadata for String;
        *(v17 + 64) = sub_1000EE954();
        *(v17 + 32) = v18;
        *(v17 + 40) = v20;
        os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v24, "Setting up darwin callback handler for %@", 41, 2, v17);

        v2 = v25;
        CFNotificationCenterAddObserver(v26, v25, sub_10017388C, v15, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

        if (!a1)
        {
          goto LABEL_11;
        }
      }
    }

    while (1)
    {
LABEL_11:
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v13 >= v12)
      {
        break;
      }

      a1 = *(v9 + 8 * v13);
      ++v8;
      if (a1)
      {
        v8 = v13;
        goto LABEL_15;
      }
    }

    return v2;
  }

  else
  {
    v23 = static os_log_type_t.error.getter();
    if (qword_1002F7AC8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, qword_100300E18, "darwinCenter not available", 26, 2, _swiftEmptyArrayStorage);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}