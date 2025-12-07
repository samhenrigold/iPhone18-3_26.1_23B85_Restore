void specialized _NativeSet.resize(capacity:)(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  type metadata accessor for _SetStorage<UIScene>(0, a2, a3, a4, a5);
  v8 = static _SetStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      v22 = NSObject._rawHashValue(seed:)(*(v9 + 40));
      v23 = -1 << *(v9 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v30 = 1 << *(v7 + 32);
    if (v30 >= 64)
    {
      bzero((v7 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v30;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v9;
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1, double a2)
{
  v3 = v2;
  v39 = type metadata accessor for DateComponents();
  v4 = *(v39 - 8);
  v5 = MEMORY[0x1EEE9AC00](v39);
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  type metadata accessor for _SetStorage<DateComponents>(0, v5);
  v8 = static _SetStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v2;
    v34 = v7;
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v37 = v4 + 32;
    v16 = v8 + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v7 + 48) + *(v4 + 72) * (v18 | (v10 << 6));
      v22 = *(v4 + 32);
      v35 = *(v4 + 72);
      v36 = v22;
      v22(v38, v21, v39);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v24 = -1 << *(v9 + 32);
      v25 = v23 & ~v24;
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

LABEL_30:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v36(*(v9 + 48) + v17 * v35, v38, v39);
      ++*(v9 + 16);
      v7 = v34;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v31 = 1 << *(v7 + 32);
    if (v31 >= 64)
    {
      bzero(v11, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    v3 = v33;
    *(v7 + 16) = 0;
  }

  *v3 = v9;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t *result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v5 + 1);
    }

    else
    {
      if (v6 > v5)
      {
        v7 = a2;
        specialized _NativeSet.copy()();
        a2 = v7;
        goto LABEL_28;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
    }

    v8 = *result;
    v9 = result[1];
    v11 = result[2];
    v10 = result[3];
    v12 = *v3;
    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v8);
    if (v11 == 6)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x18D00F6F0](v9);
      MEMORY[0x18D00F6F0](v11);
      MEMORY[0x18D00F6F0](v10);
    }

    v13 = *(result + 32);
    Hasher._combine(_:)(v13 & 1);
    v14 = Hasher._finalize()();
    v15 = -1 << *(v12 + 32);
    a2 = v14 & ~v15;
    if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v16 = ~v15;
      do
      {
        v17 = *(v12 + 48) + 48 * a2;
        if (*v17 == v8)
        {
          v18 = *(v17 + 16);
          v19 = *(v17 + 32);
          if (v18 == 6)
          {
            if (v11 == 6)
            {
              goto LABEL_13;
            }
          }

          else if (v11 != 6)
          {
            v20 = *(v17 + 8);
            v21 = *(v17 + 24);
            v22 = (v18 ^ v11);
            v23 = v20 == v9 && v22 == 0;
            if (v23 && v21 == v10)
            {
LABEL_13:
              if (((v19 ^ v13) & 1) == 0)
              {
                goto LABEL_31;
              }
            }
          }
        }

        a2 = (a2 + 1) & v16;
      }

      while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v25 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = (*(v25 + 48) + 48 * a2);
  v27 = *(result + 1);
  *v26 = *result;
  v26[1] = v27;
  v26[2] = *(result + 2);
  v28 = *(v25 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
LABEL_31:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v30;
  }
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_18;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  v9 = *result;
  v10 = result[1];
  String.hash(into:)();
  AnyHashable.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v8 + 32);
  a2 = v11 & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      outlined init with copy of SceneRequestCache.Item(*(v8 + 48) + 56 * a2, v21);
      v14 = v21[0] == v9 && v21[1] == v10;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (MEMORY[0x18D00E7E0](&v22, result + 2))
      {
        goto LABEL_21;
      }

      outlined destroy of SceneRequestCache.Item(v21);
      a2 = (a2 + 1) & v13;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v16 = *(v15 + 48) + 56 * a2;
  v17 = *(result + 1);
  *v16 = *result;
  *(v16 + 16) = v17;
  *(v16 + 32) = *(result + 2);
  *(v16 + 48) = result[6];
  v18 = *(v15 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v15 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_21:
  outlined destroy of SceneRequestCache.Item(v21);
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v6 = a3;
  v7 = a2;
  v8 = result;
  v9 = HIDWORD(result);
  v10 = HIDWORD(a2);
  v11 = HIDWORD(a3);
  v12 = *(*v5 + 16);
  v13 = *(*v5 + 24);
  if (v13 > v12 && (a5 & 1) != 0)
  {
LABEL_27:
    v31 = *v5;
    *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
    v32 = (*(v31 + 48) + 24 * a4);
    *v32 = v8;
    v32[1] = v9;
    v32[2] = v7;
    v32[3] = v10;
    v32[4] = v6;
    v32[5] = v11;
    v33 = *(v31 + 16);
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      __break(1u);
    }

    *(v31 + 16) = v35;
    return;
  }

  if (a5)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
    goto LABEL_8;
  }

  if (v13 > v12)
  {
    v14 = a4;
    specialized _NativeSet.copy()();
    a4 = v14;
    goto LABEL_27;
  }

  specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
LABEL_8:
  v15 = *v5;
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  Hasher._combine(_:)(v11);
  v16 = Hasher._finalize()();
  v17 = -1 << *(v15 + 32);
  a4 = v16 & ~v17;
  if (((*(v15 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
    goto LABEL_27;
  }

  v18 = ~v17;
  while (1)
  {
    v19 = (*(v15 + 48) + 24 * a4);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = v19[3];
    v25 = v19[4];
    v24 = v19[5];
    v26 = v20 == v8 && v21 == v9;
    v27 = v26 && v22 == v7;
    v28 = v27 && v23 == v10;
    v29 = v28 && v25 == v6;
    if (v29 && v24 == v11)
    {
      break;
    }

    a4 = (a4 + 1) & v18;
    if (((*(v15 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3, double a4)
{
  v33 = a1;
  v7 = type metadata accessor for DateComponents();
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  v30 = v4;
  v31 = v8;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1, v9.n128_f64[0]);
  }

  else
  {
    if (v13 > v12)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E6968278], type metadata accessor for _SetStorage<DateComponents>);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1, v9.n128_f64[0]);
  }

  v14 = *v4;
  lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v8 + 16);
    v20 = v8 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v7);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x1E6968278], MEMORY[0x1E6968290]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v11, v7);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v7, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      specialized _NativeSet.copy()();
      goto LABEL_19;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    v10 = a1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      if (v14)
      {
        if (a1)
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
          v15 = a1;
          v16 = v14;
          v17 = static NSObject.== infix(_:_:)();

          if (v17)
          {
LABEL_18:
            type metadata accessor for UIColor?(0);
            ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v23 = a1;
  v24 = a2;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v9 = *v4;
  Hasher.init(_seed:)();
  _ViewList_ID.Canonical.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a3 = v10 & ~v11;
  if ((*(v9 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v9 + 48) + 16 * a3);
      v14 = v13[1];
      v22[0] = *v13;
      v22[1] = v14;

      v15 = MEMORY[0x18D003E10](v22, &v23);

      if (v15)
      {
        goto LABEL_15;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_12:
  v16 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  v18 = v24;
  *v17 = v23;
  v17[1] = v18;
  v19 = *(v16 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v16 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.copy()(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, a1, a2, a3);
  v5 = *v3;
  v6 = static _SetStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 56);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 56 + 8 * v9)
    {
      memmove(v8, (v5 + 56), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 56);
    for (i = (v12 + 63) >> 6; v14; *(*(v7 + 48) + 8 * v17) = *(*(v5 + 48) + 8 * v17))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v17 = v16 | (v11 << 6);
LABEL_17:
      ;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= i)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 56 + 8 * v11);
      ++v18;
      if (v19)
      {
        v14 = (v19 - 1) & v19;
        v17 = __clz(__rbit64(v19)) | (v11 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }
}

void specialized _NativeSet.copy()(__n128 a1)
{
  specialized _NativeSet.copy()(MEMORY[0x1E6969C28], type metadata accessor for _SetStorage<IndexPath>);
}

{
  specialized _NativeSet.copy()(MEMORY[0x1E6968278], type metadata accessor for _SetStorage<DateComponents>);
}

void specialized _NativeSet.copy()(uint64_t (*a1)(void), void (*a2)(void, double))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  a2(0, v7);
  v10 = *v2;
  v11 = static _SetStorage.copy(original:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v26 = v4;
    v13 = (v11 + 56);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || v13 >= v10 + 56 + 8 * v14)
    {
      memmove(v13, (v10 + 56), 8 * v14);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v10 + 56);
    v20 = (v17 + 63) >> 6;
    v27 = v6 + 32;
    v28 = v6 + 16;
    while (v19)
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v24 = *(v6 + 72) * (v21 | (v16 << 6));
      (*(v6 + 16))(v9, *(v10 + 48) + v24, v5);
      (*(v6 + 32))(*(v12 + 48) + v24, v9, v5);
    }

    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v20)
      {

        v4 = v26;
        goto LABEL_21;
      }

      v23 = *(v10 + 56 + 8 * v16);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v12;
  }
}

void specialized _NativeSet.copy()(unint64_t *a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v5 = v4;
  type metadata accessor for _SetStorage<UIScene>(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 56 + 8 * v10)
    {
      memmove(v9, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        v23 = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, double a2)
{
  v3 = v2;
  v36 = type metadata accessor for DateComponents();
  v4 = *(v36 - 8);
  v5 = MEMORY[0x1EEE9AC00](v36);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  type metadata accessor for _SetStorage<DateComponents>(0, v5);
  v9 = static _SetStorage.resize(original:capacity:move:)();
  v10 = v8;
  if (*(v8 + 16))
  {
    v31 = v2;
    v11 = 0;
    v12 = v8 + 56;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v34 = v4 + 16;
    v35 = v4;
    v17 = v9 + 56;
    v32 = (v4 + 32);
    v33 = v10;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = *(v35 + 72);
      (*(v35 + 16))(v7, *(v10 + 48) + v22 * (v19 | (v11 << 6)), v36);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v24 = -1 << *(v9 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      (*v32)(*(v9 + 48) + v18 * v22, v7, v36);
      ++*(v9 + 16);
      v10 = v33;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v3 = v31;
        goto LABEL_26;
      }

      v21 = *(v12 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
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
    *v3 = v9;
  }
}

Swift::Int specialized static ViewGraphBridgeProperties.defaultRequestedBars.getter()
{
  type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement.Role>, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 48) = 0u;
  *(inited + 64) = 0;
  *(inited + 32) = 0u;
  v1 = inited + 32;
  v2 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI16ToolbarPlacementV4RoleO_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of ToolbarPlacement.Role(v1);
  v7 = v2;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    memset(v4, 0, sizeof(v4));
    v5 = xmmword_18CD7DD20;
    specialized Set._Variant.insert(_:)(v6, v4);
    outlined destroy of ToolbarPlacement.Role(v6);
  }

  return v7;
}

unint64_t lazy protocol witness table accessor for type ArchivedViewState.ID and conformance ArchivedViewState.ID()
{
  result = lazy protocol witness table cache variable for type ArchivedViewState.ID and conformance ArchivedViewState.ID;
  if (!lazy protocol witness table cache variable for type ArchivedViewState.ID and conformance ArchivedViewState.ID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivedViewState.ID, &type metadata for ArchivedViewState.ID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewState.ID and conformance ArchivedViewState.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewState.ID and conformance ArchivedViewState.ID;
  if (!lazy protocol witness table cache variable for type ArchivedViewState.ID and conformance ArchivedViewState.ID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivedViewState.ID, &type metadata for ArchivedViewState.ID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewState.ID and conformance ArchivedViewState.ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SceneRequestCache.Item and conformance SceneRequestCache.Item()
{
  result = lazy protocol witness table cache variable for type SceneRequestCache.Item and conformance SceneRequestCache.Item;
  if (!lazy protocol witness table cache variable for type SceneRequestCache.Item and conformance SceneRequestCache.Item)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneRequestCache.Item, &type metadata for SceneRequestCache.Item, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneRequestCache.Item and conformance SceneRequestCache.Item);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneRequestCache.Item and conformance SceneRequestCache.Item;
  if (!lazy protocol witness table cache variable for type SceneRequestCache.Item and conformance SceneRequestCache.Item)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneRequestCache.Item, &type metadata for SceneRequestCache.Item, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneRequestCache.Item and conformance SceneRequestCache.Item);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextEditorModification and conformance TextEditorModification()
{
  result = lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification;
  if (!lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextEditorModification, &type metadata for TextEditorModification, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification;
  if (!lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextEditorModification, &type metadata for TextEditorModification, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification;
  if (!lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextEditorModification, &type metadata for TextEditorModification, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification;
  if (!lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextEditorModification, &type metadata for TextEditorModification, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification;
  if (!lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextEditorModification, &type metadata for TextEditorModification, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification);
  }

  return result;
}

void type metadata accessor for UIColor?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIColor?)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UIColor?);
    }
  }
}

void type metadata accessor for _SetStorage<UIColor?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<UIColor?>)
  {
    type metadata accessor for UIColor?(255);
    lazy protocol witness table accessor for type UIColor? and conformance <A> A?();
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<UIColor?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UIColor? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UIColor? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UIColor? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for UIColor?(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UIColor and conformance NSObject, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
    result = swift_getWitnessTable(MEMORY[0x1E69E7C78], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type UIColor? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color and conformance Color()
{
  result = lazy protocol witness table cache variable for type Color and conformance Color;
  if (!lazy protocol witness table cache variable for type Color and conformance Color)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69815D0], MEMORY[0x1E69815C0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Color and conformance Color);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color and conformance Color;
  if (!lazy protocol witness table cache variable for type Color and conformance Color)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Color, MEMORY[0x1E69815C0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Color and conformance Color);
  }

  return result;
}

void type metadata accessor for _SetStorage<UITextFormattingViewControllerComponentKey>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<UITextFormattingViewControllerComponentKey>)
  {
    type metadata accessor for UITextFormattingViewControllerComponentKey(255);
    lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type UITextFormattingViewControllerComponentKey and conformance UITextFormattingViewControllerComponentKey, type metadata accessor for UITextFormattingViewControllerComponentKey, protocol conformance descriptor for UITextFormattingViewControllerComponentKey);
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<UITextFormattingViewControllerComponentKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for _SetStorage<DateComponents>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for _SetStorage<DateComponents>)
  {
    type metadata accessor for DateComponents();
    lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
    v2 = type metadata accessor for _SetStorage();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for _SetStorage<DateComponents>);
    }
  }
}

void type metadata accessor for _SetStorage<IndexPath>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<IndexPath>)
  {
    type metadata accessor for IndexPath();
    lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<IndexPath>);
    }
  }
}

void type metadata accessor for _SetStorage<UIScene>(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    type metadata accessor for NSObject(255, a3, a4);
    lazy protocol witness table accessor for type UIScene and conformance NSObject(a5, a3, a4);
    v9 = type metadata accessor for _SetStorage();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for _SetStorage<URL>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<URL>)
  {
    type metadata accessor for URL();
    lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<URL>);
    }
  }
}

void type metadata accessor for _SetStorage<UTType>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<UTType>)
  {
    type metadata accessor for UTType();
    lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<UTType>);
    }
  }
}

uint64_t outlined init with copy of HashableCommandGroupPlacementWrapper(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of HashableCommandGroupPlacementWrapper(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _SetStorage<HashableCommandGroupPlacementWrapper>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<HashableCommandGroupPlacementWrapper>)
  {
    type metadata accessor for HashableCommandGroupPlacementWrapper(255);
    lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper, type metadata accessor for HashableCommandGroupPlacementWrapper, protocol conformance descriptor for HashableCommandGroupPlacementWrapper);
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<HashableCommandGroupPlacementWrapper>);
    }
  }
}

uint64_t destroy for ViewGraphBridgeProperties()
{
}

uint64_t initializeWithCopy for ViewGraphBridgeProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

void *assignWithCopy for ViewGraphBridgeProperties(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

_OWORD *assignWithTake for ViewGraphBridgeProperties(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _GraphInputs.ViewGraphBridgePropertiesKey, &type metadata for _GraphInputs.ViewGraphBridgePropertiesKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _GraphInputs.ViewGraphBridgePropertiesKey, &type metadata for _GraphInputs.ViewGraphBridgePropertiesKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey);
  }

  return result;
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t AnyWindowToolbarStyle.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = *(v6 + 16);
  v11(v16 - v12, a1, a2, v10);
  if (swift_dynamicCast())
  {
    v14 = v16[1];
  }

  else
  {
    type metadata accessor for AnyWindowToolbarStyleStorage(0, a2, a3, v13);
    (v11)(v8, a1, a2);
    v14 = LimitedAvailabilityCommandContentStorage.__allocating_init(_:)(v8);
  }

  (*(v6 + 8))(a1, a2);
  return v14;
}

uint64_t DragSession.Phase.hash(into:)()
{
  v1 = *v0;
  if (v1 >> 6)
  {
    if (v1 >> 6 != 1)
    {
      v3 = qword_18CD7E2D0[v1 ^ 0x1FFFFFFFFFFFFF80];
      return MEMORY[0x18D00F6F0](v3);
    }

    v1 &= 0x3Fu;
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  MEMORY[0x18D00F6F0](v2);
  if (v1 < 2)
  {
    if (v1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v1;
    }

    return MEMORY[0x18D00F6F0](v3);
  }

  if (v1 <= 2)
  {
    v3 = 2;
    return MEMORY[0x18D00F6F0](v3);
  }

  if (v1 == 3)
  {
    v3 = 3;
    return MEMORY[0x18D00F6F0](v3);
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int DragSession.Phase.hashValue.getter()
{
  Hasher.init(_seed:)();
  DragSession.Phase.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DragSession.Phase()
{
  Hasher.init(_seed:)();
  DragSession.Phase.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DragSession.Phase(uint64_t a1)
{
  Hasher.init(_seed:)();
  DragSession.Phase.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int DragSession.ID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

double DragSession.location(in:)()
{
  type metadata accessor for _ContiguousArrayStorage<Any>();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18CD63400;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000020;
  *(v0 + 40) = 0x800000018CD42A30;
  print(_:separator:terminator:)();

  return 0.0;
}

uint64_t DragSession.draggedItemIDs<A>(for:)(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v3 + 24))
  {
    return static Array._allocateUninitialized(_:)();
  }

  v35[0] = a2;
  v35[1] = a2;
  v35[2] = a3;
  v35[3] = a3;
  v9 = type metadata accessor for DraggingItem.Identifier(0, v35);
  v10 = _arrayConditionalCast<A, B>(_:)();
  if (!v10)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v11 = v10;
  static Log.dragAndDrop.getter();
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    v14 = outlined destroy of Logger?(v8);
  }

  else
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v32 = v18;
      v34 = swift_slowAlloc();
      v35[0] = v34;
      *v18 = 136315138;
      v19 = MEMORY[0x18D00CC60](v11, v9);
      v33 = v16;
      v20 = v19;
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v35);

      v24 = v32;
      v25 = v33;
      *(v32 + 1) = v23;
      v26 = v24;
      _os_log_impl(&dword_18BD4A000, v25, v17, "DragSession has successfully obtained local objects: %s", v24, 0xCu);
      v27 = v34;
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x18D0110E0](v27, -1, -1);
      MEMORY[0x18D0110E0](v26, -1, -1);
    }

    else
    {
    }

    v14 = (*(v13 + 8))(v8, v12);
  }

  v35[0] = v11;
  MEMORY[0x1EEE9AC00](v14);
  *(&v32 - 2) = a2;
  *(&v32 - 1) = a3;
  v28 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v28);
  v31 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DragSession.draggedItemIDs<A>(for:), (&v32 - 4), v28, a2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v30);

  return v31;
}

unint64_t DragSession.Phase.description.getter()
{
  v1 = *v0;
  if (!(v1 >> 6))
  {
    _StringGuts.grow(_:)(24);
    v3 = 0xD000000000000016;
    v2 = 0x800000018CD42AA0;
    goto LABEL_5;
  }

  if (v1 >> 6 == 1)
  {
    _StringGuts.grow(_:)(23);
    v2 = 0x800000018CD42A80;
    v3 = 0xD000000000000015;
LABEL_5:
    MEMORY[0x18D00C9B0](v3, v2);
    _print_unlocked<A, B>(_:_:)();
    return 0;
  }

  v5 = 0x657669746361;
  if (v1 != 129)
  {
    v5 = 0xD000000000000017;
  }

  if (v1 == 128)
  {
    return 0x6C616974696E69;
  }

  else
  {
    return v5;
  }
}

unint64_t DragSession.ID.debugDescription.getter()
{
  _StringGuts.grow(_:)(25);

  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t specialized static DragSession.Phase.== infix(_:_:)(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        v4 = v2 & 0x3F;
        if (v4 < 2)
        {
          v5 = v4 == 0;
          v6 = 0;
          v7 = !v5;
          v8 = v5;
          v9 = 0;
LABEL_37:
          v3 &= 0x3Fu;
          v11 = v3 <= 2;
          if (v3 < 2)
          {
            if (!v3)
            {
              return (v8 & 1) != 0;
            }

            return (v7 & 1) != 0;
          }

          goto LABEL_46;
        }

        if (v4 <= 2)
        {
          v6 = 0;
          v7 = 0;
          v8 = 0;
          v9 = 1;
          goto LABEL_37;
        }

        if (v4 == 3)
        {
          v9 = 0;
          v7 = 0;
          v8 = 0;
          v6 = 1;
          goto LABEL_37;
        }

LABEL_53:
        _diagnoseUnavailableCodeReached()();
        __break(1u);
        goto LABEL_54;
      }
    }

    else if (v2 == 128)
    {
      if (v3 == 128)
      {
        return 1;
      }
    }

    else if (v2 == 129)
    {
      if (v3 == 129)
      {
        return 1;
      }
    }

    else if (v3 == 130)
    {
      return 1;
    }

    return 0;
  }

  if (v3 > 0x3F)
  {
    return 0;
  }

  if (*a1 < 2u)
  {
    v10 = v2 == 0;
    v6 = 0;
    v7 = !v10;
    v8 = v10;
    v9 = 0;
    v11 = *a2 <= 2u;
    if (*a2 >= 2u)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (!*a2)
    {
      return (v8 & 1) != 0;
    }

    return (v7 & 1) != 0;
  }

  if (*a1 > 2u)
  {
    if (v2 != 3)
    {
      goto LABEL_53;
    }

    v9 = 0;
    v7 = 0;
    v8 = 0;
    v6 = 1;
    v11 = *a2 <= 2u;
    if (*a2 < 2u)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1;
    v11 = *a2 <= 2u;
    if (*a2 < 2u)
    {
      goto LABEL_43;
    }
  }

LABEL_46:
  if (v11)
  {
    return (v9 & 1) != 0;
  }

  if (v3 == 3)
  {
    return (v6 & 1) != 0;
  }

LABEL_54:
  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DragSession.Phase and conformance DragSession.Phase()
{
  result = lazy protocol witness table cache variable for type DragSession.Phase and conformance DragSession.Phase;
  if (!lazy protocol witness table cache variable for type DragSession.Phase and conformance DragSession.Phase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragSession.Phase, &type metadata for DragSession.Phase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragSession.Phase and conformance DragSession.Phase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DragSession.ID and conformance DragSession.ID()
{
  result = lazy protocol witness table cache variable for type DragSession.ID and conformance DragSession.ID;
  if (!lazy protocol witness table cache variable for type DragSession.ID and conformance DragSession.ID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragSession.ID, &type metadata for DragSession.ID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragSession.ID and conformance DragSession.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DragSession.ID and conformance DragSession.ID;
  if (!lazy protocol witness table cache variable for type DragSession.ID and conformance DragSession.ID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DragSession.ID, &type metadata for DragSession.ID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DragSession.ID and conformance DragSession.ID);
  }

  return result;
}

uint64_t initializeWithCopy for DragSession(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for DragSession(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for DragSession(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for DragSession(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DragSession(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DragSession.Phase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1E)
  {
    goto LABEL_17;
  }

  if (a2 + 226 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 226) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 226;
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

      return (*a1 | (v4 << 8)) - 226;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for DragSession.Phase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1E)
  {
    v4 = 0;
  }

  if (a2 > 0x1D)
  {
    v5 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
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
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTag for DragSession.Phase(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *destructiveInjectEnumTag for DragSession.Phase(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 6) & 7 | 0x80;
  }

  return result;
}

uint64_t assignWithTake for NavigationSplitCore(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  __swift_destroy_boxed_opaque_existential_1((a1 + 64));
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  v8 = *(a2 + 104);
  v9 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v8;

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  __swift_destroy_boxed_opaque_existential_1((a1 + 128));
  v10 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v10;
  v11 = *(a2 + 168);
  v12 = *(a1 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v11;

  *(a1 + 176) = *(a2 + 176);

  v13 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v13;

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 225) = *(a2 + 225);
  *(a1 + 226) = *(a2 + 226);
  *(a1 + 232) = *(a2 + 232);

  *(a1 + 240) = *(a2 + 240);

  *(a1 + 248) = *(a2 + 248);
  swift_weakTakeAssign();
  *(a1 + 264) = *(a2 + 264);

  *(a1 + 272) = *(a2 + 272);

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);

  if (*(a1 + 320))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 296));
  }

  *(a1 + 328) = *(a2 + 328);
  v14 = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v14;
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationSplitCore(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationSplitCore(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t View.ignoresNonTabBarSafeArea()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 0;
  MEMORY[0x18D00A570](&KeyPath, a1, &type metadata for IgnoresNonTabBarSafeArea, a2);
  return outlined consume of Environment<Selector?>.Content(KeyPath, v6);
}

void key path getter for EnvironmentValues.isNavigationSplitViewTransparent : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey>, &type metadata for ContainerBackgroundKeys.TransparentNavigationSplitViewKey, &protocol witness table for ContainerBackgroundKeys.TransparentNavigationSplitViewKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey>, &type metadata for ContainerBackgroundKeys.TransparentNavigationSplitViewKey, &protocol witness table for ContainerBackgroundKeys.TransparentNavigationSplitViewKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.isNavigationSplitViewTransparent : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey>, &type metadata for ContainerBackgroundKeys.TransparentNavigationSplitViewKey, &protocol witness table for ContainerBackgroundKeys.TransparentNavigationSplitViewKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t IgnoresNonTabBarSafeArea.ignoredSafeAreaEdges.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = static Edge.Set.all.getter();
  specialized Environment.wrappedValue.getter(v2, v3, (&v7 + 1));
  if (BYTE1(v7) != 5 && !BYTE1(v7))
  {
    return v4 & 0xFFFFFFFE;
  }

  specialized Environment.wrappedValue.getter(v2, v3, &v7);
  v5 = v4 & 0xFFFFFFFD;
  if (v7 != 1)
  {
    v5 = v4;
  }

  if (v7 == 5)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance IgnoresNonTabBarSafeArea@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = IgnoresNonTabBarSafeArea.ignoredSafeAreaEdges.getter(a1);
  *a2 = -1;
  *(a2 + 8) = result;
  return result;
}

uint64_t outlined init with copy of ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(0, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, &type metadata for NavigationSplitRepresentable, &type metadata for IgnoresNonTabBarSafeArea, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(0, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, &type metadata for NavigationSplitRepresentable, &type metadata for IgnoresNonTabBarSafeArea, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _ViewModifier_Content<IgnoresNonTabBarSafeArea> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?> and conformance _BackgroundPreferenceModifier<A, B>, type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>, MEMORY[0x1E6980968]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>(255);
    type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>)
  {
    type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(255, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, &type metadata for NavigationSplitRepresentable, &type metadata for IgnoresNonTabBarSafeArea, MEMORY[0x1E697E830]);
    type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(255, &lazy cache variable for type metadata for ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>, &type metadata for ContainerBackgroundKeys.NavigationSplitViewKey, &protocol witness table for ContainerBackgroundKeys.NavigationSplitViewKey, type metadata accessor for ContainerBackgroundRendererModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for ContainerBackgroundRendererModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(255, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, &type metadata for NavigationSplitRepresentable, &type metadata for IgnoresNonTabBarSafeArea, MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = &protocol witness table for NavigationSplitRepresentable;
    v5[1] = lazy protocol witness table accessor for type IgnoresNonTabBarSafeArea and conformance IgnoresNonTabBarSafeArea();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IgnoresNonTabBarSafeArea and conformance IgnoresNonTabBarSafeArea()
{
  result = lazy protocol witness table cache variable for type IgnoresNonTabBarSafeArea and conformance IgnoresNonTabBarSafeArea;
  if (!lazy protocol witness table cache variable for type IgnoresNonTabBarSafeArea and conformance IgnoresNonTabBarSafeArea)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IgnoresNonTabBarSafeArea, &type metadata for IgnoresNonTabBarSafeArea, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IgnoresNonTabBarSafeArea and conformance IgnoresNonTabBarSafeArea);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<IgnoresNonTabBarSafeArea> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<IgnoresNonTabBarSafeArea>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<IgnoresNonTabBarSafeArea>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<IgnoresNonTabBarSafeArea>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<IgnoresNonTabBarSafeArea>, _SafeAreaRegionsIgnoringLayout>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<IgnoresNonTabBarSafeArea> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<IgnoresNonTabBarSafeArea> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<IgnoresNonTabBarSafeArea>, MEMORY[0x1E697FDF8]);
    v5[1] = MEMORY[0x1E6980A30];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<IgnoresNonTabBarSafeArea>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<IgnoresNonTabBarSafeArea>, _SafeAreaRegionsIgnoringLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<IgnoresNonTabBarSafeArea>, _SafeAreaRegionsIgnoringLayout>)
  {
    type metadata accessor for _ViewModifier_Content<IgnoresNonTabBarSafeArea>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<IgnoresNonTabBarSafeArea>, _SafeAreaRegionsIgnoringLayout>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<IgnoresNonTabBarSafeArea>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<IgnoresNonTabBarSafeArea>)
  {
    lazy protocol witness table accessor for type IgnoresNonTabBarSafeArea and conformance IgnoresNonTabBarSafeArea();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<IgnoresNonTabBarSafeArea>);
    }
  }
}

uint64_t OutlineGroup.$expandedElements.getter(uint64_t a1)
{
  type metadata accessor for Set();
  type metadata accessor for StateOrBinding();
  StateOrBinding.projectedValue.getter();
  return v2;
}

uint64_t OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v19 = static Array._allocateUninitialized(_:)();
  if (MEMORY[0x18D00CDF0](v19, v18))
  {
    v20 = specialized Set.init(_nonEmptyArrayLiteral:)(v19, v18, a17);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CD0];
  }

  v45 = v20;
  type metadata accessor for Set();
  StateOrBinding.init(wrappedValue:)();
  v21 = v40;
  v22 = v41;
  *a9 = v39;
  *(a9 + 16) = v21;
  *(a9 + 24) = v22;
  *&v39 = a12;
  *(&v39 + 1) = v18;
  v40 = a13;
  v41 = a14;
  v42 = a15;
  v43 = a16;
  v44 = a17;
  v23 = type metadata accessor for OutlineGroup(0, &v39);
  v24 = v23[19];
  *&v39 = a12;
  *(&v39 + 1) = v18;
  v40 = a13;
  v41 = a14;
  v42 = a15;
  v43 = a16;
  v44 = a17;
  v25 = type metadata accessor for OutlinePrimitive.Base(0, &v39);
  result = (*(*(v25 - 8) + 32))(a9 + v24, a1, v25);
  *(a9 + v23[20]) = a2;
  v27 = (a9 + v23[21]);
  *v27 = a3;
  v27[1] = a4;
  v28 = (a9 + v23[22]);
  *v28 = a5;
  v28[1] = a6;
  v29 = (a9 + v23[23]);
  *v29 = a7;
  v29[1] = a8;
  v30 = (a9 + v23[24]);
  *v30 = a10;
  v30[1] = a11;
  return result;
}

void OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:expandedElements:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v22 = static Array._allocateUninitialized(_:)();
  if (MEMORY[0x18D00CDF0](v22, v21))
  {
    v23 = specialized Set.init(_nonEmptyArrayLiteral:)(v22, v21, a20);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CD0];
  }

  v47 = v23;
  type metadata accessor for Set();
  StateOrBinding.init(wrappedValue:)();
  v24 = v42;
  v25 = v43;
  *a9 = v41;
  *(a9 + 16) = v24;
  *(a9 + 24) = v25;
  *&v41 = a15;
  *(&v41 + 1) = v21;
  v42 = a16;
  v43 = a17;
  v44 = a18;
  v45 = a19;
  v46 = a20;
  v26 = type metadata accessor for OutlineGroup(0, &v41);
  v27 = v26[19];
  *&v41 = a15;
  *(&v41 + 1) = v21;
  v42 = a16;
  v43 = a17;
  v44 = a18;
  v45 = a19;
  v46 = a20;
  v28 = type metadata accessor for OutlinePrimitive.Base(0, &v41);
  (*(*(v28 - 8) + 32))(a9 + v27, a1, v28);
  *(a9 + v26[20]) = a2;
  v29 = (a9 + v26[21]);
  *v29 = a3;
  v29[1] = a4;
  v30 = (a9 + v26[22]);
  *v30 = a5;
  v30[1] = a6;
  v31 = (a9 + v26[23]);
  *v31 = a7;
  v31[1] = a8;
  v32 = (a9 + v26[24]);
  *v32 = a10;
  v32[1] = a11;
  outlined consume of StateOrBinding<Set<B>><A, B, C, D, E><A1>(*a9, *(a9 + 8), *(a9 + 16), *(a9 + 24));
  *a9 = a12;
  *(a9 + 8) = a13;
  *(a9 + 16) = a14;
  *(a9 + 24) = 1;
}

void *(*static OutlineGroup.ChildPath.state(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = a7;
  v14[8] = a1;

  return partial apply for implicit closure #1 in TabForEach<>._identifiedView.getter;
}

uint64_t (*static OutlineGroup.ChildPath.binding<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a7;
  v16[8] = a8;
  v16[9] = a1;
  v17 = type metadata accessor for Binding();
  v19[0] = a7;
  v19[1] = a8;
  swift_getWitnessTable(MEMORY[0x1E6981950], v17, v19);

  return partial apply for closure #1 in static OutlineGroup.ChildPath.binding<A>(_:);
}

uint64_t closure #1 in static OutlineGroup.ChildPath.binding<A>(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v66 = a7;
  v67 = a8;
  v62 = a6;
  v63 = a3;
  v64 = a4;
  v65 = a5;
  v68 = a9;
  v12 = (*a2 + *MEMORY[0x1E69E6CE8]);
  v13 = *v12;
  v14 = type metadata accessor for Binding();
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v53 - v17;
  v18 = v12[1];
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  v23 = *(v13 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v53 - v26;
  v59 = v28;
  v29 = a1;
  MEMORY[0x18D00ACC0](v25);
  swift_getAtKeyPath();
  (*(v23 + 8))(v27, v13);
  v30 = *(v18 + 16);
  v31 = 1;
  LODWORD(a1) = (*(*(v30 - 8) + 48))(v22, 1, v30);
  (*(v19 + 8))(v22, v18);
  if (a1 != 1)
  {
    v56 = v29;
    v57 = a10;
    v32 = v60;
    v55 = *(v60 + 16);
    v33 = v59;
    v55(v61, v29, v59);
    v34 = (*(v32 + 80) + 96) & ~*(v32 + 80);
    v54 = v34;
    v35 = (v15 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    *(v36 + 2) = 0;
    *(v36 + 3) = 0;
    v37 = v64;
    *(v36 + 4) = v63;
    *(v36 + 5) = v37;
    v38 = v61;
    v39 = v62;
    *(v36 + 6) = v65;
    *(v36 + 7) = v39;
    v40 = v66;
    v41 = v67;
    *(v36 + 8) = v30;
    *(v36 + 9) = v40;
    v42 = v57;
    *(v36 + 10) = v41;
    *(v36 + 11) = v42;
    v43 = *(v32 + 32);
    v43(&v36[v34], v38, v33);
    *&v36[v35] = a2;
    v44 = v58;
    v55(v58, v56, v33);
    v45 = swift_allocObject();
    *(v45 + 2) = 0;
    *(v45 + 3) = 0;
    v46 = v64;
    *(v45 + 4) = v63;
    *(v45 + 5) = v46;
    v47 = v62;
    *(v45 + 6) = v65;
    *(v45 + 7) = v47;
    v48 = v66;
    v49 = v67;
    *(v45 + 8) = v30;
    *(v45 + 9) = v48;
    v50 = v57;
    *(v45 + 10) = v49;
    *(v45 + 11) = v50;
    v43(&v45[v54], v44, v33);
    *&v45[v35] = a2;
    swift_retain_n();
    Binding.init(get:set:)();
    v31 = 0;
  }

  v51 = type metadata accessor for Binding();
  return (*(*(v51 - 8) + 56))(v68, v31, 1, v51);
}

uint64_t closure #1 in closure #1 in static OutlineGroup.ChildPath.binding<A>(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8) - 8;
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v17 - v5;
  v8 = *v7;
  v9 = *(*v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v13);
  swift_getAtKeyPath();
  (*(v9 + 8))(v12, v8);
  v14 = *(v4 + 24);
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v6, 1, v14);
  if (result != 1)
  {
    return (*(v15 + 32))(a3, v6, v14);
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in closure #1 in static OutlineGroup.ChildPath.binding<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (*a5 + *MEMORY[0x1E69E6CE8]);
  v6 = *v5;
  v7 = *(*v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - v8;
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v15 = *(v14 + 24);
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v18 - v12, v11);
  (*(v16 + 56))(v13, 0, 1, v15);
  type metadata accessor for Binding();
  MEMORY[0x18D00ACC0]();
  swift_setAtWritableKeyPath();
  specialized Binding.wrappedValue.setter(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t OutlineGroup<>.init<A>(_:children:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, _UNKNOWN **a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a10)
{
  v36 = a2;
  v37 = a4;
  v39 = a3;
  v40 = a1;
  v38 = a9;
  KeyPath = a10;
  v14 = (*a2 + *MEMORY[0x1E69E77B0]);
  v15 = *(v14[1] + 16);
  v48 = a6;
  v49 = &type metadata for OutlineSubgroupChildren;
  v50 = a8;
  v51 = &protocol witness table for OutlineSubgroupChildren;
  v16 = type metadata accessor for DisclosureGroup(255, &v48);
  v17 = *v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = v15;
  v49 = a5;
  v50 = a6;
  v51 = a6;
  v52 = v16;
  v53 = a7;
  v54 = AssociatedConformanceWitness;
  v18 = type metadata accessor for OutlinePrimitive.Base(0, &v48);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - v20;
  v35 = *(v17 - 8);
  v22 = *(v35 + 16);
  v34 = v17;
  v22(&v31 - v20, v40, v17, v19);
  swift_storeEnumTagMultiPayload();
  v41 = v15;
  v42 = a5;
  v43 = a6;
  v44 = v17;
  v23 = a7;
  v45 = a7;
  v46 = a8;
  v47 = KeyPath;
  KeyPath = swift_getKeyPath();
  v24 = swift_checkMetadataState();
  v25 = swift_allocObject();
  v25[2] = a5;
  v25[3] = a6;
  v25[4] = a6;
  v25[5] = v24;
  v25[6] = a7;
  v26 = AssociatedConformanceWitness;
  v27 = v36;
  v25[7] = AssociatedConformanceWitness;
  v25[8] = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = a6;
  *(v28 + 24) = a8;
  v29 = v37;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v21, KeyPath, partial apply for implicit closure #1 in TabForEach<>._identifiedView.getter, v25, v39, v29, v39, v29, v38, partial apply for defaultGrouping<A>(isExpanded:parent:), v28, v15, a6, a6, v24, v23, v26);

  return (*(v35 + 8))(v40, v34);
}

{
  v39 = a2;
  v40 = a4;
  v42 = a3;
  v43 = a1;
  v41 = a9;
  KeyPath = a10;
  v13 = (*a2 + *MEMORY[0x1E69E77B0]);
  v14 = *(v13[1] + 16);
  v51 = a6;
  v52 = &type metadata for OutlineSubgroupChildren;
  v53 = a8;
  v54 = &protocol witness table for OutlineSubgroupChildren;
  v35 = a8;
  v16 = type metadata accessor for DisclosureGroup(255, &v51);
  v17 = *v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = v14;
  v52 = a5;
  v53 = a6;
  v54 = a6;
  v55 = v16;
  v56 = a7;
  v57 = AssociatedConformanceWitness;
  v18 = type metadata accessor for OutlinePrimitive.Base(0, &v51);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  v22 = *(v14 - 8);
  v23 = *(v22 + 16);
  v37 = v14;
  v23(&v34 - v20, v43, v14, v19);
  swift_storeEnumTagMultiPayload();
  v44 = v14;
  v45 = a5;
  v46 = a6;
  v47 = v17;
  v48 = a7;
  v49 = a8;
  v50 = KeyPath;
  KeyPath = swift_getKeyPath();
  v24 = swift_checkMetadataState();
  v25 = swift_allocObject();
  v25[2] = a5;
  v25[3] = a6;
  v25[4] = a6;
  v25[5] = v24;
  v26 = a7;
  v27 = AssociatedConformanceWitness;
  v25[6] = a7;
  v25[7] = v27;
  v25[8] = v39;
  v28 = swift_allocObject();
  v29 = v35;
  *(v28 + 16) = a6;
  *(v28 + 24) = v29;
  v30 = v40;

  v33 = v26;
  v31 = v37;
  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v21, KeyPath, partial apply for implicit closure #1 in TabForEach<>._identifiedView.getter, v25, v42, v30, v42, v30, v41, defaultGrouping<A>(isExpanded:parent:)partial apply, v28, v37, a6, a6, v24, v33, v27);

  return (*(v22 + 8))(v43, v31);
}

uint64_t defaultGrouping<A>(isExpanded:parent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a3;
  v23 = a7;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = lazy protocol witness table accessor for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren();
  v24[0] = a5;
  v24[1] = &type metadata for OutlineSubgroupChildren;
  v24[2] = a6;
  v24[3] = v15;
  v16 = type metadata accessor for DisclosureGroupConfiguration(0, v24);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v21[-v18];
  (*(v12 + 16))(v14, a4, a5, v17);

  DisclosureGroupConfiguration.init(isExpanded:label:)(a1, a2, v22, v14, a5, &type metadata for OutlineSubgroupChildren, a6, v15, v19);
  return DisclosureGroup<>.init(configuration:)(v19, a5, &type metadata for OutlineSubgroupChildren, a6, v15, v23);
}

void OutlineGroup<>.init<A>(_:children:expandedElements:content:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, _UNKNOWN **a10, uint64_t a11, _UNKNOWN **a12, uint64_t a13)
{
  v15 = *a2;
  v16 = static Array._allocateUninitialized(_:)();
  v17 = MEMORY[0x18D00CDF0](v16, a8);
  v18 = MEMORY[0x1E69E77B0];
  if (v17)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = specialized Set.init(_nonEmptyArrayLiteral:)(v16, a8, AssociatedConformanceWitness);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CD0];
  }

  v21 = *(*(v15 + *v18 + 8) + 16);
  *&v45 = a10;
  *(&v45 + 1) = &type metadata for OutlineSubgroupChildren;
  v46 = a12;
  v47 = &protocol witness table for OutlineSubgroupChildren;
  v22 = type metadata accessor for DisclosureGroup(0, &v45);
  v23 = swift_getAssociatedConformanceWitness();
  v51 = v20;
  type metadata accessor for Set();
  StateOrBinding.init(wrappedValue:)();
  v24 = v46;
  v25 = v47;
  *a9 = v45;
  a9[2] = v24;
  *(a9 + 24) = v25;
  *&v45 = v21;
  *(&v45 + 1) = a8;
  v46 = a10;
  v47 = a10;
  v48 = v22;
  v49 = a11;
  v50 = v23;
  v26 = type metadata accessor for OutlineGroup(0, &v45);
  v27 = *(v21 - 8);
  (*(v27 + 16))(a9 + v26[19], a1, v21);
  *&v45 = v21;
  *(&v45 + 1) = a8;
  v46 = a10;
  v47 = a10;
  v48 = v22;
  v49 = a11;
  v50 = v23;
  type metadata accessor for OutlinePrimitive.Base(0, &v45);
  v28 = swift_storeEnumTagMultiPayload();
  MEMORY[0x1EEE9AC00](v28);
  *(a9 + v26[20]) = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[2] = a8;
  v29[3] = a10;
  v29[4] = a10;
  v29[5] = v22;
  v29[6] = a11;
  v29[7] = v23;
  v29[8] = a2;
  (*(v27 + 8))(a1, v21);
  v30 = (a9 + v26[21]);
  *v30 = partial apply for implicit closure #1 in TabForEach<>._identifiedView.getter;
  v30[1] = v29;
  v31 = (a9 + v26[22]);
  *v31 = a6;
  v31[1] = a7;
  v32 = (a9 + v26[23]);
  *v32 = a6;
  v32[1] = a7;
  v33 = swift_allocObject();
  *(v33 + 16) = a10;
  *(v33 + 24) = a12;
  v34 = (a9 + v26[24]);
  *v34 = defaultGrouping<A>(isExpanded:parent:)partial apply;
  v34[1] = v33;
  v35 = *a9;
  v36 = a9[1];
  v37 = a9[2];
  LOBYTE(v26) = *(a9 + 24);

  outlined consume of StateOrBinding<Set<B>><A, B, C, D, E><A1>(v35, v36, v37, v26);
  *a9 = a3;
  a9[1] = a4;
  a9[2] = a5;
  *(a9 + 24) = 1;
}

uint64_t OutlineGroup<>.init<A>(_:id:children:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _UNKNOWN **a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v39 = a5;
  v40 = a2;
  v41 = a9;
  v42 = a4;
  v35 = a1;
  v36 = a3;
  v14 = *a2;
  v15 = *MEMORY[0x1E69E77B0];
  v16 = *MEMORY[0x1E69E77B0] + 8;
  v17 = *(*(*a3 + v16) + 16);
  v37 = a10;
  v38 = v17;
  v18 = *(v14 + v16);
  v43 = a6;
  v44 = &type metadata for OutlineSubgroupChildren;
  v45 = a10;
  v46 = &protocol witness table for OutlineSubgroupChildren;
  v19 = type metadata accessor for DisclosureGroup(255, &v43);
  v43 = v17;
  v44 = v18;
  v45 = a6;
  v46 = a6;
  v47 = v19;
  v48 = a7;
  v20 = a7;
  v49 = a8;
  v21 = a8;
  v22 = type metadata accessor for OutlinePrimitive.Base(0, &v43);
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v34 = *(v14 + v15);
  v26 = *(v34 - 8);
  (*(v26 + 16))(&v34 - v24, a1, v34, v23);
  swift_storeEnumTagMultiPayload();
  v27 = swift_checkMetadataState();
  v28 = swift_allocObject();
  v28[2] = v18;
  v28[3] = a6;
  v28[4] = a6;
  v28[5] = v27;
  v28[6] = v20;
  v28[7] = v21;
  v29 = v21;
  v28[8] = v36;
  v30 = swift_allocObject();
  v31 = v37;
  *(v30 + 16) = a6;
  *(v30 + 24) = v31;
  v32 = v39;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v25, v40, partial apply for implicit closure #1 in TabForEach<>._identifiedView.getter, v28, v42, v32, v42, v32, v41, defaultGrouping<A>(isExpanded:parent:)partial apply, v30, v38, a6, a6, v27, v20, v29);

  return (*(v26 + 8))(v35, v34);
}

{
  v37 = a8;
  v38 = a1;
  v40 = a5;
  v41 = a2;
  v42 = a9;
  v43 = a4;
  v15 = *a2;
  v16 = *MEMORY[0x1E69E77B0] + 8;
  v17 = *(*a3 + v16);
  v39 = a10;
  v18 = *(v17 + 16);
  v19 = *(v15 + v16);
  v44 = a6;
  v45 = &type metadata for OutlineSubgroupChildren;
  v46 = a10;
  v47 = &protocol witness table for OutlineSubgroupChildren;
  v20 = type metadata accessor for DisclosureGroup(255, &v44);
  v44 = v18;
  v45 = v19;
  v46 = a6;
  v47 = a6;
  v48 = v20;
  v49 = a7;
  v50 = a8;
  v21 = type metadata accessor for OutlinePrimitive.Base(0, &v44);
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v24 = &v35 - v23;
  v36 = v18;
  v25 = *(v18 - 8);
  (*(v25 + 16))(&v35 - v23, a1, v18, v22);
  swift_storeEnumTagMultiPayload();
  v26 = swift_checkMetadataState();
  v27 = swift_allocObject();
  v27[2] = v19;
  v27[3] = a6;
  v27[4] = a6;
  v27[5] = v26;
  v28 = v37;
  v27[6] = a7;
  v27[7] = v28;
  v27[8] = a3;
  v29 = swift_allocObject();
  v30 = v39;
  v31 = v40;
  *(v29 + 16) = a6;
  *(v29 + 24) = v30;

  v34 = v26;
  v32 = v36;
  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v24, v41, partial apply for implicit closure #1 in TabForEach<>._identifiedView.getter, v27, v43, v31, v43, v31, v42, defaultGrouping<A>(isExpanded:parent:)partial apply, v29, v36, a6, a6, v34, a7, v28);

  return (*(v25 + 8))(v38, v32);
}

uint64_t OutlineGroup<>.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a3;
  v56 = a4;
  v54 = a2;
  v57 = a5;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v60 = *(a1 + 16);
  v61 = v7;
  v13 = v60;
  v51 = v8;
  v52 = v60;
  v62 = v8;
  v63 = v9;
  v14 = v8;
  v15 = v9;
  v49 = v10;
  v50 = v9;
  v64 = v10;
  v65 = v11;
  v16 = v10;
  v17 = v11;
  v48 = v11;
  v66 = v12;
  v47 = v12;
  v46 = type metadata accessor for OutlinePrimitive.Base(0, &v60);
  v18 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v58 = &v42 - v19;
  v60 = v13;
  v61 = v7;
  v62 = v14;
  v63 = v15;
  v64 = v16;
  v65 = v17;
  v66 = v12;
  v20 = type metadata accessor for OutlinePrimitive(0, &v60);
  v53 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v42 - v25;
  (*(v18 + 16))(v58, v5 + *(a1 + 76), v46, v24);
  v27 = *(v5 + *(a1 + 80));
  v28 = (v5 + *(a1 + 84));
  v29 = v28[1];
  v46 = *v28;

  v45 = OutlineGroup.$expandedElements.getter(a1);
  v44 = v30;
  v43 = v31;
  v32 = *(a1 + 92);
  v33 = (v5 + *(a1 + 88));
  v34 = v33[1];
  v42 = *v33;
  v35 = *(v5 + v32);
  v36 = *(v5 + v32 + 8);
  v37 = (v5 + *(a1 + 96));
  v39 = *v37;
  v38 = v37[1];

  OutlinePrimitive.init(base:id:children:expandedElements:parentContent:leafContent:grouping:)(v58, v27, v46, v29, v45, v44, v43, v42, v22, v34, v35, v36, v39, v38, v52, v51, v50, v49, v48, v47);
  v59[0] = v54;
  v59[1] = v55;
  v59[2] = v56;
  swift_getWitnessTable(protocol conformance descriptor for <> OutlinePrimitive<A, B, C, D, E>, v20, v59);
  static ViewBuilder.buildExpression<A>(_:)();
  v40 = *(v53 + 8);
  v40(v22, v20);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v40)(v26, v20);
}

uint64_t OutlineGroup<>.init<A, B>(_:children:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, _UNKNOWN **a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)()@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v38 = a8;
  v39 = a7;
  v45 = a4;
  v47 = a3;
  v48 = a1;
  v44 = a2;
  v46 = a9;
  v15 = *a2;
  v37 = a10;
  v16 = (v15 + *MEMORY[0x1E69E6CE8]);
  KeyPath = *(v16[1] + 16);
  v42 = type metadata accessor for Binding();
  v57 = a6;
  v58 = &type metadata for OutlineSubgroupChildren;
  v59 = a7;
  v60 = &protocol witness table for OutlineSubgroupChildren;
  v17 = type metadata accessor for DisclosureGroup(255, &v57);
  v64[0] = a8;
  v64[1] = a10;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981950], v42, v64);
  v18 = *v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = v42;
  v58 = a5;
  v59 = a6;
  v60 = a6;
  v61 = v17;
  v62 = WitnessTable;
  v63 = AssociatedConformanceWitness;
  v19 = type metadata accessor for OutlinePrimitive.Base(0, &v57);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v41 = type metadata accessor for Binding();
  v22 = *(v41 - 8);
  (*(v22 + 16))(v21, v48, v41);
  swift_storeEnumTagMultiPayload();
  v49 = a5;
  v50 = a6;
  v51 = KeyPath;
  v52 = v18;
  v23 = v39;
  v24 = v38;
  v53 = v39;
  v54 = v38;
  v25 = v37;
  v55 = v37;
  v56 = a11;
  KeyPath = swift_getKeyPath();
  v26 = swift_checkMetadataState();
  v27 = a5;
  v28 = AssociatedConformanceWitness;
  v38 = static OutlineGroup.ChildPath.binding<A>(_:)(v44, v27, a6, a6, v26, AssociatedConformanceWitness, v24, v25);
  v30 = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = a6;
  *(v31 + 24) = v23;
  v32 = v45;
  swift_retain_n();
  v33 = swift_checkMetadataState();
  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v21, KeyPath, v38, v30, v47, v32, v47, v32, v46, defaultGrouping<A>(isExpanded:parent:)partial apply, v31, v33, a6, a6, v26, WitnessTable, v28);

  return (*(v22 + 8))(v48, v41);
}

uint64_t OutlineGroup<>.init<A, B>(_:children:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, _UNKNOWN **a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void *a11)
{
  v38 = a8;
  v39 = a7;
  v41 = a4;
  v43 = a3;
  v44 = a2;
  v45 = a1;
  v42 = a9;
  v15 = *a2;
  KeyPath = a11;
  v16 = (v15 + *MEMORY[0x1E69E6CE8]);
  v17 = *(v16[1] + 16);
  v18 = type metadata accessor for Binding();
  v54 = a6;
  v55 = &type metadata for OutlineSubgroupChildren;
  v56 = a7;
  v57 = &protocol witness table for OutlineSubgroupChildren;
  v19 = type metadata accessor for DisclosureGroup(255, &v54);
  v61[0] = a8;
  v61[1] = a10;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981950], v18, v61);
  v20 = *v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = v18;
  v55 = a5;
  v56 = a6;
  v57 = a6;
  v58 = v19;
  v59 = WitnessTable;
  v60 = AssociatedConformanceWitness;
  v21 = type metadata accessor for OutlinePrimitive.Base(0, &v54);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &KeyPath - v22;
  v24 = swift_checkMetadataState();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v23, v45, v24);
  swift_storeEnumTagMultiPayload();
  v46 = a5;
  v47 = a6;
  v48 = v17;
  v49 = v20;
  v26 = v39;
  v27 = v38;
  v50 = v39;
  v51 = v38;
  v52 = a10;
  v53 = KeyPath;
  KeyPath = swift_getKeyPath();
  v28 = swift_checkMetadataState();
  v29 = AssociatedConformanceWitness;
  v30 = static OutlineGroup.ChildPath.binding<A>(_:)(v44, a5, a6, a6, v28, AssociatedConformanceWitness, v27, a10);
  v32 = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = a6;
  *(v33 + 24) = v26;
  v34 = v41;
  swift_retain_n();
  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v23, KeyPath, v30, v32, v43, v34, v43, v34, v42, defaultGrouping<A>(isExpanded:parent:)partial apply, v33, v24, a6, a6, v28, WitnessTable, v29);

  return (*(v25 + 8))(v45, v24);
}

uint64_t OutlineGroup<>.init<A, B>(_:id:children:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _UNKNOWN **a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v39 = a5;
  v41 = a4;
  v42 = a2;
  v43 = a1;
  v40 = a9;
  v14 = *a2;
  v38 = a3;
  v15 = *(*(*a3 + *MEMORY[0x1E69E6CE8] + 8) + 16);
  v36 = type metadata accessor for Binding();
  v16 = (v14 + *MEMORY[0x1E69E77B0]);
  v17 = v16[1];
  v52 = a6;
  v53 = &type metadata for OutlineSubgroupChildren;
  v54 = a8;
  v55 = &protocol witness table for OutlineSubgroupChildren;
  v33 = a8;
  v34 = type metadata accessor for DisclosureGroup(255, &v52);
  v59[0] = a10;
  v59[1] = a11;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981950], v36, v59);
  v52 = v36;
  v53 = v17;
  v54 = a6;
  v55 = a6;
  v56 = v34;
  v57 = WitnessTable;
  v32 = a7;
  v58 = a7;
  v18 = type metadata accessor for OutlinePrimitive.Base(0, &v52);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v44 = v17;
  v45 = a6;
  v46 = v15;
  v47 = *v16;
  v48 = a7;
  v49 = a8;
  v50 = a10;
  v51 = a11;
  swift_getKeyPath();
  v35 = _AppendKeyPath.appending<A, B, C>(path:)();

  v21 = type metadata accessor for Binding();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v20, v43, v21);
  swift_storeEnumTagMultiPayload();
  v23 = swift_checkMetadataState();
  v24 = v32;
  v34 = static OutlineGroup.ChildPath.binding<A>(_:)(v38, v17, a6, a6, v23, v32, a10, a11);
  v26 = v25;
  v27 = swift_allocObject();
  v28 = v33;
  *(v27 + 16) = a6;
  *(v27 + 24) = v28;
  v29 = v39;
  swift_retain_n();
  v30 = swift_checkMetadataState();
  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v20, v35, v34, v26, v41, v29, v41, v29, v40, defaultGrouping<A>(isExpanded:parent:)partial apply, v27, v30, a6, a6, v23, WitnessTable, v24);

  return (*(v22 + 8))(v43, v21);
}

{
  v42 = a5;
  v44 = a4;
  v45 = a2;
  v46 = a1;
  v43 = a9;
  v14 = *a2;
  v41 = a3;
  v15 = *a3;
  v34[1] = a11;
  v16 = *(*(v15 + *MEMORY[0x1E69E6CE8] + 8) + 16);
  v17 = type metadata accessor for Binding();
  v18 = (v14 + *MEMORY[0x1E69E77B0]);
  v19 = v18[1];
  v55 = a6;
  v56 = &type metadata for OutlineSubgroupChildren;
  v57 = a8;
  v58 = &protocol witness table for OutlineSubgroupChildren;
  v20 = a8;
  v38 = a8;
  v39 = type metadata accessor for DisclosureGroup(255, &v55);
  v62[0] = a10;
  v62[1] = a11;
  v35 = a10;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981950], v17, v62);
  v55 = v17;
  v56 = v19;
  v36 = v19;
  v57 = a6;
  v58 = a6;
  v59 = v39;
  v60 = WitnessTable;
  v61 = a7;
  v21 = type metadata accessor for OutlinePrimitive.Base(0, &v55);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v34 - v22;
  v47 = v19;
  v48 = a6;
  v49 = v16;
  v50 = *v18;
  v51 = a7;
  v52 = v20;
  v53 = a10;
  v54 = a11;
  swift_getKeyPath();
  v37 = _AppendKeyPath.appending<A, B, C>(path:)();

  v24 = swift_checkMetadataState();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v23, v46, v24);
  swift_storeEnumTagMultiPayload();
  v26 = swift_checkMetadataState();
  v27 = a7;
  v39 = static OutlineGroup.ChildPath.binding<A>(_:)(v41, v36, a6, a6, v26, a7, v35, a11);
  v29 = v28;
  v30 = swift_allocObject();
  v31 = v38;
  *(v30 + 16) = a6;
  *(v30 + 24) = v31;
  v32 = v42;
  swift_retain_n();
  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v23, v37, v39, v29, v44, v32, v44, v32, v43, defaultGrouping<A>(isExpanded:parent:)partial apply, v30, v24, a6, a6, v26, WitnessTable, v27);

  return (*(v25 + 8))(v46, v24);
}

uint64_t specialized Set.init(_nonEmptyArrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v39 - v10;
  v40 = v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - v14;
  if (MEMORY[0x18D00CD40](v13))
  {
    type metadata accessor for _SetStorage();
    v16 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  v44 = MEMORY[0x18D00CDF0](v5, a2);
  if (!v44)
  {
    return v16;
  }

  v17 = 0;
  v49 = (v6 + 16);
  v50 = v16 + 56;
  v46 = v6 + 32;
  v48 = (v6 + 8);
  v41 = v6;
  v42 = v5;
  v43 = v15;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v40 != 8)
      {
        goto LABEL_23;
      }

      v52 = result;
      v19 = *v49;
      (*v49)(v15, &v52, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v47 = v21;
    v45 = *(v6 + 32);
    v45(v51, v15, a2);
    v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v23 = v16;
    v24 = -1 << *(v16 + 32);
    v25 = v22 & ~v24;
    v26 = v25 >> 6;
    v27 = *(v50 + 8 * (v25 >> 6));
    v28 = 1 << v25;
    v29 = *(v6 + 72);
    if (((1 << v25) & v27) != 0)
    {
      v30 = ~v24;
      do
      {
        v19(v8, (*(v23 + 48) + v29 * v25), a2);
        v31 = a3;
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *v48;
        (*v48)(v8, a2);
        if (v32)
        {
          v33(v51, a2);
          a3 = v31;
          v6 = v41;
          v5 = v42;
          v16 = v23;
          goto LABEL_7;
        }

        v25 = (v25 + 1) & v30;
        v26 = v25 >> 6;
        v27 = *(v50 + 8 * (v25 >> 6));
        v28 = 1 << v25;
        a3 = v31;
      }

      while (((1 << v25) & v27) != 0);
      v6 = v41;
      v5 = v42;
    }

    v34 = v51;
    *(v50 + 8 * v26) = v28 | v27;
    v35 = *(v23 + 48) + v29 * v25;
    v16 = v23;
    result = (v45)(v35, v34, a2);
    v37 = *(v23 + 16);
    v20 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v20)
    {
      break;
    }

    *(v23 + 16) = v38;
LABEL_7:
    v15 = v43;
    v17 = v47;
    if (v47 == v44)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t instantiation function for generic protocol witness table for OutlineSubgroupChildren(uint64_t a1)
{
  result = lazy protocol witness table accessor for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren()
{
  result = lazy protocol witness table cache variable for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren;
  if (!lazy protocol witness table cache variable for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OutlineSubgroupChildren, &type metadata for OutlineSubgroupChildren, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren;
  if (!lazy protocol witness table cache variable for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OutlineSubgroupChildren, &type metadata for OutlineSubgroupChildren, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren);
  }

  return result;
}

uint64_t type metadata completion function for OutlineGroup(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 32);
  v5[0] = *(a1 + 16);
  v5[1] = v2;
  v5[2] = *(a1 + 48);
  v6 = v1;
  v7 = &unk_18CD7E5E0;
  result = type metadata accessor for OutlinePrimitive.Base(319, v5);
  if (v4 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v9 = MEMORY[0x1E69E5D20] + 64;
    v10 = MEMORY[0x1E69E7CB8] + 64;
    v11 = MEMORY[0x1E69E7CB8] + 64;
    v12 = MEMORY[0x1E69E7CB8] + 64;
    v13 = MEMORY[0x1E69E7CB8] + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for OutlineGroup(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v5 - 8);
  v9 = *(v8 + 80) | *(v7 + 80);
  v10 = (*(v8 + 80) | *(v7 + 80));
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v11 = *(*(v5 - 8) + 64);
  }

  v12 = v10 <= 7 && (v9 & 0x100000) == 0;
  if (!v12 || ((((((((((v11 + 8 + ((v10 + 25) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = v18 + ((v9 & 0xF8 ^ 0x1F8u) & (v10 + 16));
    goto LABEL_38;
  }

  v13 = *(a2 + 24);
  if (v13 >= 2)
  {
    v13 = *a2 + 2;
  }

  v49 = *(v5 - 8);
  v50 = *(AssociatedTypeWitness - 8);
  v51 = AssociatedTypeWitness;
  v14 = ~v10;
  v15 = *a2;
  v16 = a2[1];
  v48 = v11 + 8;
  if (v13 == 1)
  {
    *(a1 + 16) = a2[2];

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  *a1 = v15;
  *(a1 + 8) = v16;
  *(a1 + 24) = v17;
  v19 = a2 + v10;
  v20 = (a1 + v10 + 25) & v14;
  v21 = ((v19 + 25) & v14);
  v22 = *(v21 + v11);
  v23 = v22 - 2;
  if (v22 < 2)
  {
    v26 = v50;
    v25 = v51;
    v27 = v49;
  }

  else
  {
    if (v11 <= 3)
    {
      v24 = v11;
    }

    else
    {
      v24 = 4;
    }

    v26 = v50;
    v25 = v51;
    v27 = v49;
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v28 = *v21;
      }

      else if (v24 == 3)
      {
        v28 = *v21 | (*(v21 + 2) << 16);
      }

      else
      {
        v28 = *v21;
      }

LABEL_29:
      v29 = (v28 | (v23 << (8 * v11))) + 2;
      v22 = v28 + 2;
      if (v11 < 4)
      {
        v22 = v29;
      }

      goto LABEL_31;
    }

    if (v24)
    {
      v28 = *v21;
      goto LABEL_29;
    }
  }

LABEL_31:
  v30 = v22 == 1;
  if (v22 == 1)
  {
    v31 = v27;
  }

  else
  {
    v31 = v26;
  }

  if (v22 == 1)
  {
    v32 = v5;
  }

  else
  {
    v32 = v25;
  }

  (*(v31 + 16))(v20, v21, v32);
  *(v20 + v11) = v30;
  v33 = ((v48 + v20) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v21 + v48) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;
  v35 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
  v36 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
  v37 = v36[1];
  *v35 = *v36;
  v35[1] = v37;
  v38 = ((v35 + 23) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v36 + 23) & 0xFFFFFFFFFFFFFFF8);
  v40 = v39[1];
  *v38 = *v39;
  v38[1] = v40;
  v41 = ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  v42 = ((v39 + 23) & 0xFFFFFFFFFFFFFFF8);
  v43 = v42[1];
  *v41 = *v42;
  v41[1] = v43;
  v44 = ((v41 + 23) & 0xFFFFFFFFFFFFFFF8);
  v45 = ((v42 + 23) & 0xFFFFFFFFFFFFFFF8);
  v46 = v45[1];
  *v44 = *v45;
  v44[1] = v46;

LABEL_38:

  return a1;
}

double destroy for OutlineGroup(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4 >= 2)
  {
    v4 = *a1 + 2;
  }

  if (v4 == 1)
  {
  }

  else
  {
  }

  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(*(v5 - 8) + 80) | *(v7 + 80);
  v9 = a1 + v8 + 25;
  v10 = (v9 & ~v8);
  if (*(*(v5 - 8) + 64) <= *(v7 + 64))
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v11 = *(*(v5 - 8) + 64);
  }

  v12 = v10[v11];
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_23;
      }

      v15 = *v10;
    }

    else if (v14 == 2)
    {
      v15 = *v10;
    }

    else if (v14 == 3)
    {
      v15 = *v10 | (*((v9 & ~v8) + 2) << 16);
    }

    else
    {
      v15 = *v10;
    }

    v16 = (v15 | (v13 << (8 * v11))) + 2;
    v12 = v15 + 2;
    if (v11 < 4)
    {
      v12 = v16;
    }
  }

LABEL_23:
  if (v12 == 1)
  {
    v7 = *(v5 - 8);
    v17 = v5;
  }

  else
  {
    v17 = AssociatedTypeWitness;
  }

  (*(v7 + 8))(v9 & ~v8, v17);

  return result;
}

uint64_t initializeWithCopy for OutlineGroup(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a2 + 24);
  if (v6 >= 2)
  {
    v6 = *a2 + 2;
  }

  v7 = *a2;
  v8 = a2[1];
  if (v6 == 1)
  {
    *(a1 + 16) = a2[2];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 24) = v9;
  v10 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(*(v10 - 8) + 80) | *(v12 + 80);
  v14 = v13 + 25;
  v15 = ~v13;
  v16 = ((a2 + v13 + 25) & ~v13);
  if (*(*(v10 - 8) + 64) <= *(v12 + 64))
  {
    v17 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v17 = *(*(v10 - 8) + 64);
  }

  v18 = v16[v17];
  v19 = v18 - 2;
  if (v18 >= 2)
  {
    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_23;
      }

      v21 = *v16;
    }

    else if (v20 == 2)
    {
      v21 = *v16;
    }

    else if (v20 == 3)
    {
      v21 = *v16 | (v16[2] << 16);
    }

    else
    {
      v21 = *v16;
    }

    v22 = (v21 | (v19 << (8 * v17))) + 2;
    v18 = v21 + 2;
    if (v17 < 4)
    {
      v18 = v22;
    }
  }

LABEL_23:
  v23 = (v14 + a1) & v15;
  v24 = v18 == 1;
  if (v18 == 1)
  {
    v12 = *(v10 - 8);
    v25 = v10;
  }

  else
  {
    v25 = AssociatedTypeWitness;
  }

  (*(v12 + 16))((v14 + a1) & v15, v16, v25);
  *(v23 + v17) = v24;
  v26 = ((v17 + 8 + v23) & 0xFFFFFFFFFFFFFFF8);
  v27 = (&v16[v17 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  v30 = v29[1];
  *v28 = *v29;
  v28[1] = v30;
  v31 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v29 + 23) & 0xFFFFFFFFFFFFFFF8);
  v33 = v32[1];
  *v31 = *v32;
  v31[1] = v33;
  v34 = ((v31 + 23) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v32 + 23) & 0xFFFFFFFFFFFFFFF8);
  v36 = v35[1];
  *v34 = *v35;
  v34[1] = v36;
  v37 = ((v34 + 23) & 0xFFFFFFFFFFFFFFF8);
  v38 = ((v35 + 23) & 0xFFFFFFFFFFFFFFF8);
  v39 = v38[1];
  *v37 = *v38;
  v37[1] = v39;

  return a1;
}

uint64_t *assignWithCopy for OutlineGroup(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a1 + 24);
    if (v6 >= 2)
    {
      v6 = *a1 + 2;
    }

    if (v6 == 1)
    {
    }

    else
    {
    }

    v7 = *(a2 + 24);
    if (v7 >= 2)
    {
      v7 = *a2 + 2;
    }

    *a1 = *a2;
    a1[1] = a2[1];
    if (v7 == 1)
    {
      a1[2] = a2[2];
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 24) = 0;
    }
  }

  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v8 - 8);
  v12 = *(v11 + 80) | *(v10 + 80);
  v13 = a1 + v12 + 25;
  v14 = (v13 & ~v12);
  v15 = ((a2 + v12 + 25) & ~v12);
  if (*(v11 + 64) <= *(v10 + 64))
  {
    v16 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v16 = *(*(v8 - 8) + 64);
  }

  if (v14 != v15)
  {
    v17 = AssociatedTypeWitness;
    v18 = v14[v16];
    v19 = v18 - 2;
    if (v18 < 2)
    {
      goto LABEL_30;
    }

    if (v16 <= 3)
    {
      v20 = v16;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_30;
      }

      v21 = *v14;
    }

    else if (v20 == 2)
    {
      v21 = *v14;
    }

    else if (v20 == 3)
    {
      v21 = *v14 | (*((v13 & ~v12) + 2) << 16);
    }

    else
    {
      v21 = *v14;
    }

    v22 = (v21 | (v19 << (8 * v16))) + 2;
    v18 = v21 + 2;
    if (v16 < 4)
    {
      v18 = v22;
    }

LABEL_30:
    if (v18 == 1)
    {
      v23 = *(v8 - 8);
    }

    else
    {
      v23 = *(AssociatedTypeWitness - 8);
    }

    if (v18 == 1)
    {
      v24 = v8;
    }

    else
    {
      v24 = AssociatedTypeWitness;
    }

    (*(v23 + 8))(v13 & ~v12, v24);
    v25 = *(v15 + v16);
    v26 = v25 - 2;
    if (v25 >= 2)
    {
      if (v16 <= 3)
      {
        v27 = v16;
      }

      else
      {
        v27 = 4;
      }

      if (v27 > 1)
      {
        if (v27 == 2)
        {
          v28 = *v15;
        }

        else if (v27 == 3)
        {
          v28 = *v15 | (*(v15 + 2) << 16);
        }

        else
        {
          v28 = *v15;
        }

LABEL_48:
        v29 = (v28 | (v26 << (8 * v16))) + 2;
        v25 = v28 + 2;
        if (v16 < 4)
        {
          v25 = v29;
        }

        goto LABEL_50;
      }

      if (v27)
      {
        v28 = *v15;
        goto LABEL_48;
      }
    }

LABEL_50:
    v30 = v25 == 1;
    if (v25 == 1)
    {
      v31 = v11;
    }

    else
    {
      v31 = v10;
    }

    if (v25 == 1)
    {
      v32 = v8;
    }

    else
    {
      v32 = v17;
    }

    (*(v31 + 16))(v14, v15, v32);
    v14[v16] = v30;
  }

  v33 = &v14[v16 + 8];
  v34 = v15 + v16 + 8;
  v35 = (v34 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v33 & 0xFFFFFFFFFFFFFFF8) = *(v34 & 0xFFFFFFFFFFFFFFF8);
  v36 = (v33 & 0xFFFFFFFFFFFFFFF8) + 15;

  v36 &= 0xFFFFFFFFFFFFFFF8;
  v35 &= 0xFFFFFFFFFFFFFFF8;
  v37 = *(v35 + 8);
  *v36 = *v35;
  *(v36 + 8) = v37;

  v38 = ((v36 + 23) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v35 + 23) & 0xFFFFFFFFFFFFFFF8);
  v40 = v39[1];
  *v38 = *v39;
  v38[1] = v40;

  v41 = ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  v42 = ((v39 + 23) & 0xFFFFFFFFFFFFFFF8);
  v43 = v42[1];
  *v41 = *v42;
  v41[1] = v43;

  v44 = ((v41 + 23) & 0xFFFFFFFFFFFFFFF8);
  v45 = ((v42 + 23) & 0xFFFFFFFFFFFFFFF8);
  v46 = v45[1];
  *v44 = *v45;
  v44[1] = v46;

  return a1;
}

uint64_t initializeWithTake for OutlineGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  if (v5 >= 2)
  {
    v5 = *a2 + 2;
  }

  if (v5 == 1)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a1 = *a2;
  }

  *(a1 + 24) = v6;
  v7 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(*(v7 - 8) + 80) | *(v9 + 80);
  v11 = v10 + 25;
  v12 = ~v10;
  v13 = ((v10 + 25 + a2) & ~v10);
  if (*(*(v7 - 8) + 64) <= *(v9 + 64))
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v14 = *(*(v7 - 8) + 64);
  }

  v15 = v13[v14];
  v16 = v15 - 2;
  if (v15 >= 2)
  {
    if (v14 <= 3)
    {
      v17 = v14;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_23;
      }

      v18 = *v13;
    }

    else if (v17 == 2)
    {
      v18 = *v13;
    }

    else if (v17 == 3)
    {
      v18 = *v13 | (v13[2] << 16);
    }

    else
    {
      v18 = *v13;
    }

    v19 = (v18 | (v16 << (8 * v14))) + 2;
    v15 = v18 + 2;
    if (v14 < 4)
    {
      v15 = v19;
    }
  }

LABEL_23:
  v20 = (v11 + a1) & v12;
  v21 = v15 == 1;
  if (v15 == 1)
  {
    v9 = *(v7 - 8);
    v22 = v7;
  }

  else
  {
    v22 = AssociatedTypeWitness;
  }

  (*(v9 + 32))((v11 + a1) & v12, v13, v22);
  *(v20 + v14) = v21;
  v23 = ((v14 + 8 + v20) & 0xFFFFFFFFFFFFFFF8);
  v24 = (&v13[v14 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;
  v27 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  v29 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
  v30 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *v30;
  *((v29 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v30 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t *assignWithTake for OutlineGroup(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a1 + 24);
    if (v6 >= 2)
    {
      v6 = *a1 + 2;
    }

    if (v6 == 1)
    {
    }

    else
    {
    }

    v7 = *(a2 + 24);
    if (v7 >= 2)
    {
      v7 = *a2 + 2;
    }

    if (v7 == 1)
    {
      *a1 = *a2;
      a1[2] = *(a2 + 16);
      v8 = 1;
    }

    else
    {
      v8 = 0;
      *a1 = *a2;
    }

    *(a1 + 24) = v8;
  }

  v9 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v9 - 8);
  v13 = *(v12 + 80) | *(v11 + 80);
  v14 = a1 + v13 + 25;
  v15 = (v14 & ~v13);
  v16 = ((v13 + 25 + a2) & ~v13);
  if (*(v12 + 64) <= *(v11 + 64))
  {
    v17 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v17 = *(*(v9 - 8) + 64);
  }

  if (v15 != v16)
  {
    v18 = AssociatedTypeWitness;
    v19 = v15[v17];
    v20 = v19 - 2;
    if (v19 < 2)
    {
      goto LABEL_31;
    }

    if (v17 <= 3)
    {
      v21 = v17;
    }

    else
    {
      v21 = 4;
    }

    if (v21 <= 1)
    {
      if (!v21)
      {
        goto LABEL_31;
      }

      v22 = *v15;
    }

    else if (v21 == 2)
    {
      v22 = *v15;
    }

    else if (v21 == 3)
    {
      v22 = *v15 | (*((v14 & ~v13) + 2) << 16);
    }

    else
    {
      v22 = *v15;
    }

    v23 = (v22 | (v20 << (8 * v17))) + 2;
    v19 = v22 + 2;
    if (v17 < 4)
    {
      v19 = v23;
    }

LABEL_31:
    if (v19 == 1)
    {
      v24 = *(v9 - 8);
    }

    else
    {
      v24 = *(AssociatedTypeWitness - 8);
    }

    if (v19 == 1)
    {
      v25 = v9;
    }

    else
    {
      v25 = AssociatedTypeWitness;
    }

    (*(v24 + 8))(v14 & ~v13, v25);
    v26 = *(v16 + v17);
    v27 = v26 - 2;
    if (v26 >= 2)
    {
      if (v17 <= 3)
      {
        v28 = v17;
      }

      else
      {
        v28 = 4;
      }

      if (v28 > 1)
      {
        if (v28 == 2)
        {
          v29 = *v16;
        }

        else if (v28 == 3)
        {
          v29 = *v16 | (*(v16 + 2) << 16);
        }

        else
        {
          v29 = *v16;
        }

LABEL_49:
        v30 = (v29 | (v27 << (8 * v17))) + 2;
        v26 = v29 + 2;
        if (v17 < 4)
        {
          v26 = v30;
        }

        goto LABEL_51;
      }

      if (v28)
      {
        v29 = *v16;
        goto LABEL_49;
      }
    }

LABEL_51:
    v31 = v26 == 1;
    if (v26 == 1)
    {
      v32 = v12;
    }

    else
    {
      v32 = v11;
    }

    if (v26 == 1)
    {
      v33 = v9;
    }

    else
    {
      v33 = v18;
    }

    (*(v32 + 32))(v15, v16, v33);
    v15[v17] = v31;
  }

  v34 = &v15[v17 + 8];
  v35 = ((v16 + v17 + 8) & 0xFFFFFFFFFFFFFFF8);
  *(v34 & 0xFFFFFFFFFFFFFFF8) = *v35;
  v36 = (v34 & 0xFFFFFFFFFFFFFFF8) + 15;

  v36 &= 0xFFFFFFFFFFFFFFF8;
  v37 = ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v36 = *v37;

  v38 = ((v36 + 23) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v37 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v38 = *v39;

  v40 = ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  v41 = ((v39 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v40 = *v41;

  *((v40 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v41 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for OutlineGroup(int *a1, int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  if (v8 <= *(v6 + 64))
  {
    v8 = *(v6 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(v7 + 80) | *(v6 + 80);
  v10 = v8 + 8;
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v13 = ((((((((((v10 + ((v9 + 25) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  v15 = a2 - 2147483646;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  if (v17 == 4)
  {
    v18 = *(a1 + v13);
    if (!v18)
    {
      goto LABEL_5;
    }
  }

  else if (v17 == 2)
  {
    v18 = *(a1 + v13);
    if (!v18)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v18 = *(a1 + v13);
    if (!v18)
    {
LABEL_5:
      v11 = *((v10 + ((a1 + v9 + 25) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
      if (v11 >= 0xFFFFFFFF)
      {
        LODWORD(v11) = -1;
      }

      return (v11 + 1);
    }
  }

  v19 = v18 - 1;
  if (v14)
  {
    v19 = 0;
    v20 = *a1;
  }

  else
  {
    v20 = 0;
  }

  return (v20 | v19) ^ 0x80000000;
}

void storeEnumTagSinglePayload for OutlineGroup(int *a1, int a2, int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 64);
  v10 = *(v7 - 8);
  if (*(v10 + 64) > v9)
  {
    v9 = *(v10 + 64);
  }

  v11 = *(v10 + 80) | *(v8 + 80);
  v12 = v9 + 8;
  v13 = ((((((((((v9 + 8 + ((v11 + 25) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v15 = a3 - 2147483646;
    if (((((((((((v9 + 8 + ((v11 + 25) & ~v11)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = v16;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v17 = a2 & 0x7FFFFFFF;
    if (v13)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17 + 1;
    }

    if (v13)
    {
      bzero(a1, v13);
      *a1 = v17;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v13) = v18;
      }

      else
      {
        *(a1 + v13) = v18;
      }
    }

    else if (v14)
    {
      *(a1 + v13) = v18;
    }

    return;
  }

  v14 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v14 <= 1)
  {
    if (v14)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v14 == 2)
  {
    *(a1 + v13) = 0;
    goto LABEL_28;
  }

  *(a1 + v13) = 0;
  if (a2)
  {
LABEL_29:
    *((v12 + ((a1 + v11 + 25) & ~v11)) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }
}

double outlined consume of StateOrBinding<Set<B>><A, B, C, D, E><A1>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static OutlineGroup.ChildPath.binding<A>(_:)@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = *(type metadata accessor for Binding() - 8);
  return closure #1 in closure #1 in static OutlineGroup.ChildPath.binding<A>(_:)(*(v1 + 16), *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 96) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t partial apply for closure #2 in closure #1 in static OutlineGroup.ChildPath.binding<A>(_:)(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v3 = *(type metadata accessor for Binding() - 8);
  v4 = (*(v3 + 80) + 96) & ~*(v3 + 80);
  return closure #2 in closure #1 in static OutlineGroup.ChildPath.binding<A>(_:)(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t lazy protocol witness table accessor for type _CrownHapticsConfiguration.Notch.Strength and conformance _CrownHapticsConfiguration.Notch.Strength()
{
  result = lazy protocol witness table cache variable for type _CrownHapticsConfiguration.Notch.Strength and conformance _CrownHapticsConfiguration.Notch.Strength;
  if (!lazy protocol witness table cache variable for type _CrownHapticsConfiguration.Notch.Strength and conformance _CrownHapticsConfiguration.Notch.Strength)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _CrownHapticsConfiguration.Notch.Strength, &type metadata for _CrownHapticsConfiguration.Notch.Strength, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _CrownHapticsConfiguration.Notch.Strength and conformance _CrownHapticsConfiguration.Notch.Strength);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _CrownHapticsConfiguration.Notch.RestingPosition and conformance _CrownHapticsConfiguration.Notch.RestingPosition()
{
  result = lazy protocol witness table cache variable for type _CrownHapticsConfiguration.Notch.RestingPosition and conformance _CrownHapticsConfiguration.Notch.RestingPosition;
  if (!lazy protocol witness table cache variable for type _CrownHapticsConfiguration.Notch.RestingPosition and conformance _CrownHapticsConfiguration.Notch.RestingPosition)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _CrownHapticsConfiguration.Notch.RestingPosition, &type metadata for _CrownHapticsConfiguration.Notch.RestingPosition, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _CrownHapticsConfiguration.Notch.RestingPosition and conformance _CrownHapticsConfiguration.Notch.RestingPosition);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _CrownHapticsConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of _CrownHapticsConfiguration(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for _CrownHapticsConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of _CrownHapticsConfiguration(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of _CrownHapticsConfiguration(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for _CrownHapticsConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of _CrownHapticsConfiguration(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for _CrownHapticsConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _CrownHapticsConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for _CrownHapticsConfiguration(uint64_t a1)
{
  if (*(a1 + 16) <= 3u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t destructiveInjectEnumTag for _CrownHapticsConfiguration(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for _CrownHapticsConfiguration.Notch(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 18))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _CrownHapticsConfiguration.Notch(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

void storeEnumTagSinglePayload for VariadicViewForest(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  v13 = v9 + v10;
  v14 = ((v9 + v10) & ~v10) + v11;
  v15 = a3 >= v12;
  v16 = a3 - v12;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = a1;
        bzero(a1, v14);
        a1 = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v14] = v20;
              }

              else
              {
                *&a1[v14] = v20;
              }

              return;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v19 = a1;
      bzero(a1, v14);
      a1 = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v14] = v20;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v14] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v17)
  {
    goto LABEL_30;
  }

  a1[v14] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v6 >= v8)
  {
    v29 = *(v5 + 56);

    v29();
  }

  else
  {
    v25 = &a1[v13] & ~v10;
    if (v8 >= a2)
    {
      v30 = *(v7 + 56);
      v31 = &a1[v13] & ~v10;

      v30(v31);
    }

    else
    {
      if (v11 <= 3)
      {
        v26 = ~(-1 << (8 * v11));
      }

      else
      {
        v26 = -1;
      }

      if (v11)
      {
        v27 = v26 & (~v8 + a2);
        if (v11 <= 3)
        {
          v28 = v11;
        }

        else
        {
          v28 = 4;
        }

        bzero((&a1[v13] & ~v10), v11);
        if (v28 > 2)
        {
          if (v28 == 3)
          {
            *v25 = v27;
            *(v25 + 2) = BYTE2(v27);
          }

          else
          {
            *v25 = v27;
          }
        }

        else if (v28 == 1)
        {
          *v25 = v27;
        }

        else
        {
          *v25 = v27;
        }
      }
    }
  }
}

uint64_t static VariadicViewForest._makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  outlined init with copy of _ViewListInputs(a2, v13);
  (*(a5 + 24))(&v12, a3, a5);
  PropertyList.subscript.setter();
  LODWORD(v12) = v8;
  type metadata accessor for VariadicViewForest(255, a3, a4, a5);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = a5;
  *(v9 + 40) = v8;
  (*(a5 + 40))(v11, v13, partial apply for closure #2 in static VariadicViewForest._makeViewList(view:inputs:), v9, a3, a5);

  return outlined destroy of _ViewListInputs(v13);
}

uint64_t closure #2 in static VariadicViewForest._makeViewList(view:inputs:)(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of _ViewListInputs(a1, v12);
  PropertyList.subscript.getter();
  v13 |= v11;
  LODWORD(v11) = a2;
  v9 = static VariadicViewForest.ListOutputsTreeVisitor.accumulateOutputs(view:inputs:)(&v11, v12, a3, a4, a5);
  outlined destroy of _ViewListInputs(v12);
  return v9;
}

uint64_t static VariadicViewForest._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v8 = a1[3];
  v27 = a1[2];
  v28 = v8;
  v9 = a1[3];
  v29 = a1[4];
  v10 = a1[1];
  v26[0] = *a1;
  v26[1] = v10;
  v23 = v27;
  v24 = v9;
  v25 = a1[4];
  v21 = v26[0];
  v22 = v7;
  v11 = *(a4 + 24);
  outlined init with copy of _ViewListCountInputs(v26, v32);
  v11(v32, a2, a4);
  PropertyList.subscript.setter();
  v30[2] = v23;
  v30[3] = v24;
  v30[4] = v25;
  v30[0] = v21;
  v30[1] = v22;
  v18 = v23;
  v19 = v24;
  v20 = v25;
  v16 = v21;
  v17 = v22;
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = v26;
  v12 = *(a4 + 48);
  outlined init with copy of _ViewListCountInputs(v30, v32);
  v13 = v12(&v16, partial apply for closure #1 in static VariadicViewForest._viewListCount(inputs:), v15, a2, a4);
  v31[2] = v18;
  v31[3] = v19;
  v31[4] = v20;
  v31[0] = v16;
  v31[1] = v17;
  outlined destroy of _ViewListCountInputs(v31);
  v32[2] = v23;
  v32[3] = v24;
  v32[4] = v25;
  v32[0] = v21;
  v32[1] = v22;
  outlined destroy of _ViewListCountInputs(v32);
  return v13;
}

uint64_t closure #1 in static VariadicViewForest._viewListCount(inputs:)(_OWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = *MEMORY[0x1E69E9840];
  v9 = a1[1];
  v50[0] = *a1;
  v50[1] = v9;
  v10 = a1[1];
  v11 = a1[3];
  v51 = a1[2];
  v52 = v11;
  v12 = a1[3];
  v53 = a1[4];
  v13 = v50[0];
  v46 = v10;
  v47 = v51;
  v14 = a1[4];
  v48 = v12;
  v49 = v14;
  outlined init with copy of _ViewListCountInputs(v50, &v40);
  PropertyList.subscript.getter();
  v15 = v40 | *(&v13 + 1);
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA04ViewD0V_Tt1g5(a4, &v40);
  v16 = v40;
  *&v54 = v13;
  *(&v54 + 1) = v15;
  v17 = a1[2];
  v55 = a1[1];
  v56 = v17;
  v18 = a1[4];
  v57 = a1[3];
  v58 = v18;
  v42 = v17;
  v43 = v57;
  v44 = v18;
  v40 = v54;
  v41 = v55;
  v45 = MEMORY[0x1E69E7CC0];
  v19 = *(v16 + 16);
  v31 = a3;
  v32 = a4;
  if (v19)
  {
    outlined init with copy of _ViewListCountInputs(&v54, v38);
    v20 = a4;
    v21 = a5;
    v22 = type metadata accessor for VariadicViewForest.CountsTreeVisitor(0, a3, v20, a5);
    v23 = (v16 + 48);
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for VariadicViewForest<A, B>.CountsTreeVisitor, v22, v31, v32);
      (*(WitnessTable + 8))(v24, v24, v25, v22, WitnessTable);
      v23 += 3;
      --v19;
    }

    while (v19);
  }

  else
  {
    v21 = a5;
    outlined init with copy of _ViewListCountInputs(&v54, v38);
  }

  v33[0] = v13;
  v33[1] = v15;
  v34 = v46;
  v35 = v47;
  v36 = v48;
  v37 = v49;
  outlined destroy of _ViewListCountInputs(v33);
  v38[2] = v42;
  v38[3] = v43;
  v38[4] = v44;
  v27 = v45;
  v39 = v45;
  v38[0] = v40;
  v38[1] = v41;
  v28 = type metadata accessor for VariadicViewForest.CountsTreeVisitor(0, v31, v32, v21);
  v29 = *(*(v28 - 8) + 8);

  v29(v38, v28);
  return v27;
}

char *VariadicViewForest.CountsTreeVisitor.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(v5 + 16);
  v9 = *(v5 + 48);
  v27 = *(v5 + 32);
  v28 = v9;
  v10 = *(v5 + 48);
  v29 = *(v5 + 64);
  v11 = *(v5 + 16);
  v26[0] = *v5;
  v26[1] = v11;
  v23 = v27;
  v24 = v10;
  v25 = *(v5 + 64);
  v21 = v26[0];
  v22 = v8;
  v12 = *(a4 + 40);
  outlined init with copy of _ViewListCountInputs(v26, v30);
  v13 = v12(&v21, a3, a4);
  v15 = v14;
  v30[2] = v23;
  v30[3] = v24;
  v30[4] = v25;
  v30[0] = v21;
  v30[1] = v22;
  outlined destroy of _ViewListCountInputs(v30);
  v16 = *(v5 + 80);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    v16 = result;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    v16 = result;
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[16 * v19];
  *(v20 + 4) = v13;
  v20[40] = v15 & 1;
  *(v5 + 80) = v16;
  return result;
}

uint64_t _s7SwiftUI22VariadicViewForestRootPAAE14_viewListCount6inputs4bodySiSgAA01_dhI6InputsV_SayAGGAIXEtFZAA22_NavigationSplitReader33_F85FC22E89B4B90838177134F16A33DBLLV0eF0V_Tt1B5(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v12[2] = a1[2];
  v12[3] = v2;
  v12[4] = a1[4];
  v3 = a1[1];
  v12[0] = *a1;
  v12[1] = v3;
  result = a2(v12);
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (result + 40);
    v8 = v5 - 1;
    while (1)
    {
      v9 = *v7;
      if (v9)
      {
        v6 = 0;
      }

      else
      {
        v10 = *(v7 - 1);
        v11 = __OFADD__(v6, v10);
        v6 += v10;
        if (v11)
        {
          __break(1u);
          return result;
        }
      }

      if (!v8)
      {
        goto LABEL_12;
      }

      --v8;
      v7 += 16;
      if (v9)
      {
        while (v8)
        {
          --v8;
        }

        v6 = 0;
LABEL_12:

        return v6;
      }
    }
  }

  return 0;
}

uint64_t specialized static VariadicViewForestRoot._makeViewList(root:inputs:body:)(int a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a2);
  v19 = a2;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI16_ViewListOutputsVG_14AttributeGraph0I0VyAF0fG0_pGs5NeverOTg5(partial apply for closure #1 in static VariadicViewForestRoot._makeViewList(root:inputs:body:), v18, v5);
  v7 = v6;

  static DynamicPropertyCache.fields(of:)();
  v9 = v30[0];
  v8 = v30[1];
  v10 = v31;
  v11 = v32;
  outlined init with copy of _ViewListInputs(a2, v30);
  if ((AGTypeID.isValueType.getter() & 1) == 0)
  {
    goto LABEL_7;
  }

  v12 = AGSubgraphGetCurrent();
  if (!v12)
  {
    __break(1u);
LABEL_7:
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x18D00C9B0](0xD00000000000003DLL, 0x800000018CD42B50);
    MEMORY[0x18D00C9B0](0x6F52747365726F46, 0xEA0000000000746FLL);
    MEMORY[0x18D00C9B0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v13 = v12;
  v25 = v7;
  v26 = v12;
  v24 = a1;
  v20 = v9;
  v21 = v8;
  v22 = v10;
  v23 = v11;
  type metadata accessor for ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot>(0);
  lazy protocol witness table accessor for type ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot> and conformance ForestRootBodyAccessor<A>();
  BodyAccessor.makeBody(container:inputs:fields:)();

  v15 = v27;
  v14 = v28;
  v16 = v29;
  lazy protocol witness table accessor for type NavigationSplitCore and conformance NavigationSplitCore();
  static View.makeDebuggableViewList(view:inputs:)();
  if ((v16 & 1) == 0)
  {
    v27 = v15;
    v28 = v14;
    LODWORD(v25) = a1;
    v20 = v9;
    v21 = v8;
    v22 = v10;
    v23 = v11;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  outlined destroy of _ViewListInputs(v30);
  return outlined consume of DynamicPropertyCache.Fields.Layout(v9, v8, v10);
}

uint64_t closure #1 in static VariadicViewForestRoot._makeViewList(root:inputs:body:)@<X0>(_OWORD *a1@<X1>, _DWORD *a2@<X8>)
{
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v7[2] = a1[2];
  outlined init with copy of _GraphInputs(v7, v6);
  _ViewListInputs.init(_:)();
  v4 = _ViewListOutputs.makeAttribute(inputs:)();
  result = outlined destroy of _ViewListInputs(v6);
  *a2 = v4;
  return result;
}

uint64_t protocol witness for static VariadicViewForestRoot._viewListCount(inputs:body:) in conformance _NavigationSplitReader.ForestRoot(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return _s7SwiftUI22VariadicViewForestRootPAAE14_viewListCount6inputs4bodySiSgAA01_dhI6InputsV_SayAGGAIXEtFZAA22_NavigationSplitReader33_F85FC22E89B4B90838177134F16A33DBLLV0eF0V_Tt1B5(v5, a2);
}

uint64_t initializeWithCopy for VariadicViewForest.ListOutputsTreeVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  swift_weakCopyInit();
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  v4 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v4;

  return a1;
}

uint64_t assignWithCopy for VariadicViewForest.ListOutputsTreeVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  swift_weakCopyAssign();
  v4 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v4;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);

  return a1;
}

uint64_t initializeWithTake for VariadicViewForest.ListOutputsTreeVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  swift_weakTakeInit();
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t assignWithTake for VariadicViewForest.ListOutputsTreeVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  swift_weakTakeAssign();
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  v4 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for VariadicViewForest.ListOutputsTreeVisitor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for VariadicViewForest.ListOutputsTreeVisitor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for VariadicViewForest.CountsTreeVisitor(void *a1)
{
}

uint64_t initializeWithCopy for VariadicViewForest.CountsTreeVisitor(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 4);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 4);
  *(a1 + 80) = a2[10];

  return a1;
}

uint64_t *assignWithCopy for VariadicViewForest.CountsTreeVisitor(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 3);
  v5 = *(a2 + 5);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 5) = v5;
  *(a1 + 3) = v4;
  *(a1 + 64) = *(a2 + 64);
  a1[9] = a2[9];
  a1[10] = a2[10];

  return a1;
}

uint64_t *assignWithTake for VariadicViewForest.CountsTreeVisitor(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = a2[10];
  a1[9] = a2[9];
  a1[10] = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for VariadicViewForest.CountsTreeVisitor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for VariadicViewForest.CountsTreeVisitor(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

void *assignWithCopy for ForestRootBodyAccessor(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  v5 = a1[1];
  a1[1] = v4;
  v6 = v4;

  return a1;
}

uint64_t assignWithTake for ForestRootBodyAccessor(uint64_t a1, _OWORD *a2)
{

  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

void TableCollectionViewCell.updateConfiguration(using:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v6 = *(v5 - 8);
  v60 = v5;
  v61 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v55 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v55 - v11;
  type metadata accessor for UIBackgroundConfiguration?(0, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v58 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v17 = type metadata accessor for UIListContentConfiguration();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIBackgroundConfiguration?(0, &lazy cache variable for type metadata for UIListContentConfiguration?, MEMORY[0x1E69DC118]);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v55 - v22;
  v24 = UICellConfigurationState.traitCollection.getter();
  if ([v24 horizontalSizeClass] == 1)
  {

    v25 = 1;
  }

  else
  {
    v26 = [v24 userInterfaceIdiom];

    v25 = v26 == 0;
  }

  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v65.receiver = v2;
  v65.super_class = ObjectType;
  objc_msgSendSuper2(&v65, sel__bridgedUpdateConfigurationUsingState_, isa);

  v29 = direct field offset for TableCollectionViewCell.isHeader;
  if (*(v2 + direct field offset for TableCollectionViewCell.isHeader) == 1 && v25)
  {
    static UIListContentConfiguration.prominentInsetGroupedHeader()();
    v30 = type metadata accessor for UICellConfigurationState();
    v63 = v30;
    v64 = MEMORY[0x1E69DC0B0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
    (*(*(v30 - 8) + 16))(boxed_opaque_existential_1, a1, v30);
    UIListContentConfiguration.updated(for:)();
    (*(v18 + 8))(v20, v17);
    __swift_destroy_boxed_opaque_existential_1(v62);
    (*(v18 + 56))(v23, 0, 1, v17);
    v32 = direct field offset for ListCollectionViewCellBase.lastConfiguration;
    swift_beginAccess();
    outlined assign with take of UIListContentConfiguration?(v23, v2 + v32);
    v28 = swift_endAccess();
  }

  MEMORY[0x18D00DBA0](v28);
  v33 = v60;
  if ((*(v61 + 48))(v16, 1, v60))
  {
    v34 = outlined destroy of UIBackgroundConfiguration?(v16);
  }

  else
  {
    v45 = UIBackgroundConfiguration.customView.getter();
    v34 = outlined destroy of UIBackgroundConfiguration?(v16);
    if (v45)
    {
      type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>(0);
      v46 = swift_dynamicCastClass();

      if (v46)
      {
        return;
      }
    }
  }

  if (!v25 && (*(v2 + v29) & 1) != 0)
  {
    v44 = v58;
    static UIBackgroundConfiguration.clear()();
    (*(v61 + 56))(v44, 0, 1, v33);
    MEMORY[0x18D00DBB0](v44);
    return;
  }

  v35 = v57;
  MEMORY[0x18D00DBC0](v34);
  v36 = type metadata accessor for UICellConfigurationState();
  v63 = v36;
  v64 = MEMORY[0x1E69DC0B0];
  v37 = __swift_allocate_boxed_opaque_existential_1(v62);
  v38 = *(*(v36 - 8) + 16);
  v38(v37, a1, v36);
  UIBackgroundConfiguration.updated(for:)();
  v39 = *(v61 + 8);
  v39(v35, v33);
  __swift_destroy_boxed_opaque_existential_1(v62);
  if ((UICellConfigurationState.isHighlighted.getter() & 1) == 0)
  {
    goto LABEL_23;
  }

  v40 = UIBackgroundConfiguration.backgroundColor.getter();
  v41 = [objc_opt_self() clearColor];
  v42 = v41;
  if (!v40)
  {
    if (v41)
    {

      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (!v41)
  {

    goto LABEL_23;
  }

  type metadata accessor for UIColor();
  v43 = static NSObject.== infix(_:_:)();

  if (v43)
  {
LABEL_21:
    UIBackgroundConfiguration.backgroundColor.setter();
  }

LABEL_23:
  v47 = UICellConfigurationState.isSelected.getter();
  v48 = v60;
  if ((v47 & 1) != 0 || (UICellConfigurationState.isHighlighted.getter()) && ((UICellConfigurationState.isFocused.getter() & 1) == 0 || (UICellConfigurationState.isEditing.getter()))
  {
    v49 = v56;
    static UIBackgroundConfiguration.listCell()();
    v63 = v36;
    v64 = MEMORY[0x1E69DC0B0];
    v50 = __swift_allocate_boxed_opaque_existential_1(v62);
    v38(v50, a1, v36);
    v51 = v57;
    UIBackgroundConfiguration.updated(for:)();
    v39(v49, v48);
    __swift_destroy_boxed_opaque_existential_1(v62);
    UIBackgroundConfiguration.backgroundColor.getter();
    v39(v51, v48);
    UIBackgroundConfiguration.backgroundColor.setter();
  }

  v52 = v61;
  v54 = v58;
  v53 = v59;
  (*(v61 + 16))(v58, v59, v48);
  (*(v52 + 56))(v54, 0, 1, v48);
  MEMORY[0x18D00DBB0](v54);
  v39(v53, v48);
}

uint64_t @objc TableCollectionViewCell.updateConfiguration(using:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a1;
  TableCollectionViewCell.updateConfiguration(using:)(v7);

  return (*(v5 + 8))(v7, v4);
}

void __swiftcall TableCollectionViewCell.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v4 = v3;
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  ObjectType = swift_getObjectType();
  v9 = [v3 traitCollection];
  if ([v9 horizontalSizeClass] == 1)
  {
    goto LABEL_10;
  }

  v10 = [v9 userInterfaceIdiom];
  v11 = v4[direct field offset for TableCollectionViewCell.isHeader] != 1 || v10 == 0;
  if (v11 || *&v4[direct field offset for TableCollectionViewCell.headerLeadingMargin] <= 0.0 && [v9 userInterfaceIdiom] != 6)
  {
    goto LABEL_10;
  }

  v12 = [v4 window];
  if (v12)
  {
    v13 = v12;
    [v4 convertPoint:v12 toCoordinateSpace:{x, y}];

    MEMORY[0x1EEE9AC00](v14);
    static Update.ensure<A>(_:)();
    if (v15)
    {
LABEL_10:
      v16.receiver = v4;
      v16.super_class = ObjectType;
      [(UIView_optional *)&v16 hitTest:isa withEvent:x, y];

      return;
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in TableCollectionViewCell.hitTest(_:with:)(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v5 = *(a1 + direct field offset for ListCollectionViewCellBase.host);
  if (v5)
  {
    v6 = v5;
    UIHostingViewBase.viewGraph.getter();

    v7 = ViewGraph.responderNode.getter();

    if (v7 && ((type metadata accessor for ViewResponder(), v8 = swift_dynamicCastClass(), v9 = v8 != 0, !v8) || (static ViewResponder.ContainsPointsOptions.platformDefault.getter(), v10 = ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)(), , v10)))
    {
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
}

id @objc TableCollectionViewCell.hitTest(_:with:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v16.value.super.isa = a5;
  TableCollectionViewCell.hitTest(_:with:)(v11, __PAIR128__(*&a3, *&a2), v16);
  v13 = v12;

  return v13;
}

void TableCollectionViewCell.hostingView<A>(_:willUpdate:)(uint64_t a1, void *a2)
{
  v3 = v2;
  specialized ListCollectionViewCellBase.hostingView<A>(_:willUpdate:)(a2);
  if (*(v2 + direct field offset for TableCollectionViewCell.isHeader) == 1)
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA024TableHeaderLeadingMarginE0VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey);

    PropertyList.subscript.setter();
    if (a2[1])
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  v5 = direct field offset for ListCollectionViewCellBase.lastConfiguration;
  swift_beginAccess();
  v6 = type metadata accessor for UIListContentConfiguration();
  if (!(*(*(v6 - 8) + 48))(v3 + v5, 1, v6))
  {
    UIListContentConfiguration.directionalLayoutMargins.getter();
  }

  swift_endAccess();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA024TableHeaderLeadingMarginE0VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>, &type metadata for TableHeaderLeadingMarginKey, &protocol witness table for TableHeaderLeadingMarginKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>, &type metadata for TableHeaderLeadingMarginKey, &protocol witness table for TableHeaderLeadingMarginKey);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

id @objc TableCollectionViewCell.init(frame:)(_BYTE *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  a1[direct field offset for TableCollectionViewCell.isHeader] = 0;
  *&a1[direct field offset for TableCollectionViewCell.headerLeadingMargin] = 0;
  v12.receiver = a1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

_BYTE *@objc TableCollectionViewCell.init(coder:)(_BYTE *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  a1[direct field offset for TableCollectionViewCell.isHeader] = 0;
  *&a1[direct field offset for TableCollectionViewCell.headerLeadingMargin] = 0;
  v9.receiver = a1;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, v6);

  if (v7)
  {
  }

  return v7;
}

uint64_t type metadata accessor for TableCollectionViewCell(uint64_t a1)
{
  result = type metadata singleton initialization cache for TableCollectionViewCell;
  if (!type metadata singleton initialization cache for TableCollectionViewCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA024TableHeaderLeadingMarginE0VGMaTm_0(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of UIBackgroundConfiguration?(uint64_t a1)
{
  type metadata accessor for UIBackgroundConfiguration?(0, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double View.topToolbarSafeAreaInset<A>(alignment:spacing:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(qword_1EFFF7E18 + 32))(&v27, a2, &type metadata for TopToolbarEdges);
  *&v23 = &type metadata for TopToolbarEdges;
  *(&v23 + 1) = a7;
  v24 = &protocol witness table for TopToolbarEdges;
  v25 = a9;
  v15 = type metadata accessor for ToolbarSafeAreaInsetModifier(0, &v23);
  *(&v27 + v15[13]) = a1;
  v16 = &v27 + v15[14];
  *v16 = a2;
  v16[8] = a3 & 1;
  v17 = (&v27 + v15[15]);
  *v17 = a4;
  v17[1] = a5;
  v23 = v27;
  LOBYTE(v24) = v28;
  v25 = v29;
  v26 = v30;

  v22[0] = &type metadata for TopToolbarEdges;
  v22[1] = a7;
  v22[2] = &protocol witness table for TopToolbarEdges;
  v22[3] = a9;
  v18 = type metadata accessor for ToolbarSafeAreaInsetModifier(0, v22);
  MEMORY[0x18D00A570](&v23, a6, v18, a8);

  return result;
}

double View.bottomToolbarSafeAreaInset<A>(alignment:spacing:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(qword_1EFFF7DF8 + 32))(&v27, a2, &type metadata for BottomToolbarEdges);
  *&v23 = &type metadata for BottomToolbarEdges;
  *(&v23 + 1) = a7;
  v24 = &protocol witness table for BottomToolbarEdges;
  v25 = a9;
  v15 = type metadata accessor for ToolbarSafeAreaInsetModifier(0, &v23);
  *(&v27 + v15[13]) = a1;
  v16 = &v27 + v15[14];
  *v16 = a2;
  v16[8] = a3 & 1;
  v17 = (&v27 + v15[15]);
  *v17 = a4;
  v17[1] = a5;
  v23 = v27;
  LOBYTE(v24) = v28;
  v25 = v29;
  v26 = v30;

  v22[0] = &type metadata for BottomToolbarEdges;
  v22[1] = a7;
  v22[2] = &protocol witness table for BottomToolbarEdges;
  v22[3] = a9;
  v18 = type metadata accessor for ToolbarSafeAreaInsetModifier(0, v22);
  MEMORY[0x18D00A570](&v23, a6, v18, a8);

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzAaBRd__r__lAA15ModifiedContentVyxAA28ToolbarSafeAreaInsetModifier33_C764A51E18F00BD2239CE85BD2E25F3BLLVyAA03TopF5EdgesVqd__GGAaBHPxAaBHD1__AjA0cJ0HPyHCHCTm(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v10[0] = a2;
  v10[1] = v3;
  v10[2] = a3;
  v10[3] = v4;
  v6 = type metadata accessor for ToolbarSafeAreaInsetModifier(255, v10);
  v7 = type metadata accessor for ModifiedContent();
  v9[0] = v5;
  v9[1] = swift_getWitnessTable(protocol conformance descriptor for ToolbarSafeAreaInsetModifier<A, B>, v6);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v7, v9);
}

uint64_t type metadata completion function for ToolbarSafeAreaInsetModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ToolbarSafeAreaInsetModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
    v14 = *v13;
    *(v12 + 8) = *(v13 + 8);
    *v12 = v14;
    v15 = ((v10 + 31) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v11 + 31) & 0xFFFFFFFFFFFFFFF8);
    v17 = v16[1];
    *v15 = *v16;
    v15[1] = v17;
  }

  return v3;
}

double destroy for ToolbarSafeAreaInsetModifier(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return result;
}

uint64_t initializeWithCopy for ToolbarSafeAreaInsetModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 8);
  *v9 = *v10;
  *(v9 + 8) = v11;
  v12 = ((v7 + 31) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  return a1;
}

uint64_t assignWithCopy for ToolbarSafeAreaInsetModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 8);
  *v9 = *v10;
  *(v9 + 8) = v11;
  v12 = ((v7 + 31) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  return a1;
}

uint64_t initializeWithTake for ToolbarSafeAreaInsetModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 8);
  *v9 = *v10;
  *(v9 + 8) = v11;
  *((v7 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ToolbarSafeAreaInsetModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 8);
  *v9 = *v10;
  *(v9 + 8) = v11;
  *((v7 + 31) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 31) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarSafeAreaInsetModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for ToolbarSafeAreaInsetModifier(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t ToolbarSafeAreaInsetModifier.body(content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v54 = *(a2 - 1);
  v60 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v58 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable(protocol conformance descriptor for ToolbarSafeAreaInsetModifier<A, B>, v9);
  v12 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput>(255);
  v13 = type metadata accessor for ModifiedContent();
  v14 = a2[5];
  v56 = a2[3];
  v57 = v14;
  v15 = type metadata accessor for _InsetViewModifier();
  v16 = type metadata accessor for ModifiedContent();
  v48 = a2[4];
  v17 = v48;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v12);
  v19 = lazy protocol witness table accessor for type ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput>, MEMORY[0x1E697FD30]);
  v65[0] = WitnessTable;
  v65[1] = v19;
  v20 = MEMORY[0x1E697E858];
  v55 = MEMORY[0x1E697E858];
  v21 = swift_getWitnessTable(MEMORY[0x1E697E858], v13, v65);
  v22 = swift_getWitnessTable(MEMORY[0x1E697F598], v15);
  v64[0] = v21;
  v64[1] = v22;
  v52 = v16;
  v51 = swift_getWitnessTable(v20, v16, v64);
  v63[0] = v6;
  v63[1] = v16;
  v63[2] = v17;
  v63[3] = v51;
  v47 = type metadata accessor for ToolbarReader(0, v63);
  v50 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v24 = &v45 - v23;
  type metadata accessor for _EnvironmentKeyWritingModifier<Toolbar.UpdateContext?>(255);
  v25 = type metadata accessor for ModifiedContent();
  v53 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v46 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v49 = &v45 - v29;
  v30 = v11;
  v31 = v59;
  (*(v7 + 16))(v11, v59, v6, v28);
  v32 = v54;
  v33 = v58;
  (*(v54 + 16))(v58, v31, a2);
  v34 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v35 = swift_allocObject();
  *&v36 = v6;
  *(&v36 + 1) = v56;
  v37 = v48;
  *&v38 = v48;
  *(&v38 + 1) = v57;
  *(v35 + 16) = v36;
  *(v35 + 32) = v38;
  (*(v32 + 32))(v35 + v34, v33, a2);
  ToolbarReader.init(edges:content:)(v30, partial apply for closure #1 in ToolbarSafeAreaInsetModifier.body(content:), v35, v6, v52, v37, v51, v24);
  v39 = v46;
  v40 = v47;
  View.defaultToolbarUpdateContext()(v47, &protocol witness table for ToolbarReader<A, B>);
  (*(v50 + 8))(v24, v40);
  v41 = lazy protocol witness table accessor for type ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Toolbar.UpdateContext?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Toolbar.UpdateContext?>, MEMORY[0x1E6980A18]);
  v62[0] = &protocol witness table for ToolbarReader<A, B>;
  v62[1] = v41;
  swift_getWitnessTable(v55, v25, v62);
  v42 = v49;
  static ViewBuilder.buildExpression<A>(_:)();
  v43 = *(v53 + 8);
  v43(v39, v25);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v43)(v42, v25);
}

uint64_t closure #1 in ToolbarSafeAreaInsetModifier.body(content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a5;
  v36 = a1;
  v40 = a7;
  v50[0] = a3;
  v50[1] = a4;
  v35 = a4;
  v50[2] = a5;
  v50[3] = a6;
  v10 = type metadata accessor for ToolbarSafeAreaInsetModifier(255, v50);
  swift_getWitnessTable(protocol conformance descriptor for ToolbarSafeAreaInsetModifier<A, B>, v10);
  v11 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput>(255);
  v37 = type metadata accessor for ModifiedContent();
  v39 = type metadata accessor for _InsetViewModifier();
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v32 - v18;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v11, v17);
  lazy protocol witness table accessor for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput();
  v21 = *v36;
  v22 = v36[1];
  View.input<A>(_:)();
  v23 = swift_dynamicCastMetatype();
  v36 = v32;
  v24 = *(v10 + 52);
  v25 = *(v10 + 56);
  v34 = v23 == 0;
  v33 = *(a2 + v24);
  v32[3] = *(a2 + v25 + 8);
  v41 = a3;
  v42 = v35;
  v43 = v38;
  v44 = a6;
  v45 = a2;
  v46 = v21;
  v47 = v22;
  v26 = lazy protocol witness table accessor for type ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput>, MEMORY[0x1E697FD30]);
  v49[0] = WitnessTable;
  v49[1] = v26;
  v27 = MEMORY[0x1E697E858];
  v31 = swift_getWitnessTable(MEMORY[0x1E697E858], v37, v49);
  View.safeAreaInset<A>(edge:alignment:spacing:content:)();
  v28 = swift_getWitnessTable(MEMORY[0x1E697F598], v39);
  v48[0] = v31;
  v48[1] = v28;
  swift_getWitnessTable(v27, v12, v48);
  static ViewBuilder.buildExpression<A>(_:)();
  v29 = *(v13 + 8);
  v29(v15, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v29)(v19, v12);
}

uint64_t closure #1 in closure #1 in ToolbarSafeAreaInsetModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a2;
  v20[1] = a3;
  v7 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - v11;
  v21[0] = v13;
  v21[1] = v14;
  v21[2] = v15;
  v21[3] = v16;
  v17 = type metadata accessor for ToolbarSafeAreaInsetModifier(0, v21);
  (*(a1 + *(v17 + 60)))(v20);
  static ViewBuilder.buildExpression<A>(_:)();
  v18 = *(v7 + 8);
  v18(v9, a5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v18)(v12, a5);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance CreatesToolbarSafeAreaInsetInput(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput();
  PropertyList.subscript.getter();
  return v3;
}

void type metadata accessor for ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput>)
  {
    lazy protocol witness table accessor for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput();
    v1 = type metadata accessor for ViewInputFlagModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput>);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Toolbar.UpdateContext?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Toolbar.UpdateContext?>)
  {
    type metadata accessor for Toolbar.UpdateContext?();
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Toolbar.UpdateContext?>);
    }
  }
}

void type metadata accessor for Toolbar.UpdateContext?()
{
  if (!lazy cache variable for type metadata for Toolbar.UpdateContext?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Toolbar.UpdateContext?);
    }
  }
}

uint64_t partial apply for closure #1 in ToolbarSafeAreaInsetModifier.body(content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for ToolbarSafeAreaInsetModifier(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return closure #1 in ToolbarSafeAreaInsetModifier.body(content:)(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<CreatesToolbarSafeAreaInsetInput> and conformance ViewInputFlagModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA05LabelfghM0V_Ttg5(unsigned __int8 a1)
{
  v2 = a1;
  PreferenceKeys.add(_:)();
  lazy protocol witness table accessor for type PlatformItemListTextRepresentable and conformance PlatformItemListTextRepresentable();
  _ViewInputs.requestedTextRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListImageRepresentable and conformance PlatformItemListImageRepresentable();
  _ViewInputs.requestedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListNamedImageRepresentable and conformance PlatformItemListNamedImageRepresentable();
  _ViewInputs.requestedNamedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListSpacerRepresentable and conformance PlatformItemListSpacerRepresentable();
  _ViewInputs.requestedSpacerRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type PlatformItemListHiddenRepresentable and conformance PlatformItemListHiddenRepresentable();
  _ViewInputs.requestedHiddenRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  result = PropertyList.subscript.setter();
  if (v2 != 2)
  {
    lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
    if (a1)
    {
      PropertyList.subscript.getter();
    }

    return PropertyList.subscript.setter();
  }

  return result;
}

uint64_t _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA04TextfghM0V_Ttg5(unsigned __int8 a1)
{
  v2 = a1;
  PreferenceKeys.add(_:)();
  lazy protocol witness table accessor for type PlatformItemListTextRepresentable and conformance PlatformItemListTextRepresentable();
  _ViewInputs.requestedTextRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListImageRepresentable and conformance PlatformItemListImageRepresentable();
  _ViewInputs.requestedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListNamedImageRepresentable and conformance PlatformItemListNamedImageRepresentable();
  _ViewInputs.requestedNamedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListSpacerRepresentable and conformance PlatformItemListSpacerRepresentable();
  _ViewInputs.requestedSpacerRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type PlatformItemListHiddenRepresentable and conformance PlatformItemListHiddenRepresentable();
  _ViewInputs.requestedHiddenRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  result = PropertyList.subscript.setter();
  if (v2 != 2)
  {
    lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
    if (a1)
    {
      PropertyList.subscript.getter();
    }

    return PropertyList.subscript.setter();
  }

  return result;
}

uint64_t _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA014WidgetMetadatafghM0V_Ttg5(unsigned __int8 a1)
{
  v2 = a1;
  PreferenceKeys.add(_:)();
  lazy protocol witness table accessor for type PlatformItemListTextRepresentable and conformance PlatformItemListTextRepresentable();
  _ViewInputs.requestedTextRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListImageRepresentable and conformance PlatformItemListImageRepresentable();
  _ViewInputs.requestedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListNamedImageRepresentable and conformance PlatformItemListNamedImageRepresentable();
  _ViewInputs.requestedNamedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListSpacerRepresentable and conformance PlatformItemListSpacerRepresentable();
  _ViewInputs.requestedSpacerRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type PlatformItemListHiddenRepresentable and conformance PlatformItemListHiddenRepresentable();
  _ViewInputs.requestedHiddenRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  result = PropertyList.subscript.setter();
  if (v2 != 2)
  {
    lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
    if (a1)
    {
      PropertyList.subscript.getter();
    }

    return PropertyList.subscript.setter();
  }

  return result;
}

uint64_t TableColumn.init(comparator:content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v38[0] = a5;
  v38[1] = a6;
  v38[2] = a7;
  v38[3] = a9;
  v38[4] = a10;
  v38[5] = a11;
  v38[6] = a12;
  v38[7] = a13;
  v16 = type metadata accessor for TableColumn(0, v38);
  v17 = a8 + v16[22];
  *v17 = xmmword_18CD633F0;
  *(v17 + 16) = xmmword_18CD7EC50;
  *(v17 + 32) = 0;
  v18 = a8 + v16[23];
  *(v18 + 112) = 0;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *v18 = 0u;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a9;
  v34 = a10;
  v35 = a11;
  v36 = a12;
  v37 = a13;
  v19 = type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in TableColumn.init(comparator:content:label:), v29, MEMORY[0x1E69E73E0], &type metadata for SwiftUIAnySortComparator, v20, v38);
  v21 = outlined assign with take of SwiftUIAnySortComparator?(v38, v18);
  v22 = (a8 + v16[21]);
  *v22 = a2;
  v22[1] = a3;
  a4(v21);
  return (*(*(v19 - 8) + 8))(a1, v19);
}

uint64_t closure #1 in TableColumn.init(comparator:content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a7@<X6>, uint64_t *x8_0@<X8>)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  return SwiftUIAnySortComparator.init<A>(_:)(v13, a3, a7, x8_0);
}

uint64_t static TableColumn._makeContent(content:inputs:)@<X0>(__int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, __int128 a10)
{
  v15 = a2[3];
  v41 = a2[2];
  v42 = v15;
  v43 = a2[4];
  v44 = *(a2 + 20);
  v16 = a2[1];
  v39 = *a2;
  v40 = v16;
  PreferencesOutputs.init()();
  v45[2] = v41;
  v46 = v42;
  v47 = v43;
  v48 = v44;
  v45[0] = v39;
  v45[1] = v40;
  v33 = v41;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v31 = v39;
  v32 = v40;
  outlined init with copy of _ViewInputs(v45, &v51);
  PreferenceKeys.remove(_:)();
  _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA03AllfghM0V_Ttg5(2u);
  *&v51 = a3;
  *(&v51 + 1) = a4;
  *&v52 = a5;
  *(&v52 + 1) = a6;
  *&v53 = a7;
  *(&v53 + 1) = a8;
  v54 = a10;
  type metadata accessor for TableColumn(255, &v51);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v49[2] = v41;
  v49[3] = v42;
  v49[4] = v43;
  v50 = v44;
  v49[0] = v39;
  v49[1] = v40;
  v25 = v41;
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v24 = v40;
  outlined init with copy of _ViewInputs(v49, &v51);
  static View.makeDebuggableView(view:inputs:)();
  v53 = v41;
  v54 = v42;
  v55 = v43;
  v56 = v44;
  v51 = v39;
  v52 = v40;
  outlined destroy of _ViewInputs(&v51);
  *&v23 = v29;
  *(&v23 + 1) = __PAIR64__(HIDWORD(v39), v30);
  v17 = PreferencesOutputs.subscript.getter();

  if ((v17 & 0x100000000) != 0)
  {
    *&v23 = MEMORY[0x1E69E7CC0];
    type metadata accessor for GraphHost();
    MEMORY[0x18D00B7D0]();
    LOBYTE(v29) = 0;
    GraphHost.intern<A>(_:for:id:)();
  }

  v29 = v46;
  v30 = DWORD2(v46);
  MEMORY[0x1EEE9AC00](v18);
  outlined init with copy of PreferencesInputs(&v29, &v23);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v25 = v33;
  v26 = v34;
  v27 = v35;
  v28 = v36;
  v23 = v31;
  v24 = v32;
  result = outlined destroy of _ViewInputs(&v23);
  v20 = v38;
  *a9 = v37;
  *(a9 + 2) = v20;
  return result;
}

uint64_t closure #1 in static TableColumn._makeContent(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a8;
  v15[7] = a9;
  v14[2] = type metadata accessor for TableColumn(0, v15);
  v14[3] = a5;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v14, a5, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15[0];
}

uint64_t implicit closure #2 in static TableColumn._makeContent(content:inputs:)(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = a3;
  LODWORD(v45) = a2;
  v60 = *MEMORY[0x1E69E9840];
  type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v38 = &v35[-v18];
  v52 = a4;
  v53 = a5;
  v54 = a6;
  v55 = a7;
  v56 = a8;
  v57 = a9;
  v58 = a10;
  v59 = a11;
  List = type metadata accessor for TableColumn.MakeList(0, &v52);
  v46 = *(List - 8);
  MEMORY[0x1EEE9AC00](List);
  v20 = &v35[-v19];
  v48 = a1;
  v52 = a4;
  v53 = a5;
  v54 = a6;
  v55 = a7;
  v56 = a8;
  v57 = a9;
  v58 = a10;
  v59 = a11;
  type metadata accessor for TableColumn(255, &v52);
  type metadata accessor for _GraphValue();
  v36 = _GraphValue.value.getter();
  LODWORD(v47) = v45;
  v40 = a4;
  v52 = a4;
  v53 = a5;
  v41 = a5;
  v42 = a6;
  v43 = a11;
  v54 = a6;
  v55 = a7;
  v44 = a7;
  v45 = a8;
  v56 = a8;
  v57 = a9;
  v58 = a10;
  v59 = a11;
  Label = type metadata accessor for TableColumn.MakeLabel(0, &v52);
  v50 = Label;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableColumn<A, B, C, D>.MakeLabel, Label);
  type metadata accessor for UUID?(0, &lazy cache variable for type metadata for Attribute<NSAttributedString>, type metadata accessor for NSAttributedString, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v47, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_8, v49, Label, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  v24 = v52;
  if (one-time initialization token for tableColumnConfiguration != -1)
  {
    swift_once();
  }

  v47 = static CachedEnvironment.ID.tableColumnConfiguration;
  swift_beginAccess();
  v25 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v26 = type metadata accessor for UUID();
  v27 = v38;
  (*(*(v26 - 8) + 56))(v38, 1, 1, v26);
  *v20 = v36;
  v20[1] = v24;
  v20[2] = v25;
  v52 = v40;
  v53 = v41;
  v54 = v42;
  v55 = v44;
  v56 = v45;
  v57 = a9;
  v58 = a10;
  v59 = v43;
  v28 = type metadata accessor for TableColumn.MakeList(0, &v52);
  v29 = outlined init with take of UUID?(v27, v20 + *(v28 + 92));
  v30 = MEMORY[0x1EEE9AC00](v29);
  v31 = List;
  *&v35[-16] = List;
  *&v35[-8] = swift_getWitnessTable(protocol conformance descriptor for TableColumn<A, B, C, D>.MakeList, v31, v30);
  type metadata accessor for UUID?(0, &lazy cache variable for type metadata for Attribute<TableColumnList>, type metadata accessor for TableColumnList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v20, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_8, &v35[-32], v31, MEMORY[0x1E69E73E0], v32, MEMORY[0x1E69E7410], v33);
  (*(v46 + 8))(v20, v31);
  return v52;
}

id TableColumn.MakeLabel.value.getter(uint64_t a1)
{
  v1 = type metadata accessor for PlatformItemList.Item(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  AGGraphGetValue();

  PlatformItemList.mergedContentItem.getter(v4, v3);

  v5 = *v3;
  v6 = *v3;
  outlined destroy of PlatformItemList.Item(v3);
  if (v5)
  {
    return v6;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
  }
}

uint64_t TableColumn.MakeList.column.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v8[0] = a1[1];
  v8[1] = v3;
  v4 = a1[4];
  v8[2] = a1[3];
  v8[3] = v4;
  v5 = type metadata accessor for TableColumn(0, v8);
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a2, Value, v5);
}

id protocol witness for Rule.value.getter in conformance TableColumn<A, B, C, D>.MakeLabel@<X0>(void *a1@<X8>)
{
  result = TableColumn.MakeLabel.value.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t TableColumn.MakeList.updateValue()(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v49 = *(a1 + 16);
  *&v54 = v49;
  *(&v54 + 1) = v3;
  v48 = v3;
  v47 = v4;
  *&v55 = v4;
  *(&v55 + 1) = v5;
  v46 = v5;
  v45 = v6;
  *v56 = v6;
  *&v56[8] = v7;
  v44 = v7;
  v43 = v8;
  *&v56[16] = v8;
  *&v56[24] = v9;
  v42 = v9;
  v10 = type metadata accessor for TableColumn(0, &v54);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v51 = &v42 - v11;
  type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v50 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  v20 = *(a1 + 92);
  outlined init with copy of UUID?(v1 + v20, &v42 - v18);
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = v23(v19, 1, v21);
  outlined destroy of UUID?(v19);
  if (v24 == 1)
  {
    UUID.init()();
    (*(v22 + 56))(v16, 0, 1, v21);
    outlined assign with take of UUID?(v16, v1 + v20);
  }

  TableColumn.MakeList.column.getter(a1, v51);
  v25 = v50;
  outlined init with copy of UUID?(v1 + v20, v50);
  if (v23(v25, 1, v21) == 1)
  {
    __break(1u);
  }

  type metadata accessor for NSAttributedString();
  v26 = *AGGraphGetValue();
  Value = AGGraphGetValue();
  v29 = Value[1];
  v28 = Value[2];
  v30 = *Value;
  *&v56[10] = *(Value + 42);
  v55 = v29;
  *v56 = v28;
  v54 = v30;
  v31 = Value[1];
  v52[0] = *Value;
  v52[1] = v31;
  v53[0] = Value[2];
  *(v53 + 10) = *(Value + 42);
  outlined init with copy of TableColumnConfiguration(&v54, v57);
  v32 = v49;
  v33 = v48;
  *&v54 = v49;
  *(&v54 + 1) = v48;
  v34 = v47;
  v35 = v46;
  *&v55 = v47;
  *(&v55 + 1) = v46;
  v36 = v45;
  v37 = v44;
  *v56 = v45;
  *&v56[8] = v44;
  v38 = v43;
  v39 = v42;
  *&v56[16] = v43;
  *&v56[24] = v42;
  *(&v55 + 1) = type metadata accessor for TableColumn.UnaryTableColumnList(0, &v54);
  *v56 = &protocol witness table for TableColumn<A, B, C, D>.UnaryTableColumnList;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v54);
  TableColumn.UnaryTableColumnList.init(column:id:label:configuration:)(v51, v25, v26, v52, v32, v33, v34, v35, boxed_opaque_existential_1, v36, v37, v38, v39);
  type metadata accessor for TableColumnList();
  AGGraphSetOutputValue();
  return __swift_destroy_boxed_opaque_existential_1(&v54);
}

double TableColumn.UnaryTableColumnList.init(column:id:label:configuration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = a4[1];
  v37 = *a4;
  v38 = v19;
  v39[0] = a4[2];
  *(v39 + 10) = *(a4 + 42);
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = a8;
  v33 = a10;
  v34 = a11;
  v35 = a12;
  v36 = a13;
  v20 = type metadata accessor for TableColumn(0, &v29);
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = a8;
  v33 = a10;
  v34 = a11;
  v35 = a12;
  v36 = a13;
  v21 = type metadata accessor for TableColumn.UnaryTableColumnList(0, &v29);
  v22 = v21[21];
  v23 = type metadata accessor for UUID();
  (*(*(v23 - 8) + 32))(a9 + v22, a2, v23);
  *(a9 + v21[22]) = a3;
  v24 = (a9 + v21[23]);
  v25 = v38;
  *v24 = v37;
  v24[1] = v25;
  v24[2] = v39[0];
  result = *(v39 + 10);
  *(v24 + 42) = *(v39 + 10);
  return result;
}

uint64_t TableColumn.UnaryTableColumnList.visitColumns<A>(applying:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 88);
  v10 = (v5 + *(a3 + 92));
  v11 = v10[1];
  v22[0] = *v10;
  v22[1] = v11;
  v13 = *v10;
  v12 = v10[1];
  v23[0] = v10[2];
  *(v23 + 10) = *(v10 + 42);
  v14 = *(a3 + 84);
  v15 = *(v5 + v9);
  v19 = v13;
  v20 = v12;
  v21[0] = v10[2];
  *(v21 + 10) = *(v10 + 42);
  v16 = *(a5 + 8);
  outlined init with copy of TableColumnConfiguration(v22, v24);
  v17 = v16(v5, v5 + v14, v15, &v19, *(a3 + 16), *(a3 + 24), *(a3 + 40), *(a3 + 32), *(a3 + 48), *(a3 + 56), *(a3 + 72), *(a3 + 64), a4, a5);
  v24[0] = v19;
  v24[1] = v20;
  v25[0] = v21[0];
  *(v25 + 10) = *(v21 + 10);
  outlined destroy of TableColumnConfiguration(v24);
  return v17 & 1;
}

uint64_t TableColumn<>.init(_:sortUsing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v27[0] = a8;
  v27[1] = a2;
  v32 = a7;
  v33 = a4;
  v29 = a1;
  v30 = a6;
  v34 = a5;
  v35 = a9;
  v31 = a3;
  v28 = a14;
  v17 = type metadata accessor for Optional();
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v27 - v19;
  v21 = *(a10 - 8);
  (*(v21 + 16))(v27 - v19, a5, a10, v18);
  (*(v21 + 56))(v20, 0, 1, a10);
  v22 = swift_allocObject();
  v22[2] = a8;
  v22[3] = a10;
  v22[4] = a11;
  v22[5] = a12;
  v23 = v28;
  v22[6] = a13;
  v22[7] = v23;
  v24 = v29;
  v22[8] = v30;
  v25 = v33;
  v22[9] = v32;
  v36 = v24;
  v37 = a2;
  v38 = v31;
  v39 = v25;

  TableColumn.init(comparator:content:label:)(v20, partial apply for closure #1 in TableColumn<>.init(_:sortUsing:content:), v22, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v27[0], a10, a11, v35, MEMORY[0x1E6981148], a12, a13, v23, MEMORY[0x1E6981138]);

  return (*(v21 + 8))(v34, a10);
}

{
  v31 = a8;
  v32 = a4;
  v37 = a7;
  v38 = a5;
  v34 = a1;
  v35 = a6;
  v36 = a3;
  v17 = a2;
  v39 = a9;
  v33 = a14;
  v29 = a2;
  v30 = a11;
  v18 = type metadata accessor for Optional();
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v28 - v20;
  v22 = *(a10 - 8);
  (*(v22 + 16))(&v28 - v20, a5, a10, v19);
  (*(v22 + 56))(v21, 0, 1, a10);
  v23 = swift_allocObject();
  v23[2] = a8;
  v23[3] = a10;
  v23[4] = a11;
  v23[5] = a12;
  v23[6] = a13;
  v24 = v33;
  v25 = v34;
  v26 = v35;
  v23[7] = v33;
  v23[8] = v26;
  v23[9] = v37;
  v40 = v25;
  v41 = v17;
  LOBYTE(v17) = v36 & 1;
  v42 = v36 & 1;
  v43 = a4;

  TableColumn.init(comparator:content:label:)(v21, partial apply for closure #1 in TableColumn<>.init(_:sortUsing:content:), v23, partial apply for closure #2 in TableColumn<>.init(_:sortUsing:content:), v31, a10, v30, v39, MEMORY[0x1E6981148], a12, a13, v24, MEMORY[0x1E6981138]);
  outlined consume of Text.Storage(v25, v29, v17);

  return (*(v22 + 8))(v38, a10);
}

uint64_t TableColumn<>.init<A>(_:sortUsing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v30 = a8;
  v31 = a3;
  v32 = a4;
  v33 = a1;
  v34 = a2;
  v35 = a9;
  v17 = type metadata accessor for Optional();
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v28 - v19;
  v21 = *(a6 - 8);
  (*(v21 + 16))(&v28 - v19, a2, a6, v18);
  (*(v21 + 56))(v20, 0, 1, a6);
  v22 = swift_allocObject();
  v23 = a5;
  v28 = a5;
  v29 = a7;
  v22[2] = a5;
  v22[3] = a6;
  v25 = v30;
  v24 = v31;
  v22[4] = a7;
  v22[5] = v25;
  v22[6] = a10;
  v22[7] = a11;
  v22[8] = a12;
  v22[9] = a13;
  v22[10] = v24;
  v22[11] = v32;
  v36 = v23;
  v37 = a6;
  v38 = a7;
  v39 = v25;
  v40 = a10;
  v41 = a11;
  v42 = a12;
  v43 = a13;
  v26 = v33;
  v44 = v33;

  TableColumn.init(comparator:content:label:)(v20, partial apply for closure #1 in TableColumn<>.init<A>(_:sortUsing:content:), v22, partial apply for closure #2 in TableColumn<>.init<A>(_:sortUsing:content:), v28, a6, v29, v35, MEMORY[0x1E6981148], a10, a11, a12, MEMORY[0x1E6981138]);

  (*(v21 + 8))(v34, a6);
  return (*(*(v25 - 8) + 8))(v26, v25);
}

uint64_t closure #1 in TableColumn<>.init<A>(_:sortUsing:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14(v11);
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v7 + 8);
  v15(v9, a6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v13, a6);
}

uint64_t closure #2 in TableColumn<>.init<A>(_:sortUsing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>, uint64_t a4)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10 & 1;
  *(a3 + 24) = v11;
  return result;
}

uint64_t closure #1 in TableColumn<>.init(_:sortUsing:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14(v11);
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v7 + 8);
  v15(v9, a6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v13, a6);
}

double TableColumn<>.init(_:content:)@<D0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{
  v14 = 1;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a6;
  v11[5] = a7;
  v11[6] = a1;
  v11[7] = a2;

  TableColumn.init(comparator:content:label:)(&v14, partial apply for closure #1 in TableColumn<>.init(_:content:), v11, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), a3, MEMORY[0x1E69E73E0], a4, a5, MEMORY[0x1E6981148], a6, MEMORY[0x1E696A108], a7, MEMORY[0x1E6981138]);

  return result;
}

uint64_t TableColumn<>.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v20 = 1;
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a9;
  v16[5] = a10;
  v16[6] = a4;
  v16[7] = a5;

  TableColumn.init(comparator:content:label:)(&v20, partial apply for closure #1 in TableColumn<>.init(_:content:), v16, partial apply for closure #2 in TableColumn<>.init(_:content:), a6, MEMORY[0x1E69E73E0], a7, a8, MEMORY[0x1E6981148], a9, MEMORY[0x1E696A108], a10, MEMORY[0x1E6981138]);

  outlined consume of Text.Storage(a1, a2, a3 & 1);
}

uint64_t TableColumn<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v21 = 1;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a8;
  v18[7] = a10;
  v18[8] = a2;
  v18[9] = a3;

  TableColumn.init(comparator:content:label:)(&v21, partial apply for closure #1 in TableColumn<>.init<A>(_:content:), v18, partial apply for closure #2 in TableColumn<>.init<A>(_:content:), a4, MEMORY[0x1E69E73E0], a5, a9, MEMORY[0x1E6981148], a7, MEMORY[0x1E696A108], a8, MEMORY[0x1E6981138]);

  return (*(*(a6 - 8) + 8))(a1, a6);
}

uint64_t closure #1 in TableColumn<>.init<A>(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13(v10);
  static ViewBuilder.buildExpression<A>(_:)();
  v14 = *(v6 + 8);
  v14(v8, a5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v14)(v12, a5);
}

uint64_t closure #2 in TableColumn<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t closure #1 in TableColumn<>.init(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13(v10);
  static ViewBuilder.buildExpression<A>(_:)();
  v14 = *(v6 + 8);
  v14(v8, a5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v14)(v12, a5);
}

double TableColumn<>.init<>(_:value:)@<D0>(uint64_t *a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v10 = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a1;
  v8 = *(v6 + *MEMORY[0x1E69E77B0]);

  TableColumn.init(comparator:content:label:)(&v10, partial apply for closure #1 in TableColumn<>.init<>(_:value:), v7, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v8, MEMORY[0x1E69E73E0], MEMORY[0x1E6981148], a3, MEMORY[0x1E6981148], a2, MEMORY[0x1E696A108], MEMORY[0x1E6981138], MEMORY[0x1E6981138]);

  return result;
}

uint64_t TableColumn<>.init<>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = *a4;
  v16 = 1;
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a4;
  v14 = *(v12 + *MEMORY[0x1E69E77B0]);

  TableColumn.init(comparator:content:label:)(&v16, partial apply for closure #1 in TableColumn<>.init<>(_:value:), v13, partial apply for closure #2 in TableColumn<>.init(_:content:), v14, MEMORY[0x1E69E73E0], MEMORY[0x1E6981148], a6, MEMORY[0x1E6981148], a5, MEMORY[0x1E696A108], MEMORY[0x1E6981138], MEMORY[0x1E6981138]);

  outlined consume of Text.Storage(a1, a2, a3 & 1);
}

uint64_t TableColumn<>.init<A>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *a2;
  v16 = 1;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a2;
  v15 = *(v12 + *MEMORY[0x1E69E77B0]);

  TableColumn.init(comparator:content:label:)(&v16, partial apply for closure #1 in TableColumn<>.init<A>(_:value:), v13, partial apply for closure #2 in TableColumn<>.init<A>(_:value:), v15, MEMORY[0x1E69E73E0], MEMORY[0x1E6981148], a6, MEMORY[0x1E6981148], a4, MEMORY[0x1E696A108], MEMORY[0x1E6981138], MEMORY[0x1E6981138]);

  return (*(*(a3 - 8) + 8))(a1, a3);
}

uint64_t closure #1 in TableColumn<>.init<A>(_:value:)@<X0>(uint64_t a3@<X8>)
{
  swift_getAtKeyPath();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t closure #2 in TableColumn<>.init<A>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

double partial apply for closure #2 in TableColumn<>.init(_:sortUsing:content:)@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  outlined copy of Text.Storage(v2, v3, v4);

  return result;
}

uint64_t TableColumn.width(_:)@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  result = (*(*(a3 - 8) + 16))(a4, v5);
  v11 = a4 + *(a3 + 88);
  if (*(v11 + 32))
  {
    v12 = a1;
    v13 = INFINITY;
    if (a2)
    {
      v12 = 10.0;
    }

    else
    {
      v13 = a1;
    }

    v14 = a2 & 1;
  }

  else
  {
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    v15 = *(v11 + 8);
    v16 = a1;
    if (a2)
    {
      a1 = *v11;
    }

    else
    {
      v13 = a1;
    }

    if ((a2 & 1) == 0)
    {
      LOBYTE(v15) = 0;
      v12 = v16;
    }

    v14 = v15 & 1;
  }

  *v11 = a1;
  *(v11 + 8) = v14;
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = 0;
  return result;
}

uint64_t TableColumn.width(min:ideal:max:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  result = (*(*(a7 - 8) + 16))(a8, v9, a7);
  v19 = a8 + *(a7 + 88);
  if (*(v19 + 32))
  {
    v20 = a4 & 1;
    if (a4)
    {
      v21 = 0x4024000000000000;
    }

    else
    {
      v21 = a3;
    }

    v22 = 0x7FF0000000000000;
    if ((a4 & 1) == 0)
    {
      v22 = a3;
    }
  }

  else
  {
    v21 = *(v19 + 16);
    v22 = *(v19 + 24);
    if (a4)
    {
      a3 = *v19;
    }

    v20 = a4 & *(v19 + 8) & 1;
  }

  if ((a2 & 1) == 0)
  {
    v21 = a1;
  }

  if ((a6 & 1) == 0)
  {
    v22 = a5;
  }

  *v19 = a3;
  *(v19 + 8) = v20;
  *(v19 + 16) = v21;
  *(v19 + 24) = v22;
  *(v19 + 32) = 0;
  return result;
}

double TableColumn.fixedToHeaderWidth()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 16))(a2, v3, a1);
  v6 = a2 + *(a1 + 88);
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TableColumn<A, B, C, D>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TableColumn<A, B, C, D>);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for TableColumn(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TableColumn(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 40) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 120 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
    v14 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
    v15 = *(v14 + 32);
    v16 = *(v14 + 16);
    *v13 = *v14;
    *(v13 + 16) = v16;
    *(v13 + 32) = v15;
    v17 = (v10 + 63) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v11 + 63) & 0xFFFFFFFFFFFFFFF8;
    v19 = *(v18 + 24);

    if (v19 < 0xFFFFFFFF)
    {
      v25 = *v18;
      v26 = *(v18 + 16);
      v27 = *(v18 + 48);
      *(v17 + 32) = *(v18 + 32);
      *(v17 + 48) = v27;
      *v17 = v25;
      *(v17 + 16) = v26;
      v28 = *(v18 + 64);
      v29 = *(v18 + 80);
      v30 = *(v18 + 96);
      *(v17 + 112) = *(v18 + 112);
      *(v17 + 80) = v29;
      *(v17 + 96) = v30;
      *(v17 + 64) = v28;
      return v3;
    }

    *(v17 + 24) = v19;
    (**(v19 - 8))(v17, v18, v19);
    v20 = *(v18 + 56);
    *(v17 + 56) = v20;
    *(v17 + 64) = *(v18 + 64);
    (**(v20 - 8))(v17 + 32, v18 + 32);
    v21 = *(v18 + 80);
    *(v17 + 72) = *(v18 + 72);
    *(v17 + 80) = v21;
    v22 = *(v18 + 96);
    *(v17 + 88) = *(v18 + 88);
    *(v17 + 96) = v22;
    v23 = *(v18 + 104);
    v24 = *(v18 + 112);
    *(v17 + 104) = v23;
    *(v17 + 112) = v24;
  }

  return v3;
}

double destroy for TableColumn(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 40) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = ((v4 + 63) & 0xFFFFFFFFFFFFFFF8);
  if (v6[3] >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(v6 + 4);
  }

  return result;
}

uint64_t initializeWithCopy for TableColumn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 40) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 32);
  v13 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v13;
  *(v10 + 32) = v12;
  v14 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 24);

  if (v16 < 0xFFFFFFFF)
  {
    v22 = *v15;
    v23 = *(v15 + 16);
    v24 = *(v15 + 48);
    *(v14 + 32) = *(v15 + 32);
    *(v14 + 48) = v24;
    *v14 = v22;
    *(v14 + 16) = v23;
    v25 = *(v15 + 64);
    v26 = *(v15 + 80);
    v27 = *(v15 + 96);
    *(v14 + 112) = *(v15 + 112);
    *(v14 + 80) = v26;
    *(v14 + 96) = v27;
    *(v14 + 64) = v25;
  }

  else
  {
    *(v14 + 24) = v16;
    (**(v16 - 8))(v14, v15, v16);
    v17 = *(v15 + 56);
    *(v14 + 56) = v17;
    *(v14 + 64) = *(v15 + 64);
    (**(v17 - 8))(v14 + 32, v15 + 32);
    v18 = *(v15 + 80);
    *(v14 + 72) = *(v15 + 72);
    *(v14 + 80) = v18;
    v19 = *(v15 + 96);
    *(v14 + 88) = *(v15 + 88);
    *(v14 + 96) = v19;
    v20 = *(v15 + 104);
    v21 = *(v15 + 112);
    *(v14 + 104) = v20;
    *(v14 + 112) = v21;
  }

  return a1;
}

uint64_t assignWithCopy for TableColumn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 40) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v13 = *(v11 + 16);
  *(v10 + 32) = *(v11 + 32);
  *v10 = v12;
  *(v10 + 16) = v13;
  v14 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 24);
  if (*(v14 + 24) < 0xFFFFFFFFuLL)
  {
    if (v16 >= 0xFFFFFFFF)
    {
      *(v14 + 24) = v16;
      (**(v16 - 8))(v14, (v8 + 63) & 0xFFFFFFFFFFFFFFF8);
      v20 = *(v15 + 56);
      *(v14 + 56) = v20;
      *(v14 + 64) = *(v15 + 64);
      (**(v20 - 8))(v14 + 32, v15 + 32);
      v21 = *(v15 + 80);
      *(v14 + 72) = *(v15 + 72);
      *(v14 + 80) = v21;
      v22 = *(v15 + 96);
      *(v14 + 88) = *(v15 + 88);
      *(v14 + 96) = v22;
      v23 = *(v15 + 104);
      v24 = *(v15 + 112);
      *(v14 + 104) = v23;
      *(v14 + 112) = v24;

      return a1;
    }

LABEL_7:
    v25 = *v15;
    v26 = *(v15 + 16);
    v27 = *(v15 + 48);
    *(v14 + 32) = *(v15 + 32);
    *(v14 + 48) = v27;
    *v14 = v25;
    *(v14 + 16) = v26;
    v28 = *(v15 + 64);
    v29 = *(v15 + 80);
    v30 = *(v15 + 96);
    *(v14 + 112) = *(v15 + 112);
    *(v14 + 80) = v29;
    *(v14 + 96) = v30;
    *(v14 + 64) = v28;
    return a1;
  }

  if (v16 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1((v14 + 32));

    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0(v14, ((v8 + 63) & 0xFFFFFFFFFFFFFFF8), v12);
  __swift_assign_boxed_opaque_existential_1((v14 + 32), (v15 + 32));
  v17 = *(v15 + 80);
  *(v14 + 72) = *(v15 + 72);
  *(v14 + 80) = v17;

  v18 = *(v15 + 96);
  *(v14 + 88) = *(v15 + 88);
  *(v14 + 96) = v18;

  v19 = *(v15 + 112);
  *(v14 + 104) = *(v15 + 104);
  *(v14 + 112) = v19;

  return a1;
}

uint64_t initializeWithTake for TableColumn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 40) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v10;
  v11 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v12;
  *(v9 + 16) = v11;
  v13 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v14 + 80);
  v15 = *(v14 + 96);
  v17 = *(v14 + 64);
  *(v13 + 112) = *(v14 + 112);
  *(v13 + 80) = v16;
  *(v13 + 96) = v15;
  *(v13 + 64) = v17;
  v18 = *(v14 + 16);
  v19 = *(v14 + 32);
  v20 = *(v14 + 48);
  *v13 = *v14;
  *(v13 + 16) = v18;
  *(v13 + 32) = v19;
  *(v13 + 48) = v20;
  return a1;
}

uint64_t assignWithTake for TableColumn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 40) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8 + 63;
  *v7 = *v8;

  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v13 = *(v11 + 16);
  *(v10 + 32) = *(v11 + 32);
  *v10 = v12;
  *(v10 + 16) = v13;
  v14 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v15 = v9 & 0xFFFFFFFFFFFFFFF8;
  if (*(v14 + 24) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  v16 = *(v15 + 24);
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (v16 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1((v14 + 32));

LABEL_5:
    v20 = *v15;
    v21 = *(v15 + 16);
    v22 = *(v15 + 48);
    *(v14 + 32) = *(v15 + 32);
    *(v14 + 48) = v22;
    *v14 = v20;
    *(v14 + 16) = v21;
    v23 = *(v15 + 64);
    v24 = *(v15 + 80);
    v25 = *(v15 + 96);
    *(v14 + 112) = *(v15 + 112);
    *(v14 + 80) = v24;
    *(v14 + 96) = v25;
    *(v14 + 64) = v23;
    return a1;
  }

  v17 = *(v15 + 16);
  *v14 = *v15;
  *(v14 + 16) = v17;
  __swift_destroy_boxed_opaque_existential_1((v14 + 32));
  v18 = *(v15 + 32);
  v19 = *(v15 + 48);
  *(v14 + 64) = *(v15 + 64);
  *(v14 + 32) = v18;
  *(v14 + 48) = v19;
  *(v14 + 72) = *(v15 + 72);

  *(v14 + 88) = *(v15 + 88);

  *(v14 + 104) = *(v15 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for TableColumn(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 40) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 120;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for TableColumn(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 40) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 40) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 120;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == 0xFFFFFF88)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == 0xFFFFFF88)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != 0xFFFFFF88)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 120);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TableColumnSizingBehavior(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TableColumnSizingBehavior(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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

  *(result + 33) = v3;
  return result;
}

uint64_t getEnumTag for TableColumnSizingBehavior(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for TableColumnSizingBehavior(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemListHiddenRepresentable and conformance PlatformItemListHiddenRepresentable()
{
  result = lazy protocol witness table cache variable for type PlatformItemListHiddenRepresentable and conformance PlatformItemListHiddenRepresentable;
  if (!lazy protocol witness table cache variable for type PlatformItemListHiddenRepresentable and conformance PlatformItemListHiddenRepresentable)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListHiddenRepresentable, &type metadata for PlatformItemListHiddenRepresentable, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListHiddenRepresentable and conformance PlatformItemListHiddenRepresentable);
  }

  return result;
}

uint64_t outlined assign with take of SwiftUIAnySortComparator?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SwiftUIAnySortComparator?();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for SwiftUIAnySortComparator?()
{
  if (!lazy cache variable for type metadata for SwiftUIAnySortComparator?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SwiftUIAnySortComparator?);
    }
  }
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for TableColumn.MakeList(uint64_t a1)
{
  type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

char *initializeBufferWithCopyOfBuffer for TableColumn.MakeList(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *v4 = *a2;
    v4 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 2);
    v6 = *(a3 + 92);
    v7 = type metadata accessor for UUID();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2 + v6, 1, v7))
    {
      type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
      memcpy(&v4[v6], a2 + v6, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(&v4[v6], a2 + v6, v7);
      (*(v8 + 56))(&v4[v6], 0, 1, v7);
    }
  }

  return v4;
}

uint64_t destroy for TableColumn.MakeList(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 92);
  v4 = type metadata accessor for UUID();
  v7 = *(v4 - 8);
  result = (*(v7 + 48))(a1 + v3, 1, v4);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(a1 + v3, v4);
  }

  return result;
}

uint64_t initializeWithCopy for TableColumn.MakeList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 92);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy((a1 + v5), (a2 + v5), *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1 + v5, a2 + v5, v6);
    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

char *assignWithCopy for TableColumn.MakeList(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v5 = *(a3 + 92);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 1, v6);
  v10 = v8(&a2[v5], 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(&a1[v5], &a2[v5], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v5], v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v7 + 16))(&a1[v5], &a2[v5], v6);
  (*(v7 + 56))(&a1[v5], 0, 1, v6);
  return a1;
}

uint64_t initializeWithTake for TableColumn.MakeList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 92);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy((a1 + v5), (a2 + v5), *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1 + v5, a2 + v5, v6);
    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithTake for TableColumn.MakeList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 92);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1 + v5, 1, v6);
  v10 = v8(a2 + v5, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1 + v5, a2 + v5, v6);
      return a1;
    }

    (*(v7 + 8))(a1 + v5, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    memcpy((a1 + v5), (a2 + v5), *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v7 + 32))(a1 + v5, a2 + v5, v6);
  (*(v7 + 56))(a1 + v5, 0, 1, v6);
  return a1;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for TableColumn.UnaryTableColumnList(_OWORD *a1)
{
  v1 = a1[2];
  v6 = a1[1];
  v7 = v1;
  v2 = a1[4];
  v8 = a1[3];
  v9 = v2;
  result = type metadata accessor for TableColumn(319, &v6);
  if (v4 <= 0x3F)
  {
    *&v6 = *(result - 8) + 64;
    result = type metadata accessor for UUID();
    if (v5 <= 0x3F)
    {
      *(&v6 + 1) = *(result - 8) + 64;
      *&v7 = MEMORY[0x1E69E5CE0] + 64;
      *(&v7 + 1) = ":";
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TableColumn.UnaryTableColumnList(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 120;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64) + 7;
  v13 = v11 | *(v6 + 80) & 0xF8;
  if (v13 > 7 || ((*(v6 + 80) | *(v10 + 80)) & 0x100000) != 0 || ((((v12 + ((v8 + v11) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 58 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + (((v13 | 7) + 16) & ~(v13 | 7)));
  }

  else
  {
    v17 = v9;
    v55 = ~v11;
    (*(v6 + 16))(a1, a2, v5);
    v18 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v20 = v19[1];
    *v18 = *v19;
    v18[1] = v20;
    v21 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
    v23 = *(v22 + 32);
    v24 = *(v22 + 16);
    *v21 = *v22;
    *(v21 + 16) = v24;
    *(v21 + 32) = v23;
    v25 = (v18 + 63) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v19 + 63) & 0xFFFFFFFFFFFFFFF8;
    v27 = *(v26 + 24);

    if (v27 < 0xFFFFFFFF)
    {
      v33 = *v26;
      v34 = *(v26 + 16);
      v35 = *(v26 + 48);
      *(v25 + 32) = *(v26 + 32);
      *(v25 + 48) = v35;
      *v25 = v33;
      *(v25 + 16) = v34;
      v36 = *(v26 + 64);
      v37 = *(v26 + 80);
      v38 = *(v26 + 96);
      *(v25 + 112) = *(v26 + 112);
      *(v25 + 80) = v37;
      *(v25 + 96) = v38;
      *(v25 + 64) = v36;
    }

    else
    {
      *(v25 + 24) = v27;
      (**(v27 - 8))(v25, v26, v27);
      v28 = *(v26 + 56);
      *(v25 + 56) = v28;
      *(v25 + 64) = *(v26 + 64);
      (**(v28 - 8))(v25 + 32, v26 + 32);
      v29 = *(v26 + 80);
      *(v25 + 72) = *(v26 + 72);
      *(v25 + 80) = v29;
      v30 = *(v26 + 96);
      *(v25 + 88) = *(v26 + 88);
      *(v25 + 96) = v30;
      v31 = *(v26 + 104);
      v32 = *(v26 + 112);
      *(v25 + 104) = v31;
      *(v25 + 112) = v32;
    }

    v39 = (a2 + (v8 | v11)) & v55;
    (*(v10 + 16))((a1 + (v8 | v11)) & v55, v39, v17);
    v40 = ((v12 + ((a1 + (v8 | v11)) & v55)) & 0xFFFFFFFFFFFFFFF8);
    v41 = ((v12 + v39) & 0xFFFFFFFFFFFFFFF8);
    v42 = *v41;
    *v40 = *v41;
    v43 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    *v43 = *v44;
    v45 = *(v44 + 40);
    v46 = v42;
    if (v45 == 255)
    {
      v52 = *(v44 + 8);
      v53 = *(v44 + 24);
      *(v43 + 40) = *(v44 + 40);
      *(v43 + 8) = v52;
      *(v43 + 24) = v53;
    }

    else
    {
      v47 = *(v44 + 8);
      v48 = *(v44 + 16);
      v49 = *(v44 + 24);
      v50 = *(v44 + 32);
      v51 = v45 & 1;
      outlined copy of TableColumnCustomizationID.Base(v47, v48, v49, v50, v51);
      *(v43 + 8) = v47;
      *(v43 + 16) = v48;
      *(v43 + 24) = v49;
      *(v43 + 32) = v50;
      *(v43 + 40) = v51;
    }

    *(v43 + 48) = *(v44 + 48);
    *(v43 + 56) = *(v44 + 56);
    *(v43 + 57) = *(v44 + 57);
  }

  return a1;
}

void destroy for TableColumn.UnaryTableColumnList(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 40) - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56) + 7;

  v5 = ((((v4 + a1) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8);
  if (v5[3] >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    __swift_destroy_boxed_opaque_existential_1(v5 + 4);
  }

  v6 = ((v4 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = v8 + 8;
  v10 = (a1 + *(v8 + 80) + v6 + 120) & ~*(v8 + 80);
  (*(v8 + 8))(v10, v7);
  v11 = ((*(v9 + 56) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);

  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 40);
  if (v13 != 255)
  {
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = *(v12 + 32);

    outlined consume of TableColumnCustomizationID.Base(v14, v15, v16, v17, v13 & 1);
  }
}

uint64_t initializeWithCopy for TableColumn.UnaryTableColumnList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 40) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 32);
  v13 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v13;
  *(v10 + 32) = v12;
  v14 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 24);

  if (v16 < 0xFFFFFFFF)
  {
    v22 = *v15;
    v23 = *(v15 + 16);
    v24 = *(v15 + 48);
    *(v14 + 32) = *(v15 + 32);
    *(v14 + 48) = v24;
    *v14 = v22;
    *(v14 + 16) = v23;
    v25 = *(v15 + 64);
    v26 = *(v15 + 80);
    v27 = *(v15 + 96);
    *(v14 + 112) = *(v15 + 112);
    *(v14 + 80) = v26;
    *(v14 + 96) = v27;
    *(v14 + 64) = v25;
  }

  else
  {
    *(v14 + 24) = v16;
    (**(v16 - 8))(v14, v15, v16);
    v17 = *(v15 + 56);
    *(v14 + 56) = v17;
    *(v14 + 64) = *(v15 + 64);
    (**(v17 - 8))(v14 + 32, v15 + 32);
    v18 = *(v15 + 80);
    *(v14 + 72) = *(v15 + 72);
    *(v14 + 80) = v18;
    v19 = *(v15 + 96);
    *(v14 + 88) = *(v15 + 88);
    *(v14 + 96) = v19;
    v20 = *(v15 + 104);
    v21 = *(v15 + 112);
    *(v14 + 104) = v20;
    *(v14 + 112) = v21;
  }

  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  v30 = v29 + 16;
  v31 = *(v29 + 80);
  v32 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + v31 + 120;
  v33 = (v32 + a1) & ~v31;
  v34 = (v32 + a2) & ~v31;
  (*(v29 + 16))(v33, v34, v28);
  v35 = *(v30 + 48) + 7;
  v36 = ((v35 + v33) & 0xFFFFFFFFFFFFFFF8);
  v37 = ((v35 + v34) & 0xFFFFFFFFFFFFFFF8);
  v38 = *v37;
  *v36 = *v37;
  v39 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v39 = *v40;
  v41 = *(v40 + 40);
  v42 = v38;
  if (v41 == 255)
  {
    v48 = *(v40 + 8);
    v49 = *(v40 + 24);
    *(v39 + 40) = *(v40 + 40);
    *(v39 + 8) = v48;
    *(v39 + 24) = v49;
  }

  else
  {
    v43 = *(v40 + 8);
    v44 = *(v40 + 16);
    v45 = *(v40 + 24);
    v46 = *(v40 + 32);
    v47 = v41 & 1;
    outlined copy of TableColumnCustomizationID.Base(v43, v44, v45, v46, v47);
    *(v39 + 8) = v43;
    *(v39 + 16) = v44;
    *(v39 + 24) = v45;
    *(v39 + 32) = v46;
    *(v39 + 40) = v47;
  }

  *(v39 + 48) = *(v40 + 48);
  *(v39 + 56) = *(v40 + 56);
  *(v39 + 57) = *(v40 + 57);
  return a1;
}

uint64_t assignWithCopy for TableColumn.UnaryTableColumnList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 40) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v13 = *(v11 + 16);
  *(v10 + 32) = *(v11 + 32);
  *v10 = v12;
  *(v10 + 16) = v13;
  v14 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 24);
  if (*(v14 + 24) < 0xFFFFFFFFuLL)
  {
    if (v16 >= 0xFFFFFFFF)
    {
      *(v14 + 24) = v16;
      (**(v16 - 8))(v14, (v8 + 63) & 0xFFFFFFFFFFFFFFF8);
      v20 = *(v15 + 56);
      *(v14 + 56) = v20;
      *(v14 + 64) = *(v15 + 64);
      (**(v20 - 8))(v14 + 32, v15 + 32);
      v21 = *(v15 + 80);
      *(v14 + 72) = *(v15 + 72);
      *(v14 + 80) = v21;
      v22 = *(v15 + 96);
      *(v14 + 88) = *(v15 + 88);
      *(v14 + 96) = v22;
      v23 = *(v15 + 104);
      v24 = *(v15 + 112);
      *(v14 + 104) = v23;
      *(v14 + 112) = v24;

      goto LABEL_8;
    }
  }

  else
  {
    if (v16 >= 0xFFFFFFFF)
    {
      __swift_assign_boxed_opaque_existential_0(v14, ((v8 + 63) & 0xFFFFFFFFFFFFFFF8), v12);
      __swift_assign_boxed_opaque_existential_1((v14 + 32), (v15 + 32));
      v17 = *(v15 + 80);
      *(v14 + 72) = *(v15 + 72);
      *(v14 + 80) = v17;

      v18 = *(v15 + 96);
      *(v14 + 88) = *(v15 + 88);
      *(v14 + 96) = v18;

      v19 = *(v15 + 112);
      *(v14 + 104) = *(v15 + 104);
      *(v14 + 112) = v19;

      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1((v14 + 32));
  }

  v25 = *v15;
  v26 = *(v15 + 16);
  v27 = *(v15 + 48);
  *(v14 + 32) = *(v15 + 32);
  *(v14 + 48) = v27;
  *v14 = v25;
  *(v14 + 16) = v26;
  v28 = *(v15 + 64);
  v29 = *(v15 + 80);
  v30 = *(v15 + 96);
  *(v14 + 112) = *(v15 + 112);
  *(v14 + 80) = v29;
  *(v14 + 96) = v30;
  *(v14 + 64) = v28;
LABEL_8:
  v31 = type metadata accessor for UUID();
  v32 = *(v31 - 8);
  v33 = v32 + 24;
  v34 = *(v32 + 80);
  v35 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + v34 + 120;
  v36 = (v35 + a1) & ~v34;
  v37 = (v35 + a2) & ~v34;
  (*(v32 + 24))(v36, v37, v31);
  v38 = *(v33 + 40) + 7;
  v39 = ((v38 + v36) & 0xFFFFFFFFFFFFFFF8);
  v40 = ((v38 + v37) & 0xFFFFFFFFFFFFFFF8);
  v41 = *v40;
  v42 = *v39;
  *v39 = *v40;
  v43 = v41;

  v44 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v44 = *v45;
  v46 = *(v45 + 40);
  if (*(v44 + 40) == 255)
  {
    if (v46 == 255)
    {
      v64 = *(v45 + 8);
      v65 = *(v45 + 24);
      *(v44 + 40) = *(v45 + 40);
      *(v44 + 24) = v65;
      *(v44 + 8) = v64;
    }

    else
    {
      v57 = *(v45 + 8);
      v58 = *(v45 + 16);
      v59 = *(v45 + 24);
      v60 = *(v45 + 32);
      v61 = v46 & 1;
      outlined copy of TableColumnCustomizationID.Base(v57, v58, v59, v60, v46 & 1);
      *(v44 + 8) = v57;
      *(v44 + 16) = v58;
      *(v44 + 24) = v59;
      *(v44 + 32) = v60;
      *(v44 + 40) = v61;
    }
  }

  else if (v46 == 255)
  {
    outlined destroy of TableColumnCustomizationID(v44 + 8);
    v62 = *(v45 + 40);
    v63 = *(v45 + 24);
    *(v44 + 8) = *(v45 + 8);
    *(v44 + 24) = v63;
    *(v44 + 40) = v62;
  }

  else
  {
    v47 = *(v45 + 8);
    v48 = *(v45 + 16);
    v49 = *(v45 + 24);
    v50 = *(v45 + 32);
    v51 = v46 & 1;
    outlined copy of TableColumnCustomizationID.Base(v47, v48, v49, v50, v46 & 1);
    v52 = *(v44 + 8);
    v53 = *(v44 + 16);
    v54 = *(v44 + 24);
    v55 = *(v44 + 32);
    v56 = *(v44 + 40);
    *(v44 + 8) = v47;
    *(v44 + 16) = v48;
    *(v44 + 24) = v49;
    *(v44 + 32) = v50;
    *(v44 + 40) = v51;
    outlined consume of TableColumnCustomizationID.Base(v52, v53, v54, v55, v56);
  }

  *(v44 + 48) = *(v45 + 48);
  *(v44 + 56) = *(v45 + 56);
  *(v44 + 57) = *(v45 + 57);
  return a1;
}

uint64_t initializeWithTake for TableColumn.UnaryTableColumnList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 40) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v10;
  v11 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v12;
  *(v9 + 16) = v11;
  v13 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v14 + 80);
  v15 = *(v14 + 96);
  v17 = *(v14 + 64);
  *(v13 + 112) = *(v14 + 112);
  *(v13 + 80) = v16;
  *(v13 + 96) = v15;
  *(v13 + 64) = v17;
  v18 = *(v14 + 16);
  v19 = *(v14 + 32);
  v20 = *(v14 + 48);
  *v13 = *v14;
  *(v13 + 16) = v18;
  *(v13 + 32) = v19;
  *(v13 + 48) = v20;
  v21 = ((v6 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = v23 + 32;
  v25 = *(v23 + 80);
  v26 = v21 + v25 + 120;
  v27 = (v26 + a1) & ~v25;
  v28 = (v26 + a2) & ~v25;
  (*(v23 + 32))(v27, v28, v22);
  v29 = *(v24 + 32) + 7;
  v30 = ((v29 + v27) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + v28) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
  v34 = *(v33 + 42);
  v36 = v33[1];
  v35 = v33[2];
  *v32 = *v33;
  v32[1] = v36;
  v32[2] = v35;
  *(v32 + 42) = v34;
  return a1;
}

uint64_t assignWithTake for TableColumn.UnaryTableColumnList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 40) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  v12 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v11;
  *(v9 + 16) = v12;
  v13 = (v7 + 63) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (*(v13 + 24) >= 0xFFFFFFFFuLL)
  {
    v15 = *(v14 + 24);
    __swift_destroy_boxed_opaque_existential_1(v13);
    if (v15 >= 0xFFFFFFFF)
    {
      v16 = *(v14 + 16);
      *v13 = *v14;
      *(v13 + 16) = v16;
      __swift_destroy_boxed_opaque_existential_1((v13 + 32));
      v17 = *(v14 + 32);
      v18 = *(v14 + 48);
      *(v13 + 64) = *(v14 + 64);
      *(v13 + 32) = v17;
      *(v13 + 48) = v18;
      *(v13 + 72) = *(v14 + 72);

      *(v13 + 88) = *(v14 + 88);

      *(v13 + 104) = *(v14 + 104);

      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_1((v13 + 32));
  }

  v19 = *v14;
  v20 = *(v14 + 16);
  v21 = *(v14 + 48);
  *(v13 + 32) = *(v14 + 32);
  *(v13 + 48) = v21;
  *v13 = v19;
  *(v13 + 16) = v20;
  v22 = *(v14 + 64);
  v23 = *(v14 + 80);
  v24 = *(v14 + 96);
  *(v13 + 112) = *(v14 + 112);
  *(v13 + 80) = v23;
  *(v13 + 96) = v24;
  *(v13 + 64) = v22;
LABEL_6:
  v25 = ((v6 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v28 = v27 + 40;
  v29 = *(v27 + 80);
  v30 = v25 + v29 + 120;
  v31 = (v30 + a1) & ~v29;
  v32 = (v30 + a2) & ~v29;
  (*(v27 + 40))(v31, v32, v26);
  v33 = *(v28 + 24) + 7;
  v34 = ((v33 + v31) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v33 + v32) & 0xFFFFFFFFFFFFFFF8);
  v36 = *v34;
  *v34 = *v35;

  v37 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v37 = *v38;
  v39 = *(v37 + 40);
  if (v39 == 255)
  {
    v46 = *(v38 + 8);
    v47 = *(v38 + 24);
    *(v37 + 40) = *(v38 + 40);
    *(v37 + 24) = v47;
    *(v37 + 8) = v46;
  }

  else
  {
    v40 = *(v38 + 40);
    if (v40 == 255)
    {
      outlined destroy of TableColumnCustomizationID(v37 + 8);
      v48 = *(v38 + 40);
      v49 = *(v38 + 24);
      *(v37 + 8) = *(v38 + 8);
      *(v37 + 24) = v49;
      *(v37 + 40) = v48;
    }

    else
    {
      v41 = *(v37 + 8);
      v42 = *(v37 + 16);
      v43 = *(v37 + 24);
      v44 = *(v37 + 32);
      v45 = *(v38 + 24);
      *(v37 + 8) = *(v38 + 8);
      *(v37 + 24) = v45;
      *(v37 + 40) = v40 & 1;
      outlined consume of TableColumnCustomizationID.Base(v41, v42, v43, v44, v39 & 1);
    }
  }

  *(v37 + 48) = *(v38 + 48);
  *(v37 + 56) = *(v38 + 56);
  *(v37 + 57) = *(v38 + 57);
  return a1;
}